<template>
  <div class="page-report">
    <div class="main_banner reportBanner">
      <div class="main_bannerTitle container">
        <span class="main_bannerTitleZh">乌镇智库研究报告</span>
        <i class="main_bannerTitleLine" />
        <span class="main_bannerTitleEn">Think tank research report</span>
      </div>
    </div>
    <div class="reportPageCount container">
      <div class="reportSelsectBox">
        <span v-for="(item, index) in selsectData" :key="index" :class="{active: selectIndex === index}" @click="selectIndex = index">
          {{ item.label }}
        </span>
      </div>
      <div class="reportListBox">
        <b-row>
          <b-col v-for="(item, index) in reportDatas" :key="index" cols="4" class="reportItem">
            <a :href="item.fileUrl" target="_blank">
              <b-img :src="item.img" fluid-grow alt="Fluid-grow image" />
              <div class="info">
                <p class="title">
                  {{ item.title }}
                </p>
                <p class="content">
                  {{ item.content }}
                </p>
              </div>
            </a>
          </b-col>
        </b-row>
      </div>
      <div class="mian_Pagination">
        <b-pagination
          v-model="currentPage"
          :total-rows="rows"
          :per-page="perPage"
          hide-goto-end-buttons
          prev-text="上一页"
          next-text="下一页"
          align="center"
        />
      </div>
    </div>
  </div>
</template>

<script>
import { $get } from '~/plugins/axios'
export default {
  name: 'Report',
  data() {
    return {
      currentPage: 1,
      perPage: 9,
      rows: 1,
      selsectData: [{
        label: '全部',
        value: ''
      }, {
        label: '最新',
        value: 'latestRelease'
      }, {
        label: '科技',
        value: 'technology'
      }, {
        label: '金融',
        value: 'finance'
      }, {
        label: '产业',
        value: 'industry'
      } ],
      selectIndex: 0,
      reportDatas: []
    }
  },
  computed: {},
  watch: {
    selectIndex: {
      handler(nVal) {
        this.currentPage = 1
        this.getReprotCount()
        this.getReprotList()
      },
      immediate: true
    },
    currentPage: {
      handler(nVal) {
        this.getReprotList()
      },
      immediate: true
    }
  },
  created() {
  },
  mounted() {},
  methods: {
    getReprotCount() {
      const _parame = {
        tags: this.selsectData[this.selectIndex].value
      }
      $get('/api/reports/count', _parame).then((res) => {
        try {
          this.rows = res
        } catch (error) {
          this.rows = 0
        }
      }).catch((rej) => {})
    },
    getReprotList() {
      const _parame = {
        tags: this.selsectData[this.selectIndex].value,
        offset: (this.currentPage - 1) * this.perPage,
        limit: this.perPage
      }
      this.reportDatas = []
      $get('/api/reports', _parame).then((res) => {
        // eslint-disable-next-line
        console.log(res)
        try {
          res.forEach((item) => {
            this.reportDatas.push({
              fileUrl: item.files[0].url,
              img: item.imgs[0].url,
              title: item.title,
              id: item.news_id,
              content: item.abstract
            })
          })
        } catch (error) {
          this.reportDatas = []
        }
      }).catch((rej) => {})
    }
  }
}
</script>

<style scoped lang="less">
.page-report{
  background: #f6f6f7;
  .reportBanner{
    background-image: url(../assets/img/reportbanner.png);
  }
  .reportSelsectBox{
    display: inline-block;
    background: #fff;
    margin-top: 20px;
    padding: 0 20px;
    >span{
      display: inline-block;
      font-size: 16px;
      line-height: 54px;
      color: #04142b;
      padding: 0 15px;
      border-bottom: 2px solid #fff;
      cursor: pointer;
      &:hover{
        color: #526df9;
      }
      &.active{
        color: #526df9;
        border-bottom-color: #526df9;
      }
    }
  }
  .reportListBox{
    min-height: calc(100vh - 616px);
    .reportItem{
      margin-top: 30px;
      cursor: pointer;
      >a{
        display: block;
        background: #fff;
      }
      .info{
        padding: 20px 20px 35px;
      }
      .title{
        min-height: 64px;
        font-size: 16px;
        font-weight: bold;
        line-height: 32px;
        color: #04142b;
        display: -webkit-box;
        -webkit-box-orient: vertical;
        -webkit-line-clamp: 2;
        overflow: hidden;
      }
      .content{
        min-height: 48px;
        font-size: 12px;
        line-height: 24px;
        color: #737373;
        display: -webkit-box;
        -webkit-box-orient: vertical;
        -webkit-line-clamp: 2;
        overflow: hidden;
      }
      &:hover{
        .title{
          color: #526df9;
        }
      }
    }
  }
}
</style>

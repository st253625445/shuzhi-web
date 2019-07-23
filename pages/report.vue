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
          <b-col v-for="(item, index) in reportDatas" :key="index" xl="4" cols="12" class="reportItem">
            <a :href="item.fileUrl" target="_blank">
              <div class="reportItemImg">
                <b-img :src="item.img" fluid-grow alt="Fluid-grow image" />
              </div>
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
      <div class="reportMoreBotton" @click="getMoreReport">
        <span v-if="hasMore">查看更多新闻</span>
        <span v-else style="color: #ccc;">暂无更多</span>
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
        value: ''
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
      reportDatas: [],
      hasMore: true,
      isMobile: false,
      indexChange: false
    }
  },
  computed: {},
  watch: {
    selectIndex: {
      handler(nVal) {
        this.currentPage = 1
        this.hasMore = true
        this.reportDatas = []
        this.getReprotCount()
        this.getReprotList()
        this.indexChange = true
      }
    },
    currentPage: {
      handler(nVal) {
        if (!this.indexChange || this.currentPage !== 1) {
          this.getReprotList()
        }
        this.indexChange = false
      }
    }
  },
  created() {
    this.isMobile = this.$isMobile === 1
    if (this.isMobile) {
      this.perPage = 3
    }
    this.getReprotCount()
    this.getReprotList()
  },
  mounted() {
  },
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
      if (!this.isMobile) {
        this.reportDatas = []
      }
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
          if (!this.isMobile) {
            this.reportDatas = []
          }
          this.hasMore = false
        }
      }).catch((rej) => {})
    },
    getMoreReport() {
      if (this.rows > (this.currentPage - 1) * this.perPage) {
        this.currentPage = this.currentPage + 1
      } else {
        this.hasMore = false
      }
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
  .reportMoreBotton{
    display: none;
  }
}

@media (max-width: 768px ) {
  .page-report{
    background: #fff;
    .reportSelsectBox{
      margin: 0;
      padding: 0;
      display: flex;
      >span{
        display: block;
        flex: 1;
        font-size: 4vw;
        line-height: 10.6667vw;
        color: #04142b;
        text-align: center;
        border-bottom: 0.2667vw solid #f6f6f6;
      }
    }
    .reportListBox{
      .reportItem{
        margin-top: 6vw;
        >a{
          display: flex;
          align-items: center;
        }
        .reportItemImg{
          width: 33.7333vw;
          margin-right: 2.6667vw;
        }
        .info{
          flex: 1;
          padding: 0;
        }
        .title{
          min-height: auto;
          font-size: 3.7333vw;
          line-height: 1.7;
          display: -webkit-box;
          -webkit-box-orient: vertical;
          -webkit-line-clamp: 2;
          overflow: hidden;
        }
        .content{
          min-height: auto;
          font-size: 3.7333vw;
          line-height: 1.7;
          display: -webkit-box;
          -webkit-box-orient: vertical;
          -webkit-line-clamp: 1;
          overflow: hidden;
        }
      }
    }
    .mian_Pagination{
      display: none;
    }
    .reportMoreBotton{
      display: block;
      text-align: center;
      color: #526df9;
      font-size: 3.4667vw;
      padding: 10.6667vw 0 6.6667vw;
    }
  }
}
</style>

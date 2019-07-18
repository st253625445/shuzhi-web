<template>
  <div class="component-report">
    <b-container class="service-panel">
      <div class="main_title">
        <span>研究报告</span>
      </div>
      <b-row class="reportList">
        <b-col v-for="(item,index) in reportDatas" :key="index">
          <a class="reportItem" :href="item.fileUrl" target="_balnk">
            <b-img :src="item.img" fluid-grow alt="Fluid-grow image" class="reportImg" />
            <div class="reportInfo">
              <p class="label">
                {{ item.title }}
              </p>
              <p class="content">
                {{ item.content }}
              </p>
            </div>
          </a>
        </b-col>
      </b-row>
      <div class="main_moreIcon">
        更多研究报告
      </div>
    </b-container>
  </div>
</template>

<script>
import { $get } from '~/plugins/axios'
export default {
  name: 'ReportBox',
  components: {},
  props: {},
  data() {
    return {
      reportDatas: []
    }
  },
  computed: {},
  watch: {},
  created() {
    this.getReprotList()
  },
  mounted() {},
  methods: {
    getReprotList() {
      const _parame = {
        tags: '',
        offset: 0,
        limit: 3
      }
      this.reportDatas = []
      $get('/api/reports', _parame).then((res) => {
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
.component-report{
  padding: 40px 0 60px;
  background: #f7f7f7;
  >.container{
    padding: 0;
  }
  .reportList{
    .reportItem{
      display: block;
      background: #fff;
      text-decoration: none;
      color: #04142b;
      .reportInfo{
        width: 100%;
        padding: 0 20px 40px;
      }
      p{
        margin-bottom: 0;
        text-align: justify;
        display: -webkit-box;
        -webkit-box-orient: vertical;
        -webkit-line-clamp: 2;
        overflow: hidden;
      }
      .label{
        height: 64px;
        margin-bottom: 10px;
        margin-top: 20px;
        font-size: 16px;
        font-weight: bold;
        line-height: 32px;
      }
      .content{
        height: 40px;
        font-size: 12px;
        line-height: 20px;
        color: #737373;
      }
      &:hover{
        .label{
          text-decoration: none;
          color:#526df9;
        }
      }
    }
  }
}
</style>

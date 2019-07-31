<template>
  <div class="component-report">
    <b-container class="service-panel">
      <div class="main_title">
        <span>研究报告</span>
      </div>
      <b-row class="reportList">
        <b-col
          v-for="(item,index) in reportDatas"
          :key="index"
          xl="4"
          md="4"
          sm="6"
          cols="12"
        >
          <a class="reportItem" :href="item.fileUrl" target="_balnk">
            <div class="reportImg">
              <b-img :src="item.img" fluid-grow alt="Fluid-grow image" />
            </div>
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
      <div class="main_moreIcon" @click="linkMore()">
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
          this.reportDatas.reverse()
        } catch (error) {
          this.reportDatas = []
        }
      }).catch((rej) => {})
    },
    linkMore() {
      this.$router.push({
        path: '/report'
      })
    }
  }
}
</script>

<style lang="less">
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
      .reportImg{
        height: 250px;
      }
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
        box-shadow: 0px 3px 57px 0px rgba(25, 100, 229, 0.08);
        .label{
          text-decoration: none;
          color:#526df9;
        }
      }
    }
  }
}

@media (max-width: 576px ) {
  .component-report{
    padding: 0;
    >.container{
      position: relative;
    }
    .reportList{
      .reportItem{
        display: flex;
        align-items: center;
        padding: 3.3333vw 4vw;
        margin-bottom: 2.6667vw;
        .reportImg{
          width: 29.3333vw !important;
          height: auto;
          margin-right: 2.6667vw;
        }
        .reportInfo{
          flex: 1;
          padding: 0;
          .label{
            height: auto;
            margin: 0;
            font-weight: normal;
            font-size: 3.7333vw;
            color: rgb(4, 20, 43);
            line-height: 1.571;
            text-align: left;
          }
          .content{
            height: auto;
            font-size: 3.7333vw;
            line-height: 1.571;
            color: #737373;
            -webkit-line-clamp: 1;
          }
        }
      }
    }
  }
}
</style>

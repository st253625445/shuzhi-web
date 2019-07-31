<template>
  <div class="component-news">
    <b-container class="news-panel">
      <div class="main_title">
        <span>动态新闻</span>
      </div>
      <b-row class="newsList">
        <b-col
          v-for="(item,index) in newsData"
          :key="index"
          xl="4"
          md="4"
          sm="6"
          cols="12"
        >
          <div class="newsItem">
            <div class="newsImg">
              <b-img :src="item.img" fluid-grow alt="Fluid-grow image" />
            </div>
            <div class="newsInfo">
              <p class="label">
                {{ item.title }}
              </p>
              <p class="content">
                {{ item.abstract }}
              </p>
              <p class="moreButton" @click="LinkPage(item.url)">
                查看全部
                <b-img src="../assets/img/arrows.png" fluid alt="image" />
              </p>
            </div>
          </div>
        </b-col>
      </b-row>
      <div class="main_moreIcon" @click="linkMore()">
        更多动态新闻
      </div>
    </b-container>
  </div>
</template>

<script>
import { $get } from '~/plugins/axios'
export default {
  name: 'NewsBox',
  components: {},
  props: {},
  data() {
    return {
      params: {
        offset: '0',
        limit: '3'
      },
      newsData: []
    }
  },
  computed: {},
  watch: {},
  created() {
    this.getNewsData()
  },
  mounted() {
  },
  methods: {
    getNewsData() {
      this.newsData = []
      $get('/api/news', this.params).then((res) => {
        try {
          res.forEach((item) => {
            this.newsData.push({
              img: item.imgs[0].url,
              title: item.title,
              id: item.reports_id,
              abstract: item.abstract,
              url: item.url
            })
          })
        } catch (error) {
          this.newsData = []
        }
      }).catch((rej) => {})
    },
    LinkPage(url) {
      if (url) {
        window.open(url, '_blank')
      }
    },
    linkMore() {
      this.$router.push({
        path: '/news'
      })
    }
  }
}
</script>

<style scoped lang="less">
.component-news{
  padding: 40px 0 60px;
  background: #fff;
  >.container{
    padding: 0;
  }
  .newsList{
    .newsItem{
      position: relative;
      background: #fff;
      height: 250px;
      cursor: default;
      .img-fluid{
        height: 100%;
      }
      p{
        margin-bottom: 0;
      }
      .newsImg{
        width: 100%;
        height: 100%;
      }
      .newsInfo{
        position: absolute;
        width: 100%;
        height: 60px;
        padding: 0 30px;
        bottom: 0;
        left: 0;
        background: rgba(43,55,71,0.9);
        color: #fff;
      }
      .label{
        width: 100%;
        line-height: 60px;
        font-size: 16px;
        overflow: hidden;
        text-overflow:ellipsis;
        white-space: nowrap;
      }
      .content{
        display: none;
        font-size: 12px;
        line-height: 2;
        color: rgba(255,255,255,0.8);
        -webkit-box-orient: vertical;
        -webkit-line-clamp: 5;
        overflow: hidden;
      }
      .moreButton{
        display: none;
        margin-top: 20px;
        font-size: 13px;
        line-height: 24px;
        align-items: center;
        cursor: pointer;
        img{
          margin-left: 10px;
        }
      }
      &:hover{
        box-shadow: 0px 3px 57px 0px rgba(25, 100, 229, 0.08);
        .newsInfo{
          height: 100%;
          padding: 10px 30px;
          top: 0;
        }
        .content{
          display: -webkit-box;
        }
        .moreButton{
          display: flex;
        }
      }
    }
  }
}

@media (max-width: 576px ) {
  .component-news{
    padding: 0;
    >.container{
      position: relative;
    }
    .newsList{
      .newsItem{
        display: flex;
        height: auto;
        align-items: center;
        padding: 3.3333vw 4vw;
        margin-bottom: 2.6667vw;
        .newsImg{
          width: 29.3333vw;
          height: auto;
          margin-right: 2.6667vw;
        }
        .newsInfo{
          position: relative;
          flex: 1;
          height: auto;
          padding: 0;
          background: transparent;
          font-size: 3.7333vw;
          color: rgb(4, 20, 43);
          line-height: 1.571;
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
          height: auto;
          margin: 0;
          font-weight: normal;
          font-size: 3.7333vw;
          color: rgb(4, 20, 43);
          line-height: 1.571;
          text-align: left;
          white-space: normal;
        }
        .content{
          height: auto;
          font-size: 3.7333vw;
          line-height: 1.571;
          color: #737373;
          -webkit-line-clamp: 1;
          display: -webkit-box;
        }
        .img-fluid{
          height: auto;
        }
        &:hover{
          .newsInfo{
            height: 100%;
            padding: 0;
            top: 0;
          }
          .content{
            display: -webkit-box;
          }
          .moreButton{
            display: none;
          }
        }
      }
    }
  }
}
</style>

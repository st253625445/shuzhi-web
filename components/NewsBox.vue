<template>
  <div class="component-news">
    <b-container class="news-panel">
      <div class="main_title">
        <span>动态新闻</span>
      </div>
      <b-row class="newsList">
        <b-col v-for="(item,index) in newsData" :key="index" class="newsItem" @click="linkNewsDetail(item.id)">
          <b-img :src="item.img" fluid-grow alt="Fluid-grow image" />
          <div class="newsInfo">
            <p class="label">
              {{ item.title }}
            </p>
            <p class="content">
              {{ item.content }}
            </p>
            <p class="moreButton">
              查看全部
              <b-img src="../assets/img/arrows.png" fluid alt="image" />
            </p>
          </div>
        </b-col>
      </b-row>
      <div class="main_moreIcon">
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
              content: item.content
            })
          })
        } catch (error) {
          this.newsData = []
        }
      }).catch((rej) => {})
    },
    linkNewsDetail(id) {
      if (id) {
        this.$router.push({
          path: '/newsDetail',
          query: {
            id: id
          }
        })
      }
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
      cursor: default;
      p{
        margin-bottom: 0;
      }
      .newsInfo{
        position: absolute;
        width: calc(100% - 30px);
        height: 60px;
        padding: 0 30px;
        bottom: 0;
        left: 15px;
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
        img{
          margin-left: 10px;
        }
      }
      &:hover{
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
</style>

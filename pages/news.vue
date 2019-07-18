<template>
  <div class="page-news">
    <div class="main_banner newsBanner">
      <div class="main_bannerTitle container">
        <span class="main_bannerTitleZh">新闻动态</span>
        <i class="main_bannerTitleLine" />
        <span class="main_bannerTitleEn">News</span>
      </div>
    </div>
    <div class="newsPageCount container">
      <div v-for="(item , index) in newsData" :key="index" class="newsItemBox" @click="linkDetail(item.id)">
        <div class="newsItemImg">
          <b-img :src="item.img" fluid alt="image" />
        </div>
        <div class="newsItemCount">
          <div class="newsTitle">
            {{ item.title }}
          </div>
          <div class="newsTime">
            {{ item.time | timeFilter }}
          </div>
          <div class="newsContent">
            {{ item.content }}
          </div>
          <div class="newsLink">
            查看更多
          </div>
        </div>
      </div>
      <div v-if="newsData.length>0" class="mian_Pagination">
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
import { timeFilter } from '~/plugins/filter'
export default {
  name: 'NewsPage',
  components: {},
  filters: {
    timeFilter(val) {
      return timeFilter(val)
    }
  },
  props: {},
  data() {
    return {
      currentPage: 0,
      perPage: 4,
      rows: 0,
      newsData: []
    }
  },
  computed: {},
  watch: {
    currentPage(nVal) {
      if (nVal) {
        this.getNewsList()
      }
    }
  },
  created() {
    this.getNewsCount()
  },
  mounted() {},
  methods: {
    getNewsCount() {
      $get('/api/news/count').then((res) => {
        this.rows = res
        this.currentPage = 1
      }).catch((rej) => {})
    },
    getNewsList() {
      const _params = {
        offset: (this.currentPage - 1) * this.perPage,
        limit: this.perPage
      }
      this.newsData = []
      $get('/api/news', _params).then((res) => {
        try {
          res.forEach((item) => {
            this.newsData.push({
              id: item.news_id,
              time: item.update_time,
              content: item.content,
              title: item.title,
              img: item.imgs[0].url
            })
          })
        } catch (error) {
          this.newsData = []
        }
      }).catch((rej) => {})
    },
    linkDetail(id) {
      this.$router.push({
        path: 'newsDetail',
        query: {
          id: id
        }
      })
    }
  }
}
</script>

<style lang="less">
.page-news{
  width: 100%;
  color: #f7f7f7;
  .newsBanner{
    background-image: url(../assets/img/newsbanner.png);
  }
  .newsPageCount{
    min-height: calc(100vh - 616px);
    .newsItemBox{
      display: flex;
      width: 100%;
      padding: 45px 0;
      flex-wrap: wrap;
      justify-content: space-between;
      cursor:pointer;
      border-bottom: 1px solid #cccccc80;
      &:nth-child(4){
        border-bottom: none;
      }
    }
    .newsItemImg{
      width: 42%;
      padding-right: 30px;
    }
    .newsItemCount{
      width: 58%;
    }
    .newsTitle{
      font-size: 18px;
      line-height: 24px;
      color: #04142b;
    }
    .newsTime{
      color:#a1a7bd;
      line-height: 28px;
      font-size: 14px;
      margin-bottom: 15px;
    }
    .newsContent{
      color:#a1a7bd;
      line-height: 24px;
      font-size: 14px;
      text-align: justify;
      margin-bottom: 10px;
    }
    .newsLink{
      color: #04142b;
      font-size: 12px;
      line-height: 24px;
    }
    .newsItemBox{
      &:hover{
        .newsTitle,.newsLink{
          color:#526df9;
        }
      }
    }
  }
}
</style>

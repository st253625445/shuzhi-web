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
      <div v-for="(item , index) in newsData" :key="index" class="newsItemBox" @click="linkDetail(item.url)">
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
            {{ item.abstract }}
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
      <div class="newsMoreBotton" @click="getMoreNews">
        <span v-if="hasMore">查看更多新闻</span>
        <span v-else style="color: #ccc;">暂无更多</span>
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
      newsData: [],
      hasMore: true,
      isMobile: false
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
    this.isMobile = this.$isMobile === 1
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
      if (!this.isMobile) {
        this.newsData = []
      }
      $get('/api/news', _params).then((res) => {
        try {
          res.forEach((item) => {
            this.newsData.push({
              id: item.news_id,
              time: item.update_time,
              abstract: item.abstract,
              title: item.title,
              img: item.imgs[0].url,
              url: item.url
            })
          })
        } catch (error) {
          if (!this.isMobile) {
            this.newsData = []
          }
          this.hasMore = false
        }
      }).catch((rej) => {})
    },
    linkDetail(url) {
      if (url) {
        window.open(url, '_blank')
      }
    },
    getMoreNews() {
      if (this.rows > (this.currentPage - 1) * this.perPage) {
        this.currentPage = this.currentPage + 1
      } else {
        this.hasMore = false
      }
    }
  }
}
</script>

<style lang="less">
.page-news{
  width: 100%;
  background: #f7f7f7;
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
    .newsMoreBotton{
      display: none;
    }
  }
  .page-item.active .page-link{
    background-color: #526df9;
    border-color: #526df9;
  }
  .page-link{
    color:#526df9;
  }
}

@media (max-width: 768px ) {
  .page-news{
    .newsPageCount{
      .newsItemBox{
        padding: 0;
        margin-top: 6.6667vw;
        border-bottom: none;
      }
      .newsTitle{
        font-size: 3.7333vw;
        line-height: 1.7;
        display: -webkit-box;
        -webkit-box-orient: vertical;
        -webkit-line-clamp: 2;
        overflow: hidden;
      }
      .newsTime{
        display: none;
      }
      .newsContent{
        line-height: 1.7;
        font-size: 3.7333vw;
        display: -webkit-box;
        -webkit-box-orient: vertical;
        -webkit-line-clamp: 1;
        overflow: hidden;
      }
      .newsLink{
        display: none;
      }
      .mian_Pagination{
        display: none;
      }
      .newsMoreBotton{
        display: block;
        text-align: center;
        color: #526df9;
        font-size: 3.4667vw;
        padding: 10.6667vw 0 6.6667vw;
      }
    }
  }
}
</style>

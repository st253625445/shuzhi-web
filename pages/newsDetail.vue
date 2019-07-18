<template>
  <div class="page-newsDetail">
    <div class="main_banner newsDetailBanner">
      <div class="main_bannerTitle container">
        <span class="main_bannerTitleZh">新闻动态</span>
        <i class="main_bannerTitleLine" />
        <span class="main_bannerTitleEn">News</span>
      </div>
    </div>
    <div class="newsDetailPageCount container">
      <div class="newsTitle">
        {{ newsData.title }}
      </div>
      <div class="newsTime">
        {{ newsData.update_time | timeFilter }}
      </div>
      <!-- eslint-disable-next-line -->
      <div class="newsCount" v-html="newsData.content" />
    </div>
  </div>
</template>

<script>
import { $get } from '~/plugins/axios'
import { timeFilter } from '~/plugins/filter'
export default {
  name: 'NewsDetailPage',
  components: {},
  filters: {
    timeFilter(val) {
      return timeFilter(val)
    }
  },
  props: {},
  data() {
    return {
      newsData: {}
    }
  },
  computed: {},
  watch: {},
  created() {
    this.getNewsDetail()
  },
  mounted() {},
  methods: {
    getNewsDetail() {
      this.newsData = {
        title: ''
      }
      try {
        const _id = this.$route.query.id
        $get(`/api/news/${_id}`).then((res) => {
          // eslint-disable-next-line
          console.log(res)
          this.newsData = res
        }).catch((rej) => {})
      } catch (error) {

      }
    }
  }
}
</script>

<style lang="less">
.page-newsDetail{
  width: 100%;
  color: #f7f7f7;
  .newsDetailBanner{
    background-image: url(../assets/img/newsbanner.png);
  }
  .newsDetailPageCount{
    min-height: calc(100vh - 616px);
    padding: 50px 0 120px;
    color: #828393;
    font-size: 14px;
    text-align: justify;
    .newsTitle{
      font-size: 18px;
      color: #04142b;
      text-align: center;
    }
    .newsTime{
      color: #a1a7bd;
      text-align: center;
    }
  }
}
</style>

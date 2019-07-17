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
      <div v-for="(item , index) in newsData" :key="index" class="newsItemBox">
        <div class="newsItemImg" />
        <div class="newsItemCount">
          <div class="newsTitle" />
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'NewsPage',
  components: {},
  props: {},
  data() {
    return {
      newsData: []
    }
  },
  computed: {},
  watch: {},
  created() {},
  mounted() {},
  methods: {}
}
</script>

<style scoped lang="less">
.page-news{
  width: 100%;
  .newsBanner{
    background-image: url(../assets/img/newsbanner.png);
  }
}
</style>

<template>
  <div class="page-about">
    <div class="main_banner aboutBanner">
      <div class="main_bannerTitle container">
        <span class="main_bannerTitleZh">关于我们</span>
        <i class="main_bannerTitleLine" />
        <span class="main_bannerTitleEn">About</span>
      </div>
    </div>
    <div class="container" />
  </div>
</template>

<script>
export default {
  name: 'About',
  components: {},
  props: {},
  data() {
    return {

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
.page-about{
  .aboutBanner{
    background-image: url(../assets/img/aboutbanner.png);

  }
}
</style>

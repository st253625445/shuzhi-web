<template>
  <section class="pages-home">
    <!-- banner -->
    <componentsBanner />
    <!-- 业务介绍 -->
    <componentsService />
    <!-- 研究报告 -->
    <componentsReport />
    <!-- 动态新闻 -->
    <componentsNews />
    <!-- 智库团队 -->
    <componentsTeams />
    <!-- 合作伙伴 -->
    <componentsPartner />
  </section>
</template>

<script>
import componentsBanner from '../components/BannerBox'
import componentsService from '../components/ServiceBox'
import componentsReport from '../components/ReportBox'
import componentsNews from '../components/NewsBox'
import componentsTeams from '../components/TeamsBox'
import componentsPartner from '../components/PartnerBox'

export default {
  components: { componentsBanner, componentsService, componentsReport, componentsNews, componentsTeams, componentsPartner
  },
  data() {
    return {
      slide: 0,
      sliding: null
    }
  },
  methods: {
    onSlideStart(slide) {
      this.sliding = true
    },
    onSlideEnd(slide) {
      this.sliding = false
    }
  }
}
</script>
<style lang="less">
.pages-home{
  .main_title{
    width: 100%;
    height: 60px;
    padding-left: 24px;
    margin-bottom: 40px;
    color: #04142b;
    font-size: 20px;
    font-weight: bold;
    line-height: 60px;
    span{
      display: inline-block;
      border-bottom: 1px dashed rgba(0, 0, 0, 0.2)
    }
  }
  .main_moreIcon{
    position: relative;
    margin-top: 40px;
    width: 137px;
    height: 49px;
    padding: 0 7px 7px 0;
    left: 50%;
    transform: translate(-50%, 0);
    text-align: center;
    line-height: 42px;
    color: #04142b;
    font-size: 12px;
    font-weight: bold;
    background-image: url("../assets/img/moreIconBg.png");
    background-repeat: no-repeat;
    background-size: 100% 100%;
    cursor: pointer;
  }
}

@media (max-width: 576px ) {
  .pages-home{
    .main_title{
      width: 100%;
      height: 13.3333vw;
      padding: 2vw 0;
      font-size: 4vw;
      padding-left: 24px;
      margin-bottom: 0;
      color: #04142b;
      font-weight: bold;
      line-height: 9.3333vw;
    }
    .main_moreIcon{
      position: absolute;
      width: 30.6667vw;
      height: 13.3333vw;
      padding: 0;
      margin: 0;
      top: 0;
      right: 0;
      left: auto;
      background: none;
      transform: translate(0,0);
      line-height: 13.3333vw;
      font-size: 3.4667vw;
      color: #526df9;
      font-weight: normal;
    }
  }
}
</style>

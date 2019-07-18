<template>
  <div class="component-footer relative">
    <b-container fluid>
      <div class="main-panel">
        <b-row class="footerMap">
          <b-col
            xl="3"
            class="footerMapCol"
          >
            <div class="footer-logo" />
            <div class="logotext">
              知识即服务
            </div>
            <div class="logotextEn">
              Knowledge as a Service
            </div>
            <div class="linkBox">
              <p class="mapTitle">
                须知
              </p>
              <b-link href="/about?index=1">
                关于我们
              </b-link>
              <b-link href="/about?index=2">
                媒体须知
              </b-link>
              <b-link href="/about?index=3">
                版权声明
              </b-link>
            </div>
          </b-col>
          <b-col
            xl="3"
            class="footerMapCol"
          >
            <p class="mapTitle">
              合作
            </p>
            <p>商务合作联系：jiaojiao@iwuzhen.org</p>
            <p>采访联系:  bing@iwuzhen.org</p>
            <p>新媒体合作联系:  heming@iwuzhen.org </p>
          </b-col>
          <b-col
            xl="3"
            class="footerMapCol"
          >
            <p class="mapTitle">
              联系我们
            </p>
            <p>桐乡：0573-88199802</p>
            <p>杭州：0573-56979172</p>
            <p>地址分布：硅谷、北京、上海、广州、杭州、桐乡</p>
          </b-col>
          <b-col
            xl="3"
            class="footerMapCol"
          >
            <p class="mapTitle">
              关注我们
            </p>
            <b-img right src="../assets/img/wechatQR.png" alt="Right image" />
          </b-col>
        </b-row>
        <b-row align-h="center" class="footerICPinfo text-center">
          <b-col
            cols="10"
          >
            <span>©2019Baidu使用百度前必读|百科协议|隐私政策|百度百科合作平台|京ICP证030173号</span>
          </b-col>
        </b-row>
      </div>
    </b-container>
  </div>
</template>

<script>
export default {
  data() {
    return {
    }
  },
  created() {
  },
  methods: {
    openWindowFuc(url) {
      window.open(url, '_blank')
    }
  }
}
</script>

<style lang="less">
@import url("./../assets/style/common.less");
.component-footer {
  width: 100%;
  height: 246px;
  background-image: url(./../assets/img/footbg.png);
  background-position: 50%;
  background-size: cover;
  color: #fff;
  font-size: 12px;
  .footerMap{
    height: 190px;
    padding-top: 47px;
    line-height: 24px;
  }
  .footerMapCol{
    position: relative;
    &::after {
      position: absolute;
      content: "";
      width: 1px;
      height: 60px;
      right: 0;
      top: 35px;
      background: rgba(255,255,255,0.2);
    }
    &:last-child{
      text-align: right;
      &::after {
        width: 0;
        height: 0;
      }
    }
  }
  .footerICPinfo{
    height: 56px;
    line-height: 56px;
    color: #999999;
  }
  .footer-logo {
    display: inline-block;
    width: 83px;
    height: 23px;
    margin-bottom: 25px;
    float: none;
    background-image: url(./../assets/img/logo.png);
    background-size: 100%;
  }
  .logotext{
    letter-spacing: 15px;
    line-height: 30px;
  }
  .linkBox{
    position: absolute;
    width: 80px;
    top: 0;
    right: 0;
    a{
      display: block;
      color: #fff;
    }
  }
  .mapTitle{
    font-size: 14px;
    line-height: 30px;
  }
}
</style>

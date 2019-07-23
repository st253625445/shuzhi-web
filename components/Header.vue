<template>
  <div class="component-header">
    <!-- 头部导航 -->
    <b-navbar
      toggleable="md"
      type="dark"
      fixed="top"
      variant="info"
    >
      <div class="main-panel clearfix">
        <b-navbar-brand href="/">
          <img src="../assets/img/logo.png" class="d-inline-block align-top" alt="Kitten">
        </b-navbar-brand>
        <b-navbar-toggle target="nav_collapse">
          <!-- <div>
            <div class="toggle-line"></div>
            <div class="toggle-line"></div>
            <div class="toggle-line"></div>
          </div> -->
        </b-navbar-toggle>

        <b-collapse
          id="nav_collapse"
          is-nav
        >
          <b-navbar-nav>
            <b-nav-item href="./" active>
              首页
            </b-nav-item>
            <b-nav-item href="/news">
              新闻动态
            </b-nav-item>
            <b-nav-item href="/report">
              研究报告
            </b-nav-item>
            <b-nav-item href="/consultant">
              智库咨询服务
            </b-nav-item>
            <b-nav-item href="/about">
              关于我们
            </b-nav-item>
          </b-navbar-nav>
        </b-collapse>
      </div>
    </b-navbar>
  </div>
</template>

<script>
export default {}
</script>

<style lang="less">
@import url("../assets/style/reset.less");
@import url("../assets/style/common.less");
.component-header {
  .navbar-brand {
    width: 112px;
    height: 34px;
    float: none;
    // .bg-image("header_logo");
  }
  .navbar-brand{
    padding: 0;
  }
  .navbar {
    padding: 1rem;
  }
  .nav-item {
    font-size: 14px;
  }

  .bg-info {
    background-color:  rgba(23, 35, 49, 0.3) !important;
    // padding:  25px  1rem;
    border-bottom: 1px dashed rgba(255, 255, 255, 0.2);
    &:hover{
      background-color: rgba(23, 35, 49, 0.8) !important;
    }
  }
  .navbar-toggler {
    float: right;
    border: none;
  }
  .navbar-dark .navbar-nav .nav-link {
    color: #fff;
    &:hover {
      color: #e4e4e4;
    }
  }
  #nav_collapse {
    float: right;
    width: 500px;
    .navbar-nav {
      width: 100%;
      display: flex;
      justify-content: space-between;
    }
  }
  @media screen and (max-width: 1024px) {
  }
  @media screen and (max-width: 767px) {
    #nav_collapse {
      float: none;
      width: 100%;
      text-align: center;
    }
    .navbar {
      padding: 2.1333vw;
    }
    .navbar-brand{
      width: 25.5vw;
      height: 7vw;
      img{
        width: 100%;
        height: 100%;
      }
    }
    .navbar-toggler{
      padding: 0.5333vw 2.1333vw;
      margin-right: 4vw;
    }
    .navbar-toggler-icon{
      width: 5.3333vw;
      height: 5.3333vw;
    }
    .bg-info {
      background-color: rgba(23, 35, 49, 0.8) !important;
    }
  }
}
</style>

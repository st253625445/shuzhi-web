<template>
  <div class="component-banner">
    <div class="main_banner bannerBox">
      <div class="main_bannerTitle container">
        <span class="main_bannerTitleZh">知识即<span style="color:#526df9;">服务</span></span>
        <i class="main_bannerTitleLine" />
        <span class="main_bannerTitleEn">Knowledge as a Service</span>
        <div class="main_bannerButton">
          研究报告
        </div>
      </div>
      <div class="main_bannerRightImg">
        <img src="@/assets/img/bannerRight.png" alt="">
      </div>
      <!-- <i class="main_bannerMouseIcon" /> -->
    </div>
  </div>
</template>

<script>
export default {
  name: 'C',
  components: {},
  props: {},
  data() {
    return {

    }
  },
  computed: {},
  watch: {},
  created() {},
  mounted() {
  },
  methods: {
  }
}
</script>

<style scoped lang="less">
.component-banner{
  width: 100%;
  position: relative;
  .bannerBox{
    position: relative;
    background-image: url('../assets/img/banner1.jpg');
    .main_bannerTitle{
      padding-top: 220px;
      .main_bannerTitleZh{
        font-size: 60px;
        font-family: "FZLTCHK";
        letter-spacing: 30px;
        line-height: 120px;
      }
      .main_bannerTitleLine{
        width: 70px;
      }
      .main_bannerTitleEn{
        font-size: 18px;
        font-family: "Roboto";
        font-weight: bold;
        line-height: 3.556;
      }
      .main_bannerButton{
        width: 137px;
        height: 49px;
        padding: 0 7px 7px 0;
        text-align: center;
        line-height: 42px;
        color: #fff;
        font-size: 12px;
        font-weight: bold;
        background-image: url("../assets/img/moreIconBg.png");
        background-repeat: no-repeat;
        background-size: 100% 100%;
        cursor: pointer;
      }
    }
    .main_bannerRightImg{
      position: absolute;
      left: 50%;
      transform: translate(-50%);
      img{
        width: 100%;
        height: auto;
      }
    }
    .main_bannerMouseIcon{
      position: absolute;
      width: 12px;
      height: 16px;
      background-image: url('../assets/img/mouseIcon.png');
      left: 50%;
      transform: translate(-50%);
      bottom: 30px;
      cursor: pointer;
    }
  }
}
@media (max-width: 576px ) {
  .component-banner{
    .bannerBox{
      height: 73.3333vw;
      .main_bannerTitle{
        padding-top: 22.6667vw;
        .main_bannerTitleZh{
          font-size: 6.4vw;
          font-family: "FZLTCHK";
          letter-spacing: 4vw;
          line-height: 14.6667vw;
        }
        .main_bannerTitleLine{
          width: 9.3333vw;
        }
        .main_bannerTitleEn{
          font-size: 2.1333vw;
        }
        .main_bannerButton{
          width: 18.2667vw;
          height: 6.5333vw;
          padding: 0 0.9333vw 0.9333vw 0;
          line-height: 5.6vw;
          font-size: 1.6vw;
        }
      }
      .main_bannerRightImg{
        width: 56.2667vw;
        top: 20.4vw;
        margin-left: 18vw;
      }
      .main_bannerMouseIcon{
        display: none;
      }
    }
  }
}
@media (min-width: 576px ) and (max-width:768px){
  .component-banner{
    .bannerBox{
      height: 340px;
      .main_bannerTitle{
        padding-top: 110px;
        .main_bannerTitleZh{
          font-size: 30px;
          font-family: "FZLTCHK";
          letter-spacing: 15px;
          line-height: 60px;
        }
        .main_bannerTitleLine{
          width: 50px;
        }
        .main_bannerTitleEn{
          font-size: 16px;
        }
      }
      .main_bannerRightImg{
        width: 300px;
        top: 65px;
        margin-left: 140px;
      }
    }
  }
}
@media (min-width: 768px ) and (max-width:991px){
  .component-banner{
    .bannerBox{
      height: 420px;
      .main_bannerTitle{
        padding-top: 130px;
        .main_bannerTitleZh{
          font-size: 40px;
          font-family: "FZLTCHK";
          letter-spacing: 20px;
          line-height: 80px;
        }
        .main_bannerTitleLine{
          width: 50px;
        }
        .main_bannerTitleEn{
          font-size: 16px;
        }
      }
      .main_bannerRightImg{
        width: 370px;
        top: 90px;
        margin-left: 180px;
      }
    }
  }
}
@media (min-width: 992px){
  .component-banner{
    .bannerBox{
      height: 540px;
      .main_bannerTitle{
        padding-top: 170px;
      }
      .main_bannerRightImg{
        width: 490px;
        top: 100px;
        margin-left: 240px;
      }
    }
  }
}

@media (min-width: 1200px){
  .component-banner{
    .bannerBox{
      height: 640px;
      .main_bannerTitle{
        padding-top: 220px;
      }
      .main_bannerRightImg{
        width: 592px;
        top: 100px;
        margin-left: 280px;
      }
    }
  }
}
</style>

<template>
  <div class="page-about">
    <div class="main_banner aboutBanner">
      <div class="main_bannerTitle container">
        <span class="main_bannerTitleZh">关于我们</span>
        <i class="main_bannerTitleLine" />
        <span class="main_bannerTitleEn">About</span>
      </div>
    </div>
    <div class="aboutPageCount container">
      <b-card no-body>
        <b-tabs card :vertical="isVertical" :fill="isFill">
          <b-tab title="关于我们" :active="activeIndex === '1'">
            <div>
              <p>
                乌镇智库于2016年9月正式成立，是一家新型的国际化非盈利机构。自成立以来，乌镇智库以全球化视野的新经济发展观察和指针，利用海量数据、优化NLP算法，整理目前最大规模的中英文常识知识图谱，升级优化体验，对数据进行结构化提取和智能化分析。
              </p>
              <p>
                乌镇智库服务于政策抉择和商业创新，为政府和企业的智慧决策提供定量、精准、快速、实时的报告分析；服务于“前沿科技发展研究”，“前沿科技+传统产业研究”，“产业规划与落地策略”以及关于“产业链变化监控”，“新技术应用”和“竞争对手分析”相关咨询，贴合真实需求，颠覆传统密集型的咨询模式，引导通过创新变革、多元经营、技术创新、融合发展等举措，为决策者创造更多价值，成为新决策时代的开创型智囊。
              </p>
            </div>
          </b-tab>
          <b-tab title="媒体须知" :active="activeIndex === '2'">
            <div>
              <p>媒体访问须知:</p>
              <p>1. 联系人／单位／栏目信息 </p>
              <p>2. 得知我们的渠道 </p>
              <p>3. 需求类型（报告引用／发表、数据使用、企业采访、人物访谈） </p>
              <p>4. 用途（政务内参、科技专栏、（高新）企业／人物系列栏目、制作产品）制作产品包括：制作数据报告、制作榜单等 </p>
              <p>5. 补充信息（根据需求和用途，沟通时获取的信息）播出平台、发布方式、时间信息等</p>
            </div>
          </b-tab>
          <b-tab title="版权声明" :active="activeIndex === '3'">
            <div>
              <p>1. 正文前注明：转载自乌镇智库（ID：WUZHEN-INSTITUTE），作者栏处标明作者。</p>
              <p>2. 转载原创文章，请添加编辑微信：bingmouren，说明需要转载的文章标题，通过何种形式进行转载，转载方的公众号ID。发布前请将文章预览链接发送给乌镇智库编辑。 </p>
              <p>3. 目前只单勾，阅读原文处请插入乌镇智库原文链接。</p>
              <p>4. 请勿将乌镇智库报告（包括任何数据、文字表述等）用作商业用途。</p><br>
              <p>如有特殊需要，添加编辑微信或后台留言，我们会尽快处理。</p>
              <p>侵权必究</p>
            </div>
          </b-tab>
        </b-tabs>
      </b-card>
    </div>
  </div>
</template>

<script>
export default {
  name: 'About',
  components: {},
  props: {},
  data() {
    return {
      activeIndex: '1',
      isVertical: true,
      isFill: false
    }
  },
  computed: {},
  watch: {
    $route: {
      handler(nVal) {
        const _query = nVal.query
        if (_query.index) {
          this.activeIndex = _query.index
        }
      },
      immediate: true
    }
  },
  created() {
    this.isVertical = this.$isMobile !== 1
    this.isFill = this.$isMobile === 1
  },
  mounted() {},
  methods: {}
}
</script>

<style lang="less">
.page-about{
  background: #f7f7f7;
  .aboutBanner{
    background-image: url(../assets/img/aboutbanner.png);
  }
  .aboutPageCount{
    min-height: calc(100vh - 616px);
    padding: 60px 0 200px;
    .card{
      border: none;
      background-color: transparent;
    }
    .col-auto{
      padding-right: 30px;
      margin-right: 30px;
      border-right: 1px solid rgba(204, 204, 204, 0.5);
    }
    .card-header{
      padding: 0 20px 20px;
      background-color: #f3f3f3;
      height: auto!important;
    }
    .nav-tabs{
      .nav-item{
        width: 195px;
        font-size: 14px;
        line-height: 48px;
        border-bottom: 1px dashed rgba(204, 204, 204, 0.5);
      }
      .nav-link{
        color: #828393;
        border: none;
        &.active{
          background-color: transparent;
          font-weight: bold;
          color: #04142b;
          border: none;
        }
      }
    }
    .card-body{
      padding: 0 30px;
      p{
        font-size: 14px;
        color: #828393;
        line-height: 30px;
        text-align: justify;
      }
    }
  }
}

@media (max-width: 768px ) {
  .page-about{
    background-color: #fff;
    .aboutPageCount{
      padding: 0;
      .card-header-tabs{
        margin: 0;
      }
      .card-header{
        padding: 0;
        background-color: #fff;
        border-bottom: none;
      }
      .nav-tabs{
        .nav-item{
          width: auto;
          font-size: 4vw;
          line-height: 10.6667vw;
          border: none;
        }
        .nav-link{
          border-bottom: 1px dashed rgba(204, 204, 204, 0.5);
          &.active{
            color: #526df9;
            border-bottom: 1px solid #526df9;
          }
        }
      }
      .card-body{
        padding: 5.3333vw;
        p{
          font-size: 3.7333vw;
          line-height: 6vw;
        }
      }
    }
  }
}
</style>

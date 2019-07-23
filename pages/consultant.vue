<template>
  <div class="page-consultant">
    <div class="main_banner consultantBanner">
      <div class="main_bannerTitle container">
        <span class="main_bannerTitleZh">智库咨询服务</span>
        <i class="main_bannerTitleLine" />
        <span class="main_bannerTitleEn">Consultant</span>
      </div>
    </div>
    <div class="consultantCount">
      <div v-for="(item, index) in consultantData" :key="index" class="consultantItem">
        <b-container class="consultantPanel">
          <div class="consultantImg">
            <b-img :src="item.img" alt="image" />
          </div>
          <div class="consultantValue">
            <p class="title">
              {{ item.title }}
            </p>
            <p class="count">
              {{ item.count }}
            </p>
          </div>
        </b-container>
      </div>
    </div>
  </div>
</template>

<script>
const img1 = require('../assets/img/consultant1.png')
const img2 = require('../assets/img/consultant2.png')
const img3 = require('../assets/img/consultant3.png')
const img4 = require('../assets/img/consultant4.png')
export default {
  name: 'Consultant',
  components: {},
  props: {},
  data() {
    return {
      consultantData: [{
        img: img1,
        title: '前沿科技发展研究',
        count: '通过专家访谈、案例及数据分析等多种方法结合的方式，介绍人工智能、区块链等前沿科技的发展及其产业化进程。重点聚焦人工智能与传统行业的结合、发展趋势和路径解析，为推动两者的有效融合提供解决方案。'
      }, {
        img: img2,
        title: '企业咨询',
        count: '乌镇智库致力于帮助客户解决复杂的行业问题，抓住机遇交付更好的工作成果，从而壮大、优化和保护现有及未来的业务。乌镇智库的协作方法与全球互联互通，以及对行业问题的深入理解，启发我们提出更好的问题、设计更好的答案并实现持久的效果。'
      }, {
        img: img3,
        title: '产业规划与落地政策',
        count: '在算法与数据的驱动下，对当地的城市战略、产业定位、产业体系、产业结构、园区规划、实施方案等做出科学计划，同时辅以政策解读，招商目标推荐，为政府提供切实可行发展规划。'
      }, {
        img: img4,
        title: '数据服务',
        count: '基于海量的数据资源、丰富的知识图谱和强大的技术手段，为智库、政府、企业及社会各界提供各个维度的数据支持和分析依据。'
      }]
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
.page-consultant{
  .consultantBanner{
    background-image: url(../assets/img/consultantbanner.png);
  }
  .consultantCount{
    width: 100%;
    .consultantItem{
      background: #fff;
      .consultantPanel{
        display: flex;
        padding: 80px 20px;
        align-items: center;
        flex-direction: row;
      }
      .consultantValue, .consultantImg{
        padding: 0 80px;
      }
      p.title{
        font-size: 20px;
        line-height: 50px;
        color: rgb(4, 20, 43);
      }
      p.count{
        font-size: 14px;
        line-height: 24px;
        text-align: justify;
        color: #828393;
      }
      &:nth-child(2n){
        background:#f7f7f7;
        .consultantPanel{
          flex-direction: row-reverse;
        }
      }
    }
  }
}

@media (max-width: 768px ) {
  .page-consultant{
    .consultantCount{
      .consultantItem{
        .consultantPanel{
          padding: 2.6667vw 5.3333vw;
          flex-direction: column-reverse;
        }
        .consultantValue, .consultantImg{
          padding: 0
        }
        .consultantImg{
          width: 100%;
          margin: 4vw 0 12vw;
          img{
            width: 100%;
          }
        }
        p.title{
          font-size: 4vw;
          line-height: 10.6667vw;
          text-align: center;
        }
        p.count{
          font-size: 3.7333vw;
          line-height: 6.6667vw;
        }
        &:nth-child(2n){
          .consultantPanel{
            flex-direction: column-reverse;
          }
        }
      }
    }
  }
}
</style>

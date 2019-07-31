<template>
  <div class="component-service">
    <b-container class="service-panel">
      <b-row class="justify-content-md-center">
        <b-col
          xl="3"
          md="4"
          sm="6"
          cols="12"
          class="serviceItem"
          :class="{active:serviceIndex === 1}"
          @mouseenter="showActive(1)"
          @mouseleave="showActive(0)"
        >
          <b-img src="../assets/img/service1.png" fluid alt="Responsive image" />
          <b-img v-if="serviceIndex === 1" class="hoverimg" src="../assets/img/service1_h.png" fluid alt="Responsive image" />
          <p class="label">
            海量数据
          </p>
          <p class="count">
            数据是公司业务基础，团队自主研发大吞吐量分布式采集和结构化流水线，实时全面覆盖任何网页和APP数据。
          </p>
        </b-col>
        <b-col
          xl="3"
          md="4"
          sm="6"
          cols="12"
          class="serviceItem"
          :class="{active:serviceIndex === 2}"
          @mouseenter="showActive(2)"
          @mouseleave="showActive(0)"
        >
          <b-img src="../assets/img/service2.png" fluid alt="Responsive image" />
          <b-img v-if="serviceIndex === 2" class="hoverimg" src="../assets/img/service2_h.png" fluid alt="Responsive image" />
          <p class="label">
            知识图谱
          </p>
          <p class="count">
            团队研发的语义网络技术，自动完成实体抽取及实体链接，构建了千万级别知识图谱，助力人类决策的联想与推断。
          </p>
        </b-col>
        <b-col
          xl="3"
          md="4"
          sm="6"
          cols="12"
          class="serviceItem"
          :class="{active:serviceIndex === 3}"
          @mouseenter="showActive(3)"
          @mouseleave="showActive(0)"
        >
          <b-img src="../assets/img/service3.png" fluid alt="Responsive image" />
          <b-img v-if="serviceIndex === 3" class="hoverimg" src="../assets/img/service3_h.png" fluid alt="Responsive image" />
          <p class="label">
            机器学习
          </p>
          <p class="count">
            专注增强学习、GBDT、深度学习、注意力模型、对抗网络等人工智能算法的研发，是公司完成将数据转化为知识使命的根基。
          </p>
        </b-col>
        <b-col
          xl="3"
          md="4"
          sm="6"
          cols="12"
          class="serviceItem"
          :class="{active:serviceIndex === 4}"
          @mouseenter="showActive(4)"
          @mouseleave="showActive(0)"
        >
          <b-img src="../assets/img/service4.png" fluid alt="Responsive image" />
          <b-img v-if="serviceIndex === 4" class="hoverimg" src="../assets/img/service4_h.png" fluid alt="Responsive image" />
          <p class="label">
            自然语言理解
          </p>
          <p class="count">
            结合深度学习和语义规则，研发了分词、词性、实体、语义依赖、观点挖掘、事件抽取等模块，为上层业务提供语义服务。
          </p>
        </b-col>
        <b-col
          xl="3"
          md="4"
          sm="6"
          cols="12"
          class="serviceItem"
          :class="{active:serviceIndex === 5}"
          @mouseenter="showActive(5)"
          @mouseleave="showActive(0)"
        >
          <b-img src="../assets/img/service5.png" fluid alt="Responsive image" />
          <b-img v-if="serviceIndex === 5" class="hoverimg" src="../assets/img/service5_h.png" fluid alt="Responsive image" />
          <p class="label">
            数据可视化
          </p>
          <p class="count">
            利用图形、图像处理、计算机视觉以及用户界面，通过表达、建模以及对立体、表面、属性以及动画的显示，对数据加以可视化解释。
          </p>
        </b-col>
      </b-row>
    </b-container>
  </div>
</template>

<script>
export default {
  name: 'Service',
  data() {
    return {
      serviceIndex: 0
    }
  },
  methods: {
    showActive(index) {
      this.serviceIndex = index
    }
  }
}
</script>

<style scoped lang="less">
.component-service{
  width: 100%;
  background: #fff;
  >.container{
    padding: 0;
  }
  .service-panel{
    padding-top: 60px;
  }
  .serviceItem{
    position: relative;
    padding-top: 100px;
    margin-bottom: 60px;
    img{
      position: absolute;
      width: 90px;
      height: 90px;
      left: 50%;
      top: 0;
      transform: translate(-50%, 0)
    }
    p{
      margin-bottom: 0;
    }
    .label{
      text-align: center;
      font-size: 16px;
      font-weight: bold;
      line-height: 72px;
      color: #04142b;
    }
    .count{
      padding: 0 20px;
      text-align: justify;
      font-size: 12px;
      line-height: 24px;
      color: #828393;
    }
  }
}
@media (min-width:1200px){
  .col-xl-3{
    flex: 0 0 20%;
    max-width: 20%;
  }
}

@media (max-width: 576px ) {
  .component-service{
    background: #fff;
    .service-panel{
      padding: 4vw;
    }
    .row{
      margin: 0;
    }
    .serviceItem{
      position: relative;
      padding: 4.6667vw;
      margin: 0;
      &:hover, &.active{
        border-radius: 10px;
        box-shadow: 0px 0px 9px 0px rgba(82, 109, 249, 0.2);
      }
      img{
        width: 10.6667vw;
        height: 10.6667vw;
        left: 12vw;
        top: 4.9333vw;
      }
      .label{
        position: absolute;
        left: 0;
        top: 17.3333vw;
        width: 24vw;
        text-align: center;
        font-size: 3.4667vw;
        color: rgb(4, 20, 43);
        line-height: 1.2;
      }
      .count{
        width: 100%;
        padding: 0;
        padding-left: 20vw;
        font-size: 3.4667vw;
        color: rgb(130, 131, 147);
        line-height: 1.692;
      }
    }
  }
}
</style>

<template>
  <div class="component-service">
    <b-container class="service-panel">
      <b-row>
        <b-col class="serviceItem" @mouseenter="showActive(1)" @mouseleave="showActive(0)">
          <b-img src="../assets/img/service1.png" fluid alt="Responsive image" />
          <b-img v-if="serviceIndex === 1" class="hoverimg" src="../assets/img/service1_h.png" fluid alt="Responsive image" />
          <p class="label">
            海量数据
          </p>
          <p class="count">
            专注增强学习、GBDT、深度学习、注意力模型、对抗网络等人工智能算法的研发，是公司完成将数据转化为知识使命的根基。
          </p>
        </b-col>
        <b-col class="serviceItem" @mouseenter="showActive(2)" @mouseleave="showActive(0)">
          <b-img src="../assets/img/service2.png" fluid alt="Responsive image" />
          <b-img v-if="serviceIndex === 2" class="hoverimg" src="../assets/img/service2_h.png" fluid alt="Responsive image" />
          <p class="label">
            知识图谱
          </p>
          <p class="count">
            结合深度学习和语义规则，研发了分词、词性、实体、语义依赖、观点挖掘、事件抽取等模块，为上层业务提供语义服务。
          </p>
        </b-col>
        <b-col class="serviceItem" @mouseenter="showActive(3)" @mouseleave="showActive(0)">
          <b-img src="../assets/img/service3.png" fluid alt="Responsive image" />
          <b-img v-if="serviceIndex === 3" class="hoverimg" src="../assets/img/service3_h.png" fluid alt="Responsive image" />
          <p class="label">
            机器学习
          </p>
          <p class="count">
            数据是公司业务基础，团队自主研发大吞吐量分布式采集和结构化流水线，实时全面覆盖任何网页和APP数据。
          </p>
        </b-col>
        <b-col class="serviceItem" @mouseenter="showActive(4)" @mouseleave="showActive(0)">
          <b-img src="../assets/img/service4.png" fluid alt="Responsive image" />
          <b-img v-if="serviceIndex === 4" class="hoverimg" src="../assets/img/service4_h.png" fluid alt="Responsive image" />
          <p class="label">
            自然语言理解
          </p>
          <p class="count">
            团队研发的语义网络技术，自动完成实体抽取及实体链接，构建了千万级别知识图谱，助力人类决策的联想与推断。
          </p>
        </b-col>
        <b-col class="serviceItem" @mouseenter="showActive(5)" @mouseleave="showActive(0)">
          <b-img src="../assets/img/service5.png" fluid alt="Responsive image" />
          <b-img v-if="serviceIndex === 5" class="hoverimg" src="../assets/img/service5_h.png" fluid alt="Responsive image" />
          <p class="label">
            数据可视化
          </p>
          <p class="count">
            数据可视化的概念是风靡网络的,利用统计软件R进行数据挖掘，然后根据定义的权重值画线，最后用色盘来标识获得。
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
    padding: 60px 0;
  }
  .serviceItem{
    position: relative;
    padding-top: 100px;
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
</style>

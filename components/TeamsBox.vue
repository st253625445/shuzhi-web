<template>
  <div class="component-team">
    <b-container class="team-panel">
      <div class="main_title">
        <span>智库团队</span>
      </div>
      <b-row class="teamList">
        <b-col
          v-for="(item, index) in teamData"
          :key="index"
          xl="2"
          md="2"
          sm="4"
          cols="4"
          class="teamItem"
        >
          <div class="teamImg">
            <b-img :src="item.img" fluid-grow alt="Fluid-grow image" />
          </div>
          <div class="teamItemInfo">
            <p class="name">
              {{ item.name }}
            </p>
            <p class="title">
              {{ item.title }}
            </p>
          </div>
        </b-col>
      </b-row>
    </b-container>
  </div>
</template>

<script>
export default {
  name: 'C',
  components: {},
  props: {},
  data() {
    return {
      teamData: [{
        name: '张晓东',
        title: '乌镇智库理事长',
        img: require('../assets/img/itemImage1.png')
      }, {
        name: '陈利人',
        title: '乌镇智库CTO',
        img: require('../assets/img/itemImage2.png')
      }, {
        name: '车品觉',
        title: '乌镇智库理事',
        img: require('../assets/img/itemImage3.png')
      }, {
        name: '程迈越',
        title: '乌镇智库理事',
        img: require('../assets/img/itemImage4.png')
      }, {
        name: '陈立峰',
        title: '乌镇智库理事',
        img: require('../assets/img/itemImage5.png')
      }, {
        name: '姜玮',
        title: '乌镇智库理事',
        img: require('../assets/img/itemImage6.png')
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
.component-team{
  padding: 40px 0 80px;
  background: #f7f7f7;
  >.container{
    padding: 0;
  }
  .teamList{
    position: relative;
    .teamItemInfo{
      position: absolute;
      width: calc(100% - 30px);
      height: 60px;
      bottom: 0;
      left: 15px;
      padding: 10px 24px;
      background: rgba(43,55,71,0.9);
      color: #fff;
      text-align: left;
    }
    p{
      margin-bottom: 0;
    }
    .name{
      font-size: 14px;
      line-height: 22px;
    }
    .title{
      font-size: 12px;
      line-height: 18px;
    }
  }
}

@media (max-width: 576px ) {
  .component-team{
    padding: 0;
    .main_title{
      height: 16vw;
      padding: 3.3333vw 0;
      padding-left: 24px;
    }
    .row{
      margin: 0;
    }
    .teamList{
      padding: 0 2vw;
    }
    .col-4{
      padding: 0 2vw;
    }
    .teamItem {
      margin-bottom: 4vw;
      .teamItemInfo{
        width: calc(100% - 4vw);
        height: 13.3333vw;
        left: 2vw;
        padding: 2vw;
      }
      .name{
        font-size: 3.4667vw;
        line-height: 5.3333vw;
      }
      .title{
        font-size: 3.2vw;
        line-height: 4.8vw;
      }
    }
  }
}
</style>

<template>
  <div class="component-team">
    <b-container class="team-panel">
      <div class="main_title">
        <span>智库团队</span>
      </div>
      <b-row class="teamList">
        <b-col class="teamItem">
          <b-img src="../assets/img/itemImage1.png" fluid-grow alt="Fluid-grow image" />
          <div class="teamItemInfo">
            <p class="name">
              张晓东
            </p>
            <p class="title">
              乌镇智库理事长
            </p>
          </div>
        </b-col>
        <b-col class="teamItem">
          <b-img src="../assets/img/itemImage2.png" fluid-grow alt="Fluid-grow image" />
          <div class="teamItemInfo">
            <p class="name">
              陈利人
            </p>
            <p class="title">
              乌镇智库CTO
            </p>
          </div>
        </b-col>
        <b-col class="teamItem">
          <b-img src="../assets/img/itemImage3.png" fluid-grow alt="Fluid-grow image" />
          <div class="teamItemInfo">
            <p class="name">
              车品觉
            </p>
            <p class="title">
              乌镇智库理事
            </p>
          </div>
        </b-col>
        <b-col class="teamItem">
          <b-img src="../assets/img/itemImage4.png" fluid-grow alt="Fluid-grow image" />
          <div class="teamItemInfo">
            <p class="name">
              程迈越
            </p>
            <p class="title">
              乌镇智库理事
            </p>
          </div>
        </b-col>
        <b-col class="teamItem">
          <b-img src="../assets/img/itemImage5.png" fluid-grow alt="Fluid-grow image" />
          <div class="teamItemInfo">
            <p class="name">
              陈立峰
            </p>
            <p class="title">
              乌镇智库理事
            </p>
          </div>
        </b-col>
        <b-col class="teamItem">
          <b-img src="../assets/img/itemImage6.png" fluid-grow alt="Fluid-grow image" />
          <div class="teamItemInfo">
            <p class="name">
              姜玮
            </p>
            <p class="title">
              乌镇智库理事
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
</style>

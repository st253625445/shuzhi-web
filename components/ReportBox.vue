<template>
  <div class="component-report">
    <b-container class="service-panel">
      <div class="main_title">
        <span>研究报告</span>
      </div>
      <b-row class="reportList">
        <b-col>
          <div class="reportItem">
            <b-img src="../assets/img/report1.png" fluid-grow alt="Fluid-grow image" />
            <p class="label">
              乌镇智库系列AI报告收官：从细分领域洞 察全球AI态势
            </p>
            <p class="count">
              从全球视角来看，计算机视觉、自然语言处理、智能驾 驶在新增企业数、融资规模、专利数上体量，其中察全球AI态势数上体量，其中察全球AI态势
            </p>
          </div>
        </b-col>
        <b-col>
          <div class="reportItem">
            <b-img src="../assets/img/report2.png" fluid-grow alt="Fluid-grow image" />
            <p class="label">
              乌镇智库系列AI报告收官：从细分领域洞 察全球AI态势
            </p>
            <p class="count">
              从全球视角来看，计算机视觉、自然语言处理、智能驾 驶在新增企业数、融资规模、专利数上体量，其中察全球AI态势数上体量，其中察全球AI态势
            </p>
          </div>
        </b-col>
        <b-col>
          <div class="reportItem">
            <b-img src="../assets/img/report3.png" fluid-grow alt="Fluid-grow image" />
            <p class="label">
              乌镇智库系列AI报告收官：从细分领域洞 察全球AI态势
            </p>
            <p class="count">
              从全球视角来看，计算机视觉、自然语言处理、智能驾 驶在新增企业数、融资规模、专利数上体量，其中察全球AI态势数上体量，其中察全球AI态势
            </p>
          </div>
        </b-col>
      </b-row>
      <div class="main_moreIcon">
        更多研究报告
      </div>
    </b-container>
  </div>
</template>

<script>
export default {
  name: 'ReportBox',
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
.component-report{
  padding: 40px 0 60px;
  background: #f7f7f7;
  >.container{
    padding: 0;
  }
  .reportList{
    .reportItem{
      background: #fff;
      p{
        margin-bottom: 0;
        text-align: justify;
        padding: 0 20px;
        display: -webkit-box;
        -webkit-box-orient: vertical;
        -webkit-line-clamp: 2;
        overflow: hidden;
      }
      .label{
        min-height: 64px;
        margin-bottom: 10px;
        margin-top: 20px;
        font-size: 16px;
        font-weight: bold;
        line-height: 32px;
      }
      .count{
        min-height: 80px;
        font-size: 12px;
        line-height: 20px;
        color: #737373;
        padding-bottom: 40px;
      }
      &:hover{
        .label{
          color:#526df9;
        }
      }
    }
  }
}
</style>

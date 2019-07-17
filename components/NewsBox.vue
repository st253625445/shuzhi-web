<template>
  <div class="component-news">
    <b-container class="news-panel">
      <div class="main_title">
        <span>动态新闻</span>
      </div>
      <b-row class="newsList">
        <b-col class="newsItem">
          <b-img src="../assets/img/newImage1.png" fluid-grow alt="Fluid-grow image" />
          <div class="newsInfo">
            <p class="label">
              乌镇智库系列AI报告收官：从细分领域洞 察全球AI态势
            </p>
            <p class="count">
              从全球视角来看，计算机视觉、自然语言处理、智能驾 驶在新增企业数、融资规模、专利数上体量，其中从全球视角来看，计算机视觉、自然语言处理、智能驾 驶在新增企业数、融资规模、专利数上体量，其中从全球视角来看，计算机视觉、自然语言处理、智能驾 驶在新增企业数、融资规模、专利数上体量，其中察全球AI态势数上体量，其中察全球AI态势
            </p>
            <p class="moreButton">
              查看全部
              <b-img src="../assets/img/arrows.png" fluid alt="image" />
            </p>
          </div>
        </b-col>
        <b-col class="newsItem">
          <b-img src="../assets/img/newImage2.png" fluid-grow alt="Fluid-grow image" />
          <div class="newsInfo">
            <p class="label">
              乌镇智库系列AI报告收官：从细分领域洞 察全球AI态势
            </p>
            <p class="count">
              从全球视角来看，计算机视觉、自然语言处理、智能驾 驶在新增企业数、融资规模、专利数上体量，其中察全球AI态势数上体量，其中察全球AI态势
            </p>
            <p class="moreButton">
              查看全部
              <b-img src="../assets/img/arrows.png" fluid alt="image" />
            </p>
          </div>
        </b-col>
        <b-col class="newsItem">
          <b-img src="../assets/img/newImage3.png" fluid-grow alt="Fluid-grow image" />
          <div class="newsInfo">
            <p class="label">
              乌镇智库系列AI报告收官：从细分领域洞 察全球AI态势
            </p>
            <p class="count">
              从全球视角来看，计算机视觉、自然语言处理、智能驾 驶在新增企业数、融资规模、专利数上体量，其中察全球AI态势数上体量，其中察全球AI态势
            </p>
            <p class="moreButton">
              查看全部
              <b-img src="../assets/img/arrows.png" fluid alt="image" />
            </p>
          </div>
        </b-col>
      </b-row>
      <div class="main_moreIcon">
        更多动态新闻
      </div>
    </b-container>
  </div>
</template>

<script>
export default {
  name: 'NewsBox',
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
.component-news{
  padding: 40px 0 60px;
  background: #fff;
  >.container{
    padding: 0;
  }
  .newsList{
    .newsItem{
      position: relative;
      background: #fff;
      cursor: default;
      p{
        margin-bottom: 0;
      }
      .newsInfo{
        position: absolute;
        width: calc(100% - 30px);
        height: 60px;
        padding: 0 30px;
        bottom: 0;
        left: 15px;
        background: rgba(43,55,71,0.9);
        color: #fff;
      }
      .label{
        width: 100%;
        line-height: 60px;
        font-size: 16px;
        overflow: hidden;
        text-overflow:ellipsis;
        white-space: nowrap;
      }
      .count{
        display: none;
        font-size: 12px;
        line-height: 2;
        color: rgba(255,255,255,0.8);
        -webkit-box-orient: vertical;
        -webkit-line-clamp: 5;
        overflow: hidden;
      }
      .moreButton{
        display: none;
        margin-top: 20px;
        font-size: 13px;
        line-height: 24px;
        align-items: center;
        img{
          margin-left: 10px;
        }
      }
      &:hover{
        .newsInfo{
          height: 100%;
          padding: 10px 30px;
          top: 0;
        }
        .count{
          display: -webkit-box;
        }
        .moreButton{
          display: flex;
        }
      }
    }
  }
}
</style>

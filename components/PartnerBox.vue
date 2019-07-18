<template>
  <div class="component-partner">
    <b-container class="partner-panel">
      <div class="main_title">
        <span>合作伙伴</span>
      </div>
      <div class="partnerListBox">
        <b-row ref="partnerList">
          <b-col v-for="(item, index) in partnerImgs" :key="index">
            <b-img :src="item.img" fluid alt="image" />
          </b-col>
        </b-row>
      </div>
    </b-container>
  </div>
</template>

<script>
export default {
  name: 'PartnerBox',
  components: {},
  props: {},
  data() {
    return {
      partnerImgs: []
    }
  },
  computed: {},
  watch: {},
  created() {
    this.partnerImgs = []
    for (let i = 32; i < 48; i++) {
      this.partnerImgs.push({
        img: require(`../assets/img/partner/image${i}.png`)
      })
    }
  },
  mounted() {},
  methods: {}
}
</script>

<style scoped lang="less">
.component-partner{
  padding: 40px 0 60px;
  background: #fff;
  >.container{
    padding: 0;
  }
}
</style>

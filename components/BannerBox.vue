<template>
  <div class="component-banner">
    <b-carousel
      id="carousel-fade"
      style="text-shadow: 0px 0px 2px #000"
      fade
      indicators
      img-width="1024"
      img-height="480"
    >
      <b-carousel-slide
        caption="First slide"
        img-src="../assets/img/banner1.jpg"
      />
      <b-carousel-slide
        caption="Second Slide"
        img-src="../assets/img/banner1.jpg"
      />
      <b-carousel-slide
        caption="Third Slide"
        img-src="../assets/img/banner1.jpg"
      />
    </b-carousel>
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
  methods: {}
}
</script>

<style scoped lang="less">
.component-banner{
  width: 100%;
}
</style>

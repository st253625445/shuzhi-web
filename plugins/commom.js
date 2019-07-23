import Vue from 'vue'

const isMobile = {
  install(vue) {
    const flag = navigator.userAgent.match(
      /(phone|pad|pod|iPhone|iPod|ios|iPad|Android|Mobile|BlackBerry|IEMobile|MQQBrowser|JUC|Fennec|wOSBrowser|BrowserNG|WebOS|Symbian|Windows Phone)/i
    )
    vue.prototype.$isMobile = flag ? 1 : 0
  }
}
Vue.use(isMobile)

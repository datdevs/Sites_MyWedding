import Vue from 'vue'
import VueRouter from 'vue-router'
import App from './vue/App.vue'
import routes from './router/index'

Vue.use(VueRouter)

const router = new VueRouter({
  routes,
})

new Vue({
  el: '#dtapp',
  router,
  render: (h) => h(App),
})

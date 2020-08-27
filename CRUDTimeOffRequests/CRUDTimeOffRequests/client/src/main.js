import Vue from 'vue'
import App from './App.vue'
import VueFilterDateFormat from '@vuejs-community/vue-filter-date-format';
import VueRouter from 'vue-router'
import { BootstrapVue, IconsPlugin } from 'bootstrap-vue'

import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap-vue/dist/bootstrap-vue.css'

// Install BootstrapVue
Vue.use(BootstrapVue)
// Optionally install the BootstrapVue icon components plugin
Vue.use(IconsPlugin)

Vue.use(VueRouter)
Vue.use(VueFilterDateFormat);

Vue.config.productionTip = false

import Home from './components/Home.vue' 
import Edit from './components/Edit.vue' 

const routes = [
  {
    path: '/',
    redirect: '/requestList'
  },
  { path: '/requestList', component: Home },
  { path: '/edit:id', name:'edit', component: Edit },
  { path: '/edit', component: Edit }
]

const router = new VueRouter({routes})

new Vue({
  router,
  render: h => h(App),
}).$mount('#app')

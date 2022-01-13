// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import Vue from 'vue/dist/vue.esm';
import TurbolinksAdapter from 'vue-turbolinks';
import Vuetify from 'vuetify';
import 'vuetify/dist/vuetify.min.css';
import './components';
import VueFlashMessage from 'vue-flash-message';
require('vue-flash-message/dist/vue-flash-message.min.css');

Rails.start()
Turbolinks.start()
ActiveStorage.start()

Vue.use(TurbolinksAdapter);
Vue.use(Vuetify);
Vue.use(VueFlashMessage);
const vuetify = new Vuetify();

document.addEventListener('turbolinks:load', () => {
  new Vue({
    el: '[data-behavior="vue"]',
    vuetify,
  });
});
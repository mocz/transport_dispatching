// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//=require jquery3
//=require popper
//=require bootstrap
//= require bootstrap-sprockets
//= require Chart.bundle
//= require chartkick
//= require highcharts
//= require_tree .
import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "bootstrap"

require("chart.js")
require("chartkick")
require("@rails/ujs").start()
requird("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


Rails.start()
Turbolinks.start()
ActiveStorage.start()

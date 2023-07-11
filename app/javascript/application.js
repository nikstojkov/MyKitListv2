// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import * as bootstrap from "bootstrap"
import { TabulatorFull as Tabulator } from 'tabulator-tables'; //import Tabulator library

import "./src/jquery"
import 'jquery-ui'

//add Tabulator and bootstrap to the global
window.bootstrap = bootstrap;
window.Tabulator = Tabulator;

// Testing JS is imported and jQuery is working
$(function () {
  console.log("Hello from jQuery!")
})

// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import * as bootstrap from "bootstrap"
import "./src/jquery"
import './src/jquery-ui'
import './custom/test'


//add Tabulator and bootstrap to the global
window.bootstrap = bootstrap;


// Testing JS is imported and jQuery is working
$(function () {
  console.log("Hello from jQuery!")
})

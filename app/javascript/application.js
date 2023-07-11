// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import * as bootstrap from "bootstrap"
import "./src/jquery"

window.bootstrap = bootstrap


$(function () {
  console.log("Hello from jQuery!")
})

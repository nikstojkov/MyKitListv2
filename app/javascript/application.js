// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import * as bootstrap from "bootstrap"
import "./src/jquery"
import DataTable from "datatables.net-bs5";


$(function () {
  console.log("Hello from jQuery!")
})

// let table = DataTable.$('#example').DataTable({});
// // render table
// table.draw();

import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log("HEllo World");
    this.element.textContent = "Hello World!"
  }
}

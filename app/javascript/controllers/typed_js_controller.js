import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Follow the white rabbit", "and choose My Only Sub"],
      typeSpeed: 50,
      loop: true
    })
  }
}

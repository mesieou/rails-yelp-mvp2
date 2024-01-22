import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    const myCarouselElement = document.querySelector('#myCarousel')
    const carousel = new bootstrap.Carousel(myCarouselElement, {
      interval: 2000,
      touch: false
    })
  }
}

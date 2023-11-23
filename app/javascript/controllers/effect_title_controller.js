import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

// Connects to data-controller="effect-title"
export default class extends Controller {

  connect() {
    const destinations = [
      'Roman Empire',
      'Italian Renaissance',
      'Egyptian Pyramids',
      'France 98',
      'American Far West',
      'Mayan temples',
      'T-Rex jungle'
    ];
        new Typed('.element', {
      strings: destinations.map(destination => `${destination}`),
      smartBackspace: true,
      typeSpeed: 30,
      backSpeed: 30,
      loop: true,
    });
  }
}

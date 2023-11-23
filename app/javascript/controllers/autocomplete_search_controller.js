import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="autocomplete-search"
export default class extends Controller {
  static targets = ["input", "list", "form"];

  connect() {
    console.log("kinderpingui");
    console.log(this.listTarget);
    console.log(this.formTarget);
  }

  autocomplete(event) {
    event.preventDefault()
    const url = `${this.formTarget.action}?query=${this.inputTarget.value}`
    fetch(url, {headers: {"Accept": "text/plain"}})
      .then(response => response.text())
      .then((data) => {
        console.log(data);
        this.listTarget.innerHTML = data
      })
  }
}

import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = { url: String }

  connect() {
    this.refresh()
  }

  refresh() {
    fetch(this.urlValue, { headers: { "Accept": "text/vnd.turbo-stream.html" } })
      .then(response => response.text())
      .then(html => {
        this.element.innerHTML = html
      })
      .finally(() => {
        setTimeout(() => this.refresh(), 5000) // Refresh setiap 5 detik
      })
  }
}
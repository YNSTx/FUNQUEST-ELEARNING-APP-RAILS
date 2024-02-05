import { Controller } from "@hotwired/stimulus"
import Swal from "sweetalert2"
// Connects to data-controller="submit-alert"
export default class extends Controller {

  connect() {
console.log("Hello, Stimulus!", this.element);
  }
  fire(event) {
    event.preventDefault();
    Swal.fire({
      title: "Good job!",
      text: "Your quiz is submited!",
      icon: "success"
    }).then((result) => {
      if (result.isConfirmed) {
        event.target.submit();
      }
    });
  }
}

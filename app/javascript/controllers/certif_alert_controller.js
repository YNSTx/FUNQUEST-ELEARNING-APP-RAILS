import { Controller } from "@hotwired/stimulus"
import Swal from "sweetalert2"
// Connects to data-controller="submit-alert"
export default class extends Controller {

  connect() {
console.log("Hello, Stimulus!", this.element);
  }
  download(event) {
    Swal.fire({
      imageUrl: "https://res.cloudinary.com/djesiex6g/image/upload/v1707301999/wepik-gradient-elegant-luxury-appreciation-certificate-20240207103133wp0q_trqojm.png",
      text: "You will recive your certifiacte in your email.",
      imageHeight: 400,
      imageAlt: "cerif_img"
    }).then(() => {
      window.location.href = "/";
    });
  }
}

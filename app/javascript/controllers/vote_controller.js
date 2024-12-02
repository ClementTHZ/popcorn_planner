import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["cards"]
  connect() {
    this.activeElement = null; // Initialise l'élément actif à null

  }
  buttonYellow(event) {
    const element = document.querySelector(".border-2")
    console.log(element)
    if (element) {
      element.classList.remove("border-2", "border-yellow-400", "rounded-md");
    }

    // Définit le nouvel élément actif
    this.activeElement = event.currentTarget;

    // Ajoute les classes de contour à l'élément cliqué
    this.activeElement.classList.add("border-2", "border-yellow-400", "rounded-md");

    console.log("Contour ajouté à l'élément cliqué");
  }


}

// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

window.closePopup = function() {
  let popup = document.getElementById('popup-modal');
  console.log("closing");
  popup.style.display = "none";
}


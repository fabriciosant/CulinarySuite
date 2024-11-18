// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import * as bootstrap from "bootstrap"

document.addEventListener("turbo:load", () => {
    // Reativar eventos do Bootstrap se necessário
    const togglers = document.querySelectorAll('[data-bs-toggle="collapse"]');
    togglers.forEach((toggler) => {
      new bootstrap.Collapse(toggler);
    });
  });
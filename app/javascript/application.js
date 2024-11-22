// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "bootstrap"


//#region Confirmar deleção
window.confirmDelete = function (itemName, deleteUrl) {
    document.getElementById('modalMessage').textContent = `Você realmente deseja deletar "${itemName}"?`;
  
    const form = document.getElementById('deleteForm');
    form.action = deleteUrl;
  
    const modal = new bootstrap.Modal(document.getElementById('deleteModal'));
    modal.show();
  };
//#endregion

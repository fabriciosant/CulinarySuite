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

//#region show input cidades
document.addEventListener("turbo:load", () => {
  const estadoSelect = document.getElementById("estado");
  const cidadeContainer = document.getElementById("cidade-container");
  const cidadeSelect = document.getElementById("cidade");

  if (estadoSelect) {
    estadoSelect.addEventListener("change", async (event) => {
      const estadoId = event.target.value;

      if (estadoId) {
        try {
          // Fetch cidades from the server
          const response = await fetch(`/g_estados/${estadoId}/cidades`);
          if (!response.ok) throw new Error("Erro ao carregar cidades");

          const cidades = await response.json();

          // Populate the cidade select
          cidadeSelect.innerHTML = `<option value="">Selecione a Cidade</option>`;
          cidades.forEach((cidade) => {
            const option = document.createElement("option");
            option.value = cidade.id;
            option.textContent = cidade.nome;
            cidadeSelect.appendChild(option);
          });

          cidadeContainer.style.display = "block"; // Show cidade container
        } catch (error) {
          console.error(error);
          alert("Erro ao carregar cidades. Tente novamente.");
        }
      } else {
        cidadeSelect.innerHTML = ""; // Clear cidade select
        cidadeContainer.style.display = "none"; // Hide cidade container
      }
    });
  }
});
//#endregion

//#region sidebar
document.addEventListener('DOMContentLoaded', () => {
  // Seleciona elementos do menu e botão expandir
  var menuItem = document.querySelectorAll('.item-menu');
  var btnExp = document.querySelector('#btn-exp');
  var menuSide = document.querySelector('.menu-lateral');

  // Função para selecionar o item do menu
  function selectLink(event) {
    event.stopPropagation(); // Evita que o clique afete outros elementos
    menuItem.forEach((item) => item.classList.remove('ativo')); // Remove a classe ativo
    this.classList.add('ativo'); // Adiciona a classe ativo no item clicado
  }

  // Adiciona o evento de clique a cada item do menu
  menuItem.forEach((item) => item.addEventListener('click', selectLink));

  // Função para expandir/recolher o menu e alterar o ícone
  window.changeIcon = function (icon) {
    menuSide.classList.toggle('expandir');

    // Alterna o ícone entre "list" e "x"
    if (menuSide.classList.contains('expandir')) {
      icon.classList.remove('bi-list');
      icon.classList.add('bi-x');
    } else {
      icon.classList.remove('bi-x');
      icon.classList.add('bi-list');
    }
  };
});
//#endregion
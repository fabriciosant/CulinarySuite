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

document.addEventListener("DOMContentLoaded", function () {
  const cepInput = document.getElementById("cep");
  cepInput.addEventListener("input", function () {
    // Remove qualquer caractere não numérico
    cepInput.value = cepInput.value.replace(/\D/g, '');
  });
});

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

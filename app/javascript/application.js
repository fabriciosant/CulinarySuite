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

//#region mostrar senha
function showPasswordLogin(){

  const togglePasswordButtons = document.querySelectorAll(".toggle-password");
  
  togglePasswordButtons.forEach((button) => {
    button.addEventListener("click", () => {
      const passwordInput = button.closest(".input-group").querySelector(".password-input");
      const icon = button.querySelector("i");
      
      if (passwordInput.type === "password") {
        passwordInput.type = "text";
        icon.classList.remove("bi-eye");
        icon.classList.add("bi-eye-slash");
      } else {
        passwordInput.type = "password";
        icon.classList.remove("bi-eye-slash");
        icon.classList.add("bi-eye");
      }
    });
  });
}

function showPasswordRegister(){
  const exibirSenha = document.querySelectorAll(".toggle-password-register");
  const exibirConfirmarSenha = document.querySelectorAll(".toggle-password-confirm");

  exibirSenha.forEach((button) => {
    button.addEventListener("click", () => {
      const senha = button.closest(".input-group").querySelector(".input-senha");
      const icone = button.querySelector("i");
      
      if(senha.type === "password") {
        senha.type = "text";
        icone.classList.remove("bi-eye");
        icone.classList.add("bi-eye-slash");
      }else{
        senha.type = "password";
        icone.classList.remove("bi-eye-slash");
        icone.classList.add("bi-eye");
      }
    })
  })
  exibirConfirmarSenha.forEach((button) => {
    button.addEventListener("click", () => {
      const confirmarSenha = button.closest(".input-group").querySelector(".input-confirmar-senha");
      const icon = button.querySelector("i");

      if(confirmarSenha.type === "password"){
        confirmarSenha.type = "text";
        icon.classList.remove("bi-eye");
        icon.classList.add("bi-eye-slash");
      }else{
        confirmarSenha.type = "password";
        icon.classList.remove("bi-eye-slash");
        icon.classList.add("bi-eye")
      }
    })
  })

}

function initializePasswordToggle(){
  showPasswordLogin();
  showPasswordRegister();
}

document.addEventListener("turbo:load", initializePasswordToggle);
document.addEventListener("DOMContentLoaded", initializePasswordToggle);

//#endregion
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

//#region toggle sidebar
document.addEventListener("DOMContentLoaded", () => {
  const sidebar = document.getElementById("accordionSidebar");
  const toggleButton = document.getElementById("sidebarToggle");
  const toggleIcon = toggleButton.querySelector("i");

  if (toggleButton && sidebar) {
    toggleButton.addEventListener("click", () => {
      // Adiciona ou remove a classe 'toggled'
      sidebar.classList.toggle("toggled");

      // Alterna o ícone do botão
      if (sidebar.classList.contains("toggled")) {
        toggleIcon.classList.remove("bi-caret-left-fill");
        toggleIcon.classList.add("bi-caret-right-fill");
      } else {
        toggleIcon.classList.remove("bi-caret-right-fill");
        toggleIcon.classList.add("bi-caret-left-fill");
      }
    });
  }
});

//#endregion


//#region GRAFICOS DASHBOARD
document.addEventListener("DOMContentLoaded", function () {
  const ctx = document.getElementById("myAreaChart").getContext("2d");

  const myAreaChart = new Chart(ctx, {
      type: "line", // Tipo do gráfico
      data: {
          labels: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October"], // Meses
          datasets: [{
              label: "Earnings ($)", // Rótulo do conjunto de dados
              data: [0, 10000, 5000, 15000, 10000, 20000, 15000, 30000, 25000, 40000], // Valores
              borderColor: "rgba(78, 115, 223, 1)", // Cor da linha
              backgroundColor: "rgba(78, 115, 223, 0.2)", // Cor de preenchimento
              borderWidth: 2, // Espessura da linha
              tension: 0.4, // Suaviza as curvas
              fill: true, // Preenche a área abaixo da linha
              pointRadius: 3, // Tamanho dos pontos
              pointBackgroundColor: "rgba(78, 115, 223, 1)", // Cor dos pontos
              pointBorderColor: "rgba(255, 255, 255, 1)", // Borda dos pontos
              pointHoverRadius: 5, // Aumenta o ponto ao passar o mouse
              pointHoverBackgroundColor: "rgba(78, 115, 223, 1)", // Cor dos pontos ao passar o mouse
              pointHoverBorderColor: "rgba(255, 255, 255, 1)" // Borda ao passar o mouse
          }]
      },
      options: {
          maintainAspectRatio: false, // Gráfico responsivo
          plugins: {
              legend: {
                  display: false // Remove a legenda
              },
              tooltip: {
                  callbacks: {
                      label: function (tooltipItem) {
                          return "$" + tooltipItem.raw.toLocaleString(); // Formato dos valores no tooltip
                      }
                  }
              }
          },
          scales: {
              x: {
                  ticks: {
                      font: {
                          size: 12 // Tamanho da fonte dos meses
                      }
                  },
                  grid: {
                      display: false // Remove as linhas verticais
                  }
              },
              y: {
                  beginAtZero: true, // Começa em 0
                  ticks: {
                      callback: function (value) {
                          return "$" + value.toLocaleString(); // Formato do eixo Y
                      }
                  },
                  grid: {
                      color: "rgba(234, 236, 244, 1)", // Cor das linhas horizontais
                      borderDash: [2] // Linhas tracejadas
                  }
              }
          }
      }
  });
});

document.addEventListener("DOMContentLoaded", function () {
  const ctx = document.getElementById("myPieChart").getContext("2d");

  const myPieChart = new Chart(ctx, {
      type: "doughnut", // Gráfico tipo doughnut (anel)
      data: {
          labels: ["Direct", "Social", "Referral"], // Rótulos
          datasets: [{
              data: [55, 30, 15], // Valores em porcentagem
              backgroundColor: ["#4e73df", "#1cc88a", "#36b9cc"], // Cores do gráfico
              hoverBackgroundColor: ["#2e59d9", "#17a673", "#2c9faf"], // Cores ao passar o mouse
              hoverBorderColor: "#ffffff" // Cor da borda ao passar o mouse
          }]
      },
      options: {
          maintainAspectRatio: false,
          plugins: {
              legend: {
                  display: false // Remove a legenda no canto superior
              },
              tooltip: {
                  callbacks: {
                      label: function (tooltipItem) {
                          const label = tooltipItem.label || '';
                          const value = tooltipItem.raw;
                          return `${label}: ${value}%`; // Exibe o rótulo e o valor no tooltip
                      }
                  }
              }
          },
          cutout: "70%", // Tamanho do espaço central no gráfico (anel)
      }
  });
});
//#endregion
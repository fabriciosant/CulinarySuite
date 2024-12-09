class GEstado < ApplicationRecord
  has_many :g_cidades

  # Validações
  validates :nome, presence: true, uniqueness: true, 
  format: { with: /\A[\p{L}\p{M}\s]+\z/, message: "deve conter apenas letras e caracteres acentuados" }, 
  length: { in: 3..100 }


  def to_s
    nome
  end

  def cidades
    estado = GEstado.find(params[:id])
    render json: estado.g_cidades.select(:id, :nome)
  end
end

class GEstado < ApplicationRecord
  has_many :g_cidades

  def to_s
    nome
  end

  def cidades
    estado = GEstado.find(params[:id])
    render json: estado.cidades.select(:id, :nome)
  end
end

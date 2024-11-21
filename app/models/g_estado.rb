class GEstado < ApplicationRecord
  has_many :g_cidades
  def to_s
    nome
  end
end

class GCidade < ApplicationRecord
  belongs_to :g_estado
  has_many :g_enderecos

  def to_s
    nome
  end
end

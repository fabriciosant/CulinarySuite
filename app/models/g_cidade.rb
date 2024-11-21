class GCidade < ApplicationRecord
  belongs_to :g_estado

  def to_s
    nome
  end
end

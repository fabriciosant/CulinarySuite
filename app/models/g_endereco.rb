class GEndereco < ApplicationRecord
  belongs_to :g_estado
  belongs_to :g_cidade, optional: true

  validates :cep, format: { with: /\A\d+\z/, message: "deve conter apenas números" }
end

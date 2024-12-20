class GEndereco < ApplicationRecord
  belongs_to :g_estado
  belongs_to :g_cidade, optional: true
  has_many :users

  validates :cep, format: { with: /\A\d{5}-\d{3}\z/ }
end

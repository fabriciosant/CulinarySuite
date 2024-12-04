class GCidade < ApplicationRecord
  belongs_to :g_estado

  #validações
  validates :nome, presence: { message: "não pode ficar em branco" }
  validates :nome, uniqueness: { scope: :g_estado_id, case_sensitive: false, message: "já está em uso no estado" }
  validates :nome, length: { minimum: 3, maximum: 20, message: "deve ter entre 3 e 20 caracteres" }
  validates :nome, format: { with: /\A[a-zA-Z\s]+\z/, message: "deve conter apenas letras e espaços " }
  validate :validar_acentuacao
  validates :g_estado, presence: {message: "precisa estar associado a um estado válido" }

  private

  def validar_acentuacao
    nome_normalizado = nome.unicode_normalize(:nfkd).gsub(/[^\x00-\x7F]/n, '')
    if nome != nome_normalizado
      errors.add(:nome, "não pode conter caracteres acentuados incorretos")
    end
  end
      
  def to_s
    nome
  end
end

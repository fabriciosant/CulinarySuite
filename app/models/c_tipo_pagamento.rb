class CTipoPagamento < ApplicationRecord
    validates :descricao, presence: { message: "não pode ficar em branco" }
    validates :descricao, uniqueness: { case_sensitive: false, message: "já está em uso"}
    validates :descricao, format: {
        with: /\A[^0-9]+\z/,
        message: "não pode conter números"
    }
    validate :validar_descricao
private
    def validar_descricao
        if descricao.present? && descricao.length <3
        errors.add( :descricao, "deve conter pelo menos 3 caracteres")
        end
        descricao_normalizada = descricao.unicode_normalize(:nfkd).gsub(/[^\x00-\x7F]/n, '')
        if descricao != descricao_normalizada
            errors.add(:descricao, "não pode conter acentuação")
        end    
    end
end

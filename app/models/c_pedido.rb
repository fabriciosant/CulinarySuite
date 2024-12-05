class CPedido < ApplicationRecord
  belongs_to :c_usuarios
  belongs_to :c_produtos
  belongs_to :c_pagamentos
end

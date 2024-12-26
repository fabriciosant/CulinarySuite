class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :timeoutable, :trackable and
  #
  validates :nome, :sobrenome, presence: true
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable

  belongs_to :g_endereco, optional: true
end

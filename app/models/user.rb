class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :timeoutable, :trackable and
  #
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable,
         :confirmable,
         :lockable

  belongs_to :g_endereco, optional: true
end

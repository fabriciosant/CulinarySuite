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
         :lockable,
         :omniauthable
end

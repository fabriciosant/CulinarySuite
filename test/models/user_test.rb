require "test_helper"

class UserTest < ActiveSupport::TestCase
  devise :database_authenticatable,
        :registerable,
        :recoverable,
        :rememberable,
        :validatable,
        :omniauthable, omniauth_providers: [ :google_oauth2, :facebook ]
end

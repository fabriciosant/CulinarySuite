# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
# before_action :configure_sign_in_params, only: [:create]

# GET /resource/sign_in
# def new
#   super
# end

# POST /resource/sign_in
def create
  user_params = params.require(:user).permit(:email, :password, :remember_me)

  if user_params[:email].blank?
    flash[:alert] = I18n.t("devise.failure.blank_email")
    redirect_to new_user_session_path(user: user_params)
  elsif user_params[:password].blank?
    flash[:alert] = I18n.t("devise.failure.blank_password")
    redirect_to new_user_session_path(user: user_params)
  else
    super
  end
end



# # DELETE /resource/sign_out
def destroy
  flash[:notice] = "Você saiu com sucesso. Até a próxima!"
  super
end


  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end

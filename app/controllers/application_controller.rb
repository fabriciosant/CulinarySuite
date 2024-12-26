class ApplicationController < ActionController::Base
  allow_browser versions: :modern
  around_action :switch_locale
  
  before_action :configure_permitted_parameters, if: :devise_controller?

  def default_url_options
    { locale: I18n.locale }
  end

  def switch_locale(&action)
    locale = params[:locale] || I18n.default_locale
    I18n.with_locale(locale, &action)
  end
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nome, :sobrenome])
    devise_parameter_sanitizer.permit(:account_update, keys: [:nome, :sobrenome])
  end
end

class ApplicationController < ActionController::Base
  # Valida que solo si se encuentra una sesion iniciada, sino envía a loguearse
  before_action :authenticate_user!

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path
  end
end

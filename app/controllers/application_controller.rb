# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_admin_session, :current_admin

  before_action :authenticate_user!

  protected

  def authenticate_user!
    redirect_to root_url unless current_admin_session || skip_authentication?
  end

  def skip_authentication?
    false
  end

  def current_admin_session
    AdminSession.find
  end

  def current_admin
    current_admin_session&.admin
  end
end

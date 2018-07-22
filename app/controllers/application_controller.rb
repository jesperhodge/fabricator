# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user_session, :current_user

  before_action :authenticate_user!

  protected

  def authenticate_user!
    redirect_to root_url unless current_user_session || skip_authentication?
  end

  def skip_authentication?
    false
  end

  def current_user_session
    UserSession.find
  end

  def current_user
    current_user_session&.user
  end
end

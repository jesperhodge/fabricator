# frozen_string_literal: true

# Description: API endpoint for managing sessions, logging in and out.
class AdminSessionsController < ApplicationController
  def login
    session = AdminSession.new(
      email: admin_params[:email],
      password: admin_params[:password],
      remember_me: true
    )

    successful_save = session.save

    render json: {
      success: successful_save && !session.errors.messages.present?,
      errors: session.errors.messages
    }
  end

  def logout
    running_session = current_admin_session
    success = running_session.destroy

    render json: {
      success: success && running_session.blank?,
      errors: running_session&.errors&.messages
    }
  end

  protected

  # The user does not need to be logged in when he is at the login screen.
  def skip_authentication?
    true
  end

  def admin_params
    params.require(:admin).permit(:email, :password)
  end
end

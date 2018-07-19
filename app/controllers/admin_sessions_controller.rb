# frozen_string_literal: true

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
    success = session.destroy

    render json: {
      success: success && !current_admin_session.present?,
      errors: session&.errors&.messages
    }
  end

  protected

  def session
    current_admin_session
  end

  def skip_authentication?
    true
  end

  def admin_params
    params.require(:admin).permit(:email, :password)
  end
end

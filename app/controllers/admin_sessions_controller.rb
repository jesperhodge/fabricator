class AdminSessionsController < ApplicationController
  def login
    session = AdminSession.create(
      login: admin_params[:email],
      password: admin_params[:password],
      remember_me: true
    )
    debugger

    render json: {
      session: session,
      success: (session&.errors&.messages.present?),
      errors: (session&.errors&.messages)
    }
  end

  protected

  def admin_params
    params.slice(:admin).permit(:email, :password)
  end
end

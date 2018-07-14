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

  protected

  def skip_authentication?
    true
  end

  def admin_params
    params.require(:admin).permit(:email, :password)
  end
end

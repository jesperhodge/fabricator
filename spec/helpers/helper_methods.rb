# frozen_string_literal: true

module HelperMethods
  def login_user(user: nil)
    current_controller = @controller
    @controller = UserSessionsController.new

    user ||= create(:user)
    post :login, params: {
      user: {
        email: user.email, password: user.password
      }
    }

    @controller = current_controller
  end
end

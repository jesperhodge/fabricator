# frozen_string_literal: true

module HelperMethods
  def login_admin(admin: nil)
    current_controller = @controller
    @controller = AdminSessionsController.new

    admin ||= create(:admin)
    post :login, params: {
      admin: {
        email: admin.email, password: admin.password
      }
    }

    @controller = current_controller
  end
end

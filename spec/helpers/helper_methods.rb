module HelperMethods
  def login_admin
    admin = create(:admin)

    post 'admins/login', params: {
      admin: {
        email: admin.email, password: admin.password
      }
    }
  end
end

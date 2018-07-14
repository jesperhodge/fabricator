module HelperMethods
  def login_admin
    around(:each) do |example|
      admin = create(:admin)

      @session = AdminSession.create(
        email: admin.email,
        password: admin.password,
        remember_me: true
      )

      @session.save
      @current_session = AdminSession.find
      example.run
      @session.destroy
    end
  end
end

require 'rails_helper'

RSpec.describe AdminSessionsController do
  let(:body) { JSON.parse(response.body, symbolize_names: true) }

  let(:admin) { create(:admin) }

  it 'tests login response', :mark do
    post :login, params: {
      admin: {
        email: admin.email, password: admin.password
      }
    }

    expect(body[:success]).to be(true)
  end
end

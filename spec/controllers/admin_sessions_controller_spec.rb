# frozen_string_literal: true

require 'rails_helper'

RSpec.describe AdminSessionsController do
  let(:body) { JSON.parse(response.body, symbolize_names: true) }

  let(:admin) { create(:admin) }

  it 'tests login response' do
    post :login, params: {
      admin: {
        email: admin.email, password: admin.password
      }
    }

    expect(body[:success]).to be(true)
    # expect(subject.send(:current_admin_session)).to be_present
    # expect(subject.send(:current_admin)).to eq(@admin)
  end

  it 'returns "success: false" if the login fails' do
    post :login, params: {
      admin: {
        email: admin.email, password: 'password1234'
      }
    }

    expect(body[:success]).to be(false)
    # expect(subject.send(:current_admin_session)).to be_present
    # expect(subject.send(:current_admin)).to eq(@admin)
  end
end

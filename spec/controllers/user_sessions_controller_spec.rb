# frozen_string_literal: true

require 'rails_helper'

RSpec.describe UserSessionsController do
  let(:body) { JSON.parse(response.body, symbolize_names: true) }

  let(:user) { create(:user) }

  it 'tests login response' do
    post :login, params: {
      user: {
        email: user.email, password: user.password
      }
    }

    expect(body[:success]).to be(true)
    expect(subject.send(:current_user_session)).to be_present
    expect(subject.send(:current_user)).to eq(user)
  end

  it 'returns "success: false" if the login fails' do
    post :login, params: {
      user: {
        email: user.email, password: 'password1234'
      }
    }

    expect(body[:success]).to be(false)
    expect(subject.send(:current_user_session)).not_to be_present
    expect(subject.send(:current_user)).to be_nil
  end

  describe 'logout' do
    before(:each) do
      post :login, params: {
        user: {
          email: user.email, password: user.password
        }
      }

      expect(body[:success]).to be(true)
      expect(subject.send(:current_user_session)).to be_present
    end

    it 'tests logout' do
      post :logout
      expect(body[:success]).to be(true)
      expect(subject.send(:current_user_session)).not_to be_present
    end
  end
end

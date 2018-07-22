# frozen_string_literal: true

require 'rails_helper'

RSpec.describe UsersController do
  let(:body) { JSON.parse(response.body, symbolize_names: true) }

  let(:user) { create(:user) }
  before(:each) { login_user(user: user) }

  it 'gets user data' do
    get :current_user
    expect(body[:user][:id]).to eq(user.id)
    expect(body[:user].keys).to contain_exactly(:id, :email)
  end
end

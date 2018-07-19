# frozen_string_literal: true

require 'rails_helper'

RSpec.describe AdminsController do
  let(:body) { JSON.parse(response.body, symbolize_names: true) }

  let(:admin) { create(:admin) }
  before(:each) { login_admin(admin: admin) }

  it 'gets admin data' do
    get :current_admin
    expect(body[:admin][:id]).to eq(admin.id)
    expect(body[:admin].keys).to contain_exactly(:id, :email)
  end
end

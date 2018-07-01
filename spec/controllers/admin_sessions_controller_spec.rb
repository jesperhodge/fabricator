require 'rails_helper'

RSpec.describe AdminSessionsController do
  it 'tests login response' do
    post :login, params: { admin: { email: 'abc', password: 'def' } }
    expect(response.body).to eq(1)
  end
end

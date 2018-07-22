# frozen_string_literal: true

require 'rails_helper'

RSpec.describe HomeController do
  let(:body) do
    JSON.parse(response.body, symbolize_names: true)
  end

  before(:each) do
    login_user
  end

  it 'tests home controller' do
    post :test
    expect(body[:test]).to eq('Tested.')
  end

  it 'tests user session' do
    expect(session[:user_credentials]).to be_present
  end
end

require 'rails_helper'

RSpec.describe HomeController do
  let(:body) do
    JSON.parse(response.body, symbolize_names: true)
  end

  login_admin

  it 'tests home controller' do
    post :test
    expect(body[:test]).to eq('Tested.')
    expect(@current_session).to be_present
  end
end

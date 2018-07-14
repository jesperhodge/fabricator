require 'rails_helper'

RSpec.describe HomeController do
  let(:body) do
    JSON.parse(response.body, symbolize_names: true)
  end

  login_admin

  it 'tests home controller' do
    post :test
    expect(body[:test]).to eq('Tested.')
    expect(subject.send(:current_admin_session)).to be_present
    expect(subject.send(:current_admin)).to eq(@admin)
  end
end

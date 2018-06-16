require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  let(:body) do
    JSON.parse(response.body, symbolize_names: true)
  end

  it 'tests home controller' do
    post :test
    expect(body[:test]).to eq('Tested.')
  end
end

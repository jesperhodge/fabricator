require 'rails_helper'

RSpec.describe Admin, type: :model do
  describe 'create' do
    it 'tests that everything works' do
      described_class.create(email: 'jes')
      expect(described_class.last.first_name).to eq('Jesper')
    end
  end

  describe 'factorybot' do
    let!(:admin) { create(:admin) }
    it 'tests everything works' do
      expect(described_class.last.first_name).to eq('MyString')
    end
  end
end

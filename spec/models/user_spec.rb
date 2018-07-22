# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'create' do
    it 'tests that everything works' do
      described_class.create(
        email: 'jesper@host.com',
        password: 'pass9999',
        password_confirmation: 'pass9999'
      )
      expect(described_class.last.email).to eq('jesper@host.com')
    end
  end

  describe 'factorybot' do
    let!(:user) { create(:user) }
    it 'tests everything works' do
      expect(described_class.last.first_name).to eq(user.first_name)
    end
  end
end

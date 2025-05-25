require 'rails_helper'

RSpec.describe Quest, type: :model do
  describe 'attributes' do
    it 'has a name and status attributes' do
      quest = Quest.new(name: 'Test Quest', status: false)

      expect(quest.name).to eq('Test Quest')
      expect(quest.status).to eq(false)
    end
  end

  describe 'validations' do
    it 'is valid with name only' do
      quest = Quest.new(name: 'Valid Quest')
      expect(quest).to be_valid
    end

    it 'is not valid with only status' do
      quest = Quest.new(status: true)
      expect(quest).not_to be_valid
      expect(quest.errors[:name]).to include("can't be blank")
    end
  end
end

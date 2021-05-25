require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.new(name: 'Ahmet') }
  let(:group) do
    Group.new(name: 'New Group',
              icon: 'Icon')
  end
  let(:goals) { Goal.new(name: 1, user_id: 1) }

  describe 'associations' do
    it 'has many groups' do
      expect(user).to respond_to(:groups)
    end

    it 'has many goals' do
      expect(user).to respond_to(:goals)
    end
  end

  describe 'validations' do
    it 'must have a name' do
      expect(user).to be_valid
    end

    it 'name cannot be empty' do
      user.name = nil
      expect(user).not_to be_valid
    end
  end
end

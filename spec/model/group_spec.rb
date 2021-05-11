require 'rails_helper'

RSpec.describe Group, type: 'model' do
  before :each do
    @user = User.create(name: 'TestName')
    @group = @user.groups.new(name: 'New Test', icon: 'Testİcon')
  end

  describe 'associations' do
    it 'belongs to user' do
      expect(@group).to respond_to(:user)
    end

    # it 'has many goals' do
    #   expect(@group).to respond_to(:goals)
    # end

 
  end

  it 'name should not be empty' do
    test_group = Group.new
    test_group.name = nil
    expect(test_group).to_not be_valid
  end

  it 'should not be empty' do
    test_group = Group.new
    test_group.name = 'New Group'
    test_group.icon = 'İcon'
    test_group.user_id = 1
    expect(test_group).to be_valid
  end

  it 'Name should not be empty' do
    test_group = Group.new
    test_group.name = nil
    expect(test_group).to_not be_valid
  end
end

require 'rails_helper'

RSpec.describe Goal, type: 'model' do
  before :each do
    @user = User.create(name: 'TestName', id: 1)
    @goal = @user.goals.new(name: 'New Test', amount: 10)
  end

  describe 'associations' do
    it 'belongs to user' do
      expect(@goal).to respond_to(:user)
    end
  end

  it 'name should not be empty' do
    test_goal = Goal.new
    test_goal.name = nil
    expect(test_goal).to_not be_valid
  end

  it 'should not be empty' do
    test_goal = Goal.new
    test_goal.name = 'New Goal'
    test_goal.amount = 10
    test_goal.user_id = 1
    test_goal.group_id = 0
    expect(test_goal).to be_valid
  end
end

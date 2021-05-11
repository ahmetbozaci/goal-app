require 'application_system_test_case'

class GoalsTest < ApplicationSystemTestCase
  setup do
    @goal = goals(:one)
  end

  test 'visiting the index' do
    visit goals_url
    assert_selector 'h1', text: 'Goals'
  end

  test 'creating a Goal' do
    visit goals_url
    click_on 'New Goal'

    fill_in 'Amount', with: @goal.amount
    fill_in 'Name', with: @goal.name
    click_on 'Create Goal'

    assert_text 'Goal was successfully created'
    click_on 'Back'
  end

  test 'updating a Goal' do
    visit goals_url
    click_on 'Edit', match: :first

    fill_in 'Amount', with: @goal.amount
    fill_in 'Name', with: @goal.name
    click_on 'Update Goal'

    assert_text 'Goal was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Goal' do
    visit goals_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Goal was successfully destroyed'
  end
end

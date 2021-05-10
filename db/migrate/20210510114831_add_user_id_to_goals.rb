class AddUserIdToGoals < ActiveRecord::Migration[6.1]
  def change
    add_column :goals, :user_id, :integer
    add_index :goals, :user_id
  end
end

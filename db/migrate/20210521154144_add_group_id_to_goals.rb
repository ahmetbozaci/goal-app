class AddGroupIdToGoals < ActiveRecord::Migration[6.1]
  def change
    add_column :goals, :group_id, :integer
    add_index :goals, :group_id
  end
end

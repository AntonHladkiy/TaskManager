class RemoveUserIdFromTask < ActiveRecord::Migration[6.1]
  def change
    remove_column :tasks, :userId, :integer
  end
end

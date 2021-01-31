class AddNameToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :firstName, :string
    add_column :users, :secondName, :string
  end
end

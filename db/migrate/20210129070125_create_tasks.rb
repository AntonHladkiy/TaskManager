class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.integer :priority
      t.date :dueDate
      t.integer :userId
      t.boolean :done

      t.timestamps
    end
  end
end

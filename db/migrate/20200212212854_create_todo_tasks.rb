class CreateTodoTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :todo_tasks do |t|
      t.date :todoDate
      t.belongs_to :user, null: false, foreign_key: true
      t.string :title
      t.text :description
      t.boolean :completed
      t.belongs_to :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end

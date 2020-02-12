class Category < ApplicationRecord
    has_many :todo_tasks
    has_many :users, through: :todo_tasks
end

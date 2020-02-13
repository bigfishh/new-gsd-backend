class User < ApplicationRecord
    has_many :todo_tasks
    has_many :categories, through: :todo_tasks

    has_secure_password

    validates :username, uniqueness: { case_sensitive: false }
end

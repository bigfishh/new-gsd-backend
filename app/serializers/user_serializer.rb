class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :bio, :img_url
  has_many :todo_tasks
end

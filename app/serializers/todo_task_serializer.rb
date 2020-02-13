class TodoTaskSerializer < ActiveModel::Serializer
  attributes :id, :title, :description
  belongs_to :category


  def user 
    # byebug
    self.object.user.username
  end

end

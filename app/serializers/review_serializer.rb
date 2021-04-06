class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :content, :rating, :username

  def username
    object.user.username
  end
  
end

class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :content, :rating, :username

  # finds user relationship in database when review is called, finds username 
  # and nests in review. Also because we added has_many :reviews
  def username
    object.user.username
  end
  
end

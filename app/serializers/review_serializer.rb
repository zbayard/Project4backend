class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :brewery_id, :content, :rating, :likes
end

class BeerSerializer < ActiveModel::Serializer
  attributes :id, :name, :brewery_id, :user_id, :abv, :style, :image, :comment
end

class BrewerySerializer < ActiveModel::Serializer
  attributes :id, :name, :brewery_type, :street, :city, :state, :postal_code, :country, :longitude, :latitude, :phone, :website_url
end

class Brewery < ApplicationRecord
    
    has_many :reviews 
    has many :users, through: :reviews
    has_many :beers 

end

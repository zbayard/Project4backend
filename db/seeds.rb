
Brewery.destroy_all
User.destroy_all

# 100.times do 
    res = RestClient.get("https://api.openbrewerydb.org/breweries?per_page=200")
# end 

json = res.body

brewery_hash = JSON.parse(json)

# p brewery_hash

brewery_hash.each do |brewery|  
    
    new_brewery = Brewery.create(
        name: brewery["name"],
        brewery_type: brewery["brewery_type"],
        street: brewery["street"],
        city: brewery["city"],
        state: brewery["state"],
        postal_code: brewery["postal_code"],
        country: brewery["country"],
        longitude: brewery["longitude"],
        latitude: brewery["latitude"],
        phone: brewery["phone"],
        website_url: brewery["website_url"]
    )
end


# "https://brianiswu-open-brewery-db-v1.p.rapidapi.com/breweries/5494?page=#{i}&per_page=50

# key= '9f6aac6892msh4c38711f6ef7c70p17aefejsn0a0ce1898699'
# host= 'brianiswu-open-brewery-db-v1.p.rapidapi.com'


User.create(
    username: "Zach",
    password: "abc123",
    image: "hello",
    bio: "i like turtles",
    name: "Zach Bayard"

)


puts "beer baby"
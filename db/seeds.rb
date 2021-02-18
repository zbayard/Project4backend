
#BREW API
# "https://brianiswu-open-brewery-db-v1.p.rapidapi.com/breweries/5494?page=#{i}&per_page=50
# key= '9f6aac6892msh4c38711f6ef7c70p17aefejsn0a0ce1898699'
# host= 'brianiswu-open-brewery-db-v1.p.rapidapi.com'


# i = 1
# breweries = []

# 161.times do
#         response = RestClient.get "https://api.openbrewerydb.org/breweries?page=#{i}&per_page=50"
#         json = JSON.parse response

#         breweries << json
#         i += 1
# end

# flattened_breweries = breweries.flatten


    res = RestClient.get("https://api.openbrewerydb.org/breweries?per_page=200")
    
    json = res.body
    
    brewery_hash = JSON.parse(json)
    
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

# ------------ USER DATA ------------
User.create(
    username: "zbayard",
    password: "abc123",
    image: "https://www.emmys.com/sites/default/files/styles/bio_pics_detail/public/Zack-Galifianakis-bio-450x600.jpg?itok=brFhcHpg",
    bio: "i like turtles",
    name: "Zach Bayard"
)
User.create(
    username: "maifam",
    password: "abc123",
    image: "https://static.independent.co.uk/s3fs-public/thumbnails/image/2016/10/11/09/mulan.jpg?width=1200",
    bio: "Love to have a beer on a mountain",
    name: "Mai Pham"
)
User.create(
    username: "blueMoonCEO",
    password: "abc123",
    image:"https://www.porchdrinking.com/wp-content/uploads/2016/10/Keith-Villa2.jpg",
    bio: "Belgian beer all the way ♥️ Blue Moon",
    name: "Keith Villa"
)

# ------------ REVIEW DATA ------------


Review.create(user_id: 1, brewery_id: 1, content: "Great spot to chill with friends", rating: 4, likes: 2)


Review.create(user_id: 3, brewery_id: 23, content: "Enjoyed our time here", rating: 3, likes: 5)


Review.create(user_id: 3, brewery_id: 41, content: "What a great place, friendly staff", rating: 5, likes: 2)

Review.create(user_id: 3, brewery_id: 2, content: "Love their beer", rating: 4, likes: 5)

# ------------ BEER DATA ------------

# [Avondale Brewing Co. - Birmingham, Alabama]
Beer.create(
        name: "Spring Street Saison", 
        brewery_id: 1, 
        user_id: 1, 
        abv: 7.2, 
        style: "Belgian Farmhouse Ale", 
        image: "https://websiteblob1.blob.core.windows.net/beverages/1-spring-street-saison-8", 
        comment: "Smooth and crisp"
)
Beer.create(name: "Sour Pash", brewery_id: 1, user_id: 1, abv: 4.3 , style: "Sour", 
        image: "https://websiteblob1.blob.core.windows.net/beverages/27-sour-pash-small-batch-4", 
        comment: "Sour and tart" )
Beer.create(name: "Mosey Amber", brewery_id: 1, user_id: 1, abv: 4.6 , style: "Lager", 
        image: "https://websiteblob1.blob.core.windows.net/beverages/28-mosey-amber-lager-small-batch-3", 
        comment: "Light and crisp" )

#[Dry River Brewing - Los Angeles, California]
Beer.create(name: "Temporal Dilation", brewery_id: 41, user_id: 1, abv: 7.8 , style: "Sour Ale", 
        image: "https://images.squarespace-cdn.com/content/v1/5d65f0b311f0070001868992/1605772277990-DXGVS3GT2WLEXWX5B1MD/ke17ZwdGBToddI8pDm48kHldqyjDwaeS7kYSmaCmglZ7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QHyNOqBUUEtDDsRWrJLTmTl_ALRZE0UkEheIF40jl8l-p-UjEfP0lrs6khMOijucIE9LbemCnC0mKIu4O-BCA/Temporal_100320-CMLA_LowRes-1.jpg?format=2500w", 
        comment: "Oak classic")
Beer.create(name: "Pomona", brewery_id: 41, user_id: 1, abv: 5.9 , style: "Basil, Sea Salt, Kiwi Gose Style", 
        image: "https://images.squarespace-cdn.com/content/v1/5d65f0b311f0070001868992/1602735215600-PJH7CKAREOQROUGCL7WD/ke17ZwdGBToddI8pDm48kNiEM88mrzHRsd1mQ3bxVct7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0s0XaMNjCqAzRibjnE_wBlkZ2axuMlPfqFLWy-3Tjp4nKScCHg1XF4aLsQJlo6oYbA/Pomona-Mockup2.jpg?format=2500w", 
        comment: "Flavorful and fruity")
Beer.create(name: "Diglossia", brewery_id: 41, user_id: 1, abv: 6.1 , style: "American Wild Ale", 
        image: "https://images.squarespace-cdn.com/content/v1/5d65f0b311f0070001868992/1591987107956-Y2SW4YGG0OP8OVFTGFE3/ke17ZwdGBToddI8pDm48kD1O8I8tuAu35dbRjenCVrNZw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZUJFbgE-7XRK3dMEBRBhUpwmOgeyy797S7k3Uv0CFPgtxSnrjXTFMs_MjXOo6DnsDsTKEj-npNqoCn2ggmIDymQ/image-asset.jpeg?format=750w",
        comment: "Taste of Vanilla and Chicory")


#[Grand Canyon Brewing - Williams, Arizona]
Beer.create(name: "American Pilsner", brewery_id: 11, user_id: 1, abv: 5.0 , style: "Malt", 
        image: "https://static.wixstatic.com/media/531093_dbf119937cda44a29e3ea6236e6ef067~mv2_d_2400_2400_s_4_2.png/v1/fill/w_590,h_596,al_c,q_85,usm_0.66_1.00_0.01/Pilsner-01.webp", 
        comment: "Floral & earthy aromas" )
Beer.create(name: "Horseshoe Bend", brewery_id: 11, user_id: 1, abv: 5.8, style: "Pale Ale", 
        image: "https://static.wixstatic.com/media/531093_c6920edb8f1c4d2997301b9c62459d8a~mv2.png/v1/fill/w_628,h_628,al_c,q_90,usm_0.66_1.00_0.01/Tap%20Stickers%20Individual%202021-06.webp", 
        comment:"Tropical falvorts and subtle caramel notes" )

#[Abnormal Beer Company - San Diego, California]
Beer.create(name: "Hazy Dreams", brewery_id: 23, user_id: 1, abv: 6.9 , style: "IPA" , 
        image: "https://images.squarespace-cdn.com/content/v1/59e9ad36d55b4164ac67749f/1585165173988-ES8HHCH4QYHZVJROZ77T/ke17ZwdGBToddI8pDm48kPJXHKy2-mnvrsdpGQjlhod7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QHyNOqBUUEtDDsRWrJLTmihaE5rlzFBImxTetd_yW5btdZx37rH5fuWDtePBPDaHF5LxdCVHkNEqSYPsUQCdT/HazyDreams.jpg?format=1000w", 
        comment: "Lingering frutiness that begs for another gulp" )
Beer.create(name: "Peach Cobbler", brewery_id: 23, user_id: 1, abv: 6.8, style: "Imperial Berliner Weiss", 
        image: "https://images.squarespace-cdn.com/content/v1/59e9ad36d55b4164ac67749f/1603230425455-L5PCSV1819DP0UY5SCUP/ke17ZwdGBToddI8pDm48kPJXHKy2-mnvrsdpGQjlhod7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QHyNOqBUUEtDDsRWrJLTmihaE5rlzFBImxTetd_yW5btdZx37rH5fuWDtePBPDaHF5LxdCVHkNEqSYPsUQCdT/Image+10-16-20+at+1.03+PM.jpg?format=1000w", 
        comment: "Tastes of a blend or rich Vanilla beans and a touch of Cinnamon")
Beer.create(name: "Dad Bod", brewery_id: 23, user_id: 1, abv: 9.2 , style: "Double IPA" , 
        image: "https://images.squarespace-cdn.com/content/v1/59e9ad36d55b4164ac67749f/1604641544207-X0U2ICSRVF05F6LHJ2N1/ke17ZwdGBToddI8pDm48kPJXHKy2-mnvrsdpGQjlhod7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QHyNOqBUUEtDDsRWrJLTmihaE5rlzFBImxTetd_yW5btdZx37rH5fuWDtePBPDaHF5LxdCVHkNEqSYPsUQCdT/Image+11-5-20+at+3.54+PM.jpg?format=1000w", 
        comment: "Dank and piney character")

#[Golden State Brewery - Santa Clara, California]
Beer.create(name: "Iron Castle", brewery_id: 45, user_id: 1, abv: 5.0, style: "Czech Pilsner", 
        image: "https://dzz2p2kq5g45d.cloudfront.net/wp-content/uploads/2021/01/28103349/Iron-Castle-Czech-Pilsner-draft-crowler-aspect-ratio-400-400-768x768.jpg" , 
        comment: "Extremely dry and effervescent" )
Beer.create(name: "Lilith", brewery_id: 45, user_id: 1, abv: 8.0, style:  "Belgian Golden Ale" , 
        image: "https://dzz2p2kq5g45d.cloudfront.net/wp-content/uploads/2021/02/13092938/Lilith_4Pack-aspect-ratio-400-400-768x767.jpg", 
        comment: "Notes of lemon peel and pilsner grain" )
Beer.create(name: "Tundra", brewery_id: 45, user_id: 1, abv: 11.0, style: "Triple IPA" , 
        image: "https://dzz2p2kq5g45d.cloudfront.net/wp-content/uploads/2021/02/04103552/Tundra-Tiple-IPA-Draft-Crowler-aspect-ratio-400-400-768x768.jpg", 
        comment: "Notes of orange zest, honeydew, melon, cotton candy")

# [Trimtab Brewing - Birmingham Alabama]
Beer.create(name: "Grand Prismatic", brewery_id: 2, user_id: 1, abv: 6.5, style: "IPA" , 
        image: "https://static.wixstatic.com/media/d4ad6a_9ac493e9cfd44379ae75298c64bafdcf~mv2.png/v1/fill/w_502,h_1066,al_c,q_90,usm_0.66_1.00_0.01/Grand%20Prismatic%20IPA.webp" , 
        comment: "Dry" )
# Beer.create(name: , brewery_id: 2, user_id: 1, abv: , style: , 
#         image: , 
#         comment: )
# Beer.create(name: , brewery_id: 2, user_id: 1, abv: , style: , 
#         image: , 
#         comment: )

puts "beer baby"
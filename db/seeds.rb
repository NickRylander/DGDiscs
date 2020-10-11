User.create(username: "NickR" , email: "nick@nick.com" , password: "password")

User.create(username: "EvanE" , email: "evan@evan.com" , password: "password")

5.times do
    Disc.create(brand: ["Innova", "Discraft", "Latitude 64", "Dynamic Discs"].sample , color: Faker::Color.color_name.capitalize , speed: rand(1..14), glide: rand(1..7) , turn: rand(-5..1), fade: rand(0..5), user_id: 1, name: ["Destroyer", "Thunderbird", "Roc", "Sidewinder", "Katana", "Aviar", "Turn", "Firestorm", "Teebird", "Eagle", "Cheetah", "Caiman", "Avatar", "Cobra", "Atlas", "Valkyrie"].sample )
end

5.times do
    Disc.create(brand: ["Innova", "Discraft", "Latitude 64", "Dynamic Discs"].sample , color: Faker::Color.color_name.capitalize , speed: rand(1..14), glide: rand(1..7) , turn: rand(-5..1), fade: rand(0..5), user_id: 2, name: ["Destroyer", "Thunderbird", "Roc", "Sidewinder", "Katana", "Aviar", "Turn", "Firestorm", "Teebird", "Eagle", "Cheetah", "Caiman", "Avatar", "Cobra", "Atlas", "Valkyrie"].sample )
end
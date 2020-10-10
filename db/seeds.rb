2.times do
    User.create(username: Faker::Internet.username , email: Faker::Internet.email , password: Faker::Internet.password)
end

2.times do
    Disc.create(brand: ["Innova", "Discraft"].sample , color: Faker::Color.color_name , speed: rand(1..13), glide: rand(1..7) , turn: rand(-5..1), fade: rand(0..5), user_id: 1, name: ["Destroyer", "Thunderbird", "Roc", "Sidewinder", "Katana", "Aviar", "Turn"].sample )
end

2.times do
    Disc.create(brand: ["Innova", "Discraft"].sample , color: Faker::Color.color_name , speed: rand(1..13), glide: rand(1..7) , turn: rand(-5..1), fade: rand(0..5), user_id: 2, name: ["Destroyer", "Thunderbird", "Roc", "Sidewinder", "Katana", "Aviar", "Turn"].sample )
end
puts "🌱 Seeding spices..."

# Seed your database here
10.times do
    Hiker.create(name: Faker::Name.name)
end

30.times do 
    trail = Trail.create(
        name: Faker::Mountain.name,
        location: Faker::Mountain.range,
        length: Faker::Number.between(from: 1, to: 10),
        elevation_gain: Faker::Number.between(from: 50, to: 3000),
        difficulty: Faker::Lorem.word
    )
    rand(1..5).times do 
        hiker = Hiker.order('RANDOM()').first
        Update.create(
            title: Faker::Lorem.word,
            description: Faker::Lorem.sentence,
            trail_id: trail.id,
            hiker_id: hiker.id
        )
    end
end

puts "✅ Done seeding!"


#t.string :name
#t.string :location
#t.integer :length
#t.integer :elevation_gain
#t.string :difficulty
#t.#text :description  REMOVE 
#t.timestamps

#t.string :title
#t.text :description 
#t.integer :hiker_id
#t.integer :trail_id 
#t.timestamps
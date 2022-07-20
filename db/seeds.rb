puts "🌱 Seeding spices..."

# Seed your database here
10.times do
    Hiker.create(name: Faker::Name.name)
end

30.times do 
    trail = Trail.create(
        name: Faker::Trail.name,
        location: Faker::Trail.location,
        length: Faker::Trail.length,
        elevation_gain: Faker::Trail.elevation_gain,
        difficulty: Faker::Trail.difficulty
    )
    rand(1..5).times do 
        hiker = Hiker.order('RANDOM()').first
        Update.create(
            title: Faker::Update.title,
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
#t.#text :description
#t.timestamps

#t.string :title
#t.text :description 
#t.integer :hiker_id
#t.integer :trail_id 
#t.timestamps
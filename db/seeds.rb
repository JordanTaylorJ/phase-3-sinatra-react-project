puts "🌱 Seeding spices..."

# Seed your database here
10.times do
    Hiker.create(name: Faker::Name.name)
end

30.times do 
    trail = Trail.create(
        name: Faker::Mountain.name,
        location: Faker::Mountain.range,
        distance: Faker::Number.between(from: 1, to: 400),
        elevation_gain: Faker::Number.between(from: 0, to: 10000)
    )
    rand(1..10).times do 
        hiker = Hiker.create(
            name: Faker::Name.name,
            time: Faker::Time.between(from: Time.now - 1, to: Time.now, format: :short),
            unsupported: Faker::Boolean.boolean,
            trail_id: trail.id
            )
    end
end

puts "✅ Done seeding!"

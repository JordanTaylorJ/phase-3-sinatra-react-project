puts "🌱 Seeding spices..."

# Seed your database here
10.times do
    Athlete.create(name: Faker::Name.name)
end

15.times do 
    trail = Trail.create(
        name: Faker::Mountain.name,
        location: Faker::Mountain.range,
        distance: "#{Faker::Number.between(from: 10, to: 1000)}mi",
        elevation_gain: "#{Faker::Number.between(from: 0, to: 10000)}ft"
    )
    rand(3..10).times do 
        hiker = Athlete.create(
            name: Faker::Name.name,
            time: "#{rand(0..60)}h #{rand(0..60)}m #{rand(0..60)}s",
            unsupported: Faker::Boolean.boolean,
            trail_id: trail.id
            )
    end
end

puts "✅ Done seeding!"

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

# 2. Create the instances 🏗️
puts "Creating restaurants..."
Restaurant.create!(name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "12345", category: "japanese")
puts "Created Dishoom"
Restaurant.create!(name: "chicken", address: "Nice", phone_number: "12345", category: "japanese")
puts "Created Dishoom"
Restaurant.create!(name: "cat", address: "not nice", phone_number: "12345", category: "japanese")
puts "Created Dishoom"
Restaurant.create!(name: "horse", address: "also not nice", phone_number: "12345", category: "japanese")
puts "Created Dishoom"
Restaurant.create!(name: "elephant", address: "too much", phone_number: "12345", category: "japanese")
puts "Created Dishoom"

# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."

review = Review.new(rating: 1 , content: "deserved")
review.restaurant = Restaurant.first
puts "Created Review"
review.save

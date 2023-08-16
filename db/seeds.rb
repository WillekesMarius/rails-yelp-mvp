require 'faker'

puts 'Cleaning database...'
Restaurant.destroy_all

categories = ["chinese", "italian", "japanese", "french", "belgian"]

puts 'Creating restaurants...'
10.times do
  attributes = { name: Faker::Restaurant.name, address: Faker::Address.street_address, category: categories.sample, phone_number: Faker::PhoneNumber.cell_phone }
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts 'Finished!'

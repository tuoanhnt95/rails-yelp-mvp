require 'faker'

puts 'Cleaning the DB... destroying restaurants'
Restaurant.destroy_all

puts 'Creating restaurants...'
5.times do
  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    category: Restaurant::CATEGORIES.sample
  )
end
puts "... created #{Restaurant.count} restaurants"

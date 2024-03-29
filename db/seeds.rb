require 'faker'

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating Restaurants'
category = ["chinese", "italian", "japanese", "french", "belgian"]
5.times do |index|
  Restaurant.create(name: Faker::Restaurant.name,
                    address: Faker::Address.street_address,
                    phone_number: Faker::PhoneNumber.phone_number,
                    category: category.sample)
  puts "#{index + 1} restaurant created"
end
puts 'All done'

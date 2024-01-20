require 'faker'

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating Restaurants'
5.times do |index|
  Restaurant.create(name: Faker::Restaurant.name,
                    address: Faker::Address.street_address,
                    category: (0..4).to_a.sample)
  puts "#{index + 1} restaurant created"
end
puts 'All done'

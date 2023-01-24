require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# puts Store.create(name: store_name).valid?
store = { 
  name: gets.chomp.to_s,
  annual_revenue: nil,
  mens_apparel: nil,
  womens_apparel: nil
}
new_store = Store.create(store)
puts new_store.errors.full_messages
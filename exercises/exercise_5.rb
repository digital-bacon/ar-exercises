require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

# Exercise 5: Calculations
puts (Store.sum("annual_revenue"))
puts (Store.average("annual_revenue"))
qry = { annual_revenue: 1000000 }
puts (Store.where("annual_revenue > ?", qry[:annual_revenue]).count)
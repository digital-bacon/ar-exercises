require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
# We haven't used the Employee class (and employees table) at all yet. If you
# look at this table's column structure, you'll find that it has a store_id
# (integer) column. This is a column that identifies which store each employee
# belongs to. It points to the id (integer) column of their store.

# Let's tell Active Record that these two tables are in fact related via the
# store_id column.

# Add the following code directly inside the Store model (class): has_many
# :employees

# Add the following code directly inside the Employee model (class): belongs_to
# :store

# Add some data into employees. Here's an example of one (note how it differs
# from how you create stores): @store1.employees.create(first_name: Khurram,
# last_name: Virani, hourly_rate: 60)

# Go ahead and create some more employees using the create method. You can do
# this by making multiple calls to create (like you have before.) No need to
# assign the employees to variables though. Create them through the @store#
# instance variables that you defined in previous exercises. Create a bunch under
# @store1 (Burnaby) and @store2 (Richmond). Eg: @store1.employees.create(...).

data = [
  {
    first_name: "John",
    last_name: "Franco",
    hourly_rate: 24,
    store: 2
  },
  {
    first_name: "Khurram",
    last_name: "Virani",
    hourly_rate: 60,
    store: 1
  },
  {
    first_name: "Jane",
    last_name: "Doe",
    hourly_rate: 29,
    store: 2
  },
  {
    first_name: "Hellen",
    last_name: "Abrahmov",
    hourly_rate: 63,
    store: 2
  },
  {
    first_name: "John",
    last_name: "Wick",
    hourly_rate: 666,
    store: 1
  },
]

data.each do |employee|
  id = employee[:store]
  store = instance_variable_get("@store#{id}")
  employee_parsed = {
    first_name: employee[:first_name],
    last_name: employee[:last_name],
    hourly_rate: employee[:hourly_rate]
  }
  store.employees.create(employee_parsed)
end
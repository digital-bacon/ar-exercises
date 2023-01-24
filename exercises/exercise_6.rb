require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

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
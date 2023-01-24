require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

# Exercise 4: Loading a subset of stores
# Borrowing and modifying the code from Exercise one, create 3 more stores:
# Surrey (annual_revenue of 224000, carries women's apparel only)
# Whistler (annual_revenue of 1900000 carries men's apparel only)
# Yaletown (annual_revenue of 430000 carries men's and women's apparel)
stores = [
  {
    name: "Surrey",
    annual_revenue: 224000,
    mens_apparel: false,
    womens_apparel: true
  },
  {
    name: "Whistler",
    annual_revenue: 1900000,
    mens_apparel: true,
    womens_apparel: false
  },
  {
    name: "Yaletown",
    annual_revenue: 430000,
    mens_apparel: true,
    womens_apparel: true
  }
]

stores.each do |store|
  Store.create(store)
end

@mens_stores = Store.where("mens_apparel = ?", false)
@mens_stores.each do |store|
  puts (store.name)
  puts (store.annual_revenue)
end

qry = { womens_apparel: true, annual_revenue: 100000 }
stores = Store.where("womens_apparel = ? AND annual_revenue < ? ", qry[:womens_apparel], qry[:annual_revenue])
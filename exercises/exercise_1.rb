require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

stores = [
  {
    name: "Burnaby",
    annual_revenue: 300000,
    mens_apparel: true,
    womens_apparel: true
  },
  {
    name: "Richmond",
    annual_revenue: 1260000,
    mens_apparel: true,
    womens_apparel: true
  },
  {
    name: "Gastown",
    annual_revenue: 190000,
    mens_apparel: true,
    womens_apparel: true
  }
]

stores.each do |store|
  Store.create(store)
end

puts Store.count
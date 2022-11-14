require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

store4 = Store.create(name: "Surret", annual_revenue: 224000, mens_apparel: true, womens_apparel: false )
store5 = Store.create(name: "Whistler", annual_revenue: 1900000, womens_apparel: false, mens_apparel:true )
store6 = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true )

@mens_stores = Store.where(mens_apparel: true)

@mens_stores.each do |store|
  puts store.name, store.annual_revenue
end

@womens_less_stores = Store.where("womens_apparel = ? and annual_revenue < ?", true, 1000000)

@womens_less_stores.each do |store|
  puts store.name, store.annual_revenue
end

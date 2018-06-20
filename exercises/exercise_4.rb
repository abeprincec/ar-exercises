require_relative "../setup"
require_relative "./exercise_1"
require_relative "./exercise_2"
require_relative "./exercise_3"

puts "Exercise 4"
puts "----------"

# Your code goes here ...

burnaby = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: "T", womens_apparel: "F")
whistler = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: "T", womens_apparel: "F")
yaletown = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: "T", womens_apparel: "T")

@mens_stores = Store.where(mens_apparel: "T")

#print @mens_stores.pluck(:name, :annual_revenue)

@women_stores_1m = Store.where(womens_apparel: "T").where("annual_revenue < ?", 1000000)

puts @women_stores_1m

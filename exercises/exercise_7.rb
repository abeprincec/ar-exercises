require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...


puts "Enter a store name"

input = gets.chomp

@new_store = Store.create(name: input)


if @new_store.errors.any?
puts @new_store.errors.messages
end




@new_employee = @store1.employees.create(first_name: "Joe", last_name: "Smith", hourly_rate: 30)

@new_employee.save
if @new_employee.any?
puts @new_employee.errors.messages
end
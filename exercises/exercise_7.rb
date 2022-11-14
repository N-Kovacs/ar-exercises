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
# class Store < ApplicationRecord
#   validate :carry
#   def carry
#     if mens_apparel == false && womens_apparel == false
#       errors.add("Has to carry apparel")
#     end
#   end
# end



class Store < ActiveRecord::Base
  validates :name, length: {minimum: 3} 
  validates :annual_revenue, numericality: {only_integer: true}
end

class Employee < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :store_id, presence: true
  validates :hourly_rate, numericality: {:only_integer => true, :less_than => 200, :greater_than => 40}
end

puts "Enter store name"
sName = gets.chomp
store7 = Store.create(name: sName)
puts store7.errors.full_messages

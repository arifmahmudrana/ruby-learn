# frozen_string_literal: true

# Local
# 10.times do
#   x = 10
#   p x
# end

# Global
# 10.times do
#   $x = 10
# end
# p $x

# An instance variable in ruby has a name starting with @ symbol, and its content is restricted to whatever the object itself refers to. Two separate objects, even though they belong to the same class, are allowed to have different values for their instance variables.

# CONST
# A_CONST = 10
# A_CONST = 20

# p A_CONST

# Class variables begin with @@ and must be initialized before they can be used in method definitions.

# class Customer
#   @@no_of_customers = 0
#   def initialize(id, name, addr)
#      @cust_id = id
#      @cust_name = name
#      @cust_addr = addr
#   end
#   def display_details()
#      puts "Customer id #@cust_id"
#      puts "Customer name #@cust_name"
#      puts "Customer address #@cust_addr"
#   end
#   def total_no_of_customers()
#      @@no_of_customers += 1
#      puts "Total number of customers: #@@no_of_customers"
#   end
# end

# cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
# cust2 = Customer.new("2", "Poul", "New Empire road, Khandala")

# cust1.total_no_of_customers()
# cust2.total_no_of_customers()

def value_count(hash, value)
  hash.select { |_k, v| v == value }.length
end
hash = { a: 5, b: 2, c: 3, d: 5 }
p value_count(hash, 5)
p value_count(hash, 2)
p value_count(hash, 0)

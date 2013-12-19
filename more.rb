# Implement a calculator in Ruby. Use whiteboard.
# 	Calculator should be able to understand expressions like “1 + 1”, “2 * 2”, “5 - 4”.
# 	Bonus: Implement (or explain how) a calculator that can handle order of operations.
# ===================================================

class Calculator
  def add(*numbers)
    numbers.reduce(:+)
  end

  def subtract(*numbers)
    numbers.reduce(:-)
  end

  def multiply(*numbers)
    numbers.reduce(:*)
  end

  def divide(num1, num2)
    num1 / num2
  end
end



# Write a function ‘interleave’ that alternates the contents of two or more arrays (or strings):

# interleave(“123”, “abc”, “ABC”) # => “1aA2bB3cC”
# interleave(“abc”, “12345”) # => “a1b2c345”
# ===================================================

# handling Strings is a giant pain
# so just handle Arrays
def interleave(arr1, arr2)
  if(arr1.is_a? Array) && (arr2.is_a? Array)
  	size = 0
	  woven = []
	
	  arr1 = arr1.join.split('')
	  arr2 = arr2.join.split('')
	  (arr1.length > arr2.length) ? (size = arr1.length) : (size = arr2.length)

	  (0...size).each do |i|
	    woven.push(arr1[i])
	    woven.push(arr2[i])
	  end
	  puts woven.join
   else
	  raise "Args are not Arrays"
   end
end

def interleave2(array1, array2)
  if( array1 && array2 ).is_a? Array
  	interleaved = []
  	if array1.length < array2.length
  		until array1.length == 0
  			interleaved << array1.shift
  			interleaved << array2.shift
  		end
  		interleaved << array2
  	else
  		until array2.length == 0
  			interleaved << array2.shift
  			interleaved << array1.shift
  		end
  		interleaved << array1
  	end
  end
  p interleaved
end


# Write a function ‘truncate’ that shortens a string to 
# the provided length, INCLUDING a trailing ellipsis:

# truncate(“this string”, 6) # => “thi…”
# ===================================================
def truncate(a_string, a_num)
  if (a_string.is_a? String) && (a_num.is_a? Integer)
    #p a_string.slice(0...a_num) # nope
    p a_string.split("").slice(0...a_num).join
  else
    raise "Please enter correct params"
  end
end


# Write a function ‘hashify’ that takes a 2D array (each inner array is a k/v pair) and creates a hash:

# hashify([[‘k1’, ‘v1’], [‘k2’, ‘v2’]]) # => {‘k1’ => ‘v1’, ‘k2’ => ‘v2’}
# ===================================================
def make_hash( tuples )
  new_hash = {}
  new_key = ""
  new_val = 0
  (0...tuples.length).each do |i|
    new_key = tuples[i][0]
    new_val = tuples[i][1]
    new_hash[new_key] = new_val
  end
  new_hash # {"a"=>1, "b"=>2, "c"=>3}
end



# Write a function ‘fizzbuzz’ that prints the numbers 1..100, replacing:

# numbers divisible by 3 with ‘fizz’
# numbers divisible by 5 with ‘buzz’
# numbers divisible by 3 and 5 with ‘fizzbuzz’
# ===================================================
def fizzbuzz
  a = Time.now.to_f
  (0..100).each do |num|
  	if((num % 3 == 0) && (num % 5 == 0))
  	  puts "fizzbuzz"
  	elsif( num % 3 == 0 )
  	  puts "fizz"
  	elsif( num % 5 == 0 )
  	  puts "buzz"
  	else puts num
  	end
  end
  b = Time.now.to_f

  diff = b - a
  puts "time diff " + diff.to_s

end

# this way is a little bit faster
def fizzbuzz2
  a = Time.now.to_f

  puts (1..100).map { |i|
	f = i % 3 == 0 ? 'Fizz' : nil
	b = i % 5 == 0 ? 'Buzz' : nil
	f || b ? "#{ f }#{ b }" : i
  }
  b = Time.now.to_f

  diff = b - a
  puts "time diff " + diff.to_s
end


# *Estimated Arrival Date

# Scenario: An order comes in and the ship method is UPS ground which typically takes 5 business days. We want to tell the
# customer what date to expect their package on. Orders made before noon, ship the same day. All others ship the next day.

# Complete a function that would figure this out for us for any shipping method. The `order_created_at` variable is a standard unix timestamp. `day_count` is the number of days we expect the package to take to arrive.

# def get_arrival_date(order_created_at, day_count)
#   # Your magic happens here

#   # Return as a DateTime object
#   return estimated_date_of_arrival
# end

# ===================================================
# *Recursively reverse an array.

# Write a function that reverses an array. Use recursion.

# ===================================================
def reverse_array(arr, counter)
  
  reversed = []
  reversed.push(arr[counter])
  puts reversed
  counter += 1
  puts counter
  if reversed.length == arr.length
    reverse_array(arr, counter -= 1)
  end
  reversed
end

def reverse(arr)
  arr.empty? ? arr : [arr.pop, *reverse(arr)]
end

# class Array
#   def recursive_reverse
#     return self if empty?
#     [pop, *reverse]
#   end
# end


# *Calculate Price

# Some products in our store sell for a flat rate no matter the quantity.

# Example, Monsterpods go for $20.00/each no matter how many you buy.

# Other products offer discounts for buying multiple quantities.

# Example, a Bottle Cap Tripod might be 1 for $5.00 or 2 for $7.00 or 10 for $30.00.

# If a customer orders a quantity in-between one of the tiers, it's priced 
# according to the last tier. So, if I ordered 4 Bottle Cap Tripods it would 
# look at the closest tier which is 2 for $7.00, or $3.50 per tripod.

# Each product stores the price tiers as a string that looks like this:

# Monsterpod: 1_20  
# Bottle Cap Tripod: 1_5,2_7,10_30

# Given this information, your task is to fill in this function:

# def calculate_price(quantity, price_string)
#   Your magic happens here

#   # Make sure the price is pretty $x,xxx.xx
#   return price
# end


# Example results:

# calculate_price(1, "1_20")` would return $20.00  
# calculate_price(1, "1_5,2_7,10_30")` would return $5.00  
# calculate_price(4, "1_5,2_7,10_30")` would return $14.00
# ===================================================
# *Search Sorted Array

# Write a method to search a sorted array for a specific number.
 
# What is Big O of the function?
# ===================================================
# Write a function that counts the occurrences of each character in a string.  
# Choosing a suitable data structure for storage is up to you.

# If the string was really really long (like all of Wikipedia) what would you need to do?
# ===================================================
# Write a function called ‘map2x’ that takes an array of integers 
# and returns a new array with each integer from the first array, 
# doubled.

# map2x([1, 2, 3]) # => [2, 4, 6]

# in: Ruby, then Javascript or CoffeeScript
# ===================================================
# Write a function called ‘map’ that takes an array and returns a 
# new array with the result of applying the passed-in block to 
# each element of the original array.

# map([1, 2, 3]) { |x| 2 * x } # => [2, 4, 6]

# in: Ruby, then in Javascript or CoffeeScript (with a callback 
# instead of a block)
# ===================================================
# In Javascript/CoffeeScript, write a function called 
# ‘twoTimers’ that starts two timers concurrently and calls a 
# callback when they have both fired.

# # timeout1 and timeout2 are milliseconds, callback is a function
# twoTimers = (timeout1, timeout2, callback) ->
# ===================================================
# Design a SQL table for storing a linked list of records
# Design a SQL table for storing a tree of records
# ===================================================
# Design some SQL tables for storing Users, Posts, and allowing Users 
# to upvote/downvote the Posts.
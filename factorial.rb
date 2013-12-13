def factorial(n)
  if n == 1 || n == 0
  	return n
  else
  	return n *= factorial(n - 1)
  end
end

def add(*numbers)
  numbers.inject(0) { |s, n| s + n }
end

def add_again(*numbers)
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

def unique?(str)
  arr = str.split('')
  p arr
  p arr.length
  (0...arr.length).each do |i|
  	if arr[i] == arr[i+1]
  	  return false
  	end
  end
  true
end

def palindrome?(word)
  if(word).is_a?(String) # check to see if right input
    word_arr = word.split('')
    return false if word_arr.length == 1
    p word_arr
    flag = false # true if palindrome
    (0...word_arr.length).each do |i|
      p "here's first char: " + word_arr[i]
      p "here's last char: " + word_arr[(word_arr.length-1)-i]
      if word_arr[i] != word_arr[(word_arr.length-1)-i]
        flag = false
        break;
      else
        flag = true
      end
    end
    return flag
  else
    raise "please enter a valid string"
  end
end

# one fib number for a number
# not ideal, better if you iterate
# and return an array
def fib(num)
  if num.is_a?(Integer)
    if num == 0 || num == 1
      return num
    else
      fib(num-1) + fib(num-2)
    end
  else
    raise "please enter a number"
  end
end

# iterative version
def fib_array(num)
  fibs = []
  if num.is_a?(Integer)
    first = 0
    second = 1

    (0...num).each do |i|
      i = first + second
      first = second
      second = i
      puts "here's i, 1st, 2nd: "
      puts i
      puts first
      puts second
      fibs i if i <= num
    end
    fibs
  else
    raise "please enter a number"
  end
end

def is_prime? num
  (2...num).each { |i| return false if (num % i == 0) } 
  return true
end

# prints out the prime numbers between 1 and 100.
def primes
  nums = [1,2,3]
  (3..100).each do |i|
    if i.odd? # don't bother with evens
      if (i % 3 != 0) && (i % 5 != 0) && (i % 7 != 0) || ( i == 5 ) || ( i == 7 )
        nums << i
      end
    end
  end
  p nums
end

# Convert an Array of tuples to a Hash Suppose I have the 
# following Array of tuples

# x = [ ['a',1], ['b',2], ['c','3' ]]

# How can I convert this to a Hash? { 'a' => 1, 'b' => 2, 'c' => 3}
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


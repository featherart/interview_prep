require 'pry'

def pal(string)
	p string.is_a?(Array)
	string.is_a?(Array) ? string : string.split('')
	left  = string.splice(0, string.length/2)
	right = string

	p left
	p right

	for i in (0..length)
		unless left[i] == right[right.length - 1 - i]
			return "not a palindrome"
		end
	end
end

def palindrome?(word)
  letter_string = word.split('')

  mid = (letter_string.length/2)
  mid.even? ? first_half = letter_string.slice!(0...mid) : first_half = letter_string.slice!(0..mid)
  second_half = letter_string

  p first_half
  p first_half.length
  p second_half
  p second_half.length

  (0..first_half.length).each do |i|
  	  p first_half[i]
  	  p second_half[second_half.length-i]
    while first_half[i] == second_half[(second_half.length-1)-i]
      continue
    end
    true
  end
  false
end



binding.pry
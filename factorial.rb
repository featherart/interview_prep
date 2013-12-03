def factorial(n)
  if n == 1 || n == 0
  	return n
  else
  	return n *= factorial(n - 1)
  end
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
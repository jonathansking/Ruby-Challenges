def add(num1, num2)
	return num1 + num2
end

def subtract(num1, num2)
	return num1 - num2
end

def sum(array)
	total = 0
	array.each do |i|
		total += i
	end
	return total
end

def multiply(*nums)
	if nums.length > 0
		total = 1
		nums.each do |num|
			total *= num
		end
		return total
	else
		"Missing arguments"
	end
end

def power(num, pow)
	return num ** pow
end

def factorial(num)
	if num == 0
		return 1
	else
		return num * factorial(num-1)
	end 
end
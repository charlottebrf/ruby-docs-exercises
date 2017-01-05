#More arithmetic

#The other two arithmetic methods are ** (exponentiation-raising one quantity to the power of another) and % (modulus-another term for absolute value/a constant factor or ratio)
#5 squared in ruby = 5 ** 2
#can use floats to exponent, square root of 5 = 5 **0.5
#% gives the remainder after division by a number
puts 5**2
puts 5**0.5
puts 7/3
puts 7%3
puts 365%7

#can also use floats with the modulus method

#abs method takes absolute value of the number (the distance between that number & zero, without taking into account whether it's a positive or negative number)
puts((5-2).abs)
puts((2-5).abs)

#Random number generator
#rand method

puts rand #get a float greater than or equal to 0.0 & less than 1.0
puts(rand(100)) #between 0 -100
puts(rand(1)) #always gives 0
puts("The weatherman said there is a ''+rand(101).to_s'% chance of rain, "")
puts("but you can never trust a weatherman."")
#note to self: What's goin on here with the speech marks?

#return the same randomly generated numbers in same sequence on 2 different programs

srand 1776
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts ''
srand 1776
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))

#if you want to get different numbers again then just call srand 0

#The Math object
#Math object has everything you would expect from a scientific calculator

puts(Math::PI)
puts(Math::E)
puts(Math.cos(Math::PI/3))
puts(Math.tan(Math::PI/4))
puts(Math.log(Math::E**2))
puts((1 + Math.sqrt(5))/2)

#the :: scope operator
#using floats will always give the most accurate answers, to avoid ruby automatically rounding down integers 

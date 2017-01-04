#Mixing it up - numbers & strings

#Conversion
#to get a string version of an object use .to_s

var1 = 2
var2 = "5"

puts var1.to_s + var2 # => 25

#to get the integer version of an object use .to_i
var1 = 15.0
puts var1.to_i # => 15

var1 = 3
puts var1.to_f # => 3.0

#float will always be rounded down from integers
#to_i ignored the first thing it doesn't understand & the rest of the string from that point onwards- will pick up 0 if it doesn't understand

#puts
#Before puts writes out an object it uses .to_s to get the string version of that object. puts really means "put string"

#gets
#gets will only retrieve a string

puts "Hello there, and what\'s your name?"
name = gets
puts "Your name is " + name + "? What a lovely name!"
puts "Pleased to meet, " + name )". :)"

#chomp - gets rid of the extra strings from enter value
puts "Hello there, and what\'s your name?"
name = gets.chomp
puts "Your name is " + name + "? What a lovely name!"
puts "Pleased to meet, " + name )". :)"

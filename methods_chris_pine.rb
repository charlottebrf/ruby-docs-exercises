#methods

#methods are things that do stuff! if objects (like strings, integers, floats) are nouns in Ruby language, then methods are like verbs. Like in English you can't have a noun without a verb.

#As every verb needs a noun, so every method needs an object


#Methods seen so far!
#puts
#gets
#chomp
#.to_s
#.to_i
#.to_f
#/
#*
#+
#-

#self
#It's a special variable which points to whatever object you are in.
#every method is being done by some object, even if it doesn't have a dot in front of it/


#Fancy string methods
#reverse
#var1 = "stop"
#puts var1.reverse # => pots
#doesn't reverse original string though -makes a new backwards version of it

#length
#number of characters including spaces in the string
puts "What is your full name?"
name = gets.chomp
puts "Did you know there are " +name.length.to_s + " characters in your name, " + name + "?"

puts "What is your first name?"
first_name = gets.chomp
puts "What is your second name?"
second_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp
full_name = first_name.to_s + second_name.to_s + last_name.to_s

puts "Did you know there are " + full_name.length.to_s + " characters in your name, " + first_name + " " + second_name + " " + last_name + " ?"

#throughout these method calls letters remains unchanged, some methods do change associated objects (but not these)

letters = "aAbBcCdDeE"
puts letters.upcase #AABBCCDDEE
puts letters.downcase #aabbccddee
puts letters.swapcase #AaBbCcDdEe
puts letters.capitalize #Aabbccddee
puts " a".capitalize #" a" -capitalise method only capitalises 1st index
puts letters #aAbBcCdDeE

#visual formatting
#can centre strings by adding linewidth & center method

lineWidth = 50 #stored so the width can easily be changed
puts(     "Old Mother Hubbard".center(lineWidth))

#ljust -left justify  rjust -right justify - similar to center except they pad the string with spaces on the right & left hand sides

lineWidth = 4-
str = "text"
puts str.ljust lineWidth
puts str.center lineWidth
puts str.rjust lineWidth

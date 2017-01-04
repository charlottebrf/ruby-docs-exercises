#Write a program which asks for a person's first name, then middle, then last. Greet the person using their full name.

puts "Hello there! Please tell me your first name"
first_name = gets.chomp
puts "Please tell me your middle name"
middle_name = gets.chomp
puts "Please tell me your last name"
last_name = gets.chomp
puts "Pleased to meet you, " + first_name + " " + middle_name + " " + last_name + " ."

#Write a program which asks for a person's favorite number. Have your program add one to the number, then suggest the result as a bigger & better favorite number.

puts "Please tell me what your favourite number is"
fav_number = gets.chomp
new_fav_number = fav_number.to_i + 1
puts " "
puts " Thanks for your answer, your favourite number is " + fav_number.to_s + "however we think " + new_fav_number.to_s + " is even better!"

#Do a bit more work on conversions to make sure to get this correct the first time  

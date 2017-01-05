#Write a program that prints lyrics to "99 Bottles of Beer on the Wall"

#Version 1
def bottle_of_beer (number)
 puts "To get the lyrics to 99 bottles on the wall type in an integer between 1-99"
  #number = gets.chomp
  if (number >= 1 && number <= 99)
    new_number = number.to_i - 1
   puts number.to_s + " bottles of beer on the wall, " + number.to_s + " bottles of beer"
   puts "Take one down and pass it around, " + new_number.to_s + " bottles of beer on the wall."
  else
    puts "I'm sorry you can only have a number between 1-99 :-/"
 end
end

bottle_of_beer(8)

#Note for learning: work out why gets.chomp wouldn't work & why the while loop wouldn't work either
#Failed version 2- using while loop!

#bottle_of_beer(0)
#number = 0
#while (number >= 1 && number <= 99)
  #number = gets.chomp
#puts number.to_s + " bottles of beer on the wall, " + number.to_s + "bottles of beer"
#end

#bottle_of_beer(8)

#new_bottle_of_beer = bottle_of_beer - 1

#while new_bottle_of_beer >= 1 && bottle_of_beer <= 99
#  puts "Take one down and pass it around, #{new_bottle_of_beer} bottles of beer on the wall."
#end

#bottle_of_beer(99)

#Version 3- Chris Pine's full solution of the song from 1-99
#Note to self improve on while, if & else ! My error was also misinterpreting the task to be like a game where you get.chomp responses rather than printing & iterating from 99-1 as a while loop the entire lyrics...

bottles = 99
while bottles != 0
puts bottles.to_s + ' bottles of beer on the wall'
puts bottles.to_s + ' bottles of beer'
bottles = bottles - 1
puts 'take one down, pass it around'

if bottles == 1
puts bottles.to_s + ' bottle of beer on the wall'
else
puts bottles.to_s + ' bottles of beer on the wall'
end

puts ''

if bottles == 1
puts bottles.to_s + ' bottle of beer on the wall'
puts bottles.to_s + ' bottle of beer'
bottles = bottles - 1
puts 'take one down, pass it around'
puts bottles.to_s + ' bottles of beer on the wall'
end

end

#Write a program that prints lyrics to "99 Bottles of Beer on the Wall"

#def bottle_of_beer(number)
  number = gets.chomp
  if number >= 1
    puts "#{number} bottles of beer on the wall, #{number} bottles of beer"
  end
end 

#bottle_of_beer(0)

#while bottle_of_beer >= 1 && bottle_of_beer <= 99
  #this is wrong -need to work out what's specifcally wrong here
#  puts "#{bottle_of_beer} bottles of beer on the wall, #{bottle_of_beer} bottles of beer"
#  bottle_of_beer = gets.chomp
#end

#new_bottle_of_beer = bottle_of_beer - 1

#while new_bottle_of_beer >= 1 && bottle_of_beer <= 99
#  puts "Take one down and pass it around, #{new_bottle_of_beer} bottles of beer on the wall."
#end

#bottle_of_beer(99)

#99 bottles of beer on the wall, 99 bottles of beer.
#print the bottle_of_beer number of beers on the wall
#Take one down and pass it around, 98 bottles of beer on the wall.
#need to take that bottle_of_beer - 1 & print new_bottle_of_beer
#need to do this while numbers are >= 1 && <= 99
#else print: No more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more, 99 bottles of beer on the wall.

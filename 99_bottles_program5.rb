#Write a program that prints lyrics to "99 Bottles of Beer on the Wall"

bottle_of_beer = 0

while (bottle_of_beer >= 1 and bottle_of_beer <= 99)
  puts "#{bottle_of_beer} bottles of beer on the wall, 99 bottles of beer"
  bottle_of_beer = gets.chomp
  new_bottle_of_beer = bottle_of_beer - 1
  puts "Take one down and pass it around, #{new_bottle_of_beer} bottles of beer on the wall."
end

#bottle_of_beer(99)

#99 bottles of beer on the wall, 99 bottles of beer.
#print the bottle_of_beer number of beers on the wall
#Take one down and pass it around, 98 bottles of beer on the wall.
#need to take that bottle_of_beer - 1 & print new_bottle_of_beer
#need to do this while numbers are >= 1 && <= 99
#else print: No more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more, 99 bottles of beer on the wall.

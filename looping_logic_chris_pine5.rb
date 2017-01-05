#looping

#keep repeating something, with an end point otherwise will never stop!

command = " "

while command != "bye"
  puts command
  command = gets.chomp
end

puts "Come again soon!"

#what is wrong about this loop?

#Adding more logic to branching program

#version 1
puts "Hello, what\'s your name?"
name = gets.chomp
puts "Hello, #{name}."
if name == "Charlotte"
  puts "What a lovely name!"
else
  if name == "Felipe"
    puts "What a lovely name!"
  end
end

#DRY rule
#version 2
puts "Hello, what\'s your name?"
name = gets.chomp
puts "Hello #{name}."
if (name == "Charlotte" or name == "Felipe")
  puts "What a lovely name!"
end

#always good to use () when using the logical operators

#or means "one or the other, or both" - slight different

#version 1

iAmChris  = true
iAmPurple = false
iLikeFood = true
iEatRocks = false

puts (iAmChris  and iLikeFood)
puts (iLikeFood and iEatRocks)
puts (iAmPurple and iLikeFood)
puts (iAmPurple and iEatRocks)
puts
puts (iAmChris  or iLikeFood)
puts (iLikeFood or iEatRocks)
puts (iAmPurple or iLikeFood)
puts (iAmPurple or iEatRocks)
puts
puts (not iAmPurple)
puts (not iAmChris )

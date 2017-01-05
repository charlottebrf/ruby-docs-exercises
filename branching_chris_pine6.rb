#Comparison methods
puts 1 > 2 #false
puts 1 < 2 #true

puts 5 >= 5 #true
puts 5 <= 4 #false
#greater/less than or equal to

puts 1 == 1 #true
puts 2 != 1 #true

# == are these equal?
# != are these different?

#comparing srings, compares their lexicographical ordering
puts 'cat' < 'dog' #true
#computers order capital letters as coming before lowercase letters
#e.g. 'Zoo' will come before 'ant'
#makesure to use .downcase or .upcase or .capitalize before trying to compare them
#give us special objects true & fale (not the entire string)


#Branching
puts "Hello, what\'s your name?"
name = gets.chomp
puts "Hello, " + name + "."
if name == "Charlotte"
  puts "What a lovely name!"
end

#branching comes after the if statement
#run the code between the if & the end, if what comes after it is false the code is not run.
#else - tell program what to do if false

puts "I am a fortune-teller. Tell me your name:"
name = gets.chomp
if name == "Charlotte"
  puts "I see great things in your future."
else
  puts "Your future is... Oh my! Look at the time!"
  puts "I really have to go sorry!"
end

#can have branches within branches

puts "Hello, and welcome to 7th grade English."
puts "My name is Mrs. Gabbard. And your name is...?"
name = gets.chomp

if name == name.capitalize
  puts "Please take a seat, #{name}."
else
  puts "#{name}? You mean" + name.capitalize + "right?"
  puts "Don\'t you even know how to spell your name??"
  reply = gets.chomp

  if reply.downcase == "yes"
    puts "Hmmph! Well, sit down!"
  else
    puts "GET OUT!!"
  end


#write an end at same time as write the if
#if name == name.capitalize
#else
#end

#then can add comments for what the working code needs to do within the if/else statements
#then replace # with the working code itself 

#this game has 8 requirements:

#1. Prompts the player to enter their name. Use their name to print a greeting.

#2.Generate a random number from 1 - 100, & store as a target number for player to guess

#3. Track how many guesses the player has made. Before each guess let them know how
#many guesses out of 10 they have left.

#4.Prompt player to make guess of what target number is.

#5.If player's guess is less than the target number say "Oops, your score was LOW"
#If player's guess is greater than target number say, "Oops. Your score was HIGH"


#6.If player's guess is equal to target number: "Good job, [name]! You guessed my
#number in [number of guesses] guesses!"

#7.If the player runs out of turns without guessing correctly, say, "Sorry. You
#didn't get my number. My number was [tagrget]"

#8. Keep allowing he player to guess until they get it right or run out of turns.

#1
puts "Welcome to 'Get my Number!'"
#A call to the "puts" method

print "What's your name?"

#puts short for "put string"-
#print method works just like puts, except puts adds a newline character at the
#end of the string to skip to the following line, wheras print doesn't
#method doesn't have a dot, but as these are so commonly used no need for a dot

input = gets
#assignment to a new variable "input"
#a call to the "gets" method
#gets method, short for "get string"
#as with puts & print, you can call the gets method from anywhere in you code
#without specifying a receiver

#puts ("one", "two") - the parenthesis are optional- use if unsure/ to make clear
#puts "one", "two"
#puts needs arguments in or out of parenthesis
#gets method reads a line from standard input - doesn't usually need any arguments
#definitely NO parenthesis for a mehod with no argument

name =input.chomp
#added to get rid of \n

puts "Welcome, #{name}!"
#asign input to a new variable .chomp to clean up line

#interpolating a value into a string
#last thing script does is call pus with one more script
#we interpolate(substitute) the value in the name variable into the string
#whenever you include #{...} notation inside a "string" , the value in the curly
#brackets is added in there - can occur anywhere in the string

#puts "The answer is #{6 * 7}" - will give output - The answer is 42
#interpolation only works in a "" in a '' it will take it literally
#only use ; at the end of statements

#puts "first line" - puts is the method, "first line" is the argument

#puts input.inspect
#inspect method is available on any ruby object

#p input

#printing the result of input is so common that it uses a p method
#this works like puts, except that it calls inspect on each argument before printing
#identical to above code
#p method
#inspect method reveals information about an object that doesn't normally show up
#in a program output
#\n represent a newline character
#indicates their entry is done, that gets recorded as an extra character
#newline is then included in the return value of the gets method
#escape sequences:
#\n - newline
#\t - tab
#\" - double-quotes
#\' -single-quotes
#\\ -backslash

#puts "\"It's okay,\"he said." for double quotes need an escape
#puts "One backslack: \\"
#In single quoted strings escape sequences treated literally

#chomp method removes newline character- great for cleaning up strings returned
#from gets- can only be used on individual string objects
#string referenced by the input variable is the receiver of the chomp method - using dot operator

#2
#not all methods can be used on a number e.g. .upcase
#methods that can be used on a number or string are shown using .method
#different methods can be used depending on an object's class
#class is a blueprint for making new objects & decides what methods you can call
#on the object

#class is also a method that let's objects tell us what their class is
#e.g. Fixnum (42); string ("heya"); TureClass (true)

#rand method -generate a random method within a given range
puts "I've got a random number between 1 and 100"
puts "Can you guess it?"
target = rand(100) + 1
#uses target to store value


#3

num_guesses = 0

guessed_it = false

#while num_guesses < 10 && guessed_it == false

until num_guesses == 10 || guessed_it
#loop will stop after the player's 10th guess, or when they guess correctly

#concatenate (join) the strings together using the plus sign (+)
#remaining_guesses = 10 - num_guesses
#puts remaining_guesses + " guesses left."
#however + operator is used to add numbers as well as to concatenate strings
#since remaining_guesses contains a number this plus sign looks like an attempt
#to add numbers
#need to convert the number to a string use a .to_s method to call conversion

#remaining_guesses = 10 - num_guesses
#puts remaining_guesses.to_s + " guesses left."
#makes it clear doing concatenation, not addition

puts "You've got #{10 - num_guesses} guesses left."
#easier to use #{...} means we can get rid of the to_s call

#4
#gets method retrieves input from the user
#can't use gets by itself to get a number from the user, because it returns a string
#need to convert the string returned from gets to a number, to compare playser's guess
#to target number
#t_i method converts string to number

print "Make a guess:"
guess = gets.to_i

#no need to put string in a variable first; use dot operator to call the method directly
#on the return value - to_i ignores any non-numeric characters that follow the number
#to_a string
#to_i integer
#to_f floating-point number


#puts guess < target

#5
#conditional statements -if not true then skipped
#conditionals rely on a Boolean expression
#if 1 < 2
#puts "It's true!"
#end
#boolean negation operator, ! which lets you take a a true value & make it false & vice versa
#not does basically the same thing
#if need to ensure both true && operator
#if either true use the || (or) operator

#compare the guess to the target
#print the appropriate message

num_guesses += 1

if guess < target
  puts "Oops. Your target was LOW"

elsif guess > target
  puts "Oops. Your target was HIGH"

elsif gues == target
  puts "Good job, #{name}!"
  puts "You guessed my number in #{num_guesses} guesses!"
  guessed_it = true
end

end

#If player ran out of turns, tell them what the number was.

#if not guessed_it
unless guessed_it
  puts "Sorry. You didn't get my number. (It was #{target}.)"
end
#Ruby has an additional key word: unless
#code within an if statement executes only if a condition is true
#but code within an unless statemnt executes only if condition is false

#unless true
#  puts "I won't be printed!"
#end

#unless false
#  puts "I will!"
#end

#unless makes it a bit easier to read

#if ! (light == "red")
#  puts "Go!"
#end

#unless light == "red"
#puts "Go!"
#end

#6
#the code to prompt for a guess is already in place, use a loop to play it more
#than once
#use a loop to execute a segment of code repeatedly - place inside a loop

#while loop
#number = 1
#start_of_the_loop - condition
#while number <= 5
#loop_body
# puts number
# number += 1
#end

#until loop as a counterpart to while
#An until loop repeats until condition is true (it loops, while false)
#number = 1
#while number > 5
# puts number
# number += 1
#end

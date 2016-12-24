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

#puts "Welcome, #{input}!"

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

p input
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
#\\ -backslasg

#


#2

puts "hello world"

#in irb it's exit as a prompt to leave, in bash it's control + C
#irb evaluares the expression & shows the result, marked with =>

puts "Math operation & comparisons"
#Exponent (or index, or power) says how many times to use the number in the multiplication
print 2 ** 3
# / , • , - , **
#boolean operators
# < less than
# > greater than
# == checks to see if the two values are equal

#integers
#can use underscore _ to show 1000, e.g 1_234.56
#A number is defined by a series of digits, using a dot as a decimal mark, and optinally an underscore as a thousands separator.

puts "strings"
#ruby's strings are special because even very large strings are highly efficient to
#work with (isn't true in many other languages)
puts "Hello"
puts "world"

puts "variables"
#variables- names that refer to values, unlike JS don't have to declare variables
#in ruby, instead assign to a variable with the = symbol
#always lowercase, can contain _
#once you assign varibales you can access their values whenever you need to

print small = 8
print medium = 12
print small + medium = 20

#big difference is variables don't have types in Ruby- can hold any value you want
pie = "lemon"
pie = 3.14
#can hold strings & floating-point numbers to the same variable

#the +- operator lets you add on to the existing value of a variable
number = 3
number += 1
number #will give the value of 4, same applies with strings

string = "ab"
string += "cd"
string #will = "abcd"
#always use lowercase & separate words with _ "snake case" e.g. my_rank = 1

puts "everyhing is an object!"
#an object-orientated language - means data has useful methods
#methods = fragments of code that you can exexcute on demand
#like a modern language - common for a string to be a full-fledged object
#strings have metrhods to call

"Hello".upcase #"HELLO"
"Hello".reverse #"olleH"

#everything in Ruby is an object- even a number is an object
#benefit is that even numbers have useful methods

42.even? #true
-32.abs #32

#calling a method on an object
#object calling the method on is known as the method receiver

# RECEIVERS  DOT OPERATORS     METHOD NAMES
#"hello"     .                 upcase
#-32         .                 abs
#file        .                 read



#Variable names can be re-used, and re-assigned.

number = 4
number = number * 3
puts number + 2

# Using variable names can be useful to break up long lines and make code more expressive and readable.

# On formatting: Note that there are spaces around the assignment operator `=` as well as the arithmetical operators `+` and `*`.

number = 2 + 3 * 4
puts number

#Data types

#Numbers
#Strings (texts)
#True, False, and Nil
#Symbols
#Arrays
#Hashes

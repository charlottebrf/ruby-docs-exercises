#variables
variable = some_value
name = "Toni"
sum = 18 + 5

#console output
puts "Hello World"
puts [1,5, "moo"]

#call a method - or send a message
#sending an object a message & waiting for its response
#can have no arguments or multiple arguments
object.method(arguments)

string.length
array.delete_at(2)
string.gsub("ae","a")
#substitute all "ae" occurences with "a"

#define a method
def name(parameter)
  #method body
end

def greet(name)
  puts "Hi there" + name
end

greet("Tobi")

#methods are reusable units of behaviour
#methods are small & focused on implementing a specific behaviour

#Equality

object == other

true == true # => true
#check if two things are the same, true will be returned if so

3 == 4 # => false

"Hello" == "Hello" # => true

"Helo" == "Hello" # => false


#Inequality
#the inverse of equality, results in true when two values are not the same
#results false when rhet are the same

object != other

true != true # => false
3 != 4 # => true

#Decisions with if
#with an if-clause decide based upon a condition what to do
#when condition is true, code after if statement is executed



if condition
  # happens when true
else
  # happens when false
end

if input == password
  grant_access
else
  deny_access
end

#if input matches password access is granted


#constant
#constants look like variables but in UPCASE
#both hold values & give you a name to refer to those values
#difference is constants value are known & should never change- always refer to same values


CONSTANT = some_value
ADULT_AGE = 18

#Numbers
number_of_your_choice
0, -11, 42

#Decimals
main.Decimal
3.2
-5.0

#Basic math
n operator m
2 + 3 # => 5
5 - 7 # => -2
8 * 7 # => 56
84 / 4 # => 21

#compariosn
n operator m
12 > 3 # => true
12 < 3 # => false
7 >= 7 # => true

ADULT_AGE = 18
ADULT_AGE >= 18 # true


#Strings
#recommends using '' single quotes for simple strings

'Hello World'
'a'
'Just'


#Interpolation
#"A string and an #{expression}"
 "Email: #{user.email}"
"The total is #{2 + 2}"
#combine a string with a variable or Ruby expression using ""

#length

string.length

"Hello".length # => 5
"".length # => 0


#concatenate
string + string2

"Hello" + "reader"
#=> "Hello reader"

"a" + "b" + "c" #=> "abc"

#substitute
string.gsub(a_string, substitute)
#gsub - stands for "globally substitute"- substitutes all occurences of a_string
#within the string with substitute

"Hae".gsub("ae", "a")
#=> "Ha"

"Hae".gsub("b", "a")
#=> "Hae"

"Greenie".gsub("e", "u")
#=> "Grunniu"

#string[position] "Hello"[1] #=> "e"
#access the character at the given position in the string, first position is 0

#Arrays
#array conains multiple objects that are mostly related to each other

#create
[contents]
["Rails", "fun", 5]

#number of elements
array.size
[].size #=> 0
[1,2,3].size #=> 3
["foo", "bar"].size #=> 2


#access
array[position]
array = ["hi", "foo", "bar"]
array[0] #=> "hi"
array[2] #=> "bar"


#adding an element
#add elements to the end of the array, increasing size of array by one
array << element
array = [1, 2, 3]
array << 4
array # => [1, 2, 3, 4]


#assigning
array[number] = value

array = ["hi", "foo", "bar"]
array[2] = "new"
array # => ["hi", "foo", "new"]


#delete at index
#deletes array at specified index
array.delete_at(i)

array = [0, 14, 55, 79]
array.delete_at(2)
array # => [0, 14, 79]

#Iterating

#Iterating, doing something for each element of the array
#code placed between do & end determines what is done to each element in the array
array.each do |e| ..  end

persons.each do |p| puts p.name end
#prints name of every person in the array to the console

numbers.each do |n| n = n * 2 end
#doubles every number of a given array


#Hashes
#Hashes associate a key to some value. You may then retrieve the value based
#upon its key- called a dictionary in other languages
#use the key to "look up" a value as you would a definition for a word in a dictionary
#each key must be unique for a given hash but values can be repeated

#Hashes can map from anything to anything - can map Strings to Numbers, Strings to Keys,
#Numbers to Booleans
#Common that at least all the keysare of the same class

#Symbols are especially common as keys, symbools look like this  :symbol
#use symbols becuase Ruby runs faster when use symbols instead of strings


#Creating
{key => value}
{:hobby => "programming"}
{42 => "answer", "score" => 100,
  :name => "Tobi"}

#surrounding key-value pairs with curly braces
#arrow always goes from key to value depicting meaning
#key value pairs separated by commas


#Accessing
hash[key]
#accessing an entry in a hash looks a lot like acceessing it in an array
#with a hash the key can be anything not just numbers
#if you try to access a key that isn't known will return nil


hash = {: key => "value"}
hash [:key] # => "value"
hash[foo] # => nil


#assigning
hash[key] = value
#assigning values to a hash similar to assigning values to an array
#key could be anything (string, number, boolean etc)



hash = {a: a => "b"}
hash[:key] = "value"
hash # => {:a => "b",
:key => "value"}


#Deleting
hash.delete(key)
#delete a specified key from the hash so they can & its value can't be assessed


hash = {:a => "b", :b => 10}
hash.delete(:a)
hash # => {:b => 10}





#.sort!
#modifies the data

#.sort
#fresh copy

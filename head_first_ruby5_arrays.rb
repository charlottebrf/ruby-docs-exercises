#Arrays & blocks

#Much programming deals with lists of things
#Arrays- keep track of lists in ruby, have lots of powerful methods
#Blocks- remove the need for looping code


#Arrays

#Invoicing program for an online store: 3 methods needed, each works with price of the order. 1st: adds prices together to calculate a total, 2nd: process a refund to customer's account; 3rd: take 1/3 off each price & display discount.

#As there's lists of data need arrays not variables, would be too many variables. Need to store prices in an array.

#Array- holds a collection of objects, collection can be any size you need. An array can hold ojects of any type including an array.

prices = [2.99, 25.00, 9.99]
#can also manipulate arrays after they've been created

#Accessing arrays
prices[0] #access first item

prices[1] #access second item
prices[2] #access third item

#Print out elements from our array
puts prices[0]
puts prices.first #easy to read method in ruby

puts prices[1]


puts prices[2]
puts prices.last

#Assign to a given array index with= , like assigning to a variable
prices[0] = 0.99
prices[1] = 1.99
prices[2] = 2.99
p prices # [0.99, 1.99, 2.99]

#can still assign to an index that's not yet there e.g. prices[6] = 6.99 & Ruby will fill in the unassigned index's with nil.


#Arrays are objects
prices = [7.99, 25.00, 3.99, 9.99]
puts prices.class #array

#Easy to read methods on Arrays

#Array index- only works on first & last
puts prices.first #easy to read method in ruby
puts prices.last

#Array size
puts prices.length

#Search for values within the array
puts prices.include?(25.00) #true

puts prices.find_index(9.99) #3

#Insert or remove elements
prices.push(0.99)
p prices # [7.99, 25.00, 3.99, 9.99, 0.99]

prices.pop
p prices # [7.99, 25.00, 3.99, 9.99] #removes last element

prices.shift
p prices # [25.0, 3.99, 9.99] #removes first element

#<< operator adds elements to the end
prices << 5.99
prices << 8.99
p prices # [25.0, 3.99, 9.99, 5.99, 8.99]

#methods that can convert them to strings
puts ["d", "o","g"].join #dog
puts ["d", "o","g"].join("-") #d-o-g

#Exercises
mix = ["one", 2, "three", Time.new]
# ["one", 2, "three", Time.new]

letters = ["b", "c", "b", "a"]
# ["b", "c", "b", "a"]

mix.length
#4

letters.shift
# "b" - without printing whole will return the removed element
#p ["c", "b", "a"]

mix[0]
#"one"

letters
#["c", "b", "a"]

mix[1]
#2

letters.join("/")
#"c/b/a"

mix[0].capitalize
#"One"- capitalizes first letter

letters.pop
# "a" - without printing whole will return the removed element
#["c", "b"]

mix[1].capitalize
#Undefined fixnum

letters
#["c", "b"]

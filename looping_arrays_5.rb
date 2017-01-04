#Looping over the items in an array

#Use a while loop to process all of an array's elements,one at a time.
prices = [3.99, 25.00, 8.99]

index = 0
while index < prices.length #loop until we reach the end of an array
  puts prices[index] #access element at the current index
  index += 1 #move to the next array element
end

#Calling length instance method on an array gets you the number of elements it holds, not the index of the last element.

#p prices[prices.length] # => nil
#p prices[prices.length - 1] #=> 8.99

#Because indexes start with zero, need to ensure working with index numbers numbers less than prices.length


#Given an array of prices, add them all together & return the value
def total (prices)
  amount = 0 #start at 0
  index = 0 #start at first array of index
  while index < prices.length #while we're still within the array
    amount += prices[index] #add the current price to the total
    index += 1 #move to the next price
  end
  amount #return the total
end

prices = [3.99, 25.00, 8.99] #create an array holding prices from our order

puts format("%.2f", total(prices)) #pass our array of prices to the method & format the result ensuring correct number of decimal places is shown.
# => 37.98

#Given an array of prices, subtract each price from the customer's account balance

def refund (prices)
  amount = 0
  index = 0
  while index < prices.length
    amount -= prices[index] #subtract the current price
    index += 1 #move to the next price
  end
  amount #return the total refund
end

puts format("%.2f", refund(prices)) #pass our array of prices to the method & format the result
# => -37.98

#Given an array of prices, reduce each item's price by 1/3, and print the savings

def show_discounts (prices)
  index = 0
  while index < prices.length
    amount_off = prices[index] / 3.0 #determine discount for the current price
    puts format ("Your discount: ¢%.2f", amount_off) #format the discount
    index += 1 #move to the next price
  end
end

show_discounts (prices) #pass our array of prices to the method
# => Your discount: $1.33
# => Your discount: $8.33
# => Your discount: $3.00

#A lot of duplicate code in each method with the index & while index parts , DRY principle! Needs to be refactored 

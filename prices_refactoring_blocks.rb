#blocks the scope of a local variable is defined within a method is limited to the body of that method
#define a variable before a block to have access outside of scope of method
#A block is normally only during he method call it's associated with.
#A bock & the variables it has access to, is kept in the same place in your code.

def total (prices)
  amount = 0 #start the total at 0
  prices.each do |price| #process each price
    amount += price #add the current price to the total
  end
  amount #return final total
end

def refund (prices)
  amount = 0 #start the total at 0
  prices.each do |price| #process each price
    amount -= price #refund the current price
  end
  amount #return final total
end

def show_discounts (prices)
  prices.each do |price| #process each price
    amount_off = price / 3.0 #calculate discount
    puts format ("Your discount: $%.2f", amount_off) #format & print the current discount
  end
end

prices = [3.99, 25.00, 8.99]

puts format("%.2f", total (prices))
puts format("%.2f", refund (prices))
show_discounts (prices)

def even_or_odd(number)
  if number.integer? == true and number.even? == true
    puts "Even"
  else
    puts "Odd"
  end
end

even_or_odd(0)

#Note to self: why doesn't this say Odd for 0?

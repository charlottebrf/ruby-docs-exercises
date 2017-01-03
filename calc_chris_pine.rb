puts 1+2
#integers & floats

puts 1.0 + 2.0
puts 2.0 * 3.0
puts 5.0 - 8.0
puts 9.0 / 2.0
#floats will give floats

puts 1 + 2
puts 2 * 3
puts 5 - 8
puts 9 / 2
#integers will give integers
#when you do math with integers ruby always gives integer answers & rounds down
#integer division is useful for objects that aren't divisible e.g. People, films etc..

#use parenthesis for more complex programs

puts 5 * (12-8) + -15
puts 98 + (59872 /(13*8) * -52)

#How many hours in a year program
puts (24.00* 365.00)
#hours in a day * days in a year

#How many minutes in a decade program
puts 10.00 * ((60.00*24.00) * 365.00)
#10 * (minutes in a day * hours in a day) * days in a year

#How many seconds old I am program
puts 31 * ((3600.00 * 24) * 365.00)
#age in years * seconds in a day = (seconds in an hour * 24) * days in a year

#puts (30 * 365 * 24 * 60 * 60) + (272 * 24 * 60 * 60) + (21 * 60 * 60) + (45 * 60) -Chris Pine example answer, crosscheck against mine 


#How many chocolates do you hope to eat in your life program
puts 85 * (20.00 * 365.00)
#my estimated life span • how many chocolates I'd like to eat in a year


#If I am 1246 million seconds old, how old am I
age_in_minutes = 1246000000.00 / 60.00
age_in_hours = age_in_minutes / 60.00
age_in_days = age_in_hours / 24.00
age_in_years = age_in_days / 365
puts age_in_years
#minutes of age- age in seconds / 60 = age in minutes / 24 = age in days

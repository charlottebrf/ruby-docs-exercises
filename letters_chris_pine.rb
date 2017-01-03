#strings

'Hello.'

puts 'Hello, world'
puts ''
puts 'Goodbye'

#String arithmetic

puts 'I like' + ' apple pie'
#need to ensure there are spaces between the strings to be added inside the '' - otherwise words will be crunched together
#spaces do matter inside strings

puts 'blink' * 4
#=> blink blink blink blink

puts 12 + 12 # 24
puts '12' + '12' #1212
puts '12 + 12' #12 + 12
puts '2' * 5 #22222

#error messages
#can't add a number to a string or multiply a string by another strings

#puts '12' + 12
#puts '2' * '5'

#escape apostrophe
#only escapes apostrophe's & backslash \ itself
puts "You're swell!"
puts "You\'re swell!" #escape apostrophe => You're swell

puts 'up\\down' #escape backslash => up\down 

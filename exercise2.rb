print "something"
#similar to puts but puts adds a new line

print example['word'] = 'new_word'
example = A sentence that has lots of words in it.

#Replaces word for new_word using the []

puts example.lines.to_a.reverse
#lines.to_a. = turns the lines into a list
#lines component decides the way a string should be split up, the to_a method converted those splits into an Array "to_array"
#bytes and chars can be used instead of lines - Ruby split the poem up according to each new lines
#then reversed the array, each line was already prepared in advance

print example.lines.to_a.reverse.join
#join method takes list of reversed lines & adds them together into a single string.
#could also use to_s


print example.include? "another word"

#Learnings
#Exclamation points- methods may have exclamation points in their name = impact the current data, rather than making a copy.
#Square brackets- can target & find data & even replcae.
#Chaining methods- do more in a single command, e.g. example.lines.to_a.reverse.join
#question marks- methods can also have ? e.g. example.include? "another word"
#complete list of string methods here: http://ruby-doc.org/core-2.3.3/String.html

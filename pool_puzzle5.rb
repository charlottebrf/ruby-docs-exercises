def pig_latin(words)

  original_length = 0
  new_length = 0
#remember that each will be comparable, i.e. both lenghths


  words.each do |word|
    puts "Original word: #{word}"
    original_length += word.length
    letters = letters.shift
    new_word = "#{letters.join} #{first_lettter}ay"
    puts "Pig Latin word: #{new_word}"
    new_length += new_word.length
  end

  puts "Total original length: #{original_length}"
  puts "Total Pig Latin length: #{new_length}"

end

my_words = ["blocks", "totally", "rock"]
pig_latin (my_words)

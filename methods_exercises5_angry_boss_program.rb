#Write an angry boss program. Specifications:
#Should rudely ask you what you want
#whatever you answer- the angry boss should yell back at you & then fire you

def angry_boss #(greeting)
  puts "What do you want?!"
  response = gets.chomp
  puts "Whaddya mean you want #{response}?!! You're fired!!"
end

#angry_boss("Hello sir")
#note to self for learning:When to use parameters & call arguments in a method, especially when I'm already defining one method inside of this method.


#Write a program that will display a Table of Contents so that it looks to the specification.

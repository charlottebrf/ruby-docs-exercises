fireworks = 50

while fireworks != 0
  puts "'Cause Baby you're " + fireworks.to_s + " fireworks! Come & show 'em what you're worth! Make 'em go oh, oh, oh as you shoot across the sky-y-y"
  fireworks = fireworks - 1
  puts fireworks.to_s + " :D :D :D ** "


  if fireworks == 1
    puts "'Cause Baby you're " + fireworks.to_s + " firework! Come & show 'em what you're worth! Make 'em go oh, oh, oh as you shoot across the sky-y-y"
  else
    puts "'Cause Baby you're " + fireworks.to_s + " fireworks! Come & show 'em what you're worth! Make 'em go oh, oh, oh as you shoot across the sky-y-y"
  end

  puts ""

  if fireworks == 1
    puts "'Cause Baby you're " + fireworks.to_s + " firework! Come & show 'em what you're worth! Make 'em go oh, oh, oh as you shoot across the sky-y-y"
    fireworks = fireworks - 1
    puts fireworks.to_s + " That's it! No more fireworks! :D :D :D ** "
end

end

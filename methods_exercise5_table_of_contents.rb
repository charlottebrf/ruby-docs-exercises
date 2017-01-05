#Write a program that will display a Table of Contents so that it looks to the specification.

lineWidth = 50
str = " "
title = "Table of Contents"
ch1 = "Chapter 1:  Numbers"
ch2 = "Chapter 2:  Letters"
ch3 = "Chapter 3:  Variables"
p_ch1 = "page 1"
p_ch2 = "page 72"
p_ch3 = "page 118"

puts title.center lineWidth
puts str.center lineWidth
puts ch1.ljust(lineWidth/2) + p_ch1.rjust(lineWidth/2)
puts ch2.ljust(lineWidth/2) + p_ch2.rjust(lineWidth/2)
puts ch3.ljust(lineWidth/2) + p_ch3.rjust(lineWidth/2)

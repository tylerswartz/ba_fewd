
# Angry boss
# puts "WHAT DO YOU WANT?"
# answer = gets.chomp.upcase
# puts "WHAT DO YOU MEAN '" + answer + "'?!? YOU'RE FIRED!!!"


# table of contents
header = "Table of Contents"
ch1 = "Chapter 1: Getting Started"
ch2 = "Chapter 2: Numbers"
ch3 = "Chapter 3: Letters"
pg1 = "page 1"
pg2 = "page 9"
pg3 = "page 13"


line_width = 54
puts (header.center(line_width))
puts "\n"
puts (ch1.ljust(line_width/2) + pg1.rjust(line_width/2))
puts (ch2.ljust(line_width/2) + pg2.rjust(line_width/2))
puts (ch3.ljust(line_width/2) + pg3.rjust(line_width/2))
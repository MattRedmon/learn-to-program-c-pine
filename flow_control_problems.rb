#  challenge problems for chap 7 flow control

#  write program that prints lyrics to 99 bottles of beer on wall
=begin
# version 1
count = 99
while count > 0
  puts count.to_s + " bottles of beer on the wall!"
  count = count - 1
end

#version 2
num_start = 10
num_now = num_start

while num_now > 2
  puts "#{num_now.to_s} bottles of beer on the wall"
  puts "#{num_now.to_s} bottles of beer."
  num_now = num_now - 1
  puts "Take one down, pass it around, #{num_now.to_s} bottle of beer on the wall"
end
puts "2 bottles of beer on the wall"
puts "2 bottles of beer."
puts "Take one down, pass it around, 1 bottle of beer on the wall"
puts "1 bottle of beer on the wall"
puts "1 bottle of beer"
puts "Take one down, pass it around, no bottles of beer on the wall"

#version 3
num_start = 5
num_bot = proc {|n| "#{n} bottle#{n ==1 ?":'s'}"}
num_start.downto(2) do |num|
  puts "#{num_bot[num]} of beer on the wall, #{num_bot[num]} of beer!"
  puts "Take one down, pass it around, #{num_bot[num - 1]} of beer on the wall"
end
# the code for the last 2 bottle would go here

# *****************************************************
#  having a chat with hard of hearing grandma

# VERSION 1
puts "What do you say to grandma?"
say = gets.chomp
if say == say.upcase
  puts "Grandma says: NO! NOT SINCE 1938!"
else
  puts "Grandma says: HUH! SPEAK UP SONNY!"
end

# VERSION 2
bye_count = 0
while true
  said = gets.chomp
  if said == "BYE"
    bye_count = bye_count + 1
  else
    bye_count = 0
  end
  if bye_count >= 3
    puts "Good bye Sonny"
    break
  end
  if said != said.upcase
    puts "HUH, Speak up Sonny"
  else
    random_year = 1930 + rand(21)
    puts "NO, Not Since #{random_year}!"
  end
end
=end

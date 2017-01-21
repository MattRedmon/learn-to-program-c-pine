# code from chapter 7 on Flow Control

puts 1 > 2
puts 1 < 2

puts 5 >= 5
puts 5 <= 4

puts 1 == 1
puts 2 != 1

puts "cat" < "dog"
puts "bug lady" < "Xander"
puts "bug lady".downcase < "Xander".downcase

puts 2 < 10
puts "2" < "10" # => false because the 1 char in the 10 string comes before 2

puts "Hello, what's your name?"
name = gets.chomp
puts "Hello " + name + "."
if name == "Chris"
  puts "What a lovely name!"
end

puts "I an a fortune teller. Tell me your name."
name = gets.chomp
if name == "Chris"
  puts "I see great things in your future."
else
  puts "Your future is ...  oh my! Look at the time!"
  puts "Sorry, I really have to go."
end

puts "Hello, and welcome to 7th grade English."
puts "My name is Mrs Long. And your name is....?"
name = gets.chomp
if name == name.capitalize
  puts "Please take a seat, " + name + "."
else
  puts name + "? You mean " + name.capitalize + ",right?"
  reply = gets.chomp
  if reply.downcase == "yes"
    puts "Hmmph! Well sit down!"
  else
    puts "Get OUT!"
  end
end

input = ""  # has to be initilized otherwise throws error
while input != "bye"
  puts input
  input = gets.chomp
end
puts "come again soon"

while "Spike" > "Angel"
  input = gets.chomp
  puts input
  if input == "bye"
    break
  end
end
puts "Come again soon!"

puts "Hello, what's your name?"
name = gets.chomp
puts "Hello, " + name + "."
if name == "Chris" || name == "Katy"
  puts "What a lovely name!"
else
  puts "Hmmph, that's kinda dull."
end

i_am_chris = true
i_am_purple = false
i_like_beer = true
i_eat_rocks = false
puts i_am_chris && i_like_beer
puts i_like_beer && i_eat_rocks
puts i_am_purple && i_like_beer
puts i_am_purple && i_eat_rocks
puts
puts i_am_chris || i_like_beer
puts i_like_beer || i_eat_rocks
puts i_am_purple || i_like_beer
puts i_am_purple || i_eat_rocks
puts
puts !i_am_purple
puts !i_am_chris

while true
  puts "What would you like to ask C to do?"
  request = gets.chomp
  puts "You can say 'C, please " + request + "'"
  puts "C's responce:"
  puts
  break
end

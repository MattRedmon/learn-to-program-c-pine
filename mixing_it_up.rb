# this is the code from the mixing it up chapter

#  CONVERSIONS

var1 = 2
var2 = "5"
puts var1.to_s + var2

var1 = 2
var2 = "5"
puts var1.to_s + var2
puts var1 + var2.to_i

puts "15".to_f
puts "99.999".to_f
puts "99.999".to_i
puts ''
puts "5 is my favorite number!".to_i
puts "Who asked you about 5 or whatever?".to_i
puts "Yo momma did!".to_f
puts ''
puts "stringy".to_s
puts 3.to_i

#  why do the following generate the same outcome
puts 20
puts 20.to_s
puts "20"
#  before puts tries to write out an obj it uses .to_s to get the stringy
#  version of that object.  it stands for "put string"

puts gets

puts "Hello there, and what\'s your name?"
name = gets.chomp
puts "Your name is " + name + "?  What a lovely name."
puts "Pleased to meet you " + name + "."

#  full name greeting program
puts "Hey there, what's your name?"
first_name = gets.chomp
puts "And you last name?"
last_name = gets.chomp

puts "Well, it's very nice to meet you #{first_name} #{last_name}!"

#  bigger better favorite number
puts "So what is your favorite number?"
num = gets.chomp.to_i
puts "Your favorite number is #{num}?? That's kind of dull!"
num1 = num * 3.14159
puts "How about this one instead: #{num1}. Now that's much more epic than the one you chose!"

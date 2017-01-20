#  this is the code from chapter 6 on methods

var1 = "stop"
var2 = "deliver repaid desserts"
var3 = "...TCELES B HSUP a magic spell?"

puts var1.reverse
puts var2.reverse
puts var3.reverse
#  doing "reverse!" will alter the variables in place
puts var1
puts var2
puts var3

puts "What is your full name?"
name = gets.chomp
puts "Did you know there are " + name.length.to_s + "characters"
puts "in your name " + name + "?"  # his code requires .to_s
puts "Did you know there are #{name.length} characters"
puts "in your name, #{name}?" # alternate code using string interpolation does not

# get first middle and last name individually to get accurate letter count in name
puts "Enter you first name: "
f_name = gets.chomp
puts "Now enter you middle name: "
m_name = gets.chomp
puts "And finally your last name: "
l_name = gets.chomp
full_name = f_name + m_name + l_name
puts "There are " + full_name.length.to_s + " letters in your name."

letters = "aAbBcCdDeEfFgG"
puts letters.upcase
puts letters.downcase
puts letters.swapcase
puts letters.capitalize
puts ' a'.capitalize #  there is space before the a which is the char capitalized
puts letters

line_width = 50
# regardless of spacing below the lines will still center on 50
puts (   "Old Mother Hubbard".center(line_width))
puts (     "Sat in her cupboard".center(line_width))
puts (        "Eating her curds and whey".center(line_width))
puts (      "when along came a spider".center(line_width))
puts (    "who sat down beside her".center(line_width))
puts ("and scared her poor shoe dog away".center(line_width))

line_width = 40
str = "--> text <--"
puts (str.ljust(line_width))
puts (str.center(line_width))
puts (str.rjust(line_width))
puts (str.ljust(line_width/2) + str.rjust(line_width/2))
#  we have to divide by 2 above since there are 2 strings combined on same line

puts "Your red-faced boss with steam coming from around his collar asks what do you want?"
response = gets.chomp
puts "WHADDAYA MEAN '#{response}'?!?! YOU'RE FIRED!!"

line_width = 30
puts ("Table of Contents".center(line_width))
puts ''
puts ("Chapter 1: Getting Started".ljust(line_width/2) + "page 1".rjust(line_width/2))
puts ("Chapter : Numbers".ljust(line_width/2) + "page 9".rjust(line_width/2))
puts ("Chapter 3: Letters".ljust(line_width/2) + "page 13".rjust(line_width/2))


puts 5**2
puts 16**0.5
puts 5**0.5
puts 7/3
puts 7%3
puts 365%7

puts (5 - 2).abs
puts (2 - 5).abs

#  Random Numbers
puts rand
puts rand
puts rand
puts (rand(100))
puts (rand(100))
puts (rand(100))
puts (rand(1))  #  rand(1) always returns zero
puts (rand(1))
puts (rand(1))
puts (rand(999999999999999999))
puts ("the weatherman said there is a ")
puts (rand(101).to_s + " % chance of rain.") #  101 is used to return # from 1-100
puts ("but you can never trust the weatherman")

srand 1976  # this sets the seed so we return the same random numbers on different runs
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts ''
srand 1976
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))

puts (Math::PI)
puts (Math::E)
puts (Math.cos(Math::PI/3))
puts (Math::tan(Math::PI/4))
puts (Math::log(Math::E**2))
puts ((1 + Math.sqrt(5))/2)

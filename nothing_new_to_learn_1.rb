#  code from chapter 10 nothing new to learn here
=begin
def ask_recursive question
  puts question
  reply = gets.chomp.downcase

  if reply == "yes"
    true
  elsif reply == "no"
    false
  else
    puts "Please answer yes or no."
    ask_recursive question # this is the magic line
  end
end
ask_recursive "Do you wet the bed?"
#  adding puts to above line will print out result of method, either yes or no

def factorial num
  if num < 0
    return "You can't take the factorial of a negative number!"
  end
  if num <= 1
    1
  else
    num * factorial(num - 1)
  end
end
puts factorial(3)  # ???? what's the rule to use parenthesis when calling
puts factorial 3   # a method with a param??
puts factorial(30) # line 32 and 33 yield same result
puts factorial 30

=end

# these are just to make the map easier to read
# "M" is visually more dense than "o"
M = "land"
o = "water"

world = [[o,o,o,o,o,o,o,o,o,o,o],
         [o,o,o,o,M,M,o,o,o,o,o],
         [o,o,o,o,o,o,o,o,M,M,o],
         [o,o,o,M,o,o,o,o,o,M,o],
         [o,o,o,M,o,M,M,o,o,o,o],
         [o,o,o,o,M,M,M,M,o,o,o],
         [o,o,o,M,M,M,M,M,M,M,o],
         [o,o,o,M,M,o,M,M,M,o,o],
         [o,o,o,o,o,o,M,M,o,o,o],
         [o,M,o,o,o,M,o,o,o,o,o],
         [o,o,o,o,o,o,o,o,o,o,o]]

def continent_size world,x,y
  if world[x][y] != "land"
    # Either it's water or we already counted it
    # but either way, we don't want to count it now
    return 0
  end
  # So first we count this tile
  size = 1
  world[x][y] = "counted land"
  # then we count all fo the neighboring eight tiles
  # (and, of course, their neighbors by way of recursion).
  size = size + continent_size(world, x-1, y-1)
  size = size + continent_size(world, x, y-1)
  size = size + continent_size(world, x+1, y-1)

  size = size + continent_size(world, x-1, y)
  size = size + continent_size(world,x+1, y)
  size = size + continent_size(world,x-1, y+1)
  size = size + continent_size(world,x, y+1)
  size = size + continent_size(world,x+1, y+1)
  size
end
puts continent_size(world,5,5)

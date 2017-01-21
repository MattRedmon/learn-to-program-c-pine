#  Code from chapter 8 Arrays and Iterators

names = ["Ada", "Belle", "Chris"]
puts names
puts
puts names[0]
puts names[1]
puts names[2]
puts names[3]

other_peeps = []
other_peeps[3] = "beebee Meaner"
other_peeps[0] = "Ah-ha"
other_peeps[1] = "Seedee"
other_peeps[0] = "beebee Ah-ha"
puts other_peeps

languages = ["English", "German", "Ruby"]
languages.each do |lang|
  puts "I love " + lang + "!"
  puts "Don't you?"
end
puts "And let's hear if for Java!"
puts "<crickets chirp in the distance>"

3.times do
  puts "HIP-HIP-HOORAY!"
end

foods = ["artichoke", "brioche", "caramel"]
puts foods
puts
puts foods.to_s
puts
puts foods.join(",")
puts
puts foods.join(" :) ") + " 8)"
100.times do
  puts []
end

favorites = []
favorites.push "raindrops on roses"
favorites.push "whiskey on kittens"
puts favorites[0]
puts favorites.last
puts favorites.length
puts favorites.pop
puts favorites
puts favorites.length

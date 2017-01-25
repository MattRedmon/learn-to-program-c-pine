# code from chap 12 New Classes of Objects

alpha = Array.new + [12345] # Array addition
beta = String.new + "hello" # String addition
karma = Time.new  # Current date and Time

puts "alpha = #{alpha}"
puts "beta = #{beta}"
puts "karma = #{karma}"

time = Time.new  # the time at the moment we ran this code
time2 = time + 60  # one minute later that above
puts time
puts time2
puts
puts Time.local(2000, 1, 1)    #Y2K
puts Time.local(1976, 8, 3, 13, 31)  # year author was born-08/03/1976 @ 13:31 hours
puts
puts Time.gm(1955, 11, 5)

dict_array = []  # array literal; same as Array.new
dict_hash = {}  # has literal; same as Hash.new

dict_array[0] = "candle"
dict_array[1] = "glasses"
dict_array[2] = "truck"
dict_array[3] = "Alicia"

dict_hash["shia-a"] = "candle"
dict_hash["shaya"] = "glasses"
dict_hash["shasha"] = "truck"
dict_hash["sh-sha"] = "Alicia"

dict_array.each do |word|
  puts word
end

dict_hash.each do |c_word, word|
  puts "#{c_word}: #{word}"
end

# This is your range literal
letters = "a".."c"
#convert range to Array
puts(["a", "b", "c"] == letters.to_a) # this take the letters range above and converts to array with .to_a
# Iterate over range
("A".."Z").each do |letter|
  print letter
end
puts
god_bless_the_70s = 1970..1979
puts god_bless_the_70s.min
puts god_bless_the_70s.max
puts(god_bless_the_70s.include?(1979 ))
puts(god_bless_the_70s.include?(1980 ))
puts(god_bless_the_70s.include?(1974.5))

da_man = "Mr. T"
big_T = da_man[4]
puts big_T

puts "Hello, my name is Matt."
puts "I'm extremely perceptive"
puts "What's your name?"
name = gets.chomp
puts "Hi, #{name}"
if name[0] = "C"
  puts "You have great taste in footwear."
  puts "I can just tell."
end

prof = "We tore the universe a new space-hole, alright!"
puts prof[12, 8]
puts prof[12..19] # 8 chars total
puts

def is_avi? filename
  filename.downcase[-4..-1] == ".avi" # this checks if the last 4 char are ".avi"
end
puts is_avi?("dancemonkeyboy.avi")
puts
puts is_avi?("toilet_paper_fiasco.jpg")


puts(42.class)
puts("I'll have mayo on mine".class)
puts(Time.new.class)
puts(Time.class)
puts(String.class)
puts(Class.class)

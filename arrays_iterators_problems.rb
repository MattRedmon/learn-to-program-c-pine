#  challeng problems for chap 8 arrays and iterators

my_array = []

while true
  word = gets.chomp
  if word == ""
    break
  end
  my_array.push word
end
puts my_array.sort

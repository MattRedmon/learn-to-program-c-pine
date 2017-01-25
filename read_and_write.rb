#  code from chap 11 reading and writing, saving and loading, etc....

# the filename doesn't have to end with .txt
filename = "ListerQuote.txt"
test_string = "I promise that I swear absolutely that I will never mention gazpacho soup again."
# The "w" here is for write-access tot eh file
File.open filename, "w" do |f|
  f.write test_string
end
read_string = File.read filename
puts (read_string == test_string)
puts read_string


require "yaml"
test_array = ["And the answer is",
               "Big butts and I can not lie",
               "Cats eating dogs"]
test_string = test_array.to_yaml
filename = "TheBigFile.txt"
File.open filename, "w" do |f|
  f.write test_string
end
read_string = File.read filename
read_array = YAML::load read_string

puts (read_string == test_string)
puts (read_array == test_array)
puts read_string
puts read_array


require "yaml"
# first we define these fancy methods
def yaml_save object, filename
  File.open filename, "w" do |f|
    f.write(object.to_yaml)
  end
end
def yaml_load filename
  yaml_string = File.read filename
  YAML::load yaml_string
end
# and now we use the fancy methods.
test_array = ["slick shoes",
              "bully blinders",
              "pinchers of peril"]
filename = "datasgadgets.txt"
# we save it
yaml_save test_array, filename
# we load it
read_array = yaml_load filename

puts(read_array == test_array)


# code "renaming your photos"
# this changes to new directory
Dir.chdir "C:/documents and setting/Katy/pictureinbox"
# then we find all fo the pics to be moved
pic_names = Dir["F:/**/*.jpg"]  # F: is where the pics are, like a card reader
puts "What would you like to call this batch?"
batch_name = gets.chomp
puts
print "downloading #{pic_names.length} files: "
# this will be our counter, we'll start at 1
# though we normally count from 0
pic_number = 1
pic_names.each do |name|
  print "." # this is our progress bar
  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end
  # this renames the picture, but since "name" has a big long path on it,
  # and "new_name" doesn't, it also move the file to the current working dir,
  # which is now Katy's pictureinbox folder.  Since it's a move, this effectively
  # downloads and deletes the originals. And since this is a memory card, not a
  # hard drive, each of these takes a second or so, hence the little dots let here
  # know that my program didn't lose her machine
  File.rename name, new_name
  # finally we increment the counter
  pic_number = pic_number + 1
end
puts # this is so we arent on progress bar line

puts "done"

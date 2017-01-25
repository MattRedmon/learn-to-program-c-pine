# code from chap 13 "creating new classes, changing existing ones"
=begin
class Integer  #  we add to the Integer class, all integer have this method now
  def to_eng   #  we gave modified an existing class
    if self == 5  # use self to access the object the method is being called on.
      english = "five"
    else
      english = "forty-two"
    end
    english
  end
end

puts 5.to_eng
puts 42.to_eng


class Die
  def roll
    1 + rand(6) # gives rand # between 0 + 5, then adds 1 to it
  end
end
# make a couple of dice...
dice = [Die.new, Die.new]
# ... and roll them
dice.each do |die|
  puts die.roll
end


class Die
  def roll
    @number_showing = 1 + rand(6)
  end
  def showing
    @number_showing
  end
end
die = Die.new
die.roll
puts die.showing
puts die.showing
die.roll
puts die.showing
puts die.showing
=end

class Die
  def initialize  # initialize is a method of the instance. you have to call new first
    roll          # to create the instance before you can use the initialize method
  end
  def roll
    @number_showing = 1 + rand(6)
  end
  def showing
    @number_showing
  end
end
puts Die.new.showing

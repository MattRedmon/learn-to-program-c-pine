# part 2 of chapter 10 code
=begin
# digit to enlish word
def english_number number
  # We accept number from 0 to 100
  if number < 0
    return "Please ener a number zero or greater."
  end
  if number > 100
    return "Please enter a number 100 or less."
  end

  num_string = "" # this is the string we will return
  # "left" is how much of the number
  #  we still have left to write out
  # "write" is the part we are
  #  writing out now.
  #  write and left ... get it?

  left = number
  write = left/100  # how many hundreds left?
  left = left - write*100 # subract off those hundreds
  if write > 0
    return "one hundred"
  end
  write = left/10 # how many tens left?
  left = left - write*10 # subract off those tens.:

  if write > 0
    if write == 1 # uh-oh
      # Since we cant write "tenty-two"
      # instead of "twelve", we have to
      # make special excpetion for these
      if left == 0
        num_string = num_string + "ten"
      elsif left == 1
        num_string = num_string + "eleven"
      elsif left == 2
        num_string = num_string + "twelve"
      elsif left == 3
        num_string = num_string + "thirteen"
      elsif left == 4
        num_string = num_string + "fourteen"
      elsif left == 5
        num_string = num_string + "fifteen"
      elsif left == 6
        num_string = num_string + "sixteen"
      elsif left == 7
        num_string = num_string + "seventeen"
      elsif left == 8
        num_string = num_string + "eighteen"
      elsif left == 9
        num_string = num_string + "nineteen"
      end
      # Since we took care of the didgt in the
      # ones place already, we have nothing left to write.
      left = 0
    elsif write == 2
      num_string = num_string + "twenty"
    elsif write == 3
      num_string = num_string + "thirty"
    elsif write == 4
      num_string = num_string + "fourty"
    elsif write == 5
      num_string = num_string + "fifty"
    elsif write == 6
      num_string = num_string + "sixty"
    elsif write ==7
      num_string = num_string + "seventy"
    elsif write == 8
      num_string = num_string + "eighty"
    elsif write == 9
      num_string = num_string + "ninety"
    end
    if left > 0
      num_string = num_string + "-"
    end
  end
  write = left # how many ones left to write out?
  left = 0 # subract off those ones
  if write > 0
    if write == 1
      num_string = num_string + "one"
    elsif write == 2
      num_string = num_string + "two"
    elsif write == 3
      num_string = num_string + "three"
    elsif write == 4
      num_string = num_string + "four"
    elsif write == 5
      num_string = num_string + "five"
    elsif write == 6
      num_string = num_string + "six"
    elsif write == 7
      num_string = num_string + "seven"
    elsif write == 8
      num_string = num_string + "eight"
    elsif write == 9
      num_string = num_string + "nine"
    end
  end
  if num_string == ""
    # The only way 'num_string' could be empty
    # is if 'number' is 0.
    return "zero"
  end
  # if we got this far, and we had a number
  # somewhere in between 0 and 100, so we need
  # to return 'num_string'
  num_string
end
puts english_number(0)
puts english_number(9)
puts english_number(10)
puts english_number(11)
puts english_number(17)
puts english_number(32)
puts english_number(88)
puts english_number(99)
puts english_number(100)
=end
def english_number number
  if number < 0 # no negative number
    return "Please enter a number that isn't negative"
  end
  if number == 0
    return "zero"
  end
  # No more special cases! No more returns!
  num_string = "" #This is the string we will return
  ones_place = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
  tens_place = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "sevnety", "eighty", "ninety"]
  teenagers = ["eleven", "twelve", "thirteen", "fourteen", "fifeteen", "sixteen", "seventeen", "eighteen", "nineteen"]
  # "left" is hwo much of the number we still have left to write out
  # "write" is the part we are writing out right now
  left = number
  write = left/100  # how many hundreds left
  left = left - write*100  # subract off those hundreds
  if write > 0
    # now here's the recursion
    hundreds = english_number write
    num_string = num_string + hundreds + " hundred"
    if left > 0
      # we we don't write "two hundredfifity-one"
      num_string = num_string = " "
    end
  end
  write = left/10  # how many tens left
  left = left - write*10  # subtract off those tens
  if write > 0
    if ((write == 1) and (left > 0 ))
      # since we cant write tenty-two instead of twelve we have to make a special exception for these
      num_string = num_string + teenagers[left - 1]
      #  the "-1" is because teenagers[3] is fourteen not thirteen
      #  since we took care of the digit in the ones place already, we have nothing left to write
      left = 0
    else
      num_string = num_string + tens_place[write - 1]
      #  the "-1" is because tens_place[3] is forty not thirty
    end
    if left > 0
    num_string = num_string + "-"
    end
  end
  write = left  # how many ones left to write out?
  left = 0  # subtract off those ones
  if write > 0
  num_string = num_string + ones_place[write - 1]
  #  the "-1" is because ones_place[3] is four not three
  end
# now we return the "num_string"
num_string
end

puts english_number(0)
puts english_number(9)
puts english_number(10)
puts english_number(11)
puts english_number(17)
puts english_number(32)
puts english_number(88)
puts english_number(99)
puts english_number(100)
puts english_number(101)   # calls from here down do not produce correct answer
puts english_number(234)
puts english_number(3211)
puts english_number(999999)
puts english_number(1000000000)

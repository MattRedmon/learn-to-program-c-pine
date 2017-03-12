#  problems from chap 9 write your own methods

# Problem 1- improve ask method from last example below
=begin
def ask question
  while true
    puts question
    reply = gets.chomp.downcase

    if (reply == "yes" || reply == "no")
      if reply == "yes"
        answer = true
      else
        answer = false
      end
      break
    else
      puts "Please answer yes or no."
    end
  end
  answer # This is what we return (true of false)
end      # it is the return value of wets_bed bed question
  puts "Hello, and thank you for . . . ."
  puts
  ask "Do you like eating tacos?" #Ignore this return value
  ask "Do you like eating burritos?" #And this one
  wets_bed = ask "Do you wet the bed?" # Save this return value
  ask "Do you like eating chimichangas?"
  ask "Do you like eating sopapillas?"
  puts "Just a few more questions . . "
  ask "Do you like horchata?"
  ask "Do you like eating flautas?"
  puts
  puts "DEBRIEFING"
  puts "Thank you for . . . . "
  puts
  puts wets_bed



# Roman numerals --
def roman_numerals(num)
  roman = ""
  roman = roman + "M" * (num / 1000)
  roman = roman + "D" * (num % 1000 / 500)
  roman = roman + "C" * (num % 500 / 100)
  roman = roman + "L" * (num % 100 / 50)
  roman = roman + "X" * (num % 50 /10)
  roman = roman + "V" * (num % 10 / 5)
  roman = roman + "I" * (num % 5 / 1)
  roman
end
puts roman_numerals(789)

def roman_num(num)
  roman_num = ""
  ones, tens, hundreds, thousands = num.to_s.reverse.split("")
  if thousands != nil
    roman_num << "M" * (num / 1000)
  end
  if hundreds != nil
    roman_num << "D" * (num % 1000 / 500)
    roman_num << "C" * (num % 500 / 100)
  end
  if tens != nil
    roman_num << "L" * (num % 100 / 50)
    roman_num << "X" * (num % 50 /10)
  end
  if ones != nil
    roman_num << "V" * (num % 10 / 5)
    roman_num << "I" * (num % 5 / 1)
  end
  roman_num
end
puts roman_num(789)
=end



# this is my solution to doing new style roman numerals
# it builds on my answer to previous problem of printing old style
# roman numerals,  solution provided was not consulted till after this
# code was working
# after testing appears to be working as required
def new_roman_num(num)
  roman_num = ""
  ones, tens, hundreds, thousands = num.to_s.reverse.split("")
  # thousands
  if thousands != nil
    roman_num << "M" * (num / 1000)
  end
  #hundreds
  if hundreds != nil
    if hundreds == "4"
      roman_num << "CD"
    elsif hundreds == "9"
      roman_num << "CM"
    else
      roman_num << "D" * (num % 1000 / 500)
      roman_num << "C" * (num % 500 / 100)
    end
  end
  # tens
  if tens != nil
    if tens == "4"
      roman_num << "XL"
    elsif tens == "9"
      roman_num << "XC"
    else
      roman_num << "L" * (num % 100 / 50)
      roman_num << "X" * (num % 50 /10)
    end
  end
  # ones
  if ones != nil
    if ones == "4"
      roman_num << "IV"
    elsif ones == "9"
      roman_num << "IX"
    else
      roman_num << "V" * (num % 10 / 5)
      roman_num << "I" * (num % 5 / 1)
    end
  end
  roman_num
end
puts new_roman_num(949)


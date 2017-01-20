#  this is the problem at the end of the chapter

days_year = 365
hours_day = 24
min_hour = 60
sec_min = 60

#  hours in a year
puts "Hours in a year : #{days_year * hours_day}"

#  minutes in a decade
puts "Minutes in a decade: #{10 * days_year * hours_day * min_hour}"

#  your age in seconds
puts "My age in seconds: #{36 * days_year * hours_day * min_hour * sec_min}"


#  authors age if 1160 million seconds old
puts "Authors age: #{((((1160000000/sec_min)/min_hour)/hours_day)/days_year)}"

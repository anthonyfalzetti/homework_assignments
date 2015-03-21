#!/usr/bin/env ruby

seconds_in_a_minute = 60
minutes_in_a_hour = 60
hours_in_a_day = 24
days_in_a_week = 7
weeks_in_a_year = 52
seconds_in_an_hour = seconds_in_a_minute * minutes_in_a_hour
seconds_in_a_day = seconds_in_an_hour * hours_in_a_day
seconds_in_a_week = seconds_in_a_day * days_in_a_week
seconds_in_a_year = seconds_in_a_week * weeks_in_a_year

puts "There are #{seconds_in_a_minute} seconds in a minute"
puts "There are #{minutes_in_a_hour} minutes in an hour"
puts "There are #{hours_in_a_day} hours in a day"
puts "There are #{days_in_a_week} days in a week"
puts "That means there are:
  #{seconds_in_an_hour} seconds in an hour,
  #{seconds_in_a_day} seconds in a day,
  #{seconds_in_a_week} seconds in a week"

print "That means when you turn 20, you've been alive"
puts " for #{seconds_in_a_year * 20} seconds,"
print 'and if you make it to 100, you will have lived'
puts " #{seconds_in_a_year * 100} seconds. Make them count!"

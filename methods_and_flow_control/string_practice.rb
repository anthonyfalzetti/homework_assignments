#!/usr/bin/env ruby

practice_string = 'this is a string to practice with'
practice = practice_string.slice('practice ') * 3

puts practice_string
puts practice_string.capitalize
puts practice_string.upcase
puts practice_string.gsub('string', "'string'").capitalize
puts "The string '#{practice_string}' has #{practice_string.length} characters"
puts practice_string.reverse
print "#{practice.chop}!"

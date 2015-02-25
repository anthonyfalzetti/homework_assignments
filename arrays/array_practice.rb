#!/usr/bin/env ruby

starting_array = (1..10).to_a
new_array = starting_array.reject { |number| [5, 6, 7].include?(number) }

puts "#{starting_array.join('...')}..."
puts "T-#{starting_array.reverse.join(', ')}...  BLASTOFF!"
puts "The last element is #{starting_array.last}"
puts "The first element is #{starting_array.first}"
puts "The third element is #{starting_array[2]}"
puts "The element with an index of 3 is #{starting_array[3]}"
puts "The second from last element is #{starting_array[-2]}"
puts "The first four elements are '#{starting_array.first(4).join(', ')}'"
print 'If we delete 5, 6 and 7 from the array,'
puts " we're left with [#{new_array.join(',')}]"
print 'If we add 5 at the beginning of the array,'
puts " we're left with [#{new_array.unshift(5).join(',')}] "
print 'If we add 6 at the end of the array,'
puts " we're left with [#{new_array.push(6).join(',')}]"
puts "Only the elements #{new_array.keep_if { |number| number > 8 }} are > 8."
print 'If we remove all the elements,'
puts " then the length of the array is #{new_array.clear.length}"

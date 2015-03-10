#!/usr/bin/env ruby

starting_array = (1..10).to_a

puts "#{starting_array.join('...')}..."
puts "T-#{starting_array.reverse.join(', ')}...  BLASTOFF!"
puts "The last element is #{starting_array.last}"
puts "The first element is #{starting_array.first}"
puts "The third element is #{starting_array[2]}"
puts "The element with an index of 3 is #{starting_array[3]}"
puts "The second from last element is #{starting_array[-2]}"
puts "The first four elements are '#{starting_array.first(4).join(', ')}'"
starting_array.delete_if { |digit| [5, 6, 7].include?(digit) }
print 'If we delete 5, 6 and 7 from the array,'
puts " we're left with [#{starting_array.join(',')}]"
starting_array.unshift(5)
print 'If we add 5 at the beginning of the array,'
puts " we're left with [#{starting_array.join(',')}] "
starting_array.push(6)
print 'If we add 6 at the end of the array,'
puts " we're left with [#{starting_array.join(',')}]"
puts "Only the elements #{starting_array.select { |digit| digit > 8 }} are > 8."
print 'If we remove all the elements,'
puts " then the length of the array is #{starting_array.clear.length}"

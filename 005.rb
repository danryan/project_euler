# 2520 is the smallest number that can be divided by each of the numbers from 1 to
# 10 without any remainder.
# 
# What is the smallest positive number that is evenly divisible by all of 
# the numbers from 1 to 20?

# puts "With programming:"
# count = 1
# keep_going = true
# 
# loop do
#   1.upto(20).each do |i|
#     if (count % i == 0) && (i == 20)
#       puts "This number is correct: #{count}"
#       keep_going = false
#       break
#     elsif count % i == 0
#       next
#     else
#       break
#     end
#   end
#   count += 1
#   # print "."
#   break unless keep_going
#   next
# end

num = (1..20).inject(1) { |result, n| result.lcm n }
puts "Smallest evenly divisible number is #{ num }."

# No programing, just compute the prime factorization of each number from 1-20
# and multiply the greatest power of each prime together:
puts "Just math:"
puts 2 ** 4 * 3 ** 2 * 5 * 7 * 11 * 13 * 17 * 19
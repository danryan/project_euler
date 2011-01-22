num = ARGV[0].to_i

count = 1
bit = 0
loop do
  1.upto(num).each do |i|
    if (count % i == 0) && (i == num)
      puts "This number is correct: #{count}"
      bit = 1
      break
    elsif count % i == 0
      # puts "#{count} divisible by #{i}"
      next
    else
      # puts "#{count} not divisible by #{i}"
      break
    end
  end
  count += 1
  # print "."
  break if bit == 1
  next
end
     
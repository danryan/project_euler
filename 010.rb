# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# 
# Find the sum of all the primes below two million.

def primes_up_to(top)
  s = (0..top).to_a
  s[0] = s[1] = nil
  s.each do |p|
    next unless p
    break if p * p > top
    (p*p).step(top,p){ |i| s[i] = nil}
  end
  s.compact
end

primes = primes_up_to(1_999_999)

puts primes.inject(:+)
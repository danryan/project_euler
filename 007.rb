# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that 
# the 6th prime is 13.
#
# What is the 10001st prime number?

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

primes = primes_up_to(1_000_000)
puts primes[10000]
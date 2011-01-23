# A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,
# 
# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.
# 
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product `abc`.

triples = []

(1..500).each do |c|
  (1..c).each do |b|
    (1..b).each do |a|
      if a * a + b * b == c * c
        triples << [a,b,c]
      end
    end
  end
end

# puts triples.map{|t|t.join(' ')}

triple = triples.select do |triple|
  triple[0] + triple[1] + triple[2] == 1000
end.first

puts triple.inject(:*)
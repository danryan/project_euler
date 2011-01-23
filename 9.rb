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

t = triples.select do |triple|
  triple[0] + triple[1] + triple[2] == 1000
end

puts 200 * 375 * 425
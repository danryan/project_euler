# Using names.txt (right click and 'Save Link/Target As...'), a 46K text file 
# containing over five-thousand first names, begin by sorting it into alphabetical 
# order. Then working out the alphabetical value for each name, multiply this value 
# by its alphabetical position in the list to obtain a name score.
# 
# For example, when the list is sorted into alphabetical order, COLIN, which is 
# worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN would 
# obtain a score of 938  53 = 49714.
# 
# What is the total of all the name scores in the file?

names = IO.read("names.txt").split(",").sort

letters = ("A".."Z").to_a
numbers = (1..26).to_a

letter_map = {}

(0..25).each do |i|
  letter_map.merge!(letters[i].to_sym => numbers[i])
end

# names.each {|n| puts n}
names.map!{|n| n.split("").map{|m|letter_map[m.to_sym]}.reject(&:nil?)}
names.map! {|n| n.inject(:+) }

results = []
names.each_with_index do |v, i|
  results << (i + 1) * v
end

puts results.inject(:+)
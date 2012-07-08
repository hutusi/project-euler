#coding: utf-8

require File.dirname(__FILE__) + '/util/prime.rb'
require File.dirname(__FILE__) + '/util/factor.rb'

abundants = []
2.upto(28123) do |x|
	next if Prime.is? x
	fs = sum_proper_factors_of x
    abundants << x if x < fs
end

# puts abundants.length

size = abundants.size 
abundant_sums = [] 

0.upto(size - 1) do |x| 
  (0 + x).upto(size - 1) do |y| 
  	sum = abundants[x] + abundants[y]
    abundant_sums << sum if sum <= 28123 
  end
end

abundant_sums.uniq!
sum = 0
1.upto(28123) {|x| sum += x}
puts sum - abundant_sums.inject(0) {|memo, x| memo + x }

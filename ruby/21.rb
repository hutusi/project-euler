#coding: utf-8

require File.dirname(__FILE__) + '/util/prime.rb'
require File.dirname(__FILE__) + '/util/factor.rb'

amounts = {}
2.upto(10_000 - 1) do |x|
	next if Prime.is? x
	fs = sum_proper_factors_of x
    amounts[x] = fs if fs < 10_000
end

#amicables = []
nums = amounts.keys

sum = 0
nums.each do |x|
  sum_of_divisors = amounts[x]
  sum += (sum_of_divisors + x) if sum_of_divisors > x and amounts[sum_of_divisors] == x     
end

puts sum


# nums.each do |x|
#   amounts.each do |k, v|
#     amicables << x and amicables << k if x == v and k == amounts[x] and x != k
#   end
# end

# amicables.uniq!
# puts amicables.inject(0) {|sum,x| sum + x}

#coding: utf-8

require File.dirname(__FILE__) + '/util/prime.rb'
require File.dirname(__FILE__) + '/util/factor.rb'

amounts = {}
2.upto(10_000 - 1) do |x|
	next if Prime.is? x
	factors = (factors_of x)
	factors.delete(x)
	a = factors.inject(0) {|sum, f| sum + f}
    amounts[x] = a if a < 10_000
end

amicables = []
nums = amounts.keys
nums.each do |x|
  amounts.each do |k, v|
    amicables << x and amicables << k if x == v and k = amounts[x]
  end
end

amicables.uniq!
puts amicables.inject(0) {|sum,x| sum + x}

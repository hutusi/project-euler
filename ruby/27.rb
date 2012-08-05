#coding: utf-8

require File.dirname(__FILE__) + '/util/prime.rb'

def consecutive_num_of_primes(a, b)
  n = 0
  while Prime.is? (n*n + a*n + b)
    n += 1    
  end
  n
end

max_num = 0
arr = []
# for n from 0, so (0 + 0  + b = b) must be prime
Prime.reset!
while (b = Prime.next!) < 1000
  -999.upto(999) do |a|
  	num = consecutive_num_of_primes(a, b)
    max_num = num and arr = [a, b] if max_num < num
  end
end

#puts max_num
#puts arr
puts arr[0]*arr[1]

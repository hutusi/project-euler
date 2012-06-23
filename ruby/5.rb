#coding: utf-8

def prime_factors_of num
  divisor, remainder = 2, num
  factors = []
  while divisor * divisor <= remainder
    (remainder % divisor).zero? ? (remainder /= divisor and factors << divisor ) : (divisor += 1)
  end
  factors << remainder
end

def unite_arrays a,b
  b.each { |x| a.delete_at(a.index(x)||a.length) }
  a + b
end

fs = []
1.upto(20) {|x| fs << prime_factors_of(x) }

union = []
fs.each {|x| union = unite_arrays(union, x) }

#puts union 
puts union.inject(1) {|memo, x| memo * x}

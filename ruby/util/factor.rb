#coding: utf-8

#require './prime'

def prime_factors_of n
  factors = []
  Prime.reset!
  while n > 1
    factor = Prime.next!
    num = 0
    while n % factor == 0
      n /= factor
      factors << factor
    end
  end
  factors
end

def groups_of(num, exponent)
  (1..exponent).to_a.map! {|e| num**e}
end

def factors_of num	
	primes = prime_factors_of num
    factors = [1]
    primes.each do |x|
      groups = []
      factors.each {|y| groups << x * y }
      factors.concat groups
    end
    factors.sort!.uniq
end

# puts factors_of 220  #=> 1, 2, 4, 5, 10, 11, 20, 22, 44, 55, 110, 220

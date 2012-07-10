#coding: utf-8

def max_prime_factor_of num
  divisor, quotient = 2,num
  while divisor * divisor < quotient
    (quotient % divisor == 0) ? (quotient /= divisor) : (divisor += 1)
  end
  quotient
end

puts max_prime_factor_of 600851475143

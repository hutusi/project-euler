#coding: utf-8

def max_prime_factor num
  divisor, remainder = 2,num
  while divisor * divisor < remainder
    (remainder % divisor).zero? ? (remainder /= divisor) : (divisor += 1)
  end
  remainder
end

puts max_prime_factor 600851475143

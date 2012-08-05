#coding: utf-8

# 9! = 362880
# 9! * 7 = 2540160, 9! * 8 = 2903040 (7 digits) 
# maximun number will less than 2540160 (9! * 7)
# 1! = 1 and 2! = 2 are not sums they are not included.

$factorials = {0=>1, 1=>1}

def factorial_of n
  return $factorials[n] if $factorials.has_key? n
  $factorials[n] = factorial_of(n-1) * n
end

max_num = factorial_of(9) * 7
total_sum = 0
3.upto(max_num) do |n|
  sum = n.to_s.split("").inject(0) { |mem, x|  mem + $factorials[x.to_i]}
  total_sum += sum and puts sum if n == sum
end

puts total_sum
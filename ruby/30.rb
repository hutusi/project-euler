#coding: utf-8

# ab..mn = a**5 + b**5 + .. + m**5 + n**5
# 9**5 * 6 = 354294 and 9**5 * 7 = 413343, so maximum number of digits is 6

def powers_number?(n, power)
  n == (n.to_s.split("").inject(0) {|sum, x| sum + (x.to_i)**power})
end


sum = 0
2.upto(354294) do |x|
  sum += x if powers_number?(x, 5)
end

puts sum

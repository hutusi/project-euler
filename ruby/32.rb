#coding: utf-8

# 1,2,3,4,5,6,7,8,9 

def pandigitals?(num, multiplier, multiplicand)
  s = num.to_s + multiplier.to_s + multiplicand.to_s
  a = s.split("")
  return false if a.length != 9
  a.uniq!
  return false if a.length != 9
  return false if a.include? "0"
  puts (num.to_s ) + " = " + multiplier.to_s + " * " + multiplicand.to_s
  true
end

pandigitals = []

#puts pandigitals?(7254, 39, 186)

2.upto(9) do |x|
  1000.upto(4999) do |y|
  	p = x*y
    pandigitals << p if pandigitals?(p, x, y)
  end
end

10.upto(99) do |x|
  100.upto(999) do |y|
  	p = x*y
    pandigitals << p if pandigitals?(p, x, y)
  end
end

puts pandigitals.uniq.inject(0) {|sum, x| sum + x}

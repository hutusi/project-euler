#coding: utf-8

# n! = n * (n -1) * ... * 3 * 2 * 1
def factorial_of num  
	(2..num).inject(1) {|product, x| product * x }
end
#puts factorial_of 10   # 3628800

puts (factorial_of 100).to_s.split("").inject(0) {|sum, x| sum + x.to_i}

#coding: utf-8

def palindromic? num
  s = num.to_s
  s == s.reverse
end

num = 0
100.upto(999) do |x|
  100.upto(999) do |y|
    n = x * y
    num = n if palindromic? n and num < n
  end
end

puts num

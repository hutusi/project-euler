#coding: utf-8

# def prime? num
#   sqr = Math.sqrt(num).round
#   2.upto(sqr) {|x| return false if num % x == 0}
#   true
# end

# i, p = 1, 3
# while i < 10001
#   i += 1 if prime? p
#   p += 2
# end

# puts p - 2

require File.dirname(__FILE__) + '/util/prime.rb'

prime = Prime.new
10001.times {prime.next!}
puts prime.primes.last

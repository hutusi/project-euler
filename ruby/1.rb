#coding: utf-8

puts (1...1000).inject(0) {|sum, x| sum + ( (x % 3 == 0 or x % 5 == 0) ? x : 0 ) }

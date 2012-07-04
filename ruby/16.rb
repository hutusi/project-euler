#coding: utf-8

puts (2**1000).to_s.split("").inject(0) {|sum, x| sum + x.to_i}

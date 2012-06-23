#coding: utf-8

a = (1..100).inject(0) {|memo, x| memo + x }
b = (1..100).inject(0) {|memo, x| memo + x**2 }
puts a**2 - b

#coding: utf-8

# a**b, 2<=a<=100, 2<=b<=100 
# total: 99*99 - duplicated sums
#  2**2 = 4, 2**3 = 8, 2**4 = 16, 2**5 = 32, 2**6 = 64, 2**7 = 128
#  3**2 = 9, 3**3 = 27, 3**4 = 81
#  4**2 = 16 = 2**4, when a = 4, if a**n <= 2**100, it's duplicated
#  
#  5**2 = 25, 5**3 = 125, 5**4 = 625
#  ....
#  8**2 = 64 == 2**6, when a = 8, if a**n <= 2**100, it's duplicated
#  9**2 = 81 == 3**4, when a = 8, if a**n <= 3**100, it's duplicated
#  10**2 
#  ...
#  16**2 = 256 = 2**8 = 4**4, when a = 16, a**n <= 4**100, it's duplicated
#  100**2 = 10**4
#  ...

all = []
2.upto(100) do |a|
  2.upto(100) do |b|
    all << a**b
  end
end

puts all.uniq.size

=begin
amount = 99*99

puts amount

2.upto(10) do |a|
  dup = a**2
  max = a**100
  2.upto(100) do |b|
  	break if dup**b > max
  	amount -= 1
  end
end

puts dupnum = 99*99 - amount

# remain: 2**3=8, 2**5=32, 3**3=27
ha = {2=>8, 2=>32, 3=>27}

ha.each do |a, dup|
  max = a**100
  2.upto(100) do |b|
  	break if dup**b > max
  	amount -= 1
  end
end

puts dupnum = 99*99 - amount - dupnum

puts amount
=end

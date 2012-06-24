#coding: utf-8

# The sieve of Eratosthenes

class Prime
  def initialize(max_num)
    @max = max_num
    @map = [true]*(max_num+1)
    @map[0] = false
    @map[1] = false
    @pos = 2
  end

  def sieve_multiple!
    i = 2
    while @pos * i <= @max
      @map[@pos * i] = false
      i += 1
    end
  end

  def sieve!
    sqr = Math.sqrt(@max).round
    while @pos <= sqr
      sieve_multiple!
      next_pos!
    end
  end
  
  def next_pos!
    while @pos < @max
      @pos += 1
      return @pos if @map[@pos]
    end
  end

  def primes
    @primes = []
    @map.each_with_index {|x, i| @primes << i if x }
    @primes
  end
end

p = Prime.new(2_000_000)
p.sieve!
puts p.primes.inject(0) {|memo, x| memo + x}


#
=begin
def prime? num
  sqr = Math.sqrt(num).round
  2.upto(sqr) {|x| return false if num % x == 0}
  true
end

i, p = 1, 3
sum = 2
while p < 2_000_000
  sum += p if prime? p
  p += 2
end

puts sum
=end

# 
=begin
def remove(primes, factor, max)
  i = 2
  while factor * i < max
    primes.delete_at(primes.index(factor*i) || primes.length)
    i += 1
  end
  primes
end

m = ax_nui1_000_0qr = Math.sqrt(num).round
  5   2.upto(sqr) {|x| return false if num % x == 0}
  6   true
  7 end
  8
  9 i, p = 1, 3
 10 while i < 10001
 11   i += 1 if prime? p
 12   p += 2
 13 end
 14
 15 puts p - 2
~
0
primes = (2...max_num).to_a

i = 0
while true
  break if i >= primes.length
  remove(primes, primes[i], max_num)
  i += 1
end

puts primes
puts primes.inject(0) {|memo, x| memo + x}
=end

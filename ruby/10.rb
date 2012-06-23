#coding: utf-8

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

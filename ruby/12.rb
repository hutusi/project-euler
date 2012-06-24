#coding: utf-8

def num_of_factors num
  sum = 0
  sqr = Math.sqrt(num)
  to = sqr.floor
  if (to == sqr)
    to -= 1
    sum += 1
  end
  1.upto(to) {|x| sum += 2 if (num % x).zero?}
  sum - 1 # excepted num self
end

def next_triangle(curr, pos, next_pos)
  pos.upto(next_pos) {|x| curr += x}
  curr
end

def previous_triangle(curr, pos, pre_pos)
  pos.downto(pre_pos) {|x| curr -= x}
  curr
end


next_step = 100

num, pos = 0, 0
sum = 0
last_num, last_pos = 0, 0

i = 1
while num_of_factors(num) < 500
  num += i
  i += 1
end

puts num

=begin
while true
  puts "#{next_step}, #{sum}, #{num}"
  if sum < 500
    last_num = num
    last_pos = pos
    num = next_triangle(num, pos, pos + next_step)
    sum = num_of_factors(num)
    pos += next_step + 1
  else
    break if next_step == 1 
    next_step /= 2
    num = next_triangle(last_num, last_pos, last_pos + next_step)
    sum = num_of_factors(num)
  end
end

puts num

=end

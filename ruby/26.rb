#coding: utf-8

def duplicate?(array, len)
  1.upto(len) do |x|
    return false if array[array.length - x] != array[array.length - len - x]
  end
  true
end

def repeat(array, min_len)  
  half_len = array.length / 2
  min_len.upto(half_len) do |x|
    return [array.length-x-x, x] if duplicate?(array, x)
  end
  [0, 0]
end

def decimals_of_unit_fraction denominator
  remainder, divisor = 1, denominator
  decimals = []
  repeat_from, repeat_len = 0, 0
  started = false
  min_len = denominator.to_s.length

  while remainder > 0
    dividend = remainder * 10
    remainder = dividend % divisor
    quotient = dividend / divisor
    decimals << quotient

    repeat_from, repeat_len = repeat(decimals, min_len)
    break if repeat_len > 0
  end  

  [decimals, repeat_from, repeat_len]
end

def print_decimals denominator
  decimals, repeat_from, repeat_len =  decimals_of_unit_fraction denominator
  if repeat_len == 0
    puts "0."+decimals.join
  else
    puts "0." + decimals[0, repeat_from].join + "(" + decimals[repeat_from, repeat_len].join + ")"
  end
end

max_len, max_d = 0, 0
2.upto(1000 - 1) do |x|
  decimals, repeat_from, repeat_len = decimals_of_unit_fraction x
  max_len = repeat_len and max_d = x if max_len < repeat_len
end

#puts print_decimals max_d
puts max_d

#puts "0."+(decimals_of_unit_fraction 7)[0].join
#puts print_decimals 7


#coding: utf-8

# 1 => 1
# 2 => 2 = 1 * 2
# 3 => 6 = 1 * 2 * 3
# 4 => 24 = 1 * 2 * 3 * 4
# ....

permutations = { 1 => 1}
2.upto(10) {|x| permutations[x] = permutations[x - 1] * x }

digits_sort = {}
remainder = 1_000_000 - 1
0.upto(9) do |x|
  digits_sort[x] = remainder / permutations[10 - x]
  remainder %= permutations[10 - x]
end

puts permutations
puts digits_sort

arr = []
0.upto(9) {|x| arr << x}

new_arr = []
digits = digits_sort.values
digits.delete_at 0

digits.each do |x|
  new_arr << arr[x]
  arr.delete_at x
end
new_arr << arr[0]

puts new_arr.join
#coding: utf-8

# 1p, 2p, 5p, 10p, 20p, 50p, £1 (100p) and £2 (200p)

Coins = [200, 100, 50, 20, 10, 5, 2, 1]
Combin = 200

def number_of_combination(comb, index)
  return 1 if comb == 0
  return 0 if index >= Coins.length

  sum = 0
  index.upto(Coins.length-1) do |i|
    multiple = comb / Coins[i]
    multiple.downto(1) {|x| sum += number_of_combination(comb - Coins[i]*x, i+1)}
  end
  sum
end

sum = 0
Coins.each_with_index do |big, i|
  multiple = Combin / big
  multiple.downto(1) {|x| sum += number_of_combination(Combin - big*x, i+1)}
end

puts sum

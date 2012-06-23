#coding: utf-8

require 'pathname'

data_path = Pathname.new(__FILE__).realpath.parent.to_s + "/../data/8"

data = File.open(data_path, "r").read
nums = data.delete("\r\n")

def five_multi(nums, i)
  (i..(i+4)).inject(1) {|memo, x| memo * nums[x].to_i}
end

product = 0
0.upto(nums.length - 1 - 5) do |x| 
  p = five_multi(nums, x)
  product = p if p > product 
end

puts product


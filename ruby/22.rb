#coding: utf-8

require 'pathname'
data_path = Pathname.new(__FILE__).realpath.dirname.parent.to_s + "/data/names.txt"
data = File.open(data_path, "r").read
data.delete! "\""
names = data.split "," 

names.sort!

$alphabt_base = ?A.ord - 1

def alphabts_sum str
	sum = 0
	str.each_byte {|x| sum += x - $alphabt_base}
	sum
end

total = 0
names.each_with_index do |name, index|
	total += (alphabts_sum name) * (index + 1)
end

puts total

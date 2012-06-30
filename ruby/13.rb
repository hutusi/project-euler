#coding: utf-8

require 'pathname'

data_path = Pathname.new(__FILE__).realpath.parent.to_s + "/../data/13"
data = File.open(data_path, "r")
sum =0
while (line = data.gets) != nil
  sum += line.to_i
end

puts sum.to_s[0, 10]


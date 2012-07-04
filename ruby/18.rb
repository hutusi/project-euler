#coding: utf-8

require 'pathname'

data_path = Pathname.new(__FILE__).realpath.dirname.parent.to_s + "/data/18"
data = File.open(data_path, 'r').readlines

#def print nums
#  nums.each {|x| puts x.join(" ")}  
#end

nums = []
data.each {|x| nums << x.split(" ").map!{|y| y.to_i}}

routes = nums.clone

def max_route(routes, i, j)
  return routes[j-1][0] if i == 0
  return routes[j-1][i-1] if i == j
  return [routes[j-1][i-1], routes[j-1][i]].max 
end

1.upto(routes.size - 1) do |j|
  0.upto(routes[j].size - 1) do |i|
    routes[j][i] += max_route(routes, i, j)
  end
end

puts routes.last.max

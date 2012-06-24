#coding: utf-8

require 'pathname'

$length, $height = 20, 20
$nums = []
$max_product = 0

def read_numbers path
  file = File.open(path, "r")
  line = ""
  while nil != (line = file.gets)
    $nums << line.split(' ').map!{|x| x = x.to_i}
  end
  $nums
end

def product(a,b,c,d)
  a*b*c*d
end

def horizontal
  0.upto($height - 1) do |y|
    0.upto($length - 4) do |x|
      prod = product($nums[y][x], $nums[y][x+1], $nums[y][x+2], $nums[y][x+3])
      $max_product = prod if $max_product < prod
    end
  end
end

def vertical
  0.upto($length - 1) do |x|
    0.upto($height - 4) do |y|
      prod = product($nums[y][x], $nums[y+1][x], $nums[y+2][x], $nums[y+3][x])
      $max_product = prod if $max_product < prod
    end
  end
end

def rightdown
  0.upto($height - 4) do |y|
    0.upto($length - 4) do |x|
      prod = product($nums[y][x], $nums[y+1][x+1], $nums[y+2][x+2], $nums[y+3][x+3])
      $max_product = prod if $max_product < prod
    end
  end
end

def leftdown
  0.upto($height - 4) do |y|
    0.upto($length - 4) do |x|
      prod = product($nums[y][x+3], $nums[y+1][x+2], $nums[y+2][x+1], $nums[y+3][x])
      $max_product = prod if $max_product < prod
    end
  end
end

data_path = Pathname.new(__FILE__).realpath.parent.to_s + "/../data/11"
read_numbers data_path
horizontal
vertical
rightdown
leftdown
puts $max_product


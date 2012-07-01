#coding: utf-8

##
#
#     1  1  1  1  1
#     1  2  3  4  5
#     1  3  6  10 15
#     1  4  10 20 ..
#     1  5  15 .. ..
#
##

map = []
0.upto(20) {|x| map << Array.new(21, 1) }

def set_row(map, i, j)
  (i+1).upto(20) {|x| map[j][x] = map[j][x-1] + map[j-1][x]}
end

def set_column(map, i, j)
  (j+1).upto(20) {|x| map[x][i] = map[x][i-1] + map[x-1][i] }
end

i, j = 1, 1
while i < 21 and j < 21
  map[j][i] = map[j][i-1] + map[j-1][i]
  set_row(map, i, j)
  set_column(map, i, j)
  i += 1
  j += 1
end

puts map[20][20]

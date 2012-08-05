#coding: utf-8

#####
#####
#  spriral edge: 1 -> 3 -> 5 -> 7 ....
#  as edge (e) > 1:
#     m = (max of inlayer diagonals) , 4 diagonals is: m + (e-1), m + (e-1)*2 , m + (e-1)*3, m + (e-1)*4
#     so amount of 4 diagonals = m*4 + (e-1)*10
#     and m = (e-2)**2 (1 -> 9 -> 5 ... )
#     then amount of 4 diagonals = ((e-2)**2) * 4 + (e-1)*10 when e > 1 and 1 when e = 1
#####

amount = 1 
3.upto(1001) {|e| amount += ((e-2)**2)*4 + (e-1)*10 if e%2 != 0}
puts amount

#coding: utf-8

# a + b > c
# a < b < c
# 1000/3 < c < 1000/2
# 1000/4 < b < 1000/2
# 0 < a < 1000/3

def pythagorean 
  na = [1, 999/3] 
  nb = [1000/4, 1000/2]
  nc = [999/3, 1000/2]

  na[0].upto(na[1]) do |a|
    nb[0].upto(nb[1]) do |b|
      nc[0].upto(nc[1]) do |c|
        next unless a+b+c == 1000
        return [a,b,c] if (a**2) + (b**2) == (c**2)   
      end
    end
  end
  [0,0,0]
end

p = pythagorean
puts p
puts p[0]*p[1]*p[2]

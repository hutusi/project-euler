#coding: utf-8

$decades_end_with_zero = []
$decades_of_replication = []

1.upto(9) do |x|
  $decades_end_with_zero << x*10
  $decades_of_replication << x*11
end

def trivial_numerator? n
  $decades_end_with_zero.include? n or $decades_of_replication.include? n
end

def has_common_digit?(x, y)
  s = x.to_s + y.to_s
  s.split("").uniq.length < 4
end

def remove_common_frac(x, y)
  x_a = x.to_s.split("")
  y_a = y.to_s.split("")
  common = x_a & y_a
  (x_a - common)[0].to_i * 1.0 / (y_a - common)[0].to_i
end

numerators = []
denominators = []

12.upto(98) do |x|
  next if trivial_numerator? x
  (x+1).upto(99) do |y|
    next if not(has_common_digit? x,y )
    if x * 1.0 / y == remove_common_frac(x, y)
      numerators << x
      denominators << y
    end
  end
end

numerator = numerators.inject(1) { |p, x| p * x}
denominator = denominators.inject(1) { |p, x| p * x}

puts denominator/numerator
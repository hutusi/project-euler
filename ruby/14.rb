#coding: utf-8

$steps = Array.new(1_000_000, 0)

def collatz num
  step = 1 
  if num == 1
    nil
  elsif num <= 1_000_000 and $steps[num-1] != 0
    step += $steps[num-1]
  else    
    if num % 2 == 0
      num /= 2
    else
      num = num * 3 + 1
    end

    step += collatz num
    $steps[num-1] = step if num <= 1_000_000
  end

  step
end

max_step = 0
max_num = 0

1_000_000.downto(2) do |x|
  step =  collatz x
  if max_step < step
    max_step = step
    max_num = x
  end
end

puts max_num

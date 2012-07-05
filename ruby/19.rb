#coding: utf-8

def leap_year? year
  year % 4 == 0 and year % 100 != 0 or year % 400 == 0
end

$month_days = {2 => 28}
[1,3,5,7,8,10,12].each {|mon| $month_days[mon] = 31}
[4,6,9,11].each {|mon| $month_days[mon] = 30}

$leap_year_month_days = $month_days.clone
$leap_year_month_days[2] = 29

amount, remainder = 0, -1 # Jan 1st 1901 is Monday, so initial remainder is -1 or 6
1901.upto(2000) do |year|
  month_days = (leap_year? year) ? $leap_year_month_days : $month_days

  month_days.each_value do |days|
    amount += 1 if remainder == 0 # 1st in this month is Sunday
    remainder = (days + remainder) % 7 # 7 days a week
  end
end

puts amount

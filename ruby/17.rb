#coding: utf-8

UNITS = {
	1 => "ONE",
	2 => "TWO",
	3 => "THREE",
	4 => "FOUR",
	5 => "FIVE",
	6 => "SIX",
	7 => "SEVEN",
	8 => "EIGHT",
	9 => "NINE"
}

TEENS = {
	10 => "TEN",
	11 => "ELEVEN",
	12 => "TWELVE",
	13 => "THIRTEEN",
	14 => "FOURTEEN",
	15 => "FIFTEEN",
	16 => "SIXTEEN",
	17 => "SEVENTEEN",
	18 => "EIGHTEEN",
	19 => "NINETEEN"
}

DECADES = {
	20 => "TWENTY",
	30 => "THIRTY",
	40 => "FORTY",
	50 => "FIFTY",
	60 => "SIXTY",
	70 => "SEVENTY",
	80 => "EIGHTY",
	90 => "NINETY"
}

HUNDRED = "HUNDRED"
AND = "AND"
THOUSAND = "THOUSAND"

# 1 ~ 9
units_sum = UNITS.values.inject(0) {|sum, x| sum + x.length }
# 10 ~ 20
teens_sum = TEENS.values.inject(0) {|sum, x| sum + x.length }
# 21 ~ 99
decades_sum = DECADES.values.inject(0) {|sum,x| sum + x.length * 10 + units_sum}

# 1 ~ 99
hundred_sum = units_sum + teens_sum + decades_sum

# 100 ~ 999
hundreds_sum = UNITS.values.inject(0) {|sum, x| sum + (x + HUNDRED).length + (x + HUNDRED + AND).length * 99 + hundred_sum }

puts hundred_sum + hundreds_sum + (UNITS[1] + THOUSAND).length

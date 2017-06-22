def power_digits(n)
  sum = 2 ** 1000
  sum = sum.to_s.split("").map{|x| x.to_i}.reduce(:+)
  return "The sum of the digits of 2 raised to the #{n} power is #{sum}"
end 

power_digits(1000) => 1366
#2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
#What is the sum of the digits of the number 2^1000?

def power_digits(n)
  sum = 2 ** n
  sum = sum.to_s.split("").map{|x| x.to_i}.reduce(:+)
    return sum 
end 

power_digits(1000) => 1366

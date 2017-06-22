#Surprisingly there are only three numbers that can be written as the sum of fourth powers of their digits:
#1634 = 1*4 + 6^4 + 3^4 + 4^4
#8208 = 8^4 + 2^4 + 0^4 + 8^4
#9474 = 9^4 + 4^4 + 7^4 + 4^4
#As 1 = 1^4 is not a sum it is not included.
#The sum of these numbers is 1634 + 8208 + 9474 = 19316.
#Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.

def digit_fifth_powers
  fifth_power_nums = []
#the highest we need to search, 9**5 * 6 = 354294
  (1..354294).each do |x|
  sum = 0
    x.to_s.split("").each do |x|
      sum += x.to_i ** 5
    end 
    fifth_power_nums << x if x == sum unless x == 1
  end 
    return fifth_power_nums.reduce(:+)
end 

digit_fifth_powers => 443839

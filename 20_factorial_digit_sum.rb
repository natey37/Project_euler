def factorial_digit_sum(n)
  sum = 1 
    n.downto(1) do |i|
      sum *= i 
    end 
      return sum.to_s.split("").map{|num| num.to_i}.reduce(:+)
end 

factorial_digit_sum(100) => 648
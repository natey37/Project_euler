def sum_of_multiples_of_three_and_five(n)
  (1...n).to_a.select{|x| x % 3 == 0 || x % 5 == 0 }.reduce(:+)
end 
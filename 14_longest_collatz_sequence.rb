#The following iterative sequence is defined for the set of positive integers:
#n → n/2 (n is even)
#n → 3n + 1 (n is odd)
#Using the rule above and starting with 13, we generate the following sequence:
#13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
#It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
#Which starting number, under one million, produces the longest chain?

def longest_collatz_sequence(n)
  n.downto(1) do |i|
    x = length_of_collatz_sequence(i)
    array << x 
  end 
  y = array.max
  longest_collatz_number = array.index(y)
    return n - longest_collatz_number
end

def length_of_collatz_sequence(n)    
  i = 0 
    until n == 1
      n = n.odd? ? (n * 3 + 1): n/2
      i += 1 
    end 
      return i + 1 
end 

longest_collatz_sequence(1000000) => 837799

#The Fibonacci sequence is defined by the recurrence relation:
#Fn = Fn−1 + Fn−2, where F1 = 1 and F2 = 1.
#Hence the first 12 terms will be:
#F1 = 1
#F2 = 1
#F3 = 2
#F4 = 3
#F5 = 5
#F6 = 8
#F7 = 13
#F8 = 21
#F9 = 34
#F10 = 55
#F11 = 89
#F12 = 144
#The 12th term, F12, is the first term to contain three digits.
#What is the index of the first term in the Fibonacci sequence to contain 1000 digits?

def fibonnaci_number(n)# n is the number of digits in the fibonnaci sequence number 
  fib_sequence = [1, 1]
  start = 2 
  until fib_sequence.last.to_s.split("").count == n
    new_num = fib_sequence[-2..-1].reduce(:+)
    fib_sequence << new_num
  end 
    return fib_sequence.index(fib_sequence.last) + 1 #index of array starts at 0 
end 

fibonnaci_number(1000) => 4782
#Starting with the number 1 and moving to the right in a clockwise direction a 5 by 5 spiral is formed as follows:
#21 22 23 24 25
#20  7  8  9 10
#19  6  1  2 11
#18  5  4  3 12
#17 16 15 14 13
#It can be verified that the sum of the numbers on the diagonals is 101.
#What is the sum of the numbers on the diagonals in a 1001 by 1001 spiral formed in the same way?

def number_spiral_diagonals(length_of_side)
=begin 
	7 8 9  
	6   2   
	5 4 3
  lets find a function f(n) that describes the spiral 
  f(0) = 1 (the middle of the spiral)
  f(1) = ? 
  	top right corner will be the length of a side of the square squared: (2n + 1)**2
  	top left corner: (2n + 1)**2 - 2n 
  	bottom left corner: (2n + 1)**2 - 4n 
  	bottom right corner: (2n +1)**2 - 6n
  adding those equations, gives us: f(n) = 4(2n + 1)**2 - 12n + f(n - 1)
  f(1) => 3 x 3 square 
  f(2) => 5 x 5 square 
  f(3) => 7 x 7 square 
  f(500) => 1001 x 1001 square
=end 
  sum = 0
  500.downto(1) do |num|
    sum += 4 * (2 * (num) + 1)**2 - 12 * (num)
  end 
    return sum + 1
  
end 

number_spiral_diagonals(1001) => 669171001
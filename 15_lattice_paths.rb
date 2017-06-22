#Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.
#How many such routes are there through a 20×20 grid?

def lattice_paths(n)
  row = Array.new(n + 1, 1)
    n.times do 
      (1..n).each do |i|
      	row[i] = row[i] + row[i-1]
      end 
    end 
      row.last
end 

lattice_paths(20) => 137846528820

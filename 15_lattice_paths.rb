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
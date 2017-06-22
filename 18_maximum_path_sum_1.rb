
# array is the triangle given, number of rows is the number of rows in the triangle 

def maximum_path_sum(array, number_of_rows)
  x = array.map{|num| num.to_i }
  new_array = []
  j = 0 
    number_of_rows.times do |i|
      new_array << x.slice(j, i + 1)
      j += i + 1
    end 
      new_array = new_array.map{|arr| arr.map{|x| x.to_i}}
      new_array = new_array.reverse
  
      a = new_array[0].each_cons(2).to_a
      b = new_array[1]
      c = b.zip(a)
      d = c.map{|arr| arr[0] + arr[1].max}

      (number_of_rows - 3).times do |i|
        a = d.each_cons(2).to_a 
        d.clear 
        b = new_array[i + 2]
        c = b.zip(a)
        d = c.map{|arr| arr[0] + arr[1].max}
      end 
        
        return d.max + new_array.last.join.to_i
end 

ARRAY = %w[
75
95 64
17 47 82
18 35 87 10
20 04 82 47 65
19 01 23 75 03 34
88 02 77 73 07 63 67
99 65 04 28 06 16 70 92
41 41 26 56 83 40 80 70 33
41 48 72 33 47 32 37 16 94 29
53 71 44 65 25 43 91 52 97 51 14
70 11 33 28 77 73 17 78 39 68 17 57
91 71 52 38 17 14 91 43 58 50 27 29 48
63 66 04 68 89 53 67 30 73 16 69 87 40 31
04 62 98 27 23 09 70 98 73 93 38 53 60 04 23
  ]

maximum_path_sum(ARRAY, 15)
      

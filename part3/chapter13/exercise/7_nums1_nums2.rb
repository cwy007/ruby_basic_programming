def sum_array(ary1, ary2)
  result = []
  ary1.zip(ary2) do |a1, a2|
    result << a1 + a2
  end 
  result 
end

p sum_array([1, 2, 3], [4, 6, 8])

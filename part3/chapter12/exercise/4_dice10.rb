def dice10
  result = 0
  10.times do 
    result += Random.rand(6)
  end 
  result
end 

p dice10


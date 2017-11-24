def fahr2cels(fahr)
  (fahr - 32) * 5 / 9
end 

(1..100).each do |i|
  if i % 2 == 0
    next
  end
  p fahr2cels(i)
end



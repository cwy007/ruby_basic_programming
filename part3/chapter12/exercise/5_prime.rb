def prime?(num)
  return false if num < 2
  2.upto(Math.sqrt(num)) do |i|
    if num % i == 0 
      return false 
    end
  end
  return true 
end

p prime?(2)
p prime?(7)
p prime?(12)
p prime?(1)

def power_of(n)
  Proc.new do |x|
    return x ** n 
  end
end

cube = power_of(3)
p cube.call(5)


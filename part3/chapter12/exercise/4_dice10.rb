def dice
  Random.rand(6) + 1
end

def dice10
  result = 0
  10.times do
    result += dice
  end
  result
end

p dice10

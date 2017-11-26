def str2hash(str)
  hash = Hash.new 
  ary = str.split(/\s+/)
  while key = ary.shift
    value = ary.shift
    hash[key] = value 
  end
  hash 
end

p str2hash("blue 蓝色 white 白色\nred 红色")


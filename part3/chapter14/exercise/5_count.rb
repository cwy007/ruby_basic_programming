str = "Ruby is an object oritented programming language"

count = {}
str.each_char do |c|
  count[c] = 0 unless count[c]  # 初始化, 可以通过 count = Hash.new(0) 设定默认值
  count[c] += 1
end

count.keys.sort.each do |c|
  printf ("'%s':%s\n", c, "*" * count[c])
end

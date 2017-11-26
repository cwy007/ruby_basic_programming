# 计算单词的数量
count = Hash.new(0)

## 统计单词
File.open(ARGV[0]) do |f|
  f.each_line do |line|
    words = line.split
    words.each do |word|
      count[word] += 1
    end
  end
end

## 输出结果
puts "============================="
count.sort{|a, b|
  a[1] <=> b[1]
}.each do |key, value|
  print "#{key}: #{value}\n"
end

# 李笑来提过的统计 GRE 考卷词汇出现次数的方法
p count = count.sort{|a, b|
  a[1] <=> b[1]
}

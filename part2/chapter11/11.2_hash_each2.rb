# 这里用到了多重赋值
# a, b = [1, 2]
# print a #=> 1
# print b #=> 2

sum = 0
outcome = {"参加费"=>1000, "挂号费"=>1000, "联欢会费用"=>4000}
outcome.each do |item, price|
  sum += price  # 指定值
end 
puts "合计：#{sum}"

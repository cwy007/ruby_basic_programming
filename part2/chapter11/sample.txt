sum = 0
outcome = {"参加费"=>1000, "挂号费"=>1000, "联欢会费用"=>4000}
outcome.each do |pair|
  sum += pair[1]  # 指定值
end 
puts "合计：#{sum}"

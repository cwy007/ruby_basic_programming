ary = %w(
  Ruby is a open source programming language with a focus
  on simplicity and productivity. It has an elegant syntax
  that is natural to read and easy to write
)

call_num = 0     # 块的调用次数
sorted = ary.sort_by do |item|
  call_num += 1  # 累加块的调用次数
  item.length
end 

puts "排序结果 #{sorted}"
puts "数组的元素数量 #{ary.length}"
puts "调用块的次数 #{call_num}"

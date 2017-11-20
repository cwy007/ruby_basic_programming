def myloop
  while true
    yield            # 执行块
  end
end

num = 1              # 初始化num
myloop do
  puts "num is #{num}"  # 输出num
  break if num > 100    # num 超过 100 是跳出循环
  num *= 2              # num 乘2
end 

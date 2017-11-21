class RingArray < Array  # 指定父类
  def[](i)               # 重新定义运算符[]
    idx = i % size       # 计算新索引值
    super(idx)           # 调用父类中的同名的方法
  end
end

wday = RingArray["日", "月", "火", "水", "木", "金", "土"]
p wday[6]
p wday[11]
p wday[15]
p wday[-1] 

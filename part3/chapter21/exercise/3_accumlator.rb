def accumlator
  total = 0
  Proc.new do |x|
    total += x
  end
end

acc = accumlator    # 这相当于新建了一个Proc对象，下面三个指令，都是在对同一个Proc对象调用
p acc.call(1)
p acc.call(2)
p acc.call(3)
p acc.call(4)


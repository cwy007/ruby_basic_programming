module HelloModule       # module 关键字
  Version = "1.0"

  def hello(name)        # 定义方法
    puts "Hello, #{name}."
  end

  def foo
    puts self
  end

  module_function :hello, :foo     # 指定hello方法为模块方法

end

p HelloModule::Version
HelloModule.hello("Alice")
HelloModule::hello("Alice")
HelloModule.foo

include HelloModule
p Version
hello("chanweiyan")

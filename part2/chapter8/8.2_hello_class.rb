class HelloWorld
  def initialize(myname = "Ruby")
    @name = myname
  end

  def name               # 获取name
    @name
  end

  def name=(value)       # 修改@name
    @name = value
  end

  def hello
    puts "Hello, world. I am #{@name}."
  end
end

bob = HelloWorld.new("Bob")
alice = HelloWorld.new("Alice")
ruby = HelloWorld.new

bob.hello
alice.hello
ruby.hello

puts bob.name 

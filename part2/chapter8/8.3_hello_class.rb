class HelloWorld
  def initialize(name)
    @name = name
  end

  attr_accessor :name

  def greet
    puts "Hi, I am #{self.name}."
  end
end

bob = HelloWorld.new("Bob")
bob.greet

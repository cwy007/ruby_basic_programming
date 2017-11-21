class Point
  attr_reader :x, :y

  def initialize(x=0, y=0)
    @x, @y = x, y
  end

  def inspect
    "#{x}, #{y}"   # 此处省略了代表实例的self
  end

  def +(other)
    self.class.new(x + other.x, y + other.y)
  end

  def -(other)
    self.class.new(x - other.x, y - other.y)
  end

  def +@
    dup            # 返回自己的副本
  end

  def -@
    self.class.new(-x, -y)
  end

  def ~@
    self.class.new(-y, x)       # 使坐标翻转90度
  end
end

point0 = Point.new(3, 6)
point1 = Point.new(1, 8)

p point0
p point1
p point0 + point1
p point0 - point1

p +point0
p -point0
p ~point0

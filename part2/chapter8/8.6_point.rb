class Point
  attr_accessor :x, :y   # 定义存取器
  protected :x=, :y=     # 把x= 与 y= 设定为 protected

  def initialize(x=0.0, y=0.0)
    @x, @y = x, y
  end

  def swap(other)     # 交换x, y 值的方法
    tmp_x, tmp_y = @x, @y
    @x, @y = other.x, other.y
    other.x, other.y = tmp_x, tmp_y   # 在同一个类中可以被调用

    return self
  end
end

p0 = Point.new
p1 = Point.new(1.0, 2.0)
p [p0.x, p0.y]
p [p1.x, p1.y]

p0.swap(p1)
p [p0.x, p0.y]
p [p1.x, p1.y]

p0.x = 10.0

# protected 在同一类中可以作为实例方法来调用
# 定义实例方法时使用

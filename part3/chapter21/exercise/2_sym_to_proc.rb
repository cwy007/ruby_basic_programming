to_class = :class.to_proc

p to_class
p to_class.call("test")
p to_class.call(123)
p to_class.call(2 ** 1000)
p to_class.call([1, 2, 3])



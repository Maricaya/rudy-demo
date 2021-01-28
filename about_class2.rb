class D
  def x
    'x'
  end
end

class D
  def y
    'y'
  end
end

obj = D.new
p obj.x
p obj.y

# "x"
# "y"
#
# 说明多处类定义会合并
# 第二次定义 D，叫做「打开类」open class
#
# 因此 words_of_string 实际上是打开 String 类，然后添加了一个 to_words 方法

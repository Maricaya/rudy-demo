class D
  def x; 'x'; end
end

class D
  def y; 'y'; end
end

obj = D.new
p obj.x
p obj.y

# 这说明多出类定义会合并
# 第二次定义 D，叫做「打开类」open class
# ruby 的 class 更像一个作用域标记，而不是声明语句
#
# 因此 words_of_string 实际上是打开 String 类，然后添加了一个 to_words 方法
#
# 接下来请看 inside_class.rb
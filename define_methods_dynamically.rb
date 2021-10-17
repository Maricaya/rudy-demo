class MyClass
  define_method :my_method do |n|
    n * 3
  end
end

require 'test/unit'

obj = MyClass.new
p obj.my_method(2)

# class MyClassTest < Test::Unit::TestCase
#   def test_1
#     obj = MyClass.new
#     assert_equal obj.my_method(2), 6
#   end
# end

# 动态定义的好处是：可以在运行时决定方法名，而不是在写代码时
# 这在批量创建方法时非常有用
#
# 接下来请看 method_missing.rb

class A
  def fred
    puts "In Fred"
  end

  def create_method(name, &block)
    self.class.define_method(name, &block)
  end

  define_method(:wilma) { puts "Charge it!" }
end

class B < A
  define_method(:barney, instance_method(:fred))
end
p '--start--'
b = B.new
# In Fred
p b.barney # nil
p '--barney--'
# Charge it!
p b.wilma
p '--wilma--'
p b.create_method(:betty) { p self } # :betty
p '--fred--'
# In Fred
p b.fred
p '--end--'

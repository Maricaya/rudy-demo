# 大写字母开头即为常量
# 你如果违反这个「约定」，你会得到一个警告
#
# 常量的作用域

Const1 = 'root const'
module MyModule # 姑且认为 module 和 class 没什么区别
  Const1 = 'outer const'
  class MyClass
    Const1 = 'inner const'
    p 'Module.nesting'
    p Module.nesting
  end
  p Const1 # 'outer const'
  p MyClass::Const1 # 'inner const'
end
p Const1
p MyModule::Const1 # 'outer const'
p MyModule::MyClass::Const1 # 'inner const'
p ::Const1 # 'root const'
#
p 'MyModule.constants 方法得到 MyModule 内部的所有一级常量'
p MyModule.constants
p '要区别于 Module.constants，它会得到所有顶层常量'
p Module.constants[0..3] # 由于顶层常量太多了，所以用 [0..3] 截取前4个
p MyModule.is_a? Module # true - 说明 MyModule 是 Module 的实例
# 这是因为 MyModule.constants 是实例方法，Module.constants 是类方法，所以他们的作用不同

# 你还可以在任何地方使用 Module.nesting 打印出当前作用域的层级结构
#
# 接下来请看 receiver_and_ancestors_chain.rb
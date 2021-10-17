module M2
  def my_method
    'M2#my_method()'
  end
end

class C2
  prepend M2 # 相当于 M2 < C2 引入模块，改变查找顺序
end

class D2 < C2

end

p D2.ancestors
# [D2, M2, C2,]
d2 = D2.new
p d2.my_method

# 知道了如何查找方法，接下来看看如何执行方法 execute_method.rb

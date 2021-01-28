def to_words(s)
  s.gsub(/[^\da-zA-Z\s]/, '')
end

# 先运行命令
require 'test/unit'

class ToWordsTest < Test::Unit::TestCase
  def test_1
    assert_equal '3 the Magic Number', to_words('#3, the *Magic, Number*?')
  end
end

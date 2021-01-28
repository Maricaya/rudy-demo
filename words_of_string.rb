class String
  def to_words
    self.gsub(/[^\da-zA-Z\s]/, '') # self 可以省略
  end
end

require 'test/unit'

class ToWordsTest < Test::Unit::TestCase
  def test_1
    assert_equal '3 the Magic Number', '#3, the *Magic, Number*?'.to_words

  end
end
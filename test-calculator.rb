# http://nabetani.sakura.ne.jp/kanagawa.rb/evalex/

require "test-unit"
require "./calculator"

# TODO: http://www.clear-code.com/blog/2013/1/23.html
class CalculatorTest < Test::Unit::TestCase
  def setup
    @calculator = Calculator.new
  end

  def test_add
    assert_equal(11, @calculator.execute("5+6"))
  end

  def test_and
    assert_equal(4, @calculator.execute("5&6"))
  end

  def test_all_operators
    assert_equal(44, @calculator.execute("4*5+6&7|8"))
  end
end

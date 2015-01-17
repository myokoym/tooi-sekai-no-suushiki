# http://nabetani.sakura.ne.jp/kanagawa.rb/evalex/

require "./calculator"

class CalculatorTest < Test::Unit::TestCase
  def setup
    @calculator = Calculator.new
  end

  load_data("sampledata.csv")
  def test_execute(data)
    assert_equal(data["expected"],
                 @calculator.execute(data["input"]))
  end
end

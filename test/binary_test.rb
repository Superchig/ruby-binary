require 'minitest/autorun'
require_relative '../lib/binary_converter.rb'

class TestBinary < MiniTest::Test
  def test_binary_to_decimal
    assert_equal 36, Binary.to_dec("100100")
  end

  def test_binary_validity
    assert_raises StandardError do
      Binary.to_dec(4212)
      Binary.to_dec("231")
    end
  end
end

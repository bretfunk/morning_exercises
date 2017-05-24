require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './taylor_swift'

class TestTaylor < Minitest::Test

  def test_import
    test = Taylor.new
    result = test.nil?
    assert_equal false, result
  end

end

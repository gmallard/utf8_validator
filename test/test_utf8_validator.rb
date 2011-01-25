require 'helper'

class TestUtf8Validator < Test::Unit::TestCase
  #
  def test_0010_linkages
    validator = UTF8::Validator.new
    assert_not_nil validator
  end
end

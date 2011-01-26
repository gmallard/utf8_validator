# encoding: utf-8
#
require 'helper'

class TestRaiseRequect < Test::Unit::TestCase
  #
  def setup
    @validator = UTF8::Validator.new
  end

  #
  def teardown
    @validator = nil
  end

  # An ISO-8859-1 character
  def test_0010_check_raise
    #
    assert_raise(UTF8::ValidationError) do
     !@validator.valid_encoding?(0x80.chr, true)
    end
    #
    assert_raise(UTF8::ValidationError) do
     !@validator.valid_encoding?("a" + 0xff.chr + "b", true)
    end
  end

end


# encoding: utf-8
#
require 'helper'

#
# == Purpose
#
# Test raise_on_error functionality.
#
class TestRaiseRequect < Test::Unit::TestCase
  #
  def setup
    @validator = UTF8::Validator.new
  end

  #
  def teardown
    @validator = nil
  end

  # ISO-8859-1 characters
  def test_0010_check_raise_iso
    #
    assert_raise(UTF8::ValidationError) do
     !@validator.valid_encoding?(0x80.chr, true)
    end
  end

  # A regular old bad byte
  def test_0020_check_raise_badbyte
    #
    assert_raise(UTF8::ValidationError) do
     !@validator.valid_encoding?("a" + 0xff.chr + "b", true)
    end
  end

end


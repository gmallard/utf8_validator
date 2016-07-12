# encoding: utf-8
#
#--
# Copyright (c) 2016 Guy Allard
#--
if Kernel.respond_to?(:require_relative)
  require_relative("./helper")
else
  $:.unshift(File.dirname(__FILE__))
  require 'helper'
end

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

  # Check message from raise
  def test_0030_check_raise_message
    #
    begin
      @validator.valid_encoding?("a\xffb\xfec", true)
    rescue UTF8::ValidationError => e
      assert e.message =~ /^Invalid byte/
    end
  end

end


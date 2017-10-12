# encoding: utf-8
#
# This file is machine generated.  DO NOT EDIT!
#
if Kernel.respond_to?(:require_relative)
  require_relative("./helper")
else
  $:.unshift(File.dirname(__FILE__))
  require 'helper'
end
#
# == Purpose
#
# Tests for the #{UTF8::Validator} implementation.
#
# Test data pulled and generated from:
#
# https://www.unicode.org/Public/10.0.0/ucd/
#
class TestUnicode10NormalizationCorrections < Test::Unit::TestCase
  #
  def setup
    @validator = UTF8::Validator.new
    @vercheck = ((RUBY_VERSION =~ /1.9/) or (RUBY_VERSION =~ /2./)) ? true : false
  end

  #
  def teardown
    @validator = nil
  end

  def test_unicode10_NormalizationCorrections
    test_data = [
      "\dF951",  # Corrigendum 3
      "\d96FB",  # Corrigendum 3
      "\d964B",  # Corrigendum 3
      "\d2F868",  # Corrigendum 4
      "\d2136A",  # Corrigendum 4
      "\d36FC",  # Corrigendum 4
      "\d2F874",  # Corrigendum 4
      "\d5F33",  # Corrigendum 4
      "\d5F53",  # Corrigendum 4
      "\d2F91F",  # Corrigendum 4
      "\d43AB",  # Corrigendum 4
      "\d243AB",  # Corrigendum 4
      "\d2F95F",  # Corrigendum 4
      "\d7AAE",  # Corrigendum 4
      "\d7AEE",  # Corrigendum 4
      "\d2F9BF",  # Corrigendum 4
      "\d4D57",  # Corrigendum 4
      "\d45D7",  # Corrigendum 4
    ]
    test_data.each do |string|
      assert @validator.valid_encoding?(string), "U10_NormalizationCorrections: #{string}"
      assert string.force_encoding("UTF-8").valid_encoding?, "U10_NormalizationCorrections: #{string}" if @vercheck
    end
  end

end

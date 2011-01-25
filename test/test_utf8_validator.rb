# encoding: utf-8
#
require 'helper'

class TestUtf8Validator < Test::Unit::TestCase
  #
  def setup
    @validator = UTF8::Validator.new
  end

  #
  def test_0010_linkages
    assert_not_nil @validator
  end

  #---
  # Validation should succeed for the following tests
  #---

  # Some simple ASCII characters
  def test_0020_simple_ascii
    test_data = [
      "a",
      "abcdefghijjlmnopqrstuvwxyz",
      "\x00",
    ]
    test_data.each do |string|
      assert @validator.valid_encoding?(string), "Simple ASCII: #{string}"
      assert string.force_encoding("UTF-8").valid_encoding?, "Simple ASCII 19: #{string}" if RUBY_VERSION =~ /1\.9/
    end
  end

  # All ASCII
  def test_0030_all_ascii
    0.upto(127) do |i|
      assert @validator.valid_encoding?(i.chr), "All ASCII: #{i.chr}"
      assert i.chr.force_encoding("UTF-8").valid_encoding?, "All ASCII 19: #{i.chr}" if RUBY_VERSION =~ /1\.9/
    end
  end

  # Simple UTF8 - 2 byte characters
  def test_0040_simple_utf8_2byte
    test_data = [
      "\xc2\x80",
      "\xc2\xbf",
      "\xdf\x80",
      "\xdf\xbf",
    ]
    test_data.each do |string|
      assert @validator.valid_encoding?(string), "Simple UTF-8, 2bytes: #{string}"
      assert string.force_encoding("UTF-8").valid_encoding?, "Simple UTF-8 19, 2bytes: #{string}"  if RUBY_VERSION =~ /1\.9/
    end
  end

  # Simple UTF8 - 3 byte characters
  def test_0050_simple_utf8_3byte
    test_data = [
      "\xe0\xa0\x80",
      "\xe0\xbf\x80",
      "\xe0\xa0\xbf",
      "\xe0\xbf\xbf",
    ]
    test_data.each do |string|
      assert @validator.valid_encoding?(string), "Simple UTF-8, 3bytes: #{string}"
      assert string.force_encoding("UTF-8").valid_encoding?, "Simple UTF-8 19, 3bytes: #{string}"  if RUBY_VERSION =~ /1\.9/
    end
  end

  # Simple UTF8 - 4 byte characters
  def test_0060_simple_utf8_4byte
    test_data = [
      "\xf1\x80\x80\x80",
      "\xf1\xbf\xbf\xbf",
      "\xf2\x80\x80\x80",
      "\xf2\xbf\xbf\xbf",
      "\xf3\x80\x80\x80",
      "\xf3\xbf\xbf\xbf",
    ]
    test_data.each do |string|
      assert @validator.valid_encoding?(string), "Simple UTF-8, 4bytes: #{string}"
      assert string.force_encoding("UTF-8").valid_encoding?, "Simple UTF-8 19, 4bytes: #{string}"  if RUBY_VERSION =~ /1\.9/
    end
  end

  #---
  # Validation should fail for the following tests
  #---


  # ISO-8859-1 (C1 points)
  def test0510_iso_5559_1
    0x80.upto(0x9f) do |i|
      assert !@validator.valid_encoding?(i.chr), "ISO-8859-1: #{i}"
      assert !i.chr.force_encoding("UTF-8").valid_encoding?, "ISO-8859-1 19: #{i}"  if RUBY_VERSION =~ /1\.9/
    end
  end

  # UTF-16 Surrogate Halves
  def test0520_utf16_surrogate_halves
    test_data = [
      "\xed\xa0\x80", # u-800 (lowest)
      "\xed\xbf\xbf", # u-fff (highest)
    ]
    test_data.each do |string|
      assert !@validator.valid_encoding?(string), "UTF-16 Surrogate Halves: #{string}"
      assert !string.force_encoding("UTF-8").valid_encoding?, "UTF-16 Surrogate Halves 19: #{string}"  if RUBY_VERSION =~ /1\.9/
    end
  end

  # Invalid single bytes
  def test0530_invalid_single_bytes
    test_data = [
      "\xc0",
      "\xc1",
      "\xf5","\xf6","\xf7","\xf8","\xf9","\xfa","\xfb","\xfc",
      "\xfd","\xfe","\xff",
    ]
    test_data.each do |string|
      assert !@validator.valid_encoding?(string), "Invalid single bytes: #{string}"
      assert !string.force_encoding("UTF-8").valid_encoding?, "Invalid single bytes 10: #{string}"  if RUBY_VERSION =~ /1\.9/
    end
  end

  # Not shortest representation
  def test0540_not_shortest
    test_data = [
      "\xc0\x80",
      "\xe0\x80\x80",
      "\xf0\x80\x80\x80",
      "\xf8\x80\x80\x80\x80",
      "\xfc\x80\x80\x80\x80\x80",
    ]
    test_data.each do |string|
      assert !@validator.valid_encoding?(string), "Not shortest: #{string}"
      assert !string.force_encoding("UTF-8").valid_encoding?, "Not shortest 19: #{string}"  if RUBY_VERSION =~ /1\.9/
    end
  end

  # Truncated last character
  def test0550_truncated_last
    test_data = [
      "\xc2",  # truncated 2 byte characters
      "\xdf",
      "\xe0\xa0", # truncated 3 byte characters
      "\xe0\xbf",
      "\xf1\x80\x80", # truncated 4 byte characters
      "\xf1\xbf\xbf",
      "\xf2\x80\x80",
      "\xf2\xbf\xbf",
      "\xf3\x80\x80",
      "\xf3\xbf\xbf",
    ]
    test_data.each do |string|
      assert !@validator.valid_encoding?(string), "truncated last: #{string}"
      assert !string.force_encoding("UTF-8").valid_encoding?, "truncated last 19: #{string}"  if RUBY_VERSION =~ /1\.9/
    end
  end

  # Truncated in good text
  def test0560_intruncated_in_good
    test_data = [
      "\xc2",  # truncated 2 byte characters
      "\xdf",
      "\xe0\xa0", # truncated 3 byte characters
      "\xe0\xbf",
      "\xf1\x80\x80", # truncated 4 byte characters
      "\xf1\xbf\xbf",
      "\xf2\x80\x80",
      "\xf2\xbf\xbf",
      "\xf3\x80\x80",
      "\xf3\xbf\xbf",
    ]
    test_data.each do |string|
      string = "a" + string + "b"
      assert !@validator.valid_encoding?(string), "truncated in good: #{string}"
      assert !string.force_encoding("UTF-8").valid_encoding?, "truncated in good 19: #{string}"  if RUBY_VERSION =~ /1\.9/
    end
  end

end


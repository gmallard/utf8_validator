# encoding: utf-8
#
require 'helper'

#
# == Purpose
#
# Tests for the #{UTF8::Validator} implementation.
#
# Some test data pulled directly from:
#
# http://www.cl.cam.ac.uk/~mgk25/ucs/examples/UTF-8-test.txt
#
class TestUtf8Validator < Test::Unit::TestCase
  #
  def setup
    @validator = UTF8::Validator.new
  end

  #
  def teardown
    @validator = nil
  end

  #
  def test_0010_linkages
    assert_not_nil @validator
  end

  #--
  # Validation should succeed for the following tests
  #--

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

  #--
  # Validation should fail for the following tests
  #--


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
      "\xed\xa0\x80",
      "\xed\xad\xbf",
      "\xed\xae\x80",
      "\xed\xaf\xbf",
      "\xed\xb0\x80",
      "\xed\xbe\x80",
      "\xed\xbf\xbf",
    ]
    test_data.each do |string|
      assert !@validator.valid_encoding?(string), "UTF-16 Surrogate Halves: #{string}"
      assert !string.force_encoding("UTF-8").valid_encoding?, "UTF-16 Surrogate Halves 19: #{string}"  if RUBY_VERSION =~ /1\.9/
    end
  end

  #--
  # I do not see a need to test UTF-16 surrogate pairs.  They are guaranteed
  # to alyays fail if the preceding test succeeds.  This is because the 
  # preceeding test data values are always the first surrogate of the pair.
  #
  # UTF-16 surrogates are clearly something I do not understand.
  #--

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
  def test0560_truncated_in_good
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

  # Miscellaneous Bad
  def test0570_miscellaneous_bad
    # perhaps some duplication here
    test_data = [
      "bad byte: \372",
      "\004\b{\f:\tbody\"\001\207\004\b{\b:\016statusmsg\"\aOK:\017statuscodei\000:\tdata{\t:\voutput\"3Enabled, not running, last run 693 seconds ago:\frunningi\000:\fenabledi\006:\flastrunl+\aE\021\022M:\rsenderid\"\032xx.xx.xx.xx:\016requestid\"%849d647bbe3e421ea19ac9f947bbdde4:\020senderagent\"\fpuppetd:\016msgtarget\"%/topic/mcollective.puppetd.reply:\thash\"\001\257ZdQqtaDmmdD0jZinnEcpN+YbkxQDn8uuCnwsQdvGHau6d+gxnnfPLUddWRSb\nZNMs+sQUXgJNfcV1eVBn1H+Z8QQmzYXVDMqz7J43jmgloz5PsLVbN9K3PmX/\ngszqV/WpvIyAqm98ennWqSzpwMuiCC4q2Jr3s3Gm6bUJ6UkKXnY=\n:\fmsgtimel+\a\372\023\022M",
      "\207",
      "\xf4\x90\x80\x80",
      "\xbf",
      "\xe0\x9f\xbf",
      "\xf0\x8f\xbf\xbf",
      "\xf8\x87\xbf\xbf\xbf",
      "\xfc\x83\xbf\xbf\xbf\xbf",
      "\xc0\x80",
      "\xe0\x80\x80",
      "\xf0\x80\x80\x80",
      "\xf8\x80\x80\x80\x80",
      "\xfc\x80\x80\x80\x80\x80",
      "\xed\xa0\x80",
      "\xed\xad\xbf",
      "\xed\xae\x80",
      "\xed\xaf\xbf",
      "\xed\xb0\x80",
      "\xed\xbe\x80",
      "\xed\xbf\xbf",
      "\xc0\x00", # too long for \x00
      "\xe0\x00\x00", # too long for \x00
      "\xf0\x00\x00\x00", # too long for \x00
    ]
    test_data.each do |string|
      assert !@validator.valid_encoding?(string), "miscellaneous bad: #{string}"
      assert !string.force_encoding("UTF-8").valid_encoding?, "miscellaneous bad 19: #{string}"  if RUBY_VERSION =~ /1\.9/
    end
  end


  # Maximum overlong sequences
  def test0580_max_overlong_seqs
    test_data = [
      "\xc1\xbf",
      "\xe0\x9f\xbf",
      "\xf0\x8f\xbf\xbf",
      "\xf8\x87\xbf\xbf\xbf",
      "\xfc\x83\xbf\xbf\xbf\xbf",
    ]
    test_data.each do |string|
      assert !@validator.valid_encoding?(string), "max overlong seq: #{string}"
      assert !string.force_encoding("UTF-8").valid_encoding?, "max overlong seq 19: #{string}"  if RUBY_VERSION =~ /1\.9/
    end
  end

end


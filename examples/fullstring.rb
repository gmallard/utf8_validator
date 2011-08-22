# encoding: utf-8
#
# Show how to parse a full string with multiple UTF8 validation failures.
# Accumulate error information, and report it.
#
require 'rubygems' unless RUBY_VERSION =~ /1\.9/
require 'utf8_validator'
#
# = Purpose
#
# A helper class for processing multiple validation errors in a single string.
#
class ValidationHelper
  #
  attr_reader :error_list
  #
  # Get a validator instance.
  #
  def initialize
    @validator = UTF8::Validator.new
  end
  #
  # Validate the whole string.
  #
  def scanstring(string)
    @error_list = ""
    work_string = string
    run_pos = 0
    begin
      @validator.valid_encoding?(work_string, true)
    rescue UTF8::ValidationError => e
      # Extract offset of error, keep running offset up to date
      last_colon = e.message.rindex(':')
      last_lparen = e.message.rindex('(')
      epos = e.message[last_colon+1..last_lparen-1]
      sub_start = epos.to_i
      if run_pos == 0
        run_pos += sub_start
      else
        run_pos += sub_start + 1
      end
      # Start again at error offset + 1
      work_string = work_string[sub_start+1..-1]
      # Build next error message
      next_emsg = e.message[0..last_colon]    # Part A of current message
      # Add running offset position
      run_pos_str = sprintf "%d(0x%x)", run_pos, run_pos
      next_emsg += run_pos_str
      #
      @error_list += next_emsg
      @error_list += "\n"
      retry
    end
  end
end
#
puts "Started"
puts
#
helper = ValidationHelper.new
#
test_data = [
  "a\xffbc\xfed",
  "abcdefghijk\xffbcdefghijk\xfecdefg",
  "anoerrorsz",
  "errorlast\x80",
  "a\xffbcd\xfeefgh\xfd123",
  "y\xe2\x88\x88z",
]
#
test_data.each do |string|
  puts "/" * 60
  puts "#{string}"
  helper.scanstring(string)
  puts "#{helper.error_list}"
end
#
puts
puts "Complete"


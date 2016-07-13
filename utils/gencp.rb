# encoding: utf-8
#
#--
# Copyright (c) 2016 Guy Allard
#--
#
# Generate UTF8 Code Points
#
=begin

From wikipediia:

Bits_of_code_point	First_code_point	Last_code_point	Bytes_in_sequence	Byte_1	    Byte_2	    Byte_3	    Byte_4	   Byte_5	       Byte_6
  7	                            U+0000	             U+007F             	1                             	0xxxxxxx
11                           	U+0080	              U+07FF             	 2                             	110xxxxx 	10xxxxxx
16                          	U+0800               	U+FFFF            	 3                             	1110xxxx	10xxxxxx	10xxxxxx
21                          	U+10000             U+1FFFFF           4                             	11110xxx  10xxxxxx  10xxxxxx	10xxxxxx
The following sequences are not part of the UTF-8 standard, only part of the original proposal
26	                          U+200000	          U+3FFFFFF	       5                             	111110xx	10xxxxxx	10xxxxxx	10xxxxxx	10xxxxxx
31                            U+4000000	         U+7FFFFFFF	     6                            	1111110x 	10xxxxxx	10xxxxxx  10xxxxxx 	10xxxxxx	10xxxxxx

Note:  in the U+ notation the numbers are hexadecimal

=end

class CPData

  attr_reader :name, :ubytes, :first, :last

  def initialize(name, ubytes, first, last)
    @name, @ubytes, @first, @last = name, ubytes, first, last
  end
end
#
bits7 = CPData.new("char1", 4, 0x0000, 0x007f)
bits11 = CPData.new("char2", 4, 0x0080, 0x07ff)
bits16a = CPData.new("char3a", 4, 0x0800, 0xcfff)
bits16b = CPData.new("char3b", 4, 0xe000, 0xffff)
bits21 = CPData.new("char4", 5, 0x10000, 0x1ffff)
#
bits26 = CPData.new("char5", 6, 0x10000, 0x1ffff)
bits31 = CPData.new("char6", 7, 0x10000, 0x1ffff)
bitssp = CPData.new("surrpair", 4, 0xd800, 0xdfff)
###########

def dquote(inp)
    "\"#{inp}\""
end

pa = [bits7, bits11, bits16a, bits16b, bits21, bitssp]

pa.each do |na|
  n = 0
  na.first.upto(na.last) do |nn|
    n += 1
    hs = sprintf("\\u%04x", nn)
    puts "#{dquote(hs)},      # CPData Name: #{na.name} n:#{n}"
  end
end

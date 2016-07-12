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
    @vercheck = ((RUBY_VERSION =~ /1\.9/) or (RUBY_VERSION =~ /2\./)) ? true : false
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
      assert string.force_encoding("UTF-8").valid_encoding?, "Simple ASCII 19: #{string}" if @vercheck
    end
  end

  # All ASCII
  def test_0030_all_ascii
    0.upto(127) do |i|
      assert @validator.valid_encoding?(i.chr), "All ASCII: #{i.chr}"
      assert i.chr.force_encoding("UTF-8").valid_encoding?, "All ASCII 19: #{i.chr}" if @vercheck
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
      assert string.force_encoding("UTF-8").valid_encoding?, "Simple UTF-8 19, 2bytes: #{string}"  if @vercheck
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
      assert string.force_encoding("UTF-8").valid_encoding?, "Simple UTF-8 19, 3bytes: #{string}"  if @vercheck
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
      assert string.force_encoding("UTF-8").valid_encoding?, "Simple UTF-8 19, 4bytes: #{string}"  if @vercheck
    end
  end

  # Boundary conditions
  def test_0070_boundary_conditions
    test_data = [
      "\xed\x9f\xbf", # = "\ud7ff"
      "\xee\x80\x80", # = "\ue000"
      "\xef\xbf\xbd", # = "\ufffd"
      "\xf4\x8f\xbf\xbf", # = "\U10ffff"
    ]
    test_data.each do |string|
      assert @validator.valid_encoding?(string), "boundary conditions: #{string}"
      assert string.force_encoding("UTF-8").valid_encoding?, "boundary conditions 19: #{string}"  if @vercheck
    end
  end

  # Interesting valid strings
  def test_0080_interesting_valid_strings
    test_data = [
      "“Iñtërnâtiônàlizætiøn”", # A suggestion from the net
      "\xd0\x9b\xd0\x93\xd0\xa2\xd0\x9c", # An interesting Russian string from the 'go' guys ....
      "\xd0\x9bГТМ", # A variation on that
      "cafe\u0301", # Also from the net, https://groups.google.com/forum/#!topic/golang-nuts/yLt9uZcn1k8
      "ssıʎ ʍɐ", # Also from the net, just a user name I think ....
      "\u004b", # "K" - the letter K
      "\u212a", # "K" - the Kelvin sign
      "\u03a9", # "Ω" - Omega
      "\u2126", # "Ω" - The Ohm sign
    ]
    test_data.each do |string|
      assert @validator.valid_encoding?(string), "interesting valid strings: #{string}"
      assert string.force_encoding("UTF-8").valid_encoding?, "interesting valid strings 19: #{string}"  if @vercheck
    end
  end

  # Runes, reference:
  # http://en.wikipedia.org/wiki/Runes
  def test_0090_runes
    test_data = [
      "\u1680","\u1681","\u1682","\u1683","\u1684","\u1685","\u1686","\u1687",
      "\u1688","\u1689","\u168a","\u168b","\u168c","\u168d","\u168e","\u168f",
      "\u1690","\u1691","\u1692","\u1693","\u1694","\u1695","\u1696","\u1697",
      "\u1698","\u1699","\u169a","\u169b","\u169c","\u169d","\u169e","\u169f",
      "\u16a0","\u16a1","\u16a2","\u16a3","\u16a4","\u16a5","\u16a6","\u16a7",
      "\u16a8","\u16a9","\u16aa","\u16ab","\u16ac","\u16ad","\u16ae","\u16af",
      "\u16b0","\u16b1","\u16b2","\u16b3","\u16b4","\u16b5","\u16b6","\u16b7",
      "\u16b8","\u16b9","\u16ba","\u16bb","\u16bc","\u16bd","\u16be","\u16bf",
      "\u16c0","\u16c1","\u16c2","\u16c3","\u16c4","\u16c5","\u16c6","\u16c7",
      "\u16c8","\u16c9","\u16ca","\u16cb","\u16cc","\u16cd","\u16ce","\u16cf",
      "\u16d0","\u16d1","\u16d2","\u16d3","\u16d4","\u16d5","\u16d6","\u16d7",
      "\u16d8","\u16d9","\u16da","\u16db","\u16dc","\u16dd","\u16de","\u16df",
      "\u16e0","\u16e1","\u16e2","\u16e3","\u16e4","\u16e5","\u16e6","\u16e7",
      "\u16e8","\u16e9","\u16ea","\u16eb","\u16ec","\u16ed","\u16ee","\u16ef",
      "\u16f0",

    ]
    test_data.each do |string|
      assert @validator.valid_encoding?(string), "interesting valid strings: #{string}"
      assert string.force_encoding("UTF-8").valid_encoding?, "interesting valid strings 19: #{string}"  if @vercheck
    end
  end

  #--
  # Validation should fail for the following tests
  #--


  # ISO-8859-1 (C1 points)
  def test0510_iso_5559_1
    0x80.upto(0x9f) do |i|
      assert !@validator.valid_encoding?(i.chr), "ISO-8859-1: #{i}"
      assert !i.chr.force_encoding("UTF-8").valid_encoding?, "ISO-8859-1 19: #{i}"  if @vercheck
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
      assert !string.force_encoding("UTF-8").valid_encoding?, "UTF-16 Surrogate Halves 19: #{string}"  if @vercheck
    end
  end

  #--
  # I do not see a need to test UTF-16 surrogate pairs.  They are guaranteed
  # to always fail if the preceding test succeeds.  This is because the
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
      assert !string.force_encoding("UTF-8").valid_encoding?, "Invalid single bytes 10: #{string}"  if @vercheck
    end
  end

  # Not shortest representation
  def test0540_not_shortest
    test_data = [
      "\xc0\x80",
      "\xc1\x80",
      "\xc0\x30",
      "\xc1\x30",
      "\xe0\x80\x80",
      "\xf0\x80\x80\x80",
    ]
    test_data.each do |string|
      assert !@validator.valid_encoding?(string), "Not shortest: #{string}"
      assert !string.force_encoding("UTF-8").valid_encoding?, "Not shortest 19: #{string}"  if @vercheck
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
      assert !string.force_encoding("UTF-8").valid_encoding?, "truncated last 19: #{string}"  if @vercheck
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
      assert !string.force_encoding("UTF-8").valid_encoding?, "truncated in good 19: #{string}"  if @vercheck
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
      assert !string.force_encoding("UTF-8").valid_encoding?, "miscellaneous bad 19: #{string}"  if @vercheck
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
      assert !string.force_encoding("UTF-8").valid_encoding?, "max overlong seq 19: #{string}"  if @vercheck
    end
  end

  # Boundary conditions
  def test_0590_boundary_conditions
    test_data = [
      "\xf4\x90\x80\x80", # See: http://software.hixie.ch/utilities/cgi/unicode-decoder/utf8-decoder
    ]
    test_data.each do |string|
      assert !@validator.valid_encoding?(string), "boundary conditions: #{string}"
      assert !string.force_encoding("UTF-8").valid_encoding?, "boundary conditions 19: #{string}"  if @vercheck
    end
  end

=begin

The next test is based on examples provided in the Unicode 6.0 specification.
See pages 91-92.

From that specification:

• The UTF-8 code unit sequence <41 C3 B1 42> is well-formed, because it can be
partitioned into subsequences, all of which match the specification for UTF-8
in Table 3-7. It consists of the following minimal well-formed code unit subse-
quences: <41>, <C3 B1>, and <42>.

• The UTF-8 code unit sequence <41 C2 C3 B1 42> is ill-formed, because it con-
tains one ill-formed subsequence. There is no subsequence for the C2 byte
which matches the specification for UTF-8 in Table 3-7. The code unit sequence
is partitioned into one minimal well-formed code unit subsequence, <41>, fol-
lowed by one ill-formed code unit subsequence, <C2>, followed by two mini-
mal well-formed code unit subsequences, <C3 B1> and <42>.

• In isolation, the UTF-8 code unit sequence <C2 C3> would be ill-formed, but
in the context of the UTF-8 code unit sequence <41 C2 C3 B1 42>, <C2 C3>
does not constitute an ill-formed code unit subsequence, because the C3 byte is
actually the first byte of the minimal well-formed UTF-8 code unit subse-
quence <C3 B1>. Ill-formed code unit subsequences do not overlap with mini-
mal well-formed code unit subsequences.

// Above:

straight from the Unicode 6.0 spec.  See page 91.

• As another example, the code unit sequence <C0 80 61 F3> is a Unicode 8-bit
string, but does not consist of a well-formed UTF-8 code unit sequence. That
code unit sequence could not result from the specification of the UTF-8 encod-
ing form and is thus ill-formed. (The same code unit sequence could, of course,
be well-formed in the context of some other character encoding standard using
8-bit code units, such as ISO/IEC 8859-1, or vendor code pages.)

// Above:

straight from the Unicode 6.0 spec.  See page 92.

=end

  # Tests from examples in the Unicode speciication
  def test_0600_unicode_specs

    good_data = [
      "\x41\xc3\xb1\x42",
    ]
    good_data.each do |string|
      assert @validator.valid_encoding?(string), "good unicode specs 01: #{string}"
      assert string.force_encoding("UTF-8").valid_encoding?,
        "good unicode specs 01 19: #{string}"  if @vercheck
    end

    bad_data = [
      "\x41\xc2\xc3\xb1\x42",
    ]
    bad_data.each do |string|
      assert !@validator.valid_encoding?(string), "bad unicode specs 02: #{string}"
      assert !string.force_encoding("UTF-8").valid_encoding?,
        "bad unicode specs 02 19: #{string}"  if @vercheck
    end

  end

=begin

Test derived from data in:

http://babelstone.blogspot.de/2013/10/whats-new-in-unicode-70.html

http://www.babelstone.co.uk/Unicode/7_0_new.txt

=end

  def test_0700_uc7
    test_data = [
    "\u037F",    # GREEK CAPITAL LETTER YOT
    "\u0528",    # CYRILLIC CAPITAL LETTER EN WITH LEFT HOOK
    "\u0529",    # CYRILLIC SMALL LETTER EN WITH LEFT HOOK
    "\u052A",    # CYRILLIC CAPITAL LETTER DZZHE
    "\u052B",    # CYRILLIC SMALL LETTER DZZHE
    "\u052C",    # CYRILLIC CAPITAL LETTER DCHE
    "\u052D",    # CYRILLIC SMALL LETTER DCHE
    "\u052E",    # CYRILLIC CAPITAL LETTER EL WITH DESCENDER
    "\u052F",    # CYRILLIC SMALL LETTER EL WITH DESCENDER
    "\u058D",    # RIGHT-FACING ARMENIAN ETERNITY SIGN
    "\u058E",    # LEFT-FACING ARMENIAN ETERNITY SIGN
    "\u0605",    # ARABIC NUMBER MARK ABOVE
    "\u08A1",    # ARABIC LETTER BEH WITH HAMZA ABOVE
    "\u08AD",    # ARABIC LETTER LOW ALEF
    "\u08AE",    # ARABIC LETTER DAL WITH THREE DOTS BELOW
    "\u08AF",    # ARABIC LETTER SAD WITH THREE DOTS BELOW
    "\u08B0",    # ARABIC LETTER GAF WITH INVERTED STROKE
    "\u08B1",    # ARABIC LETTER STRAIGHT WAW
    "\u08B2",    # ARABIC LETTER ZAIN WITH INVERTED V ABOVE
    "\u08FF",    # ARABIC MARK SIDEWAYS NOON GHUNNA
    "\u0978",    # DEVANAGARI LETTER MARWARI DDA
    "\u0980",    # BENGALI ANJI
    "\u0C00",    # TELUGU SIGN COMBINING CANDRABINDU ABOVE
    "\u0C34",    # TELUGU LETTER LLLA
    "\u0C81",    # KANNADA SIGN CANDRABINDU
    "\u0D01",    # MALAYALAM SIGN CANDRABINDU
    "\u0DE6",    # SINHALA LITH DIGIT ZERO
    "\u0DE7",    # SINHALA LITH DIGIT ONE
    "\u0DE8",    # SINHALA LITH DIGIT TWO
    "\u0DE9",    # SINHALA LITH DIGIT THREE
    "\u0DEA",    # SINHALA LITH DIGIT FOUR
    "\u0DEB",    # SINHALA LITH DIGIT FIVE
    "\u0DEC",    # SINHALA LITH DIGIT SIX
    "\u0DED",    # SINHALA LITH DIGIT SEVEN
    "\u0DEE",    # SINHALA LITH DIGIT EIGHT
    "\u0DEF",    # SINHALA LITH DIGIT NINE
    "\u16F1",    # RUNIC LETTER K
    "\u16F2",    # RUNIC LETTER SH
    "\u16F3",    # RUNIC LETTER OO
    "\u16F4",    # RUNIC LETTER FRANKS CASKET OS
    "\u16F5",    # RUNIC LETTER FRANKS CASKET IS
    "\u16F6",    # RUNIC LETTER FRANKS CASKET EH
    "\u16F7",    # RUNIC LETTER FRANKS CASKET AC
    "\u16F8",    # RUNIC LETTER FRANKS CASKET AESC
    "\u191D",    # LIMBU LETTER GYAN
    "\u191E",    # LIMBU LETTER TRA
    "\u1AB0",    # COMBINING DOUBLED CIRCUMFLEX ACCENT
    "\u1AB1",    # COMBINING DIAERESIS-RING
    "\u1AB2",    # COMBINING INFINITY
    "\u1AB3",    # COMBINING DOWNWARDS ARROW
    "\u1AB4",    # COMBINING TRIPLE DOT
    "\u1AB5",    # COMBINING X-X BELOW
    "\u1AB6",    # COMBINING WIGGLY LINE BELOW
    "\u1AB7",    # COMBINING OPEN MARK BELOW
    "\u1AB8",    # COMBINING DOUBLE OPEN MARK BELOW
    "\u1AB9",    # COMBINING LIGHT CENTRALIZATION STROKE BELOW
    "\u1ABA",    # COMBINING STRONG CENTRALIZATION STROKE BELOW
    "\u1ABB",    # COMBINING PARENTHESES ABOVE
    "\u1ABC",    # COMBINING DOUBLE PARENTHESES ABOVE
    "\u1ABD",    # COMBINING PARENTHESES BELOW
    "\u1ABE",    # COMBINING PARENTHESES OVERLAY
    "\u1CF8",    # VEDIC TONE RING ABOVE
    "\u1CF9",    # VEDIC TONE DOUBLE RING ABOVE
    "\u1DE7",    # COMBINING LATIN SMALL LETTER ALPHA
    "\u1DE8",    # COMBINING LATIN SMALL LETTER B
    "\u1DE9",    # COMBINING LATIN SMALL LETTER BETA
    "\u1DEA",    # COMBINING LATIN SMALL LETTER SCHWA
    "\u1DEB",    # COMBINING LATIN SMALL LETTER F
    "\u1DEC",    # COMBINING LATIN SMALL LETTER L WITH DOUBLE MIDDLE TILDE
    "\u1DED",    # COMBINING LATIN SMALL LETTER O WITH LIGHT CENTRALIZATION STROKE
    "\u1DEE",    # COMBINING LATIN SMALL LETTER P
    "\u1DEF",    # COMBINING LATIN SMALL LETTER ESH
    "\u1DF0",    # COMBINING LATIN SMALL LETTER U WITH LIGHT CENTRALIZATION STROKE
    "\u1DF1",    # COMBINING LATIN SMALL LETTER W
    "\u1DF2",    # COMBINING LATIN SMALL LETTER A WITH DIAERESIS
    "\u1DF3",    # COMBINING LATIN SMALL LETTER O WITH DIAERESIS
    "\u1DF4",    # COMBINING LATIN SMALL LETTER U WITH DIAERESIS
    "\u1DF5",    # COMBINING UP TACK ABOVE
    "\u20BB",    # NORDIC MARK SIGN
    "\u20BC",    # MANAT SIGN
    "\u23F4",    # BLACK MEDIUM LEFT-POINTING TRIANGLE
    "\u23F5",    # BLACK MEDIUM RIGHT-POINTING TRIANGLE
    "\u23F6",    # BLACK MEDIUM UP-POINTING TRIANGLE
    "\u23F7",    # BLACK MEDIUM DOWN-POINTING TRIANGLE
    "\u23F8",    # DOUBLE VERTICAL BAR
    "\u23F9",    # BLACK SQUARE FOR STOP
    "\u23FA",    # BLACK CIRCLE FOR RECORD
    "\u2700",    # BLACK SAFETY SCISSORS
    "\u2B4D",    # DOWNWARDS TRIANGLE-HEADED ZIGZAG ARROW
    "\u2B4E",    # SHORT SLANTED NORTH ARROW
    "\u2B4F",    # SHORT BACKSLANTED SOUTH ARROW
    "\u2B5A",    # SLANTED NORTH ARROW WITH HOOKED HEAD
    "\u2B5B",    # BACKSLANTED SOUTH ARROW WITH HOOKED TAIL
    "\u2B5C",    # SLANTED NORTH ARROW WITH HORIZONTAL TAIL
    "\u2B5D",    # BACKSLANTED SOUTH ARROW WITH HORIZONTAL TAIL
    "\u2B5E",    # BENT ARROW POINTING DOWNWARDS THEN NORTH EAST
    "\u2B5F",    # SHORT BENT ARROW POINTING DOWNWARDS THEN NORTH EAST
    "\u2B60",    # LEFTWARDS TRIANGLE-HEADED ARROW
    "\u2B61",    # UPWARDS TRIANGLE-HEADED ARROW
    "\u2B62",    # RIGHTWARDS TRIANGLE-HEADED ARROW
    "\u2B63",    # DOWNWARDS TRIANGLE-HEADED ARROW
    "\u2B64",    # LEFT RIGHT TRIANGLE-HEADED ARROW
    "\u2B65",    # UP DOWN TRIANGLE-HEADED ARROW
    "\u2B66",    # NORTH WEST TRIANGLE-HEADED ARROW
    "\u2B67",    # NORTH EAST TRIANGLE-HEADED ARROW
    "\u2B68",    # SOUTH EAST TRIANGLE-HEADED ARROW
    "\u2B69",    # SOUTH WEST TRIANGLE-HEADED ARROW
    "\u2B6A",    # LEFTWARDS TRIANGLE-HEADED DASHED ARROW
    "\u2B6B",    # UPWARDS TRIANGLE-HEADED DASHED ARROW
    "\u2B6C",    # RIGHTWARDS TRIANGLE-HEADED DASHED ARROW
    "\u2B6D",    # DOWNWARDS TRIANGLE-HEADED DASHED ARROW
    "\u2B6E",    # CLOCKWISE TRIANGLE-HEADED OPEN CIRCLE ARROW
    "\u2B6F",    # ANTICLOCKWISE TRIANGLE-HEADED OPEN CIRCLE ARROW
    "\u2B70",    # LEFTWARDS TRIANGLE-HEADED ARROW TO BAR
    "\u2B71",    # UPWARDS TRIANGLE-HEADED ARROW TO BAR
    "\u2B72",    # RIGHTWARDS TRIANGLE-HEADED ARROW TO BAR
    "\u2B73",    # DOWNWARDS TRIANGLE-HEADED ARROW TO BAR
    "\u2B76",    # NORTH WEST TRIANGLE-HEADED ARROW TO BAR
    "\u2B77",    # NORTH EAST TRIANGLE-HEADED ARROW TO BAR
    "\u2B78",    # SOUTH EAST TRIANGLE-HEADED ARROW TO BAR
    "\u2B79",    # SOUTH WEST TRIANGLE-HEADED ARROW TO BAR
    "\u2B7A",    # LEFTWARDS TRIANGLE-HEADED ARROW WITH DOUBLE HORIZONTAL STROKE
    "\u2B7B",    # UPWARDS TRIANGLE-HEADED ARROW WITH DOUBLE HORIZONTAL STROKE
    "\u2B7C",    # RIGHTWARDS TRIANGLE-HEADED ARROW WITH DOUBLE HORIZONTAL STROKE
    "\u2B7D",    # DOWNWARDS TRIANGLE-HEADED ARROW WITH DOUBLE HORIZONTAL STROKE
    "\u2B7E",    # HORIZONTAL TAB KEY
    "\u2B7F",    # VERTICAL TAB KEY
    "\u2B80",    # LEFTWARDS TRIANGLE-HEADED ARROW OVER RIGHTWARDS TRIANGLE-HEADED ARROW
    "\u2B81",    # UPWARDS TRIANGLE-HEADED ARROW LEFTWARDS DOWNWARDS OF TRIANGLE-HEADED ARROW
    "\u2B82",    # RIGHTWARDS TRIANGLE-HEADED ARROW OVER LEFTWARDS TRIANGLE-HEADED ARROW
    "\u2B83",    # DOWNWARDS TRIANGLE-HEADED ARROW LEFTWARDS OF UPWARDS TRIANGLE-HEADED ARROW
    "\u2B84",    # LEFTWARDS TRIANGLE-HEADED PAIRED ARROWS
    "\u2B85",    # UPWARDS TRIANGLE-HEADED PAIRED ARROWS
    "\u2B86",    # RIGHTWARDS TRIANGLE-HEADED PAIRED ARROWS
    "\u2B87",    # DOWNWARDS TRIANGLE-HEADED PAIRED ARROWS
    "\u2B88",    # LEFTWARDS BLACK CIRCLED WHITE ARROW
    "\u2B89",    # UPWARDS BLACK CIRCLED WHITE ARROW
    "\u2B8A",    # RIGHTWARDS BLACK CIRCLED WHITE ARROW
    "\u2B8B",    # DOWNWARDS BLACK CIRCLED WHITE ARROW
    "\u2B8C",    # ANTICLOCKWISE TRIANGLE-HEADED RIGHT U-SHAPED ARROW
    "\u2B8D",    # ANTICLOCKWISE TRIANGLE-HEADED BOTTOM U-SHAPED ARROW
    "\u2B8E",    # ANTICLOCKWISE TRIANGLE-HEADED LEFT U-SHAPED ARROW
    "\u2B8F",    # ANTICLOCKWISE TRIANGLE-HEADED TOP U-SHAPED ARROW
    "\u2B90",    # RETURN LEFT
    "\u2B91",    # RETURN RIGHT
    "\u2B92",    # NEWLINE LEFT
    "\u2B93",    # NEWLINE RIGHT
    "\u2B94",    # FOUR CORNER ARROWS CIRCLING ANTICLOCKWISE
    "\u2B95",    # RIGHTWARDS BLACK ARROW
    "\u2B98",    # THREE-D TOP-LIGHTED LEFTWARDS EQUILATERAL ARROWHEAD
    "\u2B99",    # THREE-D RIGHT-LIGHTED UPWARDS EQUILATERAL ARROWHEAD
    "\u2B9A",    # THREE-D TOP-LIGHTED RIGHTWARDS EQUILATERAL ARROWHEAD
    "\u2B9B",    # THREE-D LEFT-LIGHTED DOWNWARDS EQUILATERAL ARROWHEAD
    "\u2B9C",    # BLACK LEFTWARDS EQUILATERAL ARROWHEAD
    "\u2B9D",    # BLACK UPWARDS EQUILATERAL ARROWHEAD
    "\u2B9E",    # BLACK RIGHTWARDS EQUILATERAL ARROWHEAD
    "\u2B9F",    # BLACK DOWNWARDS EQUILATERAL ARROWHEAD
    "\u2BA0",    # DOWNWARDS TRIANGLE-HEADED ARROW WITH LONG TIP LEFTWARDS
    "\u2BA1",    # DOWNWARDS TRIANGLE-HEADED ARROW WITH LONG TIP RIGHTWARDS
    "\u2BA2",    # UPWARDS TRIANGLE-HEADED ARROW WITH LONG TIP LEFTWARDS
    "\u2BA3",    # UPWARDS TRIANGLE-HEADED ARROW WITH LONG TIP RIGHTWARDS
    "\u2BA4",    # LEFTWARDS TRIANGLE-HEADED ARROW WITH LONG TIP UPWARDS
    "\u2BA5",    # RIGHTWARDS TRIANGLE-HEADED ARROW WITH LONG TIP UPWARDS
    "\u2BA6",    # LEFTWARDS TRIANGLE-HEADED ARROW WITH LONG TIP DOWNWARDS
    "\u2BA7",    # RIGHTWARDS TRIANGLE-HEADED ARROW WITH LONG TIP DOWNWARDS
    "\u2BA8",    # BLACK CURVED DOWNWARDS AND LEFTWARDS ARROW
    "\u2BA9",    # BLACK CURVED DOWNWARDS AND RIGHTWARDS ARROW
    "\u2BAA",    # BLACK CURVED UPWARDS AND LEFTWARDS ARROW
    "\u2BAB",    # BLACK CURVED UPWARDS AND RIGHTWARDS ARROW
    "\u2BAC",    # BLACK CURVED LEFTWARDS AND UPWARDS ARROW
    "\u2BAD",    # BLACK CURVED RIGHTWARDS AND UPWARDS ARROW
    "\u2BAE",    # BLACK CURVED LEFTWARDS AND DOWNWARDS ARROW
    "\u2BAF",    # BLACK CURVED RIGHTWARDS AND DOWNWARDS ARROW
    "\u2BB0",    # RIBBON ARROW DOWN LEFT
    "\u2BB1",    # RIBBON ARROW DOWN RIGHT
    "\u2BB2",    # RIBBON ARROW UP LEFT
    "\u2BB3",    # RIBBON ARROW UP RIGHT
    "\u2BB4",    # RIBBON ARROW LEFT UP
    "\u2BB5",    # RIBBON ARROW RIGHT UP
    "\u2BB6",    # RIBBON ARROW LEFT DOWN
    "\u2BB7",    # RIBBON ARROW RIGHT DOWN
    "\u2BB8",    # UPWARDS WHITE ARROW FROM BAR WITH HORIZONTAL BAR
    "\u2BB9",    # UP ARROWHEAD IN A RECTANGLE BOX
    "\u2BBD",    # BALLOT BOX WITH LIGHT X
    "\u2BBE",    # CIRCLED X
    "\u2BBF",    # CIRCLED BOLD X
    "\u2BC0",    # BLACK SQUARE CENTRED
    "\u2BC1",    # BLACK DIAMOND CENTRED
    "\u2BC2",    # TURNED BLACK PENTAGON
    "\u2BC3",    # HORIZONTAL BLACK OCTAGON
    "\u2BC4",    # BLACK OCTAGON
    "\u2BC5",    # BLACK MEDIUM UP-POINTING TRIANGLE CENTRED
    "\u2BC6",    # BLACK MEDIUM DOWN-POINTING TRIANGLE CENTRED
    "\u2BC7",    # BLACK MEDIUM LEFT-POINTING TRIANGLE CENTRED
    "\u2BC8",    # BLACK MEDIUM RIGHT-POINTING TRIANGLE CENTRED
    "\u2BCA",    # TOP HALF BLACK CIRCLE
    "\u2BCB",    # BOTTOM HALF BLACK CIRCLE
    "\u2BCC",    # LIGHT FOUR POINTED BLACK CUSP
    "\u2BCD",    # ROTATED LIGHT FOUR POINTED BLACK CUSP
    "\u2BCE",    # WHITE FOUR POINTED CUSP
    "\u2BCF",    # ROTATED WHITE FOUR POINTED CUSP
    "\u2BD0",    # SQUARE POSITION INDICATOR
    "\u2BD1",    # UNCERTAINTY SIGN
    "\u2E3C",    # STENOGRAPHIC FULL STOP
    "\u2E3D",    # VERTICAL SIX DOTS
    "\u2E3E",    # WIGGLY VERTICAL LINE
    "\u2E3F",    # CAPITULUM
    "\u2E40",    # DOUBLE HYPHEN
    "\u2E41",    # REVERSED COMMA
    "\u2E42",    # DOUBLE LOW-REVERSED-9 QUOTATION MARK
    "\uA698",    # CYRILLIC CAPITAL LETTER DOUBLE O
    "\uA699",    # CYRILLIC SMALL LETTER DOUBLE O
    "\uA69A",    # CYRILLIC CAPITAL LETTER CROSSED O
    "\uA69B",    # CYRILLIC SMALL LETTER CROSSED O
    "\uA69C",    # MODIFIER LETTER CYRILLIC HARD SIGN
    "\uA69D",    # MODIFIER LETTER CYRILLIC SOFT SIGN
    "\uA794",    # LATIN SMALL LETTER C WITH PALATAL HOOK
    "\uA795",    # LATIN SMALL LETTER H WITH PALATAL HOOK
    "\uA796",    # LATIN CAPITAL LETTER B WITH FLOURISH
    "\uA797",    # LATIN SMALL LETTER B WITH FLOURISH
    "\uA798",    # LATIN CAPITAL LETTER F WITH STROKE
    "\uA799",    # LATIN SMALL LETTER F WITH STROKE
    "\uA79A",    # LATIN CAPITAL LETTER VOLAPUK AE
    "\uA79B",    # LATIN SMALL LETTER VOLAPUK AE
    "\uA79C",    # LATIN CAPITAL LETTER VOLAPUK OE
    "\uA79D",    # LATIN SMALL LETTER VOLAPUK OE
    "\uA79E",    # LATIN CAPITAL LETTER VOLAPUK UE
    "\uA79F",    # LATIN SMALL LETTER VOLAPUK UE
    "\uA7AB",    # LATIN CAPITAL LETTER REVERSED OPEN E
    "\uA7AC",    # LATIN CAPITAL LETTER SCRIPT G
    "\uA7AD",    # LATIN CAPITAL LETTER L WITH BELT
    "\uA7B0",    # LATIN CAPITAL LETTER TURNED K
    "\uA7B1",    # LATIN CAPITAL LETTER TURNED T
    "\uA7F7",    # LATIN EPIGRAPHIC LETTER SIDEWAYS I
    "\uA9E0",    # MYANMAR LETTER SHAN GHA
    "\uA9E1",    # MYANMAR LETTER SHAN CHA
    "\uA9E2",    # MYANMAR LETTER SHAN JHA
    "\uA9E3",    # MYANMAR LETTER SHAN NNA
    "\uA9E4",    # MYANMAR LETTER SHAN BHA
    "\uA9E5",    # MYANMAR SIGN SHAN SAW
    "\uA9E6",    # MYANMAR MODIFIER LETTER SHAN REDUPLICATION
    "\uA9E7",    # MYANMAR LETTER TAI LAING NYA
    "\uA9E8",    # MYANMAR LETTER TAI LAING FA
    "\uA9E9",    # MYANMAR LETTER TAI LAING GA
    "\uA9EA",    # MYANMAR LETTER TAI LAING GHA
    "\uA9EB",    # MYANMAR LETTER TAI LAING JA
    "\uA9EC",    # MYANMAR LETTER TAI LAING JHA
    "\uA9ED",    # MYANMAR LETTER TAI LAING DDA
    "\uA9EE",    # MYANMAR LETTER TAI LAING DDHA
    "\uA9EF",    # MYANMAR LETTER TAI LAING NNA
    "\uA9F0",    # MYANMAR TAI LAING DIGIT ZERO
    "\uA9F1",    # MYANMAR TAI LAING DIGIT ONE
    "\uA9F2",    # MYANMAR TAI LAING DIGIT TWO
    "\uA9F3",    # MYANMAR TAI LAING DIGIT THREE
    "\uA9F4",    # MYANMAR TAI LAING DIGIT FOUR
    "\uA9F5",    # MYANMAR TAI LAING DIGIT FIVE
    "\uA9F6",    # MYANMAR TAI LAING DIGIT SIX
    "\uA9F7",    # MYANMAR TAI LAING DIGIT SEVEN
    "\uA9F8",    # MYANMAR TAI LAING DIGIT EIGHT
    "\uA9F9",    # MYANMAR TAI LAING DIGIT NINE
    "\uA9FA",    # MYANMAR LETTER TAI LAING LLA
    "\uA9FB",    # MYANMAR LETTER TAI LAING DA
    "\uA9FC",    # MYANMAR LETTER TAI LAING DHA
    "\uA9FD",    # MYANMAR LETTER TAI LAING BA
    "\uA9FE",    # MYANMAR LETTER TAI LAING BHA
    "\uAA7C",    # MYANMAR SIGN TAI LAING TONE-2
    "\uAA7D",    # MYANMAR SIGN TAI LAING TONE-5
    "\uAA7E",    # MYANMAR LETTER SHWE PALAUNG CHA
    "\uAA7F",    # MYANMAR LETTER SHWE PALAUNG SHA
    "\uAB30",    # LATIN SMALL LETTER BARRED ALPHA
    "\uAB31",    # LATIN SMALL LETTER A REVERSED-SCHWA
    "\uAB32",    # LATIN SMALL LETTER BLACKLETTER E
    "\uAB33",    # LATIN SMALL LETTER BARRED E
    "\uAB34",    # LATIN SMALL LETTER E WITH FLOURISH
    "\uAB35",    # LATIN SMALL LETTER LENIS F
    "\uAB36",    # LATIN SMALL LETTER SCRIPT G WITH CROSSED-TAIL
    "\uAB37",    # LATIN SMALL LETTER L WITH INVERTED LAZY S
    "\uAB38",    # LATIN SMALL LETTER L WITH DOUBLE MIDDLE TILDE
    "\uAB39",    # LATIN SMALL LETTER L WITH MIDDLE RING
    "\uAB3A",    # LATIN SMALL LETTER M WITH CROSSED-TAIL
    "\uAB3B",    # LATIN SMALL LETTER N WITH CROSSED-TAIL
    "\uAB3C",    # LATIN SMALL LETTER ENG WITH CROSSED-TAIL
    "\uAB3D",    # LATIN SMALL LETTER BLACKLETTER O
    "\uAB3E",    # LATIN SMALL LETTER BLACKLETTER O WITH STROKE
    "\uAB3F",    # LATIN SMALL LETTER OPEN O WITH STROKE
    "\uAB40",    # LATIN SMALL LETTER INVERTED OE
    "\uAB41",    # LATIN SMALL LETTER TURNED OE WITH STROKE
    "\uAB42",    # LATIN SMALL LETTER TURNED OE WITH HORIZONTAL STROKE
    "\uAB43",    # LATIN SMALL LETTER TURNED O OPEN-O
    "\uAB44",    # LATIN SMALL LETTER TURNED O OPEN-O WITH STROKE
    "\uAB45",    # LATIN SMALL LETTER STIRRUP R
    "\uAB46",    # LATIN LETTER SMALL CAPITAL R WITH RIGHT LEG
    "\uAB47",    # LATIN SMALL LETTER R WITHOUT HANDLE
    "\uAB48",    # LATIN SMALL LETTER DOUBLE R
    "\uAB49",    # LATIN SMALL LETTER R WITH CROSSED-TAIL
    "\uAB4A",    # LATIN SMALL LETTER DOUBLE R WITH CROSSED-TAIL
    "\uAB4B",    # LATIN SMALL LETTER SCRIPT R
    "\uAB4C",    # LATIN SMALL LETTER SCRIPT R WITH RING
    "\uAB4D",    # LATIN SMALL LETTER BASELINE ESH
    "\uAB4E",    # LATIN SMALL LETTER U WITH SHORT RIGHT LEG
    "\uAB4F",    # LATIN SMALL LETTER U BAR WITH SHORT RIGHT LEG
    "\uAB50",    # LATIN SMALL LETTER UI
    "\uAB51",    # LATIN SMALL LETTER TURNED UI
    "\uAB52",    # LATIN SMALL LETTER U WITH LEFT HOOK
    "\uAB53",    # LATIN SMALL LETTER CHI
    "\uAB54",    # LATIN SMALL LETTER CHI WITH LOW RIGHT RING
    "\uAB55",    # LATIN SMALL LETTER CHI WITH LOW LEFT SERIF
    "\uAB56",    # LATIN SMALL LETTER X WITH LOW RIGHT RING
    "\uAB57",    # LATIN SMALL LETTER X WITH LONG LEFT LEG
    "\uAB58",    # LATIN SMALL LETTER X WITH LONG LEFT LEG AND LOW RIGHT RING
    "\uAB59",    # LATIN SMALL LETTER X WITH LONG LEFT LEG WITH SERIF
    "\uAB5A",    # LATIN SMALL LETTER Y WITH SHORT RIGHT LEG
    "\uAB5B",    # MODIFIER BREVE WITH INVERTED BREVE
    "\uAB5C",    # MODIFIER LETTER SMALL HENG
    "\uAB5D",    # MODIFIER LETTER SMALL L WITH INVERTED LAZY S
    "\uAB5E",    # MODIFIER LETTER SMALL L WITH MIDDLE TILDE
    "\uAB5F",    # MODIFIER LETTER SMALL U WITH LEFT HOOK
    "\uAB64",    # LATIN SMALL LETTER INVERTED ALPHA
    "\uAB65",    # GREEK LETTER SMALL CAPITAL OMEGA
    "\uFE27",    # COMBINING LIGATURE LEFT HALF BELOW
    "\uFE28",    # COMBINING LIGATURE RIGHT HALF BELOW
    "\uFE29",    # COMBINING TILDE LEFT HALF BELOW
    "\uFE2A",    # COMBINING TILDE RIGHT HALF BELOW
    "\uFE2B",    # COMBINING MACRON LEFT HALF BELOW
    "\uFE2C",    # COMBINING MACRON RIGHT HALF BELOW
    "\uFE2D",    # COMBINING CONJOINING MACRON BELOW
    "\u1018B",    # GREEK ONE QUARTER SIGN
    "\u1018C",    # GREEK SINUSOID SIGN
    "\u101A0",    # GREEK SYMBOL TAU RHO
    "\u102E0",    # COPTIC EPACT THOUSANDS MARK
    "\u102E1",    # COPTIC EPACT DIGIT ONE
    "\u102E2",    # COPTIC EPACT DIGIT TWO
    "\u102E3",    # COPTIC EPACT DIGIT THREE
    "\u102E4",    # COPTIC EPACT DIGIT FOUR
    "\u102E5",    # COPTIC EPACT DIGIT FIVE
    "\u102E6",    # COPTIC EPACT DIGIT SIX
    "\u102E7",    # COPTIC EPACT DIGIT SEVEN
    "\u102E8",    # COPTIC EPACT DIGIT EIGHT
    "\u102E9",    # COPTIC EPACT DIGIT NINE
    "\u102EA",    # COPTIC EPACT NUMBER TEN
    "\u102EB",    # COPTIC EPACT NUMBER TWENTY
    "\u102EC",    # COPTIC EPACT NUMBER THIRTY
    "\u102ED",    # COPTIC EPACT NUMBER FORTY
    "\u102EE",    # COPTIC EPACT NUMBER FIFTY
    "\u102EF",    # COPTIC EPACT NUMBER SIXTY
    "\u102F0",    # COPTIC EPACT NUMBER SEVENTY
    "\u102F1",    # COPTIC EPACT NUMBER EIGHTY
    "\u102F2",    # COPTIC EPACT NUMBER NINETY
    "\u102F3",    # COPTIC EPACT NUMBER ONE HUNDRED
    "\u102F4",    # COPTIC EPACT NUMBER TWO HUNDRED
    "\u102F5",    # COPTIC EPACT NUMBER THREE HUNDRED
    "\u102F6",    # COPTIC EPACT NUMBER FOUR HUNDRED
    "\u102F7",    # COPTIC EPACT NUMBER FIVE HUNDRED
    "\u102F8",    # COPTIC EPACT NUMBER SIX HUNDRED
    "\u102F9",    # COPTIC EPACT NUMBER SEVEN HUNDRED
    "\u102FA",    # COPTIC EPACT NUMBER EIGHT HUNDRED
    "\u102FB",    # COPTIC EPACT NUMBER NINE HUNDRED
    "\u1031F",    # OLD ITALIC LETTER ESS
    "\u10350",    # OLD PERMIC LETTER AN
    "\u10351",    # OLD PERMIC LETTER BUR
    "\u10352",    # OLD PERMIC LETTER GAI
    "\u10353",    # OLD PERMIC LETTER DOI
    "\u10354",    # OLD PERMIC LETTER E
    "\u10355",    # OLD PERMIC LETTER ZHOI
    "\u10356",    # OLD PERMIC LETTER DZHOI
    "\u10357",    # OLD PERMIC LETTER ZATA
    "\u10358",    # OLD PERMIC LETTER DZITA
    "\u10359",    # OLD PERMIC LETTER I
    "\u1035A",    # OLD PERMIC LETTER KOKE
    "\u1035B",    # OLD PERMIC LETTER LEI
    "\u1035C",    # OLD PERMIC LETTER MENOE
    "\u1035D",    # OLD PERMIC LETTER NENOE
    "\u1035E",    # OLD PERMIC LETTER VOOI
    "\u1035F",    # OLD PERMIC LETTER PEEI
    "\u10360",    # OLD PERMIC LETTER REI
    "\u10361",    # OLD PERMIC LETTER SII
    "\u10362",    # OLD PERMIC LETTER TAI
    "\u10363",    # OLD PERMIC LETTER U
    "\u10364",    # OLD PERMIC LETTER CHERY
    "\u10365",    # OLD PERMIC LETTER SHOOI
    "\u10366",    # OLD PERMIC LETTER SHCHOOI
    "\u10367",    # OLD PERMIC LETTER YRY
    "\u10368",    # OLD PERMIC LETTER YERU
    "\u10369",    # OLD PERMIC LETTER O
    "\u1036A",    # OLD PERMIC LETTER OO
    "\u1036B",    # OLD PERMIC LETTER EF
    "\u1036C",    # OLD PERMIC LETTER HA
    "\u1036D",    # OLD PERMIC LETTER TSIU
    "\u1036E",    # OLD PERMIC LETTER VER
    "\u1036F",    # OLD PERMIC LETTER YER
    "\u10370",    # OLD PERMIC LETTER YERI
    "\u10371",    # OLD PERMIC LETTER YAT
    "\u10372",    # OLD PERMIC LETTER IE
    "\u10373",    # OLD PERMIC LETTER YU
    "\u10374",    # OLD PERMIC LETTER YA
    "\u10375",    # OLD PERMIC LETTER IA
    "\u10376",    # COMBINING OLD PERMIC LETTER AN
    "\u10377",    # COMBINING OLD PERMIC LETTER DOI
    "\u10378",    # COMBINING OLD PERMIC LETTER ZATA
    "\u10379",    # COMBINING OLD PERMIC LETTER NENOE
    "\u1037A",    # COMBINING OLD PERMIC LETTER SII
    "\u10500",    # ELBASAN LETTER A
    "\u10501",    # ELBASAN LETTER BE
    "\u10502",    # ELBASAN LETTER CE
    "\u10503",    # ELBASAN LETTER CHE
    "\u10504",    # ELBASAN LETTER DE
    "\u10505",    # ELBASAN LETTER NDE
    "\u10506",    # ELBASAN LETTER DHE
    "\u10507",    # ELBASAN LETTER EI
    "\u10508",    # ELBASAN LETTER E
    "\u10509",    # ELBASAN LETTER FE
    "\u1050A",    # ELBASAN LETTER GE
    "\u1050B",    # ELBASAN LETTER GJE
    "\u1050C",    # ELBASAN LETTER HE
    "\u1050D",    # ELBASAN LETTER I
    "\u1050E",    # ELBASAN LETTER JE
    "\u1050F",    # ELBASAN LETTER KE
    "\u10510",    # ELBASAN LETTER LE
    "\u10511",    # ELBASAN LETTER LLE
    "\u10512",    # ELBASAN LETTER ME
    "\u10513",    # ELBASAN LETTER NE
    "\u10514",    # ELBASAN LETTER NA
    "\u10515",    # ELBASAN LETTER NJE
    "\u10516",    # ELBASAN LETTER O
    "\u10517",    # ELBASAN LETTER PE
    "\u10518",    # ELBASAN LETTER QE
    "\u10519",    # ELBASAN LETTER RE
    "\u1051A",    # ELBASAN LETTER RRE
    "\u1051B",    # ELBASAN LETTER SE
    "\u1051C",    # ELBASAN LETTER SHE
    "\u1051D",    # ELBASAN LETTER TE
    "\u1051E",    # ELBASAN LETTER THE
    "\u1051F",    # ELBASAN LETTER U
    "\u10520",    # ELBASAN LETTER VE
    "\u10521",    # ELBASAN LETTER XE
    "\u10522",    # ELBASAN LETTER Y
    "\u10523",    # ELBASAN LETTER ZE
    "\u10524",    # ELBASAN LETTER ZHE
    "\u10525",    # ELBASAN LETTER GHE
    "\u10526",    # ELBASAN LETTER GHAMMA
    "\u10527",    # ELBASAN LETTER KHE
    "\u10530",    # CAUCASIAN ALBANIAN LETTER ALT
    "\u10531",    # CAUCASIAN ALBANIAN LETTER BET
    "\u10532",    # CAUCASIAN ALBANIAN LETTER GIM
    "\u10533",    # CAUCASIAN ALBANIAN LETTER DAT
    "\u10534",    # CAUCASIAN ALBANIAN LETTER EB
    "\u10535",    # CAUCASIAN ALBANIAN LETTER ZARL
    "\u10536",    # CAUCASIAN ALBANIAN LETTER EYN
    "\u10537",    # CAUCASIAN ALBANIAN LETTER ZHIL
    "\u10538",    # CAUCASIAN ALBANIAN LETTER TAS
    "\u10539",    # CAUCASIAN ALBANIAN LETTER CHA
    "\u1053A",    # CAUCASIAN ALBANIAN LETTER YOWD
    "\u1053B",    # CAUCASIAN ALBANIAN LETTER ZHA
    "\u1053C",    # CAUCASIAN ALBANIAN LETTER IRB
    "\u1053D",    # CAUCASIAN ALBANIAN LETTER SHA
    "\u1053E",    # CAUCASIAN ALBANIAN LETTER LAN
    "\u1053F",    # CAUCASIAN ALBANIAN LETTER INYA
    "\u10540",    # CAUCASIAN ALBANIAN LETTER XEYN
    "\u10541",    # CAUCASIAN ALBANIAN LETTER DYAN
    "\u10542",    # CAUCASIAN ALBANIAN LETTER CAR
    "\u10543",    # CAUCASIAN ALBANIAN LETTER JHOX
    "\u10544",    # CAUCASIAN ALBANIAN LETTER KAR
    "\u10545",    # CAUCASIAN ALBANIAN LETTER LYIT
    "\u10546",    # CAUCASIAN ALBANIAN LETTER HEYT
    "\u10547",    # CAUCASIAN ALBANIAN LETTER QAY
    "\u10548",    # CAUCASIAN ALBANIAN LETTER AOR
    "\u10549",    # CAUCASIAN ALBANIAN LETTER CHOY
    "\u1054A",    # CAUCASIAN ALBANIAN LETTER CHI
    "\u1054B",    # CAUCASIAN ALBANIAN LETTER CYAY
    "\u1054C",    # CAUCASIAN ALBANIAN LETTER MAQ
    "\u1054D",    # CAUCASIAN ALBANIAN LETTER QAR
    "\u1054E",    # CAUCASIAN ALBANIAN LETTER NOWC
    "\u1054F",    # CAUCASIAN ALBANIAN LETTER DZYAY
    "\u10550",    # CAUCASIAN ALBANIAN LETTER SHAK
    "\u10551",    # CAUCASIAN ALBANIAN LETTER JAYN
    "\u10552",    # CAUCASIAN ALBANIAN LETTER ON
    "\u10553",    # CAUCASIAN ALBANIAN LETTER TYAY
    "\u10554",    # CAUCASIAN ALBANIAN LETTER FAM
    "\u10555",    # CAUCASIAN ALBANIAN LETTER DZAY
    "\u10556",    # CAUCASIAN ALBANIAN LETTER CHAT
    "\u10557",    # CAUCASIAN ALBANIAN LETTER PEN
    "\u10558",    # CAUCASIAN ALBANIAN LETTER GHEYS
    "\u10559",    # CAUCASIAN ALBANIAN LETTER RAT
    "\u1055A",    # CAUCASIAN ALBANIAN LETTER SEYK
    "\u1055B",    # CAUCASIAN ALBANIAN LETTER VEYZ
    "\u1055C",    # CAUCASIAN ALBANIAN LETTER TIWR
    "\u1055D",    # CAUCASIAN ALBANIAN LETTER SHOY
    "\u1055E",    # CAUCASIAN ALBANIAN LETTER IWN
    "\u1055F",    # CAUCASIAN ALBANIAN LETTER CYAW
    "\u10560",    # CAUCASIAN ALBANIAN LETTER CAYN
    "\u10561",    # CAUCASIAN ALBANIAN LETTER YAYD
    "\u10562",    # CAUCASIAN ALBANIAN LETTER PIWR
    "\u10563",    # CAUCASIAN ALBANIAN LETTER KIW
    "\u1056F",    # CAUCASIAN ALBANIAN CITATION MARK
    "\u10600",    # LINEAR A SIGN AB001
    "\u10601",    # LINEAR A SIGN AB002
    "\u10602",    # LINEAR A SIGN AB003
    "\u10603",    # LINEAR A SIGN AB004
    "\u10604",    # LINEAR A SIGN AB005
    "\u10605",    # LINEAR A SIGN AB006
    "\u10606",    # LINEAR A SIGN AB007
    "\u10607",    # LINEAR A SIGN AB008
    "\u10608",    # LINEAR A SIGN AB009
    "\u10609",    # LINEAR A SIGN AB010
    "\u1060A",    # LINEAR A SIGN AB011
    "\u1060B",    # LINEAR A SIGN AB013
    "\u1060C",    # LINEAR A SIGN AB016
    "\u1060D",    # LINEAR A SIGN AB017
    "\u1060E",    # LINEAR A SIGN AB020
    "\u1060F",    # LINEAR A SIGN AB021
    "\u10610",    # LINEAR A SIGN AB021F
    "\u10611",    # LINEAR A SIGN AB021M
    "\u10612",    # LINEAR A SIGN AB022
    "\u10613",    # LINEAR A SIGN AB022F
    "\u10614",    # LINEAR A SIGN AB022M
    "\u10615",    # LINEAR A SIGN AB023
    "\u10616",    # LINEAR A SIGN AB023M
    "\u10617",    # LINEAR A SIGN AB024
    "\u10618",    # LINEAR A SIGN AB026
    "\u10619",    # LINEAR A SIGN AB027
    "\u1061A",    # LINEAR A SIGN AB028
    "\u1061B",    # LINEAR A SIGN A028B
    "\u1061C",    # LINEAR A SIGN AB029
    "\u1061D",    # LINEAR A SIGN AB030
    "\u1061E",    # LINEAR A SIGN AB031
    "\u1061F",    # LINEAR A SIGN AB034
    "\u10620",    # LINEAR A SIGN AB037
    "\u10621",    # LINEAR A SIGN AB038
    "\u10622",    # LINEAR A SIGN AB039
    "\u10623",    # LINEAR A SIGN AB040
    "\u10624",    # LINEAR A SIGN AB041
    "\u10625",    # LINEAR A SIGN AB044
    "\u10626",    # LINEAR A SIGN AB045
    "\u10627",    # LINEAR A SIGN AB046
    "\u10628",    # LINEAR A SIGN AB047
    "\u10629",    # LINEAR A SIGN AB048
    "\u1062A",    # LINEAR A SIGN AB049
    "\u1062B",    # LINEAR A SIGN AB050
    "\u1062C",    # LINEAR A SIGN AB051
    "\u1062D",    # LINEAR A SIGN AB053
    "\u1062E",    # LINEAR A SIGN AB054
    "\u1062F",    # LINEAR A SIGN AB055
    "\u10630",    # LINEAR A SIGN AB056
    "\u10631",    # LINEAR A SIGN AB057
    "\u10632",    # LINEAR A SIGN AB058
    "\u10633",    # LINEAR A SIGN AB059
    "\u10634",    # LINEAR A SIGN AB060
    "\u10635",    # LINEAR A SIGN AB061
    "\u10636",    # LINEAR A SIGN AB065
    "\u10637",    # LINEAR A SIGN AB066
    "\u10638",    # LINEAR A SIGN AB067
    "\u10639",    # LINEAR A SIGN AB069
    "\u1063A",    # LINEAR A SIGN AB070
    "\u1063B",    # LINEAR A SIGN AB073
    "\u1063C",    # LINEAR A SIGN AB074
    "\u1063D",    # LINEAR A SIGN AB076
    "\u1063E",    # LINEAR A SIGN AB077
    "\u1063F",    # LINEAR A SIGN AB078
    "\u10640",    # LINEAR A SIGN AB079
    "\u10641",    # LINEAR A SIGN AB080
    "\u10642",    # LINEAR A SIGN AB081
    "\u10643",    # LINEAR A SIGN AB082
    "\u10644",    # LINEAR A SIGN AB085
    "\u10645",    # LINEAR A SIGN AB086
    "\u10646",    # LINEAR A SIGN AB087
    "\u10647",    # LINEAR A SIGN A100-102
    "\u10648",    # LINEAR A SIGN AB118
    "\u10649",    # LINEAR A SIGN AB120
    "\u1064A",    # LINEAR A SIGN A120B
    "\u1064B",    # LINEAR A SIGN AB122
    "\u1064C",    # LINEAR A SIGN AB123
    "\u1064D",    # LINEAR A SIGN AB131A
    "\u1064E",    # LINEAR A SIGN AB131B
    "\u1064F",    # LINEAR A SIGN A131C
    "\u10650",    # LINEAR A SIGN AB164
    "\u10651",    # LINEAR A SIGN AB171
    "\u10652",    # LINEAR A SIGN AB180
    "\u10653",    # LINEAR A SIGN AB188
    "\u10654",    # LINEAR A SIGN AB191
    "\u10655",    # LINEAR A SIGN A301
    "\u10656",    # LINEAR A SIGN A302
    "\u10657",    # LINEAR A SIGN A303
    "\u10658",    # LINEAR A SIGN A304
    "\u10659",    # LINEAR A SIGN A305
    "\u1065A",    # LINEAR A SIGN A306
    "\u1065B",    # LINEAR A SIGN A307
    "\u1065C",    # LINEAR A SIGN A308
    "\u1065D",    # LINEAR A SIGN A309A
    "\u1065E",    # LINEAR A SIGN A309B
    "\u1065F",    # LINEAR A SIGN A309C
    "\u10660",    # LINEAR A SIGN A310
    "\u10661",    # LINEAR A SIGN A311
    "\u10662",    # LINEAR A SIGN A312
    "\u10663",    # LINEAR A SIGN A313A
    "\u10664",    # LINEAR A SIGN A313B
    "\u10665",    # LINEAR A SIGN A313C
    "\u10666",    # LINEAR A SIGN A314
    "\u10667",    # LINEAR A SIGN A315
    "\u10668",    # LINEAR A SIGN A316
    "\u10669",    # LINEAR A SIGN A317
    "\u1066A",    # LINEAR A SIGN A318
    "\u1066B",    # LINEAR A SIGN A319
    "\u1066C",    # LINEAR A SIGN A320
    "\u1066D",    # LINEAR A SIGN A321
    "\u1066E",    # LINEAR A SIGN A322
    "\u1066F",    # LINEAR A SIGN A323
    "\u10670",    # LINEAR A SIGN A324
    "\u10671",    # LINEAR A SIGN A325
    "\u10672",    # LINEAR A SIGN A326
    "\u10673",    # LINEAR A SIGN A327
    "\u10674",    # LINEAR A SIGN A328
    "\u10675",    # LINEAR A SIGN A329
    "\u10676",    # LINEAR A SIGN A330
    "\u10677",    # LINEAR A SIGN A331
    "\u10678",    # LINEAR A SIGN A332
    "\u10679",    # LINEAR A SIGN A333
    "\u1067A",    # LINEAR A SIGN A334
    "\u1067B",    # LINEAR A SIGN A335
    "\u1067C",    # LINEAR A SIGN A336
    "\u1067D",    # LINEAR A SIGN A337
    "\u1067E",    # LINEAR A SIGN A338
    "\u1067F",    # LINEAR A SIGN A339
    "\u10680",    # LINEAR A SIGN A340
    "\u10681",    # LINEAR A SIGN A341
    "\u10682",    # LINEAR A SIGN A342
    "\u10683",    # LINEAR A SIGN A343
    "\u10684",    # LINEAR A SIGN A344
    "\u10685",    # LINEAR A SIGN A345
    "\u10686",    # LINEAR A SIGN A346
    "\u10687",    # LINEAR A SIGN A347
    "\u10688",    # LINEAR A SIGN A348
    "\u10689",    # LINEAR A SIGN A349
    "\u1068A",    # LINEAR A SIGN A350
    "\u1068B",    # LINEAR A SIGN A351
    "\u1068C",    # LINEAR A SIGN A352
    "\u1068D",    # LINEAR A SIGN A353
    "\u1068E",    # LINEAR A SIGN A354
    "\u1068F",    # LINEAR A SIGN A355
    "\u10690",    # LINEAR A SIGN A356
    "\u10691",    # LINEAR A SIGN A357
    "\u10692",    # LINEAR A SIGN A358
    "\u10693",    # LINEAR A SIGN A359
    "\u10694",    # LINEAR A SIGN A360
    "\u10695",    # LINEAR A SIGN A361
    "\u10696",    # LINEAR A SIGN A362
    "\u10697",    # LINEAR A SIGN A363
    "\u10698",    # LINEAR A SIGN A364
    "\u10699",    # LINEAR A SIGN A365
    "\u1069A",    # LINEAR A SIGN A366
    "\u1069B",    # LINEAR A SIGN A367
    "\u1069C",    # LINEAR A SIGN A368
    "\u1069D",    # LINEAR A SIGN A369
    "\u1069E",    # LINEAR A SIGN A370
    "\u1069F",    # LINEAR A SIGN A371
    "\u106A0",    # LINEAR A SIGN A400-VAS
    "\u106A1",    # LINEAR A SIGN A401-VAS
    "\u106A2",    # LINEAR A SIGN A402-VAS
    "\u106A3",    # LINEAR A SIGN A403-VAS
    "\u106A4",    # LINEAR A SIGN A404-VAS
    "\u106A5",    # LINEAR A SIGN A405-VAS
    "\u106A6",    # LINEAR A SIGN A406-VAS
    "\u106A7",    # LINEAR A SIGN A407-VAS
    "\u106A8",    # LINEAR A SIGN A408-VAS
    "\u106A9",    # LINEAR A SIGN A409-VAS
    "\u106AA",    # LINEAR A SIGN A410-VAS
    "\u106AB",    # LINEAR A SIGN A411-VAS
    "\u106AC",    # LINEAR A SIGN A412-VAS
    "\u106AD",    # LINEAR A SIGN A413-VAS
    "\u106AE",    # LINEAR A SIGN A414-VAS
    "\u106AF",    # LINEAR A SIGN A415-VAS
    "\u106B0",    # LINEAR A SIGN A416-VAS
    "\u106B1",    # LINEAR A SIGN A417-VAS
    "\u106B2",    # LINEAR A SIGN A418-VAS
    "\u106B3",    # LINEAR A SIGN A501
    "\u106B4",    # LINEAR A SIGN A502
    "\u106B5",    # LINEAR A SIGN A503
    "\u106B6",    # LINEAR A SIGN A504
    "\u106B7",    # LINEAR A SIGN A505
    "\u106B8",    # LINEAR A SIGN A506
    "\u106B9",    # LINEAR A SIGN A508
    "\u106BA",    # LINEAR A SIGN A509
    "\u106BB",    # LINEAR A SIGN A510
    "\u106BC",    # LINEAR A SIGN A511
    "\u106BD",    # LINEAR A SIGN A512
    "\u106BE",    # LINEAR A SIGN A513
    "\u106BF",    # LINEAR A SIGN A515
    "\u106C0",    # LINEAR A SIGN A516
    "\u106C1",    # LINEAR A SIGN A520
    "\u106C2",    # LINEAR A SIGN A521
    "\u106C3",    # LINEAR A SIGN A523
    "\u106C4",    # LINEAR A SIGN A524
    "\u106C5",    # LINEAR A SIGN A525
    "\u106C6",    # LINEAR A SIGN A526
    "\u106C7",    # LINEAR A SIGN A527
    "\u106C8",    # LINEAR A SIGN A528
    "\u106C9",    # LINEAR A SIGN A529
    "\u106CA",    # LINEAR A SIGN A530
    "\u106CB",    # LINEAR A SIGN A531
    "\u106CC",    # LINEAR A SIGN A532
    "\u106CD",    # LINEAR A SIGN A534
    "\u106CE",    # LINEAR A SIGN A535
    "\u106CF",    # LINEAR A SIGN A536
    "\u106D0",    # LINEAR A SIGN A537
    "\u106D1",    # LINEAR A SIGN A538
    "\u106D2",    # LINEAR A SIGN A539
    "\u106D3",    # LINEAR A SIGN A540
    "\u106D4",    # LINEAR A SIGN A541
    "\u106D5",    # LINEAR A SIGN A542
    "\u106D6",    # LINEAR A SIGN A545
    "\u106D7",    # LINEAR A SIGN A547
    "\u106D8",    # LINEAR A SIGN A548
    "\u106D9",    # LINEAR A SIGN A549
    "\u106DA",    # LINEAR A SIGN A550
    "\u106DB",    # LINEAR A SIGN A551
    "\u106DC",    # LINEAR A SIGN A552
    "\u106DD",    # LINEAR A SIGN A553
    "\u106DE",    # LINEAR A SIGN A554
    "\u106DF",    # LINEAR A SIGN A555
    "\u106E0",    # LINEAR A SIGN A556
    "\u106E1",    # LINEAR A SIGN A557
    "\u106E2",    # LINEAR A SIGN A559
    "\u106E3",    # LINEAR A SIGN A563
    "\u106E4",    # LINEAR A SIGN A564
    "\u106E5",    # LINEAR A SIGN A565
    "\u106E6",    # LINEAR A SIGN A566
    "\u106E7",    # LINEAR A SIGN A568
    "\u106E8",    # LINEAR A SIGN A569
    "\u106E9",    # LINEAR A SIGN A570
    "\u106EA",    # LINEAR A SIGN A571
    "\u106EB",    # LINEAR A SIGN A572
    "\u106EC",    # LINEAR A SIGN A573
    "\u106ED",    # LINEAR A SIGN A574
    "\u106EE",    # LINEAR A SIGN A575
    "\u106EF",    # LINEAR A SIGN A576
    "\u106F0",    # LINEAR A SIGN A577
    "\u106F1",    # LINEAR A SIGN A578
    "\u106F2",    # LINEAR A SIGN A579
    "\u106F3",    # LINEAR A SIGN A580
    "\u106F4",    # LINEAR A SIGN A581
    "\u106F5",    # LINEAR A SIGN A582
    "\u106F6",    # LINEAR A SIGN A583
    "\u106F7",    # LINEAR A SIGN A584
    "\u106F8",    # LINEAR A SIGN A585
    "\u106F9",    # LINEAR A SIGN A586
    "\u106FA",    # LINEAR A SIGN A587
    "\u106FB",    # LINEAR A SIGN A588
    "\u106FC",    # LINEAR A SIGN A589
    "\u106FD",    # LINEAR A SIGN A591
    "\u106FE",    # LINEAR A SIGN A592
    "\u106FF",    # LINEAR A SIGN A594
    "\u10700",    # LINEAR A SIGN A595
    "\u10701",    # LINEAR A SIGN A596
    "\u10702",    # LINEAR A SIGN A598
    "\u10703",    # LINEAR A SIGN A600
    "\u10704",    # LINEAR A SIGN A601
    "\u10705",    # LINEAR A SIGN A602
    "\u10706",    # LINEAR A SIGN A603
    "\u10707",    # LINEAR A SIGN A604
    "\u10708",    # LINEAR A SIGN A606
    "\u10709",    # LINEAR A SIGN A608
    "\u1070A",    # LINEAR A SIGN A609
    "\u1070B",    # LINEAR A SIGN A610
    "\u1070C",    # LINEAR A SIGN A611
    "\u1070D",    # LINEAR A SIGN A612
    "\u1070E",    # LINEAR A SIGN A613
    "\u1070F",    # LINEAR A SIGN A614
    "\u10710",    # LINEAR A SIGN A615
    "\u10711",    # LINEAR A SIGN A616
    "\u10712",    # LINEAR A SIGN A617
    "\u10713",    # LINEAR A SIGN A618
    "\u10714",    # LINEAR A SIGN A619
    "\u10715",    # LINEAR A SIGN A620
    "\u10716",    # LINEAR A SIGN A621
    "\u10717",    # LINEAR A SIGN A622
    "\u10718",    # LINEAR A SIGN A623
    "\u10719",    # LINEAR A SIGN A624
    "\u1071A",    # LINEAR A SIGN A626
    "\u1071B",    # LINEAR A SIGN A627
    "\u1071C",    # LINEAR A SIGN A628
    "\u1071D",    # LINEAR A SIGN A629
    "\u1071E",    # LINEAR A SIGN A634
    "\u1071F",    # LINEAR A SIGN A637
    "\u10720",    # LINEAR A SIGN A638
    "\u10721",    # LINEAR A SIGN A640
    "\u10722",    # LINEAR A SIGN A642
    "\u10723",    # LINEAR A SIGN A643
    "\u10724",    # LINEAR A SIGN A644
    "\u10725",    # LINEAR A SIGN A645
    "\u10726",    # LINEAR A SIGN A646
    "\u10727",    # LINEAR A SIGN A648
    "\u10728",    # LINEAR A SIGN A649
    "\u10729",    # LINEAR A SIGN A651
    "\u1072A",    # LINEAR A SIGN A652
    "\u1072B",    # LINEAR A SIGN A653
    "\u1072C",    # LINEAR A SIGN A654
    "\u1072D",    # LINEAR A SIGN A655
    "\u1072E",    # LINEAR A SIGN A656
    "\u1072F",    # LINEAR A SIGN A657
    "\u10730",    # LINEAR A SIGN A658
    "\u10731",    # LINEAR A SIGN A659
    "\u10732",    # LINEAR A SIGN A660
    "\u10733",    # LINEAR A SIGN A661
    "\u10734",    # LINEAR A SIGN A662
    "\u10735",    # LINEAR A SIGN A663
    "\u10736",    # LINEAR A SIGN A664
    "\u10740",    # LINEAR A SIGN A701 A
    "\u10741",    # LINEAR A SIGN A702 B
    "\u10742",    # LINEAR A SIGN A703 D
    "\u10743",    # LINEAR A SIGN A704 E
    "\u10744",    # LINEAR A SIGN A705 F
    "\u10745",    # LINEAR A SIGN A706 H
    "\u10746",    # LINEAR A SIGN A707 J
    "\u10747",    # LINEAR A SIGN A708 K
    "\u10748",    # LINEAR A SIGN A709 L
    "\u10749",    # LINEAR A SIGN A709-2 L2
    "\u1074A",    # LINEAR A SIGN A709-3 L3
    "\u1074B",    # LINEAR A SIGN A709-4 L4
    "\u1074C",    # LINEAR A SIGN A709-6 L6
    "\u1074D",    # LINEAR A SIGN A710 W
    "\u1074E",    # LINEAR A SIGN A711 X
    "\u1074F",    # LINEAR A SIGN A712 Y
    "\u10750",    # LINEAR A SIGN A713 OMEGA
    "\u10751",    # LINEAR A SIGN A714 ABB
    "\u10752",    # LINEAR A SIGN A715 BB
    "\u10753",    # LINEAR A SIGN A717 DD
    "\u10754",    # LINEAR A SIGN A726 EYYY
    "\u10755",    # LINEAR A SIGN A732 JE
    "\u10760",    # LINEAR A SIGN A800
    "\u10761",    # LINEAR A SIGN A801
    "\u10762",    # LINEAR A SIGN A802
    "\u10763",    # LINEAR A SIGN A803
    "\u10764",    # LINEAR A SIGN A804
    "\u10765",    # LINEAR A SIGN A805
    "\u10766",    # LINEAR A SIGN A806
    "\u10767",    # LINEAR A SIGN A807
    "\u10860",    # PALMYRENE LETTER ALEPH
    "\u10861",    # PALMYRENE LETTER BETH
    "\u10862",    # PALMYRENE LETTER GIMEL
    "\u10863",    # PALMYRENE LETTER DALETH
    "\u10864",    # PALMYRENE LETTER HE
    "\u10865",    # PALMYRENE LETTER WAW
    "\u10866",    # PALMYRENE LETTER ZAYIN
    "\u10867",    # PALMYRENE LETTER HETH
    "\u10868",    # PALMYRENE LETTER TETH
    "\u10869",    # PALMYRENE LETTER YODH
    "\u1086A",    # PALMYRENE LETTER KAPH
    "\u1086B",    # PALMYRENE LETTER LAMEDH
    "\u1086C",    # PALMYRENE LETTER MEM
    "\u1086D",    # PALMYRENE LETTER FINAL NUN
    "\u1086E",    # PALMYRENE LETTER NUN
    "\u1086F",    # PALMYRENE LETTER SAMEKH
    "\u10870",    # PALMYRENE LETTER AYIN
    "\u10871",    # PALMYRENE LETTER PE
    "\u10872",    # PALMYRENE LETTER SADHE
    "\u10873",    # PALMYRENE LETTER QOPH
    "\u10874",    # PALMYRENE LETTER RESH
    "\u10875",    # PALMYRENE LETTER SHIN
    "\u10876",    # PALMYRENE LETTER TAW
    "\u10877",    # PALMYRENE LEFT-POINTING FLEURON
    "\u10878",    # PALMYRENE RIGHT-POINTING FLEURON
    "\u10879",    # PALMYRENE NUMBER ONE
    "\u1087A",    # PALMYRENE NUMBER TWO
    "\u1087B",    # PALMYRENE NUMBER THREE
    "\u1087C",    # PALMYRENE NUMBER FOUR
    "\u1087D",    # PALMYRENE NUMBER FIVE
    "\u1087E",    # PALMYRENE NUMBER TEN
    "\u1087F",    # PALMYRENE NUMBER TWENTY
    "\u10880",    # NABATAEAN LETTER FINAL ALEPH
    "\u10881",    # NABATAEAN LETTER ALEPH
    "\u10882",    # NABATAEAN LETTER FINAL BETH
    "\u10883",    # NABATAEAN LETTER BETH
    "\u10884",    # NABATAEAN LETTER GIMEL
    "\u10885",    # NABATAEAN LETTER DALETH
    "\u10886",    # NABATAEAN LETTER FINAL HE
    "\u10887",    # NABATAEAN LETTER HE
    "\u10888",    # NABATAEAN LETTER WAW
    "\u10889",    # NABATAEAN LETTER ZAYIN
    "\u1088A",    # NABATAEAN LETTER HETH
    "\u1088B",    # NABATAEAN LETTER TETH
    "\u1088C",    # NABATAEAN LETTER FINAL YODH
    "\u1088D",    # NABATAEAN LETTER YODH
    "\u1088E",    # NABATAEAN LETTER FINAL KAPH
    "\u1088F",    # NABATAEAN LETTER KAPH
    "\u10890",    # NABATAEAN LETTER FINAL LAMEDH
    "\u10891",    # NABATAEAN LETTER LAMEDH
    "\u10892",    # NABATAEAN LETTER FINAL MEM
    "\u10893",    # NABATAEAN LETTER MEM
    "\u10894",    # NABATAEAN LETTER FINAL NUN
    "\u10895",    # NABATAEAN LETTER NUN
    "\u10896",    # NABATAEAN LETTER SAMEKH
    "\u10897",    # NABATAEAN LETTER AYIN
    "\u10898",    # NABATAEAN LETTER PE
    "\u10899",    # NABATAEAN LETTER SADHE
    "\u1089A",    # NABATAEAN LETTER QOPH
    "\u1089B",    # NABATAEAN LETTER RESH
    "\u1089C",    # NABATAEAN LETTER FINAL SHIN
    "\u1089D",    # NABATAEAN LETTER SHIN
    "\u1089E",    # NABATAEAN LETTER TAW
    "\u108A7",    # NABATAEAN NUMBER ONE
    "\u108A8",    # NABATAEAN NUMBER TWO
    "\u108A9",    # NABATAEAN NUMBER THREE
    "\u108AA",    # NABATAEAN NUMBER FOUR
    "\u108AB",    # NABATAEAN CRUCIFORM NUMBER FOUR
    "\u108AC",    # NABATAEAN NUMBER FIVE
    "\u108AD",    # NABATAEAN NUMBER TEN
    "\u108AE",    # NABATAEAN NUMBER TWENTY
    "\u108AF",    # NABATAEAN NUMBER ONE HUNDRED
    "\u10A80",    # OLD NORTH ARABIAN LETTER HEH
    "\u10A81",    # OLD NORTH ARABIAN LETTER LAM
    "\u10A82",    # OLD NORTH ARABIAN LETTER HAH
    "\u10A83",    # OLD NORTH ARABIAN LETTER MEEM
    "\u10A84",    # OLD NORTH ARABIAN LETTER QAF
    "\u10A85",    # OLD NORTH ARABIAN LETTER WAW
    "\u10A86",    # OLD NORTH ARABIAN LETTER ES-2
    "\u10A87",    # OLD NORTH ARABIAN LETTER REH
    "\u10A88",    # OLD NORTH ARABIAN LETTER BEH
    "\u10A89",    # OLD NORTH ARABIAN LETTER TEH
    "\u10A8A",    # OLD NORTH ARABIAN LETTER ES-1
    "\u10A8B",    # OLD NORTH ARABIAN LETTER KAF
    "\u10A8C",    # OLD NORTH ARABIAN LETTER NOON
    "\u10A8D",    # OLD NORTH ARABIAN LETTER KHAH
    "\u10A8E",    # OLD NORTH ARABIAN LETTER SAD
    "\u10A8F",    # OLD NORTH ARABIAN LETTER ES-3
    "\u10A90",    # OLD NORTH ARABIAN LETTER FEH
    "\u10A91",    # OLD NORTH ARABIAN LETTER ALEF
    "\u10A92",    # OLD NORTH ARABIAN LETTER AIN
    "\u10A93",    # OLD NORTH ARABIAN LETTER DAD
    "\u10A94",    # OLD NORTH ARABIAN LETTER GEEM
    "\u10A95",    # OLD NORTH ARABIAN LETTER DAL
    "\u10A96",    # OLD NORTH ARABIAN LETTER GHAIN
    "\u10A97",    # OLD NORTH ARABIAN LETTER TAH
    "\u10A98",    # OLD NORTH ARABIAN LETTER ZAIN
    "\u10A99",    # OLD NORTH ARABIAN LETTER THAL
    "\u10A9A",    # OLD NORTH ARABIAN LETTER YEH
    "\u10A9B",    # OLD NORTH ARABIAN LETTER THEH
    "\u10A9C",    # OLD NORTH ARABIAN LETTER ZAH
    "\u10A9D",    # OLD NORTH ARABIAN NUMBER ONE
    "\u10A9E",    # OLD NORTH ARABIAN NUMBER TEN
    "\u10A9F",    # OLD NORTH ARABIAN NUMBER TWENTY
    "\u10AC0",    # MANICHAEAN LETTER ALEPH
    "\u10AC1",    # MANICHAEAN LETTER BETH
    "\u10AC2",    # MANICHAEAN LETTER BHETH
    "\u10AC3",    # MANICHAEAN LETTER GIMEL
    "\u10AC4",    # MANICHAEAN LETTER GHIMEL
    "\u10AC5",    # MANICHAEAN LETTER DALETH
    "\u10AC6",    # MANICHAEAN LETTER HE
    "\u10AC7",    # MANICHAEAN LETTER WAW
    "\u10AC8",    # MANICHAEAN SIGN UD
    "\u10AC9",    # MANICHAEAN LETTER ZAYIN
    "\u10ACA",    # MANICHAEAN LETTER ZHAYIN
    "\u10ACB",    # MANICHAEAN LETTER JAYIN
    "\u10ACC",    # MANICHAEAN LETTER JHAYIN
    "\u10ACD",    # MANICHAEAN LETTER HETH
    "\u10ACE",    # MANICHAEAN LETTER TETH
    "\u10ACF",    # MANICHAEAN LETTER YODH
    "\u10AD0",    # MANICHAEAN LETTER KAPH
    "\u10AD1",    # MANICHAEAN LETTER XAPH
    "\u10AD2",    # MANICHAEAN LETTER KHAPH
    "\u10AD3",    # MANICHAEAN LETTER LAMEDH
    "\u10AD4",    # MANICHAEAN LETTER DHAMEDH
    "\u10AD5",    # MANICHAEAN LETTER THAMEDH
    "\u10AD6",    # MANICHAEAN LETTER MEM
    "\u10AD7",    # MANICHAEAN LETTER NUN
    "\u10AD8",    # MANICHAEAN LETTER SAMEKH
    "\u10AD9",    # MANICHAEAN LETTER AYIN
    "\u10ADA",    # MANICHAEAN LETTER AAYIN
    "\u10ADB",    # MANICHAEAN LETTER PE
    "\u10ADC",    # MANICHAEAN LETTER FE
    "\u10ADD",    # MANICHAEAN LETTER SADHE
    "\u10ADE",    # MANICHAEAN LETTER QOPH
    "\u10ADF",    # MANICHAEAN LETTER XOPH
    "\u10AE0",    # MANICHAEAN LETTER QHOPH
    "\u10AE1",    # MANICHAEAN LETTER RESH
    "\u10AE2",    # MANICHAEAN LETTER SHIN
    "\u10AE3",    # MANICHAEAN LETTER SSHIN
    "\u10AE4",    # MANICHAEAN LETTER TAW
    "\u10AE5",    # MANICHAEAN ABBREVIATION MARK ABOVE
    "\u10AE6",    # MANICHAEAN ABBREVIATION MARK BELOW
    "\u10AEB",    # MANICHAEAN NUMBER ONE
    "\u10AEC",    # MANICHAEAN NUMBER FIVE
    "\u10AED",    # MANICHAEAN NUMBER TEN
    "\u10AEE",    # MANICHAEAN NUMBER TWENTY
    "\u10AEF",    # MANICHAEAN NUMBER ONE HUNDRED
    "\u10AF0",    # MANICHAEAN PUNCTUATION STAR
    "\u10AF1",    # MANICHAEAN PUNCTUATION FLEURON
    "\u10AF2",    # MANICHAEAN PUNCTUATION DOUBLE DOT WITHIN DOT
    "\u10AF3",    # MANICHAEAN PUNCTUATION DOT WITHIN DOT
    "\u10AF4",    # MANICHAEAN PUNCTUATION DOT
    "\u10AF5",    # MANICHAEAN PUNCTUATION TWO DOTS
    "\u10AF6",    # MANICHAEAN PUNCTUATION LINE FILLER
    "\u10B80",    # PSALTER PAHLAVI LETTER ALEPH
    "\u10B81",    # PSALTER PAHLAVI LETTER BETH
    "\u10B82",    # PSALTER PAHLAVI LETTER GIMEL
    "\u10B83",    # PSALTER PAHLAVI LETTER DALETH
    "\u10B84",    # PSALTER PAHLAVI LETTER HE
    "\u10B85",    # PSALTER PAHLAVI LETTER WAW-AYIN-RESH
    "\u10B86",    # PSALTER PAHLAVI LETTER ZAYIN
    "\u10B87",    # PSALTER PAHLAVI LETTER HETH
    "\u10B88",    # PSALTER PAHLAVI LETTER YODH
    "\u10B89",    # PSALTER PAHLAVI LETTER KAPH
    "\u10B8A",    # PSALTER PAHLAVI LETTER LAMEDH
    "\u10B8B",    # PSALTER PAHLAVI LETTER MEM-QOPH
    "\u10B8C",    # PSALTER PAHLAVI LETTER NUN
    "\u10B8D",    # PSALTER PAHLAVI LETTER SAMEKH
    "\u10B8E",    # PSALTER PAHLAVI LETTER PE
    "\u10B8F",    # PSALTER PAHLAVI LETTER SADHE
    "\u10B90",    # PSALTER PAHLAVI LETTER SHIN
    "\u10B91",    # PSALTER PAHLAVI LETTER TAW
    "\u10B99",    # PSALTER PAHLAVI SECTION MARK
    "\u10B9A",    # PSALTER PAHLAVI TURNED SECTION MARK
    "\u10B9B",    # PSALTER PAHLAVI FOUR DOTS WITH CROSS
    "\u10B9C",    # PSALTER PAHLAVI FOUR DOTS WITH DOT
    "\u10BA9",    # PSALTER PAHLAVI NUMBER ONE
    "\u10BAA",    # PSALTER PAHLAVI NUMBER TWO
    "\u10BAB",    # PSALTER PAHLAVI NUMBER THREE
    "\u10BAC",    # PSALTER PAHLAVI NUMBER FOUR
    "\u10BAD",    # PSALTER PAHLAVI NUMBER TEN
    "\u10BAE",    # PSALTER PAHLAVI NUMBER TWENTY
    "\u10BAF",    # PSALTER PAHLAVI NUMBER ONE HUNDRED
    "\u1107F",    # BRAHMI NUMBER JOINER
    "\u11150",    # MAHAJANI LETTER A
    "\u11151",    # MAHAJANI LETTER I
    "\u11152",    # MAHAJANI LETTER U
    "\u11153",    # MAHAJANI LETTER E
    "\u11154",    # MAHAJANI LETTER O
    "\u11155",    # MAHAJANI LETTER KA
    "\u11156",    # MAHAJANI LETTER KHA
    "\u11157",    # MAHAJANI LETTER GA
    "\u11158",    # MAHAJANI LETTER GHA
    "\u11159",    # MAHAJANI LETTER CA
    "\u1115A",    # MAHAJANI LETTER CHA
    "\u1115B",    # MAHAJANI LETTER JA
    "\u1115C",    # MAHAJANI LETTER JHA
    "\u1115D",    # MAHAJANI LETTER NYA
    "\u1115E",    # MAHAJANI LETTER TTA
    "\u1115F",    # MAHAJANI LETTER TTHA
    "\u11160",    # MAHAJANI LETTER DDA
    "\u11161",    # MAHAJANI LETTER DDHA
    "\u11162",    # MAHAJANI LETTER NNA
    "\u11163",    # MAHAJANI LETTER TA
    "\u11164",    # MAHAJANI LETTER THA
    "\u11165",    # MAHAJANI LETTER DA
    "\u11166",    # MAHAJANI LETTER DHA
    "\u11167",    # MAHAJANI LETTER NA
    "\u11168",    # MAHAJANI LETTER PA
    "\u11169",    # MAHAJANI LETTER PHA
    "\u1116A",    # MAHAJANI LETTER BA
    "\u1116B",    # MAHAJANI LETTER BHA
    "\u1116C",    # MAHAJANI LETTER MA
    "\u1116D",    # MAHAJANI LETTER RA
    "\u1116E",    # MAHAJANI LETTER LA
    "\u1116F",    # MAHAJANI LETTER VA
    "\u11170",    # MAHAJANI LETTER SA
    "\u11171",    # MAHAJANI LETTER HA
    "\u11172",    # MAHAJANI LETTER RRA
    "\u11173",    # MAHAJANI SIGN NUKTA
    "\u11174",    # MAHAJANI ABBREVIATION SIGN
    "\u11175",    # MAHAJANI SECTION MARK
    "\u11176",    # MAHAJANI LIGATURE SHRI
    "\u111CD",    # SHARADA SUTRA MARK
    "\u111DA",    # SHARADA EKAM
    "\u111E1",    # SINHALA ARCHAIC DIGIT ONE
    "\u111E2",    # SINHALA ARCHAIC DIGIT TWO
    "\u111E3",    # SINHALA ARCHAIC DIGIT THREE
    "\u111E4",    # SINHALA ARCHAIC DIGIT FOUR
    "\u111E5",    # SINHALA ARCHAIC DIGIT FIVE
    "\u111E6",    # SINHALA ARCHAIC DIGIT SIX
    "\u111E7",    # SINHALA ARCHAIC DIGIT SEVEN
    "\u111E8",    # SINHALA ARCHAIC DIGIT EIGHT
    "\u111E9",    # SINHALA ARCHAIC DIGIT NINE
    "\u111EA",    # SINHALA ARCHAIC NUMBER TEN
    "\u111EB",    # SINHALA ARCHAIC NUMBER TWENTY
    "\u111EC",    # SINHALA ARCHAIC NUMBER THIRTY
    "\u111ED",    # SINHALA ARCHAIC NUMBER FORTY
    "\u111EE",    # SINHALA ARCHAIC NUMBER FIFTY
    "\u111EF",    # SINHALA ARCHAIC NUMBER SIXTY
    "\u111F0",    # SINHALA ARCHAIC NUMBER SEVENTY
    "\u111F1",    # SINHALA ARCHAIC NUMBER EIGHTY
    "\u111F2",    # SINHALA ARCHAIC NUMBER NINETY
    "\u111F3",    # SINHALA ARCHAIC NUMBER ONE HUNDRED
    "\u111F4",    # SINHALA ARCHAIC NUMBER ONE THOUSAND
    "\u11200",    # KHOJKI LETTER A
    "\u11201",    # KHOJKI LETTER AA
    "\u11202",    # KHOJKI LETTER I
    "\u11203",    # KHOJKI LETTER U
    "\u11204",    # KHOJKI LETTER E
    "\u11205",    # KHOJKI LETTER AI
    "\u11206",    # KHOJKI LETTER O
    "\u11207",    # KHOJKI LETTER AU
    "\u11208",    # KHOJKI LETTER KA
    "\u11209",    # KHOJKI LETTER KHA
    "\u1120A",    # KHOJKI LETTER GA
    "\u1120B",    # KHOJKI LETTER GGA
    "\u1120C",    # KHOJKI LETTER GHA
    "\u1120D",    # KHOJKI LETTER NGA
    "\u1120E",    # KHOJKI LETTER CA
    "\u1120F",    # KHOJKI LETTER CHA
    "\u11210",    # KHOJKI LETTER JA
    "\u11211",    # KHOJKI LETTER JJA
    "\u11213",    # KHOJKI LETTER NYA
    "\u11214",    # KHOJKI LETTER TTA
    "\u11215",    # KHOJKI LETTER TTHA
    "\u11216",    # KHOJKI LETTER DDA
    "\u11217",    # KHOJKI LETTER DDHA
    "\u11218",    # KHOJKI LETTER NNA
    "\u11219",    # KHOJKI LETTER TA
    "\u1121A",    # KHOJKI LETTER THA
    "\u1121B",    # KHOJKI LETTER DA
    "\u1121C",    # KHOJKI LETTER DDDA
    "\u1121D",    # KHOJKI LETTER DHA
    "\u1121E",    # KHOJKI LETTER NA
    "\u1121F",    # KHOJKI LETTER PA
    "\u11220",    # KHOJKI LETTER PHA
    "\u11221",    # KHOJKI LETTER BA
    "\u11222",    # KHOJKI LETTER BBA
    "\u11223",    # KHOJKI LETTER BHA
    "\u11224",    # KHOJKI LETTER MA
    "\u11225",    # KHOJKI LETTER YA
    "\u11226",    # KHOJKI LETTER RA
    "\u11227",    # KHOJKI LETTER LA
    "\u11228",    # KHOJKI LETTER VA
    "\u11229",    # KHOJKI LETTER SA
    "\u1122A",    # KHOJKI LETTER HA
    "\u1122B",    # KHOJKI LETTER LLA
    "\u1122C",    # KHOJKI VOWEL SIGN AA
    "\u1122D",    # KHOJKI VOWEL SIGN I
    "\u1122E",    # KHOJKI VOWEL SIGN II
    "\u1122F",    # KHOJKI VOWEL SIGN U
    "\u11230",    # KHOJKI VOWEL SIGN E
    "\u11231",    # KHOJKI VOWEL SIGN AI
    "\u11232",    # KHOJKI VOWEL SIGN O
    "\u11233",    # KHOJKI VOWEL SIGN AU
    "\u11234",    # KHOJKI SIGN ANUSVARA
    "\u11235",    # KHOJKI SIGN VIRAMA
    "\u11236",    # KHOJKI SIGN NUKTA
    "\u11237",    # KHOJKI SIGN SHADDA
    "\u11238",    # KHOJKI DANDA
    "\u11239",    # KHOJKI DOUBLE DANDA
    "\u1123A",    # KHOJKI WORD SEPARATOR
    "\u1123B",    # KHOJKI SECTION MARK
    "\u1123C",    # KHOJKI DOUBLE SECTION MARK
    "\u1123D",    # KHOJKI ABBREVIATION SIGN
    "\u112B0",    # KHUDAWADI LETTER A
    "\u112B1",    # KHUDAWADI LETTER AA
    "\u112B2",    # KHUDAWADI LETTER I
    "\u112B3",    # KHUDAWADI LETTER II
    "\u112B4",    # KHUDAWADI LETTER U
    "\u112B5",    # KHUDAWADI LETTER UU
    "\u112B6",    # KHUDAWADI LETTER E
    "\u112B7",    # KHUDAWADI LETTER AI
    "\u112B8",    # KHUDAWADI LETTER O
    "\u112B9",    # KHUDAWADI LETTER AU
    "\u112BA",    # KHUDAWADI LETTER KA
    "\u112BB",    # KHUDAWADI LETTER KHA
    "\u112BC",    # KHUDAWADI LETTER GA
    "\u112BD",    # KHUDAWADI LETTER GGA
    "\u112BE",    # KHUDAWADI LETTER GHA
    "\u112BF",    # KHUDAWADI LETTER NGA
    "\u112C0",    # KHUDAWADI LETTER CA
    "\u112C1",    # KHUDAWADI LETTER CHA
    "\u112C2",    # KHUDAWADI LETTER JA
    "\u112C3",    # KHUDAWADI LETTER JJA
    "\u112C4",    # KHUDAWADI LETTER JHA
    "\u112C5",    # KHUDAWADI LETTER NYA
    "\u112C6",    # KHUDAWADI LETTER TTA
    "\u112C7",    # KHUDAWADI LETTER TTHA
    "\u112C8",    # KHUDAWADI LETTER DDA
    "\u112C9",    # KHUDAWADI LETTER DDDA
    "\u112CA",    # KHUDAWADI LETTER RRA
    "\u112CB",    # KHUDAWADI LETTER DDHA
    "\u112CC",    # KHUDAWADI LETTER NNA
    "\u112CD",    # KHUDAWADI LETTER TA
    "\u112CE",    # KHUDAWADI LETTER THA
    "\u112CF",    # KHUDAWADI LETTER DA
    "\u112D0",    # KHUDAWADI LETTER DHA
    "\u112D1",    # KHUDAWADI LETTER NA
    "\u112D2",    # KHUDAWADI LETTER PA
    "\u112D3",    # KHUDAWADI LETTER PHA
    "\u112D4",    # KHUDAWADI LETTER BA
    "\u112D5",    # KHUDAWADI LETTER BBA
    "\u112D6",    # KHUDAWADI LETTER BHA
    "\u112D7",    # KHUDAWADI LETTER MA
    "\u112D8",    # KHUDAWADI LETTER YA
    "\u112D9",    # KHUDAWADI LETTER RA
    "\u112DA",    # KHUDAWADI LETTER LA
    "\u112DB",    # KHUDAWADI LETTER VA
    "\u112DC",    # KHUDAWADI LETTER SHA
    "\u112DD",    # KHUDAWADI LETTER SA
    "\u112DE",    # KHUDAWADI LETTER HA
    "\u112DF",    # KHUDAWADI SIGN ANUSVARA
    "\u112E0",    # KHUDAWADI VOWEL SIGN AA
    "\u112E1",    # KHUDAWADI VOWEL SIGN I
    "\u112E2",    # KHUDAWADI VOWEL SIGN II
    "\u112E3",    # KHUDAWADI VOWEL SIGN U
    "\u112E4",    # KHUDAWADI VOWEL SIGN UU
    "\u112E5",    # KHUDAWADI VOWEL SIGN E
    "\u112E6",    # KHUDAWADI VOWEL SIGN AI
    "\u112E7",    # KHUDAWADI VOWEL SIGN O
    "\u112E8",    # KHUDAWADI VOWEL SIGN AU
    "\u112E9",    # KHUDAWADI SIGN NUKTA
    "\u112EA",    # KHUDAWADI SIGN VIRAMA
    "\u112F0",    # KHUDAWADI DIGIT ZERO
    "\u112F1",    # KHUDAWADI DIGIT ONE
    "\u112F2",    # KHUDAWADI DIGIT TWO
    "\u112F3",    # KHUDAWADI DIGIT THREE
    "\u112F4",    # KHUDAWADI DIGIT FOUR
    "\u112F5",    # KHUDAWADI DIGIT FIVE
    "\u112F6",    # KHUDAWADI DIGIT SIX
    "\u112F7",    # KHUDAWADI DIGIT SEVEN
    "\u112F8",    # KHUDAWADI DIGIT EIGHT
    "\u112F9",    # KHUDAWADI DIGIT NINE
    "\u11301",    # GRANTHA SIGN CANDRABINDU
    "\u11302",    # GRANTHA SIGN ANUSVARA
    "\u11303",    # GRANTHA SIGN VISARGA
    "\u11305",    # GRANTHA LETTER A
    "\u11306",    # GRANTHA LETTER AA
    "\u11307",    # GRANTHA LETTER I
    "\u11308",    # GRANTHA LETTER II
    "\u11309",    # GRANTHA LETTER U
    "\u1130A",    # GRANTHA LETTER UU
    "\u1130B",    # GRANTHA LETTER VOCALIC R
    "\u1130C",    # GRANTHA LETTER VOCALIC L
    "\u1130F",    # GRANTHA LETTER EE
    "\u11310",    # GRANTHA LETTER AI
    "\u11313",    # GRANTHA LETTER OO
    "\u11314",    # GRANTHA LETTER AU
    "\u11315",    # GRANTHA LETTER KA
    "\u11316",    # GRANTHA LETTER KHA
    "\u11317",    # GRANTHA LETTER GA
    "\u11318",    # GRANTHA LETTER GHA
    "\u11319",    # GRANTHA LETTER NGA
    "\u1131A",    # GRANTHA LETTER CA
    "\u1131B",    # GRANTHA LETTER CHA
    "\u1131C",    # GRANTHA LETTER JA
    "\u1131D",    # GRANTHA LETTER JHA
    "\u1131E",    # GRANTHA LETTER NYA
    "\u1131F",    # GRANTHA LETTER TTA
    "\u11320",    # GRANTHA LETTER TTHA
    "\u11321",    # GRANTHA LETTER DDA
    "\u11322",    # GRANTHA LETTER DDHA
    "\u11323",    # GRANTHA LETTER NNA
    "\u11324",    # GRANTHA LETTER TA
    "\u11325",    # GRANTHA LETTER THA
    "\u11326",    # GRANTHA LETTER DA
    "\u11327",    # GRANTHA LETTER DHA
    "\u11328",    # GRANTHA LETTER NA
    "\u1132A",    # GRANTHA LETTER PA
    "\u1132B",    # GRANTHA LETTER PHA
    "\u1132C",    # GRANTHA LETTER BA
    "\u1132D",    # GRANTHA LETTER BHA
    "\u1132E",    # GRANTHA LETTER MA
    "\u1132F",    # GRANTHA LETTER YA
    "\u11330",    # GRANTHA LETTER RA
    "\u11332",    # GRANTHA LETTER LA
    "\u11333",    # GRANTHA LETTER LLA
    "\u11335",    # GRANTHA LETTER VA
    "\u11336",    # GRANTHA LETTER SHA
    "\u11337",    # GRANTHA LETTER SSA
    "\u11338",    # GRANTHA LETTER SA
    "\u11339",    # GRANTHA LETTER HA
    "\u1133C",    # GRANTHA SIGN NUKTA
    "\u1133D",    # GRANTHA SIGN AVAGRAHA
    "\u1133E",    # GRANTHA VOWEL SIGN AA
    "\u1133F",    # GRANTHA VOWEL SIGN I
    "\u11340",    # GRANTHA VOWEL SIGN II
    "\u11341",    # GRANTHA VOWEL SIGN U
    "\u11342",    # GRANTHA VOWEL SIGN UU
    "\u11343",    # GRANTHA VOWEL SIGN VOCALIC R
    "\u11344",    # GRANTHA VOWEL SIGN VOCALIC RR
    "\u11347",    # GRANTHA VOWEL SIGN EE
    "\u11348",    # GRANTHA VOWEL SIGN AI
    "\u1134B",    # GRANTHA VOWEL SIGN OO
    "\u1134C",    # GRANTHA VOWEL SIGN AU
    "\u1134D",    # GRANTHA SIGN VIRAMA
    "\u11357",    # GRANTHA AU LENGTH MARK
    "\u1135D",    # GRANTHA SIGN PLUTA
    "\u1135E",    # GRANTHA LETTER VEDIC ANUSVARA
    "\u1135F",    # GRANTHA LETTER VEDIC DOUBLE ANUSVARA
    "\u11360",    # GRANTHA LETTER VOCALIC RR
    "\u11361",    # GRANTHA LETTER VOCALIC LL
    "\u11362",    # GRANTHA VOWEL SIGN VOCALIC L
    "\u11363",    # GRANTHA VOWEL SIGN VOCALIC LL
    "\u11366",    # COMBINING GRANTHA DIGIT ZERO
    "\u11367",    # COMBINING GRANTHA DIGIT ONE
    "\u11368",    # COMBINING GRANTHA DIGIT TWO
    "\u11369",    # COMBINING GRANTHA DIGIT THREE
    "\u1136A",    # COMBINING GRANTHA DIGIT FOUR
    "\u1136B",    # COMBINING GRANTHA DIGIT FIVE
    "\u1136C",    # COMBINING GRANTHA DIGIT SIX
    "\u11370",    # COMBINING GRANTHA LETTER A
    "\u11371",    # COMBINING GRANTHA LETTER KA
    "\u11372",    # COMBINING GRANTHA LETTER NA
    "\u11373",    # COMBINING GRANTHA LETTER VI
    "\u11374",    # COMBINING GRANTHA LETTER PA
    "\u11480",    # TIRHUTA ANJI
    "\u11481",    # TIRHUTA LETTER A
    "\u11482",    # TIRHUTA LETTER AA
    "\u11483",    # TIRHUTA LETTER I
    "\u11484",    # TIRHUTA LETTER II
    "\u11485",    # TIRHUTA LETTER U
    "\u11486",    # TIRHUTA LETTER UU
    "\u11487",    # TIRHUTA LETTER VOCALIC R
    "\u11488",    # TIRHUTA LETTER VOCALIC RR
    "\u11489",    # TIRHUTA LETTER VOCALIC L
    "\u1148A",    # TIRHUTA LETTER VOCALIC LL
    "\u1148B",    # TIRHUTA LETTER E
    "\u1148C",    # TIRHUTA LETTER AI
    "\u1148D",    # TIRHUTA LETTER O
    "\u1148E",    # TIRHUTA LETTER AU
    "\u1148F",    # TIRHUTA LETTER KA
    "\u11490",    # TIRHUTA LETTER KHA
    "\u11491",    # TIRHUTA LETTER GA
    "\u11492",    # TIRHUTA LETTER GHA
    "\u11493",    # TIRHUTA LETTER NGA
    "\u11494",    # TIRHUTA LETTER CA
    "\u11495",    # TIRHUTA LETTER CHA
    "\u11496",    # TIRHUTA LETTER JA
    "\u11497",    # TIRHUTA LETTER JHA
    "\u11498",    # TIRHUTA LETTER NYA
    "\u11499",    # TIRHUTA LETTER TTA
    "\u1149A",    # TIRHUTA LETTER TTHA
    "\u1149B",    # TIRHUTA LETTER DDA
    "\u1149C",    # TIRHUTA LETTER DDHA
    "\u1149D",    # TIRHUTA LETTER NNA
    "\u1149E",    # TIRHUTA LETTER TA
    "\u1149F",    # TIRHUTA LETTER THA
    "\u114A0",    # TIRHUTA LETTER DA
    "\u114A1",    # TIRHUTA LETTER DHA
    "\u114A2",    # TIRHUTA LETTER NA
    "\u114A3",    # TIRHUTA LETTER PA
    "\u114A4",    # TIRHUTA LETTER PHA
    "\u114A5",    # TIRHUTA LETTER BA
    "\u114A6",    # TIRHUTA LETTER BHA
    "\u114A7",    # TIRHUTA LETTER MA
    "\u114A8",    # TIRHUTA LETTER YA
    "\u114A9",    # TIRHUTA LETTER RA
    "\u114AA",    # TIRHUTA LETTER LA
    "\u114AB",    # TIRHUTA LETTER VA
    "\u114AC",    # TIRHUTA LETTER SHA
    "\u114AD",    # TIRHUTA LETTER SSA
    "\u114AE",    # TIRHUTA LETTER SA
    "\u114AF",    # TIRHUTA LETTER HA
    "\u114B0",    # TIRHUTA VOWEL SIGN AA
    "\u114B1",    # TIRHUTA VOWEL SIGN I
    "\u114B2",    # TIRHUTA VOWEL SIGN II
    "\u114B3",    # TIRHUTA VOWEL SIGN U
    "\u114B4",    # TIRHUTA VOWEL SIGN UU
    "\u114B5",    # TIRHUTA VOWEL SIGN VOCALIC R
    "\u114B6",    # TIRHUTA VOWEL SIGN VOCALIC RR
    "\u114B7",    # TIRHUTA VOWEL SIGN VOCALIC L
    "\u114B8",    # TIRHUTA VOWEL SIGN VOCALIC LL
    "\u114B9",    # TIRHUTA VOWEL SIGN E
    "\u114BA",    # TIRHUTA VOWEL SIGN SHORT E
    "\u114BB",    # TIRHUTA VOWEL SIGN AI
    "\u114BC",    # TIRHUTA VOWEL SIGN O
    "\u114BD",    # TIRHUTA VOWEL SIGN SHORT O
    "\u114BE",    # TIRHUTA VOWEL SIGN AU
    "\u114BF",    # TIRHUTA SIGN CANDRABINDU
    "\u114C0",    # TIRHUTA SIGN ANUSVARA
    "\u114C1",    # TIRHUTA SIGN VISARGA
    "\u114C2",    # TIRHUTA SIGN VIRAMA
    "\u114C3",    # TIRHUTA SIGN NUKTA
    "\u114C4",    # TIRHUTA SIGN AVAGRAHA
    "\u114C5",    # TIRHUTA GVANG
    "\u114C6",    # TIRHUTA ABBREVIATION SIGN
    "\u114C7",    # TIRHUTA OM
    "\u114D0",    # TIRHUTA DIGIT ZERO
    "\u114D1",    # TIRHUTA DIGIT ONE
    "\u114D2",    # TIRHUTA DIGIT TWO
    "\u114D3",    # TIRHUTA DIGIT THREE
    "\u114D4",    # TIRHUTA DIGIT FOUR
    "\u114D5",    # TIRHUTA DIGIT FIVE
    "\u114D6",    # TIRHUTA DIGIT SIX
    "\u114D7",    # TIRHUTA DIGIT SEVEN
    "\u114D8",    # TIRHUTA DIGIT EIGHT
    "\u114D9",    # TIRHUTA DIGIT NINE
    "\u11580",    # SIDDHAM LETTER A
    "\u11581",    # SIDDHAM LETTER AA
    "\u11582",    # SIDDHAM LETTER I
    "\u11583",    # SIDDHAM LETTER II
    "\u11584",    # SIDDHAM LETTER U
    "\u11585",    # SIDDHAM LETTER UU
    "\u11586",    # SIDDHAM LETTER VOCALIC R
    "\u11587",    # SIDDHAM LETTER VOCALIC RR
    "\u11588",    # SIDDHAM LETTER VOCALIC L
    "\u11589",    # SIDDHAM LETTER VOCALIC LL
    "\u1158A",    # SIDDHAM LETTER E
    "\u1158B",    # SIDDHAM LETTER AI
    "\u1158C",    # SIDDHAM LETTER O
    "\u1158D",    # SIDDHAM LETTER AU
    "\u1158E",    # SIDDHAM LETTER KA
    "\u1158F",    # SIDDHAM LETTER KHA
    "\u11590",    # SIDDHAM LETTER GA
    "\u11591",    # SIDDHAM LETTER GHA
    "\u11592",    # SIDDHAM LETTER NGA
    "\u11593",    # SIDDHAM LETTER CA
    "\u11594",    # SIDDHAM LETTER CHA
    "\u11595",    # SIDDHAM LETTER JA
    "\u11596",    # SIDDHAM LETTER JHA
    "\u11597",    # SIDDHAM LETTER NYA
    "\u11598",    # SIDDHAM LETTER TTA
    "\u11599",    # SIDDHAM LETTER TTHA
    "\u1159A",    # SIDDHAM LETTER DDA
    "\u1159B",    # SIDDHAM LETTER DDHA
    "\u1159C",    # SIDDHAM LETTER NNA
    "\u1159D",    # SIDDHAM LETTER TA
    "\u1159E",    # SIDDHAM LETTER THA
    "\u1159F",    # SIDDHAM LETTER DA
    "\u115A0",    # SIDDHAM LETTER DHA
    "\u115A1",    # SIDDHAM LETTER NA
    "\u115A2",    # SIDDHAM LETTER PA
    "\u115A3",    # SIDDHAM LETTER PHA
    "\u115A4",    # SIDDHAM LETTER BA
    "\u115A5",    # SIDDHAM LETTER BHA
    "\u115A6",    # SIDDHAM LETTER MA
    "\u115A7",    # SIDDHAM LETTER YA
    "\u115A8",    # SIDDHAM LETTER RA
    "\u115A9",    # SIDDHAM LETTER LA
    "\u115AA",    # SIDDHAM LETTER VA
    "\u115AB",    # SIDDHAM LETTER SHA
    "\u115AC",    # SIDDHAM LETTER SSA
    "\u115AD",    # SIDDHAM LETTER SA
    "\u115AE",    # SIDDHAM LETTER HA
    "\u115AF",    # SIDDHAM VOWEL SIGN AA
    "\u115B0",    # SIDDHAM VOWEL SIGN I
    "\u115B1",    # SIDDHAM VOWEL SIGN II
    "\u115B2",    # SIDDHAM VOWEL SIGN U
    "\u115B3",    # SIDDHAM VOWEL SIGN UU
    "\u115B4",    # SIDDHAM VOWEL SIGN VOCALIC R
    "\u115B5",    # SIDDHAM VOWEL SIGN VOCALIC RR
    "\u115B8",    # SIDDHAM VOWEL SIGN E
    "\u115B9",    # SIDDHAM VOWEL SIGN AI
    "\u115BA",    # SIDDHAM VOWEL SIGN O
    "\u115BB",    # SIDDHAM VOWEL SIGN AU
    "\u115BC",    # SIDDHAM SIGN CANDRABINDU
    "\u115BD",    # SIDDHAM SIGN ANUSVARA
    "\u115BE",    # SIDDHAM SIGN VISARGA
    "\u115BF",    # SIDDHAM SIGN VIRAMA
    "\u115C0",    # SIDDHAM SIGN NUKTA
    "\u115C1",    # SIDDHAM SIGN SIDDHAM
    "\u115C2",    # SIDDHAM DANDA
    "\u115C3",    # SIDDHAM DOUBLE DANDA
    "\u115C4",    # SIDDHAM SEPARATOR DOT
    "\u115C5",    # SIDDHAM SEPARATOR BAR
    "\u115C6",    # SIDDHAM REPETITION MARK-1
    "\u115C7",    # SIDDHAM REPETITION MARK-2
    "\u115C8",    # SIDDHAM REPETITION MARK-3
    "\u115C9",    # SIDDHAM END OF TEXT MARK
    "\u11600",    # MODI LETTER A
    "\u11601",    # MODI LETTER AA
    "\u11602",    # MODI LETTER I
    "\u11603",    # MODI LETTER II
    "\u11604",    # MODI LETTER U
    "\u11605",    # MODI LETTER UU
    "\u11606",    # MODI LETTER VOCALIC R
    "\u11607",    # MODI LETTER VOCALIC RR
    "\u11608",    # MODI LETTER VOCALIC L
    "\u11609",    # MODI LETTER VOCALIC LL
    "\u1160A",    # MODI LETTER E
    "\u1160B",    # MODI LETTER AI
    "\u1160C",    # MODI LETTER O
    "\u1160D",    # MODI LETTER AU
    "\u1160E",    # MODI LETTER KA
    "\u1160F",    # MODI LETTER KHA
    "\u11610",    # MODI LETTER GA
    "\u11611",    # MODI LETTER GHA
    "\u11612",    # MODI LETTER NGA
    "\u11613",    # MODI LETTER CA
    "\u11614",    # MODI LETTER CHA
    "\u11615",    # MODI LETTER JA
    "\u11616",    # MODI LETTER JHA
    "\u11617",    # MODI LETTER NYA
    "\u11618",    # MODI LETTER TTA
    "\u11619",    # MODI LETTER TTHA
    "\u1161A",    # MODI LETTER DDA
    "\u1161B",    # MODI LETTER DDHA
    "\u1161C",    # MODI LETTER NNA
    "\u1161D",    # MODI LETTER TA
    "\u1161E",    # MODI LETTER THA
    "\u1161F",    # MODI LETTER DA
    "\u11620",    # MODI LETTER DHA
    "\u11621",    # MODI LETTER NA
    "\u11622",    # MODI LETTER PA
    "\u11623",    # MODI LETTER PHA
    "\u11624",    # MODI LETTER BA
    "\u11625",    # MODI LETTER BHA
    "\u11626",    # MODI LETTER MA
    "\u11627",    # MODI LETTER YA
    "\u11628",    # MODI LETTER RA
    "\u11629",    # MODI LETTER LA
    "\u1162A",    # MODI LETTER VA
    "\u1162B",    # MODI LETTER SHA
    "\u1162C",    # MODI LETTER SSA
    "\u1162D",    # MODI LETTER SA
    "\u1162E",    # MODI LETTER HA
    "\u1162F",    # MODI LETTER LLA
    "\u11630",    # MODI VOWEL SIGN AA
    "\u11631",    # MODI VOWEL SIGN I
    "\u11632",    # MODI VOWEL SIGN II
    "\u11633",    # MODI VOWEL SIGN U
    "\u11634",    # MODI VOWEL SIGN UU
    "\u11635",    # MODI VOWEL SIGN VOCALIC R
    "\u11636",    # MODI VOWEL SIGN VOCALIC RR
    "\u11637",    # MODI VOWEL SIGN VOCALIC L
    "\u11638",    # MODI VOWEL SIGN VOCALIC LL
    "\u11639",    # MODI VOWEL SIGN E
    "\u1163A",    # MODI VOWEL SIGN AI
    "\u1163B",    # MODI VOWEL SIGN O
    "\u1163C",    # MODI VOWEL SIGN AU
    "\u1163D",    # MODI SIGN ANUSVARA
    "\u1163E",    # MODI SIGN VISARGA
    "\u1163F",    # MODI SIGN VIRAMA
    "\u11640",    # MODI SIGN ARDHACANDRA
    "\u11641",    # MODI DANDA
    "\u11642",    # MODI DOUBLE DANDA
    "\u11643",    # MODI ABBREVIATION SIGN
    "\u11644",    # MODI SIGN HUVA
    "\u11650",    # MODI DIGIT ZERO
    "\u11651",    # MODI DIGIT ONE
    "\u11652",    # MODI DIGIT TWO
    "\u11653",    # MODI DIGIT THREE
    "\u11654",    # MODI DIGIT FOUR
    "\u11655",    # MODI DIGIT FIVE
    "\u11656",    # MODI DIGIT SIX
    "\u11657",    # MODI DIGIT SEVEN
    "\u11658",    # MODI DIGIT EIGHT
    "\u11659",    # MODI DIGIT NINE
    "\u118A0",    # WARANG CITI CAPITAL LETTER NGAA
    "\u118A1",    # WARANG CITI CAPITAL LETTER A
    "\u118A2",    # WARANG CITI CAPITAL LETTER WI
    "\u118A3",    # WARANG CITI CAPITAL LETTER YU
    "\u118A4",    # WARANG CITI CAPITAL LETTER YA
    "\u118A5",    # WARANG CITI CAPITAL LETTER YO
    "\u118A6",    # WARANG CITI CAPITAL LETTER II
    "\u118A7",    # WARANG CITI CAPITAL LETTER UU
    "\u118A8",    # WARANG CITI CAPITAL LETTER E
    "\u118A9",    # WARANG CITI CAPITAL LETTER O
    "\u118AA",    # WARANG CITI CAPITAL LETTER ANG
    "\u118AB",    # WARANG CITI CAPITAL LETTER GA
    "\u118AC",    # WARANG CITI CAPITAL LETTER KO
    "\u118AD",    # WARANG CITI CAPITAL LETTER ENY
    "\u118AE",    # WARANG CITI CAPITAL LETTER YUJ
    "\u118AF",    # WARANG CITI CAPITAL LETTER UC
    "\u118B0",    # WARANG CITI CAPITAL LETTER ENN
    "\u118B1",    # WARANG CITI CAPITAL LETTER ODD
    "\u118B2",    # WARANG CITI CAPITAL LETTER TTE
    "\u118B3",    # WARANG CITI CAPITAL LETTER NUNG
    "\u118B4",    # WARANG CITI CAPITAL LETTER DA
    "\u118B5",    # WARANG CITI CAPITAL LETTER AT
    "\u118B6",    # WARANG CITI CAPITAL LETTER AM
    "\u118B7",    # WARANG CITI CAPITAL LETTER BU
    "\u118B8",    # WARANG CITI CAPITAL LETTER PU
    "\u118B9",    # WARANG CITI CAPITAL LETTER HIYO
    "\u118BA",    # WARANG CITI CAPITAL LETTER HOLO
    "\u118BB",    # WARANG CITI CAPITAL LETTER HORR
    "\u118BC",    # WARANG CITI CAPITAL LETTER HAR
    "\u118BD",    # WARANG CITI CAPITAL LETTER SSUU
    "\u118BE",    # WARANG CITI CAPITAL LETTER SII
    "\u118BF",    # WARANG CITI CAPITAL LETTER VIYO
    "\u118C0",    # WARANG CITI SMALL LETTER NGAA
    "\u118C1",    # WARANG CITI SMALL LETTER A
    "\u118C2",    # WARANG CITI SMALL LETTER WI
    "\u118C3",    # WARANG CITI SMALL LETTER YU
    "\u118C4",    # WARANG CITI SMALL LETTER YA
    "\u118C5",    # WARANG CITI SMALL LETTER YO
    "\u118C6",    # WARANG CITI SMALL LETTER II
    "\u118C7",    # WARANG CITI SMALL LETTER UU
    "\u118C8",    # WARANG CITI SMALL LETTER E
    "\u118C9",    # WARANG CITI SMALL LETTER O
    "\u118CA",    # WARANG CITI SMALL LETTER ANG
    "\u118CB",    # WARANG CITI SMALL LETTER GA
    "\u118CC",    # WARANG CITI SMALL LETTER KO
    "\u118CD",    # WARANG CITI SMALL LETTER ENY
    "\u118CE",    # WARANG CITI SMALL LETTER YUJ
    "\u118CF",    # WARANG CITI SMALL LETTER UC
    "\u118D0",    # WARANG CITI SMALL LETTER ENN
    "\u118D1",    # WARANG CITI SMALL LETTER ODD
    "\u118D2",    # WARANG CITI SMALL LETTER TTE
    "\u118D3",    # WARANG CITI SMALL LETTER NUNG
    "\u118D4",    # WARANG CITI SMALL LETTER DA
    "\u118D5",    # WARANG CITI SMALL LETTER AT
    "\u118D6",    # WARANG CITI SMALL LETTER AM
    "\u118D7",    # WARANG CITI SMALL LETTER BU
    "\u118D8",    # WARANG CITI SMALL LETTER PU
    "\u118D9",    # WARANG CITI SMALL LETTER HIYO
    "\u118DA",    # WARANG CITI SMALL LETTER HOLO
    "\u118DB",    # WARANG CITI SMALL LETTER HORR
    "\u118DC",    # WARANG CITI SMALL LETTER HAR
    "\u118DD",    # WARANG CITI SMALL LETTER SSUU
    "\u118DE",    # WARANG CITI SMALL LETTER SII
    "\u118DF",    # WARANG CITI SMALL LETTER VIYO
    "\u118E0",    # WARANG CITI DIGIT ZERO
    "\u118E1",    # WARANG CITI DIGIT ONE
    "\u118E2",    # WARANG CITI DIGIT TWO
    "\u118E3",    # WARANG CITI DIGIT THREE
    "\u118E4",    # WARANG CITI DIGIT FOUR
    "\u118E5",    # WARANG CITI DIGIT FIVE
    "\u118E6",    # WARANG CITI DIGIT SIX
    "\u118E7",    # WARANG CITI DIGIT SEVEN
    "\u118E8",    # WARANG CITI DIGIT EIGHT
    "\u118E9",    # WARANG CITI DIGIT NINE
    "\u118EA",    # WARANG CITI NUMBER TEN
    "\u118EB",    # WARANG CITI NUMBER TWENTY
    "\u118EC",    # WARANG CITI NUMBER THIRTY
    "\u118ED",    # WARANG CITI NUMBER FORTY
    "\u118EE",    # WARANG CITI NUMBER FIFTY
    "\u118EF",    # WARANG CITI NUMBER SIXTY
    "\u118F0",    # WARANG CITI NUMBER SEVENTY
    "\u118F1",    # WARANG CITI NUMBER EIGHTY
    "\u118F2",    # WARANG CITI NUMBER NINETY
    "\u118FF",    # WARANG CITI OM
    "\u11AC0",    # PAU CIN HAU LETTER PA
    "\u11AC1",    # PAU CIN HAU LETTER KA
    "\u11AC2",    # PAU CIN HAU LETTER LA
    "\u11AC3",    # PAU CIN HAU LETTER MA
    "\u11AC4",    # PAU CIN HAU LETTER DA
    "\u11AC5",    # PAU CIN HAU LETTER ZA
    "\u11AC6",    # PAU CIN HAU LETTER VA
    "\u11AC7",    # PAU CIN HAU LETTER NGA
    "\u11AC8",    # PAU CIN HAU LETTER HA
    "\u11AC9",    # PAU CIN HAU LETTER GA
    "\u11ACA",    # PAU CIN HAU LETTER KHA
    "\u11ACB",    # PAU CIN HAU LETTER SA
    "\u11ACC",    # PAU CIN HAU LETTER BA
    "\u11ACD",    # PAU CIN HAU LETTER CA
    "\u11ACE",    # PAU CIN HAU LETTER TA
    "\u11ACF",    # PAU CIN HAU LETTER THA
    "\u11AD0",    # PAU CIN HAU LETTER NA
    "\u11AD1",    # PAU CIN HAU LETTER PHA
    "\u11AD2",    # PAU CIN HAU LETTER RA
    "\u11AD3",    # PAU CIN HAU LETTER FA
    "\u11AD4",    # PAU CIN HAU LETTER CHA
    "\u11AD5",    # PAU CIN HAU LETTER A
    "\u11AD6",    # PAU CIN HAU LETTER E
    "\u11AD7",    # PAU CIN HAU LETTER I
    "\u11AD8",    # PAU CIN HAU LETTER O
    "\u11AD9",    # PAU CIN HAU LETTER U
    "\u11ADA",    # PAU CIN HAU LETTER UA
    "\u11ADB",    # PAU CIN HAU LETTER IA
    "\u11ADC",    # PAU CIN HAU LETTER FINAL P
    "\u11ADD",    # PAU CIN HAU LETTER FINAL K
    "\u11ADE",    # PAU CIN HAU LETTER FINAL T
    "\u11ADF",    # PAU CIN HAU LETTER FINAL M
    "\u11AE0",    # PAU CIN HAU LETTER FINAL N
    "\u11AE1",    # PAU CIN HAU LETTER FINAL L
    "\u11AE2",    # PAU CIN HAU LETTER FINAL W
    "\u11AE3",    # PAU CIN HAU LETTER FINAL NG
    "\u11AE4",    # PAU CIN HAU LETTER FINAL Y
    "\u11AE5",    # PAU CIN HAU RISING TONE LONG
    "\u11AE6",    # PAU CIN HAU RISING TONE
    "\u11AE7",    # PAU CIN HAU SANDHI GLOTTAL STOP
    "\u11AE8",    # PAU CIN HAU RISING TONE LONG FINAL
    "\u11AE9",    # PAU CIN HAU RISING TONE FINAL
    "\u11AEA",    # PAU CIN HAU SANDHI GLOTTAL STOP FINAL
    "\u11AEB",    # PAU CIN HAU SANDHI TONE LONG
    "\u11AEC",    # PAU CIN HAU SANDHI TONE
    "\u11AED",    # PAU CIN HAU SANDHI TONE LONG FINAL
    "\u11AEE",    # PAU CIN HAU SANDHI TONE FINAL
    "\u11AEF",    # PAU CIN HAU MID-LEVEL TONE
    "\u11AF0",    # PAU CIN HAU GLOTTAL STOP VARIANT
    "\u11AF1",    # PAU CIN HAU MID-LEVEL TONE LONG FINAL
    "\u11AF2",    # PAU CIN HAU MID-LEVEL TONE FINAL
    "\u11AF3",    # PAU CIN HAU LOW-FALLING TONE LONG
    "\u11AF4",    # PAU CIN HAU LOW-FALLING TONE
    "\u11AF5",    # PAU CIN HAU GLOTTAL STOP
    "\u11AF6",    # PAU CIN HAU LOW-FALLING TONE LONG FINAL
    "\u11AF7",    # PAU CIN HAU LOW-FALLING TONE FINAL
    "\u11AF8",    # PAU CIN HAU GLOTTAL STOP FINAL
    "\u1236F",    # CUNEIFORM SIGN KAP ELAMITE
    "\u12370",    # CUNEIFORM SIGN AB TIMES NUN
    "\u12371",    # CUNEIFORM SIGN AB2 TIMES A
    "\u12372",    # CUNEIFORM SIGN AMAR TIMES KUG
    "\u12373",    # CUNEIFORM SIGN DAG KISIM5 TIMES U2 PLUS MASH
    "\u12374",    # CUNEIFORM SIGN DAG3
    "\u12375",    # CUNEIFORM SIGN DISH PLUS SHU
    "\u12376",    # CUNEIFORM SIGN DUB TIMES SHE
    "\u12377",    # CUNEIFORM SIGN EZEN TIMES GUD
    "\u12378",    # CUNEIFORM SIGN EZEN TIMES SHE
    "\u12379",    # CUNEIFORM SIGN GA2 TIMES AN PLUS KAK PLUS A
    "\u1237A",    # CUNEIFORM SIGN GA2 TIMES ASH2
    "\u1237B",    # CUNEIFORM SIGN GE22
    "\u1237C",    # CUNEIFORM SIGN GIG
    "\u1237D",    # CUNEIFORM SIGN HUSH
    "\u1237E",    # CUNEIFORM SIGN KA TIMES ANSHE
    "\u1237F",    # CUNEIFORM SIGN KA TIMES ASH3
    "\u12380",    # CUNEIFORM SIGN KA TIMES GISH
    "\u12381",    # CUNEIFORM SIGN KA TIMES GUD
    "\u12382",    # CUNEIFORM SIGN KA TIMES HI TIMES ASH2
    "\u12383",    # CUNEIFORM SIGN KA TIMES LUM
    "\u12384",    # CUNEIFORM SIGN KA TIMES PA
    "\u12385",    # CUNEIFORM SIGN KA TIMES SHUL
    "\u12386",    # CUNEIFORM SIGN KA TIMES TU
    "\u12387",    # CUNEIFORM SIGN KA TIMES UR2
    "\u12388",    # CUNEIFORM SIGN LAGAB TIMES GI
    "\u12389",    # CUNEIFORM SIGN LU2 SHESHIG TIMES BAD
    "\u1238A",    # CUNEIFORM SIGN LU2 TIMES ESH2 PLUS LAL
    "\u1238B",    # CUNEIFORM SIGN LU2 TIMES SHU
    "\u1238C",    # CUNEIFORM SIGN MESH
    "\u1238D",    # CUNEIFORM SIGN MUSH3 TIMES ZA
    "\u1238E",    # CUNEIFORM SIGN NA4
    "\u1238F",    # CUNEIFORM SIGN NIN
    "\u12390",    # CUNEIFORM SIGN NIN9
    "\u12391",    # CUNEIFORM SIGN NINDA2 TIMES BAL
    "\u12392",    # CUNEIFORM SIGN NINDA2 TIMES GI
    "\u12393",    # CUNEIFORM SIGN NU11 ROTATED NINETY DEGREES
    "\u12394",    # CUNEIFORM SIGN PESH2 ASTERISK
    "\u12395",    # CUNEIFORM SIGN PIR2
    "\u12396",    # CUNEIFORM SIGN SAG TIMES IGI GUNU
    "\u12397",    # CUNEIFORM SIGN TI2
    "\u12398",    # CUNEIFORM SIGN UM TIMES ME
    "\u12463",    # CUNEIFORM NUMERIC SIGN ONE QUARTER GUR
    "\u12464",    # CUNEIFORM NUMERIC SIGN ONE HALF GUR
    "\u12465",    # CUNEIFORM NUMERIC SIGN ELAMITE ONE THIRD
    "\u12466",    # CUNEIFORM NUMERIC SIGN ELAMITE TWO THIRDS
    "\u12467",    # CUNEIFORM NUMERIC SIGN ELAMITE FORTY
    "\u12468",    # CUNEIFORM NUMERIC SIGN ELAMITE FIFTY
    "\u12469",    # CUNEIFORM NUMERIC SIGN FOUR U VARIANT FORM
    "\u1246A",    # CUNEIFORM NUMERIC SIGN FIVE U VARIANT FORM
    "\u1246B",    # CUNEIFORM NUMERIC SIGN SIX U VARIANT FORM
    "\u1246C",    # CUNEIFORM NUMERIC SIGN SEVEN U VARIANT FORM
    "\u1246D",    # CUNEIFORM NUMERIC SIGN EIGHT U VARIANT FORM
    "\u1246E",    # CUNEIFORM NUMERIC SIGN NINE U VARIANT FORM
    "\u12474",    # CUNEIFORM PUNCTUATION SIGN DIAGONAL QUADCOLON
    "\u16A40",    # MRO LETTER TA
    "\u16A41",    # MRO LETTER NGI
    "\u16A42",    # MRO LETTER YO
    "\u16A43",    # MRO LETTER MIM
    "\u16A44",    # MRO LETTER BA
    "\u16A45",    # MRO LETTER DA
    "\u16A46",    # MRO LETTER A
    "\u16A47",    # MRO LETTER PHI
    "\u16A48",    # MRO LETTER KHAI
    "\u16A49",    # MRO LETTER HAO
    "\u16A4A",    # MRO LETTER DAI
    "\u16A4B",    # MRO LETTER CHU
    "\u16A4C",    # MRO LETTER KEAAE
    "\u16A4D",    # MRO LETTER OL
    "\u16A4E",    # MRO LETTER MAEM
    "\u16A4F",    # MRO LETTER NIN
    "\u16A50",    # MRO LETTER PA
    "\u16A51",    # MRO LETTER OO
    "\u16A52",    # MRO LETTER O
    "\u16A53",    # MRO LETTER RO
    "\u16A54",    # MRO LETTER SHI
    "\u16A55",    # MRO LETTER THEA
    "\u16A56",    # MRO LETTER EA
    "\u16A57",    # MRO LETTER WA
    "\u16A58",    # MRO LETTER E
    "\u16A59",    # MRO LETTER KO
    "\u16A5A",    # MRO LETTER LAN
    "\u16A5B",    # MRO LETTER LA
    "\u16A5C",    # MRO LETTER HAI
    "\u16A5D",    # MRO LETTER RI
    "\u16A5E",    # MRO LETTER TEK
    "\u16A60",    # MRO DIGIT ZERO
    "\u16A61",    # MRO DIGIT ONE
    "\u16A62",    # MRO DIGIT TWO
    "\u16A63",    # MRO DIGIT THREE
    "\u16A64",    # MRO DIGIT FOUR
    "\u16A65",    # MRO DIGIT FIVE
    "\u16A66",    # MRO DIGIT SIX
    "\u16A67",    # MRO DIGIT SEVEN
    "\u16A68",    # MRO DIGIT EIGHT
    "\u16A69",    # MRO DIGIT NINE
    "\u16A6E",    # MRO DANDA
    "\u16A6F",    # MRO DOUBLE DANDA
    "\u16AD0",    # BASSA VAH LETTER ENNI
    "\u16AD1",    # BASSA VAH LETTER KA
    "\u16AD2",    # BASSA VAH LETTER SE
    "\u16AD3",    # BASSA VAH LETTER FA
    "\u16AD4",    # BASSA VAH LETTER MBE
    "\u16AD5",    # BASSA VAH LETTER YIE
    "\u16AD6",    # BASSA VAH LETTER GAH
    "\u16AD7",    # BASSA VAH LETTER DHII
    "\u16AD8",    # BASSA VAH LETTER KPAH
    "\u16AD9",    # BASSA VAH LETTER JO
    "\u16ADA",    # BASSA VAH LETTER HWAH
    "\u16ADB",    # BASSA VAH LETTER WA
    "\u16ADC",    # BASSA VAH LETTER ZO
    "\u16ADD",    # BASSA VAH LETTER GBU
    "\u16ADE",    # BASSA VAH LETTER DO
    "\u16ADF",    # BASSA VAH LETTER CE
    "\u16AE0",    # BASSA VAH LETTER UWU
    "\u16AE1",    # BASSA VAH LETTER TO
    "\u16AE2",    # BASSA VAH LETTER BA
    "\u16AE3",    # BASSA VAH LETTER VU
    "\u16AE4",    # BASSA VAH LETTER YEIN
    "\u16AE5",    # BASSA VAH LETTER PA
    "\u16AE6",    # BASSA VAH LETTER WADDA
    "\u16AE7",    # BASSA VAH LETTER A
    "\u16AE8",    # BASSA VAH LETTER O
    "\u16AE9",    # BASSA VAH LETTER OO
    "\u16AEA",    # BASSA VAH LETTER U
    "\u16AEB",    # BASSA VAH LETTER EE
    "\u16AEC",    # BASSA VAH LETTER E
    "\u16AED",    # BASSA VAH LETTER I
    "\u16AF0",    # BASSA VAH COMBINING HIGH TONE
    "\u16AF1",    # BASSA VAH COMBINING LOW TONE
    "\u16AF2",    # BASSA VAH COMBINING MID TONE
    "\u16AF3",    # BASSA VAH COMBINING LOW-MID TONE
    "\u16AF4",    # BASSA VAH COMBINING HIGH-LOW TONE
    "\u16AF5",    # BASSA VAH FULL STOP
    "\u16B00",    # PAHAWH HMONG VOWEL KEEB
    "\u16B01",    # PAHAWH HMONG VOWEL KEEV
    "\u16B02",    # PAHAWH HMONG VOWEL KIB
    "\u16B03",    # PAHAWH HMONG VOWEL KIV
    "\u16B04",    # PAHAWH HMONG VOWEL KAUB
    "\u16B05",    # PAHAWH HMONG VOWEL KAUV
    "\u16B06",    # PAHAWH HMONG VOWEL KUB
    "\u16B07",    # PAHAWH HMONG VOWEL KUV
    "\u16B08",    # PAHAWH HMONG VOWEL KEB
    "\u16B09",    # PAHAWH HMONG VOWEL KEV
    "\u16B0A",    # PAHAWH HMONG VOWEL KAIB
    "\u16B0B",    # PAHAWH HMONG VOWEL KAIV
    "\u16B0C",    # PAHAWH HMONG VOWEL KOOB
    "\u16B0D",    # PAHAWH HMONG VOWEL KOOV
    "\u16B0E",    # PAHAWH HMONG VOWEL KAWB
    "\u16B0F",    # PAHAWH HMONG VOWEL KAWV
    "\u16B10",    # PAHAWH HMONG VOWEL KUAB
    "\u16B11",    # PAHAWH HMONG VOWEL KUAV
    "\u16B12",    # PAHAWH HMONG VOWEL KOB
    "\u16B13",    # PAHAWH HMONG VOWEL KOV
    "\u16B14",    # PAHAWH HMONG VOWEL KIAB
    "\u16B15",    # PAHAWH HMONG VOWEL KIAV
    "\u16B16",    # PAHAWH HMONG VOWEL KAB
    "\u16B17",    # PAHAWH HMONG VOWEL KAV
    "\u16B18",    # PAHAWH HMONG VOWEL KWB
    "\u16B19",    # PAHAWH HMONG VOWEL KWV
    "\u16B1A",    # PAHAWH HMONG VOWEL KAAB
    "\u16B1B",    # PAHAWH HMONG VOWEL KAAV
    "\u16B1C",    # PAHAWH HMONG CONSONANT VAU
    "\u16B1D",    # PAHAWH HMONG CONSONANT NTSAU
    "\u16B1E",    # PAHAWH HMONG CONSONANT LAU
    "\u16B1F",    # PAHAWH HMONG CONSONANT HAU
    "\u16B20",    # PAHAWH HMONG CONSONANT NLAU
    "\u16B21",    # PAHAWH HMONG CONSONANT RAU
    "\u16B22",    # PAHAWH HMONG CONSONANT NKAU
    "\u16B23",    # PAHAWH HMONG CONSONANT QHAU
    "\u16B24",    # PAHAWH HMONG CONSONANT YAU
    "\u16B25",    # PAHAWH HMONG CONSONANT HLAU
    "\u16B26",    # PAHAWH HMONG CONSONANT MAU
    "\u16B27",    # PAHAWH HMONG CONSONANT CHAU
    "\u16B28",    # PAHAWH HMONG CONSONANT NCHAU
    "\u16B29",    # PAHAWH HMONG CONSONANT HNAU
    "\u16B2A",    # PAHAWH HMONG CONSONANT PLHAU
    "\u16B2B",    # PAHAWH HMONG CONSONANT NTHAU
    "\u16B2C",    # PAHAWH HMONG CONSONANT NAU
    "\u16B2D",    # PAHAWH HMONG CONSONANT AU
    "\u16B2E",    # PAHAWH HMONG CONSONANT XAU
    "\u16B2F",    # PAHAWH HMONG CONSONANT CAU
    "\u16B30",    # PAHAWH HMONG MARK CIM TUB
    "\u16B31",    # PAHAWH HMONG MARK CIM SO
    "\u16B32",    # PAHAWH HMONG MARK CIM KES
    "\u16B33",    # PAHAWH HMONG MARK CIM KHAV
    "\u16B34",    # PAHAWH HMONG MARK CIM SUAM
    "\u16B35",    # PAHAWH HMONG MARK CIM HOM
    "\u16B36",    # PAHAWH HMONG MARK CIM TAUM
    "\u16B37",    # PAHAWH HMONG SIGN VOS THOM
    "\u16B38",    # PAHAWH HMONG SIGN VOS TSHAB CEEB
    "\u16B39",    # PAHAWH HMONG SIGN CIM CHEEM
    "\u16B3A",    # PAHAWH HMONG SIGN VOS THIAB
    "\u16B3B",    # PAHAWH HMONG SIGN VOS FEEM
    "\u16B3C",    # PAHAWH HMONG SIGN XYEEM NTXIV
    "\u16B3D",    # PAHAWH HMONG SIGN XYEEM RHO
    "\u16B3E",    # PAHAWH HMONG SIGN XYEEM TOV
    "\u16B3F",    # PAHAWH HMONG SIGN XYEEM FAIB
    "\u16B40",    # PAHAWH HMONG SIGN VOS SEEV
    "\u16B41",    # PAHAWH HMONG SIGN MEEJ SUAB
    "\u16B42",    # PAHAWH HMONG SIGN VOS NRUA
    "\u16B43",    # PAHAWH HMONG SIGN IB YAM
    "\u16B44",    # PAHAWH HMONG SIGN XAUS
    "\u16B45",    # PAHAWH HMONG SIGN CIM TSOV ROG
    "\u16B50",    # PAHAWH HMONG DIGIT ZERO
    "\u16B51",    # PAHAWH HMONG DIGIT ONE
    "\u16B52",    # PAHAWH HMONG DIGIT TWO
    "\u16B53",    # PAHAWH HMONG DIGIT THREE
    "\u16B54",    # PAHAWH HMONG DIGIT FOUR
    "\u16B55",    # PAHAWH HMONG DIGIT FIVE
    "\u16B56",    # PAHAWH HMONG DIGIT SIX
    "\u16B57",    # PAHAWH HMONG DIGIT SEVEN
    "\u16B58",    # PAHAWH HMONG DIGIT EIGHT
    "\u16B59",    # PAHAWH HMONG DIGIT NINE
    "\u16B5B",    # PAHAWH HMONG NUMBER TENS
    "\u16B5C",    # PAHAWH HMONG NUMBER HUNDREDS
    "\u16B5D",    # PAHAWH HMONG NUMBER TEN THOUSANDS
    "\u16B5E",    # PAHAWH HMONG NUMBER MILLIONS
    "\u16B5F",    # PAHAWH HMONG NUMBER HUNDRED MILLIONS
    "\u16B60",    # PAHAWH HMONG NUMBER TEN BILLIONS
    "\u16B61",    # PAHAWH HMONG NUMBER TRILLIONS
    "\u16B63",    # PAHAWH HMONG SIGN VOS LUB
    "\u16B64",    # PAHAWH HMONG SIGN XYOO
    "\u16B65",    # PAHAWH HMONG SIGN HLI
    "\u16B66",    # PAHAWH HMONG SIGN THIRD-STAGE HLI
    "\u16B67",    # PAHAWH HMONG SIGN ZWJ THAJ
    "\u16B68",    # PAHAWH HMONG SIGN HNUB
    "\u16B69",    # PAHAWH HMONG SIGN NQIG
    "\u16B6A",    # PAHAWH HMONG SIGN XIAB
    "\u16B6B",    # PAHAWH HMONG SIGN NTUJ
    "\u16B6C",    # PAHAWH HMONG SIGN AV
    "\u16B6D",    # PAHAWH HMONG SIGN TXHEEJ CEEV
    "\u16B6E",    # PAHAWH HMONG SIGN MEEJ TSEEB
    "\u16B6F",    # PAHAWH HMONG SIGN TAU
    "\u16B70",    # PAHAWH HMONG SIGN LOS
    "\u16B71",    # PAHAWH HMONG SIGN MUS
    "\u16B72",    # PAHAWH HMONG SIGN CIM HAIS LUS NTOG NTOG
    "\u16B73",    # PAHAWH HMONG SIGN CIM CUAM TSHOOJ
    "\u16B74",    # PAHAWH HMONG SIGN CIM TXWV
    "\u16B75",    # PAHAWH HMONG SIGN CIM TXWV CHWV
    "\u16B76",    # PAHAWH HMONG SIGN CIM PUB DAWB
    "\u16B77",    # PAHAWH HMONG SIGN CIM NRES TOS
    "\u16B7D",    # PAHAWH HMONG CLAN SIGN TSHEEJ
    "\u16B7E",    # PAHAWH HMONG CLAN SIGN YEEG
    "\u16B7F",    # PAHAWH HMONG CLAN SIGN LIS
    "\u16B80",    # PAHAWH HMONG CLAN SIGN LAUJ
    "\u16B81",    # PAHAWH HMONG CLAN SIGN XYOOJ
    "\u16B82",    # PAHAWH HMONG CLAN SIGN KOO
    "\u16B83",    # PAHAWH HMONG CLAN SIGN HAWJ
    "\u16B84",    # PAHAWH HMONG CLAN SIGN MUAS
    "\u16B85",    # PAHAWH HMONG CLAN SIGN THOJ
    "\u16B86",    # PAHAWH HMONG CLAN SIGN TSAB
    "\u16B87",    # PAHAWH HMONG CLAN SIGN PHAB
    "\u16B88",    # PAHAWH HMONG CLAN SIGN KHAB
    "\u16B89",    # PAHAWH HMONG CLAN SIGN HAM
    "\u16B8A",    # PAHAWH HMONG CLAN SIGN VAJ
    "\u16B8B",    # PAHAWH HMONG CLAN SIGN FAJ
    "\u16B8C",    # PAHAWH HMONG CLAN SIGN YAJ
    "\u16B8D",    # PAHAWH HMONG CLAN SIGN TSWB
    "\u16B8E",    # PAHAWH HMONG CLAN SIGN KWM
    "\u16B8F",    # PAHAWH HMONG CLAN SIGN VWJ
    "\u1BC00",    # DUPLOYAN LETTER H
    "\u1BC01",    # DUPLOYAN LETTER X
    "\u1BC02",    # DUPLOYAN LETTER P
    "\u1BC03",    # DUPLOYAN LETTER T
    "\u1BC04",    # DUPLOYAN LETTER F
    "\u1BC05",    # DUPLOYAN LETTER K
    "\u1BC06",    # DUPLOYAN LETTER L
    "\u1BC07",    # DUPLOYAN LETTER B
    "\u1BC08",    # DUPLOYAN LETTER D
    "\u1BC09",    # DUPLOYAN LETTER V
    "\u1BC0A",    # DUPLOYAN LETTER G
    "\u1BC0B",    # DUPLOYAN LETTER R
    "\u1BC0C",    # DUPLOYAN LETTER P N
    "\u1BC0D",    # DUPLOYAN LETTER D S
    "\u1BC0E",    # DUPLOYAN LETTER F N
    "\u1BC0F",    # DUPLOYAN LETTER K M
    "\u1BC10",    # DUPLOYAN LETTER R S
    "\u1BC11",    # DUPLOYAN LETTER TH
    "\u1BC12",    # DUPLOYAN LETTER SLOAN DH
    "\u1BC13",    # DUPLOYAN LETTER DH
    "\u1BC14",    # DUPLOYAN LETTER KK
    "\u1BC15",    # DUPLOYAN LETTER SLOAN J
    "\u1BC16",    # DUPLOYAN LETTER HL
    "\u1BC17",    # DUPLOYAN LETTER LH
    "\u1BC18",    # DUPLOYAN LETTER RH
    "\u1BC19",    # DUPLOYAN LETTER M
    "\u1BC1A",    # DUPLOYAN LETTER N
    "\u1BC1B",    # DUPLOYAN LETTER J
    "\u1BC1C",    # DUPLOYAN LETTER S
    "\u1BC1D",    # DUPLOYAN LETTER M N
    "\u1BC1E",    # DUPLOYAN LETTER N M
    "\u1BC1F",    # DUPLOYAN LETTER J M
    "\u1BC20",    # DUPLOYAN LETTER S J
    "\u1BC21",    # DUPLOYAN LETTER M WITH DOT
    "\u1BC22",    # DUPLOYAN LETTER N WITH DOT
    "\u1BC23",    # DUPLOYAN LETTER J WITH DOT
    "\u1BC24",    # DUPLOYAN LETTER J WITH DOTS INSIDE AND ABOVE
    "\u1BC25",    # DUPLOYAN LETTER S WITH DOT
    "\u1BC26",    # DUPLOYAN LETTER S WITH DOT BELOW
    "\u1BC27",    # DUPLOYAN LETTER M S
    "\u1BC28",    # DUPLOYAN LETTER N S
    "\u1BC29",    # DUPLOYAN LETTER J S
    "\u1BC2A",    # DUPLOYAN LETTER S S
    "\u1BC2B",    # DUPLOYAN LETTER M N S
    "\u1BC2C",    # DUPLOYAN LETTER N M S
    "\u1BC2D",    # DUPLOYAN LETTER J M S
    "\u1BC2E",    # DUPLOYAN LETTER S J S
    "\u1BC2F",    # DUPLOYAN LETTER J S WITH DOT
    "\u1BC30",    # DUPLOYAN LETTER J N
    "\u1BC31",    # DUPLOYAN LETTER J N S
    "\u1BC32",    # DUPLOYAN LETTER S T
    "\u1BC33",    # DUPLOYAN LETTER S T R
    "\u1BC34",    # DUPLOYAN LETTER S P
    "\u1BC35",    # DUPLOYAN LETTER S P R
    "\u1BC36",    # DUPLOYAN LETTER T S
    "\u1BC37",    # DUPLOYAN LETTER T R S
    "\u1BC38",    # DUPLOYAN LETTER W
    "\u1BC39",    # DUPLOYAN LETTER WH
    "\u1BC3A",    # DUPLOYAN LETTER W R
    "\u1BC3B",    # DUPLOYAN LETTER S N
    "\u1BC3C",    # DUPLOYAN LETTER S M
    "\u1BC3D",    # DUPLOYAN LETTER K R S
    "\u1BC3E",    # DUPLOYAN LETTER G R S
    "\u1BC3F",    # DUPLOYAN LETTER S K
    "\u1BC40",    # DUPLOYAN LETTER S K R
    "\u1BC41",    # DUPLOYAN LETTER A
    "\u1BC42",    # DUPLOYAN LETTER SLOAN OW
    "\u1BC43",    # DUPLOYAN LETTER OA
    "\u1BC44",    # DUPLOYAN LETTER O
    "\u1BC45",    # DUPLOYAN LETTER AOU
    "\u1BC46",    # DUPLOYAN LETTER I
    "\u1BC47",    # DUPLOYAN LETTER E
    "\u1BC48",    # DUPLOYAN LETTER IE
    "\u1BC49",    # DUPLOYAN LETTER SHORT I
    "\u1BC4A",    # DUPLOYAN LETTER UI
    "\u1BC4B",    # DUPLOYAN LETTER EE
    "\u1BC4C",    # DUPLOYAN LETTER SLOAN EH
    "\u1BC4D",    # DUPLOYAN LETTER ROMANIAN I
    "\u1BC4E",    # DUPLOYAN LETTER SLOAN EE
    "\u1BC4F",    # DUPLOYAN LETTER LONG I
    "\u1BC50",    # DUPLOYAN LETTER YE
    "\u1BC51",    # DUPLOYAN LETTER U
    "\u1BC52",    # DUPLOYAN LETTER EU
    "\u1BC53",    # DUPLOYAN LETTER XW
    "\u1BC54",    # DUPLOYAN LETTER U N
    "\u1BC55",    # DUPLOYAN LETTER LONG U
    "\u1BC56",    # DUPLOYAN LETTER ROMANIAN U
    "\u1BC57",    # DUPLOYAN LETTER UH
    "\u1BC58",    # DUPLOYAN LETTER SLOAN U
    "\u1BC59",    # DUPLOYAN LETTER OOH
    "\u1BC5A",    # DUPLOYAN LETTER OW
    "\u1BC5B",    # DUPLOYAN LETTER OU
    "\u1BC5C",    # DUPLOYAN LETTER WA
    "\u1BC5D",    # DUPLOYAN LETTER WO
    "\u1BC5E",    # DUPLOYAN LETTER WI
    "\u1BC5F",    # DUPLOYAN LETTER WEI
    "\u1BC60",    # DUPLOYAN LETTER WOW
    "\u1BC61",    # DUPLOYAN LETTER NASAL U
    "\u1BC62",    # DUPLOYAN LETTER NASAL O
    "\u1BC63",    # DUPLOYAN LETTER NASAL I
    "\u1BC64",    # DUPLOYAN LETTER NASAL A
    "\u1BC65",    # DUPLOYAN LETTER PERNIN AN
    "\u1BC66",    # DUPLOYAN LETTER PERNIN AM
    "\u1BC67",    # DUPLOYAN LETTER SLOAN EN
    "\u1BC68",    # DUPLOYAN LETTER SLOAN AN
    "\u1BC69",    # DUPLOYAN LETTER SLOAN ON
    "\u1BC6A",    # DUPLOYAN LETTER VOCALIC M
    "\u1BC70",    # DUPLOYAN AFFIX LEFT HORIZONTAL SECANT
    "\u1BC71",    # DUPLOYAN AFFIX MID HORIZONTAL SECANT
    "\u1BC72",    # DUPLOYAN AFFIX RIGHT HORIZONTAL SECANT
    "\u1BC73",    # DUPLOYAN AFFIX LOW VERTICAL SECANT
    "\u1BC74",    # DUPLOYAN AFFIX MID VERTICAL SECANT
    "\u1BC75",    # DUPLOYAN AFFIX HIGH VERTICAL SECANT
    "\u1BC76",    # DUPLOYAN AFFIX ATTACHED SECANT
    "\u1BC77",    # DUPLOYAN AFFIX ATTACHED LEFT-TO-RIGHT SECANT
    "\u1BC78",    # DUPLOYAN AFFIX ATTACHED TANGENT
    "\u1BC79",    # DUPLOYAN AFFIX ATTACHED TAIL
    "\u1BC7A",    # DUPLOYAN AFFIX ATTACHED E HOOK
    "\u1BC7B",    # DUPLOYAN AFFIX ATTACHED I HOOK
    "\u1BC7C",    # DUPLOYAN AFFIX ATTACHED TANGENT HOOK
    "\u1BC80",    # DUPLOYAN AFFIX HIGH ACUTE
    "\u1BC81",    # DUPLOYAN AFFIX HIGH TIGHT ACUTE
    "\u1BC82",    # DUPLOYAN AFFIX HIGH GRAVE
    "\u1BC83",    # DUPLOYAN AFFIX HIGH LONG GRAVE
    "\u1BC84",    # DUPLOYAN AFFIX HIGH DOT
    "\u1BC85",    # DUPLOYAN AFFIX HIGH CIRCLE
    "\u1BC86",    # DUPLOYAN AFFIX HIGH LINE
    "\u1BC87",    # DUPLOYAN AFFIX HIGH WAVE
    "\u1BC88",    # DUPLOYAN AFFIX HIGH VERTICAL
    "\u1BC90",    # DUPLOYAN AFFIX LOW ACUTE
    "\u1BC91",    # DUPLOYAN AFFIX LOW TIGHT ACUTE
    "\u1BC92",    # DUPLOYAN AFFIX LOW GRAVE
    "\u1BC93",    # DUPLOYAN AFFIX LOW LONG GRAVE
    "\u1BC94",    # DUPLOYAN AFFIX LOW DOT
    "\u1BC95",    # DUPLOYAN AFFIX LOW CIRCLE
    "\u1BC96",    # DUPLOYAN AFFIX LOW LINE
    "\u1BC97",    # DUPLOYAN AFFIX LOW WAVE
    "\u1BC98",    # DUPLOYAN AFFIX LOW VERTICAL
    "\u1BC99",    # DUPLOYAN AFFIX LOW ARROW
    "\u1BC9C",    # DUPLOYAN SIGN O WITH CROSS
    "\u1BC9D",    # DUPLOYAN THICK LETTER SELECTOR
    "\u1BC9E",    # DUPLOYAN DOUBLE MARK
    "\u1BC9F",    # DUPLOYAN PUNCTUATION CHINOOK FULL STOP
    "\u1BCA0",    # SHORTHAND FORMAT LETTER OVERLAP
    "\u1BCA1",    # SHORTHAND FORMAT CONTINUING OVERLAP
    "\u1BCA2",    # SHORTHAND FORMAT DOWN STEP
    "\u1BCA3",    # SHORTHAND FORMAT UP STEP
    "\u1E800",    # MENDE KIKAKUI SYLLABLE M001 KI
    "\u1E801",    # MENDE KIKAKUI SYLLABLE M002 KA
    "\u1E802",    # MENDE KIKAKUI SYLLABLE M003 KU
    "\u1E803",    # MENDE KIKAKUI SYLLABLE M065 KEE
    "\u1E804",    # MENDE KIKAKUI SYLLABLE M095 KE
    "\u1E805",    # MENDE KIKAKUI SYLLABLE M076 KOO
    "\u1E806",    # MENDE KIKAKUI SYLLABLE M048 KO
    "\u1E807",    # MENDE KIKAKUI SYLLABLE M179 KUA
    "\u1E808",    # MENDE KIKAKUI SYLLABLE M004 WI
    "\u1E809",    # MENDE KIKAKUI SYLLABLE M005 WA
    "\u1E80A",    # MENDE KIKAKUI SYLLABLE M006 WU
    "\u1E80B",    # MENDE KIKAKUI SYLLABLE M126 WEE
    "\u1E80C",    # MENDE KIKAKUI SYLLABLE M118 WE
    "\u1E80D",    # MENDE KIKAKUI SYLLABLE M114 WOO
    "\u1E80E",    # MENDE KIKAKUI SYLLABLE M045 WO
    "\u1E80F",    # MENDE KIKAKUI SYLLABLE M194 WUI
    "\u1E810",    # MENDE KIKAKUI SYLLABLE M143 WEI
    "\u1E811",    # MENDE KIKAKUI SYLLABLE M061 WVI
    "\u1E812",    # MENDE KIKAKUI SYLLABLE M049 WVA
    "\u1E813",    # MENDE KIKAKUI SYLLABLE M139 WVE
    "\u1E814",    # MENDE KIKAKUI SYLLABLE M007 MIN
    "\u1E815",    # MENDE KIKAKUI SYLLABLE M008 MAN
    "\u1E816",    # MENDE KIKAKUI SYLLABLE M009 MUN
    "\u1E817",    # MENDE KIKAKUI SYLLABLE M059 MEN
    "\u1E818",    # MENDE KIKAKUI SYLLABLE M094 MON
    "\u1E819",    # MENDE KIKAKUI SYLLABLE M154 MUAN
    "\u1E81A",    # MENDE KIKAKUI SYLLABLE M189 MUEN
    "\u1E81B",    # MENDE KIKAKUI SYLLABLE M010 BI
    "\u1E81C",    # MENDE KIKAKUI SYLLABLE M011 BA
    "\u1E81D",    # MENDE KIKAKUI SYLLABLE M012 BU
    "\u1E81E",    # MENDE KIKAKUI SYLLABLE M150 BEE
    "\u1E81F",    # MENDE KIKAKUI SYLLABLE M097 BE
    "\u1E820",    # MENDE KIKAKUI SYLLABLE M103 BOO
    "\u1E821",    # MENDE KIKAKUI SYLLABLE M138 BO
    "\u1E822",    # MENDE KIKAKUI SYLLABLE M013 I
    "\u1E823",    # MENDE KIKAKUI SYLLABLE M014 A
    "\u1E824",    # MENDE KIKAKUI SYLLABLE M015 U
    "\u1E825",    # MENDE KIKAKUI SYLLABLE M163 EE
    "\u1E826",    # MENDE KIKAKUI SYLLABLE M100 E
    "\u1E827",    # MENDE KIKAKUI SYLLABLE M165 OO
    "\u1E828",    # MENDE KIKAKUI SYLLABLE M147 O
    "\u1E829",    # MENDE KIKAKUI SYLLABLE M137 EI
    "\u1E82A",    # MENDE KIKAKUI SYLLABLE M131 IN
    "\u1E82B",    # MENDE KIKAKUI SYLLABLE M135 IN
    "\u1E82C",    # MENDE KIKAKUI SYLLABLE M195 AN
    "\u1E82D",    # MENDE KIKAKUI SYLLABLE M178 EN
    "\u1E82E",    # MENDE KIKAKUI SYLLABLE M019 SI
    "\u1E82F",    # MENDE KIKAKUI SYLLABLE M020 SA
    "\u1E830",    # MENDE KIKAKUI SYLLABLE M021 SU
    "\u1E831",    # MENDE KIKAKUI SYLLABLE M162 SEE
    "\u1E832",    # MENDE KIKAKUI SYLLABLE M116 SE
    "\u1E833",    # MENDE KIKAKUI SYLLABLE M136 SOO
    "\u1E834",    # MENDE KIKAKUI SYLLABLE M079 SO
    "\u1E835",    # MENDE KIKAKUI SYLLABLE M196 SIA
    "\u1E836",    # MENDE KIKAKUI SYLLABLE M025 LI
    "\u1E837",    # MENDE KIKAKUI SYLLABLE M026 LA
    "\u1E838",    # MENDE KIKAKUI SYLLABLE M027 LU
    "\u1E839",    # MENDE KIKAKUI SYLLABLE M084 LEE
    "\u1E83A",    # MENDE KIKAKUI SYLLABLE M073 LE
    "\u1E83B",    # MENDE KIKAKUI SYLLABLE M054 LOO
    "\u1E83C",    # MENDE KIKAKUI SYLLABLE M153 LO
    "\u1E83D",    # MENDE KIKAKUI SYLLABLE M110 LONG LE
    "\u1E83E",    # MENDE KIKAKUI SYLLABLE M016 DI
    "\u1E83F",    # MENDE KIKAKUI SYLLABLE M017 DA
    "\u1E840",    # MENDE KIKAKUI SYLLABLE M018 DU
    "\u1E841",    # MENDE KIKAKUI SYLLABLE M089 DEE
    "\u1E842",    # MENDE KIKAKUI SYLLABLE M180 DOO
    "\u1E843",    # MENDE KIKAKUI SYLLABLE M181 DO
    "\u1E844",    # MENDE KIKAKUI SYLLABLE M022 TI
    "\u1E845",    # MENDE KIKAKUI SYLLABLE M023 TA
    "\u1E846",    # MENDE KIKAKUI SYLLABLE M024 TU
    "\u1E847",    # MENDE KIKAKUI SYLLABLE M091 TEE
    "\u1E848",    # MENDE KIKAKUI SYLLABLE M055 TE
    "\u1E849",    # MENDE KIKAKUI SYLLABLE M104 TOO
    "\u1E84A",    # MENDE KIKAKUI SYLLABLE M069 TO
    "\u1E84B",    # MENDE KIKAKUI SYLLABLE M028 JI
    "\u1E84C",    # MENDE KIKAKUI SYLLABLE M029 JA
    "\u1E84D",    # MENDE KIKAKUI SYLLABLE M030 JU
    "\u1E84E",    # MENDE KIKAKUI SYLLABLE M157 JEE
    "\u1E84F",    # MENDE KIKAKUI SYLLABLE M113 JE
    "\u1E850",    # MENDE KIKAKUI SYLLABLE M160 JOO
    "\u1E851",    # MENDE KIKAKUI SYLLABLE M063 JO
    "\u1E852",    # MENDE KIKAKUI SYLLABLE M175 LONG JO
    "\u1E853",    # MENDE KIKAKUI SYLLABLE M031 YI
    "\u1E854",    # MENDE KIKAKUI SYLLABLE M032 YA
    "\u1E855",    # MENDE KIKAKUI SYLLABLE M033 YU
    "\u1E856",    # MENDE KIKAKUI SYLLABLE M109 YEE
    "\u1E857",    # MENDE KIKAKUI SYLLABLE M080 YE
    "\u1E858",    # MENDE KIKAKUI SYLLABLE M141 YOO
    "\u1E859",    # MENDE KIKAKUI SYLLABLE M121 YO
    "\u1E85A",    # MENDE KIKAKUI SYLLABLE M034 FI
    "\u1E85B",    # MENDE KIKAKUI SYLLABLE M035 FA
    "\u1E85C",    # MENDE KIKAKUI SYLLABLE M036 FU
    "\u1E85D",    # MENDE KIKAKUI SYLLABLE M078 FEE
    "\u1E85E",    # MENDE KIKAKUI SYLLABLE M075 FE
    "\u1E85F",    # MENDE KIKAKUI SYLLABLE M133 FOO
    "\u1E860",    # MENDE KIKAKUI SYLLABLE M088 FO
    "\u1E861",    # MENDE KIKAKUI SYLLABLE M197 FUA
    "\u1E862",    # MENDE KIKAKUI SYLLABLE M101 FAN
    "\u1E863",    # MENDE KIKAKUI SYLLABLE M037 NIN
    "\u1E864",    # MENDE KIKAKUI SYLLABLE M038 NAN
    "\u1E865",    # MENDE KIKAKUI SYLLABLE M039 NUN
    "\u1E866",    # MENDE KIKAKUI SYLLABLE M117 NEN
    "\u1E867",    # MENDE KIKAKUI SYLLABLE M169 NON
    "\u1E868",    # MENDE KIKAKUI SYLLABLE M176 HI
    "\u1E869",    # MENDE KIKAKUI SYLLABLE M041 HA
    "\u1E86A",    # MENDE KIKAKUI SYLLABLE M186 HU
    "\u1E86B",    # MENDE KIKAKUI SYLLABLE M040 HEE
    "\u1E86C",    # MENDE KIKAKUI SYLLABLE M096 HE
    "\u1E86D",    # MENDE KIKAKUI SYLLABLE M042 HOO
    "\u1E86E",    # MENDE KIKAKUI SYLLABLE M140 HO
    "\u1E86F",    # MENDE KIKAKUI SYLLABLE M083 HEEI
    "\u1E870",    # MENDE KIKAKUI SYLLABLE M128 HOOU
    "\u1E871",    # MENDE KIKAKUI SYLLABLE M053 HIN
    "\u1E872",    # MENDE KIKAKUI SYLLABLE M130 HAN
    "\u1E873",    # MENDE KIKAKUI SYLLABLE M087 HUN
    "\u1E874",    # MENDE KIKAKUI SYLLABLE M052 HEN
    "\u1E875",    # MENDE KIKAKUI SYLLABLE M193 HON
    "\u1E876",    # MENDE KIKAKUI SYLLABLE M046 HUAN
    "\u1E877",    # MENDE KIKAKUI SYLLABLE M090 NGGI
    "\u1E878",    # MENDE KIKAKUI SYLLABLE M043 NGGA
    "\u1E879",    # MENDE KIKAKUI SYLLABLE M082 NGGU
    "\u1E87A",    # MENDE KIKAKUI SYLLABLE M115 NGGEE
    "\u1E87B",    # MENDE KIKAKUI SYLLABLE M146 NGGE
    "\u1E87C",    # MENDE KIKAKUI SYLLABLE M156 NGGOO
    "\u1E87D",    # MENDE KIKAKUI SYLLABLE M120 NGGO
    "\u1E87E",    # MENDE KIKAKUI SYLLABLE M159 NGGAA
    "\u1E87F",    # MENDE KIKAKUI SYLLABLE M127 NGGUA
    "\u1E880",    # MENDE KIKAKUI SYLLABLE M086 LONG NGGE
    "\u1E881",    # MENDE KIKAKUI SYLLABLE M106 LONG NGGOO
    "\u1E882",    # MENDE KIKAKUI SYLLABLE M183 LONG NGGO
    "\u1E883",    # MENDE KIKAKUI SYLLABLE M155 GI
    "\u1E884",    # MENDE KIKAKUI SYLLABLE M111 GA
    "\u1E885",    # MENDE KIKAKUI SYLLABLE M168 GU
    "\u1E886",    # MENDE KIKAKUI SYLLABLE M190 GEE
    "\u1E887",    # MENDE KIKAKUI SYLLABLE M166 GUEI
    "\u1E888",    # MENDE KIKAKUI SYLLABLE M167 GUAN
    "\u1E889",    # MENDE KIKAKUI SYLLABLE M184 NGEN
    "\u1E88A",    # MENDE KIKAKUI SYLLABLE M057 NGON
    "\u1E88B",    # MENDE KIKAKUI SYLLABLE M177 NGUAN
    "\u1E88C",    # MENDE KIKAKUI SYLLABLE M068 PI
    "\u1E88D",    # MENDE KIKAKUI SYLLABLE M099 PA
    "\u1E88E",    # MENDE KIKAKUI SYLLABLE M050 PU
    "\u1E88F",    # MENDE KIKAKUI SYLLABLE M081 PEE
    "\u1E890",    # MENDE KIKAKUI SYLLABLE M051 PE
    "\u1E891",    # MENDE KIKAKUI SYLLABLE M102 POO
    "\u1E892",    # MENDE KIKAKUI SYLLABLE M066 PO
    "\u1E893",    # MENDE KIKAKUI SYLLABLE M145 MBI
    "\u1E894",    # MENDE KIKAKUI SYLLABLE M062 MBA
    "\u1E895",    # MENDE KIKAKUI SYLLABLE M122 MBU
    "\u1E896",    # MENDE KIKAKUI SYLLABLE M047 MBEE
    "\u1E897",    # MENDE KIKAKUI SYLLABLE M188 MBEE
    "\u1E898",    # MENDE KIKAKUI SYLLABLE M072 MBE
    "\u1E899",    # MENDE KIKAKUI SYLLABLE M172 MBOO
    "\u1E89A",    # MENDE KIKAKUI SYLLABLE M174 MBO
    "\u1E89B",    # MENDE KIKAKUI SYLLABLE M187 MBUU
    "\u1E89C",    # MENDE KIKAKUI SYLLABLE M161 LONG MBE
    "\u1E89D",    # MENDE KIKAKUI SYLLABLE M105 LONG MBOO
    "\u1E89E",    # MENDE KIKAKUI SYLLABLE M142 LONG MBO
    "\u1E89F",    # MENDE KIKAKUI SYLLABLE M132 KPI
    "\u1E8A0",    # MENDE KIKAKUI SYLLABLE M092 KPA
    "\u1E8A1",    # MENDE KIKAKUI SYLLABLE M074 KPU
    "\u1E8A2",    # MENDE KIKAKUI SYLLABLE M044 KPEE
    "\u1E8A3",    # MENDE KIKAKUI SYLLABLE M108 KPE
    "\u1E8A4",    # MENDE KIKAKUI SYLLABLE M112 KPOO
    "\u1E8A5",    # MENDE KIKAKUI SYLLABLE M158 KPO
    "\u1E8A6",    # MENDE KIKAKUI SYLLABLE M124 GBI
    "\u1E8A7",    # MENDE KIKAKUI SYLLABLE M056 GBA
    "\u1E8A8",    # MENDE KIKAKUI SYLLABLE M148 GBU
    "\u1E8A9",    # MENDE KIKAKUI SYLLABLE M093 GBEE
    "\u1E8AA",    # MENDE KIKAKUI SYLLABLE M107 GBE
    "\u1E8AB",    # MENDE KIKAKUI SYLLABLE M071 GBOO
    "\u1E8AC",    # MENDE KIKAKUI SYLLABLE M070 GBO
    "\u1E8AD",    # MENDE KIKAKUI SYLLABLE M171 RA
    "\u1E8AE",    # MENDE KIKAKUI SYLLABLE M123 NDI
    "\u1E8AF",    # MENDE KIKAKUI SYLLABLE M129 NDA
    "\u1E8B0",    # MENDE KIKAKUI SYLLABLE M125 NDU
    "\u1E8B1",    # MENDE KIKAKUI SYLLABLE M191 NDEE
    "\u1E8B2",    # MENDE KIKAKUI SYLLABLE M119 NDE
    "\u1E8B3",    # MENDE KIKAKUI SYLLABLE M067 NDOO
    "\u1E8B4",    # MENDE KIKAKUI SYLLABLE M064 NDO
    "\u1E8B5",    # MENDE KIKAKUI SYLLABLE M152 NJA
    "\u1E8B6",    # MENDE KIKAKUI SYLLABLE M192 NJU
    "\u1E8B7",    # MENDE KIKAKUI SYLLABLE M149 NJEE
    "\u1E8B8",    # MENDE KIKAKUI SYLLABLE M134 NJOO
    "\u1E8B9",    # MENDE KIKAKUI SYLLABLE M182 VI
    "\u1E8BA",    # MENDE KIKAKUI SYLLABLE M185 VA
    "\u1E8BB",    # MENDE KIKAKUI SYLLABLE M151 VU
    "\u1E8BC",    # MENDE KIKAKUI SYLLABLE M173 VEE
    "\u1E8BD",    # MENDE KIKAKUI SYLLABLE M085 VE
    "\u1E8BE",    # MENDE KIKAKUI SYLLABLE M144 VOO
    "\u1E8BF",    # MENDE KIKAKUI SYLLABLE M077 VO
    "\u1E8C0",    # MENDE KIKAKUI SYLLABLE M164 NYIN
    "\u1E8C1",    # MENDE KIKAKUI SYLLABLE M058 NYAN
    "\u1E8C2",    # MENDE KIKAKUI SYLLABLE M170 NYUN
    "\u1E8C3",    # MENDE KIKAKUI SYLLABLE M098 NYEN
    "\u1E8C4",    # MENDE KIKAKUI SYLLABLE M060 NYON
    "\u1E8C7",    # MENDE KIKAKUI DIGIT ONE
    "\u1E8C8",    # MENDE KIKAKUI DIGIT TWO
    "\u1E8C9",    # MENDE KIKAKUI DIGIT THREE
    "\u1E8CA",    # MENDE KIKAKUI DIGIT FOUR
    "\u1E8CB",    # MENDE KIKAKUI DIGIT FIVE
    "\u1E8CC",    # MENDE KIKAKUI DIGIT SIX
    "\u1E8CD",    # MENDE KIKAKUI DIGIT SEVEN
    "\u1E8CE",    # MENDE KIKAKUI DIGIT EIGHT
    "\u1E8CF",    # MENDE KIKAKUI DIGIT NINE
    "\u1E8D0",    # MENDE KIKAKUI COMBINING NUMBER TEENS
    "\u1E8D1",    # MENDE KIKAKUI COMBINING NUMBER TENS
    "\u1E8D2",    # MENDE KIKAKUI COMBINING NUMBER HUNDREDS
    "\u1E8D3",    # MENDE KIKAKUI COMBINING NUMBER THOUSANDS
    "\u1E8D4",    # MENDE KIKAKUI COMBINING NUMBER TEN THOUSANDS
    "\u1E8D5",    # MENDE KIKAKUI COMBINING NUMBER HUNDRED THOUSANDS
    "\u1E8D6",    # MENDE KIKAKUI COMBINING NUMBER MILLIONS
    "\u1F0BF",    # PLAYING CARD RED JOKER
    "\u1F0E0",    # PLAYING CARD FOOL
    "\u1F0E1",    # PLAYING CARD TRUMP-1
    "\u1F0E2",    # PLAYING CARD TRUMP-2
    "\u1F0E3",    # PLAYING CARD TRUMP-3
    "\u1F0E4",    # PLAYING CARD TRUMP-4
    "\u1F0E5",    # PLAYING CARD TRUMP-5
    "\u1F0E6",    # PLAYING CARD TRUMP-6
    "\u1F0E7",    # PLAYING CARD TRUMP-7
    "\u1F0E8",    # PLAYING CARD TRUMP-8
    "\u1F0E9",    # PLAYING CARD TRUMP-9
    "\u1F0EA",    # PLAYING CARD TRUMP-10
    "\u1F0EB",    # PLAYING CARD TRUMP-11
    "\u1F0EC",    # PLAYING CARD TRUMP-12
    "\u1F0ED",    # PLAYING CARD TRUMP-13
    "\u1F0EE",    # PLAYING CARD TRUMP-14
    "\u1F0EF",    # PLAYING CARD TRUMP-15
    "\u1F0F0",    # PLAYING CARD TRUMP-16
    "\u1F0F1",    # PLAYING CARD TRUMP-17
    "\u1F0F2",    # PLAYING CARD TRUMP-18
    "\u1F0F3",    # PLAYING CARD TRUMP-19
    "\u1F0F4",    # PLAYING CARD TRUMP-20
    "\u1F0F5",    # PLAYING CARD TRUMP-21
    "\u1F10B",    # DINGBAT CIRCLED SANS-SERIF DIGIT ZERO
    "\u1F10C",    # DINGBAT NEGATIVE CIRCLED SANS-SERIF DIGIT ZERO
    "\u1F321",    # THERMOMETER
    "\u1F322",    # BLACK DROPLET
    "\u1F323",    # WHITE SUN
    "\u1F324",    # WHITE SUN WITH SMALL CLOUD
    "\u1F325",    # WHITE SUN BEHIND CLOUD
    "\u1F326",    # WHITE SUN BEHIND CLOUD WITH RAIN
    "\u1F327",    # CLOUD WITH RAIN
    "\u1F328",    # CLOUD WITH SNOW
    "\u1F329",    # CLOUD WITH LIGHTNING
    "\u1F32A",    # CLOUD WITH TORNADO
    "\u1F32B",    # FOG
    "\u1F32C",    # WIND BLOWING FACE
    "\u1F336",    # HOT PEPPER
    "\u1F37D",    # FORK AND KNIFE WITH PLATE
    "\u1F394",    # HEART WITH TIP ON THE LEFT
    "\u1F395",    # BOUQUET OF FLOWERS
    "\u1F396",    # MILITARY MEDAL
    "\u1F397",    # REMINDER RIBBON
    "\u1F398",    # MUSICAL KEYBOARD WITH JACKS
    "\u1F399",    # STUDIO MICROPHONE
    "\u1F39A",    # LEVEL SLIDER
    "\u1F39B",    # CONTROL KNOBS
    "\u1F39C",    # BEAMED ASCENDING MUSICAL NOTES
    "\u1F39D",    # BEAMED DESCENDING MUSICAL NOTES
    "\u1F39E",    # FILM FRAMES
    "\u1F39F",    # ADMISSION TICKETS
    "\u1F3C5",    # SPORTS MEDAL
    "\u1F3CB",    # WEIGHT LIFTER
    "\u1F3CC",    # GOLFER
    "\u1F3CD",    # RACING MOTORCYCLE
    "\u1F3CE",    # RACING CAR
    "\u1F3D4",    # SNOW CAPPED MOUNTAIN
    "\u1F3D5",    # CAMPING
    "\u1F3D6",    # BEACH WITH UMBRELLA
    "\u1F3D7",    # BUILDING CONSTRUCTION
    "\u1F3D8",    # HOUSE BUILDINGS
    "\u1F3D9",    # CITYSCAPE
    "\u1F3DA",    # DERELICT HOUSE BUILDING
    "\u1F3DB",    # CLASSICAL BUILDING
    "\u1F3DC",    # DESERT
    "\u1F3DD",    # DESERT ISLAND
    "\u1F3DE",    # NATIONAL PARK
    "\u1F3DF",    # STADIUM
    "\u1F3F1",    # WHITE PENNANT
    "\u1F3F2",    # BLACK PENNANT
    "\u1F3F3",    # WAVING WHITE FLAG
    "\u1F3F4",    # WAVING BLACK FLAG
    "\u1F3F5",    # ROSETTE
    "\u1F3F6",    # BLACK ROSETTE
    "\u1F3F7",    # LABEL
    "\u1F43F",    # CHIPMUNK
    "\u1F441",    # EYE
    "\u1F4F8",    # CAMERA WITH FLASH
    "\u1F4FD",    # FILM PROJECTOR
    "\u1F4FE",    # PORTABLE STEREO
    "\u1F53E",    # LOWER RIGHT SHADOWED WHITE CIRCLE
    "\u1F53F",    # UPPER RIGHT SHADOWED WHITE CIRCLE
    "\u1F544",    # NOTCHED RIGHT SEMICIRCLE WITH THREE DOTS
    "\u1F545",    # SYMBOL FOR MARKS CHAPTER
    "\u1F546",    # WHITE LATIN CROSS
    "\u1F547",    # HEAVY LATIN CROSS
    "\u1F548",    # CELTIC CROSS
    "\u1F549",    # OM SYMBOL
    "\u1F54A",    # DOVE OF PEACE
    "\u1F568",    # RIGHT SPEAKER
    "\u1F569",    # RIGHT SPEAKER WITH ONE SOUND WAVE
    "\u1F56A",    # RIGHT SPEAKER WITH THREE SOUND WAVES
    "\u1F56B",    # BULLHORN
    "\u1F56C",    # BULLHORN WITH SOUND WAVES
    "\u1F56D",    # RINGING BELL
    "\u1F56E",    # BOOK
    "\u1F56F",    # CANDLE
    "\u1F570",    # MANTELPIECE CLOCK
    "\u1F571",    # BLACK SKULL AND CROSSBONES
    "\u1F572",    # NO PIRACY
    "\u1F573",    # HOLE
    "\u1F574",    # MAN IN BUSINESS SUIT LEVITATING
    "\u1F575",    # SLEUTH OR SPY
    "\u1F576",    # DARK SUNGLASSES
    "\u1F577",    # SPIDER
    "\u1F578",    # SPIDER WEB
    "\u1F579",    # JOYSTICK
    "\u1F57B",    # LEFT HAND TELEPHONE RECEIVER
    "\u1F57C",    # TELEPHONE RECEIVER WITH PAGE
    "\u1F57D",    # RIGHT HAND TELEPHONE RECEIVER
    "\u1F57E",    # WHITE TOUCHTONE TELEPHONE
    "\u1F57F",    # BLACK TOUCHTONE TELEPHONE
    "\u1F580",    # TELEPHONE ON TOP OF MODEM
    "\u1F581",    # CLAMSHELL MOBILE PHONE
    "\u1F582",    # BACK OF ENVELOPE
    "\u1F583",    # STAMPED ENVELOPE
    "\u1F584",    # ENVELOPE WITH LIGHTNING
    "\u1F585",    # FLYING ENVELOPE
    "\u1F586",    # PEN OVER STAMPED ENVELOPE
    "\u1F587",    # LINKED PAPERCLIPS
    "\u1F588",    # BLACK PUSHPIN
    "\u1F589",    # LOWER LEFT PENCIL
    "\u1F58A",    # LOWER LEFT BALLPOINT PEN
    "\u1F58B",    # LOWER LEFT FOUNTAIN PEN
    "\u1F58C",    # LOWER LEFT PAINTBRUSH
    "\u1F58D",    # LOWER LEFT CRAYON
    "\u1F58E",    # LEFT WRITING HAND
    "\u1F58F",    # TURNED OK HAND SIGN
    "\u1F590",    # RAISED HAND WITH FINGERS SPLAYED
    "\u1F591",    # REVERSED RAISED HAND WITH FINGERS SPLAYED
    "\u1F592",    # REVERSED THUMBS UP SIGN
    "\u1F593",    # REVERSED THUMBS DOWN SIGN
    "\u1F594",    # REVERSED VICTORY HAND
    "\u1F595",    # REVERSED HAND WITH MIDDLE FINGER EXTENDED
    "\u1F596",    # RAISED HAND WITH PART BETWEEN MIDDLE AND RING FINGERS
    "\u1F597",    # WHITE DOWN POINTING LEFT HAND INDEX
    "\u1F598",    # SIDEWAYS WHITE LEFT POINTING INDEX
    "\u1F599",    # SIDEWAYS WHITE RIGHT POINTING INDEX
    "\u1F59A",    # SIDEWAYS BLACK LEFT POINTING INDEX
    "\u1F59B",    # SIDEWAYS BLACK RIGHT POINTING INDEX
    "\u1F59C",    # BLACK LEFT POINTING BACKHAND INDEX
    "\u1F59D",    # BLACK RIGHT POINTING BACKHAND INDEX
    "\u1F59E",    # SIDEWAYS WHITE UP POINTING INDEX
    "\u1F59F",    # SIDEWAYS WHITE DOWN POINTING INDEX
    "\u1F5A0",    # SIDEWAYS BLACK UP POINTING INDEX
    "\u1F5A1",    # SIDEWAYS BLACK DOWN POINTING INDEX
    "\u1F5A2",    # BLACK UP POINTING BACKHAND INDEX
    "\u1F5A3",    # BLACK DOWN POINTING BACKHAND INDEX
    "\u1F5A5",    # DESKTOP COMPUTER
    "\u1F5A6",    # KEYBOARD AND MOUSE
    "\u1F5A7",    # THREE NETWORKED COMPUTERS
    "\u1F5A8",    # PRINTER
    "\u1F5A9",    # POCKET CALCULATOR
    "\u1F5AA",    # BLACK HARD SHELL FLOPPY DISK
    "\u1F5AB",    # WHITE HARD SHELL FLOPPY DISK
    "\u1F5AC",    # SOFT SHELL FLOPPY DISK
    "\u1F5AD",    # TAPE CARTRIDGE
    "\u1F5AE",    # WIRED KEYBOARD
    "\u1F5AF",    # ONE BUTTON MOUSE
    "\u1F5B0",    # TWO BUTTON MOUSE
    "\u1F5B1",    # THREE BUTTON MOUSE
    "\u1F5B2",    # TRACKBALL
    "\u1F5B3",    # OLD PERSONAL COMPUTER
    "\u1F5B4",    # HARD DISK
    "\u1F5B5",    # SCREEN
    "\u1F5B6",    # PRINTER ICON
    "\u1F5B7",    # FAX ICON
    "\u1F5B8",    # OPTICAL DISC ICON
    "\u1F5B9",    # DOCUMENT WITH TEXT
    "\u1F5BA",    # DOCUMENT WITH TEXT AND PICTURE
    "\u1F5BB",    # DOCUMENT WITH PICTURE
    "\u1F5BC",    # FRAME WITH PICTURE
    "\u1F5BD",    # FRAME WITH TILES
    "\u1F5BE",    # FRAME WITH AN X
    "\u1F5BF",    # BLACK FOLDER
    "\u1F5C0",    # FOLDER
    "\u1F5C1",    # OPEN FOLDER
    "\u1F5C2",    # CARD INDEX DIVIDERS
    "\u1F5C3",    # CARD FILE BOX
    "\u1F5C4",    # FILE CABINET
    "\u1F5C5",    # EMPTY NOTE
    "\u1F5C6",    # EMPTY NOTE PAGE
    "\u1F5C7",    # EMPTY NOTE PAD
    "\u1F5C8",    # NOTE
    "\u1F5C9",    # NOTE PAGE
    "\u1F5CA",    # NOTE PAD
    "\u1F5CB",    # EMPTY DOCUMENT
    "\u1F5CC",    # EMPTY PAGE
    "\u1F5CD",    # EMPTY PAGES
    "\u1F5CE",    # DOCUMENT
    "\u1F5CF",    # PAGE
    "\u1F5D0",    # PAGES
    "\u1F5D1",    # WASTEBASKET
    "\u1F5D2",    # SPIRAL NOTE PAD
    "\u1F5D3",    # SPIRAL CALENDAR PAD
    "\u1F5D4",    # DESKTOP WINDOW
    "\u1F5D5",    # MINIMIZE
    "\u1F5D6",    # MAXIMIZE
    "\u1F5D7",    # OVERLAP
    "\u1F5D8",    # CLOCKWISE RIGHT AND LEFT SEMICIRCLE ARROWS
    "\u1F5D9",    # CANCELLATION X
    "\u1F5DA",    # INCREASE FONT SIZE SYMBOL
    "\u1F5DB",    # DECREASE FONT SIZE SYMBOL
    "\u1F5DC",    # COMPRESSION
    "\u1F5DD",    # OLD KEY
    "\u1F5DE",    # ROLLED-UP NEWSPAPER
    "\u1F5DF",    # PAGE WITH CIRCLED TEXT
    "\u1F5E0",    # STOCK CHART
    "\u1F5E1",    # DAGGER KNIFE
    "\u1F5E2",    # LIPS
    "\u1F5E3",    # SPEAKING HEAD IN SILHOUETTE
    "\u1F5E4",    # THREE RAYS ABOVE
    "\u1F5E5",    # THREE RAYS BELOW
    "\u1F5E6",    # THREE RAYS LEFT
    "\u1F5E7",    # THREE RAYS RIGHT
    "\u1F5E8",    # LEFT SPEECH BUBBLE
    "\u1F5E9",    # RIGHT SPEECH BUBBLE
    "\u1F5EA",    # TWO SPEECH BUBBLES
    "\u1F5EB",    # THREE SPEECH BUBBLES
    "\u1F5EC",    # LEFT THOUGHT BUBBLE
    "\u1F5ED",    # RIGHT THOUGHT BUBBLE
    "\u1F5EE",    # LEFT ANGER BUBBLE
    "\u1F5EF",    # RIGHT ANGER BUBBLE
    "\u1F5F0",    # MOOD BUBBLE
    "\u1F5F1",    # LIGHTNING MOOD BUBBLE
    "\u1F5F2",    # LIGHTNING MOOD
    "\u1F5F3",    # BALLOT BOX WITH BALLOT
    "\u1F5F4",    # BALLOT SCRIPT X
    "\u1F5F5",    # BALLOT BOX WITH SCRIPT X
    "\u1F5F6",    # BALLOT BOLD SCRIPT X
    "\u1F5F7",    # BALLOT BOX WITH BOLD SCRIPT X
    "\u1F5F8",    # LIGHT CHECK MARK
    "\u1F5F9",    # BALLOT BOX WITH BOLD CHECK
    "\u1F5FA",    # WORLD MAP
    "\u1F641",    # SLIGHTLY FROWNING FACE
    "\u1F642",    # SLIGHTLY SMILING FACE
    "\u1F650",    # NORTH WEST POINTING LEAF
    "\u1F651",    # SOUTH WEST POINTING LEAF
    "\u1F652",    # NORTH EAST POINTING LEAF
    "\u1F653",    # SOUTH EAST POINTING LEAF
    "\u1F654",    # TURNED NORTH WEST POINTING LEAF
    "\u1F655",    # TURNED SOUTH WEST POINTING LEAF
    "\u1F656",    # TURNED NORTH EAST POINTING LEAF
    "\u1F657",    # TURNED SOUTH EAST POINTING LEAF
    "\u1F658",    # NORTH WEST POINTING VINE LEAF
    "\u1F659",    # SOUTH WEST POINTING VINE LEAF
    "\u1F65A",    # NORTH EAST POINTING VINE LEAF
    "\u1F65B",    # SOUTH EAST POINTING VINE LEAF
    "\u1F65C",    # HEAVY NORTH WEST POINTING VINE LEAF
    "\u1F65D",    # HEAVY SOUTH WEST POINTING VINE LEAF
    "\u1F65E",    # HEAVY NORTH EAST POINTING VINE LEAF
    "\u1F65F",    # HEAVY SOUTH EAST POINTING VINE LEAF
    "\u1F660",    # NORTH WEST POINTING BUD
    "\u1F661",    # SOUTH WEST POINTING BUD
    "\u1F662",    # NORTH EAST POINTING BUD
    "\u1F663",    # SOUTH EAST POINTING BUD
    "\u1F664",    # HEAVY NORTH WEST POINTING BUD
    "\u1F665",    # HEAVY SOUTH WEST POINTING BUD
    "\u1F666",    # HEAVY NORTH EAST POINTING BUD
    "\u1F667",    # HEAVY SOUTH EAST POINTING BUD
    "\u1F668",    # HOLLOW QUILT SQUARE ORNAMENT
    "\u1F669",    # HOLLOW QUILT SQUARE ORNAMENT IN BLACK SQUARE
    "\u1F66A",    # SOLID QUILT SQUARE ORNAMENT
    "\u1F66B",    # SOLID QUILT SQUARE ORNAMENT IN BLACK SQUARE
    "\u1F66C",    # LEFTWARDS ROCKET
    "\u1F66D",    # UPWARDS ROCKET
    "\u1F66E",    # RIGHTWARDS ROCKET
    "\u1F66F",    # DOWNWARDS ROCKET
    "\u1F670",    # SCRIPT LIGATURE ET ORNAMENT
    "\u1F671",    # HEAVY SCRIPT LIGATURE ET ORNAMENT
    "\u1F672",    # LIGATURE OPEN ET ORNAMENT
    "\u1F673",    # HEAVY LIGATURE OPEN ET ORNAMENT
    "\u1F674",    # HEAVY AMPERSAND ORNAMENT
    "\u1F675",    # SWASH AMPERSAND ORNAMENT
    "\u1F676",    # SANS-SERIF HEAVY DOUBLE TURNED COMMA QUOTATION MARK ORNAMENT
    "\u1F677",    # SANS-SERIF HEAVY DOUBLE COMMA QUOTATION MARK ORNAMENT
    "\u1F678",    # SANS-SERIF HEAVY LOW DOUBLE COMMA QUOTATION MARK ORNAMENT
    "\u1F679",    # HEAVY INTERROBANG ORNAMENT
    "\u1F67A",    # SANS-SERIF INTERROBANG ORNAMENT
    "\u1F67B",    # HEAVY SANS-SERIF INTERROBANG ORNAMENT
    "\u1F67C",    # VERY HEAVY SOLIDUS
    "\u1F67D",    # VERY HEAVY REVERSE SOLIDUS
    "\u1F67E",    # CHECKER BOARD
    "\u1F67F",    # REVERSE CHECKER BOARD
    "\u1F6C6",    # TRIANGLE WITH ROUNDED CORNERS
    "\u1F6C7",    # PROHIBITED SIGN
    "\u1F6C8",    # CIRCLED INFORMATION SOURCE
    "\u1F6C9",    # BOYS SYMBOL
    "\u1F6CA",    # GIRLS SYMBOL
    "\u1F6CB",    # COUCH AND LAMP
    "\u1F6CC",    # SLEEPING ACCOMMODATION
    "\u1F6CD",    # SHOPPING BAGS
    "\u1F6CE",    # BELLHOP BELL
    "\u1F6CF",    # BED
    "\u1F6E0",    # HAMMER AND WRENCH
    "\u1F6E1",    # SHIELD
    "\u1F6E2",    # OIL DRUM
    "\u1F6E3",    # MOTORWAY
    "\u1F6E4",    # RAILWAYS TRACK
    "\u1F6E5",    # MOTOR BOAT
    "\u1F6E6",    # UP-POINTING MILITARY AIRPLANE
    "\u1F6E7",    # UP-POINTING AIRPLANE
    "\u1F6E8",    # UP-POINTING SMALL AIRPLANE
    "\u1F6E9",    # SMALL AIRPLANE
    "\u1F6EA",    # NORTHEAST-POINTING AIRPLANE
    "\u1F6EB",    # AIRPLANE DEPARTURE
    "\u1F6EC",    # AIRPLANE ARRIVING
    "\u1F6F0",    # SATELLITE
    "\u1F6F1",    # ONCOMING FIRE ENGINE
    "\u1F6F2",    # DIESEL LOCOMOTIVE
    "\u1F6F3",    # PASSENGER SHIP
    "\u1F780",    # BLACK LEFT-POINTING ISOSCELES RIGHT TRIANGLE
    "\u1F781",    # BLACK UP-POINTING ISOSCELES RIGHT TRIANGLE
    "\u1F782",    # BLACK RIGHT-POINTING ISOSCELES RIGHT TRIANGLE
    "\u1F783",    # BLACK DOWN-POINTING ISOSCELES RIGHT TRIANGLE
    "\u1F784",    # BLACK SLIGHTLY SMALL CIRCLE
    "\u1F785",    # MEDIUM BOLD WHITE CIRCLE
    "\u1F786",    # BOLD WHITE CIRCLE
    "\u1F787",    # HEAVY WHITE CIRCLE
    "\u1F788",    # VERY HEAVY WHITE CIRCLE
    "\u1F789",    # EXTREMELY HEAVY WHITE CIRCLE
    "\u1F78A",    # WHITE CIRCLE CONTAINING BLACK SMALL CIRCLE
    "\u1F78B",    # ROUND TARGET
    "\u1F78C",    # BLACK TINY SQUARE
    "\u1F78D",    # BLACK SLIGHTLY SMALL SQUARE
    "\u1F78E",    # LIGHT WHITE SQUARE
    "\u1F78F",    # MEDIUM WHITE SQUARE
    "\u1F790",    # BOLD WHITE SQUARE
    "\u1F791",    # HEAVY WHITE SQUARE
    "\u1F792",    # VERY HEAVY WHITE SQUARE
    "\u1F793",    # EXTREMELY HEAVY WHITE SQUARE
    "\u1F794",    # WHITE SQUARE CONTAINING BLACK VERY SMALL SQUARE
    "\u1F795",    # WHITE SQUARE CONTAINING BLACK MEDIUM SQUARE
    "\u1F796",    # SQUARE TARGET
    "\u1F797",    # BLACK TINY DIAMOND
    "\u1F798",    # BLACK VERY SMALL DIAMOND
    "\u1F799",    # BLACK MEDIUM SMALL DIAMOND
    "\u1F79A",    # WHITE DIAMOND CONTAINING BLACK VERY SMALL DIAMOND
    "\u1F79B",    # WHITE DIAMOND CONTAINING BLACK MEDIUM DIAMOND
    "\u1F79C",    # DIAMOND TARGET
    "\u1F79D",    # BLACK TINY LOZENGE
    "\u1F79E",    # BLACK VERY SMALL LOZENGE
    "\u1F79F",    # BLACK MEDIUM SMALL LOZENGE
    "\u1F7A0",    # WHITE LOZENGE CONTAINING BLACK SMALL LOZENGE
    "\u1F7A1",    # THIN GREEK CROSS
    "\u1F7A2",    # LIGHT GREEK CROSS
    "\u1F7A3",    # MEDIUM GREEK CROSS
    "\u1F7A4",    # BOLD GREEK CROSS
    "\u1F7A5",    # VERY BOLD GREEK CROSS
    "\u1F7A6",    # VERY HEAVY GREEK CROSS
    "\u1F7A7",    # EXTREMELY HEAVY GREEK CROSS
    "\u1F7A8",    # THIN SALTIRE
    "\u1F7A9",    # LIGHT SALTIRE
    "\u1F7AA",    # MEDIUM SALTIRE
    "\u1F7AB",    # BOLD SALTIRE
    "\u1F7AC",    # HEAVY SALTIRE
    "\u1F7AD",    # VERY HEAVY SALTIRE
    "\u1F7AE",    # EXTREMELY HEAVY SALTIRE
    "\u1F7AF",    # LIGHT FIVE SPOKED ASTERISK
    "\u1F7B0",    # MEDIUM FIVE SPOKED ASTERISK
    "\u1F7B1",    # BOLD FIVE SPOKED ASTERISK
    "\u1F7B2",    # HEAVY FIVE SPOKED ASTERISK
    "\u1F7B3",    # VERY HEAVY FIVE SPOKED ASTERISK
    "\u1F7B4",    # EXTREMELY HEAVY FIVE SPOKED ASTERISK
    "\u1F7B5",    # LIGHT SIX SPOKED ASTERISK
    "\u1F7B6",    # MEDIUM SIX SPOKED ASTERISK
    "\u1F7B7",    # BOLD SIX SPOKED ASTERISK
    "\u1F7B8",    # HEAVY SIX SPOKED ASTERISK
    "\u1F7B9",    # VERY HEAVY SIX SPOKED ASTERISK
    "\u1F7BA",    # EXTREMELY HEAVY SIX SPOKED ASTERISK
    "\u1F7BB",    # LIGHT EIGHT SPOKED ASTERISK
    "\u1F7BC",    # MEDIUM EIGHT SPOKED ASTERISK
    "\u1F7BD",    # BOLD EIGHT SPOKED ASTERISK
    "\u1F7BE",    # HEAVY EIGHT SPOKED ASTERISK
    "\u1F7BF",    # VERY HEAVY EIGHT SPOKED ASTERISK
    "\u1F7C0",    # LIGHT THREE POINTED BLACK STAR
    "\u1F7C1",    # MEDIUM THREE POINTED BLACK STAR
    "\u1F7C2",    # THREE POINTED BLACK STAR
    "\u1F7C3",    # MEDIUM THREE POINTED PINWHEEL STAR
    "\u1F7C4",    # LIGHT FOUR POINTED BLACK STAR
    "\u1F7C5",    # MEDIUM FOUR POINTED BLACK STAR
    "\u1F7C6",    # FOUR POINTED BLACK STAR
    "\u1F7C7",    # MEDIUM FOUR POINTED PINWHEEL STAR
    "\u1F7C8",    # REVERSE LIGHT FOUR POINTED PINWHEEL STAR
    "\u1F7C9",    # LIGHT FIVE POINTED BLACK STAR
    "\u1F7CA",    # HEAVY FIVE POINTED BLACK STAR
    "\u1F7CB",    # MEDIUM SIX POINTED BLACK STAR
    "\u1F7CC",    # HEAVY SIX POINTED BLACK STAR
    "\u1F7CD",    # SIX POINTED PINWHEEL STAR
    "\u1F7CE",    # MEDIUM EIGHT POINTED BLACK STAR
    "\u1F7CF",    # HEAVY EIGHT POINTED BLACK STAR
    "\u1F7D0",    # VERY HEAVY EIGHT POINTED BLACK STAR
    "\u1F7D1",    # HEAVY EIGHT POINTED PINWHEEL STAR
    "\u1F7D2",    # LIGHT TWELVE POINTED BLACK STAR
    "\u1F7D3",    # HEAVY TWELVE POINTED BLACK STAR
    "\u1F7D4",    # HEAVY TWELVE POINTED PINWHEEL STAR
    "\u1F800",    # LEFTWARDS ARROW WITH SMALL TRIANGLE ARROWHEAD
    "\u1F801",    # UPWARDS ARROW WITH SMALL TRIANGLE ARROWHEAD
    "\u1F802",    # RIGHTWARDS ARROW WITH SMALL TRIANGLE ARROWHEAD
    "\u1F803",    # DOWNWARDS ARROW WITH SMALL TRIANGLE ARROWHEAD
    "\u1F804",    # LEFTWARDS ARROW WITH MEDIUM TRIANGLE ARROWHEAD
    "\u1F805",    # UPWARDS ARROW WITH MEDIUM TRIANGLE ARROWHEAD
    "\u1F806",    # RIGHTWARDS ARROW WITH MEDIUM TRIANGLE ARROWHEAD
    "\u1F807",    # DOWNWARDS ARROW WITH MEDIUM TRIANGLE ARROWHEAD
    "\u1F808",    # LEFTWARDS ARROW WITH LARGE TRIANGLE ARROWHEAD
    "\u1F809",    # UPWARDS ARROW WITH LARGE TRIANGLE ARROWHEAD
    "\u1F80A",    # RIGHTWARDS ARROW WITH LARGE TRIANGLE ARROWHEAD
    "\u1F80B",    # DOWNWARDS ARROW WITH LARGE TRIANGLE ARROWHEAD
    "\u1F810",    # LEFTWARDS ARROW WITH SMALL EQUILATERAL ARROWHEAD
    "\u1F811",    # UPWARDS ARROW WITH SMALL EQUILATERAL ARROWHEAD
    "\u1F812",    # RIGHTWARDS ARROW WITH SMALL EQUILATERAL ARROWHEAD
    "\u1F813",    # DOWNWARDS ARROW WITH SMALL EQUILATERAL ARROWHEAD
    "\u1F814",    # LEFTWARDS ARROW WITH EQUILATERAL ARROWHEAD
    "\u1F815",    # UPWARDS ARROW WITH EQUILATERAL ARROWHEAD
    "\u1F816",    # RIGHTWARDS ARROW WITH EQUILATERAL ARROWHEAD
    "\u1F817",    # DOWNWARDS ARROW WITH EQUILATERAL ARROWHEAD
    "\u1F818",    # HEAVY LEFTWARDS ARROW WITH EQUILATERAL ARROWHEAD
    "\u1F819",    # HEAVY UPWARDS ARROW WITH EQUILATERAL ARROWHEAD
    "\u1F81A",    # HEAVY RIGHTWARDS ARROW WITH EQUILATERAL ARROWHEAD
    "\u1F81B",    # HEAVY DOWNWARDS ARROW WITH EQUILATERAL ARROWHEAD
    "\u1F81C",    # HEAVY LEFTWARDS ARROW WITH LARGE EQUILATERAL ARROWHEAD
    "\u1F81D",    # HEAVY UPWARDS ARROW WITH LARGE EQUILATERAL ARROWHEAD
    "\u1F81E",    # HEAVY RIGHTWARDS ARROW WITH LARGE EQUILATERAL ARROWHEAD
    "\u1F81F",    # HEAVY DOWNWARDS ARROW WITH LARGE EQUILATERAL ARROWHEAD
    "\u1F820",    # LEFTWARDS TRIANGLE-HEADED ARROW WITH NARROW SHAFT
    "\u1F821",    # UPWARDS TRIANGLE-HEADED ARROW WITH NARROW SHAFT
    "\u1F822",    # RIGHTWARDS TRIANGLE-HEADED ARROW WITH NARROW SHAFT
    "\u1F823",    # DOWNWARDS TRIANGLE-HEADED ARROW WITH NARROW SHAFT
    "\u1F824",    # LEFTWARDS TRIANGLE-HEADED ARROW WITH MEDIUM SHAFT
    "\u1F825",    # UPWARDS TRIANGLE-HEADED ARROW WITH MEDIUM SHAFT
    "\u1F826",    # RIGHTWARDS TRIANGLE-HEADED ARROW WITH MEDIUM SHAFT
    "\u1F827",    # DOWNWARDS TRIANGLE-HEADED ARROW WITH MEDIUM SHAFT
    "\u1F828",    # LEFTWARDS TRIANGLE-HEADED ARROW WITH BOLD SHAFT
    "\u1F829",    # UPWARDS TRIANGLE-HEADED ARROW WITH BOLD SHAFT
    "\u1F82A",    # RIGHTWARDS TRIANGLE-HEADED ARROW WITH BOLD SHAFT
    "\u1F82B",    # DOWNWARDS TRIANGLE-HEADED ARROW WITH BOLD SHAFT
    "\u1F82C",    # LEFTWARDS TRIANGLE-HEADED ARROW WITH HEAVY SHAFT
    "\u1F82D",    # UPWARDS TRIANGLE-HEADED ARROW WITH HEAVY SHAFT
    "\u1F82E",    # RIGHTWARDS TRIANGLE-HEADED ARROW WITH HEAVY SHAFT
    "\u1F82F",    # DOWNWARDS TRIANGLE-HEADED ARROW WITH HEAVY SHAFT
    "\u1F830",    # LEFTWARDS TRIANGLE-HEADED ARROW WITH VERY HEAVY SHAFT
    "\u1F831",    # UPWARDS TRIANGLE-HEADED ARROW WITH VERY HEAVY SHAFT
    "\u1F832",    # RIGHTWARDS TRIANGLE-HEADED ARROW WITH VERY HEAVY SHAFT
    "\u1F833",    # DOWNWARDS TRIANGLE-HEADED ARROW WITH VERY HEAVY SHAFT
    "\u1F834",    # LEFTWARDS FINGER-POST ARROW
    "\u1F835",    # UPWARDS FINGER-POST ARROW
    "\u1F836",    # RIGHTWARDS FINGER-POST ARROW
    "\u1F837",    # DOWNWARDS FINGER-POST ARROW
    "\u1F838",    # LEFTWARDS SQUARED ARROW
    "\u1F839",    # UPWARDS SQUARED ARROW
    "\u1F83A",    # RIGHTWARDS SQUARED ARROW
    "\u1F83B",    # DOWNWARDS SQUARED ARROW
    "\u1F83C",    # LEFTWARDS COMPRESSED ARROW
    "\u1F83D",    # UPWARDS COMPRESSED ARROW
    "\u1F83E",    # RIGHTWARDS COMPRESSED ARROW
    "\u1F83F",    # DOWNWARDS COMPRESSED ARROW
    "\u1F840",    # LEFTWARDS HEAVY COMPRESSED ARROW
    "\u1F841",    # UPWARDS HEAVY COMPRESSED ARROW
    "\u1F842",    # RIGHTWARDS HEAVY COMPRESSED ARROW
    "\u1F843",    # DOWNWARDS HEAVY COMPRESSED ARROW
    "\u1F844",    # LEFTWARDS HEAVY ARROW
    "\u1F845",    # UPWARDS HEAVY ARROW
    "\u1F846",    # RIGHTWARDS HEAVY ARROW
    "\u1F847",    # DOWNWARDS HEAVY ARROW
    "\u1F850",    # LEFTWARDS SANS-SERIF ARROW
    "\u1F851",    # UPWARDS SANS-SERIF ARROW
    "\u1F852",    # RIGHTWARDS SANS-SERIF ARROW
    "\u1F853",    # DOWNWARDS SANS-SERIF ARROW
    "\u1F854",    # NORTH WEST SANS-SERIF ARROW
    "\u1F855",    # NORTH EAST SANS-SERIF ARROW
    "\u1F856",    # SOUTH EAST SANS-SERIF ARROW
    "\u1F857",    # SOUTH WEST SANS-SERIF ARROW
    "\u1F858",    # LEFT RIGHT SANS-SERIF ARROW
    "\u1F859",    # UP DOWN SANS-SERIF ARROW
    "\u1F860",    # WIDE-HEADED LEFTWARDS LIGHT BARB ARROW
    "\u1F861",    # WIDE-HEADED UPWARDS LIGHT BARB ARROW
    "\u1F862",    # WIDE-HEADED RIGHTWARDS LIGHT BARB ARROW
    "\u1F863",    # WIDE-HEADED DOWNWARDS LIGHT BARB ARROW
    "\u1F864",    # WIDE-HEADED NORTH WEST LIGHT BARB ARROW
    "\u1F865",    # WIDE-HEADED NORTH EAST LIGHT BARB ARROW
    "\u1F866",    # WIDE-HEADED SOUTH EAST LIGHT BARB ARROW
    "\u1F867",    # WIDE-HEADED SOUTH WEST LIGHT BARB ARROW
    "\u1F868",    # WIDE-HEADED LEFTWARDS BARB ARROW
    "\u1F869",    # WIDE-HEADED UPWARDS BARB ARROW
    "\u1F86A",    # WIDE-HEADED RIGHTWARDS BARB ARROW
    "\u1F86B",    # WIDE-HEADED DOWNWARDS BARB ARROW
    "\u1F86C",    # WIDE-HEADED NORTH WEST BARB ARROW
    "\u1F86D",    # WIDE-HEADED NORTH EAST BARB ARROW
    "\u1F86E",    # WIDE-HEADED SOUTH EAST BARB ARROW
    "\u1F86F",    # WIDE-HEADED SOUTH WEST BARB ARROW
    "\u1F870",    # WIDE-HEADED LEFTWARDS MEDIUM BARB ARROW
    "\u1F871",    # WIDE-HEADED UPWARDS MEDIUM BARB ARROW
    "\u1F872",    # WIDE-HEADED RIGHTWARDS MEDIUM BARB ARROW
    "\u1F873",    # WIDE-HEADED DOWNWARDS MEDIUM BARB ARROW
    "\u1F874",    # WIDE-HEADED NORTH WEST MEDIUM BARB ARROW
    "\u1F875",    # WIDE-HEADED NORTH EAST MEDIUM BARB ARROW
    "\u1F876",    # WIDE-HEADED SOUTH EAST MEDIUM BARB ARROW
    "\u1F877",    # WIDE-HEADED SOUTH WEST MEDIUM BARB ARROW
    "\u1F878",    # WIDE-HEADED LEFTWARDS HEAVY BARB ARROW
    "\u1F879",    # WIDE-HEADED UPWARDS HEAVY BARB ARROW
    "\u1F87A",    # WIDE-HEADED RIGHTWARDS HEAVY BARB ARROW
    "\u1F87B",    # WIDE-HEADED DOWNWARDS HEAVY BARB ARROW
    "\u1F87C",    # WIDE-HEADED NORTH WEST HEAVY BARB ARROW
    "\u1F87D",    # WIDE-HEADED NORTH EAST HEAVY BARB ARROW
    "\u1F87E",    # WIDE-HEADED SOUTH EAST HEAVY BARB ARROW
    "\u1F87F",    # WIDE-HEADED SOUTH WEST HEAVY BARB ARROW
    "\u1F880",    # WIDE-HEADED LEFTWARDS VERY HEAVY BARB ARROW
    "\u1F881",    # WIDE-HEADED UPWARDS VERY HEAVY BARB ARROW
    "\u1F882",    # WIDE-HEADED RIGHTWARDS VERY HEAVY BARB ARROW
    "\u1F883",    # WIDE-HEADED DOWNWARDS VERY HEAVY BARB ARROW
    "\u1F884",    # WIDE-HEADED NORTH WEST VERY HEAVY BARB ARROW
    "\u1F885",    # WIDE-HEADED NORTH EAST VERY HEAVY BARB ARROW
    "\u1F886",    # WIDE-HEADED SOUTH EAST VERY HEAVY BARB ARROW
    "\u1F887",    # WIDE-HEADED SOUTH WEST VERY HEAVY BARB ARROW
    "\u1F890",    # LEFTWARDS TRIANGLE ARROWHEAD
    "\u1F891",    # UPWARDS TRIANGLE ARROWHEAD
    "\u1F892",    # RIGHTWARDS TRIANGLE ARROWHEAD
    "\u1F893",    # DOWNWARDS TRIANGLE ARROWHEAD
    "\u1F894",    # LEFTWARDS WHITE ARROW WITHIN TRIANGLE ARROWHEAD
    "\u1F895",    # UPWARDS WHITE ARROW WITHIN TRIANGLE ARROWHEAD
    "\u1F896",    # RIGHTWARDS WHITE ARROW WITHIN TRIANGLE ARROWHEAD
    "\u1F897",    # DOWNWARDS WHITE ARROW WITHIN TRIANGLE ARROWHEAD
    "\u1F898",    # LEFTWARDS ARROW WITH NOTCHED TAIL
    "\u1F899",    # UPWARDS ARROW WITH NOTCHED TAIL
    "\u1F89A",    # RIGHTWARDS ARROW WITH NOTCHED TAIL
    "\u1F89B",    # DOWNWARDS ARROW WITH NOTCHED TAIL
    "\u1F89C",    # HEAVY ARROW SHAFT WIDTH ONE
    "\u1F89D",    # HEAVY ARROW SHAFT WIDTH TWO THIRDS
    "\u1F89E",    # HEAVY ARROW SHAFT WIDTH ONE HALF
    "\u1F89F",    # HEAVY ARROW SHAFT WIDTH ONE THIRD
    "\u1F8A0",    # LEFTWARDS BOTTOM-SHADED WHITE ARROW
    "\u1F8A1",    # RIGHTWARDS BOTTOM SHADED WHITE ARROW
    "\u1F8A2",    # LEFTWARDS TOP SHADED WHITE ARROW
    "\u1F8A3",    # RIGHTWARDS TOP SHADED WHITE ARROW
    "\u1F8A4",    # LEFTWARDS LEFT-SHADED WHITE ARROW
    "\u1F8A5",    # RIGHTWARDS RIGHT-SHADED WHITE ARROW
    "\u1F8A6",    # LEFTWARDS RIGHT-SHADED WHITE ARROW
    "\u1F8A7",    # RIGHTWARDS LEFT-SHADED WHITE ARROW
    "\u1F8A8",    # LEFTWARDS BACK-TILTED SHADOWED WHITE ARROW
    "\u1F8A9",    # RIGHTWARDS BACK-TILTED SHADOWED WHITE ARROW
    "\u1F8AA",    # LEFTWARDS FRONT-TILTED SHADOWED WHITE ARROW
    "\u1F8AB",    # RIGHTWARDS FRONT-TILTED SHADOWED WHITE ARROW
    "\u1F8AC",    # WHITE ARROW SHAFT WIDTH ONE
    "\u1F8AD",    # WHITE ARROW SHAFT WIDTH TWO THIRDS
    ]
    test_data.each do |string|
      assert @validator.valid_encoding?(string), "good unicode specs 03: #{string}"
      assert string.force_encoding("UTF-8").valid_encoding?,
        "good unicode specs 03 19: #{string}"  if @vercheck
    end

  end

=begin

Test derived from data in:

http://www.unicode.org/versions/Unicode7.0.0/

=end

  def test_0710_uc7
    test_data = [
    "\u1ab0",     # Combining Diacritical Marks Extended
    "\u1ab1",     # Combining Diacritical Marks Extended
    "\u1ab2",     # Combining Diacritical Marks Extended
    "\u1ab3",     # Combining Diacritical Marks Extended
    "\u1ab4",     # Combining Diacritical Marks Extended
    "\u1ab5",     # Combining Diacritical Marks Extended
    "\u1ab6",     # Combining Diacritical Marks Extended
    "\u1ab7",     # Combining Diacritical Marks Extended
    "\u1ab8",     # Combining Diacritical Marks Extended
    "\u1ab9",     # Combining Diacritical Marks Extended
    "\u1aba",     # Combining Diacritical Marks Extended
    "\u1abb",     # Combining Diacritical Marks Extended
    "\u1abc",     # Combining Diacritical Marks Extended
    "\u1abd",     # Combining Diacritical Marks Extended
    "\u1abe",     # Combining Diacritical Marks Extended
    "\u1abf",     # Combining Diacritical Marks Extended
    "\u1ac0",     # Combining Diacritical Marks Extended
    "\u1ac1",     # Combining Diacritical Marks Extended
    "\u1ac2",     # Combining Diacritical Marks Extended
    "\u1ac3",     # Combining Diacritical Marks Extended
    "\u1ac4",     # Combining Diacritical Marks Extended
    "\u1ac5",     # Combining Diacritical Marks Extended
    "\u1ac6",     # Combining Diacritical Marks Extended
    "\u1ac7",     # Combining Diacritical Marks Extended
    "\u1ac8",     # Combining Diacritical Marks Extended
    "\u1ac9",     # Combining Diacritical Marks Extended
    "\u1aca",     # Combining Diacritical Marks Extended
    "\u1acb",     # Combining Diacritical Marks Extended
    "\u1acc",     # Combining Diacritical Marks Extended
    "\u1acd",     # Combining Diacritical Marks Extended
    "\u1ace",     # Combining Diacritical Marks Extended
    "\u1acf",     # Combining Diacritical Marks Extended
    "\u1ad0",     # Combining Diacritical Marks Extended
    "\u1ad1",     # Combining Diacritical Marks Extended
    "\u1ad2",     # Combining Diacritical Marks Extended
    "\u1ad3",     # Combining Diacritical Marks Extended
    "\u1ad4",     # Combining Diacritical Marks Extended
    "\u1ad5",     # Combining Diacritical Marks Extended
    "\u1ad6",     # Combining Diacritical Marks Extended
    "\u1ad7",     # Combining Diacritical Marks Extended
    "\u1ad8",     # Combining Diacritical Marks Extended
    "\u1ad9",     # Combining Diacritical Marks Extended
    "\u1ada",     # Combining Diacritical Marks Extended
    "\u1adb",     # Combining Diacritical Marks Extended
    "\u1adc",     # Combining Diacritical Marks Extended
    "\u1add",     # Combining Diacritical Marks Extended
    "\u1ade",     # Combining Diacritical Marks Extended
    "\u1adf",     # Combining Diacritical Marks Extended
    "\u1ae0",     # Combining Diacritical Marks Extended
    "\u1ae1",     # Combining Diacritical Marks Extended
    "\u1ae2",     # Combining Diacritical Marks Extended
    "\u1ae3",     # Combining Diacritical Marks Extended
    "\u1ae4",     # Combining Diacritical Marks Extended
    "\u1ae5",     # Combining Diacritical Marks Extended
    "\u1ae6",     # Combining Diacritical Marks Extended
    "\u1ae7",     # Combining Diacritical Marks Extended
    "\u1ae8",     # Combining Diacritical Marks Extended
    "\u1ae9",     # Combining Diacritical Marks Extended
    "\u1aea",     # Combining Diacritical Marks Extended
    "\u1aeb",     # Combining Diacritical Marks Extended
    "\u1aec",     # Combining Diacritical Marks Extended
    "\u1aed",     # Combining Diacritical Marks Extended
    "\u1aee",     # Combining Diacritical Marks Extended
    "\u1aef",     # Combining Diacritical Marks Extended
    "\u1af0",     # Combining Diacritical Marks Extended
    "\u1af1",     # Combining Diacritical Marks Extended
    "\u1af2",     # Combining Diacritical Marks Extended
    "\u1af3",     # Combining Diacritical Marks Extended
    "\u1af4",     # Combining Diacritical Marks Extended
    "\u1af5",     # Combining Diacritical Marks Extended
    "\u1af6",     # Combining Diacritical Marks Extended
    "\u1af7",     # Combining Diacritical Marks Extended
    "\u1af8",     # Combining Diacritical Marks Extended
    "\u1af9",     # Combining Diacritical Marks Extended
    "\u1afa",     # Combining Diacritical Marks Extended
    "\u1afb",     # Combining Diacritical Marks Extended
    "\u1afc",     # Combining Diacritical Marks Extended
    "\u1afd",     # Combining Diacritical Marks Extended
    "\u1afe",     # Combining Diacritical Marks Extended
    "\u1aff",     # Combining Diacritical Marks Extended
    "\ua9e0",     # Myanmar Extended-B
    "\ua9e1",     # Myanmar Extended-B
    "\ua9e2",     # Myanmar Extended-B
    "\ua9e3",     # Myanmar Extended-B
    "\ua9e4",     # Myanmar Extended-B
    "\ua9e5",     # Myanmar Extended-B
    "\ua9e6",     # Myanmar Extended-B
    "\ua9e7",     # Myanmar Extended-B
    "\ua9e8",     # Myanmar Extended-B
    "\ua9e9",     # Myanmar Extended-B
    "\ua9ea",     # Myanmar Extended-B
    "\ua9eb",     # Myanmar Extended-B
    "\ua9ec",     # Myanmar Extended-B
    "\ua9ed",     # Myanmar Extended-B
    "\ua9ee",     # Myanmar Extended-B
    "\ua9ef",     # Myanmar Extended-B
    "\ua9f0",     # Myanmar Extended-B
    "\ua9f1",     # Myanmar Extended-B
    "\ua9f2",     # Myanmar Extended-B
    "\ua9f3",     # Myanmar Extended-B
    "\ua9f4",     # Myanmar Extended-B
    "\ua9f5",     # Myanmar Extended-B
    "\ua9f6",     # Myanmar Extended-B
    "\ua9f7",     # Myanmar Extended-B
    "\ua9f8",     # Myanmar Extended-B
    "\ua9f9",     # Myanmar Extended-B
    "\ua9fa",     # Myanmar Extended-B
    "\ua9fb",     # Myanmar Extended-B
    "\ua9fc",     # Myanmar Extended-B
    "\ua9fd",     # Myanmar Extended-B
    "\ua9fe",     # Myanmar Extended-B
    "\ua9ff",     # Myanmar Extended-B
    "\uab30",     # Latin Extended-E
    "\uab31",     # Latin Extended-E
    "\uab32",     # Latin Extended-E
    "\uab33",     # Latin Extended-E
    "\uab34",     # Latin Extended-E
    "\uab35",     # Latin Extended-E
    "\uab36",     # Latin Extended-E
    "\uab37",     # Latin Extended-E
    "\uab38",     # Latin Extended-E
    "\uab39",     # Latin Extended-E
    "\uab3a",     # Latin Extended-E
    "\uab3b",     # Latin Extended-E
    "\uab3c",     # Latin Extended-E
    "\uab3d",     # Latin Extended-E
    "\uab3e",     # Latin Extended-E
    "\uab3f",     # Latin Extended-E
    "\uab40",     # Latin Extended-E
    "\uab41",     # Latin Extended-E
    "\uab42",     # Latin Extended-E
    "\uab43",     # Latin Extended-E
    "\uab44",     # Latin Extended-E
    "\uab45",     # Latin Extended-E
    "\uab46",     # Latin Extended-E
    "\uab47",     # Latin Extended-E
    "\uab48",     # Latin Extended-E
    "\uab49",     # Latin Extended-E
    "\uab4a",     # Latin Extended-E
    "\uab4b",     # Latin Extended-E
    "\uab4c",     # Latin Extended-E
    "\uab4d",     # Latin Extended-E
    "\uab4e",     # Latin Extended-E
    "\uab4f",     # Latin Extended-E
    "\uab50",     # Latin Extended-E
    "\uab51",     # Latin Extended-E
    "\uab52",     # Latin Extended-E
    "\uab53",     # Latin Extended-E
    "\uab54",     # Latin Extended-E
    "\uab55",     # Latin Extended-E
    "\uab56",     # Latin Extended-E
    "\uab57",     # Latin Extended-E
    "\uab58",     # Latin Extended-E
    "\uab59",     # Latin Extended-E
    "\uab5a",     # Latin Extended-E
    "\uab5b",     # Latin Extended-E
    "\uab5c",     # Latin Extended-E
    "\uab5d",     # Latin Extended-E
    "\uab5e",     # Latin Extended-E
    "\uab5f",     # Latin Extended-E
    "\uab60",     # Latin Extended-E
    "\uab61",     # Latin Extended-E
    "\uab62",     # Latin Extended-E
    "\uab63",     # Latin Extended-E
    "\uab64",     # Latin Extended-E
    "\uab65",     # Latin Extended-E
    "\uab66",     # Latin Extended-E
    "\uab67",     # Latin Extended-E
    "\uab68",     # Latin Extended-E
    "\uab69",     # Latin Extended-E
    "\uab6a",     # Latin Extended-E
    "\uab6b",     # Latin Extended-E
    "\uab6c",     # Latin Extended-E
    "\uab6d",     # Latin Extended-E
    "\uab6e",     # Latin Extended-E
    "\uab6f",     # Latin Extended-E
    "\u102e0",     # Coptic Epact Numbers
    "\u102e1",     # Coptic Epact Numbers
    "\u102e2",     # Coptic Epact Numbers
    "\u102e3",     # Coptic Epact Numbers
    "\u102e4",     # Coptic Epact Numbers
    "\u102e5",     # Coptic Epact Numbers
    "\u102e6",     # Coptic Epact Numbers
    "\u102e7",     # Coptic Epact Numbers
    "\u102e8",     # Coptic Epact Numbers
    "\u102e9",     # Coptic Epact Numbers
    "\u102ea",     # Coptic Epact Numbers
    "\u102eb",     # Coptic Epact Numbers
    "\u102ec",     # Coptic Epact Numbers
    "\u102ed",     # Coptic Epact Numbers
    "\u102ee",     # Coptic Epact Numbers
    "\u102ef",     # Coptic Epact Numbers
    "\u102f0",     # Coptic Epact Numbers
    "\u102f1",     # Coptic Epact Numbers
    "\u102f2",     # Coptic Epact Numbers
    "\u102f3",     # Coptic Epact Numbers
    "\u102f4",     # Coptic Epact Numbers
    "\u102f5",     # Coptic Epact Numbers
    "\u102f6",     # Coptic Epact Numbers
    "\u102f7",     # Coptic Epact Numbers
    "\u102f8",     # Coptic Epact Numbers
    "\u102f9",     # Coptic Epact Numbers
    "\u102fa",     # Coptic Epact Numbers
    "\u102fb",     # Coptic Epact Numbers
    "\u102fc",     # Coptic Epact Numbers
    "\u102fd",     # Coptic Epact Numbers
    "\u102fe",     # Coptic Epact Numbers
    "\u102ff",     # Coptic Epact Numbers
    "\u10350",     # Old Permic
    "\u10351",     # Old Permic
    "\u10352",     # Old Permic
    "\u10353",     # Old Permic
    "\u10354",     # Old Permic
    "\u10355",     # Old Permic
    "\u10356",     # Old Permic
    "\u10357",     # Old Permic
    "\u10358",     # Old Permic
    "\u10359",     # Old Permic
    "\u1035a",     # Old Permic
    "\u1035b",     # Old Permic
    "\u1035c",     # Old Permic
    "\u1035d",     # Old Permic
    "\u1035e",     # Old Permic
    "\u1035f",     # Old Permic
    "\u10360",     # Old Permic
    "\u10361",     # Old Permic
    "\u10362",     # Old Permic
    "\u10363",     # Old Permic
    "\u10364",     # Old Permic
    "\u10365",     # Old Permic
    "\u10366",     # Old Permic
    "\u10367",     # Old Permic
    "\u10368",     # Old Permic
    "\u10369",     # Old Permic
    "\u1036a",     # Old Permic
    "\u1036b",     # Old Permic
    "\u1036c",     # Old Permic
    "\u1036d",     # Old Permic
    "\u1036e",     # Old Permic
    "\u1036f",     # Old Permic
    "\u10370",     # Old Permic
    "\u10371",     # Old Permic
    "\u10372",     # Old Permic
    "\u10373",     # Old Permic
    "\u10374",     # Old Permic
    "\u10375",     # Old Permic
    "\u10376",     # Old Permic
    "\u10377",     # Old Permic
    "\u10378",     # Old Permic
    "\u10379",     # Old Permic
    "\u1037a",     # Old Permic
    "\u1037b",     # Old Permic
    "\u1037c",     # Old Permic
    "\u1037d",     # Old Permic
    "\u1037e",     # Old Permic
    "\u1037f",     # Old Permic
    "\u10500",     # Elbasan
    "\u10501",     # Elbasan
    "\u10502",     # Elbasan
    "\u10503",     # Elbasan
    "\u10504",     # Elbasan
    "\u10505",     # Elbasan
    "\u10506",     # Elbasan
    "\u10507",     # Elbasan
    "\u10508",     # Elbasan
    "\u10509",     # Elbasan
    "\u1050a",     # Elbasan
    "\u1050b",     # Elbasan
    "\u1050c",     # Elbasan
    "\u1050d",     # Elbasan
    "\u1050e",     # Elbasan
    "\u1050f",     # Elbasan
    "\u10510",     # Elbasan
    "\u10511",     # Elbasan
    "\u10512",     # Elbasan
    "\u10513",     # Elbasan
    "\u10514",     # Elbasan
    "\u10515",     # Elbasan
    "\u10516",     # Elbasan
    "\u10517",     # Elbasan
    "\u10518",     # Elbasan
    "\u10519",     # Elbasan
    "\u1051a",     # Elbasan
    "\u1051b",     # Elbasan
    "\u1051c",     # Elbasan
    "\u1051d",     # Elbasan
    "\u1051e",     # Elbasan
    "\u1051f",     # Elbasan
    "\u10520",     # Elbasan
    "\u10521",     # Elbasan
    "\u10522",     # Elbasan
    "\u10523",     # Elbasan
    "\u10524",     # Elbasan
    "\u10525",     # Elbasan
    "\u10526",     # Elbasan
    "\u10527",     # Elbasan
    "\u10528",     # Elbasan
    "\u10529",     # Elbasan
    "\u1052a",     # Elbasan
    "\u1052b",     # Elbasan
    "\u1052c",     # Elbasan
    "\u1052d",     # Elbasan
    "\u1052e",     # Elbasan
    "\u1052f",     # Elbasan
    "\u10530",     # Caucasian Albanian
    "\u10531",     # Caucasian Albanian
    "\u10532",     # Caucasian Albanian
    "\u10533",     # Caucasian Albanian
    "\u10534",     # Caucasian Albanian
    "\u10535",     # Caucasian Albanian
    "\u10536",     # Caucasian Albanian
    "\u10537",     # Caucasian Albanian
    "\u10538",     # Caucasian Albanian
    "\u10539",     # Caucasian Albanian
    "\u1053a",     # Caucasian Albanian
    "\u1053b",     # Caucasian Albanian
    "\u1053c",     # Caucasian Albanian
    "\u1053d",     # Caucasian Albanian
    "\u1053e",     # Caucasian Albanian
    "\u1053f",     # Caucasian Albanian
    "\u10540",     # Caucasian Albanian
    "\u10541",     # Caucasian Albanian
    "\u10542",     # Caucasian Albanian
    "\u10543",     # Caucasian Albanian
    "\u10544",     # Caucasian Albanian
    "\u10545",     # Caucasian Albanian
    "\u10546",     # Caucasian Albanian
    "\u10547",     # Caucasian Albanian
    "\u10548",     # Caucasian Albanian
    "\u10549",     # Caucasian Albanian
    "\u1054a",     # Caucasian Albanian
    "\u1054b",     # Caucasian Albanian
    "\u1054c",     # Caucasian Albanian
    "\u1054d",     # Caucasian Albanian
    "\u1054e",     # Caucasian Albanian
    "\u1054f",     # Caucasian Albanian
    "\u10550",     # Caucasian Albanian
    "\u10551",     # Caucasian Albanian
    "\u10552",     # Caucasian Albanian
    "\u10553",     # Caucasian Albanian
    "\u10554",     # Caucasian Albanian
    "\u10555",     # Caucasian Albanian
    "\u10556",     # Caucasian Albanian
    "\u10557",     # Caucasian Albanian
    "\u10558",     # Caucasian Albanian
    "\u10559",     # Caucasian Albanian
    "\u1055a",     # Caucasian Albanian
    "\u1055b",     # Caucasian Albanian
    "\u1055c",     # Caucasian Albanian
    "\u1055d",     # Caucasian Albanian
    "\u1055e",     # Caucasian Albanian
    "\u1055f",     # Caucasian Albanian
    "\u10560",     # Caucasian Albanian
    "\u10561",     # Caucasian Albanian
    "\u10562",     # Caucasian Albanian
    "\u10563",     # Caucasian Albanian
    "\u10564",     # Caucasian Albanian
    "\u10565",     # Caucasian Albanian
    "\u10566",     # Caucasian Albanian
    "\u10567",     # Caucasian Albanian
    "\u10568",     # Caucasian Albanian
    "\u10569",     # Caucasian Albanian
    "\u1056a",     # Caucasian Albanian
    "\u1056b",     # Caucasian Albanian
    "\u1056c",     # Caucasian Albanian
    "\u1056d",     # Caucasian Albanian
    "\u1056e",     # Caucasian Albanian
    "\u1056f",     # Caucasian Albanian
    "\u10600",     # Linear A
    "\u10601",     # Linear A
    "\u10602",     # Linear A
    "\u10603",     # Linear A
    "\u10604",     # Linear A
    "\u10605",     # Linear A
    "\u10606",     # Linear A
    "\u10607",     # Linear A
    "\u10608",     # Linear A
    "\u10609",     # Linear A
    "\u1060a",     # Linear A
    "\u1060b",     # Linear A
    "\u1060c",     # Linear A
    "\u1060d",     # Linear A
    "\u1060e",     # Linear A
    "\u1060f",     # Linear A
    "\u10610",     # Linear A
    "\u10611",     # Linear A
    "\u10612",     # Linear A
    "\u10613",     # Linear A
    "\u10614",     # Linear A
    "\u10615",     # Linear A
    "\u10616",     # Linear A
    "\u10617",     # Linear A
    "\u10618",     # Linear A
    "\u10619",     # Linear A
    "\u1061a",     # Linear A
    "\u1061b",     # Linear A
    "\u1061c",     # Linear A
    "\u1061d",     # Linear A
    "\u1061e",     # Linear A
    "\u1061f",     # Linear A
    "\u10620",     # Linear A
    "\u10621",     # Linear A
    "\u10622",     # Linear A
    "\u10623",     # Linear A
    "\u10624",     # Linear A
    "\u10625",     # Linear A
    "\u10626",     # Linear A
    "\u10627",     # Linear A
    "\u10628",     # Linear A
    "\u10629",     # Linear A
    "\u1062a",     # Linear A
    "\u1062b",     # Linear A
    "\u1062c",     # Linear A
    "\u1062d",     # Linear A
    "\u1062e",     # Linear A
    "\u1062f",     # Linear A
    "\u10630",     # Linear A
    "\u10631",     # Linear A
    "\u10632",     # Linear A
    "\u10633",     # Linear A
    "\u10634",     # Linear A
    "\u10635",     # Linear A
    "\u10636",     # Linear A
    "\u10637",     # Linear A
    "\u10638",     # Linear A
    "\u10639",     # Linear A
    "\u1063a",     # Linear A
    "\u1063b",     # Linear A
    "\u1063c",     # Linear A
    "\u1063d",     # Linear A
    "\u1063e",     # Linear A
    "\u1063f",     # Linear A
    "\u10640",     # Linear A
    "\u10641",     # Linear A
    "\u10642",     # Linear A
    "\u10643",     # Linear A
    "\u10644",     # Linear A
    "\u10645",     # Linear A
    "\u10646",     # Linear A
    "\u10647",     # Linear A
    "\u10648",     # Linear A
    "\u10649",     # Linear A
    "\u1064a",     # Linear A
    "\u1064b",     # Linear A
    "\u1064c",     # Linear A
    "\u1064d",     # Linear A
    "\u1064e",     # Linear A
    "\u1064f",     # Linear A
    "\u10650",     # Linear A
    "\u10651",     # Linear A
    "\u10652",     # Linear A
    "\u10653",     # Linear A
    "\u10654",     # Linear A
    "\u10655",     # Linear A
    "\u10656",     # Linear A
    "\u10657",     # Linear A
    "\u10658",     # Linear A
    "\u10659",     # Linear A
    "\u1065a",     # Linear A
    "\u1065b",     # Linear A
    "\u1065c",     # Linear A
    "\u1065d",     # Linear A
    "\u1065e",     # Linear A
    "\u1065f",     # Linear A
    "\u10660",     # Linear A
    "\u10661",     # Linear A
    "\u10662",     # Linear A
    "\u10663",     # Linear A
    "\u10664",     # Linear A
    "\u10665",     # Linear A
    "\u10666",     # Linear A
    "\u10667",     # Linear A
    "\u10668",     # Linear A
    "\u10669",     # Linear A
    "\u1066a",     # Linear A
    "\u1066b",     # Linear A
    "\u1066c",     # Linear A
    "\u1066d",     # Linear A
    "\u1066e",     # Linear A
    "\u1066f",     # Linear A
    "\u10670",     # Linear A
    "\u10671",     # Linear A
    "\u10672",     # Linear A
    "\u10673",     # Linear A
    "\u10674",     # Linear A
    "\u10675",     # Linear A
    "\u10676",     # Linear A
    "\u10677",     # Linear A
    "\u10678",     # Linear A
    "\u10679",     # Linear A
    "\u1067a",     # Linear A
    "\u1067b",     # Linear A
    "\u1067c",     # Linear A
    "\u1067d",     # Linear A
    "\u1067e",     # Linear A
    "\u1067f",     # Linear A
    "\u10680",     # Linear A
    "\u10681",     # Linear A
    "\u10682",     # Linear A
    "\u10683",     # Linear A
    "\u10684",     # Linear A
    "\u10685",     # Linear A
    "\u10686",     # Linear A
    "\u10687",     # Linear A
    "\u10688",     # Linear A
    "\u10689",     # Linear A
    "\u1068a",     # Linear A
    "\u1068b",     # Linear A
    "\u1068c",     # Linear A
    "\u1068d",     # Linear A
    "\u1068e",     # Linear A
    "\u1068f",     # Linear A
    "\u10690",     # Linear A
    "\u10691",     # Linear A
    "\u10692",     # Linear A
    "\u10693",     # Linear A
    "\u10694",     # Linear A
    "\u10695",     # Linear A
    "\u10696",     # Linear A
    "\u10697",     # Linear A
    "\u10698",     # Linear A
    "\u10699",     # Linear A
    "\u1069a",     # Linear A
    "\u1069b",     # Linear A
    "\u1069c",     # Linear A
    "\u1069d",     # Linear A
    "\u1069e",     # Linear A
    "\u1069f",     # Linear A
    "\u106a0",     # Linear A
    "\u106a1",     # Linear A
    "\u106a2",     # Linear A
    "\u106a3",     # Linear A
    "\u106a4",     # Linear A
    "\u106a5",     # Linear A
    "\u106a6",     # Linear A
    "\u106a7",     # Linear A
    "\u106a8",     # Linear A
    "\u106a9",     # Linear A
    "\u106aa",     # Linear A
    "\u106ab",     # Linear A
    "\u106ac",     # Linear A
    "\u106ad",     # Linear A
    "\u106ae",     # Linear A
    "\u106af",     # Linear A
    "\u106b0",     # Linear A
    "\u106b1",     # Linear A
    "\u106b2",     # Linear A
    "\u106b3",     # Linear A
    "\u106b4",     # Linear A
    "\u106b5",     # Linear A
    "\u106b6",     # Linear A
    "\u106b7",     # Linear A
    "\u106b8",     # Linear A
    "\u106b9",     # Linear A
    "\u106ba",     # Linear A
    "\u106bb",     # Linear A
    "\u106bc",     # Linear A
    "\u106bd",     # Linear A
    "\u106be",     # Linear A
    "\u106bf",     # Linear A
    "\u106c0",     # Linear A
    "\u106c1",     # Linear A
    "\u106c2",     # Linear A
    "\u106c3",     # Linear A
    "\u106c4",     # Linear A
    "\u106c5",     # Linear A
    "\u106c6",     # Linear A
    "\u106c7",     # Linear A
    "\u106c8",     # Linear A
    "\u106c9",     # Linear A
    "\u106ca",     # Linear A
    "\u106cb",     # Linear A
    "\u106cc",     # Linear A
    "\u106cd",     # Linear A
    "\u106ce",     # Linear A
    "\u106cf",     # Linear A
    "\u106d0",     # Linear A
    "\u106d1",     # Linear A
    "\u106d2",     # Linear A
    "\u106d3",     # Linear A
    "\u106d4",     # Linear A
    "\u106d5",     # Linear A
    "\u106d6",     # Linear A
    "\u106d7",     # Linear A
    "\u106d8",     # Linear A
    "\u106d9",     # Linear A
    "\u106da",     # Linear A
    "\u106db",     # Linear A
    "\u106dc",     # Linear A
    "\u106dd",     # Linear A
    "\u106de",     # Linear A
    "\u106df",     # Linear A
    "\u106e0",     # Linear A
    "\u106e1",     # Linear A
    "\u106e2",     # Linear A
    "\u106e3",     # Linear A
    "\u106e4",     # Linear A
    "\u106e5",     # Linear A
    "\u106e6",     # Linear A
    "\u106e7",     # Linear A
    "\u106e8",     # Linear A
    "\u106e9",     # Linear A
    "\u106ea",     # Linear A
    "\u106eb",     # Linear A
    "\u106ec",     # Linear A
    "\u106ed",     # Linear A
    "\u106ee",     # Linear A
    "\u106ef",     # Linear A
    "\u106f0",     # Linear A
    "\u106f1",     # Linear A
    "\u106f2",     # Linear A
    "\u106f3",     # Linear A
    "\u106f4",     # Linear A
    "\u106f5",     # Linear A
    "\u106f6",     # Linear A
    "\u106f7",     # Linear A
    "\u106f8",     # Linear A
    "\u106f9",     # Linear A
    "\u106fa",     # Linear A
    "\u106fb",     # Linear A
    "\u106fc",     # Linear A
    "\u106fd",     # Linear A
    "\u106fe",     # Linear A
    "\u106ff",     # Linear A
    "\u10700",     # Linear A
    "\u10701",     # Linear A
    "\u10702",     # Linear A
    "\u10703",     # Linear A
    "\u10704",     # Linear A
    "\u10705",     # Linear A
    "\u10706",     # Linear A
    "\u10707",     # Linear A
    "\u10708",     # Linear A
    "\u10709",     # Linear A
    "\u1070a",     # Linear A
    "\u1070b",     # Linear A
    "\u1070c",     # Linear A
    "\u1070d",     # Linear A
    "\u1070e",     # Linear A
    "\u1070f",     # Linear A
    "\u10710",     # Linear A
    "\u10711",     # Linear A
    "\u10712",     # Linear A
    "\u10713",     # Linear A
    "\u10714",     # Linear A
    "\u10715",     # Linear A
    "\u10716",     # Linear A
    "\u10717",     # Linear A
    "\u10718",     # Linear A
    "\u10719",     # Linear A
    "\u1071a",     # Linear A
    "\u1071b",     # Linear A
    "\u1071c",     # Linear A
    "\u1071d",     # Linear A
    "\u1071e",     # Linear A
    "\u1071f",     # Linear A
    "\u10720",     # Linear A
    "\u10721",     # Linear A
    "\u10722",     # Linear A
    "\u10723",     # Linear A
    "\u10724",     # Linear A
    "\u10725",     # Linear A
    "\u10726",     # Linear A
    "\u10727",     # Linear A
    "\u10728",     # Linear A
    "\u10729",     # Linear A
    "\u1072a",     # Linear A
    "\u1072b",     # Linear A
    "\u1072c",     # Linear A
    "\u1072d",     # Linear A
    "\u1072e",     # Linear A
    "\u1072f",     # Linear A
    "\u10730",     # Linear A
    "\u10731",     # Linear A
    "\u10732",     # Linear A
    "\u10733",     # Linear A
    "\u10734",     # Linear A
    "\u10735",     # Linear A
    "\u10736",     # Linear A
    "\u10737",     # Linear A
    "\u10738",     # Linear A
    "\u10739",     # Linear A
    "\u1073a",     # Linear A
    "\u1073b",     # Linear A
    "\u1073c",     # Linear A
    "\u1073d",     # Linear A
    "\u1073e",     # Linear A
    "\u1073f",     # Linear A
    "\u10740",     # Linear A
    "\u10741",     # Linear A
    "\u10742",     # Linear A
    "\u10743",     # Linear A
    "\u10744",     # Linear A
    "\u10745",     # Linear A
    "\u10746",     # Linear A
    "\u10747",     # Linear A
    "\u10748",     # Linear A
    "\u10749",     # Linear A
    "\u1074a",     # Linear A
    "\u1074b",     # Linear A
    "\u1074c",     # Linear A
    "\u1074d",     # Linear A
    "\u1074e",     # Linear A
    "\u1074f",     # Linear A
    "\u10750",     # Linear A
    "\u10751",     # Linear A
    "\u10752",     # Linear A
    "\u10753",     # Linear A
    "\u10754",     # Linear A
    "\u10755",     # Linear A
    "\u10756",     # Linear A
    "\u10757",     # Linear A
    "\u10758",     # Linear A
    "\u10759",     # Linear A
    "\u1075a",     # Linear A
    "\u1075b",     # Linear A
    "\u1075c",     # Linear A
    "\u1075d",     # Linear A
    "\u1075e",     # Linear A
    "\u1075f",     # Linear A
    "\u10760",     # Linear A
    "\u10761",     # Linear A
    "\u10762",     # Linear A
    "\u10763",     # Linear A
    "\u10764",     # Linear A
    "\u10765",     # Linear A
    "\u10766",     # Linear A
    "\u10767",     # Linear A
    "\u10768",     # Linear A
    "\u10769",     # Linear A
    "\u1076a",     # Linear A
    "\u1076b",     # Linear A
    "\u1076c",     # Linear A
    "\u1076d",     # Linear A
    "\u1076e",     # Linear A
    "\u1076f",     # Linear A
    "\u10770",     # Linear A
    "\u10771",     # Linear A
    "\u10772",     # Linear A
    "\u10773",     # Linear A
    "\u10774",     # Linear A
    "\u10775",     # Linear A
    "\u10776",     # Linear A
    "\u10777",     # Linear A
    "\u10778",     # Linear A
    "\u10779",     # Linear A
    "\u1077a",     # Linear A
    "\u1077b",     # Linear A
    "\u1077c",     # Linear A
    "\u1077d",     # Linear A
    "\u1077e",     # Linear A
    "\u1077f",     # Linear A
    "\u10860",     # Palmyrene
    "\u10861",     # Palmyrene
    "\u10862",     # Palmyrene
    "\u10863",     # Palmyrene
    "\u10864",     # Palmyrene
    "\u10865",     # Palmyrene
    "\u10866",     # Palmyrene
    "\u10867",     # Palmyrene
    "\u10868",     # Palmyrene
    "\u10869",     # Palmyrene
    "\u1086a",     # Palmyrene
    "\u1086b",     # Palmyrene
    "\u1086c",     # Palmyrene
    "\u1086d",     # Palmyrene
    "\u1086e",     # Palmyrene
    "\u1086f",     # Palmyrene
    "\u10870",     # Palmyrene
    "\u10871",     # Palmyrene
    "\u10872",     # Palmyrene
    "\u10873",     # Palmyrene
    "\u10874",     # Palmyrene
    "\u10875",     # Palmyrene
    "\u10876",     # Palmyrene
    "\u10877",     # Palmyrene
    "\u10878",     # Palmyrene
    "\u10879",     # Palmyrene
    "\u1087a",     # Palmyrene
    "\u1087b",     # Palmyrene
    "\u1087c",     # Palmyrene
    "\u1087d",     # Palmyrene
    "\u1087e",     # Palmyrene
    "\u1087f",     # Palmyrene
    "\u10880",     # Nabataean
    "\u10881",     # Nabataean
    "\u10882",     # Nabataean
    "\u10883",     # Nabataean
    "\u10884",     # Nabataean
    "\u10885",     # Nabataean
    "\u10886",     # Nabataean
    "\u10887",     # Nabataean
    "\u10888",     # Nabataean
    "\u10889",     # Nabataean
    "\u1088a",     # Nabataean
    "\u1088b",     # Nabataean
    "\u1088c",     # Nabataean
    "\u1088d",     # Nabataean
    "\u1088e",     # Nabataean
    "\u1088f",     # Nabataean
    "\u10890",     # Nabataean
    "\u10891",     # Nabataean
    "\u10892",     # Nabataean
    "\u10893",     # Nabataean
    "\u10894",     # Nabataean
    "\u10895",     # Nabataean
    "\u10896",     # Nabataean
    "\u10897",     # Nabataean
    "\u10898",     # Nabataean
    "\u10899",     # Nabataean
    "\u1089a",     # Nabataean
    "\u1089b",     # Nabataean
    "\u1089c",     # Nabataean
    "\u1089d",     # Nabataean
    "\u1089e",     # Nabataean
    "\u1089f",     # Nabataean
    "\u108a0",     # Nabataean
    "\u108a1",     # Nabataean
    "\u108a2",     # Nabataean
    "\u108a3",     # Nabataean
    "\u108a4",     # Nabataean
    "\u108a5",     # Nabataean
    "\u108a6",     # Nabataean
    "\u108a7",     # Nabataean
    "\u108a8",     # Nabataean
    "\u108a9",     # Nabataean
    "\u108aa",     # Nabataean
    "\u108ab",     # Nabataean
    "\u108ac",     # Nabataean
    "\u108ad",     # Nabataean
    "\u108ae",     # Nabataean
    "\u108af",     # Nabataean
    "\u10a80",     # Old North Arabian
    "\u10a81",     # Old North Arabian
    "\u10a82",     # Old North Arabian
    "\u10a83",     # Old North Arabian
    "\u10a84",     # Old North Arabian
    "\u10a85",     # Old North Arabian
    "\u10a86",     # Old North Arabian
    "\u10a87",     # Old North Arabian
    "\u10a88",     # Old North Arabian
    "\u10a89",     # Old North Arabian
    "\u10a8a",     # Old North Arabian
    "\u10a8b",     # Old North Arabian
    "\u10a8c",     # Old North Arabian
    "\u10a8d",     # Old North Arabian
    "\u10a8e",     # Old North Arabian
    "\u10a8f",     # Old North Arabian
    "\u10a90",     # Old North Arabian
    "\u10a91",     # Old North Arabian
    "\u10a92",     # Old North Arabian
    "\u10a93",     # Old North Arabian
    "\u10a94",     # Old North Arabian
    "\u10a95",     # Old North Arabian
    "\u10a96",     # Old North Arabian
    "\u10a97",     # Old North Arabian
    "\u10a98",     # Old North Arabian
    "\u10a99",     # Old North Arabian
    "\u10a9a",     # Old North Arabian
    "\u10a9b",     # Old North Arabian
    "\u10a9c",     # Old North Arabian
    "\u10a9d",     # Old North Arabian
    "\u10a9e",     # Old North Arabian
    "\u10a9f",     # Old North Arabian
    "\u10ac0",     # Manichaean
    "\u10ac1",     # Manichaean
    "\u10ac2",     # Manichaean
    "\u10ac3",     # Manichaean
    "\u10ac4",     # Manichaean
    "\u10ac5",     # Manichaean
    "\u10ac6",     # Manichaean
    "\u10ac7",     # Manichaean
    "\u10ac8",     # Manichaean
    "\u10ac9",     # Manichaean
    "\u10aca",     # Manichaean
    "\u10acb",     # Manichaean
    "\u10acc",     # Manichaean
    "\u10acd",     # Manichaean
    "\u10ace",     # Manichaean
    "\u10acf",     # Manichaean
    "\u10ad0",     # Manichaean
    "\u10ad1",     # Manichaean
    "\u10ad2",     # Manichaean
    "\u10ad3",     # Manichaean
    "\u10ad4",     # Manichaean
    "\u10ad5",     # Manichaean
    "\u10ad6",     # Manichaean
    "\u10ad7",     # Manichaean
    "\u10ad8",     # Manichaean
    "\u10ad9",     # Manichaean
    "\u10ada",     # Manichaean
    "\u10adb",     # Manichaean
    "\u10adc",     # Manichaean
    "\u10add",     # Manichaean
    "\u10ade",     # Manichaean
    "\u10adf",     # Manichaean
    "\u10ae0",     # Manichaean
    "\u10ae1",     # Manichaean
    "\u10ae2",     # Manichaean
    "\u10ae3",     # Manichaean
    "\u10ae4",     # Manichaean
    "\u10ae5",     # Manichaean
    "\u10ae6",     # Manichaean
    "\u10ae7",     # Manichaean
    "\u10ae8",     # Manichaean
    "\u10ae9",     # Manichaean
    "\u10aea",     # Manichaean
    "\u10aeb",     # Manichaean
    "\u10aec",     # Manichaean
    "\u10aed",     # Manichaean
    "\u10aee",     # Manichaean
    "\u10aef",     # Manichaean
    "\u10af0",     # Manichaean
    "\u10af1",     # Manichaean
    "\u10af2",     # Manichaean
    "\u10af3",     # Manichaean
    "\u10af4",     # Manichaean
    "\u10af5",     # Manichaean
    "\u10af6",     # Manichaean
    "\u10af7",     # Manichaean
    "\u10af8",     # Manichaean
    "\u10af9",     # Manichaean
    "\u10afa",     # Manichaean
    "\u10afb",     # Manichaean
    "\u10afc",     # Manichaean
    "\u10afd",     # Manichaean
    "\u10afe",     # Manichaean
    "\u10aff",     # Manichaean
    "\u10b80",     # Psalter Pahlavi
    "\u10b81",     # Psalter Pahlavi
    "\u10b82",     # Psalter Pahlavi
    "\u10b83",     # Psalter Pahlavi
    "\u10b84",     # Psalter Pahlavi
    "\u10b85",     # Psalter Pahlavi
    "\u10b86",     # Psalter Pahlavi
    "\u10b87",     # Psalter Pahlavi
    "\u10b88",     # Psalter Pahlavi
    "\u10b89",     # Psalter Pahlavi
    "\u10b8a",     # Psalter Pahlavi
    "\u10b8b",     # Psalter Pahlavi
    "\u10b8c",     # Psalter Pahlavi
    "\u10b8d",     # Psalter Pahlavi
    "\u10b8e",     # Psalter Pahlavi
    "\u10b8f",     # Psalter Pahlavi
    "\u10b90",     # Psalter Pahlavi
    "\u10b91",     # Psalter Pahlavi
    "\u10b92",     # Psalter Pahlavi
    "\u10b93",     # Psalter Pahlavi
    "\u10b94",     # Psalter Pahlavi
    "\u10b95",     # Psalter Pahlavi
    "\u10b96",     # Psalter Pahlavi
    "\u10b97",     # Psalter Pahlavi
    "\u10b98",     # Psalter Pahlavi
    "\u10b99",     # Psalter Pahlavi
    "\u10b9a",     # Psalter Pahlavi
    "\u10b9b",     # Psalter Pahlavi
    "\u10b9c",     # Psalter Pahlavi
    "\u10b9d",     # Psalter Pahlavi
    "\u10b9e",     # Psalter Pahlavi
    "\u10b9f",     # Psalter Pahlavi
    "\u10ba0",     # Psalter Pahlavi
    "\u10ba1",     # Psalter Pahlavi
    "\u10ba2",     # Psalter Pahlavi
    "\u10ba3",     # Psalter Pahlavi
    "\u10ba4",     # Psalter Pahlavi
    "\u10ba5",     # Psalter Pahlavi
    "\u10ba6",     # Psalter Pahlavi
    "\u10ba7",     # Psalter Pahlavi
    "\u10ba8",     # Psalter Pahlavi
    "\u10ba9",     # Psalter Pahlavi
    "\u10baa",     # Psalter Pahlavi
    "\u10bab",     # Psalter Pahlavi
    "\u10bac",     # Psalter Pahlavi
    "\u10bad",     # Psalter Pahlavi
    "\u10bae",     # Psalter Pahlavi
    "\u10baf",     # Psalter Pahlavi
    "\u11150",     # Mahajani
    "\u11151",     # Mahajani
    "\u11152",     # Mahajani
    "\u11153",     # Mahajani
    "\u11154",     # Mahajani
    "\u11155",     # Mahajani
    "\u11156",     # Mahajani
    "\u11157",     # Mahajani
    "\u11158",     # Mahajani
    "\u11159",     # Mahajani
    "\u1115a",     # Mahajani
    "\u1115b",     # Mahajani
    "\u1115c",     # Mahajani
    "\u1115d",     # Mahajani
    "\u1115e",     # Mahajani
    "\u1115f",     # Mahajani
    "\u11160",     # Mahajani
    "\u11161",     # Mahajani
    "\u11162",     # Mahajani
    "\u11163",     # Mahajani
    "\u11164",     # Mahajani
    "\u11165",     # Mahajani
    "\u11166",     # Mahajani
    "\u11167",     # Mahajani
    "\u11168",     # Mahajani
    "\u11169",     # Mahajani
    "\u1116a",     # Mahajani
    "\u1116b",     # Mahajani
    "\u1116c",     # Mahajani
    "\u1116d",     # Mahajani
    "\u1116e",     # Mahajani
    "\u1116f",     # Mahajani
    "\u11170",     # Mahajani
    "\u11171",     # Mahajani
    "\u11172",     # Mahajani
    "\u11173",     # Mahajani
    "\u11174",     # Mahajani
    "\u11175",     # Mahajani
    "\u11176",     # Mahajani
    "\u11177",     # Mahajani
    "\u11178",     # Mahajani
    "\u11179",     # Mahajani
    "\u1117a",     # Mahajani
    "\u1117b",     # Mahajani
    "\u1117c",     # Mahajani
    "\u1117d",     # Mahajani
    "\u1117e",     # Mahajani
    "\u1117f",     # Mahajani
    "\u111e0",     # Sinhala Archaic Numbers
    "\u111e1",     # Sinhala Archaic Numbers
    "\u111e2",     # Sinhala Archaic Numbers
    "\u111e3",     # Sinhala Archaic Numbers
    "\u111e4",     # Sinhala Archaic Numbers
    "\u111e5",     # Sinhala Archaic Numbers
    "\u111e6",     # Sinhala Archaic Numbers
    "\u111e7",     # Sinhala Archaic Numbers
    "\u111e8",     # Sinhala Archaic Numbers
    "\u111e9",     # Sinhala Archaic Numbers
    "\u111ea",     # Sinhala Archaic Numbers
    "\u111eb",     # Sinhala Archaic Numbers
    "\u111ec",     # Sinhala Archaic Numbers
    "\u111ed",     # Sinhala Archaic Numbers
    "\u111ee",     # Sinhala Archaic Numbers
    "\u111ef",     # Sinhala Archaic Numbers
    "\u111f0",     # Sinhala Archaic Numbers
    "\u111f1",     # Sinhala Archaic Numbers
    "\u111f2",     # Sinhala Archaic Numbers
    "\u111f3",     # Sinhala Archaic Numbers
    "\u111f4",     # Sinhala Archaic Numbers
    "\u111f5",     # Sinhala Archaic Numbers
    "\u111f6",     # Sinhala Archaic Numbers
    "\u111f7",     # Sinhala Archaic Numbers
    "\u111f8",     # Sinhala Archaic Numbers
    "\u111f9",     # Sinhala Archaic Numbers
    "\u111fa",     # Sinhala Archaic Numbers
    "\u111fb",     # Sinhala Archaic Numbers
    "\u111fc",     # Sinhala Archaic Numbers
    "\u111fd",     # Sinhala Archaic Numbers
    "\u111fe",     # Sinhala Archaic Numbers
    "\u111ff",     # Sinhala Archaic Numbers
    "\u11200",     # Khojki
    "\u11201",     # Khojki
    "\u11202",     # Khojki
    "\u11203",     # Khojki
    "\u11204",     # Khojki
    "\u11205",     # Khojki
    "\u11206",     # Khojki
    "\u11207",     # Khojki
    "\u11208",     # Khojki
    "\u11209",     # Khojki
    "\u1120a",     # Khojki
    "\u1120b",     # Khojki
    "\u1120c",     # Khojki
    "\u1120d",     # Khojki
    "\u1120e",     # Khojki
    "\u1120f",     # Khojki
    "\u11210",     # Khojki
    "\u11211",     # Khojki
    "\u11212",     # Khojki
    "\u11213",     # Khojki
    "\u11214",     # Khojki
    "\u11215",     # Khojki
    "\u11216",     # Khojki
    "\u11217",     # Khojki
    "\u11218",     # Khojki
    "\u11219",     # Khojki
    "\u1121a",     # Khojki
    "\u1121b",     # Khojki
    "\u1121c",     # Khojki
    "\u1121d",     # Khojki
    "\u1121e",     # Khojki
    "\u1121f",     # Khojki
    "\u11220",     # Khojki
    "\u11221",     # Khojki
    "\u11222",     # Khojki
    "\u11223",     # Khojki
    "\u11224",     # Khojki
    "\u11225",     # Khojki
    "\u11226",     # Khojki
    "\u11227",     # Khojki
    "\u11228",     # Khojki
    "\u11229",     # Khojki
    "\u1122a",     # Khojki
    "\u1122b",     # Khojki
    "\u1122c",     # Khojki
    "\u1122d",     # Khojki
    "\u1122e",     # Khojki
    "\u1122f",     # Khojki
    "\u11230",     # Khojki
    "\u11231",     # Khojki
    "\u11232",     # Khojki
    "\u11233",     # Khojki
    "\u11234",     # Khojki
    "\u11235",     # Khojki
    "\u11236",     # Khojki
    "\u11237",     # Khojki
    "\u11238",     # Khojki
    "\u11239",     # Khojki
    "\u1123a",     # Khojki
    "\u1123b",     # Khojki
    "\u1123c",     # Khojki
    "\u1123d",     # Khojki
    "\u1123e",     # Khojki
    "\u1123f",     # Khojki
    "\u11240",     # Khojki
    "\u11241",     # Khojki
    "\u11242",     # Khojki
    "\u11243",     # Khojki
    "\u11244",     # Khojki
    "\u11245",     # Khojki
    "\u11246",     # Khojki
    "\u11247",     # Khojki
    "\u11248",     # Khojki
    "\u11249",     # Khojki
    "\u1124a",     # Khojki
    "\u1124b",     # Khojki
    "\u1124c",     # Khojki
    "\u1124d",     # Khojki
    "\u1124e",     # Khojki
    "\u1124f",     # Khojki
    "\u112b0",     # Khudawadi
    "\u112b1",     # Khudawadi
    "\u112b2",     # Khudawadi
    "\u112b3",     # Khudawadi
    "\u112b4",     # Khudawadi
    "\u112b5",     # Khudawadi
    "\u112b6",     # Khudawadi
    "\u112b7",     # Khudawadi
    "\u112b8",     # Khudawadi
    "\u112b9",     # Khudawadi
    "\u112ba",     # Khudawadi
    "\u112bb",     # Khudawadi
    "\u112bc",     # Khudawadi
    "\u112bd",     # Khudawadi
    "\u112be",     # Khudawadi
    "\u112bf",     # Khudawadi
    "\u112c0",     # Khudawadi
    "\u112c1",     # Khudawadi
    "\u112c2",     # Khudawadi
    "\u112c3",     # Khudawadi
    "\u112c4",     # Khudawadi
    "\u112c5",     # Khudawadi
    "\u112c6",     # Khudawadi
    "\u112c7",     # Khudawadi
    "\u112c8",     # Khudawadi
    "\u112c9",     # Khudawadi
    "\u112ca",     # Khudawadi
    "\u112cb",     # Khudawadi
    "\u112cc",     # Khudawadi
    "\u112cd",     # Khudawadi
    "\u112ce",     # Khudawadi
    "\u112cf",     # Khudawadi
    "\u112d0",     # Khudawadi
    "\u112d1",     # Khudawadi
    "\u112d2",     # Khudawadi
    "\u112d3",     # Khudawadi
    "\u112d4",     # Khudawadi
    "\u112d5",     # Khudawadi
    "\u112d6",     # Khudawadi
    "\u112d7",     # Khudawadi
    "\u112d8",     # Khudawadi
    "\u112d9",     # Khudawadi
    "\u112da",     # Khudawadi
    "\u112db",     # Khudawadi
    "\u112dc",     # Khudawadi
    "\u112dd",     # Khudawadi
    "\u112de",     # Khudawadi
    "\u112df",     # Khudawadi
    "\u112e0",     # Khudawadi
    "\u112e1",     # Khudawadi
    "\u112e2",     # Khudawadi
    "\u112e3",     # Khudawadi
    "\u112e4",     # Khudawadi
    "\u112e5",     # Khudawadi
    "\u112e6",     # Khudawadi
    "\u112e7",     # Khudawadi
    "\u112e8",     # Khudawadi
    "\u112e9",     # Khudawadi
    "\u112ea",     # Khudawadi
    "\u112eb",     # Khudawadi
    "\u112ec",     # Khudawadi
    "\u112ed",     # Khudawadi
    "\u112ee",     # Khudawadi
    "\u112ef",     # Khudawadi
    "\u112f0",     # Khudawadi
    "\u112f1",     # Khudawadi
    "\u112f2",     # Khudawadi
    "\u112f3",     # Khudawadi
    "\u112f4",     # Khudawadi
    "\u112f5",     # Khudawadi
    "\u112f6",     # Khudawadi
    "\u112f7",     # Khudawadi
    "\u112f8",     # Khudawadi
    "\u112f9",     # Khudawadi
    "\u112fa",     # Khudawadi
    "\u112fb",     # Khudawadi
    "\u112fc",     # Khudawadi
    "\u112fd",     # Khudawadi
    "\u112fe",     # Khudawadi
    "\u112ff",     # Khudawadi
    "\u11300",     # Grantha
    "\u11301",     # Grantha
    "\u11302",     # Grantha
    "\u11303",     # Grantha
    "\u11304",     # Grantha
    "\u11305",     # Grantha
    "\u11306",     # Grantha
    "\u11307",     # Grantha
    "\u11308",     # Grantha
    "\u11309",     # Grantha
    "\u1130a",     # Grantha
    "\u1130b",     # Grantha
    "\u1130c",     # Grantha
    "\u1130d",     # Grantha
    "\u1130e",     # Grantha
    "\u1130f",     # Grantha
    "\u11310",     # Grantha
    "\u11311",     # Grantha
    "\u11312",     # Grantha
    "\u11313",     # Grantha
    "\u11314",     # Grantha
    "\u11315",     # Grantha
    "\u11316",     # Grantha
    "\u11317",     # Grantha
    "\u11318",     # Grantha
    "\u11319",     # Grantha
    "\u1131a",     # Grantha
    "\u1131b",     # Grantha
    "\u1131c",     # Grantha
    "\u1131d",     # Grantha
    "\u1131e",     # Grantha
    "\u1131f",     # Grantha
    "\u11320",     # Grantha
    "\u11321",     # Grantha
    "\u11322",     # Grantha
    "\u11323",     # Grantha
    "\u11324",     # Grantha
    "\u11325",     # Grantha
    "\u11326",     # Grantha
    "\u11327",     # Grantha
    "\u11328",     # Grantha
    "\u11329",     # Grantha
    "\u1132a",     # Grantha
    "\u1132b",     # Grantha
    "\u1132c",     # Grantha
    "\u1132d",     # Grantha
    "\u1132e",     # Grantha
    "\u1132f",     # Grantha
    "\u11330",     # Grantha
    "\u11331",     # Grantha
    "\u11332",     # Grantha
    "\u11333",     # Grantha
    "\u11334",     # Grantha
    "\u11335",     # Grantha
    "\u11336",     # Grantha
    "\u11337",     # Grantha
    "\u11338",     # Grantha
    "\u11339",     # Grantha
    "\u1133a",     # Grantha
    "\u1133b",     # Grantha
    "\u1133c",     # Grantha
    "\u1133d",     # Grantha
    "\u1133e",     # Grantha
    "\u1133f",     # Grantha
    "\u11340",     # Grantha
    "\u11341",     # Grantha
    "\u11342",     # Grantha
    "\u11343",     # Grantha
    "\u11344",     # Grantha
    "\u11345",     # Grantha
    "\u11346",     # Grantha
    "\u11347",     # Grantha
    "\u11348",     # Grantha
    "\u11349",     # Grantha
    "\u1134a",     # Grantha
    "\u1134b",     # Grantha
    "\u1134c",     # Grantha
    "\u1134d",     # Grantha
    "\u1134e",     # Grantha
    "\u1134f",     # Grantha
    "\u11350",     # Grantha
    "\u11351",     # Grantha
    "\u11352",     # Grantha
    "\u11353",     # Grantha
    "\u11354",     # Grantha
    "\u11355",     # Grantha
    "\u11356",     # Grantha
    "\u11357",     # Grantha
    "\u11358",     # Grantha
    "\u11359",     # Grantha
    "\u1135a",     # Grantha
    "\u1135b",     # Grantha
    "\u1135c",     # Grantha
    "\u1135d",     # Grantha
    "\u1135e",     # Grantha
    "\u1135f",     # Grantha
    "\u11360",     # Grantha
    "\u11361",     # Grantha
    "\u11362",     # Grantha
    "\u11363",     # Grantha
    "\u11364",     # Grantha
    "\u11365",     # Grantha
    "\u11366",     # Grantha
    "\u11367",     # Grantha
    "\u11368",     # Grantha
    "\u11369",     # Grantha
    "\u1136a",     # Grantha
    "\u1136b",     # Grantha
    "\u1136c",     # Grantha
    "\u1136d",     # Grantha
    "\u1136e",     # Grantha
    "\u1136f",     # Grantha
    "\u11370",     # Grantha
    "\u11371",     # Grantha
    "\u11372",     # Grantha
    "\u11373",     # Grantha
    "\u11374",     # Grantha
    "\u11375",     # Grantha
    "\u11376",     # Grantha
    "\u11377",     # Grantha
    "\u11378",     # Grantha
    "\u11379",     # Grantha
    "\u1137a",     # Grantha
    "\u1137b",     # Grantha
    "\u1137c",     # Grantha
    "\u1137d",     # Grantha
    "\u1137e",     # Grantha
    "\u1137f",     # Grantha
    "\u11480",     # Tirhuta
    "\u11481",     # Tirhuta
    "\u11482",     # Tirhuta
    "\u11483",     # Tirhuta
    "\u11484",     # Tirhuta
    "\u11485",     # Tirhuta
    "\u11486",     # Tirhuta
    "\u11487",     # Tirhuta
    "\u11488",     # Tirhuta
    "\u11489",     # Tirhuta
    "\u1148a",     # Tirhuta
    "\u1148b",     # Tirhuta
    "\u1148c",     # Tirhuta
    "\u1148d",     # Tirhuta
    "\u1148e",     # Tirhuta
    "\u1148f",     # Tirhuta
    "\u11490",     # Tirhuta
    "\u11491",     # Tirhuta
    "\u11492",     # Tirhuta
    "\u11493",     # Tirhuta
    "\u11494",     # Tirhuta
    "\u11495",     # Tirhuta
    "\u11496",     # Tirhuta
    "\u11497",     # Tirhuta
    "\u11498",     # Tirhuta
    "\u11499",     # Tirhuta
    "\u1149a",     # Tirhuta
    "\u1149b",     # Tirhuta
    "\u1149c",     # Tirhuta
    "\u1149d",     # Tirhuta
    "\u1149e",     # Tirhuta
    "\u1149f",     # Tirhuta
    "\u114a0",     # Tirhuta
    "\u114a1",     # Tirhuta
    "\u114a2",     # Tirhuta
    "\u114a3",     # Tirhuta
    "\u114a4",     # Tirhuta
    "\u114a5",     # Tirhuta
    "\u114a6",     # Tirhuta
    "\u114a7",     # Tirhuta
    "\u114a8",     # Tirhuta
    "\u114a9",     # Tirhuta
    "\u114aa",     # Tirhuta
    "\u114ab",     # Tirhuta
    "\u114ac",     # Tirhuta
    "\u114ad",     # Tirhuta
    "\u114ae",     # Tirhuta
    "\u114af",     # Tirhuta
    "\u114b0",     # Tirhuta
    "\u114b1",     # Tirhuta
    "\u114b2",     # Tirhuta
    "\u114b3",     # Tirhuta
    "\u114b4",     # Tirhuta
    "\u114b5",     # Tirhuta
    "\u114b6",     # Tirhuta
    "\u114b7",     # Tirhuta
    "\u114b8",     # Tirhuta
    "\u114b9",     # Tirhuta
    "\u114ba",     # Tirhuta
    "\u114bb",     # Tirhuta
    "\u114bc",     # Tirhuta
    "\u114bd",     # Tirhuta
    "\u114be",     # Tirhuta
    "\u114bf",     # Tirhuta
    "\u114c0",     # Tirhuta
    "\u114c1",     # Tirhuta
    "\u114c2",     # Tirhuta
    "\u114c3",     # Tirhuta
    "\u114c4",     # Tirhuta
    "\u114c5",     # Tirhuta
    "\u114c6",     # Tirhuta
    "\u114c7",     # Tirhuta
    "\u114c8",     # Tirhuta
    "\u114c9",     # Tirhuta
    "\u114ca",     # Tirhuta
    "\u114cb",     # Tirhuta
    "\u114cc",     # Tirhuta
    "\u114cd",     # Tirhuta
    "\u114ce",     # Tirhuta
    "\u114cf",     # Tirhuta
    "\u114d0",     # Tirhuta
    "\u114d1",     # Tirhuta
    "\u114d2",     # Tirhuta
    "\u114d3",     # Tirhuta
    "\u114d4",     # Tirhuta
    "\u114d5",     # Tirhuta
    "\u114d6",     # Tirhuta
    "\u114d7",     # Tirhuta
    "\u114d8",     # Tirhuta
    "\u114d9",     # Tirhuta
    "\u114da",     # Tirhuta
    "\u114db",     # Tirhuta
    "\u114dc",     # Tirhuta
    "\u114dd",     # Tirhuta
    "\u114de",     # Tirhuta
    "\u114df",     # Tirhuta
    "\u11580",     # Siddham
    "\u11581",     # Siddham
    "\u11582",     # Siddham
    "\u11583",     # Siddham
    "\u11584",     # Siddham
    "\u11585",     # Siddham
    "\u11586",     # Siddham
    "\u11587",     # Siddham
    "\u11588",     # Siddham
    "\u11589",     # Siddham
    "\u1158a",     # Siddham
    "\u1158b",     # Siddham
    "\u1158c",     # Siddham
    "\u1158d",     # Siddham
    "\u1158e",     # Siddham
    "\u1158f",     # Siddham
    "\u11590",     # Siddham
    "\u11591",     # Siddham
    "\u11592",     # Siddham
    "\u11593",     # Siddham
    "\u11594",     # Siddham
    "\u11595",     # Siddham
    "\u11596",     # Siddham
    "\u11597",     # Siddham
    "\u11598",     # Siddham
    "\u11599",     # Siddham
    "\u1159a",     # Siddham
    "\u1159b",     # Siddham
    "\u1159c",     # Siddham
    "\u1159d",     # Siddham
    "\u1159e",     # Siddham
    "\u1159f",     # Siddham
    "\u115a0",     # Siddham
    "\u115a1",     # Siddham
    "\u115a2",     # Siddham
    "\u115a3",     # Siddham
    "\u115a4",     # Siddham
    "\u115a5",     # Siddham
    "\u115a6",     # Siddham
    "\u115a7",     # Siddham
    "\u115a8",     # Siddham
    "\u115a9",     # Siddham
    "\u115aa",     # Siddham
    "\u115ab",     # Siddham
    "\u115ac",     # Siddham
    "\u115ad",     # Siddham
    "\u115ae",     # Siddham
    "\u115af",     # Siddham
    "\u115b0",     # Siddham
    "\u115b1",     # Siddham
    "\u115b2",     # Siddham
    "\u115b3",     # Siddham
    "\u115b4",     # Siddham
    "\u115b5",     # Siddham
    "\u115b6",     # Siddham
    "\u115b7",     # Siddham
    "\u115b8",     # Siddham
    "\u115b9",     # Siddham
    "\u115ba",     # Siddham
    "\u115bb",     # Siddham
    "\u115bc",     # Siddham
    "\u115bd",     # Siddham
    "\u115be",     # Siddham
    "\u115bf",     # Siddham
    "\u115c0",     # Siddham
    "\u115c1",     # Siddham
    "\u115c2",     # Siddham
    "\u115c3",     # Siddham
    "\u115c4",     # Siddham
    "\u115c5",     # Siddham
    "\u115c6",     # Siddham
    "\u115c7",     # Siddham
    "\u115c8",     # Siddham
    "\u115c9",     # Siddham
    "\u115ca",     # Siddham
    "\u115cb",     # Siddham
    "\u115cc",     # Siddham
    "\u115cd",     # Siddham
    "\u115ce",     # Siddham
    "\u115cf",     # Siddham
    "\u115d0",     # Siddham
    "\u115d1",     # Siddham
    "\u115d2",     # Siddham
    "\u115d3",     # Siddham
    "\u115d4",     # Siddham
    "\u115d5",     # Siddham
    "\u115d6",     # Siddham
    "\u115d7",     # Siddham
    "\u115d8",     # Siddham
    "\u115d9",     # Siddham
    "\u115da",     # Siddham
    "\u115db",     # Siddham
    "\u115dc",     # Siddham
    "\u115dd",     # Siddham
    "\u115de",     # Siddham
    "\u115df",     # Siddham
    "\u115e0",     # Siddham
    "\u115e1",     # Siddham
    "\u115e2",     # Siddham
    "\u115e3",     # Siddham
    "\u115e4",     # Siddham
    "\u115e5",     # Siddham
    "\u115e6",     # Siddham
    "\u115e7",     # Siddham
    "\u115e8",     # Siddham
    "\u115e9",     # Siddham
    "\u115ea",     # Siddham
    "\u115eb",     # Siddham
    "\u115ec",     # Siddham
    "\u115ed",     # Siddham
    "\u115ee",     # Siddham
    "\u115ef",     # Siddham
    "\u115f0",     # Siddham
    "\u115f1",     # Siddham
    "\u115f2",     # Siddham
    "\u115f3",     # Siddham
    "\u115f4",     # Siddham
    "\u115f5",     # Siddham
    "\u115f6",     # Siddham
    "\u115f7",     # Siddham
    "\u115f8",     # Siddham
    "\u115f9",     # Siddham
    "\u115fa",     # Siddham
    "\u115fb",     # Siddham
    "\u115fc",     # Siddham
    "\u115fd",     # Siddham
    "\u115fe",     # Siddham
    "\u115ff",     # Siddham
    "\u11600",     # Modi
    "\u11601",     # Modi
    "\u11602",     # Modi
    "\u11603",     # Modi
    "\u11604",     # Modi
    "\u11605",     # Modi
    "\u11606",     # Modi
    "\u11607",     # Modi
    "\u11608",     # Modi
    "\u11609",     # Modi
    "\u1160a",     # Modi
    "\u1160b",     # Modi
    "\u1160c",     # Modi
    "\u1160d",     # Modi
    "\u1160e",     # Modi
    "\u1160f",     # Modi
    "\u11610",     # Modi
    "\u11611",     # Modi
    "\u11612",     # Modi
    "\u11613",     # Modi
    "\u11614",     # Modi
    "\u11615",     # Modi
    "\u11616",     # Modi
    "\u11617",     # Modi
    "\u11618",     # Modi
    "\u11619",     # Modi
    "\u1161a",     # Modi
    "\u1161b",     # Modi
    "\u1161c",     # Modi
    "\u1161d",     # Modi
    "\u1161e",     # Modi
    "\u1161f",     # Modi
    "\u11620",     # Modi
    "\u11621",     # Modi
    "\u11622",     # Modi
    "\u11623",     # Modi
    "\u11624",     # Modi
    "\u11625",     # Modi
    "\u11626",     # Modi
    "\u11627",     # Modi
    "\u11628",     # Modi
    "\u11629",     # Modi
    "\u1162a",     # Modi
    "\u1162b",     # Modi
    "\u1162c",     # Modi
    "\u1162d",     # Modi
    "\u1162e",     # Modi
    "\u1162f",     # Modi
    "\u11630",     # Modi
    "\u11631",     # Modi
    "\u11632",     # Modi
    "\u11633",     # Modi
    "\u11634",     # Modi
    "\u11635",     # Modi
    "\u11636",     # Modi
    "\u11637",     # Modi
    "\u11638",     # Modi
    "\u11639",     # Modi
    "\u1163a",     # Modi
    "\u1163b",     # Modi
    "\u1163c",     # Modi
    "\u1163d",     # Modi
    "\u1163e",     # Modi
    "\u1163f",     # Modi
    "\u11640",     # Modi
    "\u11641",     # Modi
    "\u11642",     # Modi
    "\u11643",     # Modi
    "\u11644",     # Modi
    "\u11645",     # Modi
    "\u11646",     # Modi
    "\u11647",     # Modi
    "\u11648",     # Modi
    "\u11649",     # Modi
    "\u1164a",     # Modi
    "\u1164b",     # Modi
    "\u1164c",     # Modi
    "\u1164d",     # Modi
    "\u1164e",     # Modi
    "\u1164f",     # Modi
    "\u11650",     # Modi
    "\u11651",     # Modi
    "\u11652",     # Modi
    "\u11653",     # Modi
    "\u11654",     # Modi
    "\u11655",     # Modi
    "\u11656",     # Modi
    "\u11657",     # Modi
    "\u11658",     # Modi
    "\u11659",     # Modi
    "\u1165a",     # Modi
    "\u1165b",     # Modi
    "\u1165c",     # Modi
    "\u1165d",     # Modi
    "\u1165e",     # Modi
    "\u1165f",     # Modi
    "\u118a0",     # Warang Citi
    "\u118a1",     # Warang Citi
    "\u118a2",     # Warang Citi
    "\u118a3",     # Warang Citi
    "\u118a4",     # Warang Citi
    "\u118a5",     # Warang Citi
    "\u118a6",     # Warang Citi
    "\u118a7",     # Warang Citi
    "\u118a8",     # Warang Citi
    "\u118a9",     # Warang Citi
    "\u118aa",     # Warang Citi
    "\u118ab",     # Warang Citi
    "\u118ac",     # Warang Citi
    "\u118ad",     # Warang Citi
    "\u118ae",     # Warang Citi
    "\u118af",     # Warang Citi
    "\u118b0",     # Warang Citi
    "\u118b1",     # Warang Citi
    "\u118b2",     # Warang Citi
    "\u118b3",     # Warang Citi
    "\u118b4",     # Warang Citi
    "\u118b5",     # Warang Citi
    "\u118b6",     # Warang Citi
    "\u118b7",     # Warang Citi
    "\u118b8",     # Warang Citi
    "\u118b9",     # Warang Citi
    "\u118ba",     # Warang Citi
    "\u118bb",     # Warang Citi
    "\u118bc",     # Warang Citi
    "\u118bd",     # Warang Citi
    "\u118be",     # Warang Citi
    "\u118bf",     # Warang Citi
    "\u118c0",     # Warang Citi
    "\u118c1",     # Warang Citi
    "\u118c2",     # Warang Citi
    "\u118c3",     # Warang Citi
    "\u118c4",     # Warang Citi
    "\u118c5",     # Warang Citi
    "\u118c6",     # Warang Citi
    "\u118c7",     # Warang Citi
    "\u118c8",     # Warang Citi
    "\u118c9",     # Warang Citi
    "\u118ca",     # Warang Citi
    "\u118cb",     # Warang Citi
    "\u118cc",     # Warang Citi
    "\u118cd",     # Warang Citi
    "\u118ce",     # Warang Citi
    "\u118cf",     # Warang Citi
    "\u118d0",     # Warang Citi
    "\u118d1",     # Warang Citi
    "\u118d2",     # Warang Citi
    "\u118d3",     # Warang Citi
    "\u118d4",     # Warang Citi
    "\u118d5",     # Warang Citi
    "\u118d6",     # Warang Citi
    "\u118d7",     # Warang Citi
    "\u118d8",     # Warang Citi
    "\u118d9",     # Warang Citi
    "\u118da",     # Warang Citi
    "\u118db",     # Warang Citi
    "\u118dc",     # Warang Citi
    "\u118dd",     # Warang Citi
    "\u118de",     # Warang Citi
    "\u118df",     # Warang Citi
    "\u118e0",     # Warang Citi
    "\u118e1",     # Warang Citi
    "\u118e2",     # Warang Citi
    "\u118e3",     # Warang Citi
    "\u118e4",     # Warang Citi
    "\u118e5",     # Warang Citi
    "\u118e6",     # Warang Citi
    "\u118e7",     # Warang Citi
    "\u118e8",     # Warang Citi
    "\u118e9",     # Warang Citi
    "\u118ea",     # Warang Citi
    "\u118eb",     # Warang Citi
    "\u118ec",     # Warang Citi
    "\u118ed",     # Warang Citi
    "\u118ee",     # Warang Citi
    "\u118ef",     # Warang Citi
    "\u118f0",     # Warang Citi
    "\u118f1",     # Warang Citi
    "\u118f2",     # Warang Citi
    "\u118f3",     # Warang Citi
    "\u118f4",     # Warang Citi
    "\u118f5",     # Warang Citi
    "\u118f6",     # Warang Citi
    "\u118f7",     # Warang Citi
    "\u118f8",     # Warang Citi
    "\u118f9",     # Warang Citi
    "\u118fa",     # Warang Citi
    "\u118fb",     # Warang Citi
    "\u118fc",     # Warang Citi
    "\u118fd",     # Warang Citi
    "\u118fe",     # Warang Citi
    "\u118ff",     # Warang Citi
    "\u11ac0",     # Pau Cin Hau
    "\u11ac1",     # Pau Cin Hau
    "\u11ac2",     # Pau Cin Hau
    "\u11ac3",     # Pau Cin Hau
    "\u11ac4",     # Pau Cin Hau
    "\u11ac5",     # Pau Cin Hau
    "\u11ac6",     # Pau Cin Hau
    "\u11ac7",     # Pau Cin Hau
    "\u11ac8",     # Pau Cin Hau
    "\u11ac9",     # Pau Cin Hau
    "\u11aca",     # Pau Cin Hau
    "\u11acb",     # Pau Cin Hau
    "\u11acc",     # Pau Cin Hau
    "\u11acd",     # Pau Cin Hau
    "\u11ace",     # Pau Cin Hau
    "\u11acf",     # Pau Cin Hau
    "\u11ad0",     # Pau Cin Hau
    "\u11ad1",     # Pau Cin Hau
    "\u11ad2",     # Pau Cin Hau
    "\u11ad3",     # Pau Cin Hau
    "\u11ad4",     # Pau Cin Hau
    "\u11ad5",     # Pau Cin Hau
    "\u11ad6",     # Pau Cin Hau
    "\u11ad7",     # Pau Cin Hau
    "\u11ad8",     # Pau Cin Hau
    "\u11ad9",     # Pau Cin Hau
    "\u11ada",     # Pau Cin Hau
    "\u11adb",     # Pau Cin Hau
    "\u11adc",     # Pau Cin Hau
    "\u11add",     # Pau Cin Hau
    "\u11ade",     # Pau Cin Hau
    "\u11adf",     # Pau Cin Hau
    "\u11ae0",     # Pau Cin Hau
    "\u11ae1",     # Pau Cin Hau
    "\u11ae2",     # Pau Cin Hau
    "\u11ae3",     # Pau Cin Hau
    "\u11ae4",     # Pau Cin Hau
    "\u11ae5",     # Pau Cin Hau
    "\u11ae6",     # Pau Cin Hau
    "\u11ae7",     # Pau Cin Hau
    "\u11ae8",     # Pau Cin Hau
    "\u11ae9",     # Pau Cin Hau
    "\u11aea",     # Pau Cin Hau
    "\u11aeb",     # Pau Cin Hau
    "\u11aec",     # Pau Cin Hau
    "\u11aed",     # Pau Cin Hau
    "\u11aee",     # Pau Cin Hau
    "\u11aef",     # Pau Cin Hau
    "\u11af0",     # Pau Cin Hau
    "\u11af1",     # Pau Cin Hau
    "\u11af2",     # Pau Cin Hau
    "\u11af3",     # Pau Cin Hau
    "\u11af4",     # Pau Cin Hau
    "\u11af5",     # Pau Cin Hau
    "\u11af6",     # Pau Cin Hau
    "\u11af7",     # Pau Cin Hau
    "\u11af8",     # Pau Cin Hau
    "\u11af9",     # Pau Cin Hau
    "\u11afa",     # Pau Cin Hau
    "\u11afb",     # Pau Cin Hau
    "\u11afc",     # Pau Cin Hau
    "\u11afd",     # Pau Cin Hau
    "\u11afe",     # Pau Cin Hau
    "\u11aff",     # Pau Cin Hau
    "\u16a40",     # Mro
    "\u16a41",     # Mro
    "\u16a42",     # Mro
    "\u16a43",     # Mro
    "\u16a44",     # Mro
    "\u16a45",     # Mro
    "\u16a46",     # Mro
    "\u16a47",     # Mro
    "\u16a48",     # Mro
    "\u16a49",     # Mro
    "\u16a4a",     # Mro
    "\u16a4b",     # Mro
    "\u16a4c",     # Mro
    "\u16a4d",     # Mro
    "\u16a4e",     # Mro
    "\u16a4f",     # Mro
    "\u16a50",     # Mro
    "\u16a51",     # Mro
    "\u16a52",     # Mro
    "\u16a53",     # Mro
    "\u16a54",     # Mro
    "\u16a55",     # Mro
    "\u16a56",     # Mro
    "\u16a57",     # Mro
    "\u16a58",     # Mro
    "\u16a59",     # Mro
    "\u16a5a",     # Mro
    "\u16a5b",     # Mro
    "\u16a5c",     # Mro
    "\u16a5d",     # Mro
    "\u16a5e",     # Mro
    "\u16a5f",     # Mro
    "\u16a60",     # Mro
    "\u16a61",     # Mro
    "\u16a62",     # Mro
    "\u16a63",     # Mro
    "\u16a64",     # Mro
    "\u16a65",     # Mro
    "\u16a66",     # Mro
    "\u16a67",     # Mro
    "\u16a68",     # Mro
    "\u16a69",     # Mro
    "\u16a6a",     # Mro
    "\u16a6b",     # Mro
    "\u16a6c",     # Mro
    "\u16a6d",     # Mro
    "\u16a6e",     # Mro
    "\u16a6f",     # Mro
    "\u16ad0",     # Bassa Vah
    "\u16ad1",     # Bassa Vah
    "\u16ad2",     # Bassa Vah
    "\u16ad3",     # Bassa Vah
    "\u16ad4",     # Bassa Vah
    "\u16ad5",     # Bassa Vah
    "\u16ad6",     # Bassa Vah
    "\u16ad7",     # Bassa Vah
    "\u16ad8",     # Bassa Vah
    "\u16ad9",     # Bassa Vah
    "\u16ada",     # Bassa Vah
    "\u16adb",     # Bassa Vah
    "\u16adc",     # Bassa Vah
    "\u16add",     # Bassa Vah
    "\u16ade",     # Bassa Vah
    "\u16adf",     # Bassa Vah
    "\u16ae0",     # Bassa Vah
    "\u16ae1",     # Bassa Vah
    "\u16ae2",     # Bassa Vah
    "\u16ae3",     # Bassa Vah
    "\u16ae4",     # Bassa Vah
    "\u16ae5",     # Bassa Vah
    "\u16ae6",     # Bassa Vah
    "\u16ae7",     # Bassa Vah
    "\u16ae8",     # Bassa Vah
    "\u16ae9",     # Bassa Vah
    "\u16aea",     # Bassa Vah
    "\u16aeb",     # Bassa Vah
    "\u16aec",     # Bassa Vah
    "\u16aed",     # Bassa Vah
    "\u16aee",     # Bassa Vah
    "\u16aef",     # Bassa Vah
    "\u16af0",     # Bassa Vah
    "\u16af1",     # Bassa Vah
    "\u16af2",     # Bassa Vah
    "\u16af3",     # Bassa Vah
    "\u16af4",     # Bassa Vah
    "\u16af5",     # Bassa Vah
    "\u16af6",     # Bassa Vah
    "\u16af7",     # Bassa Vah
    "\u16af8",     # Bassa Vah
    "\u16af9",     # Bassa Vah
    "\u16afa",     # Bassa Vah
    "\u16afb",     # Bassa Vah
    "\u16afc",     # Bassa Vah
    "\u16afd",     # Bassa Vah
    "\u16afe",     # Bassa Vah
    "\u16aff",     # Bassa Vah
    "\u16b00",     # Pahawh Hmong
    "\u16b01",     # Pahawh Hmong
    "\u16b02",     # Pahawh Hmong
    "\u16b03",     # Pahawh Hmong
    "\u16b04",     # Pahawh Hmong
    "\u16b05",     # Pahawh Hmong
    "\u16b06",     # Pahawh Hmong
    "\u16b07",     # Pahawh Hmong
    "\u16b08",     # Pahawh Hmong
    "\u16b09",     # Pahawh Hmong
    "\u16b0a",     # Pahawh Hmong
    "\u16b0b",     # Pahawh Hmong
    "\u16b0c",     # Pahawh Hmong
    "\u16b0d",     # Pahawh Hmong
    "\u16b0e",     # Pahawh Hmong
    "\u16b0f",     # Pahawh Hmong
    "\u16b10",     # Pahawh Hmong
    "\u16b11",     # Pahawh Hmong
    "\u16b12",     # Pahawh Hmong
    "\u16b13",     # Pahawh Hmong
    "\u16b14",     # Pahawh Hmong
    "\u16b15",     # Pahawh Hmong
    "\u16b16",     # Pahawh Hmong
    "\u16b17",     # Pahawh Hmong
    "\u16b18",     # Pahawh Hmong
    "\u16b19",     # Pahawh Hmong
    "\u16b1a",     # Pahawh Hmong
    "\u16b1b",     # Pahawh Hmong
    "\u16b1c",     # Pahawh Hmong
    "\u16b1d",     # Pahawh Hmong
    "\u16b1e",     # Pahawh Hmong
    "\u16b1f",     # Pahawh Hmong
    "\u16b20",     # Pahawh Hmong
    "\u16b21",     # Pahawh Hmong
    "\u16b22",     # Pahawh Hmong
    "\u16b23",     # Pahawh Hmong
    "\u16b24",     # Pahawh Hmong
    "\u16b25",     # Pahawh Hmong
    "\u16b26",     # Pahawh Hmong
    "\u16b27",     # Pahawh Hmong
    "\u16b28",     # Pahawh Hmong
    "\u16b29",     # Pahawh Hmong
    "\u16b2a",     # Pahawh Hmong
    "\u16b2b",     # Pahawh Hmong
    "\u16b2c",     # Pahawh Hmong
    "\u16b2d",     # Pahawh Hmong
    "\u16b2e",     # Pahawh Hmong
    "\u16b2f",     # Pahawh Hmong
    "\u16b30",     # Pahawh Hmong
    "\u16b31",     # Pahawh Hmong
    "\u16b32",     # Pahawh Hmong
    "\u16b33",     # Pahawh Hmong
    "\u16b34",     # Pahawh Hmong
    "\u16b35",     # Pahawh Hmong
    "\u16b36",     # Pahawh Hmong
    "\u16b37",     # Pahawh Hmong
    "\u16b38",     # Pahawh Hmong
    "\u16b39",     # Pahawh Hmong
    "\u16b3a",     # Pahawh Hmong
    "\u16b3b",     # Pahawh Hmong
    "\u16b3c",     # Pahawh Hmong
    "\u16b3d",     # Pahawh Hmong
    "\u16b3e",     # Pahawh Hmong
    "\u16b3f",     # Pahawh Hmong
    "\u16b40",     # Pahawh Hmong
    "\u16b41",     # Pahawh Hmong
    "\u16b42",     # Pahawh Hmong
    "\u16b43",     # Pahawh Hmong
    "\u16b44",     # Pahawh Hmong
    "\u16b45",     # Pahawh Hmong
    "\u16b46",     # Pahawh Hmong
    "\u16b47",     # Pahawh Hmong
    "\u16b48",     # Pahawh Hmong
    "\u16b49",     # Pahawh Hmong
    "\u16b4a",     # Pahawh Hmong
    "\u16b4b",     # Pahawh Hmong
    "\u16b4c",     # Pahawh Hmong
    "\u16b4d",     # Pahawh Hmong
    "\u16b4e",     # Pahawh Hmong
    "\u16b4f",     # Pahawh Hmong
    "\u16b50",     # Pahawh Hmong
    "\u16b51",     # Pahawh Hmong
    "\u16b52",     # Pahawh Hmong
    "\u16b53",     # Pahawh Hmong
    "\u16b54",     # Pahawh Hmong
    "\u16b55",     # Pahawh Hmong
    "\u16b56",     # Pahawh Hmong
    "\u16b57",     # Pahawh Hmong
    "\u16b58",     # Pahawh Hmong
    "\u16b59",     # Pahawh Hmong
    "\u16b5a",     # Pahawh Hmong
    "\u16b5b",     # Pahawh Hmong
    "\u16b5c",     # Pahawh Hmong
    "\u16b5d",     # Pahawh Hmong
    "\u16b5e",     # Pahawh Hmong
    "\u16b5f",     # Pahawh Hmong
    "\u16b60",     # Pahawh Hmong
    "\u16b61",     # Pahawh Hmong
    "\u16b62",     # Pahawh Hmong
    "\u16b63",     # Pahawh Hmong
    "\u16b64",     # Pahawh Hmong
    "\u16b65",     # Pahawh Hmong
    "\u16b66",     # Pahawh Hmong
    "\u16b67",     # Pahawh Hmong
    "\u16b68",     # Pahawh Hmong
    "\u16b69",     # Pahawh Hmong
    "\u16b6a",     # Pahawh Hmong
    "\u16b6b",     # Pahawh Hmong
    "\u16b6c",     # Pahawh Hmong
    "\u16b6d",     # Pahawh Hmong
    "\u16b6e",     # Pahawh Hmong
    "\u16b6f",     # Pahawh Hmong
    "\u16b70",     # Pahawh Hmong
    "\u16b71",     # Pahawh Hmong
    "\u16b72",     # Pahawh Hmong
    "\u16b73",     # Pahawh Hmong
    "\u16b74",     # Pahawh Hmong
    "\u16b75",     # Pahawh Hmong
    "\u16b76",     # Pahawh Hmong
    "\u16b77",     # Pahawh Hmong
    "\u16b78",     # Pahawh Hmong
    "\u16b79",     # Pahawh Hmong
    "\u16b7a",     # Pahawh Hmong
    "\u16b7b",     # Pahawh Hmong
    "\u16b7c",     # Pahawh Hmong
    "\u16b7d",     # Pahawh Hmong
    "\u16b7e",     # Pahawh Hmong
    "\u16b7f",     # Pahawh Hmong
    "\u16b80",     # Pahawh Hmong
    "\u16b81",     # Pahawh Hmong
    "\u16b82",     # Pahawh Hmong
    "\u16b83",     # Pahawh Hmong
    "\u16b84",     # Pahawh Hmong
    "\u16b85",     # Pahawh Hmong
    "\u16b86",     # Pahawh Hmong
    "\u16b87",     # Pahawh Hmong
    "\u16b88",     # Pahawh Hmong
    "\u16b89",     # Pahawh Hmong
    "\u16b8a",     # Pahawh Hmong
    "\u16b8b",     # Pahawh Hmong
    "\u16b8c",     # Pahawh Hmong
    "\u16b8d",     # Pahawh Hmong
    "\u16b8e",     # Pahawh Hmong
    "\u16b8f",     # Pahawh Hmong
    "\u1bc00",     # Duployan
    "\u1bc01",     # Duployan
    "\u1bc02",     # Duployan
    "\u1bc03",     # Duployan
    "\u1bc04",     # Duployan
    "\u1bc05",     # Duployan
    "\u1bc06",     # Duployan
    "\u1bc07",     # Duployan
    "\u1bc08",     # Duployan
    "\u1bc09",     # Duployan
    "\u1bc0a",     # Duployan
    "\u1bc0b",     # Duployan
    "\u1bc0c",     # Duployan
    "\u1bc0d",     # Duployan
    "\u1bc0e",     # Duployan
    "\u1bc0f",     # Duployan
    "\u1bc10",     # Duployan
    "\u1bc11",     # Duployan
    "\u1bc12",     # Duployan
    "\u1bc13",     # Duployan
    "\u1bc14",     # Duployan
    "\u1bc15",     # Duployan
    "\u1bc16",     # Duployan
    "\u1bc17",     # Duployan
    "\u1bc18",     # Duployan
    "\u1bc19",     # Duployan
    "\u1bc1a",     # Duployan
    "\u1bc1b",     # Duployan
    "\u1bc1c",     # Duployan
    "\u1bc1d",     # Duployan
    "\u1bc1e",     # Duployan
    "\u1bc1f",     # Duployan
    "\u1bc20",     # Duployan
    "\u1bc21",     # Duployan
    "\u1bc22",     # Duployan
    "\u1bc23",     # Duployan
    "\u1bc24",     # Duployan
    "\u1bc25",     # Duployan
    "\u1bc26",     # Duployan
    "\u1bc27",     # Duployan
    "\u1bc28",     # Duployan
    "\u1bc29",     # Duployan
    "\u1bc2a",     # Duployan
    "\u1bc2b",     # Duployan
    "\u1bc2c",     # Duployan
    "\u1bc2d",     # Duployan
    "\u1bc2e",     # Duployan
    "\u1bc2f",     # Duployan
    "\u1bc30",     # Duployan
    "\u1bc31",     # Duployan
    "\u1bc32",     # Duployan
    "\u1bc33",     # Duployan
    "\u1bc34",     # Duployan
    "\u1bc35",     # Duployan
    "\u1bc36",     # Duployan
    "\u1bc37",     # Duployan
    "\u1bc38",     # Duployan
    "\u1bc39",     # Duployan
    "\u1bc3a",     # Duployan
    "\u1bc3b",     # Duployan
    "\u1bc3c",     # Duployan
    "\u1bc3d",     # Duployan
    "\u1bc3e",     # Duployan
    "\u1bc3f",     # Duployan
    "\u1bc40",     # Duployan
    "\u1bc41",     # Duployan
    "\u1bc42",     # Duployan
    "\u1bc43",     # Duployan
    "\u1bc44",     # Duployan
    "\u1bc45",     # Duployan
    "\u1bc46",     # Duployan
    "\u1bc47",     # Duployan
    "\u1bc48",     # Duployan
    "\u1bc49",     # Duployan
    "\u1bc4a",     # Duployan
    "\u1bc4b",     # Duployan
    "\u1bc4c",     # Duployan
    "\u1bc4d",     # Duployan
    "\u1bc4e",     # Duployan
    "\u1bc4f",     # Duployan
    "\u1bc50",     # Duployan
    "\u1bc51",     # Duployan
    "\u1bc52",     # Duployan
    "\u1bc53",     # Duployan
    "\u1bc54",     # Duployan
    "\u1bc55",     # Duployan
    "\u1bc56",     # Duployan
    "\u1bc57",     # Duployan
    "\u1bc58",     # Duployan
    "\u1bc59",     # Duployan
    "\u1bc5a",     # Duployan
    "\u1bc5b",     # Duployan
    "\u1bc5c",     # Duployan
    "\u1bc5d",     # Duployan
    "\u1bc5e",     # Duployan
    "\u1bc5f",     # Duployan
    "\u1bc60",     # Duployan
    "\u1bc61",     # Duployan
    "\u1bc62",     # Duployan
    "\u1bc63",     # Duployan
    "\u1bc64",     # Duployan
    "\u1bc65",     # Duployan
    "\u1bc66",     # Duployan
    "\u1bc67",     # Duployan
    "\u1bc68",     # Duployan
    "\u1bc69",     # Duployan
    "\u1bc6a",     # Duployan
    "\u1bc6b",     # Duployan
    "\u1bc6c",     # Duployan
    "\u1bc6d",     # Duployan
    "\u1bc6e",     # Duployan
    "\u1bc6f",     # Duployan
    "\u1bc70",     # Duployan
    "\u1bc71",     # Duployan
    "\u1bc72",     # Duployan
    "\u1bc73",     # Duployan
    "\u1bc74",     # Duployan
    "\u1bc75",     # Duployan
    "\u1bc76",     # Duployan
    "\u1bc77",     # Duployan
    "\u1bc78",     # Duployan
    "\u1bc79",     # Duployan
    "\u1bc7a",     # Duployan
    "\u1bc7b",     # Duployan
    "\u1bc7c",     # Duployan
    "\u1bc7d",     # Duployan
    "\u1bc7e",     # Duployan
    "\u1bc7f",     # Duployan
    "\u1bc80",     # Duployan
    "\u1bc81",     # Duployan
    "\u1bc82",     # Duployan
    "\u1bc83",     # Duployan
    "\u1bc84",     # Duployan
    "\u1bc85",     # Duployan
    "\u1bc86",     # Duployan
    "\u1bc87",     # Duployan
    "\u1bc88",     # Duployan
    "\u1bc89",     # Duployan
    "\u1bc8a",     # Duployan
    "\u1bc8b",     # Duployan
    "\u1bc8c",     # Duployan
    "\u1bc8d",     # Duployan
    "\u1bc8e",     # Duployan
    "\u1bc8f",     # Duployan
    "\u1bc90",     # Duployan
    "\u1bc91",     # Duployan
    "\u1bc92",     # Duployan
    "\u1bc93",     # Duployan
    "\u1bc94",     # Duployan
    "\u1bc95",     # Duployan
    "\u1bc96",     # Duployan
    "\u1bc97",     # Duployan
    "\u1bc98",     # Duployan
    "\u1bc99",     # Duployan
    "\u1bc9a",     # Duployan
    "\u1bc9b",     # Duployan
    "\u1bc9c",     # Duployan
    "\u1bc9d",     # Duployan
    "\u1bc9e",     # Duployan
    "\u1bc9f",     # Duployan
    "\u1bca0",     # Shorthand Format Controls
    "\u1bca1",     # Shorthand Format Controls
    "\u1bca2",     # Shorthand Format Controls
    "\u1bca3",     # Shorthand Format Controls
    "\u1bca4",     # Shorthand Format Controls
    "\u1bca5",     # Shorthand Format Controls
    "\u1bca6",     # Shorthand Format Controls
    "\u1bca7",     # Shorthand Format Controls
    "\u1bca8",     # Shorthand Format Controls
    "\u1bca9",     # Shorthand Format Controls
    "\u1bcaa",     # Shorthand Format Controls
    "\u1bcab",     # Shorthand Format Controls
    "\u1bcac",     # Shorthand Format Controls
    "\u1bcad",     # Shorthand Format Controls
    "\u1bcae",     # Shorthand Format Controls
    "\u1bcaf",     # Shorthand Format Controls
    "\u1e800",     # Mende Kikakui
    "\u1e801",     # Mende Kikakui
    "\u1e802",     # Mende Kikakui
    "\u1e803",     # Mende Kikakui
    "\u1e804",     # Mende Kikakui
    "\u1e805",     # Mende Kikakui
    "\u1e806",     # Mende Kikakui
    "\u1e807",     # Mende Kikakui
    "\u1e808",     # Mende Kikakui
    "\u1e809",     # Mende Kikakui
    "\u1e80a",     # Mende Kikakui
    "\u1e80b",     # Mende Kikakui
    "\u1e80c",     # Mende Kikakui
    "\u1e80d",     # Mende Kikakui
    "\u1e80e",     # Mende Kikakui
    "\u1e80f",     # Mende Kikakui
    "\u1e810",     # Mende Kikakui
    "\u1e811",     # Mende Kikakui
    "\u1e812",     # Mende Kikakui
    "\u1e813",     # Mende Kikakui
    "\u1e814",     # Mende Kikakui
    "\u1e815",     # Mende Kikakui
    "\u1e816",     # Mende Kikakui
    "\u1e817",     # Mende Kikakui
    "\u1e818",     # Mende Kikakui
    "\u1e819",     # Mende Kikakui
    "\u1e81a",     # Mende Kikakui
    "\u1e81b",     # Mende Kikakui
    "\u1e81c",     # Mende Kikakui
    "\u1e81d",     # Mende Kikakui
    "\u1e81e",     # Mende Kikakui
    "\u1e81f",     # Mende Kikakui
    "\u1e820",     # Mende Kikakui
    "\u1e821",     # Mende Kikakui
    "\u1e822",     # Mende Kikakui
    "\u1e823",     # Mende Kikakui
    "\u1e824",     # Mende Kikakui
    "\u1e825",     # Mende Kikakui
    "\u1e826",     # Mende Kikakui
    "\u1e827",     # Mende Kikakui
    "\u1e828",     # Mende Kikakui
    "\u1e829",     # Mende Kikakui
    "\u1e82a",     # Mende Kikakui
    "\u1e82b",     # Mende Kikakui
    "\u1e82c",     # Mende Kikakui
    "\u1e82d",     # Mende Kikakui
    "\u1e82e",     # Mende Kikakui
    "\u1e82f",     # Mende Kikakui
    "\u1e830",     # Mende Kikakui
    "\u1e831",     # Mende Kikakui
    "\u1e832",     # Mende Kikakui
    "\u1e833",     # Mende Kikakui
    "\u1e834",     # Mende Kikakui
    "\u1e835",     # Mende Kikakui
    "\u1e836",     # Mende Kikakui
    "\u1e837",     # Mende Kikakui
    "\u1e838",     # Mende Kikakui
    "\u1e839",     # Mende Kikakui
    "\u1e83a",     # Mende Kikakui
    "\u1e83b",     # Mende Kikakui
    "\u1e83c",     # Mende Kikakui
    "\u1e83d",     # Mende Kikakui
    "\u1e83e",     # Mende Kikakui
    "\u1e83f",     # Mende Kikakui
    "\u1e840",     # Mende Kikakui
    "\u1e841",     # Mende Kikakui
    "\u1e842",     # Mende Kikakui
    "\u1e843",     # Mende Kikakui
    "\u1e844",     # Mende Kikakui
    "\u1e845",     # Mende Kikakui
    "\u1e846",     # Mende Kikakui
    "\u1e847",     # Mende Kikakui
    "\u1e848",     # Mende Kikakui
    "\u1e849",     # Mende Kikakui
    "\u1e84a",     # Mende Kikakui
    "\u1e84b",     # Mende Kikakui
    "\u1e84c",     # Mende Kikakui
    "\u1e84d",     # Mende Kikakui
    "\u1e84e",     # Mende Kikakui
    "\u1e84f",     # Mende Kikakui
    "\u1e850",     # Mende Kikakui
    "\u1e851",     # Mende Kikakui
    "\u1e852",     # Mende Kikakui
    "\u1e853",     # Mende Kikakui
    "\u1e854",     # Mende Kikakui
    "\u1e855",     # Mende Kikakui
    "\u1e856",     # Mende Kikakui
    "\u1e857",     # Mende Kikakui
    "\u1e858",     # Mende Kikakui
    "\u1e859",     # Mende Kikakui
    "\u1e85a",     # Mende Kikakui
    "\u1e85b",     # Mende Kikakui
    "\u1e85c",     # Mende Kikakui
    "\u1e85d",     # Mende Kikakui
    "\u1e85e",     # Mende Kikakui
    "\u1e85f",     # Mende Kikakui
    "\u1e860",     # Mende Kikakui
    "\u1e861",     # Mende Kikakui
    "\u1e862",     # Mende Kikakui
    "\u1e863",     # Mende Kikakui
    "\u1e864",     # Mende Kikakui
    "\u1e865",     # Mende Kikakui
    "\u1e866",     # Mende Kikakui
    "\u1e867",     # Mende Kikakui
    "\u1e868",     # Mende Kikakui
    "\u1e869",     # Mende Kikakui
    "\u1e86a",     # Mende Kikakui
    "\u1e86b",     # Mende Kikakui
    "\u1e86c",     # Mende Kikakui
    "\u1e86d",     # Mende Kikakui
    "\u1e86e",     # Mende Kikakui
    "\u1e86f",     # Mende Kikakui
    "\u1e870",     # Mende Kikakui
    "\u1e871",     # Mende Kikakui
    "\u1e872",     # Mende Kikakui
    "\u1e873",     # Mende Kikakui
    "\u1e874",     # Mende Kikakui
    "\u1e875",     # Mende Kikakui
    "\u1e876",     # Mende Kikakui
    "\u1e877",     # Mende Kikakui
    "\u1e878",     # Mende Kikakui
    "\u1e879",     # Mende Kikakui
    "\u1e87a",     # Mende Kikakui
    "\u1e87b",     # Mende Kikakui
    "\u1e87c",     # Mende Kikakui
    "\u1e87d",     # Mende Kikakui
    "\u1e87e",     # Mende Kikakui
    "\u1e87f",     # Mende Kikakui
    "\u1e880",     # Mende Kikakui
    "\u1e881",     # Mende Kikakui
    "\u1e882",     # Mende Kikakui
    "\u1e883",     # Mende Kikakui
    "\u1e884",     # Mende Kikakui
    "\u1e885",     # Mende Kikakui
    "\u1e886",     # Mende Kikakui
    "\u1e887",     # Mende Kikakui
    "\u1e888",     # Mende Kikakui
    "\u1e889",     # Mende Kikakui
    "\u1e88a",     # Mende Kikakui
    "\u1e88b",     # Mende Kikakui
    "\u1e88c",     # Mende Kikakui
    "\u1e88d",     # Mende Kikakui
    "\u1e88e",     # Mende Kikakui
    "\u1e88f",     # Mende Kikakui
    "\u1e890",     # Mende Kikakui
    "\u1e891",     # Mende Kikakui
    "\u1e892",     # Mende Kikakui
    "\u1e893",     # Mende Kikakui
    "\u1e894",     # Mende Kikakui
    "\u1e895",     # Mende Kikakui
    "\u1e896",     # Mende Kikakui
    "\u1e897",     # Mende Kikakui
    "\u1e898",     # Mende Kikakui
    "\u1e899",     # Mende Kikakui
    "\u1e89a",     # Mende Kikakui
    "\u1e89b",     # Mende Kikakui
    "\u1e89c",     # Mende Kikakui
    "\u1e89d",     # Mende Kikakui
    "\u1e89e",     # Mende Kikakui
    "\u1e89f",     # Mende Kikakui
    "\u1e8a0",     # Mende Kikakui
    "\u1e8a1",     # Mende Kikakui
    "\u1e8a2",     # Mende Kikakui
    "\u1e8a3",     # Mende Kikakui
    "\u1e8a4",     # Mende Kikakui
    "\u1e8a5",     # Mende Kikakui
    "\u1e8a6",     # Mende Kikakui
    "\u1e8a7",     # Mende Kikakui
    "\u1e8a8",     # Mende Kikakui
    "\u1e8a9",     # Mende Kikakui
    "\u1e8aa",     # Mende Kikakui
    "\u1e8ab",     # Mende Kikakui
    "\u1e8ac",     # Mende Kikakui
    "\u1e8ad",     # Mende Kikakui
    "\u1e8ae",     # Mende Kikakui
    "\u1e8af",     # Mende Kikakui
    "\u1e8b0",     # Mende Kikakui
    "\u1e8b1",     # Mende Kikakui
    "\u1e8b2",     # Mende Kikakui
    "\u1e8b3",     # Mende Kikakui
    "\u1e8b4",     # Mende Kikakui
    "\u1e8b5",     # Mende Kikakui
    "\u1e8b6",     # Mende Kikakui
    "\u1e8b7",     # Mende Kikakui
    "\u1e8b8",     # Mende Kikakui
    "\u1e8b9",     # Mende Kikakui
    "\u1e8ba",     # Mende Kikakui
    "\u1e8bb",     # Mende Kikakui
    "\u1e8bc",     # Mende Kikakui
    "\u1e8bd",     # Mende Kikakui
    "\u1e8be",     # Mende Kikakui
    "\u1e8bf",     # Mende Kikakui
    "\u1e8c0",     # Mende Kikakui
    "\u1e8c1",     # Mende Kikakui
    "\u1e8c2",     # Mende Kikakui
    "\u1e8c3",     # Mende Kikakui
    "\u1e8c4",     # Mende Kikakui
    "\u1e8c5",     # Mende Kikakui
    "\u1e8c6",     # Mende Kikakui
    "\u1e8c7",     # Mende Kikakui
    "\u1e8c8",     # Mende Kikakui
    "\u1e8c9",     # Mende Kikakui
    "\u1e8ca",     # Mende Kikakui
    "\u1e8cb",     # Mende Kikakui
    "\u1e8cc",     # Mende Kikakui
    "\u1e8cd",     # Mende Kikakui
    "\u1e8ce",     # Mende Kikakui
    "\u1e8cf",     # Mende Kikakui
    "\u1e8d0",     # Mende Kikakui
    "\u1e8d1",     # Mende Kikakui
    "\u1e8d2",     # Mende Kikakui
    "\u1e8d3",     # Mende Kikakui
    "\u1e8d4",     # Mende Kikakui
    "\u1e8d5",     # Mende Kikakui
    "\u1e8d6",     # Mende Kikakui
    "\u1e8d7",     # Mende Kikakui
    "\u1e8d8",     # Mende Kikakui
    "\u1e8d9",     # Mende Kikakui
    "\u1e8da",     # Mende Kikakui
    "\u1e8db",     # Mende Kikakui
    "\u1e8dc",     # Mende Kikakui
    "\u1e8dd",     # Mende Kikakui
    "\u1e8de",     # Mende Kikakui
    "\u1e8df",     # Mende Kikakui
    "\u1f650",     # Ornamental Dingbats
    "\u1f651",     # Ornamental Dingbats
    "\u1f652",     # Ornamental Dingbats
    "\u1f653",     # Ornamental Dingbats
    "\u1f654",     # Ornamental Dingbats
    "\u1f655",     # Ornamental Dingbats
    "\u1f656",     # Ornamental Dingbats
    "\u1f657",     # Ornamental Dingbats
    "\u1f658",     # Ornamental Dingbats
    "\u1f659",     # Ornamental Dingbats
    "\u1f65a",     # Ornamental Dingbats
    "\u1f65b",     # Ornamental Dingbats
    "\u1f65c",     # Ornamental Dingbats
    "\u1f65d",     # Ornamental Dingbats
    "\u1f65e",     # Ornamental Dingbats
    "\u1f65f",     # Ornamental Dingbats
    "\u1f660",     # Ornamental Dingbats
    "\u1f661",     # Ornamental Dingbats
    "\u1f662",     # Ornamental Dingbats
    "\u1f663",     # Ornamental Dingbats
    "\u1f664",     # Ornamental Dingbats
    "\u1f665",     # Ornamental Dingbats
    "\u1f666",     # Ornamental Dingbats
    "\u1f667",     # Ornamental Dingbats
    "\u1f668",     # Ornamental Dingbats
    "\u1f669",     # Ornamental Dingbats
    "\u1f66a",     # Ornamental Dingbats
    "\u1f66b",     # Ornamental Dingbats
    "\u1f66c",     # Ornamental Dingbats
    "\u1f66d",     # Ornamental Dingbats
    "\u1f66e",     # Ornamental Dingbats
    "\u1f66f",     # Ornamental Dingbats
    "\u1f670",     # Ornamental Dingbats
    "\u1f671",     # Ornamental Dingbats
    "\u1f672",     # Ornamental Dingbats
    "\u1f673",     # Ornamental Dingbats
    "\u1f674",     # Ornamental Dingbats
    "\u1f675",     # Ornamental Dingbats
    "\u1f676",     # Ornamental Dingbats
    "\u1f677",     # Ornamental Dingbats
    "\u1f678",     # Ornamental Dingbats
    "\u1f679",     # Ornamental Dingbats
    "\u1f67a",     # Ornamental Dingbats
    "\u1f67b",     # Ornamental Dingbats
    "\u1f67c",     # Ornamental Dingbats
    "\u1f67d",     # Ornamental Dingbats
    "\u1f67e",     # Ornamental Dingbats
    "\u1f67f",     # Ornamental Dingbats
    "\u1f780",     # Geometric Shapes Extended
    "\u1f781",     # Geometric Shapes Extended
    "\u1f782",     # Geometric Shapes Extended
    "\u1f783",     # Geometric Shapes Extended
    "\u1f784",     # Geometric Shapes Extended
    "\u1f785",     # Geometric Shapes Extended
    "\u1f786",     # Geometric Shapes Extended
    "\u1f787",     # Geometric Shapes Extended
    "\u1f788",     # Geometric Shapes Extended
    "\u1f789",     # Geometric Shapes Extended
    "\u1f78a",     # Geometric Shapes Extended
    "\u1f78b",     # Geometric Shapes Extended
    "\u1f78c",     # Geometric Shapes Extended
    "\u1f78d",     # Geometric Shapes Extended
    "\u1f78e",     # Geometric Shapes Extended
    "\u1f78f",     # Geometric Shapes Extended
    "\u1f790",     # Geometric Shapes Extended
    "\u1f791",     # Geometric Shapes Extended
    "\u1f792",     # Geometric Shapes Extended
    "\u1f793",     # Geometric Shapes Extended
    "\u1f794",     # Geometric Shapes Extended
    "\u1f795",     # Geometric Shapes Extended
    "\u1f796",     # Geometric Shapes Extended
    "\u1f797",     # Geometric Shapes Extended
    "\u1f798",     # Geometric Shapes Extended
    "\u1f799",     # Geometric Shapes Extended
    "\u1f79a",     # Geometric Shapes Extended
    "\u1f79b",     # Geometric Shapes Extended
    "\u1f79c",     # Geometric Shapes Extended
    "\u1f79d",     # Geometric Shapes Extended
    "\u1f79e",     # Geometric Shapes Extended
    "\u1f79f",     # Geometric Shapes Extended
    "\u1f7a0",     # Geometric Shapes Extended
    "\u1f7a1",     # Geometric Shapes Extended
    "\u1f7a2",     # Geometric Shapes Extended
    "\u1f7a3",     # Geometric Shapes Extended
    "\u1f7a4",     # Geometric Shapes Extended
    "\u1f7a5",     # Geometric Shapes Extended
    "\u1f7a6",     # Geometric Shapes Extended
    "\u1f7a7",     # Geometric Shapes Extended
    "\u1f7a8",     # Geometric Shapes Extended
    "\u1f7a9",     # Geometric Shapes Extended
    "\u1f7aa",     # Geometric Shapes Extended
    "\u1f7ab",     # Geometric Shapes Extended
    "\u1f7ac",     # Geometric Shapes Extended
    "\u1f7ad",     # Geometric Shapes Extended
    "\u1f7ae",     # Geometric Shapes Extended
    "\u1f7af",     # Geometric Shapes Extended
    "\u1f7b0",     # Geometric Shapes Extended
    "\u1f7b1",     # Geometric Shapes Extended
    "\u1f7b2",     # Geometric Shapes Extended
    "\u1f7b3",     # Geometric Shapes Extended
    "\u1f7b4",     # Geometric Shapes Extended
    "\u1f7b5",     # Geometric Shapes Extended
    "\u1f7b6",     # Geometric Shapes Extended
    "\u1f7b7",     # Geometric Shapes Extended
    "\u1f7b8",     # Geometric Shapes Extended
    "\u1f7b9",     # Geometric Shapes Extended
    "\u1f7ba",     # Geometric Shapes Extended
    "\u1f7bb",     # Geometric Shapes Extended
    "\u1f7bc",     # Geometric Shapes Extended
    "\u1f7bd",     # Geometric Shapes Extended
    "\u1f7be",     # Geometric Shapes Extended
    "\u1f7bf",     # Geometric Shapes Extended
    "\u1f7c0",     # Geometric Shapes Extended
    "\u1f7c1",     # Geometric Shapes Extended
    "\u1f7c2",     # Geometric Shapes Extended
    "\u1f7c3",     # Geometric Shapes Extended
    "\u1f7c4",     # Geometric Shapes Extended
    "\u1f7c5",     # Geometric Shapes Extended
    "\u1f7c6",     # Geometric Shapes Extended
    "\u1f7c7",     # Geometric Shapes Extended
    "\u1f7c8",     # Geometric Shapes Extended
    "\u1f7c9",     # Geometric Shapes Extended
    "\u1f7ca",     # Geometric Shapes Extended
    "\u1f7cb",     # Geometric Shapes Extended
    "\u1f7cc",     # Geometric Shapes Extended
    "\u1f7cd",     # Geometric Shapes Extended
    "\u1f7ce",     # Geometric Shapes Extended
    "\u1f7cf",     # Geometric Shapes Extended
    "\u1f7d0",     # Geometric Shapes Extended
    "\u1f7d1",     # Geometric Shapes Extended
    "\u1f7d2",     # Geometric Shapes Extended
    "\u1f7d3",     # Geometric Shapes Extended
    "\u1f7d4",     # Geometric Shapes Extended
    "\u1f7d5",     # Geometric Shapes Extended
    "\u1f7d6",     # Geometric Shapes Extended
    "\u1f7d7",     # Geometric Shapes Extended
    "\u1f7d8",     # Geometric Shapes Extended
    "\u1f7d9",     # Geometric Shapes Extended
    "\u1f7da",     # Geometric Shapes Extended
    "\u1f7db",     # Geometric Shapes Extended
    "\u1f7dc",     # Geometric Shapes Extended
    "\u1f7dd",     # Geometric Shapes Extended
    "\u1f7de",     # Geometric Shapes Extended
    "\u1f7df",     # Geometric Shapes Extended
    "\u1f7e0",     # Geometric Shapes Extended
    "\u1f7e1",     # Geometric Shapes Extended
    "\u1f7e2",     # Geometric Shapes Extended
    "\u1f7e3",     # Geometric Shapes Extended
    "\u1f7e4",     # Geometric Shapes Extended
    "\u1f7e5",     # Geometric Shapes Extended
    "\u1f7e6",     # Geometric Shapes Extended
    "\u1f7e7",     # Geometric Shapes Extended
    "\u1f7e8",     # Geometric Shapes Extended
    "\u1f7e9",     # Geometric Shapes Extended
    "\u1f7ea",     # Geometric Shapes Extended
    "\u1f7eb",     # Geometric Shapes Extended
    "\u1f7ec",     # Geometric Shapes Extended
    "\u1f7ed",     # Geometric Shapes Extended
    "\u1f7ee",     # Geometric Shapes Extended
    "\u1f7ef",     # Geometric Shapes Extended
    "\u1f7f0",     # Geometric Shapes Extended
    "\u1f7f1",     # Geometric Shapes Extended
    "\u1f7f2",     # Geometric Shapes Extended
    "\u1f7f3",     # Geometric Shapes Extended
    "\u1f7f4",     # Geometric Shapes Extended
    "\u1f7f5",     # Geometric Shapes Extended
    "\u1f7f6",     # Geometric Shapes Extended
    "\u1f7f7",     # Geometric Shapes Extended
    "\u1f7f8",     # Geometric Shapes Extended
    "\u1f7f9",     # Geometric Shapes Extended
    "\u1f7fa",     # Geometric Shapes Extended
    "\u1f7fb",     # Geometric Shapes Extended
    "\u1f7fc",     # Geometric Shapes Extended
    "\u1f7fd",     # Geometric Shapes Extended
    "\u1f7fe",     # Geometric Shapes Extended
    "\u1f7ff",     # Geometric Shapes Extended
    "\u1f800",     # Supplemental Arrows-C
    "\u1f801",     # Supplemental Arrows-C
    "\u1f802",     # Supplemental Arrows-C
    "\u1f803",     # Supplemental Arrows-C
    "\u1f804",     # Supplemental Arrows-C
    "\u1f805",     # Supplemental Arrows-C
    "\u1f806",     # Supplemental Arrows-C
    "\u1f807",     # Supplemental Arrows-C
    "\u1f808",     # Supplemental Arrows-C
    "\u1f809",     # Supplemental Arrows-C
    "\u1f80a",     # Supplemental Arrows-C
    "\u1f80b",     # Supplemental Arrows-C
    "\u1f80c",     # Supplemental Arrows-C
    "\u1f80d",     # Supplemental Arrows-C
    "\u1f80e",     # Supplemental Arrows-C
    "\u1f80f",     # Supplemental Arrows-C
    "\u1f810",     # Supplemental Arrows-C
    "\u1f811",     # Supplemental Arrows-C
    "\u1f812",     # Supplemental Arrows-C
    "\u1f813",     # Supplemental Arrows-C
    "\u1f814",     # Supplemental Arrows-C
    "\u1f815",     # Supplemental Arrows-C
    "\u1f816",     # Supplemental Arrows-C
    "\u1f817",     # Supplemental Arrows-C
    "\u1f818",     # Supplemental Arrows-C
    "\u1f819",     # Supplemental Arrows-C
    "\u1f81a",     # Supplemental Arrows-C
    "\u1f81b",     # Supplemental Arrows-C
    "\u1f81c",     # Supplemental Arrows-C
    "\u1f81d",     # Supplemental Arrows-C
    "\u1f81e",     # Supplemental Arrows-C
    "\u1f81f",     # Supplemental Arrows-C
    "\u1f820",     # Supplemental Arrows-C
    "\u1f821",     # Supplemental Arrows-C
    "\u1f822",     # Supplemental Arrows-C
    "\u1f823",     # Supplemental Arrows-C
    "\u1f824",     # Supplemental Arrows-C
    "\u1f825",     # Supplemental Arrows-C
    "\u1f826",     # Supplemental Arrows-C
    "\u1f827",     # Supplemental Arrows-C
    "\u1f828",     # Supplemental Arrows-C
    "\u1f829",     # Supplemental Arrows-C
    "\u1f82a",     # Supplemental Arrows-C
    "\u1f82b",     # Supplemental Arrows-C
    "\u1f82c",     # Supplemental Arrows-C
    "\u1f82d",     # Supplemental Arrows-C
    "\u1f82e",     # Supplemental Arrows-C
    "\u1f82f",     # Supplemental Arrows-C
    "\u1f830",     # Supplemental Arrows-C
    "\u1f831",     # Supplemental Arrows-C
    "\u1f832",     # Supplemental Arrows-C
    "\u1f833",     # Supplemental Arrows-C
    "\u1f834",     # Supplemental Arrows-C
    "\u1f835",     # Supplemental Arrows-C
    "\u1f836",     # Supplemental Arrows-C
    "\u1f837",     # Supplemental Arrows-C
    "\u1f838",     # Supplemental Arrows-C
    "\u1f839",     # Supplemental Arrows-C
    "\u1f83a",     # Supplemental Arrows-C
    "\u1f83b",     # Supplemental Arrows-C
    "\u1f83c",     # Supplemental Arrows-C
    "\u1f83d",     # Supplemental Arrows-C
    "\u1f83e",     # Supplemental Arrows-C
    "\u1f83f",     # Supplemental Arrows-C
    "\u1f840",     # Supplemental Arrows-C
    "\u1f841",     # Supplemental Arrows-C
    "\u1f842",     # Supplemental Arrows-C
    "\u1f843",     # Supplemental Arrows-C
    "\u1f844",     # Supplemental Arrows-C
    "\u1f845",     # Supplemental Arrows-C
    "\u1f846",     # Supplemental Arrows-C
    "\u1f847",     # Supplemental Arrows-C
    "\u1f848",     # Supplemental Arrows-C
    "\u1f849",     # Supplemental Arrows-C
    "\u1f84a",     # Supplemental Arrows-C
    "\u1f84b",     # Supplemental Arrows-C
    "\u1f84c",     # Supplemental Arrows-C
    "\u1f84d",     # Supplemental Arrows-C
    "\u1f84e",     # Supplemental Arrows-C
    "\u1f84f",     # Supplemental Arrows-C
    "\u1f850",     # Supplemental Arrows-C
    "\u1f851",     # Supplemental Arrows-C
    "\u1f852",     # Supplemental Arrows-C
    "\u1f853",     # Supplemental Arrows-C
    "\u1f854",     # Supplemental Arrows-C
    "\u1f855",     # Supplemental Arrows-C
    "\u1f856",     # Supplemental Arrows-C
    "\u1f857",     # Supplemental Arrows-C
    "\u1f858",     # Supplemental Arrows-C
    "\u1f859",     # Supplemental Arrows-C
    "\u1f85a",     # Supplemental Arrows-C
    "\u1f85b",     # Supplemental Arrows-C
    "\u1f85c",     # Supplemental Arrows-C
    "\u1f85d",     # Supplemental Arrows-C
    "\u1f85e",     # Supplemental Arrows-C
    "\u1f85f",     # Supplemental Arrows-C
    "\u1f860",     # Supplemental Arrows-C
    "\u1f861",     # Supplemental Arrows-C
    "\u1f862",     # Supplemental Arrows-C
    "\u1f863",     # Supplemental Arrows-C
    "\u1f864",     # Supplemental Arrows-C
    "\u1f865",     # Supplemental Arrows-C
    "\u1f866",     # Supplemental Arrows-C
    "\u1f867",     # Supplemental Arrows-C
    "\u1f868",     # Supplemental Arrows-C
    "\u1f869",     # Supplemental Arrows-C
    "\u1f86a",     # Supplemental Arrows-C
    "\u1f86b",     # Supplemental Arrows-C
    "\u1f86c",     # Supplemental Arrows-C
    "\u1f86d",     # Supplemental Arrows-C
    "\u1f86e",     # Supplemental Arrows-C
    "\u1f86f",     # Supplemental Arrows-C
    "\u1f870",     # Supplemental Arrows-C
    "\u1f871",     # Supplemental Arrows-C
    "\u1f872",     # Supplemental Arrows-C
    "\u1f873",     # Supplemental Arrows-C
    "\u1f874",     # Supplemental Arrows-C
    "\u1f875",     # Supplemental Arrows-C
    "\u1f876",     # Supplemental Arrows-C
    "\u1f877",     # Supplemental Arrows-C
    "\u1f878",     # Supplemental Arrows-C
    "\u1f879",     # Supplemental Arrows-C
    "\u1f87a",     # Supplemental Arrows-C
    "\u1f87b",     # Supplemental Arrows-C
    "\u1f87c",     # Supplemental Arrows-C
    "\u1f87d",     # Supplemental Arrows-C
    "\u1f87e",     # Supplemental Arrows-C
    "\u1f87f",     # Supplemental Arrows-C
    "\u1f880",     # Supplemental Arrows-C
    "\u1f881",     # Supplemental Arrows-C
    "\u1f882",     # Supplemental Arrows-C
    "\u1f883",     # Supplemental Arrows-C
    "\u1f884",     # Supplemental Arrows-C
    "\u1f885",     # Supplemental Arrows-C
    "\u1f886",     # Supplemental Arrows-C
    "\u1f887",     # Supplemental Arrows-C
    "\u1f888",     # Supplemental Arrows-C
    "\u1f889",     # Supplemental Arrows-C
    "\u1f88a",     # Supplemental Arrows-C
    "\u1f88b",     # Supplemental Arrows-C
    "\u1f88c",     # Supplemental Arrows-C
    "\u1f88d",     # Supplemental Arrows-C
    "\u1f88e",     # Supplemental Arrows-C
    "\u1f88f",     # Supplemental Arrows-C
    "\u1f890",     # Supplemental Arrows-C
    "\u1f891",     # Supplemental Arrows-C
    "\u1f892",     # Supplemental Arrows-C
    "\u1f893",     # Supplemental Arrows-C
    "\u1f894",     # Supplemental Arrows-C
    "\u1f895",     # Supplemental Arrows-C
    "\u1f896",     # Supplemental Arrows-C
    "\u1f897",     # Supplemental Arrows-C
    "\u1f898",     # Supplemental Arrows-C
    "\u1f899",     # Supplemental Arrows-C
    "\u1f89a",     # Supplemental Arrows-C
    "\u1f89b",     # Supplemental Arrows-C
    "\u1f89c",     # Supplemental Arrows-C
    "\u1f89d",     # Supplemental Arrows-C
    "\u1f89e",     # Supplemental Arrows-C
    "\u1f89f",     # Supplemental Arrows-C
    "\u1f8a0",     # Supplemental Arrows-C
    "\u1f8a1",     # Supplemental Arrows-C
    "\u1f8a2",     # Supplemental Arrows-C
    "\u1f8a3",     # Supplemental Arrows-C
    "\u1f8a4",     # Supplemental Arrows-C
    "\u1f8a5",     # Supplemental Arrows-C
    "\u1f8a6",     # Supplemental Arrows-C
    "\u1f8a7",     # Supplemental Arrows-C
    "\u1f8a8",     # Supplemental Arrows-C
    "\u1f8a9",     # Supplemental Arrows-C
    "\u1f8aa",     # Supplemental Arrows-C
    "\u1f8ab",     # Supplemental Arrows-C
    "\u1f8ac",     # Supplemental Arrows-C
    "\u1f8ad",     # Supplemental Arrows-C
    "\u1f8ae",     # Supplemental Arrows-C
    "\u1f8af",     # Supplemental Arrows-C
    "\u1f8b0",     # Supplemental Arrows-C
    "\u1f8b1",     # Supplemental Arrows-C
    "\u1f8b2",     # Supplemental Arrows-C
    "\u1f8b3",     # Supplemental Arrows-C
    "\u1f8b4",     # Supplemental Arrows-C
    "\u1f8b5",     # Supplemental Arrows-C
    "\u1f8b6",     # Supplemental Arrows-C
    "\u1f8b7",     # Supplemental Arrows-C
    "\u1f8b8",     # Supplemental Arrows-C
    "\u1f8b9",     # Supplemental Arrows-C
    "\u1f8ba",     # Supplemental Arrows-C
    "\u1f8bb",     # Supplemental Arrows-C
    "\u1f8bc",     # Supplemental Arrows-C
    "\u1f8bd",     # Supplemental Arrows-C
    "\u1f8be",     # Supplemental Arrows-C
    "\u1f8bf",     # Supplemental Arrows-C
    "\u1f8c0",     # Supplemental Arrows-C
    "\u1f8c1",     # Supplemental Arrows-C
    "\u1f8c2",     # Supplemental Arrows-C
    "\u1f8c3",     # Supplemental Arrows-C
    "\u1f8c4",     # Supplemental Arrows-C
    "\u1f8c5",     # Supplemental Arrows-C
    "\u1f8c6",     # Supplemental Arrows-C
    "\u1f8c7",     # Supplemental Arrows-C
    "\u1f8c8",     # Supplemental Arrows-C
    "\u1f8c9",     # Supplemental Arrows-C
    "\u1f8ca",     # Supplemental Arrows-C
    "\u1f8cb",     # Supplemental Arrows-C
    "\u1f8cc",     # Supplemental Arrows-C
    "\u1f8cd",     # Supplemental Arrows-C
    "\u1f8ce",     # Supplemental Arrows-C
    "\u1f8cf",     # Supplemental Arrows-C
    "\u1f8d0",     # Supplemental Arrows-C
    "\u1f8d1",     # Supplemental Arrows-C
    "\u1f8d2",     # Supplemental Arrows-C
    "\u1f8d3",     # Supplemental Arrows-C
    "\u1f8d4",     # Supplemental Arrows-C
    "\u1f8d5",     # Supplemental Arrows-C
    "\u1f8d6",     # Supplemental Arrows-C
    "\u1f8d7",     # Supplemental Arrows-C
    "\u1f8d8",     # Supplemental Arrows-C
    "\u1f8d9",     # Supplemental Arrows-C
    "\u1f8da",     # Supplemental Arrows-C
    "\u1f8db",     # Supplemental Arrows-C
    "\u1f8dc",     # Supplemental Arrows-C
    "\u1f8dd",     # Supplemental Arrows-C
    "\u1f8de",     # Supplemental Arrows-C
    "\u1f8df",     # Supplemental Arrows-C
    "\u1f8e0",     # Supplemental Arrows-C
    "\u1f8e1",     # Supplemental Arrows-C
    "\u1f8e2",     # Supplemental Arrows-C
    "\u1f8e3",     # Supplemental Arrows-C
    "\u1f8e4",     # Supplemental Arrows-C
    "\u1f8e5",     # Supplemental Arrows-C
    "\u1f8e6",     # Supplemental Arrows-C
    "\u1f8e7",     # Supplemental Arrows-C
    "\u1f8e8",     # Supplemental Arrows-C
    "\u1f8e9",     # Supplemental Arrows-C
    "\u1f8ea",     # Supplemental Arrows-C
    "\u1f8eb",     # Supplemental Arrows-C
    "\u1f8ec",     # Supplemental Arrows-C
    "\u1f8ed",     # Supplemental Arrows-C
    "\u1f8ee",     # Supplemental Arrows-C
    "\u1f8ef",     # Supplemental Arrows-C
    "\u1f8f0",     # Supplemental Arrows-C
    "\u1f8f1",     # Supplemental Arrows-C
    "\u1f8f2",     # Supplemental Arrows-C
    "\u1f8f3",     # Supplemental Arrows-C
    "\u1f8f4",     # Supplemental Arrows-C
    "\u1f8f5",     # Supplemental Arrows-C
    "\u1f8f6",     # Supplemental Arrows-C
    "\u1f8f7",     # Supplemental Arrows-C
    "\u1f8f8",     # Supplemental Arrows-C
    "\u1f8f9",     # Supplemental Arrows-C
    "\u1f8fa",     # Supplemental Arrows-C
    "\u1f8fb",     # Supplemental Arrows-C
    "\u1f8fc",     # Supplemental Arrows-C
    "\u1f8fd",     # Supplemental Arrows-C
    "\u1f8fe",     # Supplemental Arrows-C
    "\u1f8ff",     # Supplemental Arrows-C
    ]
    test_data.each do |string|
      assert @validator.valid_encoding?(string), "good unicode specs 04: #{string}"
      assert string.force_encoding("UTF-8").valid_encoding?,
        "good unicode specs 04 19: #{string}"  if @vercheck
    end
  end

  # Test \u3164 (0xe385a4)
  def test_0800_hangul_filler
    test_data = [
    "a\u3164b",           # The 0 length filler
    "a\xe3\x85\xa4b",     # The 0 length filler
    "\u3163\u3164\u3165", # The 0 length filler
    ]
    test_data.each do |string|
      assert @validator.valid_encoding?(string), "hangul filler A: #{string}"
      assert string.force_encoding("UTF-8").valid_encoding?,
        "hangul filler B: #{string}"  if @vercheck
    end
  end

  def test_0810_zero_len_fillers
    test_data = [
    "A\u200bZ",     # zero len filler ?
    "A\u200cZ",     # zero len filler ?
    "A\u200dZ",     # zero len filler ?
    ]
    test_data.each do |string|
      assert @validator.valid_encoding?(string), "zero_len_fillers A: #{string}"
      assert string.force_encoding("UTF-8").valid_encoding?,
        "zero_len_fillers B: #{string}"  if @vercheck
    end
  end

  # grapheme clusters
  def test_0850_grapheme_clusters
    test_data = [
    "\u0067",                # 0067 ( g ) LATIN SMALL LETTER G
    "\u0308",                # 0308 ( ◌̈ ) COMBINING DIAERESIS
    "\u0067\u0308",     # Combined
    "\uac01",                 # AC01 ( 각 ) HANGUL SYLLABLE GAG
    "\u1100",               # 1100 ( ᄀ ) HANGUL CHOSEONG KIYEOK
    "\u1161",               # 1161 ( ᅡ ) HANGUL JUNGSEONG A
    "\u11a8",               # 11A8 ( ᆨ ) HANGUL JONGSEONG KIYEOK
    "\uac01\u1100\u1161\u11a8",  # Combined
    # THAI
    "\u0e01",               # ก 	0E01 ( ก ) THAI CHARACTER KO KAI 	Thai ko
    # THAI
    "\u0e01",               # ก 	0E01 ( ก ) THAI CHARACTER KO KAI 	Thai ko
    "\u0e33",               # 0E33 ( ำ ) THAI CHARACTER SARA AM
    "\u0e01\u0e33",
    # Extended grapheme clusters
    "\u0ba8",             # நி 	0BA8 ( ந ) TAMIL LETTER NA
    "\u0bbf",             # 0BBF ( ி ) TAMIL VOWEL SIGN I 	Tamil ni
    "\u0e40",             # เ 	0E40 ( เ ) THAI CHARACTER SARA E 	Thai e
    "\u0e01",             # กำ 	0E01 ( ก ) THAI CHARACTER KO KAI
    "\u0e33",             # 0E33 ( ำ ) THAI CHARACTER SARA AM 	Thai kam
    "\u0937",             # षि 	0937 ( ष ) DEVANAGARI LETTER SSA
    "\u093f",             # 093F ( ि ) DEVANAGARI VOWEL SIGN I 	Devanagari ssi
    "\u0ba8\u0bbf\u0e40\u0e01\u0e33\u0937\u093f", # Combined
    # Legacy grapheme clusters
    "\u0e33",             # ำ 	0E33 ( ำ ) THAI CHARACTER SARA AM 	Thai am
    "\u0937",             # ष 	0937 ( ष ) DEVANAGARI LETTER SSA 	Devanagari ssa
    "\u093f",             # ि 	093F ( ि ) DEVANAGARI VOWEL SIGN I 	Devanagari i
    "\u0e33\u0937\u093f", # Combined
    # Tailored grapheme clusters
    "\u0063",             # ch 	0063 ( c ) LATIN SMALL LETTER C
    "\u0068",             # 0068 ( h ) LATIN SMALL LETTER H 	Slovak ch digraph
    "\u0063\u0068",  # Combined
    "\u006b",             # kw 	006B ( k ) LATIN SMALL LETTER K
    "\u02b7",             # 02B7 ( ʷ ) MODIFIER LETTER SMALL W 	sequence with letter modifier
    "\u006b\u02b7",  # Combined
    "\u0915",             # क्षि 	0915 ( क ) DEVANAGARI LETTER KA
    "\u094d",             # 094D ( ् ) DEVANAGARI SIGN VIRAMA
    "\u0937",             # 0937 ( ष ) DEVANAGARI LETTER SSA
    "\u093f",             # 093F ( ि ) DEVANAGARI VOWEL SIGN I 	Devanagari kshi
    "\u0915\u094d\u0937\u093f",
  ]
    test_data.each do |string|
      assert @validator.valid_encoding?(string), "grapheme clusters A: #{string}"
      assert string.force_encoding("UTF-8").valid_encoding?,
        "grapheme clusters B: #{string}"  if @vercheck
    end
  end # of method

  def test_0890_named_sequences
    test_data = [
      # NamedSequences-9.0.0.txt
      # Date: 2016-05-26, 00:00:00 GMT [KW, LI]
      # © 2016 Unicode®, Inc.
      # For terms of use, see http://www.unicode.org/terms_of_use.html
      #
      # Unicode Character Database
      # For documentation, see http://www.unicode.org/reports/tr44/
      #
      # Unicode Named Character Sequences
      #
      # This file is a normative contributory data file in the Unicode
      # Character Database.
      #
      # Format:
      # Name of Sequence; Code Point Sequence for USI
      #
      # Code point sequences in the Unicode Character Database
      # use spaces as delimiters. The corresponding format for a
      # UCS Sequence Identifier (USI) in ISO/IEC 10646 uses
      # comma delimitation and angle brackets. Thus, a Unicode
      # named character sequence of the form:
      #
      # EXAMPLE NAME;1000 1001 1002
      #
      # in this data file, would correspond to an ISO/IEC 10646 USI
      # as follows:
      #
      # <1000, 1001, 1002>
      #
      # For more information, see UAX #34: Unicode Named Character
      # Sequences, at http://www.unicode.org/unicode/reports/tr34/
      #
      # Note: The order of entries in this file is not significant.
      # However, entries are generally in script order corresponding
      # to block order in the Unicode Standard, to make it easier
      # to find entries in the list.
      # ================================================
      # Latin letter plus accent combinations.
      # These are part of the original set of approved named sequences
      # for Unicode 4.1. 2005.
           "\u0100\u0300",            #    LATIN CAPITAL LETTER A WITH MACRON AND GRAVE
           "\u0101\u0300",            #    LATIN SMALL LETTER A WITH MACRON AND GRAVE
           "\u0045\u0329",            #    LATIN CAPITAL LETTER E WITH VERTICAL LINE BELOW
           "\u0065\u0329",            #    LATIN SMALL LETTER E WITH VERTICAL LINE BELOW
           "\u00C8\u0329",            #    LATIN CAPITAL LETTER E WITH VERTICAL LINE BELOW AND GRAVE
           "\u00E8\u0329",            #    LATIN SMALL LETTER E WITH VERTICAL LINE BELOW AND GRAVE
           "\u00C9\u0329",            #    LATIN CAPITAL LETTER E WITH VERTICAL LINE BELOW AND ACUTE
           "\u00E9\u0329",            #    LATIN SMALL LETTER E WITH VERTICAL LINE BELOW AND ACUTE
           "\u00CA\u0304",            #    LATIN CAPITAL LETTER E WITH CIRCUMFLEX AND MACRON
           "\u00EA\u0304",            #    LATIN SMALL LETTER E WITH CIRCUMFLEX AND MACRON
           "\u00CA\u030C",            #    LATIN CAPITAL LETTER E WITH CIRCUMFLEX AND CARON
           "\u00EA\u030C",            #    LATIN SMALL LETTER E WITH CIRCUMFLEX AND CARON
           "\u012A\u0300",            #    LATIN CAPITAL LETTER I WITH MACRON AND GRAVE
           "\u012B\u0300",            #    LATIN SMALL LETTER I WITH MACRON AND GRAVE
           "\u0069\u0307",            #    LATIN SMALL LETTER I WITH DOT ABOVE AND ACUTE
           "\u006E\u0360",            #    LATIN SMALL LETTER NG WITH TILDE ABOVE
           "\u004F\u0329",            #    LATIN CAPITAL LETTER O WITH VERTICAL LINE BELOW
           "\u006F\u0329",            #    LATIN SMALL LETTER O WITH VERTICAL LINE BELOW
           "\u00D2\u0329",            #    LATIN CAPITAL LETTER O WITH VERTICAL LINE BELOW AND GRAVE
           "\u00F2\u0329",            #    LATIN SMALL LETTER O WITH VERTICAL LINE BELOW AND GRAVE
           "\u00D3\u0329",            #    LATIN CAPITAL LETTER O WITH VERTICAL LINE BELOW AND ACUTE
           "\u00F3\u0329",            #    LATIN SMALL LETTER O WITH VERTICAL LINE BELOW AND ACUTE
           "\u0053\u0329",            #    LATIN CAPITAL LETTER S WITH VERTICAL LINE BELOW
           "\u0073\u0329",            #    LATIN SMALL LETTER S WITH VERTICAL LINE BELOW
           "\u016A\u0300",            #    LATIN CAPITAL LETTER U WITH MACRON AND GRAVE
           "\u016B\u0300",            #    LATIN SMALL LETTER U WITH MACRON AND GRAVE
      # Additions for Lithuanian.
      # Provisional 2006-05-18, Approved 2007-10-19
           "\u0104\u0301",            #    LATIN CAPITAL LETTER A WITH OGONEK AND ACUTE
           "\u0105\u0301",            #    LATIN SMALL LETTER A WITH OGONEK AND ACUTE
           "\u0104\u0303",            #    LATIN CAPITAL LETTER A WITH OGONEK AND TILDE
           "\u0105\u0303",            #    LATIN SMALL LETTER A WITH OGONEK AND TILDE
           "\u0118\u0301",            #    LATIN CAPITAL LETTER E WITH OGONEK AND ACUTE
           "\u0119\u0301",            #    LATIN SMALL LETTER E WITH OGONEK AND ACUTE
           "\u0118\u0303",            #    LATIN CAPITAL LETTER E WITH OGONEK AND TILDE
           "\u0119\u0303",            #    LATIN SMALL LETTER E WITH OGONEK AND TILDE
           "\u0116\u0301",            #    LATIN CAPITAL LETTER E WITH DOT ABOVE AND ACUTE
           "\u0117\u0301",            #    LATIN SMALL LETTER E WITH DOT ABOVE AND ACUTE
           "\u0116\u0303",            #    LATIN CAPITAL LETTER E WITH DOT ABOVE AND TILDE
           "\u0117\u0303",            #    LATIN SMALL LETTER E WITH DOT ABOVE AND TILDE
           "\u0069\u0307",            #    LATIN SMALL LETTER I WITH DOT ABOVE AND GRAVE
           "\u0069\u0307",            #    LATIN SMALL LETTER I WITH DOT ABOVE AND TILDE
           "\u012E\u0301",            #    LATIN CAPITAL LETTER I WITH OGONEK AND ACUTE
           "\u012F\u0307",            #    LATIN SMALL LETTER I WITH OGONEK AND DOT ABOVE AND ACUTE
           "\u012E\u0303",            #    LATIN CAPITAL LETTER I WITH OGONEK AND TILDE
           "\u012F\u0307",            #    LATIN SMALL LETTER I WITH OGONEK AND DOT ABOVE AND TILDE
           "\u004A\u0303",            #    LATIN CAPITAL LETTER J WITH TILDE
           "\u006A\u0307",            #    LATIN SMALL LETTER J WITH DOT ABOVE AND TILDE
           "\u004C\u0303",            #    LATIN CAPITAL LETTER L WITH TILDE
           "\u006C\u0303",            #    LATIN SMALL LETTER L WITH TILDE
           "\u004D\u0303",            #    LATIN CAPITAL LETTER M WITH TILDE
           "\u006D\u0303",            #    LATIN SMALL LETTER M WITH TILDE
           "\u0052\u0303",            #    LATIN CAPITAL LETTER R WITH TILDE
           "\u0072\u0303",            #    LATIN SMALL LETTER R WITH TILDE
           "\u0172\u0301",            #    LATIN CAPITAL LETTER U WITH OGONEK AND ACUTE
           "\u0173\u0301",            #    LATIN SMALL LETTER U WITH OGONEK AND ACUTE
           "\u0172\u0303",            #    LATIN CAPITAL LETTER U WITH OGONEK AND TILDE
           "\u0173\u0303",            #    LATIN SMALL LETTER U WITH OGONEK AND TILDE
           "\u016A\u0301",            #    LATIN CAPITAL LETTER U WITH MACRON AND ACUTE
           "\u016B\u0301",            #    LATIN SMALL LETTER U WITH MACRON AND ACUTE
           "\u016A\u0303",            #    LATIN CAPITAL LETTER U WITH MACRON AND TILDE
           "\u016B\u0303",            #    LATIN SMALL LETTER U WITH MACRON AND TILDE
      # Entries for JIS X 0213 compatibility mapping.
      # Provisional 2008-11-07, Approved 2010-05-14
           "\u00E6\u0300",            #    LATIN SMALL LETTER AE WITH GRAVE
           "\u0254\u0300",            #    LATIN SMALL LETTER OPEN O WITH GRAVE
           "\u0254\u0301",            #    LATIN SMALL LETTER OPEN O WITH ACUTE
           "\u028C\u0300",            #    LATIN SMALL LETTER TURNED V WITH GRAVE
           "\u028C\u0301",            #    LATIN SMALL LETTER TURNED V WITH ACUTE
           "\u0259\u0300",            #    LATIN SMALL LETTER SCHWA WITH GRAVE
           "\u0259\u0301",            #    LATIN SMALL LETTER SCHWA WITH ACUTE
           "\u025A\u0300",            #    LATIN SMALL LETTER HOOKED SCHWA WITH GRAVE
           "\u025A\u0301",            #    LATIN SMALL LETTER HOOKED SCHWA WITH ACUTE
      # Entries for Uyghur and Chagatai.
      # Provisional N/A, Approved 2012-11-08
           "\u0626\u0627",            #    ARABIC SEQUENCE YEH WITH HAMZA ABOVE WITH ALEF
           "\u0626\u0648",            #    ARABIC SEQUENCE YEH WITH HAMZA ABOVE WITH WAW
           "\u0626\u0649",            #    ARABIC SEQUENCE YEH WITH HAMZA ABOVE WITH ALEF MAKSURA
           "\u0626\u06C6",            #    ARABIC SEQUENCE YEH WITH HAMZA ABOVE WITH OE
           "\u0626\u06C7",            #    ARABIC SEQUENCE YEH WITH HAMZA ABOVE WITH U
           "\u0626\u06C8",            #    ARABIC SEQUENCE YEH WITH HAMZA ABOVE WITH YU
           "\u0626\u06D0",            #    ARABIC SEQUENCE YEH WITH HAMZA ABOVE WITH E
           "\u0626\u06D5",            #    ARABIC SEQUENCE YEH WITH HAMZA ABOVE WITH AE
           "\u0646\u06A9",            #    ARABIC SEQUENCE NOON WITH KEHEH
      # Entry for a Bangla entity.
      # Provisional 2009-08-10, Approved 2010-05-14
      #
      # Note that this same sequence is also used for the ASSAMESE LETTER KSSA.
           "\u0995\u09CD",            #    BENGALI LETTER KHINYA
      # Additions for Tamil.
      # Provisional 2008-02-08, Approved 2009-08-14
      #
      # A visual display of the Tamil named character sequences is available
      # in the documentation for the Unicode Standard. See Section 12.6, Tamil in
      # http://www.unicode.org/versions/latest/
           "\u0B95\u0BCD",            #    TAMIL CONSONANT K
           "\u0B99\u0BCD",            #    TAMIL CONSONANT NG
           "\u0B9A\u0BCD",            #    TAMIL CONSONANT C
           "\u0B9E\u0BCD",            #    TAMIL CONSONANT NY
           "\u0B9F\u0BCD",            #    TAMIL CONSONANT TT
           "\u0BA3\u0BCD",            #    TAMIL CONSONANT NN
           "\u0BA4\u0BCD",            #    TAMIL CONSONANT T
           "\u0BA8\u0BCD",            #    TAMIL CONSONANT N
           "\u0BAA\u0BCD",            #    TAMIL CONSONANT P
           "\u0BAE\u0BCD",            #    TAMIL CONSONANT M
           "\u0BAF\u0BCD",            #    TAMIL CONSONANT Y
           "\u0BB0\u0BCD",            #    TAMIL CONSONANT R
           "\u0BB2\u0BCD",            #    TAMIL CONSONANT L
           "\u0BB5\u0BCD",            #    TAMIL CONSONANT V
           "\u0BB4\u0BCD",            #    TAMIL CONSONANT LLL
           "\u0BB3\u0BCD",            #    TAMIL CONSONANT LL
           "\u0BB1\u0BCD",            #    TAMIL CONSONANT RR
           "\u0BA9\u0BCD",            #    TAMIL CONSONANT NNN
           "\u0B9C\u0BCD",            #    TAMIL CONSONANT J
           "\u0BB6\u0BCD",            #    TAMIL CONSONANT SH
           "\u0BB7\u0BCD",            #    TAMIL CONSONANT SS
           "\u0BB8\u0BCD",            #    TAMIL CONSONANT S
           "\u0BB9\u0BCD",            #    TAMIL CONSONANT H
           "\u0B95\u0BCD",            #    TAMIL CONSONANT KSS
           "\u0B95\u0BBE",            #    TAMIL SYLLABLE KAA
           "\u0B95\u0BBF",            #    TAMIL SYLLABLE KI
           "\u0B95\u0BC0",            #    TAMIL SYLLABLE KII
           "\u0B95\u0BC1",            #    TAMIL SYLLABLE KU
           "\u0B95\u0BC2",            #    TAMIL SYLLABLE KUU
           "\u0B95\u0BC6",            #    TAMIL SYLLABLE KE
           "\u0B95\u0BC7",            #    TAMIL SYLLABLE KEE
           "\u0B95\u0BC8",            #    TAMIL SYLLABLE KAI
           "\u0B95\u0BCA",            #    TAMIL SYLLABLE KO
           "\u0B95\u0BCB",            #    TAMIL SYLLABLE KOO
           "\u0B95\u0BCC",            #    TAMIL SYLLABLE KAU
           "\u0B99\u0BBE",            #    TAMIL SYLLABLE NGAA
           "\u0B99\u0BBF",            #    TAMIL SYLLABLE NGI
           "\u0B99\u0BC0",            #    TAMIL SYLLABLE NGII
           "\u0B99\u0BC1",            #    TAMIL SYLLABLE NGU
           "\u0B99\u0BC2",            #    TAMIL SYLLABLE NGUU
           "\u0B99\u0BC6",            #    TAMIL SYLLABLE NGE
           "\u0B99\u0BC7",            #    TAMIL SYLLABLE NGEE
           "\u0B99\u0BC8",            #    TAMIL SYLLABLE NGAI
           "\u0B99\u0BCA",            #    TAMIL SYLLABLE NGO
           "\u0B99\u0BCB",            #    TAMIL SYLLABLE NGOO
           "\u0B99\u0BCC",            #    TAMIL SYLLABLE NGAU
           "\u0B9A\u0BBE",            #    TAMIL SYLLABLE CAA
           "\u0B9A\u0BBF",            #    TAMIL SYLLABLE CI
           "\u0B9A\u0BC0",            #    TAMIL SYLLABLE CII
           "\u0B9A\u0BC1",            #    TAMIL SYLLABLE CU
           "\u0B9A\u0BC2",            #    TAMIL SYLLABLE CUU
           "\u0B9A\u0BC6",            #    TAMIL SYLLABLE CE
           "\u0B9A\u0BC7",            #    TAMIL SYLLABLE CEE
           "\u0B9A\u0BC8",            #    TAMIL SYLLABLE CAI
           "\u0B9A\u0BCA",            #    TAMIL SYLLABLE CO
           "\u0B9A\u0BCB",            #    TAMIL SYLLABLE COO
           "\u0B9A\u0BCC",            #    TAMIL SYLLABLE CAU
           "\u0B9E\u0BBE",            #    TAMIL SYLLABLE NYAA
           "\u0B9E\u0BBF",            #    TAMIL SYLLABLE NYI
           "\u0B9E\u0BC0",            #    TAMIL SYLLABLE NYII
           "\u0B9E\u0BC1",            #    TAMIL SYLLABLE NYU
           "\u0B9E\u0BC2",            #    TAMIL SYLLABLE NYUU
           "\u0B9E\u0BC6",            #    TAMIL SYLLABLE NYE
           "\u0B9E\u0BC7",            #    TAMIL SYLLABLE NYEE
           "\u0B9E\u0BC8",            #    TAMIL SYLLABLE NYAI
           "\u0B9E\u0BCA",            #    TAMIL SYLLABLE NYO
           "\u0B9E\u0BCB",            #    TAMIL SYLLABLE NYOO
           "\u0B9E\u0BCC",            #    TAMIL SYLLABLE NYAU
           "\u0B9F\u0BBE",            #    TAMIL SYLLABLE TTAA
           "\u0B9F\u0BBF",            #    TAMIL SYLLABLE TTI
           "\u0B9F\u0BC0",            #    TAMIL SYLLABLE TTII
           "\u0B9F\u0BC1",            #    TAMIL SYLLABLE TTU
           "\u0B9F\u0BC2",            #    TAMIL SYLLABLE TTUU
           "\u0B9F\u0BC6",            #    TAMIL SYLLABLE TTE
           "\u0B9F\u0BC7",            #    TAMIL SYLLABLE TTEE
           "\u0B9F\u0BC8",            #    TAMIL SYLLABLE TTAI
           "\u0B9F\u0BCA",            #    TAMIL SYLLABLE TTO
           "\u0B9F\u0BCB",            #    TAMIL SYLLABLE TTOO
           "\u0B9F\u0BCC",            #    TAMIL SYLLABLE TTAU
           "\u0BA3\u0BBE",            #    TAMIL SYLLABLE NNAA
           "\u0BA3\u0BBF",            #    TAMIL SYLLABLE NNI
           "\u0BA3\u0BC0",            #    TAMIL SYLLABLE NNII
           "\u0BA3\u0BC1",            #    TAMIL SYLLABLE NNU
           "\u0BA3\u0BC2",            #    TAMIL SYLLABLE NNUU
           "\u0BA3\u0BC6",            #    TAMIL SYLLABLE NNE
           "\u0BA3\u0BC7",            #    TAMIL SYLLABLE NNEE
           "\u0BA3\u0BC8",            #    TAMIL SYLLABLE NNAI
           "\u0BA3\u0BCA",            #    TAMIL SYLLABLE NNO
           "\u0BA3\u0BCB",            #    TAMIL SYLLABLE NNOO
           "\u0BA3\u0BCC",            #    TAMIL SYLLABLE NNAU
           "\u0BA4\u0BBE",            #    TAMIL SYLLABLE TAA
           "\u0BA4\u0BBF",            #    TAMIL SYLLABLE TI
           "\u0BA4\u0BC0",            #    TAMIL SYLLABLE TII
           "\u0BA4\u0BC1",            #    TAMIL SYLLABLE TU
           "\u0BA4\u0BC2",            #    TAMIL SYLLABLE TUU
           "\u0BA4\u0BC6",            #    TAMIL SYLLABLE TE
           "\u0BA4\u0BC7",            #    TAMIL SYLLABLE TEE
           "\u0BA4\u0BC8",            #    TAMIL SYLLABLE TAI
           "\u0BA4\u0BCA",            #    TAMIL SYLLABLE TO
           "\u0BA4\u0BCB",            #    TAMIL SYLLABLE TOO
           "\u0BA4\u0BCC",            #    TAMIL SYLLABLE TAU
           "\u0BA8\u0BBE",            #    TAMIL SYLLABLE NAA
           "\u0BA8\u0BBF",            #    TAMIL SYLLABLE NI
           "\u0BA8\u0BC0",            #    TAMIL SYLLABLE NII
           "\u0BA8\u0BC1",            #    TAMIL SYLLABLE NU
           "\u0BA8\u0BC2",            #    TAMIL SYLLABLE NUU
           "\u0BA8\u0BC6",            #    TAMIL SYLLABLE NE
           "\u0BA8\u0BC7",            #    TAMIL SYLLABLE NEE
           "\u0BA8\u0BC8",            #    TAMIL SYLLABLE NAI
           "\u0BA8\u0BCA",            #    TAMIL SYLLABLE NO
           "\u0BA8\u0BCB",            #    TAMIL SYLLABLE NOO
           "\u0BA8\u0BCC",            #    TAMIL SYLLABLE NAU
           "\u0BAA\u0BBE",            #    TAMIL SYLLABLE PAA
           "\u0BAA\u0BBF",            #    TAMIL SYLLABLE PI
           "\u0BAA\u0BC0",            #    TAMIL SYLLABLE PII
           "\u0BAA\u0BC1",            #    TAMIL SYLLABLE PU
           "\u0BAA\u0BC2",            #    TAMIL SYLLABLE PUU
           "\u0BAA\u0BC6",            #    TAMIL SYLLABLE PE
           "\u0BAA\u0BC7",            #    TAMIL SYLLABLE PEE
           "\u0BAA\u0BC8",            #    TAMIL SYLLABLE PAI
           "\u0BAA\u0BCA",            #    TAMIL SYLLABLE PO
           "\u0BAA\u0BCB",            #    TAMIL SYLLABLE POO
           "\u0BAA\u0BCC",            #    TAMIL SYLLABLE PAU
           "\u0BAE\u0BBE",            #    TAMIL SYLLABLE MAA
           "\u0BAE\u0BBF",            #    TAMIL SYLLABLE MI
           "\u0BAE\u0BC0",            #    TAMIL SYLLABLE MII
           "\u0BAE\u0BC1",            #    TAMIL SYLLABLE MU
           "\u0BAE\u0BC2",            #    TAMIL SYLLABLE MUU
           "\u0BAE\u0BC6",            #    TAMIL SYLLABLE ME
           "\u0BAE\u0BC7",            #    TAMIL SYLLABLE MEE
           "\u0BAE\u0BC8",            #    TAMIL SYLLABLE MAI
           "\u0BAE\u0BCA",            #    TAMIL SYLLABLE MO
           "\u0BAE\u0BCB",            #    TAMIL SYLLABLE MOO
           "\u0BAE\u0BCC",            #    TAMIL SYLLABLE MAU
           "\u0BAF\u0BBE",            #    TAMIL SYLLABLE YAA
           "\u0BAF\u0BBF",            #    TAMIL SYLLABLE YI
           "\u0BAF\u0BC0",            #    TAMIL SYLLABLE YII
           "\u0BAF\u0BC1",            #    TAMIL SYLLABLE YU
           "\u0BAF\u0BC2",            #    TAMIL SYLLABLE YUU
           "\u0BAF\u0BC6",            #    TAMIL SYLLABLE YE
           "\u0BAF\u0BC7",            #    TAMIL SYLLABLE YEE
           "\u0BAF\u0BC8",            #    TAMIL SYLLABLE YAI
           "\u0BAF\u0BCA",            #    TAMIL SYLLABLE YO
           "\u0BAF\u0BCB",            #    TAMIL SYLLABLE YOO
           "\u0BAF\u0BCC",            #    TAMIL SYLLABLE YAU
           "\u0BB0\u0BBE",            #    TAMIL SYLLABLE RAA
           "\u0BB0\u0BBF",            #    TAMIL SYLLABLE RI
           "\u0BB0\u0BC0",            #    TAMIL SYLLABLE RII
           "\u0BB0\u0BC1",            #    TAMIL SYLLABLE RU
           "\u0BB0\u0BC2",            #    TAMIL SYLLABLE RUU
           "\u0BB0\u0BC6",            #    TAMIL SYLLABLE RE
           "\u0BB0\u0BC7",            #    TAMIL SYLLABLE REE
           "\u0BB0\u0BC8",            #    TAMIL SYLLABLE RAI
           "\u0BB0\u0BCA",            #    TAMIL SYLLABLE RO
           "\u0BB0\u0BCB",            #    TAMIL SYLLABLE ROO
           "\u0BB0\u0BCC",            #    TAMIL SYLLABLE RAU
           "\u0BB2\u0BBE",            #    TAMIL SYLLABLE LAA
           "\u0BB2\u0BBF",            #    TAMIL SYLLABLE LI
           "\u0BB2\u0BC0",            #    TAMIL SYLLABLE LII
           "\u0BB2\u0BC1",            #    TAMIL SYLLABLE LU
           "\u0BB2\u0BC2",            #    TAMIL SYLLABLE LUU
           "\u0BB2\u0BC6",            #    TAMIL SYLLABLE LE
           "\u0BB2\u0BC7",            #    TAMIL SYLLABLE LEE
           "\u0BB2\u0BC8",            #    TAMIL SYLLABLE LAI
           "\u0BB2\u0BCA",            #    TAMIL SYLLABLE LO
           "\u0BB2\u0BCB",            #    TAMIL SYLLABLE LOO
           "\u0BB2\u0BCC",            #    TAMIL SYLLABLE LAU
           "\u0BB5\u0BBE",            #    TAMIL SYLLABLE VAA
           "\u0BB5\u0BBF",            #    TAMIL SYLLABLE VI
           "\u0BB5\u0BC0",            #    TAMIL SYLLABLE VII
           "\u0BB5\u0BC1",            #    TAMIL SYLLABLE VU
           "\u0BB5\u0BC2",            #    TAMIL SYLLABLE VUU
           "\u0BB5\u0BC6",            #    TAMIL SYLLABLE VE
           "\u0BB5\u0BC7",            #    TAMIL SYLLABLE VEE
           "\u0BB5\u0BC8",            #    TAMIL SYLLABLE VAI
           "\u0BB5\u0BCA",            #    TAMIL SYLLABLE VO
           "\u0BB5\u0BCB",            #    TAMIL SYLLABLE VOO
           "\u0BB5\u0BCC",            #    TAMIL SYLLABLE VAU
           "\u0BB4\u0BBE",            #    TAMIL SYLLABLE LLLAA
           "\u0BB4\u0BBF",            #    TAMIL SYLLABLE LLLI
           "\u0BB4\u0BC0",            #    TAMIL SYLLABLE LLLII
           "\u0BB4\u0BC1",            #    TAMIL SYLLABLE LLLU
           "\u0BB4\u0BC2",            #    TAMIL SYLLABLE LLLUU
           "\u0BB4\u0BC6",            #    TAMIL SYLLABLE LLLE
           "\u0BB4\u0BC7",            #    TAMIL SYLLABLE LLLEE
           "\u0BB4\u0BC8",            #    TAMIL SYLLABLE LLLAI
           "\u0BB4\u0BCA",            #    TAMIL SYLLABLE LLLO
           "\u0BB4\u0BCB",            #    TAMIL SYLLABLE LLLOO
           "\u0BB4\u0BCC",            #    TAMIL SYLLABLE LLLAU
           "\u0BB3\u0BBE",            #    TAMIL SYLLABLE LLAA
           "\u0BB3\u0BBF",            #    TAMIL SYLLABLE LLI
           "\u0BB3\u0BC0",            #    TAMIL SYLLABLE LLII
           "\u0BB3\u0BC1",            #    TAMIL SYLLABLE LLU
           "\u0BB3\u0BC2",            #    TAMIL SYLLABLE LLUU
           "\u0BB3\u0BC6",            #    TAMIL SYLLABLE LLE
           "\u0BB3\u0BC7",            #    TAMIL SYLLABLE LLEE
           "\u0BB3\u0BC8",            #    TAMIL SYLLABLE LLAI
           "\u0BB3\u0BCA",            #    TAMIL SYLLABLE LLO
           "\u0BB3\u0BCB",            #    TAMIL SYLLABLE LLOO
           "\u0BB3\u0BCC",            #    TAMIL SYLLABLE LLAU
           "\u0BB1\u0BBE",            #    TAMIL SYLLABLE RRAA
           "\u0BB1\u0BBF",            #    TAMIL SYLLABLE RRI
           "\u0BB1\u0BC0",            #    TAMIL SYLLABLE RRII
           "\u0BB1\u0BC1",            #    TAMIL SYLLABLE RRU
           "\u0BB1\u0BC2",            #    TAMIL SYLLABLE RRUU
           "\u0BB1\u0BC6",            #    TAMIL SYLLABLE RRE
           "\u0BB1\u0BC7",            #    TAMIL SYLLABLE RREE
           "\u0BB1\u0BC8",            #    TAMIL SYLLABLE RRAI
           "\u0BB1\u0BCA",            #    TAMIL SYLLABLE RRO
           "\u0BB1\u0BCB",            #    TAMIL SYLLABLE RROO
           "\u0BB1\u0BCC",            #    TAMIL SYLLABLE RRAU
           "\u0BA9\u0BBE",            #    TAMIL SYLLABLE NNNAA
           "\u0BA9\u0BBF",            #    TAMIL SYLLABLE NNNI
           "\u0BA9\u0BC0",            #    TAMIL SYLLABLE NNNII
           "\u0BA9\u0BC1",            #    TAMIL SYLLABLE NNNU
           "\u0BA9\u0BC2",            #    TAMIL SYLLABLE NNNUU
           "\u0BA9\u0BC6",            #    TAMIL SYLLABLE NNNE
           "\u0BA9\u0BC7",            #    TAMIL SYLLABLE NNNEE
           "\u0BA9\u0BC8",            #    TAMIL SYLLABLE NNNAI
           "\u0BA9\u0BCA",            #    TAMIL SYLLABLE NNNO
           "\u0BA9\u0BCB",            #    TAMIL SYLLABLE NNNOO
           "\u0BA9\u0BCC",            #    TAMIL SYLLABLE NNNAU
           "\u0B9C\u0BBE",            #    TAMIL SYLLABLE JAA
           "\u0B9C\u0BBF",            #    TAMIL SYLLABLE JI
           "\u0B9C\u0BC0",            #    TAMIL SYLLABLE JII
           "\u0B9C\u0BC1",            #    TAMIL SYLLABLE JU
           "\u0B9C\u0BC2",            #    TAMIL SYLLABLE JUU
           "\u0B9C\u0BC6",            #    TAMIL SYLLABLE JE
           "\u0B9C\u0BC7",            #    TAMIL SYLLABLE JEE
           "\u0B9C\u0BC8",            #    TAMIL SYLLABLE JAI
           "\u0B9C\u0BCA",            #    TAMIL SYLLABLE JO
           "\u0B9C\u0BCB",            #    TAMIL SYLLABLE JOO
           "\u0B9C\u0BCC",            #    TAMIL SYLLABLE JAU
           "\u0BB6\u0BBE",            #    TAMIL SYLLABLE SHAA
           "\u0BB6\u0BBF",            #    TAMIL SYLLABLE SHI
           "\u0BB6\u0BC0",            #    TAMIL SYLLABLE SHII
           "\u0BB6\u0BC1",            #    TAMIL SYLLABLE SHU
           "\u0BB6\u0BC2",            #    TAMIL SYLLABLE SHUU
           "\u0BB6\u0BC6",            #    TAMIL SYLLABLE SHE
           "\u0BB6\u0BC7",            #    TAMIL SYLLABLE SHEE
           "\u0BB6\u0BC8",            #    TAMIL SYLLABLE SHAI
           "\u0BB6\u0BCA",            #    TAMIL SYLLABLE SHO
           "\u0BB6\u0BCB",            #    TAMIL SYLLABLE SHOO
           "\u0BB6\u0BCC",            #    TAMIL SYLLABLE SHAU
           "\u0BB7\u0BBE",            #    TAMIL SYLLABLE SSAA
           "\u0BB7\u0BBF",            #    TAMIL SYLLABLE SSI
           "\u0BB7\u0BC0",            #    TAMIL SYLLABLE SSII
           "\u0BB7\u0BC1",            #    TAMIL SYLLABLE SSU
           "\u0BB7\u0BC2",            #    TAMIL SYLLABLE SSUU
           "\u0BB7\u0BC6",            #    TAMIL SYLLABLE SSE
           "\u0BB7\u0BC7",            #    TAMIL SYLLABLE SSEE
           "\u0BB7\u0BC8",            #    TAMIL SYLLABLE SSAI
           "\u0BB7\u0BCA",            #    TAMIL SYLLABLE SSO
           "\u0BB7\u0BCB",            #    TAMIL SYLLABLE SSOO
           "\u0BB7\u0BCC",            #    TAMIL SYLLABLE SSAU
           "\u0BB8\u0BBE",            #    TAMIL SYLLABLE SAA
           "\u0BB8\u0BBF",            #    TAMIL SYLLABLE SI
           "\u0BB8\u0BC0",            #    TAMIL SYLLABLE SII
           "\u0BB8\u0BC1",            #    TAMIL SYLLABLE SU
           "\u0BB8\u0BC2",            #    TAMIL SYLLABLE SUU
           "\u0BB8\u0BC6",            #    TAMIL SYLLABLE SE
           "\u0BB8\u0BC7",            #    TAMIL SYLLABLE SEE
           "\u0BB8\u0BC8",            #    TAMIL SYLLABLE SAI
           "\u0BB8\u0BCA",            #    TAMIL SYLLABLE SO
           "\u0BB8\u0BCB",            #    TAMIL SYLLABLE SOO
           "\u0BB8\u0BCC",            #    TAMIL SYLLABLE SAU
           "\u0BB9\u0BBE",            #    TAMIL SYLLABLE HAA
           "\u0BB9\u0BBF",            #    TAMIL SYLLABLE HI
           "\u0BB9\u0BC0",            #    TAMIL SYLLABLE HII
           "\u0BB9\u0BC1",            #    TAMIL SYLLABLE HU
           "\u0BB9\u0BC2",            #    TAMIL SYLLABLE HUU
           "\u0BB9\u0BC6",            #    TAMIL SYLLABLE HE
           "\u0BB9\u0BC7",            #    TAMIL SYLLABLE HEE
           "\u0BB9\u0BC8",            #    TAMIL SYLLABLE HAI
           "\u0BB9\u0BCA",            #    TAMIL SYLLABLE HO
           "\u0BB9\u0BCB",            #    TAMIL SYLLABLE HOO
           "\u0BB9\u0BCC",            #    TAMIL SYLLABLE HAU
           "\u0B95\u0BCD",            #    TAMIL SYLLABLE KSSA
           "\u0B95\u0BCD",            #    TAMIL SYLLABLE KSSAA
           "\u0B95\u0BCD",            #    TAMIL SYLLABLE KSSI
           "\u0B95\u0BCD",            #    TAMIL SYLLABLE KSSII
           "\u0B95\u0BCD",            #    TAMIL SYLLABLE KSSU
           "\u0B95\u0BCD",            #    TAMIL SYLLABLE KSSUU
           "\u0B95\u0BCD",            #    TAMIL SYLLABLE KSSE
           "\u0B95\u0BCD",            #    TAMIL SYLLABLE KSSEE
           "\u0B95\u0BCD",            #    TAMIL SYLLABLE KSSAI
           "\u0B95\u0BCD",            #    TAMIL SYLLABLE KSSO
           "\u0B95\u0BCD",            #    TAMIL SYLLABLE KSSOO
           "\u0B95\u0BCD",            #    TAMIL SYLLABLE KSSAU
           "\u0BB6\u0BCD",            #    TAMIL SYLLABLE SHRII
      # Sinhala medial consonants and "reph" form.
      # Provisional 2010-05-13, Approved 2011-08-05
           "\u0DCA\u200D",            #    SINHALA CONSONANT SIGN YANSAYA
           "\u0DCA\u200D",            #    SINHALA CONSONANT SIGN RAKAARAANSAYA
           "\u0DBB\u0DCA",            #    SINHALA CONSONANT SIGN REPAYA
      # Georgian letter plus accent sequence.
      # This is part of the original set of approved named sequences
      # for Unicode 4.1. 2005.
           "\u10E3\u0302",            #    GEORGIAN LETTER U-BRJGU
      # Khmer subjoined forms and other sequences.
      # These are part of the original set of approved named sequences
      # for Unicode 4.1. 2005.
           "\u17D2\u1780",            #    KHMER CONSONANT SIGN COENG KA
           "\u17D2\u1781",            #    KHMER CONSONANT SIGN COENG KHA
           "\u17D2\u1782",            #    KHMER CONSONANT SIGN COENG KO
           "\u17D2\u1783",            #    KHMER CONSONANT SIGN COENG KHO
           "\u17D2\u1784",            #    KHMER CONSONANT SIGN COENG NGO
           "\u17D2\u1785",            #    KHMER CONSONANT SIGN COENG CA
           "\u17D2\u1786",            #    KHMER CONSONANT SIGN COENG CHA
           "\u17D2\u1787",            #    KHMER CONSONANT SIGN COENG CO
           "\u17D2\u1788",            #    KHMER CONSONANT SIGN COENG CHO
           "\u17D2\u1789",            #    KHMER CONSONANT SIGN COENG NYO
           "\u17D2\u178A",            #    KHMER CONSONANT SIGN COENG DA
           "\u17D2\u178B",            #    KHMER CONSONANT SIGN COENG TTHA
           "\u17D2\u178C",            #    KHMER CONSONANT SIGN COENG DO
           "\u17D2\u178D",            #    KHMER CONSONANT SIGN COENG TTHO
           "\u17D2\u178E",            #    KHMER CONSONANT SIGN COENG NA
           "\u17D2\u178F",            #    KHMER CONSONANT SIGN COENG TA
           "\u17D2\u1790",            #    KHMER CONSONANT SIGN COENG THA
           "\u17D2\u1791",            #    KHMER CONSONANT SIGN COENG TO
           "\u17D2\u1792",            #    KHMER CONSONANT SIGN COENG THO
           "\u17D2\u1793",            #    KHMER CONSONANT SIGN COENG NO
           "\u17D2\u1794",            #    KHMER CONSONANT SIGN COENG BA
           "\u17D2\u1795",            #    KHMER CONSONANT SIGN COENG PHA
           "\u17D2\u1796",            #    KHMER CONSONANT SIGN COENG PO
           "\u17D2\u1797",            #    KHMER CONSONANT SIGN COENG PHO
           "\u17D2\u1798",            #    KHMER CONSONANT SIGN COENG MO
           "\u17D2\u1799",            #    KHMER CONSONANT SIGN COENG YO
           "\u17D2\u179A",            #    KHMER CONSONANT SIGN COENG RO
           "\u17D2\u179B",            #    KHMER CONSONANT SIGN COENG LO
           "\u17D2\u179C",            #    KHMER CONSONANT SIGN COENG VO
           "\u17D2\u179D",            #    KHMER CONSONANT SIGN COENG SHA
           "\u17D2\u179E",            #    KHMER CONSONANT SIGN COENG SSA
           "\u17D2\u179F",            #    KHMER CONSONANT SIGN COENG SA
           "\u17D2\u17A0",            #    KHMER CONSONANT SIGN COENG HA
           "\u17D2\u17A1",            #    KHMER CONSONANT SIGN COENG LA
           "\u17D2\u17A2",            #    KHMER VOWEL SIGN COENG QA
           "\u17D2\u17A7",            #    KHMER INDEPENDENT VOWEL SIGN COENG QU
           "\u17D2\u17AB",            #    KHMER INDEPENDENT VOWEL SIGN COENG RY
           "\u17D2\u17AC",            #    KHMER INDEPENDENT VOWEL SIGN COENG RYY
           "\u17D2\u17AF",            #    KHMER INDEPENDENT VOWEL SIGN COENG QE
           "\u17BB\u17C6",            #    KHMER VOWEL SIGN OM
           "\u17B6\u17C6",            #    KHMER VOWEL SIGN AAM
      # Entries for JIS X 0213 compatibility mapping.
      # Provisional 2008-11-07, Approved 2010-05-14
      #
      # Two of these were part of the original set of approved named sequences
      # for Unicode 4.1. 2005.
           "\u304B\u309A",            #    HIRAGANA LETTER BIDAKUON NGA
           "\u304D\u309A",            #    HIRAGANA LETTER BIDAKUON NGI
           "\u304F\u309A",            #    HIRAGANA LETTER BIDAKUON NGU
           "\u3051\u309A",            #    HIRAGANA LETTER BIDAKUON NGE
           "\u3053\u309A",            #    HIRAGANA LETTER BIDAKUON NGO
           "\u30AB\u309A",            #    KATAKANA LETTER BIDAKUON NGA
           "\u30AD\u309A",            #    KATAKANA LETTER BIDAKUON NGI
           "\u30AF\u309A",            #    KATAKANA LETTER BIDAKUON NGU
           "\u30B1\u309A",            #    KATAKANA LETTER BIDAKUON NGE
           "\u30B3\u309A",            #    KATAKANA LETTER BIDAKUON NGO
           "\u30BB\u309A",            #    KATAKANA LETTER AINU CE
           "\u30C4\u309A",            #    KATAKANA LETTER AINU TU
           "\u30C8\u309A",            #    KATAKANA LETTER AINU TO
           "\u31F7\u309A",            #    KATAKANA LETTER AINU P
           "\u02E5\u02E9",            #    MODIFIER LETTER EXTRA-HIGH EXTRA-LOW CONTOUR TONE BAR
           "\u02E9\u02E5",            #    MODIFIER LETTER EXTRA-LOW EXTRA-HIGH CONTOUR TONE BAR
    ]
    test_data.each do |string|
      assert @validator.valid_encoding?(string), "_named_sequences A: #{string}"
      assert string.force_encoding("UTF-8").valid_encoding?,
        "_named_sequences B: #{string}"  if @vercheck
    end
  end

end # of class

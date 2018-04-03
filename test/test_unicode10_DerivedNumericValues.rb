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
class TestUnicode10DerivedNumericValues < Test::Unit::TestCase
  #
  def setup
    @validator = UTF8::Validator.new
    @vercheck = ((RUBY_VERSION =~ /1.9/) or (RUBY_VERSION =~ /2./)) ? true : false
  end

  #
  def teardown
    @validator = nil
  end

  def test_unicode10_DerivedNumericValues
    test_data = [
        "\u0F33",  # ; -0.5 ; ; -1/2 # No       TIBETAN DIGIT HALF ZERO
        "\u0030",  # ; 0.0 ; ; 0 # Nd       DIGIT ZERO
        "\u0660",  # ; 0.0 ; ; 0 # Nd       ARABIC-INDIC DIGIT ZERO
        "\u06F0",  # ; 0.0 ; ; 0 # Nd       EXTENDED ARABIC-INDIC DIGIT ZERO
        "\u07C0",  # ; 0.0 ; ; 0 # Nd       NKO DIGIT ZERO
        "\u0966",  # ; 0.0 ; ; 0 # Nd       DEVANAGARI DIGIT ZERO
        "\u09E6",  # ; 0.0 ; ; 0 # Nd       BENGALI DIGIT ZERO
        "\u0A66",  # ; 0.0 ; ; 0 # Nd       GURMUKHI DIGIT ZERO
        "\u0AE6",  # ; 0.0 ; ; 0 # Nd       GUJARATI DIGIT ZERO
        "\u0B66",  # ; 0.0 ; ; 0 # Nd       ORIYA DIGIT ZERO
        "\u0BE6",  # ; 0.0 ; ; 0 # Nd       TAMIL DIGIT ZERO
        "\u0C66",  # ; 0.0 ; ; 0 # Nd       TELUGU DIGIT ZERO
        "\u0C78",  # ; 0.0 ; ; 0 # No       TELUGU FRACTION DIGIT ZERO FOR ODD POWERS OF FOUR
        "\u0CE6",  # ; 0.0 ; ; 0 # Nd       KANNADA DIGIT ZERO
        "\u0D66",  # ; 0.0 ; ; 0 # Nd       MALAYALAM DIGIT ZERO
        "\u0DE6",  # ; 0.0 ; ; 0 # Nd       SINHALA LITH DIGIT ZERO
        "\u0E50",  # ; 0.0 ; ; 0 # Nd       THAI DIGIT ZERO
        "\u0ED0",  # ; 0.0 ; ; 0 # Nd       LAO DIGIT ZERO
        "\u0F20",  # ; 0.0 ; ; 0 # Nd       TIBETAN DIGIT ZERO
        "\u1040",  # ; 0.0 ; ; 0 # Nd       MYANMAR DIGIT ZERO
        "\u1090",  # ; 0.0 ; ; 0 # Nd       MYANMAR SHAN DIGIT ZERO
        "\u17E0",  # ; 0.0 ; ; 0 # Nd       KHMER DIGIT ZERO
        "\u17F0",  # ; 0.0 ; ; 0 # No       KHMER SYMBOL LEK ATTAK SON
        "\u1810",  # ; 0.0 ; ; 0 # Nd       MONGOLIAN DIGIT ZERO
        "\u1946",  # ; 0.0 ; ; 0 # Nd       LIMBU DIGIT ZERO
        "\u19D0",  # ; 0.0 ; ; 0 # Nd       NEW TAI LUE DIGIT ZERO
        "\u1A80",  # ; 0.0 ; ; 0 # Nd       TAI THAM HORA DIGIT ZERO
        "\u1A90",  # ; 0.0 ; ; 0 # Nd       TAI THAM THAM DIGIT ZERO
        "\u1B50",  # ; 0.0 ; ; 0 # Nd       BALINESE DIGIT ZERO
        "\u1BB0",  # ; 0.0 ; ; 0 # Nd       SUNDANESE DIGIT ZERO
        "\u1C40",  # ; 0.0 ; ; 0 # Nd       LEPCHA DIGIT ZERO
        "\u1C50",  # ; 0.0 ; ; 0 # Nd       OL CHIKI DIGIT ZERO
        "\u2070",  # ; 0.0 ; ; 0 # No       SUPERSCRIPT ZERO
        "\u2080",  # ; 0.0 ; ; 0 # No       SUBSCRIPT ZERO
        "\u2189",  # ; 0.0 ; ; 0 # No       VULGAR FRACTION ZERO THIRDS
        "\u24EA",  # ; 0.0 ; ; 0 # No       CIRCLED DIGIT ZERO
        "\u24FF",  # ; 0.0 ; ; 0 # No       NEGATIVE CIRCLED DIGIT ZERO
        "\u3007",  # ; 0.0 ; ; 0 # Nl       IDEOGRAPHIC NUMBER ZERO
        "\u96F6",  # ; 0.0 ; ; 0 # Lo       CJK UNIFIED IDEOGRAPH-96F6
        "\uA620",  # ; 0.0 ; ; 0 # Nd       VAI DIGIT ZERO
        "\uA6EF",  # ; 0.0 ; ; 0 # Nl       BAMUM LETTER KOGHOM
        "\uA8D0",  # ; 0.0 ; ; 0 # Nd       SAURASHTRA DIGIT ZERO
        "\uA900",  # ; 0.0 ; ; 0 # Nd       KAYAH LI DIGIT ZERO
        "\uA9D0",  # ; 0.0 ; ; 0 # Nd       JAVANESE DIGIT ZERO
        "\uA9F0",  # ; 0.0 ; ; 0 # Nd       MYANMAR TAI LAING DIGIT ZERO
        "\uAA50",  # ; 0.0 ; ; 0 # Nd       CHAM DIGIT ZERO
        "\uABF0",  # ; 0.0 ; ; 0 # Nd       MEETEI MAYEK DIGIT ZERO
        "\uF9B2",  # ; 0.0 ; ; 0 # Lo       CJK COMPATIBILITY IDEOGRAPH-F9B2
        "\uFF10",  # ; 0.0 ; ; 0 # Nd       FULLWIDTH DIGIT ZERO
        "\u1018A",  # ; 0.0 ; ; 0 # No       GREEK ZERO SIGN
        "\u104A0",  # ; 0.0 ; ; 0 # Nd       OSMANYA DIGIT ZERO
        "\u11066",  # ; 0.0 ; ; 0 # Nd       BRAHMI DIGIT ZERO
        "\u110F0",  # ; 0.0 ; ; 0 # Nd       SORA SOMPENG DIGIT ZERO
        "\u11136",  # ; 0.0 ; ; 0 # Nd       CHAKMA DIGIT ZERO
        "\u111D0",  # ; 0.0 ; ; 0 # Nd       SHARADA DIGIT ZERO
        "\u112F0",  # ; 0.0 ; ; 0 # Nd       KHUDAWADI DIGIT ZERO
        "\u11450",  # ; 0.0 ; ; 0 # Nd       NEWA DIGIT ZERO
        "\u114D0",  # ; 0.0 ; ; 0 # Nd       TIRHUTA DIGIT ZERO
        "\u11650",  # ; 0.0 ; ; 0 # Nd       MODI DIGIT ZERO
        "\u116C0",  # ; 0.0 ; ; 0 # Nd       TAKRI DIGIT ZERO
        "\u11730",  # ; 0.0 ; ; 0 # Nd       AHOM DIGIT ZERO
        "\u118E0",  # ; 0.0 ; ; 0 # Nd       WARANG CITI DIGIT ZERO
        "\u11C50",  # ; 0.0 ; ; 0 # Nd       BHAIKSUKI DIGIT ZERO
        "\u11D50",  # ; 0.0 ; ; 0 # Nd       MASARAM GONDI DIGIT ZERO
        "\u16A60",  # ; 0.0 ; ; 0 # Nd       MRO DIGIT ZERO
        "\u16B50",  # ; 0.0 ; ; 0 # Nd       PAHAWH HMONG DIGIT ZERO
        "\u1D7CE",  # ; 0.0 ; ; 0 # Nd       MATHEMATICAL BOLD DIGIT ZERO
        "\u1D7D8",  # ; 0.0 ; ; 0 # Nd       MATHEMATICAL DOUBLE-STRUCK DIGIT ZERO
        "\u1D7E2",  # ; 0.0 ; ; 0 # Nd       MATHEMATICAL SANS-SERIF DIGIT ZERO
        "\u1D7EC",  # ; 0.0 ; ; 0 # Nd       MATHEMATICAL SANS-SERIF BOLD DIGIT ZERO
        "\u1D7F6",  # ; 0.0 ; ; 0 # Nd       MATHEMATICAL MONOSPACE DIGIT ZERO
        "\u1E950",  # ; 0.0 ; ; 0 # Nd       ADLAM DIGIT ZERO
        "\u1f100","\u1f101",  # ; 0.0 ; ; 0 # No   [2] DIGIT ZERO FULL STOP..DIGIT ZERO COMMA
        "\u1f10b","\u1f10c",  # ; 0.0 ; ; 0 # No   [2] DINGBAT CIRCLED SANS-SERIF DIGIT ZERO..DINGBAT NEGATIVE CIRCLED SANS-SERIF DIGIT ZERO
        "\u0D58",  # ; 0.00625 ; ; 1/160 # No       MALAYALAM FRACTION ONE ONE-HUNDRED-AND-SIXTIETH
        "\u0D59",  # ; 0.025 ; ; 1/40 # No       MALAYALAM FRACTION ONE FORTIETH
        "\u0D5A",  # ; 0.0375 ; ; 3/80 # No       MALAYALAM FRACTION THREE EIGHTIETHS
        "\u0D5B",  # ; 0.05 ; ; 1/20 # No       MALAYALAM FRACTION ONE TWENTIETH
        "\u09F4",  # ; 0.0625 ; ; 1/16 # No       BENGALI CURRENCY NUMERATOR ONE
        "\u0B75",  # ; 0.0625 ; ; 1/16 # No       ORIYA FRACTION ONE SIXTEENTH
        "\u0D76",  # ; 0.0625 ; ; 1/16 # No       MALAYALAM FRACTION ONE SIXTEENTH
        "\uA833",  # ; 0.0625 ; ; 1/16 # No       NORTH INDIC FRACTION ONE SIXTEENTH
        "\u109F6",  # ; 0.08333333 ; ; 1/12 # No       MEROITIC CURSIVE FRACTION ONE TWELFTH
        "\u0D5C",  # ; 0.1 ; ; 1/10 # No       MALAYALAM FRACTION ONE TENTH
        "\u2152",  # ; 0.1 ; ; 1/10 # No       VULGAR FRACTION ONE TENTH
        "\u2151",  # ; 0.11111111 ; ; 1/9 # No       VULGAR FRACTION ONE NINTH
        "\u09F5",  # ; 0.125 ; ; 1/8 # No       BENGALI CURRENCY NUMERATOR TWO
        "\u0B76",  # ; 0.125 ; ; 1/8 # No       ORIYA FRACTION ONE EIGHTH
        "\u0D77",  # ; 0.125 ; ; 1/8 # No       MALAYALAM FRACTION ONE EIGHTH
        "\u215B",  # ; 0.125 ; ; 1/8 # No       VULGAR FRACTION ONE EIGHTH
        "\uA834",  # ; 0.125 ; ; 1/8 # No       NORTH INDIC FRACTION ONE EIGHTH
        "\u1245F",  # ; 0.125 ; ; 1/8 # Nl       CUNEIFORM NUMERIC SIGN ONE EIGHTH ASH
        "\u2150",  # ; 0.14285714 ; ; 1/7 # No       VULGAR FRACTION ONE SEVENTH
        "\u0D5D",  # ; 0.15 ; ; 3/20 # No       MALAYALAM FRACTION THREE TWENTIETHS
        "\u2159",  # ; 0.16666667 ; ; 1/6 # No       VULGAR FRACTION ONE SIXTH
        "\u109F7",  # ; 0.16666667 ; ; 1/6 # No       MEROITIC CURSIVE FRACTION TWO TWELFTHS
        "\u12461",  # ; 0.16666667 ; ; 1/6 # Nl       CUNEIFORM NUMERIC SIGN OLD ASSYRIAN ONE SIXTH
        "\u09F6",  # ; 0.1875 ; ; 3/16 # No       BENGALI CURRENCY NUMERATOR THREE
        "\u0B77",  # ; 0.1875 ; ; 3/16 # No       ORIYA FRACTION THREE SIXTEENTHS
        "\u0D78",  # ; 0.1875 ; ; 3/16 # No       MALAYALAM FRACTION THREE SIXTEENTHS
        "\uA835",  # ; 0.1875 ; ; 3/16 # No       NORTH INDIC FRACTION THREE SIXTEENTHS
        "\u0D5E",  # ; 0.2 ; ; 1/5 # No       MALAYALAM FRACTION ONE FIFTH
        "\u2155",  # ; 0.2 ; ; 1/5 # No       VULGAR FRACTION ONE FIFTH
        "\u00BC",  # ; 0.25 ; ; 1/4 # No       VULGAR FRACTION ONE QUARTER
        "\u09F7",  # ; 0.25 ; ; 1/4 # No       BENGALI CURRENCY NUMERATOR FOUR
        "\u0B72",  # ; 0.25 ; ; 1/4 # No       ORIYA FRACTION ONE QUARTER
        "\u0D73",  # ; 0.25 ; ; 1/4 # No       MALAYALAM FRACTION ONE QUARTER
        "\uA830",  # ; 0.25 ; ; 1/4 # No       NORTH INDIC FRACTION ONE QUARTER
        "\u10140",  # ; 0.25 ; ; 1/4 # Nl       GREEK ACROPHONIC ATTIC ONE QUARTER
        "\u1018B",  # ; 0.25 ; ; 1/4 # No       GREEK ONE QUARTER SIGN
        "\u109F8",  # ; 0.25 ; ; 1/4 # No       MEROITIC CURSIVE FRACTION THREE TWELFTHS
        "\u10E7C",  # ; 0.25 ; ; 1/4 # No       RUMI FRACTION ONE QUARTER
        "\u12460",  # ; 0.25 ; ; 1/4 # Nl       CUNEIFORM NUMERIC SIGN ONE QUARTER ASH
        "\u12462","\u12463",  # ; 0.25 ; ; 1/4 # Nl   [2] CUNEIFORM NUMERIC SIGN OLD ASSYRIAN ONE QUARTER..CUNEIFORM NUMERIC SIGN ONE QUARTER GUR
        "\u2153",  # ; 0.33333333 ; ; 1/3 # No       VULGAR FRACTION ONE THIRD
        "\u109F9",  # ; 0.33333333 ; ; 1/3 # No       MEROITIC CURSIVE FRACTION FOUR TWELFTHS
        "\u10E7D",  # ; 0.33333333 ; ; 1/3 # No       RUMI FRACTION ONE THIRD
        "\u1245A",  # ; 0.33333333 ; ; 1/3 # Nl       CUNEIFORM NUMERIC SIGN ONE THIRD DISH
        "\u1245D",  # ; 0.33333333 ; ; 1/3 # Nl       CUNEIFORM NUMERIC SIGN ONE THIRD VARIANT FORM A
        "\u12465",  # ; 0.33333333 ; ; 1/3 # Nl       CUNEIFORM NUMERIC SIGN ELAMITE ONE THIRD
        "\u215C",  # ; 0.375 ; ; 3/8 # No       VULGAR FRACTION THREE EIGHTHS
        "\u2156",  # ; 0.4 ; ; 2/5 # No       VULGAR FRACTION TWO FIFTHS
        "\u109FA",  # ; 0.41666667 ; ; 5/12 # No       MEROITIC CURSIVE FRACTION FIVE TWELFTHS
        "\u00BD",  # ; 0.5 ; ; 1/2 # No       VULGAR FRACTION ONE HALF
        "\u0B73",  # ; 0.5 ; ; 1/2 # No       ORIYA FRACTION ONE HALF
        "\u0D74",  # ; 0.5 ; ; 1/2 # No       MALAYALAM FRACTION ONE HALF
        "\u0F2A",  # ; 0.5 ; ; 1/2 # No       TIBETAN DIGIT HALF ONE
        "\u2CFD",  # ; 0.5 ; ; 1/2 # No       COPTIC FRACTION ONE HALF
        "\uA831",  # ; 0.5 ; ; 1/2 # No       NORTH INDIC FRACTION ONE HALF
        "\u10141",  # ; 0.5 ; ; 1/2 # Nl       GREEK ACROPHONIC ATTIC ONE HALF
        "\u10175","\u10176",  # ; 0.5 ; ; 1/2 # No   [2] GREEK ONE HALF SIGN..GREEK ONE HALF SIGN ALTERNATE FORM
        "\u109BD",  # ; 0.5 ; ; 1/2 # No       MEROITIC CURSIVE FRACTION ONE HALF
        "\u109FB",  # ; 0.5 ; ; 1/2 # No       MEROITIC CURSIVE FRACTION SIX TWELFTHS
        "\u10E7B",  # ; 0.5 ; ; 1/2 # No       RUMI FRACTION ONE HALF
        "\u12464",  # ; 0.5 ; ; 1/2 # Nl       CUNEIFORM NUMERIC SIGN ONE HALF GUR
        "\u109FC",  # ; 0.58333333 ; ; 7/12 # No       MEROITIC CURSIVE FRACTION SEVEN TWELFTHS
        "\u2157",  # ; 0.6 ; ; 3/5 # No       VULGAR FRACTION THREE FIFTHS
        "\u215D",  # ; 0.625 ; ; 5/8 # No       VULGAR FRACTION FIVE EIGHTHS
        "\u2154",  # ; 0.66666667 ; ; 2/3 # No       VULGAR FRACTION TWO THIRDS
        "\u10177",  # ; 0.66666667 ; ; 2/3 # No       GREEK TWO THIRDS SIGN
        "\u109FD",  # ; 0.66666667 ; ; 2/3 # No       MEROITIC CURSIVE FRACTION EIGHT TWELFTHS
        "\u10E7E",  # ; 0.66666667 ; ; 2/3 # No       RUMI FRACTION TWO THIRDS
        "\u1245B",  # ; 0.66666667 ; ; 2/3 # Nl       CUNEIFORM NUMERIC SIGN TWO THIRDS DISH
        "\u1245E",  # ; 0.66666667 ; ; 2/3 # Nl       CUNEIFORM NUMERIC SIGN TWO THIRDS VARIANT FORM A
        "\u12466",  # ; 0.66666667 ; ; 2/3 # Nl       CUNEIFORM NUMERIC SIGN ELAMITE TWO THIRDS
        "\u00BE",  # ; 0.75 ; ; 3/4 # No       VULGAR FRACTION THREE QUARTERS
        "\u09F8",  # ; 0.75 ; ; 3/4 # No       BENGALI CURRENCY NUMERATOR ONE LESS THAN THE DENOMINATOR
        "\u0B74",  # ; 0.75 ; ; 3/4 # No       ORIYA FRACTION THREE QUARTERS
        "\u0D75",  # ; 0.75 ; ; 3/4 # No       MALAYALAM FRACTION THREE QUARTERS
        "\uA832",  # ; 0.75 ; ; 3/4 # No       NORTH INDIC FRACTION THREE QUARTERS
        "\u10178",  # ; 0.75 ; ; 3/4 # No       GREEK THREE QUARTERS SIGN
        "\u109FE",  # ; 0.75 ; ; 3/4 # No       MEROITIC CURSIVE FRACTION NINE TWELFTHS
        "\u2158",  # ; 0.8 ; ; 4/5 # No       VULGAR FRACTION FOUR FIFTHS
        "\u215A",  # ; 0.83333333 ; ; 5/6 # No       VULGAR FRACTION FIVE SIXTHS
        "\u109FF",  # ; 0.83333333 ; ; 5/6 # No       MEROITIC CURSIVE FRACTION TEN TWELFTHS
        "\u1245C",  # ; 0.83333333 ; ; 5/6 # Nl       CUNEIFORM NUMERIC SIGN FIVE SIXTHS DISH
        "\u215E",  # ; 0.875 ; ; 7/8 # No       VULGAR FRACTION SEVEN EIGHTHS
        "\u109BC",  # ; 0.91666667 ; ; 11/12 # No       MEROITIC CURSIVE FRACTION ELEVEN TWELFTHS
        "\u0031",  # ; 1.0 ; ; 1 # Nd       DIGIT ONE
        "\u00B9",  # ; 1.0 ; ; 1 # No       SUPERSCRIPT ONE
        "\u0661",  # ; 1.0 ; ; 1 # Nd       ARABIC-INDIC DIGIT ONE
        "\u06F1",  # ; 1.0 ; ; 1 # Nd       EXTENDED ARABIC-INDIC DIGIT ONE
        "\u07C1",  # ; 1.0 ; ; 1 # Nd       NKO DIGIT ONE
        "\u0967",  # ; 1.0 ; ; 1 # Nd       DEVANAGARI DIGIT ONE
        "\u09E7",  # ; 1.0 ; ; 1 # Nd       BENGALI DIGIT ONE
        "\u0A67",  # ; 1.0 ; ; 1 # Nd       GURMUKHI DIGIT ONE
        "\u0AE7",  # ; 1.0 ; ; 1 # Nd       GUJARATI DIGIT ONE
        "\u0B67",  # ; 1.0 ; ; 1 # Nd       ORIYA DIGIT ONE
        "\u0BE7",  # ; 1.0 ; ; 1 # Nd       TAMIL DIGIT ONE
        "\u0C67",  # ; 1.0 ; ; 1 # Nd       TELUGU DIGIT ONE
        "\u0C79",  # ; 1.0 ; ; 1 # No       TELUGU FRACTION DIGIT ONE FOR ODD POWERS OF FOUR
        "\u0C7C",  # ; 1.0 ; ; 1 # No       TELUGU FRACTION DIGIT ONE FOR EVEN POWERS OF FOUR
        "\u0CE7",  # ; 1.0 ; ; 1 # Nd       KANNADA DIGIT ONE
        "\u0D67",  # ; 1.0 ; ; 1 # Nd       MALAYALAM DIGIT ONE
        "\u0DE7",  # ; 1.0 ; ; 1 # Nd       SINHALA LITH DIGIT ONE
        "\u0E51",  # ; 1.0 ; ; 1 # Nd       THAI DIGIT ONE
        "\u0ED1",  # ; 1.0 ; ; 1 # Nd       LAO DIGIT ONE
        "\u0F21",  # ; 1.0 ; ; 1 # Nd       TIBETAN DIGIT ONE
        "\u1041",  # ; 1.0 ; ; 1 # Nd       MYANMAR DIGIT ONE
        "\u1091",  # ; 1.0 ; ; 1 # Nd       MYANMAR SHAN DIGIT ONE
        "\u1369",  # ; 1.0 ; ; 1 # No       ETHIOPIC DIGIT ONE
        "\u17E1",  # ; 1.0 ; ; 1 # Nd       KHMER DIGIT ONE
        "\u17F1",  # ; 1.0 ; ; 1 # No       KHMER SYMBOL LEK ATTAK MUOY
        "\u1811",  # ; 1.0 ; ; 1 # Nd       MONGOLIAN DIGIT ONE
        "\u1947",  # ; 1.0 ; ; 1 # Nd       LIMBU DIGIT ONE
        "\u19D1",  # ; 1.0 ; ; 1 # Nd       NEW TAI LUE DIGIT ONE
        "\u19DA",  # ; 1.0 ; ; 1 # No       NEW TAI LUE THAM DIGIT ONE
        "\u1A81",  # ; 1.0 ; ; 1 # Nd       TAI THAM HORA DIGIT ONE
        "\u1A91",  # ; 1.0 ; ; 1 # Nd       TAI THAM THAM DIGIT ONE
        "\u1B51",  # ; 1.0 ; ; 1 # Nd       BALINESE DIGIT ONE
        "\u1BB1",  # ; 1.0 ; ; 1 # Nd       SUNDANESE DIGIT ONE
        "\u1C41",  # ; 1.0 ; ; 1 # Nd       LEPCHA DIGIT ONE
        "\u1C51",  # ; 1.0 ; ; 1 # Nd       OL CHIKI DIGIT ONE
        "\u2081",  # ; 1.0 ; ; 1 # No       SUBSCRIPT ONE
        "\u215F",  # ; 1.0 ; ; 1 # No       FRACTION NUMERATOR ONE
        "\u2160",  # ; 1.0 ; ; 1 # Nl       ROMAN NUMERAL ONE
        "\u2170",  # ; 1.0 ; ; 1 # Nl       SMALL ROMAN NUMERAL ONE
        "\u2460",  # ; 1.0 ; ; 1 # No       CIRCLED DIGIT ONE
        "\u2474",  # ; 1.0 ; ; 1 # No       PARENTHESIZED DIGIT ONE
        "\u2488",  # ; 1.0 ; ; 1 # No       DIGIT ONE FULL STOP
        "\u24F5",  # ; 1.0 ; ; 1 # No       DOUBLE CIRCLED DIGIT ONE
        "\u2776",  # ; 1.0 ; ; 1 # No       DINGBAT NEGATIVE CIRCLED DIGIT ONE
        "\u2780",  # ; 1.0 ; ; 1 # No       DINGBAT CIRCLED SANS-SERIF DIGIT ONE
        "\u278A",  # ; 1.0 ; ; 1 # No       DINGBAT NEGATIVE CIRCLED SANS-SERIF DIGIT ONE
        "\u3021",  # ; 1.0 ; ; 1 # Nl       HANGZHOU NUMERAL ONE
        "\u3192",  # ; 1.0 ; ; 1 # No       IDEOGRAPHIC ANNOTATION ONE MARK
        "\u3220",  # ; 1.0 ; ; 1 # No       PARENTHESIZED IDEOGRAPH ONE
        "\u3280",  # ; 1.0 ; ; 1 # No       CIRCLED IDEOGRAPH ONE
        "\u4E00",  # ; 1.0 ; ; 1 # Lo       CJK UNIFIED IDEOGRAPH-4E00
        "\u58F1",  # ; 1.0 ; ; 1 # Lo       CJK UNIFIED IDEOGRAPH-58F1
        "\u58F9",  # ; 1.0 ; ; 1 # Lo       CJK UNIFIED IDEOGRAPH-58F9
        "\u5E7A",  # ; 1.0 ; ; 1 # Lo       CJK UNIFIED IDEOGRAPH-5E7A
        "\u5F0C",  # ; 1.0 ; ; 1 # Lo       CJK UNIFIED IDEOGRAPH-5F0C
        "\uA621",  # ; 1.0 ; ; 1 # Nd       VAI DIGIT ONE
        "\uA6E6",  # ; 1.0 ; ; 1 # Nl       BAMUM LETTER MO
        "\uA8D1",  # ; 1.0 ; ; 1 # Nd       SAURASHTRA DIGIT ONE
        "\uA901",  # ; 1.0 ; ; 1 # Nd       KAYAH LI DIGIT ONE
        "\uA9D1",  # ; 1.0 ; ; 1 # Nd       JAVANESE DIGIT ONE
        "\uA9F1",  # ; 1.0 ; ; 1 # Nd       MYANMAR TAI LAING DIGIT ONE
        "\uAA51",  # ; 1.0 ; ; 1 # Nd       CHAM DIGIT ONE
        "\uABF1",  # ; 1.0 ; ; 1 # Nd       MEETEI MAYEK DIGIT ONE
        "\uFF11",  # ; 1.0 ; ; 1 # Nd       FULLWIDTH DIGIT ONE
        "\u10107",  # ; 1.0 ; ; 1 # No       AEGEAN NUMBER ONE
        "\u10142",  # ; 1.0 ; ; 1 # Nl       GREEK ACROPHONIC ATTIC ONE DRACHMA
        "\u10158","\u10159","\u1015a",  # ; 1.0 ; ; 1 # Nl   [3] GREEK ACROPHONIC HERAEUM ONE PLETHRON..GREEK ACROPHONIC HERMIONIAN ONE
        "\u102E1",  # ; 1.0 ; ; 1 # No       COPTIC EPACT DIGIT ONE
        "\u10320",  # ; 1.0 ; ; 1 # No       OLD ITALIC NUMERAL ONE
        "\u103D1",  # ; 1.0 ; ; 1 # Nl       OLD PERSIAN NUMBER ONE
        "\u104A1",  # ; 1.0 ; ; 1 # Nd       OSMANYA DIGIT ONE
        "\u10858",  # ; 1.0 ; ; 1 # No       IMPERIAL ARAMAIC NUMBER ONE
        "\u10879",  # ; 1.0 ; ; 1 # No       PALMYRENE NUMBER ONE
        "\u108A7",  # ; 1.0 ; ; 1 # No       NABATAEAN NUMBER ONE
        "\u108FB",  # ; 1.0 ; ; 1 # No       HATRAN NUMBER ONE
        "\u10916",  # ; 1.0 ; ; 1 # No       PHOENICIAN NUMBER ONE
        "\u109C0",  # ; 1.0 ; ; 1 # No       MEROITIC CURSIVE NUMBER ONE
        "\u10A40",  # ; 1.0 ; ; 1 # No       KHAROSHTHI DIGIT ONE
        "\u10A7D",  # ; 1.0 ; ; 1 # No       OLD SOUTH ARABIAN NUMBER ONE
        "\u10A9D",  # ; 1.0 ; ; 1 # No       OLD NORTH ARABIAN NUMBER ONE
        "\u10AEB",  # ; 1.0 ; ; 1 # No       MANICHAEAN NUMBER ONE
        "\u10B58",  # ; 1.0 ; ; 1 # No       INSCRIPTIONAL PARTHIAN NUMBER ONE
        "\u10B78",  # ; 1.0 ; ; 1 # No       INSCRIPTIONAL PAHLAVI NUMBER ONE
        "\u10BA9",  # ; 1.0 ; ; 1 # No       PSALTER PAHLAVI NUMBER ONE
        "\u10CFA",  # ; 1.0 ; ; 1 # No       OLD HUNGARIAN NUMBER ONE
        "\u10E60",  # ; 1.0 ; ; 1 # No       RUMI DIGIT ONE
        "\u11052",  # ; 1.0 ; ; 1 # No       BRAHMI NUMBER ONE
        "\u11067",  # ; 1.0 ; ; 1 # Nd       BRAHMI DIGIT ONE
        "\u110F1",  # ; 1.0 ; ; 1 # Nd       SORA SOMPENG DIGIT ONE
        "\u11137",  # ; 1.0 ; ; 1 # Nd       CHAKMA DIGIT ONE
        "\u111D1",  # ; 1.0 ; ; 1 # Nd       SHARADA DIGIT ONE
        "\u111E1",  # ; 1.0 ; ; 1 # No       SINHALA ARCHAIC DIGIT ONE
        "\u112F1",  # ; 1.0 ; ; 1 # Nd       KHUDAWADI DIGIT ONE
        "\u11451",  # ; 1.0 ; ; 1 # Nd       NEWA DIGIT ONE
        "\u114D1",  # ; 1.0 ; ; 1 # Nd       TIRHUTA DIGIT ONE
        "\u11651",  # ; 1.0 ; ; 1 # Nd       MODI DIGIT ONE
        "\u116C1",  # ; 1.0 ; ; 1 # Nd       TAKRI DIGIT ONE
        "\u11731",  # ; 1.0 ; ; 1 # Nd       AHOM DIGIT ONE
        "\u118E1",  # ; 1.0 ; ; 1 # Nd       WARANG CITI DIGIT ONE
        "\u11C51",  # ; 1.0 ; ; 1 # Nd       BHAIKSUKI DIGIT ONE
        "\u11C5A",  # ; 1.0 ; ; 1 # No       BHAIKSUKI NUMBER ONE
        "\u11D51",  # ; 1.0 ; ; 1 # Nd       MASARAM GONDI DIGIT ONE
        "\u12415",  # ; 1.0 ; ; 1 # Nl       CUNEIFORM NUMERIC SIGN ONE GESH2
        "\u1241E",  # ; 1.0 ; ; 1 # Nl       CUNEIFORM NUMERIC SIGN ONE GESHU
        "\u1242C",  # ; 1.0 ; ; 1 # Nl       CUNEIFORM NUMERIC SIGN ONE SHARU
        "\u12434",  # ; 1.0 ; ; 1 # Nl       CUNEIFORM NUMERIC SIGN ONE BURU
        "\u1244F",  # ; 1.0 ; ; 1 # Nl       CUNEIFORM NUMERIC SIGN ONE BAN2
        "\u12458",  # ; 1.0 ; ; 1 # Nl       CUNEIFORM NUMERIC SIGN ONE ESHE3
        "\u16A61",  # ; 1.0 ; ; 1 # Nd       MRO DIGIT ONE
        "\u16B51",  # ; 1.0 ; ; 1 # Nd       PAHAWH HMONG DIGIT ONE
        "\u1D360",  # ; 1.0 ; ; 1 # No       COUNTING ROD UNIT DIGIT ONE
        "\u1D7CF",  # ; 1.0 ; ; 1 # Nd       MATHEMATICAL BOLD DIGIT ONE
        "\u1D7D9",  # ; 1.0 ; ; 1 # Nd       MATHEMATICAL DOUBLE-STRUCK DIGIT ONE
        "\u1D7E3",  # ; 1.0 ; ; 1 # Nd       MATHEMATICAL SANS-SERIF DIGIT ONE
        "\u1D7ED",  # ; 1.0 ; ; 1 # Nd       MATHEMATICAL SANS-SERIF BOLD DIGIT ONE
        "\u1D7F7",  # ; 1.0 ; ; 1 # Nd       MATHEMATICAL MONOSPACE DIGIT ONE
        "\u1E8C7",  # ; 1.0 ; ; 1 # No       MENDE KIKAKUI DIGIT ONE
        "\u1E951",  # ; 1.0 ; ; 1 # Nd       ADLAM DIGIT ONE
        "\u1F102",  # ; 1.0 ; ; 1 # No       DIGIT ONE COMMA
        "\u2092A",  # ; 1.0 ; ; 1 # Lo       CJK UNIFIED IDEOGRAPH-2092A
        "\u0F2B",  # ; 1.5 ; ; 3/2 # No       TIBETAN DIGIT HALF TWO
        "\u0032",  # ; 2.0 ; ; 2 # Nd       DIGIT TWO
        "\u00B2",  # ; 2.0 ; ; 2 # No       SUPERSCRIPT TWO
        "\u0662",  # ; 2.0 ; ; 2 # Nd       ARABIC-INDIC DIGIT TWO
        "\u06F2",  # ; 2.0 ; ; 2 # Nd       EXTENDED ARABIC-INDIC DIGIT TWO
        "\u07C2",  # ; 2.0 ; ; 2 # Nd       NKO DIGIT TWO
        "\u0968",  # ; 2.0 ; ; 2 # Nd       DEVANAGARI DIGIT TWO
        "\u09E8",  # ; 2.0 ; ; 2 # Nd       BENGALI DIGIT TWO
        "\u0A68",  # ; 2.0 ; ; 2 # Nd       GURMUKHI DIGIT TWO
        "\u0AE8",  # ; 2.0 ; ; 2 # Nd       GUJARATI DIGIT TWO
        "\u0B68",  # ; 2.0 ; ; 2 # Nd       ORIYA DIGIT TWO
        "\u0BE8",  # ; 2.0 ; ; 2 # Nd       TAMIL DIGIT TWO
        "\u0C68",  # ; 2.0 ; ; 2 # Nd       TELUGU DIGIT TWO
        "\u0C7A",  # ; 2.0 ; ; 2 # No       TELUGU FRACTION DIGIT TWO FOR ODD POWERS OF FOUR
        "\u0C7D",  # ; 2.0 ; ; 2 # No       TELUGU FRACTION DIGIT TWO FOR EVEN POWERS OF FOUR
        "\u0CE8",  # ; 2.0 ; ; 2 # Nd       KANNADA DIGIT TWO
        "\u0D68",  # ; 2.0 ; ; 2 # Nd       MALAYALAM DIGIT TWO
        "\u0DE8",  # ; 2.0 ; ; 2 # Nd       SINHALA LITH DIGIT TWO
        "\u0E52",  # ; 2.0 ; ; 2 # Nd       THAI DIGIT TWO
        "\u0ED2",  # ; 2.0 ; ; 2 # Nd       LAO DIGIT TWO
        "\u0F22",  # ; 2.0 ; ; 2 # Nd       TIBETAN DIGIT TWO
        "\u1042",  # ; 2.0 ; ; 2 # Nd       MYANMAR DIGIT TWO
        "\u1092",  # ; 2.0 ; ; 2 # Nd       MYANMAR SHAN DIGIT TWO
        "\u136A",  # ; 2.0 ; ; 2 # No       ETHIOPIC DIGIT TWO
        "\u17E2",  # ; 2.0 ; ; 2 # Nd       KHMER DIGIT TWO
        "\u17F2",  # ; 2.0 ; ; 2 # No       KHMER SYMBOL LEK ATTAK PII
        "\u1812",  # ; 2.0 ; ; 2 # Nd       MONGOLIAN DIGIT TWO
        "\u1948",  # ; 2.0 ; ; 2 # Nd       LIMBU DIGIT TWO
        "\u19D2",  # ; 2.0 ; ; 2 # Nd       NEW TAI LUE DIGIT TWO
        "\u1A82",  # ; 2.0 ; ; 2 # Nd       TAI THAM HORA DIGIT TWO
        "\u1A92",  # ; 2.0 ; ; 2 # Nd       TAI THAM THAM DIGIT TWO
        "\u1B52",  # ; 2.0 ; ; 2 # Nd       BALINESE DIGIT TWO
        "\u1BB2",  # ; 2.0 ; ; 2 # Nd       SUNDANESE DIGIT TWO
        "\u1C42",  # ; 2.0 ; ; 2 # Nd       LEPCHA DIGIT TWO
        "\u1C52",  # ; 2.0 ; ; 2 # Nd       OL CHIKI DIGIT TWO
        "\u2082",  # ; 2.0 ; ; 2 # No       SUBSCRIPT TWO
        "\u2161",  # ; 2.0 ; ; 2 # Nl       ROMAN NUMERAL TWO
        "\u2171",  # ; 2.0 ; ; 2 # Nl       SMALL ROMAN NUMERAL TWO
        "\u2461",  # ; 2.0 ; ; 2 # No       CIRCLED DIGIT TWO
        "\u2475",  # ; 2.0 ; ; 2 # No       PARENTHESIZED DIGIT TWO
        "\u2489",  # ; 2.0 ; ; 2 # No       DIGIT TWO FULL STOP
        "\u24F6",  # ; 2.0 ; ; 2 # No       DOUBLE CIRCLED DIGIT TWO
        "\u2777",  # ; 2.0 ; ; 2 # No       DINGBAT NEGATIVE CIRCLED DIGIT TWO
        "\u2781",  # ; 2.0 ; ; 2 # No       DINGBAT CIRCLED SANS-SERIF DIGIT TWO
        "\u278B",  # ; 2.0 ; ; 2 # No       DINGBAT NEGATIVE CIRCLED SANS-SERIF DIGIT TWO
        "\u3022",  # ; 2.0 ; ; 2 # Nl       HANGZHOU NUMERAL TWO
        "\u3193",  # ; 2.0 ; ; 2 # No       IDEOGRAPHIC ANNOTATION TWO MARK
        "\u3221",  # ; 2.0 ; ; 2 # No       PARENTHESIZED IDEOGRAPH TWO
        "\u3281",  # ; 2.0 ; ; 2 # No       CIRCLED IDEOGRAPH TWO
        "\u3483",  # ; 2.0 ; ; 2 # Lo       CJK UNIFIED IDEOGRAPH-3483
        "\u4E8C",  # ; 2.0 ; ; 2 # Lo       CJK UNIFIED IDEOGRAPH-4E8C
        "\u5169",  # ; 2.0 ; ; 2 # Lo       CJK UNIFIED IDEOGRAPH-5169
        "\u5F0D",  # ; 2.0 ; ; 2 # Lo       CJK UNIFIED IDEOGRAPH-5F0D
        "\u5F10",  # ; 2.0 ; ; 2 # Lo       CJK UNIFIED IDEOGRAPH-5F10
        "\u8CAE",  # ; 2.0 ; ; 2 # Lo       CJK UNIFIED IDEOGRAPH-8CAE
        "\u8CB3",  # ; 2.0 ; ; 2 # Lo       CJK UNIFIED IDEOGRAPH-8CB3
        "\u8D30",  # ; 2.0 ; ; 2 # Lo       CJK UNIFIED IDEOGRAPH-8D30
        "\uA622",  # ; 2.0 ; ; 2 # Nd       VAI DIGIT TWO
        "\uA6E7",  # ; 2.0 ; ; 2 # Nl       BAMUM LETTER MBAA
        "\uA8D2",  # ; 2.0 ; ; 2 # Nd       SAURASHTRA DIGIT TWO
        "\uA902",  # ; 2.0 ; ; 2 # Nd       KAYAH LI DIGIT TWO
        "\uA9D2",  # ; 2.0 ; ; 2 # Nd       JAVANESE DIGIT TWO
        "\uA9F2",  # ; 2.0 ; ; 2 # Nd       MYANMAR TAI LAING DIGIT TWO
        "\uAA52",  # ; 2.0 ; ; 2 # Nd       CHAM DIGIT TWO
        "\uABF2",  # ; 2.0 ; ; 2 # Nd       MEETEI MAYEK DIGIT TWO
        "\uF978",  # ; 2.0 ; ; 2 # Lo       CJK COMPATIBILITY IDEOGRAPH-F978
        "\uFF12",  # ; 2.0 ; ; 2 # Nd       FULLWIDTH DIGIT TWO
        "\u10108",  # ; 2.0 ; ; 2 # No       AEGEAN NUMBER TWO
        "\u1015b","\u1015c","\u1015d","\u1015e",  # ; 2.0 ; ; 2 # Nl   [4] GREEK ACROPHONIC EPIDAUREAN TWO..GREEK ACROPHONIC EPIDAUREAN TWO DRACHMAS
        "\u102E2",  # ; 2.0 ; ; 2 # No       COPTIC EPACT DIGIT TWO
        "\u103D2",  # ; 2.0 ; ; 2 # Nl       OLD PERSIAN NUMBER TWO
        "\u104A2",  # ; 2.0 ; ; 2 # Nd       OSMANYA DIGIT TWO
        "\u10859",  # ; 2.0 ; ; 2 # No       IMPERIAL ARAMAIC NUMBER TWO
        "\u1087A",  # ; 2.0 ; ; 2 # No       PALMYRENE NUMBER TWO
        "\u108A8",  # ; 2.0 ; ; 2 # No       NABATAEAN NUMBER TWO
        "\u1091A",  # ; 2.0 ; ; 2 # No       PHOENICIAN NUMBER TWO
        "\u109C1",  # ; 2.0 ; ; 2 # No       MEROITIC CURSIVE NUMBER TWO
        "\u10A41",  # ; 2.0 ; ; 2 # No       KHAROSHTHI DIGIT TWO
        "\u10B59",  # ; 2.0 ; ; 2 # No       INSCRIPTIONAL PARTHIAN NUMBER TWO
        "\u10B79",  # ; 2.0 ; ; 2 # No       INSCRIPTIONAL PAHLAVI NUMBER TWO
        "\u10BAA",  # ; 2.0 ; ; 2 # No       PSALTER PAHLAVI NUMBER TWO
        "\u10E61",  # ; 2.0 ; ; 2 # No       RUMI DIGIT TWO
        "\u11053",  # ; 2.0 ; ; 2 # No       BRAHMI NUMBER TWO
        "\u11068",  # ; 2.0 ; ; 2 # Nd       BRAHMI DIGIT TWO
        "\u110F2",  # ; 2.0 ; ; 2 # Nd       SORA SOMPENG DIGIT TWO
        "\u11138",  # ; 2.0 ; ; 2 # Nd       CHAKMA DIGIT TWO
        "\u111D2",  # ; 2.0 ; ; 2 # Nd       SHARADA DIGIT TWO
        "\u111E2",  # ; 2.0 ; ; 2 # No       SINHALA ARCHAIC DIGIT TWO
        "\u112F2",  # ; 2.0 ; ; 2 # Nd       KHUDAWADI DIGIT TWO
        "\u11452",  # ; 2.0 ; ; 2 # Nd       NEWA DIGIT TWO
        "\u114D2",  # ; 2.0 ; ; 2 # Nd       TIRHUTA DIGIT TWO
        "\u11652",  # ; 2.0 ; ; 2 # Nd       MODI DIGIT TWO
        "\u116C2",  # ; 2.0 ; ; 2 # Nd       TAKRI DIGIT TWO
        "\u11732",  # ; 2.0 ; ; 2 # Nd       AHOM DIGIT TWO
        "\u118E2",  # ; 2.0 ; ; 2 # Nd       WARANG CITI DIGIT TWO
        "\u11C52",  # ; 2.0 ; ; 2 # Nd       BHAIKSUKI DIGIT TWO
        "\u11C5B",  # ; 2.0 ; ; 2 # No       BHAIKSUKI NUMBER TWO
        "\u11D52",  # ; 2.0 ; ; 2 # Nd       MASARAM GONDI DIGIT TWO
        "\u12400",  # ; 2.0 ; ; 2 # Nl       CUNEIFORM NUMERIC SIGN TWO ASH
        "\u12416",  # ; 2.0 ; ; 2 # Nl       CUNEIFORM NUMERIC SIGN TWO GESH2
        "\u1241F",  # ; 2.0 ; ; 2 # Nl       CUNEIFORM NUMERIC SIGN TWO GESHU
        "\u12423",  # ; 2.0 ; ; 2 # Nl       CUNEIFORM NUMERIC SIGN TWO SHAR2
        "\u1242D",  # ; 2.0 ; ; 2 # Nl       CUNEIFORM NUMERIC SIGN TWO SHARU
        "\u12435",  # ; 2.0 ; ; 2 # Nl       CUNEIFORM NUMERIC SIGN TWO BURU
        "\u1244A",  # ; 2.0 ; ; 2 # Nl       CUNEIFORM NUMERIC SIGN TWO ASH TENU
        "\u12450",  # ; 2.0 ; ; 2 # Nl       CUNEIFORM NUMERIC SIGN TWO BAN2
        "\u12456",  # ; 2.0 ; ; 2 # Nl       CUNEIFORM NUMERIC SIGN NIGIDAMIN
        "\u12459",  # ; 2.0 ; ; 2 # Nl       CUNEIFORM NUMERIC SIGN TWO ESHE3
        "\u16A62",  # ; 2.0 ; ; 2 # Nd       MRO DIGIT TWO
        "\u16B52",  # ; 2.0 ; ; 2 # Nd       PAHAWH HMONG DIGIT TWO
        "\u1D361",  # ; 2.0 ; ; 2 # No       COUNTING ROD UNIT DIGIT TWO
        "\u1D7D0",  # ; 2.0 ; ; 2 # Nd       MATHEMATICAL BOLD DIGIT TWO
        "\u1D7DA",  # ; 2.0 ; ; 2 # Nd       MATHEMATICAL DOUBLE-STRUCK DIGIT TWO
        "\u1D7E4",  # ; 2.0 ; ; 2 # Nd       MATHEMATICAL SANS-SERIF DIGIT TWO
        "\u1D7EE",  # ; 2.0 ; ; 2 # Nd       MATHEMATICAL SANS-SERIF BOLD DIGIT TWO
        "\u1D7F8",  # ; 2.0 ; ; 2 # Nd       MATHEMATICAL MONOSPACE DIGIT TWO
        "\u1E8C8",  # ; 2.0 ; ; 2 # No       MENDE KIKAKUI DIGIT TWO
        "\u1E952",  # ; 2.0 ; ; 2 # Nd       ADLAM DIGIT TWO
        "\u1F103",  # ; 2.0 ; ; 2 # No       DIGIT TWO COMMA
        "\u22390",  # ; 2.0 ; ; 2 # Lo       CJK UNIFIED IDEOGRAPH-22390
        "\u0F2C",  # ; 2.5 ; ; 5/2 # No       TIBETAN DIGIT HALF THREE
        "\u0033",  # ; 3.0 ; ; 3 # Nd       DIGIT THREE
        "\u00B3",  # ; 3.0 ; ; 3 # No       SUPERSCRIPT THREE
        "\u0663",  # ; 3.0 ; ; 3 # Nd       ARABIC-INDIC DIGIT THREE
        "\u06F3",  # ; 3.0 ; ; 3 # Nd       EXTENDED ARABIC-INDIC DIGIT THREE
        "\u07C3",  # ; 3.0 ; ; 3 # Nd       NKO DIGIT THREE
        "\u0969",  # ; 3.0 ; ; 3 # Nd       DEVANAGARI DIGIT THREE
        "\u09E9",  # ; 3.0 ; ; 3 # Nd       BENGALI DIGIT THREE
        "\u0A69",  # ; 3.0 ; ; 3 # Nd       GURMUKHI DIGIT THREE
        "\u0AE9",  # ; 3.0 ; ; 3 # Nd       GUJARATI DIGIT THREE
        "\u0B69",  # ; 3.0 ; ; 3 # Nd       ORIYA DIGIT THREE
        "\u0BE9",  # ; 3.0 ; ; 3 # Nd       TAMIL DIGIT THREE
        "\u0C69",  # ; 3.0 ; ; 3 # Nd       TELUGU DIGIT THREE
        "\u0C7B",  # ; 3.0 ; ; 3 # No       TELUGU FRACTION DIGIT THREE FOR ODD POWERS OF FOUR
        "\u0C7E",  # ; 3.0 ; ; 3 # No       TELUGU FRACTION DIGIT THREE FOR EVEN POWERS OF FOUR
        "\u0CE9",  # ; 3.0 ; ; 3 # Nd       KANNADA DIGIT THREE
        "\u0D69",  # ; 3.0 ; ; 3 # Nd       MALAYALAM DIGIT THREE
        "\u0DE9",  # ; 3.0 ; ; 3 # Nd       SINHALA LITH DIGIT THREE
        "\u0E53",  # ; 3.0 ; ; 3 # Nd       THAI DIGIT THREE
        "\u0ED3",  # ; 3.0 ; ; 3 # Nd       LAO DIGIT THREE
        "\u0F23",  # ; 3.0 ; ; 3 # Nd       TIBETAN DIGIT THREE
        "\u1043",  # ; 3.0 ; ; 3 # Nd       MYANMAR DIGIT THREE
        "\u1093",  # ; 3.0 ; ; 3 # Nd       MYANMAR SHAN DIGIT THREE
        "\u136B",  # ; 3.0 ; ; 3 # No       ETHIOPIC DIGIT THREE
        "\u17E3",  # ; 3.0 ; ; 3 # Nd       KHMER DIGIT THREE
        "\u17F3",  # ; 3.0 ; ; 3 # No       KHMER SYMBOL LEK ATTAK BEI
        "\u1813",  # ; 3.0 ; ; 3 # Nd       MONGOLIAN DIGIT THREE
        "\u1949",  # ; 3.0 ; ; 3 # Nd       LIMBU DIGIT THREE
        "\u19D3",  # ; 3.0 ; ; 3 # Nd       NEW TAI LUE DIGIT THREE
        "\u1A83",  # ; 3.0 ; ; 3 # Nd       TAI THAM HORA DIGIT THREE
        "\u1A93",  # ; 3.0 ; ; 3 # Nd       TAI THAM THAM DIGIT THREE
        "\u1B53",  # ; 3.0 ; ; 3 # Nd       BALINESE DIGIT THREE
        "\u1BB3",  # ; 3.0 ; ; 3 # Nd       SUNDANESE DIGIT THREE
        "\u1C43",  # ; 3.0 ; ; 3 # Nd       LEPCHA DIGIT THREE
        "\u1C53",  # ; 3.0 ; ; 3 # Nd       OL CHIKI DIGIT THREE
        "\u2083",  # ; 3.0 ; ; 3 # No       SUBSCRIPT THREE
        "\u2162",  # ; 3.0 ; ; 3 # Nl       ROMAN NUMERAL THREE
        "\u2172",  # ; 3.0 ; ; 3 # Nl       SMALL ROMAN NUMERAL THREE
        "\u2462",  # ; 3.0 ; ; 3 # No       CIRCLED DIGIT THREE
        "\u2476",  # ; 3.0 ; ; 3 # No       PARENTHESIZED DIGIT THREE
        "\u248A",  # ; 3.0 ; ; 3 # No       DIGIT THREE FULL STOP
        "\u24F7",  # ; 3.0 ; ; 3 # No       DOUBLE CIRCLED DIGIT THREE
        "\u2778",  # ; 3.0 ; ; 3 # No       DINGBAT NEGATIVE CIRCLED DIGIT THREE
        "\u2782",  # ; 3.0 ; ; 3 # No       DINGBAT CIRCLED SANS-SERIF DIGIT THREE
        "\u278C",  # ; 3.0 ; ; 3 # No       DINGBAT NEGATIVE CIRCLED SANS-SERIF DIGIT THREE
        "\u3023",  # ; 3.0 ; ; 3 # Nl       HANGZHOU NUMERAL THREE
        "\u3194",  # ; 3.0 ; ; 3 # No       IDEOGRAPHIC ANNOTATION THREE MARK
        "\u3222",  # ; 3.0 ; ; 3 # No       PARENTHESIZED IDEOGRAPH THREE
        "\u3282",  # ; 3.0 ; ; 3 # No       CIRCLED IDEOGRAPH THREE
        "\u4E09",  # ; 3.0 ; ; 3 # Lo       CJK UNIFIED IDEOGRAPH-4E09
        "\u4EE8",  # ; 3.0 ; ; 3 # Lo       CJK UNIFIED IDEOGRAPH-4EE8
        "\u53c1","\u53c2","\u53c3","\u53c4",  # ; 3.0 ; ; 3 # Lo   [4] CJK UNIFIED IDEOGRAPH-53C1..CJK UNIFIED IDEOGRAPH-53C4
        "\u5F0E",  # ; 3.0 ; ; 3 # Lo       CJK UNIFIED IDEOGRAPH-5F0E
        "\uA623",  # ; 3.0 ; ; 3 # Nd       VAI DIGIT THREE
        "\uA6E8",  # ; 3.0 ; ; 3 # Nl       BAMUM LETTER TET
        "\uA8D3",  # ; 3.0 ; ; 3 # Nd       SAURASHTRA DIGIT THREE
        "\uA903",  # ; 3.0 ; ; 3 # Nd       KAYAH LI DIGIT THREE
        "\uA9D3",  # ; 3.0 ; ; 3 # Nd       JAVANESE DIGIT THREE
        "\uA9F3",  # ; 3.0 ; ; 3 # Nd       MYANMAR TAI LAING DIGIT THREE
        "\uAA53",  # ; 3.0 ; ; 3 # Nd       CHAM DIGIT THREE
        "\uABF3",  # ; 3.0 ; ; 3 # Nd       MEETEI MAYEK DIGIT THREE
        "\uF96B",  # ; 3.0 ; ; 3 # Lo       CJK COMPATIBILITY IDEOGRAPH-F96B
        "\uFF13",  # ; 3.0 ; ; 3 # Nd       FULLWIDTH DIGIT THREE
        "\u10109",  # ; 3.0 ; ; 3 # No       AEGEAN NUMBER THREE
        "\u102E3",  # ; 3.0 ; ; 3 # No       COPTIC EPACT DIGIT THREE
        "\u104A3",  # ; 3.0 ; ; 3 # Nd       OSMANYA DIGIT THREE
        "\u1085A",  # ; 3.0 ; ; 3 # No       IMPERIAL ARAMAIC NUMBER THREE
        "\u1087B",  # ; 3.0 ; ; 3 # No       PALMYRENE NUMBER THREE
        "\u108A9",  # ; 3.0 ; ; 3 # No       NABATAEAN NUMBER THREE
        "\u1091B",  # ; 3.0 ; ; 3 # No       PHOENICIAN NUMBER THREE
        "\u109C2",  # ; 3.0 ; ; 3 # No       MEROITIC CURSIVE NUMBER THREE
        "\u10A42",  # ; 3.0 ; ; 3 # No       KHAROSHTHI DIGIT THREE
        "\u10B5A",  # ; 3.0 ; ; 3 # No       INSCRIPTIONAL PARTHIAN NUMBER THREE
        "\u10B7A",  # ; 3.0 ; ; 3 # No       INSCRIPTIONAL PAHLAVI NUMBER THREE
        "\u10BAB",  # ; 3.0 ; ; 3 # No       PSALTER PAHLAVI NUMBER THREE
        "\u10E62",  # ; 3.0 ; ; 3 # No       RUMI DIGIT THREE
        "\u11054",  # ; 3.0 ; ; 3 # No       BRAHMI NUMBER THREE
        "\u11069",  # ; 3.0 ; ; 3 # Nd       BRAHMI DIGIT THREE
        "\u110F3",  # ; 3.0 ; ; 3 # Nd       SORA SOMPENG DIGIT THREE
        "\u11139",  # ; 3.0 ; ; 3 # Nd       CHAKMA DIGIT THREE
        "\u111D3",  # ; 3.0 ; ; 3 # Nd       SHARADA DIGIT THREE
        "\u111E3",  # ; 3.0 ; ; 3 # No       SINHALA ARCHAIC DIGIT THREE
        "\u112F3",  # ; 3.0 ; ; 3 # Nd       KHUDAWADI DIGIT THREE
        "\u11453",  # ; 3.0 ; ; 3 # Nd       NEWA DIGIT THREE
        "\u114D3",  # ; 3.0 ; ; 3 # Nd       TIRHUTA DIGIT THREE
        "\u11653",  # ; 3.0 ; ; 3 # Nd       MODI DIGIT THREE
        "\u116C3",  # ; 3.0 ; ; 3 # Nd       TAKRI DIGIT THREE
        "\u11733",  # ; 3.0 ; ; 3 # Nd       AHOM DIGIT THREE
        "\u118E3",  # ; 3.0 ; ; 3 # Nd       WARANG CITI DIGIT THREE
        "\u11C53",  # ; 3.0 ; ; 3 # Nd       BHAIKSUKI DIGIT THREE
        "\u11C5C",  # ; 3.0 ; ; 3 # No       BHAIKSUKI NUMBER THREE
        "\u11D53",  # ; 3.0 ; ; 3 # Nd       MASARAM GONDI DIGIT THREE
        "\u12401",  # ; 3.0 ; ; 3 # Nl       CUNEIFORM NUMERIC SIGN THREE ASH
        "\u12408",  # ; 3.0 ; ; 3 # Nl       CUNEIFORM NUMERIC SIGN THREE DISH
        "\u12417",  # ; 3.0 ; ; 3 # Nl       CUNEIFORM NUMERIC SIGN THREE GESH2
        "\u12420",  # ; 3.0 ; ; 3 # Nl       CUNEIFORM NUMERIC SIGN THREE GESHU
        "\u12424","\u12425",  # ; 3.0 ; ; 3 # Nl   [2] CUNEIFORM NUMERIC SIGN THREE SHAR2..CUNEIFORM NUMERIC SIGN THREE SHAR2 VARIANT FORM
        "\u1242e","\u1242f",  # ; 3.0 ; ; 3 # Nl   [2] CUNEIFORM NUMERIC SIGN THREE SHARU..CUNEIFORM NUMERIC SIGN THREE SHARU VARIANT FORM
        "\u12436","\u12437",  # ; 3.0 ; ; 3 # Nl   [2] CUNEIFORM NUMERIC SIGN THREE BURU..CUNEIFORM NUMERIC SIGN THREE BURU VARIANT FORM
        "\u1243a","\u1243b",  # ; 3.0 ; ; 3 # Nl   [2] CUNEIFORM NUMERIC SIGN THREE VARIANT FORM ESH16..CUNEIFORM NUMERIC SIGN THREE VARIANT FORM ESH21
        "\u1244B",  # ; 3.0 ; ; 3 # Nl       CUNEIFORM NUMERIC SIGN THREE ASH TENU
        "\u12451",  # ; 3.0 ; ; 3 # Nl       CUNEIFORM NUMERIC SIGN THREE BAN2
        "\u12457",  # ; 3.0 ; ; 3 # Nl       CUNEIFORM NUMERIC SIGN NIGIDAESH
        "\u16A63",  # ; 3.0 ; ; 3 # Nd       MRO DIGIT THREE
        "\u16B53",  # ; 3.0 ; ; 3 # Nd       PAHAWH HMONG DIGIT THREE
        "\u1D362",  # ; 3.0 ; ; 3 # No       COUNTING ROD UNIT DIGIT THREE
        "\u1D7D1",  # ; 3.0 ; ; 3 # Nd       MATHEMATICAL BOLD DIGIT THREE
        "\u1D7DB",  # ; 3.0 ; ; 3 # Nd       MATHEMATICAL DOUBLE-STRUCK DIGIT THREE
        "\u1D7E5",  # ; 3.0 ; ; 3 # Nd       MATHEMATICAL SANS-SERIF DIGIT THREE
        "\u1D7EF",  # ; 3.0 ; ; 3 # Nd       MATHEMATICAL SANS-SERIF BOLD DIGIT THREE
        "\u1D7F9",  # ; 3.0 ; ; 3 # Nd       MATHEMATICAL MONOSPACE DIGIT THREE
        "\u1E8C9",  # ; 3.0 ; ; 3 # No       MENDE KIKAKUI DIGIT THREE
        "\u1E953",  # ; 3.0 ; ; 3 # Nd       ADLAM DIGIT THREE
        "\u1F104",  # ; 3.0 ; ; 3 # No       DIGIT THREE COMMA
        "\u20AFD",  # ; 3.0 ; ; 3 # Lo       CJK UNIFIED IDEOGRAPH-20AFD
        "\u20B19",  # ; 3.0 ; ; 3 # Lo       CJK UNIFIED IDEOGRAPH-20B19
        "\u22998",  # ; 3.0 ; ; 3 # Lo       CJK UNIFIED IDEOGRAPH-22998
        "\u23B1B",  # ; 3.0 ; ; 3 # Lo       CJK UNIFIED IDEOGRAPH-23B1B
        "\u0F2D",  # ; 3.5 ; ; 7/2 # No       TIBETAN DIGIT HALF FOUR
        "\u0034",  # ; 4.0 ; ; 4 # Nd       DIGIT FOUR
        "\u0664",  # ; 4.0 ; ; 4 # Nd       ARABIC-INDIC DIGIT FOUR
        "\u06F4",  # ; 4.0 ; ; 4 # Nd       EXTENDED ARABIC-INDIC DIGIT FOUR
        "\u07C4",  # ; 4.0 ; ; 4 # Nd       NKO DIGIT FOUR
        "\u096A",  # ; 4.0 ; ; 4 # Nd       DEVANAGARI DIGIT FOUR
        "\u09EA",  # ; 4.0 ; ; 4 # Nd       BENGALI DIGIT FOUR
        "\u0A6A",  # ; 4.0 ; ; 4 # Nd       GURMUKHI DIGIT FOUR
        "\u0AEA",  # ; 4.0 ; ; 4 # Nd       GUJARATI DIGIT FOUR
        "\u0B6A",  # ; 4.0 ; ; 4 # Nd       ORIYA DIGIT FOUR
        "\u0BEA",  # ; 4.0 ; ; 4 # Nd       TAMIL DIGIT FOUR
        "\u0C6A",  # ; 4.0 ; ; 4 # Nd       TELUGU DIGIT FOUR
        "\u0CEA",  # ; 4.0 ; ; 4 # Nd       KANNADA DIGIT FOUR
        "\u0D6A",  # ; 4.0 ; ; 4 # Nd       MALAYALAM DIGIT FOUR
        "\u0DEA",  # ; 4.0 ; ; 4 # Nd       SINHALA LITH DIGIT FOUR
        "\u0E54",  # ; 4.0 ; ; 4 # Nd       THAI DIGIT FOUR
        "\u0ED4",  # ; 4.0 ; ; 4 # Nd       LAO DIGIT FOUR
        "\u0F24",  # ; 4.0 ; ; 4 # Nd       TIBETAN DIGIT FOUR
        "\u1044",  # ; 4.0 ; ; 4 # Nd       MYANMAR DIGIT FOUR
        "\u1094",  # ; 4.0 ; ; 4 # Nd       MYANMAR SHAN DIGIT FOUR
        "\u136C",  # ; 4.0 ; ; 4 # No       ETHIOPIC DIGIT FOUR
        "\u17E4",  # ; 4.0 ; ; 4 # Nd       KHMER DIGIT FOUR
        "\u17F4",  # ; 4.0 ; ; 4 # No       KHMER SYMBOL LEK ATTAK BUON
        "\u1814",  # ; 4.0 ; ; 4 # Nd       MONGOLIAN DIGIT FOUR
        "\u194A",  # ; 4.0 ; ; 4 # Nd       LIMBU DIGIT FOUR
        "\u19D4",  # ; 4.0 ; ; 4 # Nd       NEW TAI LUE DIGIT FOUR
        "\u1A84",  # ; 4.0 ; ; 4 # Nd       TAI THAM HORA DIGIT FOUR
        "\u1A94",  # ; 4.0 ; ; 4 # Nd       TAI THAM THAM DIGIT FOUR
        "\u1B54",  # ; 4.0 ; ; 4 # Nd       BALINESE DIGIT FOUR
        "\u1BB4",  # ; 4.0 ; ; 4 # Nd       SUNDANESE DIGIT FOUR
        "\u1C44",  # ; 4.0 ; ; 4 # Nd       LEPCHA DIGIT FOUR
        "\u1C54",  # ; 4.0 ; ; 4 # Nd       OL CHIKI DIGIT FOUR
        "\u2074",  # ; 4.0 ; ; 4 # No       SUPERSCRIPT FOUR
        "\u2084",  # ; 4.0 ; ; 4 # No       SUBSCRIPT FOUR
        "\u2163",  # ; 4.0 ; ; 4 # Nl       ROMAN NUMERAL FOUR
        "\u2173",  # ; 4.0 ; ; 4 # Nl       SMALL ROMAN NUMERAL FOUR
        "\u2463",  # ; 4.0 ; ; 4 # No       CIRCLED DIGIT FOUR
        "\u2477",  # ; 4.0 ; ; 4 # No       PARENTHESIZED DIGIT FOUR
        "\u248B",  # ; 4.0 ; ; 4 # No       DIGIT FOUR FULL STOP
        "\u24F8",  # ; 4.0 ; ; 4 # No       DOUBLE CIRCLED DIGIT FOUR
        "\u2779",  # ; 4.0 ; ; 4 # No       DINGBAT NEGATIVE CIRCLED DIGIT FOUR
        "\u2783",  # ; 4.0 ; ; 4 # No       DINGBAT CIRCLED SANS-SERIF DIGIT FOUR
        "\u278D",  # ; 4.0 ; ; 4 # No       DINGBAT NEGATIVE CIRCLED SANS-SERIF DIGIT FOUR
        "\u3024",  # ; 4.0 ; ; 4 # Nl       HANGZHOU NUMERAL FOUR
        "\u3195",  # ; 4.0 ; ; 4 # No       IDEOGRAPHIC ANNOTATION FOUR MARK
        "\u3223",  # ; 4.0 ; ; 4 # No       PARENTHESIZED IDEOGRAPH FOUR
        "\u3283",  # ; 4.0 ; ; 4 # No       CIRCLED IDEOGRAPH FOUR
        "\u4E96",  # ; 4.0 ; ; 4 # Lo       CJK UNIFIED IDEOGRAPH-4E96
        "\u56DB",  # ; 4.0 ; ; 4 # Lo       CJK UNIFIED IDEOGRAPH-56DB
        "\u8086",  # ; 4.0 ; ; 4 # Lo       CJK UNIFIED IDEOGRAPH-8086
        "\uA624",  # ; 4.0 ; ; 4 # Nd       VAI DIGIT FOUR
        "\uA6E9",  # ; 4.0 ; ; 4 # Nl       BAMUM LETTER KPA
        "\uA8D4",  # ; 4.0 ; ; 4 # Nd       SAURASHTRA DIGIT FOUR
        "\uA904",  # ; 4.0 ; ; 4 # Nd       KAYAH LI DIGIT FOUR
        "\uA9D4",  # ; 4.0 ; ; 4 # Nd       JAVANESE DIGIT FOUR
        "\uA9F4",  # ; 4.0 ; ; 4 # Nd       MYANMAR TAI LAING DIGIT FOUR
        "\uAA54",  # ; 4.0 ; ; 4 # Nd       CHAM DIGIT FOUR
        "\uABF4",  # ; 4.0 ; ; 4 # Nd       MEETEI MAYEK DIGIT FOUR
        "\uFF14",  # ; 4.0 ; ; 4 # Nd       FULLWIDTH DIGIT FOUR
        "\u1010A",  # ; 4.0 ; ; 4 # No       AEGEAN NUMBER FOUR
        "\u102E4",  # ; 4.0 ; ; 4 # No       COPTIC EPACT DIGIT FOUR
        "\u104A4",  # ; 4.0 ; ; 4 # Nd       OSMANYA DIGIT FOUR
        "\u1087C",  # ; 4.0 ; ; 4 # No       PALMYRENE NUMBER FOUR
        "\u108aa","\u108ab",  # ; 4.0 ; ; 4 # No   [2] NABATAEAN NUMBER FOUR..NABATAEAN CRUCIFORM NUMBER FOUR
        "\u109C3",  # ; 4.0 ; ; 4 # No       MEROITIC CURSIVE NUMBER FOUR
        "\u10A43",  # ; 4.0 ; ; 4 # No       KHAROSHTHI DIGIT FOUR
        "\u10B5B",  # ; 4.0 ; ; 4 # No       INSCRIPTIONAL PARTHIAN NUMBER FOUR
        "\u10B7B",  # ; 4.0 ; ; 4 # No       INSCRIPTIONAL PAHLAVI NUMBER FOUR
        "\u10BAC",  # ; 4.0 ; ; 4 # No       PSALTER PAHLAVI NUMBER FOUR
        "\u10E63",  # ; 4.0 ; ; 4 # No       RUMI DIGIT FOUR
        "\u11055",  # ; 4.0 ; ; 4 # No       BRAHMI NUMBER FOUR
        "\u1106A",  # ; 4.0 ; ; 4 # Nd       BRAHMI DIGIT FOUR
        "\u110F4",  # ; 4.0 ; ; 4 # Nd       SORA SOMPENG DIGIT FOUR
        "\u1113A",  # ; 4.0 ; ; 4 # Nd       CHAKMA DIGIT FOUR
        "\u111D4",  # ; 4.0 ; ; 4 # Nd       SHARADA DIGIT FOUR
        "\u111E4",  # ; 4.0 ; ; 4 # No       SINHALA ARCHAIC DIGIT FOUR
        "\u112F4",  # ; 4.0 ; ; 4 # Nd       KHUDAWADI DIGIT FOUR
        "\u11454",  # ; 4.0 ; ; 4 # Nd       NEWA DIGIT FOUR
        "\u114D4",  # ; 4.0 ; ; 4 # Nd       TIRHUTA DIGIT FOUR
        "\u11654",  # ; 4.0 ; ; 4 # Nd       MODI DIGIT FOUR
        "\u116C4",  # ; 4.0 ; ; 4 # Nd       TAKRI DIGIT FOUR
        "\u11734",  # ; 4.0 ; ; 4 # Nd       AHOM DIGIT FOUR
        "\u118E4",  # ; 4.0 ; ; 4 # Nd       WARANG CITI DIGIT FOUR
        "\u11C54",  # ; 4.0 ; ; 4 # Nd       BHAIKSUKI DIGIT FOUR
        "\u11C5D",  # ; 4.0 ; ; 4 # No       BHAIKSUKI NUMBER FOUR
        "\u11D54",  # ; 4.0 ; ; 4 # Nd       MASARAM GONDI DIGIT FOUR
        "\u12402",  # ; 4.0 ; ; 4 # Nl       CUNEIFORM NUMERIC SIGN FOUR ASH
        "\u12409",  # ; 4.0 ; ; 4 # Nl       CUNEIFORM NUMERIC SIGN FOUR DISH
        "\u1240F",  # ; 4.0 ; ; 4 # Nl       CUNEIFORM NUMERIC SIGN FOUR U
        "\u12418",  # ; 4.0 ; ; 4 # Nl       CUNEIFORM NUMERIC SIGN FOUR GESH2
        "\u12421",  # ; 4.0 ; ; 4 # Nl       CUNEIFORM NUMERIC SIGN FOUR GESHU
        "\u12426",  # ; 4.0 ; ; 4 # Nl       CUNEIFORM NUMERIC SIGN FOUR SHAR2
        "\u12430",  # ; 4.0 ; ; 4 # Nl       CUNEIFORM NUMERIC SIGN FOUR SHARU
        "\u12438",  # ; 4.0 ; ; 4 # Nl       CUNEIFORM NUMERIC SIGN FOUR BURU
        "\u1243c","\u1243d","\u1243e","\u1243f",  # ; 4.0 ; ; 4 # Nl   [4] CUNEIFORM NUMERIC SIGN FOUR VARIANT FORM LIMMU..CUNEIFORM NUMERIC SIGN FOUR VARIANT FORM LIMMU B
        "\u1244C",  # ; 4.0 ; ; 4 # Nl       CUNEIFORM NUMERIC SIGN FOUR ASH TENU
        "\u12452","\u12453",  # ; 4.0 ; ; 4 # Nl   [2] CUNEIFORM NUMERIC SIGN FOUR BAN2..CUNEIFORM NUMERIC SIGN FOUR BAN2 VARIANT FORM
        "\u12469",  # ; 4.0 ; ; 4 # Nl       CUNEIFORM NUMERIC SIGN FOUR U VARIANT FORM
        "\u16A64",  # ; 4.0 ; ; 4 # Nd       MRO DIGIT FOUR
        "\u16B54",  # ; 4.0 ; ; 4 # Nd       PAHAWH HMONG DIGIT FOUR
        "\u1D363",  # ; 4.0 ; ; 4 # No       COUNTING ROD UNIT DIGIT FOUR
        "\u1D7D2",  # ; 4.0 ; ; 4 # Nd       MATHEMATICAL BOLD DIGIT FOUR
        "\u1D7DC",  # ; 4.0 ; ; 4 # Nd       MATHEMATICAL DOUBLE-STRUCK DIGIT FOUR
        "\u1D7E6",  # ; 4.0 ; ; 4 # Nd       MATHEMATICAL SANS-SERIF DIGIT FOUR
        "\u1D7F0",  # ; 4.0 ; ; 4 # Nd       MATHEMATICAL SANS-SERIF BOLD DIGIT FOUR
        "\u1D7FA",  # ; 4.0 ; ; 4 # Nd       MATHEMATICAL MONOSPACE DIGIT FOUR
        "\u1E8CA",  # ; 4.0 ; ; 4 # No       MENDE KIKAKUI DIGIT FOUR
        "\u1E954",  # ; 4.0 ; ; 4 # Nd       ADLAM DIGIT FOUR
        "\u1F105",  # ; 4.0 ; ; 4 # No       DIGIT FOUR COMMA
        "\u20064",  # ; 4.0 ; ; 4 # Lo       CJK UNIFIED IDEOGRAPH-20064
        "\u200E2",  # ; 4.0 ; ; 4 # Lo       CJK UNIFIED IDEOGRAPH-200E2
        "\u2626D",  # ; 4.0 ; ; 4 # Lo       CJK UNIFIED IDEOGRAPH-2626D
        "\u0F2E",  # ; 4.5 ; ; 9/2 # No       TIBETAN DIGIT HALF FIVE
        "\u0035",  # ; 5.0 ; ; 5 # Nd       DIGIT FIVE
        "\u0665",  # ; 5.0 ; ; 5 # Nd       ARABIC-INDIC DIGIT FIVE
        "\u06F5",  # ; 5.0 ; ; 5 # Nd       EXTENDED ARABIC-INDIC DIGIT FIVE
        "\u07C5",  # ; 5.0 ; ; 5 # Nd       NKO DIGIT FIVE
        "\u096B",  # ; 5.0 ; ; 5 # Nd       DEVANAGARI DIGIT FIVE
        "\u09EB",  # ; 5.0 ; ; 5 # Nd       BENGALI DIGIT FIVE
        "\u0A6B",  # ; 5.0 ; ; 5 # Nd       GURMUKHI DIGIT FIVE
        "\u0AEB",  # ; 5.0 ; ; 5 # Nd       GUJARATI DIGIT FIVE
        "\u0B6B",  # ; 5.0 ; ; 5 # Nd       ORIYA DIGIT FIVE
        "\u0BEB",  # ; 5.0 ; ; 5 # Nd       TAMIL DIGIT FIVE
        "\u0C6B",  # ; 5.0 ; ; 5 # Nd       TELUGU DIGIT FIVE
        "\u0CEB",  # ; 5.0 ; ; 5 # Nd       KANNADA DIGIT FIVE
        "\u0D6B",  # ; 5.0 ; ; 5 # Nd       MALAYALAM DIGIT FIVE
        "\u0DEB",  # ; 5.0 ; ; 5 # Nd       SINHALA LITH DIGIT FIVE
        "\u0E55",  # ; 5.0 ; ; 5 # Nd       THAI DIGIT FIVE
        "\u0ED5",  # ; 5.0 ; ; 5 # Nd       LAO DIGIT FIVE
        "\u0F25",  # ; 5.0 ; ; 5 # Nd       TIBETAN DIGIT FIVE
        "\u1045",  # ; 5.0 ; ; 5 # Nd       MYANMAR DIGIT FIVE
        "\u1095",  # ; 5.0 ; ; 5 # Nd       MYANMAR SHAN DIGIT FIVE
        "\u136D",  # ; 5.0 ; ; 5 # No       ETHIOPIC DIGIT FIVE
        "\u17E5",  # ; 5.0 ; ; 5 # Nd       KHMER DIGIT FIVE
        "\u17F5",  # ; 5.0 ; ; 5 # No       KHMER SYMBOL LEK ATTAK PRAM
        "\u1815",  # ; 5.0 ; ; 5 # Nd       MONGOLIAN DIGIT FIVE
        "\u194B",  # ; 5.0 ; ; 5 # Nd       LIMBU DIGIT FIVE
        "\u19D5",  # ; 5.0 ; ; 5 # Nd       NEW TAI LUE DIGIT FIVE
        "\u1A85",  # ; 5.0 ; ; 5 # Nd       TAI THAM HORA DIGIT FIVE
        "\u1A95",  # ; 5.0 ; ; 5 # Nd       TAI THAM THAM DIGIT FIVE
        "\u1B55",  # ; 5.0 ; ; 5 # Nd       BALINESE DIGIT FIVE
        "\u1BB5",  # ; 5.0 ; ; 5 # Nd       SUNDANESE DIGIT FIVE
        "\u1C45",  # ; 5.0 ; ; 5 # Nd       LEPCHA DIGIT FIVE
        "\u1C55",  # ; 5.0 ; ; 5 # Nd       OL CHIKI DIGIT FIVE
        "\u2075",  # ; 5.0 ; ; 5 # No       SUPERSCRIPT FIVE
        "\u2085",  # ; 5.0 ; ; 5 # No       SUBSCRIPT FIVE
        "\u2164",  # ; 5.0 ; ; 5 # Nl       ROMAN NUMERAL FIVE
        "\u2174",  # ; 5.0 ; ; 5 # Nl       SMALL ROMAN NUMERAL FIVE
        "\u2464",  # ; 5.0 ; ; 5 # No       CIRCLED DIGIT FIVE
        "\u2478",  # ; 5.0 ; ; 5 # No       PARENTHESIZED DIGIT FIVE
        "\u248C",  # ; 5.0 ; ; 5 # No       DIGIT FIVE FULL STOP
        "\u24F9",  # ; 5.0 ; ; 5 # No       DOUBLE CIRCLED DIGIT FIVE
        "\u277A",  # ; 5.0 ; ; 5 # No       DINGBAT NEGATIVE CIRCLED DIGIT FIVE
        "\u2784",  # ; 5.0 ; ; 5 # No       DINGBAT CIRCLED SANS-SERIF DIGIT FIVE
        "\u278E",  # ; 5.0 ; ; 5 # No       DINGBAT NEGATIVE CIRCLED SANS-SERIF DIGIT FIVE
        "\u3025",  # ; 5.0 ; ; 5 # Nl       HANGZHOU NUMERAL FIVE
        "\u3224",  # ; 5.0 ; ; 5 # No       PARENTHESIZED IDEOGRAPH FIVE
        "\u3284",  # ; 5.0 ; ; 5 # No       CIRCLED IDEOGRAPH FIVE
        "\u3405",  # ; 5.0 ; ; 5 # Lo       CJK UNIFIED IDEOGRAPH-3405
        "\u382A",  # ; 5.0 ; ; 5 # Lo       CJK UNIFIED IDEOGRAPH-382A
        "\u4E94",  # ; 5.0 ; ; 5 # Lo       CJK UNIFIED IDEOGRAPH-4E94
        "\u4F0D",  # ; 5.0 ; ; 5 # Lo       CJK UNIFIED IDEOGRAPH-4F0D
        "\uA625",  # ; 5.0 ; ; 5 # Nd       VAI DIGIT FIVE
        "\uA6EA",  # ; 5.0 ; ; 5 # Nl       BAMUM LETTER TEN
        "\uA8D5",  # ; 5.0 ; ; 5 # Nd       SAURASHTRA DIGIT FIVE
        "\uA905",  # ; 5.0 ; ; 5 # Nd       KAYAH LI DIGIT FIVE
        "\uA9D5",  # ; 5.0 ; ; 5 # Nd       JAVANESE DIGIT FIVE
        "\uA9F5",  # ; 5.0 ; ; 5 # Nd       MYANMAR TAI LAING DIGIT FIVE
        "\uAA55",  # ; 5.0 ; ; 5 # Nd       CHAM DIGIT FIVE
        "\uABF5",  # ; 5.0 ; ; 5 # Nd       MEETEI MAYEK DIGIT FIVE
        "\uFF15",  # ; 5.0 ; ; 5 # Nd       FULLWIDTH DIGIT FIVE
        "\u1010B",  # ; 5.0 ; ; 5 # No       AEGEAN NUMBER FIVE
        "\u10143",  # ; 5.0 ; ; 5 # Nl       GREEK ACROPHONIC ATTIC FIVE
        "\u10148",  # ; 5.0 ; ; 5 # Nl       GREEK ACROPHONIC ATTIC FIVE TALENTS
        "\u1014F",  # ; 5.0 ; ; 5 # Nl       GREEK ACROPHONIC ATTIC FIVE STATERS
        "\u1015F",  # ; 5.0 ; ; 5 # Nl       GREEK ACROPHONIC TROEZENIAN FIVE
        "\u10173",  # ; 5.0 ; ; 5 # Nl       GREEK ACROPHONIC DELPHIC FIVE MNAS
        "\u102E5",  # ; 5.0 ; ; 5 # No       COPTIC EPACT DIGIT FIVE
        "\u10321",  # ; 5.0 ; ; 5 # No       OLD ITALIC NUMERAL FIVE
        "\u104A5",  # ; 5.0 ; ; 5 # Nd       OSMANYA DIGIT FIVE
        "\u1087D",  # ; 5.0 ; ; 5 # No       PALMYRENE NUMBER FIVE
        "\u108AC",  # ; 5.0 ; ; 5 # No       NABATAEAN NUMBER FIVE
        "\u108FC",  # ; 5.0 ; ; 5 # No       HATRAN NUMBER FIVE
        "\u109C4",  # ; 5.0 ; ; 5 # No       MEROITIC CURSIVE NUMBER FIVE
        "\u10AEC",  # ; 5.0 ; ; 5 # No       MANICHAEAN NUMBER FIVE
        "\u10CFB",  # ; 5.0 ; ; 5 # No       OLD HUNGARIAN NUMBER FIVE
        "\u10E64",  # ; 5.0 ; ; 5 # No       RUMI DIGIT FIVE
        "\u11056",  # ; 5.0 ; ; 5 # No       BRAHMI NUMBER FIVE
        "\u1106B",  # ; 5.0 ; ; 5 # Nd       BRAHMI DIGIT FIVE
        "\u110F5",  # ; 5.0 ; ; 5 # Nd       SORA SOMPENG DIGIT FIVE
        "\u1113B",  # ; 5.0 ; ; 5 # Nd       CHAKMA DIGIT FIVE
        "\u111D5",  # ; 5.0 ; ; 5 # Nd       SHARADA DIGIT FIVE
        "\u111E5",  # ; 5.0 ; ; 5 # No       SINHALA ARCHAIC DIGIT FIVE
        "\u112F5",  # ; 5.0 ; ; 5 # Nd       KHUDAWADI DIGIT FIVE
        "\u11455",  # ; 5.0 ; ; 5 # Nd       NEWA DIGIT FIVE
        "\u114D5",  # ; 5.0 ; ; 5 # Nd       TIRHUTA DIGIT FIVE
        "\u11655",  # ; 5.0 ; ; 5 # Nd       MODI DIGIT FIVE
        "\u116C5",  # ; 5.0 ; ; 5 # Nd       TAKRI DIGIT FIVE
        "\u11735",  # ; 5.0 ; ; 5 # Nd       AHOM DIGIT FIVE
        "\u118E5",  # ; 5.0 ; ; 5 # Nd       WARANG CITI DIGIT FIVE
        "\u11C55",  # ; 5.0 ; ; 5 # Nd       BHAIKSUKI DIGIT FIVE
        "\u11C5E",  # ; 5.0 ; ; 5 # No       BHAIKSUKI NUMBER FIVE
        "\u11D55",  # ; 5.0 ; ; 5 # Nd       MASARAM GONDI DIGIT FIVE
        "\u12403",  # ; 5.0 ; ; 5 # Nl       CUNEIFORM NUMERIC SIGN FIVE ASH
        "\u1240A",  # ; 5.0 ; ; 5 # Nl       CUNEIFORM NUMERIC SIGN FIVE DISH
        "\u12410",  # ; 5.0 ; ; 5 # Nl       CUNEIFORM NUMERIC SIGN FIVE U
        "\u12419",  # ; 5.0 ; ; 5 # Nl       CUNEIFORM NUMERIC SIGN FIVE GESH2
        "\u12422",  # ; 5.0 ; ; 5 # Nl       CUNEIFORM NUMERIC SIGN FIVE GESHU
        "\u12427",  # ; 5.0 ; ; 5 # Nl       CUNEIFORM NUMERIC SIGN FIVE SHAR2
        "\u12431",  # ; 5.0 ; ; 5 # Nl       CUNEIFORM NUMERIC SIGN FIVE SHARU
        "\u12439",  # ; 5.0 ; ; 5 # Nl       CUNEIFORM NUMERIC SIGN FIVE BURU
        "\u1244D",  # ; 5.0 ; ; 5 # Nl       CUNEIFORM NUMERIC SIGN FIVE ASH TENU
        "\u12454","\u12455",  # ; 5.0 ; ; 5 # Nl   [2] CUNEIFORM NUMERIC SIGN FIVE BAN2..CUNEIFORM NUMERIC SIGN FIVE BAN2 VARIANT FORM
        "\u1246A",  # ; 5.0 ; ; 5 # Nl       CUNEIFORM NUMERIC SIGN FIVE U VARIANT FORM
        "\u16A65",  # ; 5.0 ; ; 5 # Nd       MRO DIGIT FIVE
        "\u16B55",  # ; 5.0 ; ; 5 # Nd       PAHAWH HMONG DIGIT FIVE
        "\u1D364",  # ; 5.0 ; ; 5 # No       COUNTING ROD UNIT DIGIT FIVE
        "\u1D7D3",  # ; 5.0 ; ; 5 # Nd       MATHEMATICAL BOLD DIGIT FIVE
        "\u1D7DD",  # ; 5.0 ; ; 5 # Nd       MATHEMATICAL DOUBLE-STRUCK DIGIT FIVE
        "\u1D7E7",  # ; 5.0 ; ; 5 # Nd       MATHEMATICAL SANS-SERIF DIGIT FIVE
        "\u1D7F1",  # ; 5.0 ; ; 5 # Nd       MATHEMATICAL SANS-SERIF BOLD DIGIT FIVE
        "\u1D7FB",  # ; 5.0 ; ; 5 # Nd       MATHEMATICAL MONOSPACE DIGIT FIVE
        "\u1E8CB",  # ; 5.0 ; ; 5 # No       MENDE KIKAKUI DIGIT FIVE
        "\u1E955",  # ; 5.0 ; ; 5 # Nd       ADLAM DIGIT FIVE
        "\u1F106",  # ; 5.0 ; ; 5 # No       DIGIT FIVE COMMA
        "\u20121",  # ; 5.0 ; ; 5 # Lo       CJK UNIFIED IDEOGRAPH-20121
        "\u0F2F",  # ; 5.5 ; ; 11/2 # No       TIBETAN DIGIT HALF SIX
        "\u0036",  # ; 6.0 ; ; 6 # Nd       DIGIT SIX
        "\u0666",  # ; 6.0 ; ; 6 # Nd       ARABIC-INDIC DIGIT SIX
        "\u06F6",  # ; 6.0 ; ; 6 # Nd       EXTENDED ARABIC-INDIC DIGIT SIX
        "\u07C6",  # ; 6.0 ; ; 6 # Nd       NKO DIGIT SIX
        "\u096C",  # ; 6.0 ; ; 6 # Nd       DEVANAGARI DIGIT SIX
        "\u09EC",  # ; 6.0 ; ; 6 # Nd       BENGALI DIGIT SIX
        "\u0A6C",  # ; 6.0 ; ; 6 # Nd       GURMUKHI DIGIT SIX
        "\u0AEC",  # ; 6.0 ; ; 6 # Nd       GUJARATI DIGIT SIX
        "\u0B6C",  # ; 6.0 ; ; 6 # Nd       ORIYA DIGIT SIX
        "\u0BEC",  # ; 6.0 ; ; 6 # Nd       TAMIL DIGIT SIX
        "\u0C6C",  # ; 6.0 ; ; 6 # Nd       TELUGU DIGIT SIX
        "\u0CEC",  # ; 6.0 ; ; 6 # Nd       KANNADA DIGIT SIX
        "\u0D6C",  # ; 6.0 ; ; 6 # Nd       MALAYALAM DIGIT SIX
        "\u0DEC",  # ; 6.0 ; ; 6 # Nd       SINHALA LITH DIGIT SIX
        "\u0E56",  # ; 6.0 ; ; 6 # Nd       THAI DIGIT SIX
        "\u0ED6",  # ; 6.0 ; ; 6 # Nd       LAO DIGIT SIX
        "\u0F26",  # ; 6.0 ; ; 6 # Nd       TIBETAN DIGIT SIX
        "\u1046",  # ; 6.0 ; ; 6 # Nd       MYANMAR DIGIT SIX
        "\u1096",  # ; 6.0 ; ; 6 # Nd       MYANMAR SHAN DIGIT SIX
        "\u136E",  # ; 6.0 ; ; 6 # No       ETHIOPIC DIGIT SIX
        "\u17E6",  # ; 6.0 ; ; 6 # Nd       KHMER DIGIT SIX
        "\u17F6",  # ; 6.0 ; ; 6 # No       KHMER SYMBOL LEK ATTAK PRAM-MUOY
        "\u1816",  # ; 6.0 ; ; 6 # Nd       MONGOLIAN DIGIT SIX
        "\u194C",  # ; 6.0 ; ; 6 # Nd       LIMBU DIGIT SIX
        "\u19D6",  # ; 6.0 ; ; 6 # Nd       NEW TAI LUE DIGIT SIX
        "\u1A86",  # ; 6.0 ; ; 6 # Nd       TAI THAM HORA DIGIT SIX
        "\u1A96",  # ; 6.0 ; ; 6 # Nd       TAI THAM THAM DIGIT SIX
        "\u1B56",  # ; 6.0 ; ; 6 # Nd       BALINESE DIGIT SIX
        "\u1BB6",  # ; 6.0 ; ; 6 # Nd       SUNDANESE DIGIT SIX
        "\u1C46",  # ; 6.0 ; ; 6 # Nd       LEPCHA DIGIT SIX
        "\u1C56",  # ; 6.0 ; ; 6 # Nd       OL CHIKI DIGIT SIX
        "\u2076",  # ; 6.0 ; ; 6 # No       SUPERSCRIPT SIX
        "\u2086",  # ; 6.0 ; ; 6 # No       SUBSCRIPT SIX
        "\u2165",  # ; 6.0 ; ; 6 # Nl       ROMAN NUMERAL SIX
        "\u2175",  # ; 6.0 ; ; 6 # Nl       SMALL ROMAN NUMERAL SIX
        "\u2185",  # ; 6.0 ; ; 6 # Nl       ROMAN NUMERAL SIX LATE FORM
        "\u2465",  # ; 6.0 ; ; 6 # No       CIRCLED DIGIT SIX
        "\u2479",  # ; 6.0 ; ; 6 # No       PARENTHESIZED DIGIT SIX
        "\u248D",  # ; 6.0 ; ; 6 # No       DIGIT SIX FULL STOP
        "\u24FA",  # ; 6.0 ; ; 6 # No       DOUBLE CIRCLED DIGIT SIX
        "\u277B",  # ; 6.0 ; ; 6 # No       DINGBAT NEGATIVE CIRCLED DIGIT SIX
        "\u2785",  # ; 6.0 ; ; 6 # No       DINGBAT CIRCLED SANS-SERIF DIGIT SIX
        "\u278F",  # ; 6.0 ; ; 6 # No       DINGBAT NEGATIVE CIRCLED SANS-SERIF DIGIT SIX
        "\u3026",  # ; 6.0 ; ; 6 # Nl       HANGZHOU NUMERAL SIX
        "\u3225",  # ; 6.0 ; ; 6 # No       PARENTHESIZED IDEOGRAPH SIX
        "\u3285",  # ; 6.0 ; ; 6 # No       CIRCLED IDEOGRAPH SIX
        "\u516D",  # ; 6.0 ; ; 6 # Lo       CJK UNIFIED IDEOGRAPH-516D
        "\u9646",  # ; 6.0 ; ; 6 # Lo       CJK UNIFIED IDEOGRAPH-9646
        "\u9678",  # ; 6.0 ; ; 6 # Lo       CJK UNIFIED IDEOGRAPH-9678
        "\uA626",  # ; 6.0 ; ; 6 # Nd       VAI DIGIT SIX
        "\uA6EB",  # ; 6.0 ; ; 6 # Nl       BAMUM LETTER NTUU
        "\uA8D6",  # ; 6.0 ; ; 6 # Nd       SAURASHTRA DIGIT SIX
        "\uA906",  # ; 6.0 ; ; 6 # Nd       KAYAH LI DIGIT SIX
        "\uA9D6",  # ; 6.0 ; ; 6 # Nd       JAVANESE DIGIT SIX
        "\uA9F6",  # ; 6.0 ; ; 6 # Nd       MYANMAR TAI LAING DIGIT SIX
        "\uAA56",  # ; 6.0 ; ; 6 # Nd       CHAM DIGIT SIX
        "\uABF6",  # ; 6.0 ; ; 6 # Nd       MEETEI MAYEK DIGIT SIX
        "\uF9D1",  # ; 6.0 ; ; 6 # Lo       CJK COMPATIBILITY IDEOGRAPH-F9D1
        "\uF9D3",  # ; 6.0 ; ; 6 # Lo       CJK COMPATIBILITY IDEOGRAPH-F9D3
        "\uFF16",  # ; 6.0 ; ; 6 # Nd       FULLWIDTH DIGIT SIX
        "\u1010C",  # ; 6.0 ; ; 6 # No       AEGEAN NUMBER SIX
        "\u102E6",  # ; 6.0 ; ; 6 # No       COPTIC EPACT DIGIT SIX
        "\u104A6",  # ; 6.0 ; ; 6 # Nd       OSMANYA DIGIT SIX
        "\u109C5",  # ; 6.0 ; ; 6 # No       MEROITIC CURSIVE NUMBER SIX
        "\u10E65",  # ; 6.0 ; ; 6 # No       RUMI DIGIT SIX
        "\u11057",  # ; 6.0 ; ; 6 # No       BRAHMI NUMBER SIX
        "\u1106C",  # ; 6.0 ; ; 6 # Nd       BRAHMI DIGIT SIX
        "\u110F6",  # ; 6.0 ; ; 6 # Nd       SORA SOMPENG DIGIT SIX
        "\u1113C",  # ; 6.0 ; ; 6 # Nd       CHAKMA DIGIT SIX
        "\u111D6",  # ; 6.0 ; ; 6 # Nd       SHARADA DIGIT SIX
        "\u111E6",  # ; 6.0 ; ; 6 # No       SINHALA ARCHAIC DIGIT SIX
        "\u112F6",  # ; 6.0 ; ; 6 # Nd       KHUDAWADI DIGIT SIX
        "\u11456",  # ; 6.0 ; ; 6 # Nd       NEWA DIGIT SIX
        "\u114D6",  # ; 6.0 ; ; 6 # Nd       TIRHUTA DIGIT SIX
        "\u11656",  # ; 6.0 ; ; 6 # Nd       MODI DIGIT SIX
        "\u116C6",  # ; 6.0 ; ; 6 # Nd       TAKRI DIGIT SIX
        "\u11736",  # ; 6.0 ; ; 6 # Nd       AHOM DIGIT SIX
        "\u118E6",  # ; 6.0 ; ; 6 # Nd       WARANG CITI DIGIT SIX
        "\u11C56",  # ; 6.0 ; ; 6 # Nd       BHAIKSUKI DIGIT SIX
        "\u11C5F",  # ; 6.0 ; ; 6 # No       BHAIKSUKI NUMBER SIX
        "\u11D56",  # ; 6.0 ; ; 6 # Nd       MASARAM GONDI DIGIT SIX
        "\u12404",  # ; 6.0 ; ; 6 # Nl       CUNEIFORM NUMERIC SIGN SIX ASH
        "\u1240B",  # ; 6.0 ; ; 6 # Nl       CUNEIFORM NUMERIC SIGN SIX DISH
        "\u12411",  # ; 6.0 ; ; 6 # Nl       CUNEIFORM NUMERIC SIGN SIX U
        "\u1241A",  # ; 6.0 ; ; 6 # Nl       CUNEIFORM NUMERIC SIGN SIX GESH2
        "\u12428",  # ; 6.0 ; ; 6 # Nl       CUNEIFORM NUMERIC SIGN SIX SHAR2
        "\u12440",  # ; 6.0 ; ; 6 # Nl       CUNEIFORM NUMERIC SIGN SIX VARIANT FORM ASH9
        "\u1244E",  # ; 6.0 ; ; 6 # Nl       CUNEIFORM NUMERIC SIGN SIX ASH TENU
        "\u1246B",  # ; 6.0 ; ; 6 # Nl       CUNEIFORM NUMERIC SIGN SIX U VARIANT FORM
        "\u16A66",  # ; 6.0 ; ; 6 # Nd       MRO DIGIT SIX
        "\u16B56",  # ; 6.0 ; ; 6 # Nd       PAHAWH HMONG DIGIT SIX
        "\u1D365",  # ; 6.0 ; ; 6 # No       COUNTING ROD UNIT DIGIT SIX
        "\u1D7D4",  # ; 6.0 ; ; 6 # Nd       MATHEMATICAL BOLD DIGIT SIX
        "\u1D7DE",  # ; 6.0 ; ; 6 # Nd       MATHEMATICAL DOUBLE-STRUCK DIGIT SIX
        "\u1D7E8",  # ; 6.0 ; ; 6 # Nd       MATHEMATICAL SANS-SERIF DIGIT SIX
        "\u1D7F2",  # ; 6.0 ; ; 6 # Nd       MATHEMATICAL SANS-SERIF BOLD DIGIT SIX
        "\u1D7FC",  # ; 6.0 ; ; 6 # Nd       MATHEMATICAL MONOSPACE DIGIT SIX
        "\u1E8CC",  # ; 6.0 ; ; 6 # No       MENDE KIKAKUI DIGIT SIX
        "\u1E956",  # ; 6.0 ; ; 6 # Nd       ADLAM DIGIT SIX
        "\u1F107",  # ; 6.0 ; ; 6 # No       DIGIT SIX COMMA
        "\u20AEA",  # ; 6.0 ; ; 6 # Lo       CJK UNIFIED IDEOGRAPH-20AEA
        "\u0F30",  # ; 6.5 ; ; 13/2 # No       TIBETAN DIGIT HALF SEVEN
        "\u0037",  # ; 7.0 ; ; 7 # Nd       DIGIT SEVEN
        "\u0667",  # ; 7.0 ; ; 7 # Nd       ARABIC-INDIC DIGIT SEVEN
        "\u06F7",  # ; 7.0 ; ; 7 # Nd       EXTENDED ARABIC-INDIC DIGIT SEVEN
        "\u07C7",  # ; 7.0 ; ; 7 # Nd       NKO DIGIT SEVEN
        "\u096D",  # ; 7.0 ; ; 7 # Nd       DEVANAGARI DIGIT SEVEN
        "\u09ED",  # ; 7.0 ; ; 7 # Nd       BENGALI DIGIT SEVEN
        "\u0A6D",  # ; 7.0 ; ; 7 # Nd       GURMUKHI DIGIT SEVEN
        "\u0AED",  # ; 7.0 ; ; 7 # Nd       GUJARATI DIGIT SEVEN
        "\u0B6D",  # ; 7.0 ; ; 7 # Nd       ORIYA DIGIT SEVEN
        "\u0BED",  # ; 7.0 ; ; 7 # Nd       TAMIL DIGIT SEVEN
        "\u0C6D",  # ; 7.0 ; ; 7 # Nd       TELUGU DIGIT SEVEN
        "\u0CED",  # ; 7.0 ; ; 7 # Nd       KANNADA DIGIT SEVEN
        "\u0D6D",  # ; 7.0 ; ; 7 # Nd       MALAYALAM DIGIT SEVEN
        "\u0DED",  # ; 7.0 ; ; 7 # Nd       SINHALA LITH DIGIT SEVEN
        "\u0E57",  # ; 7.0 ; ; 7 # Nd       THAI DIGIT SEVEN
        "\u0ED7",  # ; 7.0 ; ; 7 # Nd       LAO DIGIT SEVEN
        "\u0F27",  # ; 7.0 ; ; 7 # Nd       TIBETAN DIGIT SEVEN
        "\u1047",  # ; 7.0 ; ; 7 # Nd       MYANMAR DIGIT SEVEN
        "\u1097",  # ; 7.0 ; ; 7 # Nd       MYANMAR SHAN DIGIT SEVEN
        "\u136F",  # ; 7.0 ; ; 7 # No       ETHIOPIC DIGIT SEVEN
        "\u17E7",  # ; 7.0 ; ; 7 # Nd       KHMER DIGIT SEVEN
        "\u17F7",  # ; 7.0 ; ; 7 # No       KHMER SYMBOL LEK ATTAK PRAM-PII
        "\u1817",  # ; 7.0 ; ; 7 # Nd       MONGOLIAN DIGIT SEVEN
        "\u194D",  # ; 7.0 ; ; 7 # Nd       LIMBU DIGIT SEVEN
        "\u19D7",  # ; 7.0 ; ; 7 # Nd       NEW TAI LUE DIGIT SEVEN
        "\u1A87",  # ; 7.0 ; ; 7 # Nd       TAI THAM HORA DIGIT SEVEN
        "\u1A97",  # ; 7.0 ; ; 7 # Nd       TAI THAM THAM DIGIT SEVEN
        "\u1B57",  # ; 7.0 ; ; 7 # Nd       BALINESE DIGIT SEVEN
        "\u1BB7",  # ; 7.0 ; ; 7 # Nd       SUNDANESE DIGIT SEVEN
        "\u1C47",  # ; 7.0 ; ; 7 # Nd       LEPCHA DIGIT SEVEN
        "\u1C57",  # ; 7.0 ; ; 7 # Nd       OL CHIKI DIGIT SEVEN
        "\u2077",  # ; 7.0 ; ; 7 # No       SUPERSCRIPT SEVEN
        "\u2087",  # ; 7.0 ; ; 7 # No       SUBSCRIPT SEVEN
        "\u2166",  # ; 7.0 ; ; 7 # Nl       ROMAN NUMERAL SEVEN
        "\u2176",  # ; 7.0 ; ; 7 # Nl       SMALL ROMAN NUMERAL SEVEN
        "\u2466",  # ; 7.0 ; ; 7 # No       CIRCLED DIGIT SEVEN
        "\u247A",  # ; 7.0 ; ; 7 # No       PARENTHESIZED DIGIT SEVEN
        "\u248E",  # ; 7.0 ; ; 7 # No       DIGIT SEVEN FULL STOP
        "\u24FB",  # ; 7.0 ; ; 7 # No       DOUBLE CIRCLED DIGIT SEVEN
        "\u277C",  # ; 7.0 ; ; 7 # No       DINGBAT NEGATIVE CIRCLED DIGIT SEVEN
        "\u2786",  # ; 7.0 ; ; 7 # No       DINGBAT CIRCLED SANS-SERIF DIGIT SEVEN
        "\u2790",  # ; 7.0 ; ; 7 # No       DINGBAT NEGATIVE CIRCLED SANS-SERIF DIGIT SEVEN
        "\u3027",  # ; 7.0 ; ; 7 # Nl       HANGZHOU NUMERAL SEVEN
        "\u3226",  # ; 7.0 ; ; 7 # No       PARENTHESIZED IDEOGRAPH SEVEN
        "\u3286",  # ; 7.0 ; ; 7 # No       CIRCLED IDEOGRAPH SEVEN
        "\u3B4D",  # ; 7.0 ; ; 7 # Lo       CJK UNIFIED IDEOGRAPH-3B4D
        "\u4E03",  # ; 7.0 ; ; 7 # Lo       CJK UNIFIED IDEOGRAPH-4E03
        "\u67D2",  # ; 7.0 ; ; 7 # Lo       CJK UNIFIED IDEOGRAPH-67D2
        "\u6F06",  # ; 7.0 ; ; 7 # Lo       CJK UNIFIED IDEOGRAPH-6F06
        "\uA627",  # ; 7.0 ; ; 7 # Nd       VAI DIGIT SEVEN
        "\uA6EC",  # ; 7.0 ; ; 7 # Nl       BAMUM LETTER SAMBA
        "\uA8D7",  # ; 7.0 ; ; 7 # Nd       SAURASHTRA DIGIT SEVEN
        "\uA907",  # ; 7.0 ; ; 7 # Nd       KAYAH LI DIGIT SEVEN
        "\uA9D7",  # ; 7.0 ; ; 7 # Nd       JAVANESE DIGIT SEVEN
        "\uA9F7",  # ; 7.0 ; ; 7 # Nd       MYANMAR TAI LAING DIGIT SEVEN
        "\uAA57",  # ; 7.0 ; ; 7 # Nd       CHAM DIGIT SEVEN
        "\uABF7",  # ; 7.0 ; ; 7 # Nd       MEETEI MAYEK DIGIT SEVEN
        "\uFF17",  # ; 7.0 ; ; 7 # Nd       FULLWIDTH DIGIT SEVEN
        "\u1010D",  # ; 7.0 ; ; 7 # No       AEGEAN NUMBER SEVEN
        "\u102E7",  # ; 7.0 ; ; 7 # No       COPTIC EPACT DIGIT SEVEN
        "\u104A7",  # ; 7.0 ; ; 7 # Nd       OSMANYA DIGIT SEVEN
        "\u109C6",  # ; 7.0 ; ; 7 # No       MEROITIC CURSIVE NUMBER SEVEN
        "\u10E66",  # ; 7.0 ; ; 7 # No       RUMI DIGIT SEVEN
        "\u11058",  # ; 7.0 ; ; 7 # No       BRAHMI NUMBER SEVEN
        "\u1106D",  # ; 7.0 ; ; 7 # Nd       BRAHMI DIGIT SEVEN
        "\u110F7",  # ; 7.0 ; ; 7 # Nd       SORA SOMPENG DIGIT SEVEN
        "\u1113D",  # ; 7.0 ; ; 7 # Nd       CHAKMA DIGIT SEVEN
        "\u111D7",  # ; 7.0 ; ; 7 # Nd       SHARADA DIGIT SEVEN
        "\u111E7",  # ; 7.0 ; ; 7 # No       SINHALA ARCHAIC DIGIT SEVEN
        "\u112F7",  # ; 7.0 ; ; 7 # Nd       KHUDAWADI DIGIT SEVEN
        "\u11457",  # ; 7.0 ; ; 7 # Nd       NEWA DIGIT SEVEN
        "\u114D7",  # ; 7.0 ; ; 7 # Nd       TIRHUTA DIGIT SEVEN
        "\u11657",  # ; 7.0 ; ; 7 # Nd       MODI DIGIT SEVEN
        "\u116C7",  # ; 7.0 ; ; 7 # Nd       TAKRI DIGIT SEVEN
        "\u11737",  # ; 7.0 ; ; 7 # Nd       AHOM DIGIT SEVEN
        "\u118E7",  # ; 7.0 ; ; 7 # Nd       WARANG CITI DIGIT SEVEN
        "\u11C57",  # ; 7.0 ; ; 7 # Nd       BHAIKSUKI DIGIT SEVEN
        "\u11C60",  # ; 7.0 ; ; 7 # No       BHAIKSUKI NUMBER SEVEN
        "\u11D57",  # ; 7.0 ; ; 7 # Nd       MASARAM GONDI DIGIT SEVEN
        "\u12405",  # ; 7.0 ; ; 7 # Nl       CUNEIFORM NUMERIC SIGN SEVEN ASH
        "\u1240C",  # ; 7.0 ; ; 7 # Nl       CUNEIFORM NUMERIC SIGN SEVEN DISH
        "\u12412",  # ; 7.0 ; ; 7 # Nl       CUNEIFORM NUMERIC SIGN SEVEN U
        "\u1241B",  # ; 7.0 ; ; 7 # Nl       CUNEIFORM NUMERIC SIGN SEVEN GESH2
        "\u12429",  # ; 7.0 ; ; 7 # Nl       CUNEIFORM NUMERIC SIGN SEVEN SHAR2
        "\u12441","\u12442","\u12443",  # ; 7.0 ; ; 7 # Nl   [3] CUNEIFORM NUMERIC SIGN SEVEN VARIANT FORM IMIN3..CUNEIFORM NUMERIC SIGN SEVEN VARIANT FORM IMIN B
        "\u1246C",  # ; 7.0 ; ; 7 # Nl       CUNEIFORM NUMERIC SIGN SEVEN U VARIANT FORM
        "\u16A67",  # ; 7.0 ; ; 7 # Nd       MRO DIGIT SEVEN
        "\u16B57",  # ; 7.0 ; ; 7 # Nd       PAHAWH HMONG DIGIT SEVEN
        "\u1D366",  # ; 7.0 ; ; 7 # No       COUNTING ROD UNIT DIGIT SEVEN
        "\u1D7D5",  # ; 7.0 ; ; 7 # Nd       MATHEMATICAL BOLD DIGIT SEVEN
        "\u1D7DF",  # ; 7.0 ; ; 7 # Nd       MATHEMATICAL DOUBLE-STRUCK DIGIT SEVEN
        "\u1D7E9",  # ; 7.0 ; ; 7 # Nd       MATHEMATICAL SANS-SERIF DIGIT SEVEN
        "\u1D7F3",  # ; 7.0 ; ; 7 # Nd       MATHEMATICAL SANS-SERIF BOLD DIGIT SEVEN
        "\u1D7FD",  # ; 7.0 ; ; 7 # Nd       MATHEMATICAL MONOSPACE DIGIT SEVEN
        "\u1E8CD",  # ; 7.0 ; ; 7 # No       MENDE KIKAKUI DIGIT SEVEN
        "\u1E957",  # ; 7.0 ; ; 7 # Nd       ADLAM DIGIT SEVEN
        "\u1F108",  # ; 7.0 ; ; 7 # No       DIGIT SEVEN COMMA
        "\u20001",  # ; 7.0 ; ; 7 # Lo       CJK UNIFIED IDEOGRAPH-20001
        "\u0F31",  # ; 7.5 ; ; 15/2 # No       TIBETAN DIGIT HALF EIGHT
        "\u0038",  # ; 8.0 ; ; 8 # Nd       DIGIT EIGHT
        "\u0668",  # ; 8.0 ; ; 8 # Nd       ARABIC-INDIC DIGIT EIGHT
        "\u06F8",  # ; 8.0 ; ; 8 # Nd       EXTENDED ARABIC-INDIC DIGIT EIGHT
        "\u07C8",  # ; 8.0 ; ; 8 # Nd       NKO DIGIT EIGHT
        "\u096E",  # ; 8.0 ; ; 8 # Nd       DEVANAGARI DIGIT EIGHT
        "\u09EE",  # ; 8.0 ; ; 8 # Nd       BENGALI DIGIT EIGHT
        "\u0A6E",  # ; 8.0 ; ; 8 # Nd       GURMUKHI DIGIT EIGHT
        "\u0AEE",  # ; 8.0 ; ; 8 # Nd       GUJARATI DIGIT EIGHT
        "\u0B6E",  # ; 8.0 ; ; 8 # Nd       ORIYA DIGIT EIGHT
        "\u0BEE",  # ; 8.0 ; ; 8 # Nd       TAMIL DIGIT EIGHT
        "\u0C6E",  # ; 8.0 ; ; 8 # Nd       TELUGU DIGIT EIGHT
        "\u0CEE",  # ; 8.0 ; ; 8 # Nd       KANNADA DIGIT EIGHT
        "\u0D6E",  # ; 8.0 ; ; 8 # Nd       MALAYALAM DIGIT EIGHT
        "\u0DEE",  # ; 8.0 ; ; 8 # Nd       SINHALA LITH DIGIT EIGHT
        "\u0E58",  # ; 8.0 ; ; 8 # Nd       THAI DIGIT EIGHT
        "\u0ED8",  # ; 8.0 ; ; 8 # Nd       LAO DIGIT EIGHT
        "\u0F28",  # ; 8.0 ; ; 8 # Nd       TIBETAN DIGIT EIGHT
        "\u1048",  # ; 8.0 ; ; 8 # Nd       MYANMAR DIGIT EIGHT
        "\u1098",  # ; 8.0 ; ; 8 # Nd       MYANMAR SHAN DIGIT EIGHT
        "\u1370",  # ; 8.0 ; ; 8 # No       ETHIOPIC DIGIT EIGHT
        "\u17E8",  # ; 8.0 ; ; 8 # Nd       KHMER DIGIT EIGHT
        "\u17F8",  # ; 8.0 ; ; 8 # No       KHMER SYMBOL LEK ATTAK PRAM-BEI
        "\u1818",  # ; 8.0 ; ; 8 # Nd       MONGOLIAN DIGIT EIGHT
        "\u194E",  # ; 8.0 ; ; 8 # Nd       LIMBU DIGIT EIGHT
        "\u19D8",  # ; 8.0 ; ; 8 # Nd       NEW TAI LUE DIGIT EIGHT
        "\u1A88",  # ; 8.0 ; ; 8 # Nd       TAI THAM HORA DIGIT EIGHT
        "\u1A98",  # ; 8.0 ; ; 8 # Nd       TAI THAM THAM DIGIT EIGHT
        "\u1B58",  # ; 8.0 ; ; 8 # Nd       BALINESE DIGIT EIGHT
        "\u1BB8",  # ; 8.0 ; ; 8 # Nd       SUNDANESE DIGIT EIGHT
        "\u1C48",  # ; 8.0 ; ; 8 # Nd       LEPCHA DIGIT EIGHT
        "\u1C58",  # ; 8.0 ; ; 8 # Nd       OL CHIKI DIGIT EIGHT
        "\u2078",  # ; 8.0 ; ; 8 # No       SUPERSCRIPT EIGHT
        "\u2088",  # ; 8.0 ; ; 8 # No       SUBSCRIPT EIGHT
        "\u2167",  # ; 8.0 ; ; 8 # Nl       ROMAN NUMERAL EIGHT
        "\u2177",  # ; 8.0 ; ; 8 # Nl       SMALL ROMAN NUMERAL EIGHT
        "\u2467",  # ; 8.0 ; ; 8 # No       CIRCLED DIGIT EIGHT
        "\u247B",  # ; 8.0 ; ; 8 # No       PARENTHESIZED DIGIT EIGHT
        "\u248F",  # ; 8.0 ; ; 8 # No       DIGIT EIGHT FULL STOP
        "\u24FC",  # ; 8.0 ; ; 8 # No       DOUBLE CIRCLED DIGIT EIGHT
        "\u277D",  # ; 8.0 ; ; 8 # No       DINGBAT NEGATIVE CIRCLED DIGIT EIGHT
        "\u2787",  # ; 8.0 ; ; 8 # No       DINGBAT CIRCLED SANS-SERIF DIGIT EIGHT
        "\u2791",  # ; 8.0 ; ; 8 # No       DINGBAT NEGATIVE CIRCLED SANS-SERIF DIGIT EIGHT
        "\u3028",  # ; 8.0 ; ; 8 # Nl       HANGZHOU NUMERAL EIGHT
        "\u3227",  # ; 8.0 ; ; 8 # No       PARENTHESIZED IDEOGRAPH EIGHT
        "\u3287",  # ; 8.0 ; ; 8 # No       CIRCLED IDEOGRAPH EIGHT
        "\u516B",  # ; 8.0 ; ; 8 # Lo       CJK UNIFIED IDEOGRAPH-516B
        "\u634C",  # ; 8.0 ; ; 8 # Lo       CJK UNIFIED IDEOGRAPH-634C
        "\uA628",  # ; 8.0 ; ; 8 # Nd       VAI DIGIT EIGHT
        "\uA6ED",  # ; 8.0 ; ; 8 # Nl       BAMUM LETTER FAAMAE
        "\uA8D8",  # ; 8.0 ; ; 8 # Nd       SAURASHTRA DIGIT EIGHT
        "\uA908",  # ; 8.0 ; ; 8 # Nd       KAYAH LI DIGIT EIGHT
        "\uA9D8",  # ; 8.0 ; ; 8 # Nd       JAVANESE DIGIT EIGHT
        "\uA9F8",  # ; 8.0 ; ; 8 # Nd       MYANMAR TAI LAING DIGIT EIGHT
        "\uAA58",  # ; 8.0 ; ; 8 # Nd       CHAM DIGIT EIGHT
        "\uABF8",  # ; 8.0 ; ; 8 # Nd       MEETEI MAYEK DIGIT EIGHT
        "\uFF18",  # ; 8.0 ; ; 8 # Nd       FULLWIDTH DIGIT EIGHT
        "\u1010E",  # ; 8.0 ; ; 8 # No       AEGEAN NUMBER EIGHT
        "\u102E8",  # ; 8.0 ; ; 8 # No       COPTIC EPACT DIGIT EIGHT
        "\u104A8",  # ; 8.0 ; ; 8 # Nd       OSMANYA DIGIT EIGHT
        "\u109C7",  # ; 8.0 ; ; 8 # No       MEROITIC CURSIVE NUMBER EIGHT
        "\u10E67",  # ; 8.0 ; ; 8 # No       RUMI DIGIT EIGHT
        "\u11059",  # ; 8.0 ; ; 8 # No       BRAHMI NUMBER EIGHT
        "\u1106E",  # ; 8.0 ; ; 8 # Nd       BRAHMI DIGIT EIGHT
        "\u110F8",  # ; 8.0 ; ; 8 # Nd       SORA SOMPENG DIGIT EIGHT
        "\u1113E",  # ; 8.0 ; ; 8 # Nd       CHAKMA DIGIT EIGHT
        "\u111D8",  # ; 8.0 ; ; 8 # Nd       SHARADA DIGIT EIGHT
        "\u111E8",  # ; 8.0 ; ; 8 # No       SINHALA ARCHAIC DIGIT EIGHT
        "\u112F8",  # ; 8.0 ; ; 8 # Nd       KHUDAWADI DIGIT EIGHT
        "\u11458",  # ; 8.0 ; ; 8 # Nd       NEWA DIGIT EIGHT
        "\u114D8",  # ; 8.0 ; ; 8 # Nd       TIRHUTA DIGIT EIGHT
        "\u11658",  # ; 8.0 ; ; 8 # Nd       MODI DIGIT EIGHT
        "\u116C8",  # ; 8.0 ; ; 8 # Nd       TAKRI DIGIT EIGHT
        "\u11738",  # ; 8.0 ; ; 8 # Nd       AHOM DIGIT EIGHT
        "\u118E8",  # ; 8.0 ; ; 8 # Nd       WARANG CITI DIGIT EIGHT
        "\u11C58",  # ; 8.0 ; ; 8 # Nd       BHAIKSUKI DIGIT EIGHT
        "\u11C61",  # ; 8.0 ; ; 8 # No       BHAIKSUKI NUMBER EIGHT
        "\u11D58",  # ; 8.0 ; ; 8 # Nd       MASARAM GONDI DIGIT EIGHT
        "\u12406",  # ; 8.0 ; ; 8 # Nl       CUNEIFORM NUMERIC SIGN EIGHT ASH
        "\u1240D",  # ; 8.0 ; ; 8 # Nl       CUNEIFORM NUMERIC SIGN EIGHT DISH
        "\u12413",  # ; 8.0 ; ; 8 # Nl       CUNEIFORM NUMERIC SIGN EIGHT U
        "\u1241C",  # ; 8.0 ; ; 8 # Nl       CUNEIFORM NUMERIC SIGN EIGHT GESH2
        "\u1242A",  # ; 8.0 ; ; 8 # Nl       CUNEIFORM NUMERIC SIGN EIGHT SHAR2
        "\u12444","\u12445",  # ; 8.0 ; ; 8 # Nl   [2] CUNEIFORM NUMERIC SIGN EIGHT VARIANT FORM USSU..CUNEIFORM NUMERIC SIGN EIGHT VARIANT FORM USSU3
        "\u1246D",  # ; 8.0 ; ; 8 # Nl       CUNEIFORM NUMERIC SIGN EIGHT U VARIANT FORM
        "\u16A68",  # ; 8.0 ; ; 8 # Nd       MRO DIGIT EIGHT
        "\u16B58",  # ; 8.0 ; ; 8 # Nd       PAHAWH HMONG DIGIT EIGHT
        "\u1D367",  # ; 8.0 ; ; 8 # No       COUNTING ROD UNIT DIGIT EIGHT
        "\u1D7D6",  # ; 8.0 ; ; 8 # Nd       MATHEMATICAL BOLD DIGIT EIGHT
        "\u1D7E0",  # ; 8.0 ; ; 8 # Nd       MATHEMATICAL DOUBLE-STRUCK DIGIT EIGHT
        "\u1D7EA",  # ; 8.0 ; ; 8 # Nd       MATHEMATICAL SANS-SERIF DIGIT EIGHT
        "\u1D7F4",  # ; 8.0 ; ; 8 # Nd       MATHEMATICAL SANS-SERIF BOLD DIGIT EIGHT
        "\u1D7FE",  # ; 8.0 ; ; 8 # Nd       MATHEMATICAL MONOSPACE DIGIT EIGHT
        "\u1E8CE",  # ; 8.0 ; ; 8 # No       MENDE KIKAKUI DIGIT EIGHT
        "\u1E958",  # ; 8.0 ; ; 8 # Nd       ADLAM DIGIT EIGHT
        "\u1F109",  # ; 8.0 ; ; 8 # No       DIGIT EIGHT COMMA
        "\u0F32",  # ; 8.5 ; ; 17/2 # No       TIBETAN DIGIT HALF NINE
        "\u0039",  # ; 9.0 ; ; 9 # Nd       DIGIT NINE
        "\u0669",  # ; 9.0 ; ; 9 # Nd       ARABIC-INDIC DIGIT NINE
        "\u06F9",  # ; 9.0 ; ; 9 # Nd       EXTENDED ARABIC-INDIC DIGIT NINE
        "\u07C9",  # ; 9.0 ; ; 9 # Nd       NKO DIGIT NINE
        "\u096F",  # ; 9.0 ; ; 9 # Nd       DEVANAGARI DIGIT NINE
        "\u09EF",  # ; 9.0 ; ; 9 # Nd       BENGALI DIGIT NINE
        "\u0A6F",  # ; 9.0 ; ; 9 # Nd       GURMUKHI DIGIT NINE
        "\u0AEF",  # ; 9.0 ; ; 9 # Nd       GUJARATI DIGIT NINE
        "\u0B6F",  # ; 9.0 ; ; 9 # Nd       ORIYA DIGIT NINE
        "\u0BEF",  # ; 9.0 ; ; 9 # Nd       TAMIL DIGIT NINE
        "\u0C6F",  # ; 9.0 ; ; 9 # Nd       TELUGU DIGIT NINE
        "\u0CEF",  # ; 9.0 ; ; 9 # Nd       KANNADA DIGIT NINE
        "\u0D6F",  # ; 9.0 ; ; 9 # Nd       MALAYALAM DIGIT NINE
        "\u0DEF",  # ; 9.0 ; ; 9 # Nd       SINHALA LITH DIGIT NINE
        "\u0E59",  # ; 9.0 ; ; 9 # Nd       THAI DIGIT NINE
        "\u0ED9",  # ; 9.0 ; ; 9 # Nd       LAO DIGIT NINE
        "\u0F29",  # ; 9.0 ; ; 9 # Nd       TIBETAN DIGIT NINE
        "\u1049",  # ; 9.0 ; ; 9 # Nd       MYANMAR DIGIT NINE
        "\u1099",  # ; 9.0 ; ; 9 # Nd       MYANMAR SHAN DIGIT NINE
        "\u1371",  # ; 9.0 ; ; 9 # No       ETHIOPIC DIGIT NINE
        "\u17E9",  # ; 9.0 ; ; 9 # Nd       KHMER DIGIT NINE
        "\u17F9",  # ; 9.0 ; ; 9 # No       KHMER SYMBOL LEK ATTAK PRAM-BUON
        "\u1819",  # ; 9.0 ; ; 9 # Nd       MONGOLIAN DIGIT NINE
        "\u194F",  # ; 9.0 ; ; 9 # Nd       LIMBU DIGIT NINE
        "\u19D9",  # ; 9.0 ; ; 9 # Nd       NEW TAI LUE DIGIT NINE
        "\u1A89",  # ; 9.0 ; ; 9 # Nd       TAI THAM HORA DIGIT NINE
        "\u1A99",  # ; 9.0 ; ; 9 # Nd       TAI THAM THAM DIGIT NINE
        "\u1B59",  # ; 9.0 ; ; 9 # Nd       BALINESE DIGIT NINE
        "\u1BB9",  # ; 9.0 ; ; 9 # Nd       SUNDANESE DIGIT NINE
        "\u1C49",  # ; 9.0 ; ; 9 # Nd       LEPCHA DIGIT NINE
        "\u1C59",  # ; 9.0 ; ; 9 # Nd       OL CHIKI DIGIT NINE
        "\u2079",  # ; 9.0 ; ; 9 # No       SUPERSCRIPT NINE
        "\u2089",  # ; 9.0 ; ; 9 # No       SUBSCRIPT NINE
        "\u2168",  # ; 9.0 ; ; 9 # Nl       ROMAN NUMERAL NINE
        "\u2178",  # ; 9.0 ; ; 9 # Nl       SMALL ROMAN NUMERAL NINE
        "\u2468",  # ; 9.0 ; ; 9 # No       CIRCLED DIGIT NINE
        "\u247C",  # ; 9.0 ; ; 9 # No       PARENTHESIZED DIGIT NINE
        "\u2490",  # ; 9.0 ; ; 9 # No       DIGIT NINE FULL STOP
        "\u24FD",  # ; 9.0 ; ; 9 # No       DOUBLE CIRCLED DIGIT NINE
        "\u277E",  # ; 9.0 ; ; 9 # No       DINGBAT NEGATIVE CIRCLED DIGIT NINE
        "\u2788",  # ; 9.0 ; ; 9 # No       DINGBAT CIRCLED SANS-SERIF DIGIT NINE
        "\u2792",  # ; 9.0 ; ; 9 # No       DINGBAT NEGATIVE CIRCLED SANS-SERIF DIGIT NINE
        "\u3029",  # ; 9.0 ; ; 9 # Nl       HANGZHOU NUMERAL NINE
        "\u3228",  # ; 9.0 ; ; 9 # No       PARENTHESIZED IDEOGRAPH NINE
        "\u3288",  # ; 9.0 ; ; 9 # No       CIRCLED IDEOGRAPH NINE
        "\u4E5D",  # ; 9.0 ; ; 9 # Lo       CJK UNIFIED IDEOGRAPH-4E5D
        "\u5EFE",  # ; 9.0 ; ; 9 # Lo       CJK UNIFIED IDEOGRAPH-5EFE
        "\u7396",  # ; 9.0 ; ; 9 # Lo       CJK UNIFIED IDEOGRAPH-7396
        "\uA629",  # ; 9.0 ; ; 9 # Nd       VAI DIGIT NINE
        "\uA6EE",  # ; 9.0 ; ; 9 # Nl       BAMUM LETTER KOVUU
        "\uA8D9",  # ; 9.0 ; ; 9 # Nd       SAURASHTRA DIGIT NINE
        "\uA909",  # ; 9.0 ; ; 9 # Nd       KAYAH LI DIGIT NINE
        "\uA9D9",  # ; 9.0 ; ; 9 # Nd       JAVANESE DIGIT NINE
        "\uA9F9",  # ; 9.0 ; ; 9 # Nd       MYANMAR TAI LAING DIGIT NINE
        "\uAA59",  # ; 9.0 ; ; 9 # Nd       CHAM DIGIT NINE
        "\uABF9",  # ; 9.0 ; ; 9 # Nd       MEETEI MAYEK DIGIT NINE
        "\uFF19",  # ; 9.0 ; ; 9 # Nd       FULLWIDTH DIGIT NINE
        "\u1010F",  # ; 9.0 ; ; 9 # No       AEGEAN NUMBER NINE
        "\u102E9",  # ; 9.0 ; ; 9 # No       COPTIC EPACT DIGIT NINE
        "\u104A9",  # ; 9.0 ; ; 9 # Nd       OSMANYA DIGIT NINE
        "\u109C8",  # ; 9.0 ; ; 9 # No       MEROITIC CURSIVE NUMBER NINE
        "\u10E68",  # ; 9.0 ; ; 9 # No       RUMI DIGIT NINE
        "\u1105A",  # ; 9.0 ; ; 9 # No       BRAHMI NUMBER NINE
        "\u1106F",  # ; 9.0 ; ; 9 # Nd       BRAHMI DIGIT NINE
        "\u110F9",  # ; 9.0 ; ; 9 # Nd       SORA SOMPENG DIGIT NINE
        "\u1113F",  # ; 9.0 ; ; 9 # Nd       CHAKMA DIGIT NINE
        "\u111D9",  # ; 9.0 ; ; 9 # Nd       SHARADA DIGIT NINE
        "\u111E9",  # ; 9.0 ; ; 9 # No       SINHALA ARCHAIC DIGIT NINE
        "\u112F9",  # ; 9.0 ; ; 9 # Nd       KHUDAWADI DIGIT NINE
        "\u11459",  # ; 9.0 ; ; 9 # Nd       NEWA DIGIT NINE
        "\u114D9",  # ; 9.0 ; ; 9 # Nd       TIRHUTA DIGIT NINE
        "\u11659",  # ; 9.0 ; ; 9 # Nd       MODI DIGIT NINE
        "\u116C9",  # ; 9.0 ; ; 9 # Nd       TAKRI DIGIT NINE
        "\u11739",  # ; 9.0 ; ; 9 # Nd       AHOM DIGIT NINE
        "\u118E9",  # ; 9.0 ; ; 9 # Nd       WARANG CITI DIGIT NINE
        "\u11C59",  # ; 9.0 ; ; 9 # Nd       BHAIKSUKI DIGIT NINE
        "\u11C62",  # ; 9.0 ; ; 9 # No       BHAIKSUKI NUMBER NINE
        "\u11D59",  # ; 9.0 ; ; 9 # Nd       MASARAM GONDI DIGIT NINE
        "\u12407",  # ; 9.0 ; ; 9 # Nl       CUNEIFORM NUMERIC SIGN NINE ASH
        "\u1240E",  # ; 9.0 ; ; 9 # Nl       CUNEIFORM NUMERIC SIGN NINE DISH
        "\u12414",  # ; 9.0 ; ; 9 # Nl       CUNEIFORM NUMERIC SIGN NINE U
        "\u1241D",  # ; 9.0 ; ; 9 # Nl       CUNEIFORM NUMERIC SIGN NINE GESH2
        "\u1242B",  # ; 9.0 ; ; 9 # Nl       CUNEIFORM NUMERIC SIGN NINE SHAR2
        "\u12446","\u12447","\u12448","\u12449",  # ; 9.0 ; ; 9 # Nl   [4] CUNEIFORM NUMERIC SIGN NINE VARIANT FORM ILIMMU..CUNEIFORM NUMERIC SIGN NINE VARIANT FORM ILIMMU A
        "\u1246E",  # ; 9.0 ; ; 9 # Nl       CUNEIFORM NUMERIC SIGN NINE U VARIANT FORM
        "\u16A69",  # ; 9.0 ; ; 9 # Nd       MRO DIGIT NINE
        "\u16B59",  # ; 9.0 ; ; 9 # Nd       PAHAWH HMONG DIGIT NINE
        "\u1D368",  # ; 9.0 ; ; 9 # No       COUNTING ROD UNIT DIGIT NINE
        "\u1D7D7",  # ; 9.0 ; ; 9 # Nd       MATHEMATICAL BOLD DIGIT NINE
        "\u1D7E1",  # ; 9.0 ; ; 9 # Nd       MATHEMATICAL DOUBLE-STRUCK DIGIT NINE
        "\u1D7EB",  # ; 9.0 ; ; 9 # Nd       MATHEMATICAL SANS-SERIF DIGIT NINE
        "\u1D7F5",  # ; 9.0 ; ; 9 # Nd       MATHEMATICAL SANS-SERIF BOLD DIGIT NINE
        "\u1D7FF",  # ; 9.0 ; ; 9 # Nd       MATHEMATICAL MONOSPACE DIGIT NINE
        "\u1E8CF",  # ; 9.0 ; ; 9 # No       MENDE KIKAKUI DIGIT NINE
        "\u1E959",  # ; 9.0 ; ; 9 # Nd       ADLAM DIGIT NINE
        "\u1F10A",  # ; 9.0 ; ; 9 # No       DIGIT NINE COMMA
        "\u2F890",  # ; 9.0 ; ; 9 # Lo       CJK COMPATIBILITY IDEOGRAPH-2F890
        "\u0BF0",  # ; 10.0 ; ; 10 # No       TAMIL NUMBER TEN
        "\u0D70",  # ; 10.0 ; ; 10 # No       MALAYALAM NUMBER TEN
        "\u1372",  # ; 10.0 ; ; 10 # No       ETHIOPIC NUMBER TEN
        "\u2169",  # ; 10.0 ; ; 10 # Nl       ROMAN NUMERAL TEN
        "\u2179",  # ; 10.0 ; ; 10 # Nl       SMALL ROMAN NUMERAL TEN
        "\u2469",  # ; 10.0 ; ; 10 # No       CIRCLED NUMBER TEN
        "\u247D",  # ; 10.0 ; ; 10 # No       PARENTHESIZED NUMBER TEN
        "\u2491",  # ; 10.0 ; ; 10 # No       NUMBER TEN FULL STOP
        "\u24FE",  # ; 10.0 ; ; 10 # No       DOUBLE CIRCLED NUMBER TEN
        "\u277F",  # ; 10.0 ; ; 10 # No       DINGBAT NEGATIVE CIRCLED NUMBER TEN
        "\u2789",  # ; 10.0 ; ; 10 # No       DINGBAT CIRCLED SANS-SERIF NUMBER TEN
        "\u2793",  # ; 10.0 ; ; 10 # No       DINGBAT NEGATIVE CIRCLED SANS-SERIF NUMBER TEN
        "\u3038",  # ; 10.0 ; ; 10 # Nl       HANGZHOU NUMERAL TEN
        "\u3229",  # ; 10.0 ; ; 10 # No       PARENTHESIZED IDEOGRAPH TEN
        "\u3248",  # ; 10.0 ; ; 10 # No       CIRCLED NUMBER TEN ON BLACK SQUARE
        "\u3289",  # ; 10.0 ; ; 10 # No       CIRCLED IDEOGRAPH TEN
        "\u4EC0",  # ; 10.0 ; ; 10 # Lo       CJK UNIFIED IDEOGRAPH-4EC0
        "\u5341",  # ; 10.0 ; ; 10 # Lo       CJK UNIFIED IDEOGRAPH-5341
        "\u62FE",  # ; 10.0 ; ; 10 # Lo       CJK UNIFIED IDEOGRAPH-62FE
        "\uF973",  # ; 10.0 ; ; 10 # Lo       CJK COMPATIBILITY IDEOGRAPH-F973
        "\uF9FD",  # ; 10.0 ; ; 10 # Lo       CJK COMPATIBILITY IDEOGRAPH-F9FD
        "\u10110",  # ; 10.0 ; ; 10 # No       AEGEAN NUMBER TEN
        "\u10149",  # ; 10.0 ; ; 10 # Nl       GREEK ACROPHONIC ATTIC TEN TALENTS
        "\u10150",  # ; 10.0 ; ; 10 # Nl       GREEK ACROPHONIC ATTIC TEN STATERS
        "\u10157",  # ; 10.0 ; ; 10 # Nl       GREEK ACROPHONIC ATTIC TEN MNAS
        "\u10160","\u10161","\u10162","\u10163","\u10164",  # ; 10.0 ; ; 10 # Nl   [5] GREEK ACROPHONIC TROEZENIAN TEN..GREEK ACROPHONIC THESPIAN TEN
        "\u102EA",  # ; 10.0 ; ; 10 # No       COPTIC EPACT NUMBER TEN
        "\u10322",  # ; 10.0 ; ; 10 # No       OLD ITALIC NUMERAL TEN
        "\u103D3",  # ; 10.0 ; ; 10 # Nl       OLD PERSIAN NUMBER TEN
        "\u1085B",  # ; 10.0 ; ; 10 # No       IMPERIAL ARAMAIC NUMBER TEN
        "\u1087E",  # ; 10.0 ; ; 10 # No       PALMYRENE NUMBER TEN
        "\u108AD",  # ; 10.0 ; ; 10 # No       NABATAEAN NUMBER TEN
        "\u108FD",  # ; 10.0 ; ; 10 # No       HATRAN NUMBER TEN
        "\u10917",  # ; 10.0 ; ; 10 # No       PHOENICIAN NUMBER TEN
        "\u109C9",  # ; 10.0 ; ; 10 # No       MEROITIC CURSIVE NUMBER TEN
        "\u10A44",  # ; 10.0 ; ; 10 # No       KHAROSHTHI NUMBER TEN
        "\u10A9E",  # ; 10.0 ; ; 10 # No       OLD NORTH ARABIAN NUMBER TEN
        "\u10AED",  # ; 10.0 ; ; 10 # No       MANICHAEAN NUMBER TEN
        "\u10B5C",  # ; 10.0 ; ; 10 # No       INSCRIPTIONAL PARTHIAN NUMBER TEN
        "\u10B7C",  # ; 10.0 ; ; 10 # No       INSCRIPTIONAL PAHLAVI NUMBER TEN
        "\u10BAD",  # ; 10.0 ; ; 10 # No       PSALTER PAHLAVI NUMBER TEN
        "\u10CFC",  # ; 10.0 ; ; 10 # No       OLD HUNGARIAN NUMBER TEN
        "\u10E69",  # ; 10.0 ; ; 10 # No       RUMI NUMBER TEN
        "\u1105B",  # ; 10.0 ; ; 10 # No       BRAHMI NUMBER TEN
        "\u111EA",  # ; 10.0 ; ; 10 # No       SINHALA ARCHAIC NUMBER TEN
        "\u1173A",  # ; 10.0 ; ; 10 # No       AHOM NUMBER TEN
        "\u118EA",  # ; 10.0 ; ; 10 # No       WARANG CITI NUMBER TEN
        "\u11C63",  # ; 10.0 ; ; 10 # No       BHAIKSUKI NUMBER TEN
        "\u16B5B",  # ; 10.0 ; ; 10 # No       PAHAWH HMONG NUMBER TENS
        "\u1D369",  # ; 10.0 ; ; 10 # No       COUNTING ROD TENS DIGIT ONE
        "\u216A",  # ; 11.0 ; ; 11 # Nl       ROMAN NUMERAL ELEVEN
        "\u217A",  # ; 11.0 ; ; 11 # Nl       SMALL ROMAN NUMERAL ELEVEN
        "\u246A",  # ; 11.0 ; ; 11 # No       CIRCLED NUMBER ELEVEN
        "\u247E",  # ; 11.0 ; ; 11 # No       PARENTHESIZED NUMBER ELEVEN
        "\u2492",  # ; 11.0 ; ; 11 # No       NUMBER ELEVEN FULL STOP
        "\u24EB",  # ; 11.0 ; ; 11 # No       NEGATIVE CIRCLED NUMBER ELEVEN
        "\u216B",  # ; 12.0 ; ; 12 # Nl       ROMAN NUMERAL TWELVE
        "\u217B",  # ; 12.0 ; ; 12 # Nl       SMALL ROMAN NUMERAL TWELVE
        "\u246B",  # ; 12.0 ; ; 12 # No       CIRCLED NUMBER TWELVE
        "\u247F",  # ; 12.0 ; ; 12 # No       PARENTHESIZED NUMBER TWELVE
        "\u2493",  # ; 12.0 ; ; 12 # No       NUMBER TWELVE FULL STOP
        "\u24EC",  # ; 12.0 ; ; 12 # No       NEGATIVE CIRCLED NUMBER TWELVE
        "\u246C",  # ; 13.0 ; ; 13 # No       CIRCLED NUMBER THIRTEEN
        "\u2480",  # ; 13.0 ; ; 13 # No       PARENTHESIZED NUMBER THIRTEEN
        "\u2494",  # ; 13.0 ; ; 13 # No       NUMBER THIRTEEN FULL STOP
        "\u24ED",  # ; 13.0 ; ; 13 # No       NEGATIVE CIRCLED NUMBER THIRTEEN
        "\u246D",  # ; 14.0 ; ; 14 # No       CIRCLED NUMBER FOURTEEN
        "\u2481",  # ; 14.0 ; ; 14 # No       PARENTHESIZED NUMBER FOURTEEN
        "\u2495",  # ; 14.0 ; ; 14 # No       NUMBER FOURTEEN FULL STOP
        "\u24EE",  # ; 14.0 ; ; 14 # No       NEGATIVE CIRCLED NUMBER FOURTEEN
        "\u246E",  # ; 15.0 ; ; 15 # No       CIRCLED NUMBER FIFTEEN
        "\u2482",  # ; 15.0 ; ; 15 # No       PARENTHESIZED NUMBER FIFTEEN
        "\u2496",  # ; 15.0 ; ; 15 # No       NUMBER FIFTEEN FULL STOP
        "\u24EF",  # ; 15.0 ; ; 15 # No       NEGATIVE CIRCLED NUMBER FIFTEEN
        "\u09F9",  # ; 16.0 ; ; 16 # No       BENGALI CURRENCY DENOMINATOR SIXTEEN
        "\u246F",  # ; 16.0 ; ; 16 # No       CIRCLED NUMBER SIXTEEN
        "\u2483",  # ; 16.0 ; ; 16 # No       PARENTHESIZED NUMBER SIXTEEN
        "\u2497",  # ; 16.0 ; ; 16 # No       NUMBER SIXTEEN FULL STOP
        "\u24F0",  # ; 16.0 ; ; 16 # No       NEGATIVE CIRCLED NUMBER SIXTEEN
        "\u16EE",  # ; 17.0 ; ; 17 # Nl       RUNIC ARLAUG SYMBOL
        "\u2470",  # ; 17.0 ; ; 17 # No       CIRCLED NUMBER SEVENTEEN
        "\u2484",  # ; 17.0 ; ; 17 # No       PARENTHESIZED NUMBER SEVENTEEN
        "\u2498",  # ; 17.0 ; ; 17 # No       NUMBER SEVENTEEN FULL STOP
        "\u24F1",  # ; 17.0 ; ; 17 # No       NEGATIVE CIRCLED NUMBER SEVENTEEN
        "\u16EF",  # ; 18.0 ; ; 18 # Nl       RUNIC TVIMADUR SYMBOL
        "\u2471",  # ; 18.0 ; ; 18 # No       CIRCLED NUMBER EIGHTEEN
        "\u2485",  # ; 18.0 ; ; 18 # No       PARENTHESIZED NUMBER EIGHTEEN
        "\u2499",  # ; 18.0 ; ; 18 # No       NUMBER EIGHTEEN FULL STOP
        "\u24F2",  # ; 18.0 ; ; 18 # No       NEGATIVE CIRCLED NUMBER EIGHTEEN
        "\u16F0",  # ; 19.0 ; ; 19 # Nl       RUNIC BELGTHOR SYMBOL
        "\u2472",  # ; 19.0 ; ; 19 # No       CIRCLED NUMBER NINETEEN
        "\u2486",  # ; 19.0 ; ; 19 # No       PARENTHESIZED NUMBER NINETEEN
        "\u249A",  # ; 19.0 ; ; 19 # No       NUMBER NINETEEN FULL STOP
        "\u24F3",  # ; 19.0 ; ; 19 # No       NEGATIVE CIRCLED NUMBER NINETEEN
        "\u1373",  # ; 20.0 ; ; 20 # No       ETHIOPIC NUMBER TWENTY
        "\u2473",  # ; 20.0 ; ; 20 # No       CIRCLED NUMBER TWENTY
        "\u2487",  # ; 20.0 ; ; 20 # No       PARENTHESIZED NUMBER TWENTY
        "\u249B",  # ; 20.0 ; ; 20 # No       NUMBER TWENTY FULL STOP
        "\u24F4",  # ; 20.0 ; ; 20 # No       NEGATIVE CIRCLED NUMBER TWENTY
        "\u3039",  # ; 20.0 ; ; 20 # Nl       HANGZHOU NUMERAL TWENTY
        "\u3249",  # ; 20.0 ; ; 20 # No       CIRCLED NUMBER TWENTY ON BLACK SQUARE
        "\u5344",  # ; 20.0 ; ; 20 # Lo       CJK UNIFIED IDEOGRAPH-5344
        "\u5EFF",  # ; 20.0 ; ; 20 # Lo       CJK UNIFIED IDEOGRAPH-5EFF
        "\u10111",  # ; 20.0 ; ; 20 # No       AEGEAN NUMBER TWENTY
        "\u102EB",  # ; 20.0 ; ; 20 # No       COPTIC EPACT NUMBER TWENTY
        "\u103D4",  # ; 20.0 ; ; 20 # Nl       OLD PERSIAN NUMBER TWENTY
        "\u1085C",  # ; 20.0 ; ; 20 # No       IMPERIAL ARAMAIC NUMBER TWENTY
        "\u1087F",  # ; 20.0 ; ; 20 # No       PALMYRENE NUMBER TWENTY
        "\u108AE",  # ; 20.0 ; ; 20 # No       NABATAEAN NUMBER TWENTY
        "\u108FE",  # ; 20.0 ; ; 20 # No       HATRAN NUMBER TWENTY
        "\u10918",  # ; 20.0 ; ; 20 # No       PHOENICIAN NUMBER TWENTY
        "\u109CA",  # ; 20.0 ; ; 20 # No       MEROITIC CURSIVE NUMBER TWENTY
        "\u10A45",  # ; 20.0 ; ; 20 # No       KHAROSHTHI NUMBER TWENTY
        "\u10A9F",  # ; 20.0 ; ; 20 # No       OLD NORTH ARABIAN NUMBER TWENTY
        "\u10AEE",  # ; 20.0 ; ; 20 # No       MANICHAEAN NUMBER TWENTY
        "\u10B5D",  # ; 20.0 ; ; 20 # No       INSCRIPTIONAL PARTHIAN NUMBER TWENTY
        "\u10B7D",  # ; 20.0 ; ; 20 # No       INSCRIPTIONAL PAHLAVI NUMBER TWENTY
        "\u10BAE",  # ; 20.0 ; ; 20 # No       PSALTER PAHLAVI NUMBER TWENTY
        "\u10E6A",  # ; 20.0 ; ; 20 # No       RUMI NUMBER TWENTY
        "\u1105C",  # ; 20.0 ; ; 20 # No       BRAHMI NUMBER TWENTY
        "\u111EB",  # ; 20.0 ; ; 20 # No       SINHALA ARCHAIC NUMBER TWENTY
        "\u1173B",  # ; 20.0 ; ; 20 # No       AHOM NUMBER TWENTY
        "\u118EB",  # ; 20.0 ; ; 20 # No       WARANG CITI NUMBER TWENTY
        "\u11C64",  # ; 20.0 ; ; 20 # No       BHAIKSUKI NUMBER TWENTY
        "\u1D36A",  # ; 20.0 ; ; 20 # No       COUNTING ROD TENS DIGIT TWO
        "\u3251",  # ; 21.0 ; ; 21 # No       CIRCLED NUMBER TWENTY ONE
        "\u3252",  # ; 22.0 ; ; 22 # No       CIRCLED NUMBER TWENTY TWO
        "\u3253",  # ; 23.0 ; ; 23 # No       CIRCLED NUMBER TWENTY THREE
        "\u3254",  # ; 24.0 ; ; 24 # No       CIRCLED NUMBER TWENTY FOUR
        "\u3255",  # ; 25.0 ; ; 25 # No       CIRCLED NUMBER TWENTY FIVE
        "\u3256",  # ; 26.0 ; ; 26 # No       CIRCLED NUMBER TWENTY SIX
        "\u3257",  # ; 27.0 ; ; 27 # No       CIRCLED NUMBER TWENTY SEVEN
        "\u3258",  # ; 28.0 ; ; 28 # No       CIRCLED NUMBER TWENTY EIGHT
        "\u3259",  # ; 29.0 ; ; 29 # No       CIRCLED NUMBER TWENTY NINE
        "\u1374",  # ; 30.0 ; ; 30 # No       ETHIOPIC NUMBER THIRTY
        "\u303A",  # ; 30.0 ; ; 30 # Nl       HANGZHOU NUMERAL THIRTY
        "\u324A",  # ; 30.0 ; ; 30 # No       CIRCLED NUMBER THIRTY ON BLACK SQUARE
        "\u325A",  # ; 30.0 ; ; 30 # No       CIRCLED NUMBER THIRTY
        "\u5345",  # ; 30.0 ; ; 30 # Lo       CJK UNIFIED IDEOGRAPH-5345
        "\u10112",  # ; 30.0 ; ; 30 # No       AEGEAN NUMBER THIRTY
        "\u10165",  # ; 30.0 ; ; 30 # Nl       GREEK ACROPHONIC THESPIAN THIRTY
        "\u102EC",  # ; 30.0 ; ; 30 # No       COPTIC EPACT NUMBER THIRTY
        "\u109CB",  # ; 30.0 ; ; 30 # No       MEROITIC CURSIVE NUMBER THIRTY
        "\u10E6B",  # ; 30.0 ; ; 30 # No       RUMI NUMBER THIRTY
        "\u1105D",  # ; 30.0 ; ; 30 # No       BRAHMI NUMBER THIRTY
        "\u111EC",  # ; 30.0 ; ; 30 # No       SINHALA ARCHAIC NUMBER THIRTY
        "\u118EC",  # ; 30.0 ; ; 30 # No       WARANG CITI NUMBER THIRTY
        "\u11C65",  # ; 30.0 ; ; 30 # No       BHAIKSUKI NUMBER THIRTY
        "\u1D36B",  # ; 30.0 ; ; 30 # No       COUNTING ROD TENS DIGIT THREE
        "\u20983",  # ; 30.0 ; ; 30 # Lo       CJK UNIFIED IDEOGRAPH-20983
        "\u325B",  # ; 31.0 ; ; 31 # No       CIRCLED NUMBER THIRTY ONE
        "\u325C",  # ; 32.0 ; ; 32 # No       CIRCLED NUMBER THIRTY TWO
        "\u325D",  # ; 33.0 ; ; 33 # No       CIRCLED NUMBER THIRTY THREE
        "\u325E",  # ; 34.0 ; ; 34 # No       CIRCLED NUMBER THIRTY FOUR
        "\u325F",  # ; 35.0 ; ; 35 # No       CIRCLED NUMBER THIRTY FIVE
        "\u32B1",  # ; 36.0 ; ; 36 # No       CIRCLED NUMBER THIRTY SIX
        "\u32B2",  # ; 37.0 ; ; 37 # No       CIRCLED NUMBER THIRTY SEVEN
        "\u32B3",  # ; 38.0 ; ; 38 # No       CIRCLED NUMBER THIRTY EIGHT
        "\u32B4",  # ; 39.0 ; ; 39 # No       CIRCLED NUMBER THIRTY NINE
        "\u1375",  # ; 40.0 ; ; 40 # No       ETHIOPIC NUMBER FORTY
        "\u324B",  # ; 40.0 ; ; 40 # No       CIRCLED NUMBER FORTY ON BLACK SQUARE
        "\u32B5",  # ; 40.0 ; ; 40 # No       CIRCLED NUMBER FORTY
        "\u534C",  # ; 40.0 ; ; 40 # Lo       CJK UNIFIED IDEOGRAPH-534C
        "\u10113",  # ; 40.0 ; ; 40 # No       AEGEAN NUMBER FORTY
        "\u102ED",  # ; 40.0 ; ; 40 # No       COPTIC EPACT NUMBER FORTY
        "\u109CC",  # ; 40.0 ; ; 40 # No       MEROITIC CURSIVE NUMBER FORTY
        "\u10E6C",  # ; 40.0 ; ; 40 # No       RUMI NUMBER FORTY
        "\u1105E",  # ; 40.0 ; ; 40 # No       BRAHMI NUMBER FORTY
        "\u111ED",  # ; 40.0 ; ; 40 # No       SINHALA ARCHAIC NUMBER FORTY
        "\u118ED",  # ; 40.0 ; ; 40 # No       WARANG CITI NUMBER FORTY
        "\u11C66",  # ; 40.0 ; ; 40 # No       BHAIKSUKI NUMBER FORTY
        "\u12467",  # ; 40.0 ; ; 40 # Nl       CUNEIFORM NUMERIC SIGN ELAMITE FORTY
        "\u1D36C",  # ; 40.0 ; ; 40 # No       COUNTING ROD TENS DIGIT FOUR
        "\u2098C",  # ; 40.0 ; ; 40 # Lo       CJK UNIFIED IDEOGRAPH-2098C
        "\u2099C",  # ; 40.0 ; ; 40 # Lo       CJK UNIFIED IDEOGRAPH-2099C
        "\u32B6",  # ; 41.0 ; ; 41 # No       CIRCLED NUMBER FORTY ONE
        "\u32B7",  # ; 42.0 ; ; 42 # No       CIRCLED NUMBER FORTY TWO
        "\u32B8",  # ; 43.0 ; ; 43 # No       CIRCLED NUMBER FORTY THREE
        "\u32B9",  # ; 44.0 ; ; 44 # No       CIRCLED NUMBER FORTY FOUR
        "\u32BA",  # ; 45.0 ; ; 45 # No       CIRCLED NUMBER FORTY FIVE
        "\u32BB",  # ; 46.0 ; ; 46 # No       CIRCLED NUMBER FORTY SIX
        "\u32BC",  # ; 47.0 ; ; 47 # No       CIRCLED NUMBER FORTY SEVEN
        "\u32BD",  # ; 48.0 ; ; 48 # No       CIRCLED NUMBER FORTY EIGHT
        "\u32BE",  # ; 49.0 ; ; 49 # No       CIRCLED NUMBER FORTY NINE
        "\u1376",  # ; 50.0 ; ; 50 # No       ETHIOPIC NUMBER FIFTY
        "\u216C",  # ; 50.0 ; ; 50 # Nl       ROMAN NUMERAL FIFTY
        "\u217C",  # ; 50.0 ; ; 50 # Nl       SMALL ROMAN NUMERAL FIFTY
        "\u2186",  # ; 50.0 ; ; 50 # Nl       ROMAN NUMERAL FIFTY EARLY FORM
        "\u324C",  # ; 50.0 ; ; 50 # No       CIRCLED NUMBER FIFTY ON BLACK SQUARE
        "\u32BF",  # ; 50.0 ; ; 50 # No       CIRCLED NUMBER FIFTY
        "\u10114",  # ; 50.0 ; ; 50 # No       AEGEAN NUMBER FIFTY
        "\u10144",  # ; 50.0 ; ; 50 # Nl       GREEK ACROPHONIC ATTIC FIFTY
        "\u1014A",  # ; 50.0 ; ; 50 # Nl       GREEK ACROPHONIC ATTIC FIFTY TALENTS
        "\u10151",  # ; 50.0 ; ; 50 # Nl       GREEK ACROPHONIC ATTIC FIFTY STATERS
        "\u10166","\u10167","\u10168","\u10169",  # ; 50.0 ; ; 50 # Nl   [4] GREEK ACROPHONIC TROEZENIAN FIFTY..GREEK ACROPHONIC THESPIAN FIFTY
        "\u10174",  # ; 50.0 ; ; 50 # Nl       GREEK ACROPHONIC STRATIAN FIFTY MNAS
        "\u102EE",  # ; 50.0 ; ; 50 # No       COPTIC EPACT NUMBER FIFTY
        "\u10323",  # ; 50.0 ; ; 50 # No       OLD ITALIC NUMERAL FIFTY
        "\u109CD",  # ; 50.0 ; ; 50 # No       MEROITIC CURSIVE NUMBER FIFTY
        "\u10A7E",  # ; 50.0 ; ; 50 # No       OLD SOUTH ARABIAN NUMBER FIFTY
        "\u10CFD",  # ; 50.0 ; ; 50 # No       OLD HUNGARIAN NUMBER FIFTY
        "\u10E6D",  # ; 50.0 ; ; 50 # No       RUMI NUMBER FIFTY
        "\u1105F",  # ; 50.0 ; ; 50 # No       BRAHMI NUMBER FIFTY
        "\u111EE",  # ; 50.0 ; ; 50 # No       SINHALA ARCHAIC NUMBER FIFTY
        "\u118EE",  # ; 50.0 ; ; 50 # No       WARANG CITI NUMBER FIFTY
        "\u11C67",  # ; 50.0 ; ; 50 # No       BHAIKSUKI NUMBER FIFTY
        "\u12468",  # ; 50.0 ; ; 50 # Nl       CUNEIFORM NUMERIC SIGN ELAMITE FIFTY
        "\u1D36D",  # ; 50.0 ; ; 50 # No       COUNTING ROD TENS DIGIT FIVE
        "\u1377",  # ; 60.0 ; ; 60 # No       ETHIOPIC NUMBER SIXTY
        "\u324D",  # ; 60.0 ; ; 60 # No       CIRCLED NUMBER SIXTY ON BLACK SQUARE
        "\u10115",  # ; 60.0 ; ; 60 # No       AEGEAN NUMBER SIXTY
        "\u102EF",  # ; 60.0 ; ; 60 # No       COPTIC EPACT NUMBER SIXTY
        "\u109CE",  # ; 60.0 ; ; 60 # No       MEROITIC CURSIVE NUMBER SIXTY
        "\u10E6E",  # ; 60.0 ; ; 60 # No       RUMI NUMBER SIXTY
        "\u11060",  # ; 60.0 ; ; 60 # No       BRAHMI NUMBER SIXTY
        "\u111EF",  # ; 60.0 ; ; 60 # No       SINHALA ARCHAIC NUMBER SIXTY
        "\u118EF",  # ; 60.0 ; ; 60 # No       WARANG CITI NUMBER SIXTY
        "\u11C68",  # ; 60.0 ; ; 60 # No       BHAIKSUKI NUMBER SIXTY
        "\u1D36E",  # ; 60.0 ; ; 60 # No       COUNTING ROD TENS DIGIT SIX
        "\u1378",  # ; 70.0 ; ; 70 # No       ETHIOPIC NUMBER SEVENTY
        "\u324E",  # ; 70.0 ; ; 70 # No       CIRCLED NUMBER SEVENTY ON BLACK SQUARE
        "\u10116",  # ; 70.0 ; ; 70 # No       AEGEAN NUMBER SEVENTY
        "\u102F0",  # ; 70.0 ; ; 70 # No       COPTIC EPACT NUMBER SEVENTY
        "\u109CF",  # ; 70.0 ; ; 70 # No       MEROITIC CURSIVE NUMBER SEVENTY
        "\u10E6F",  # ; 70.0 ; ; 70 # No       RUMI NUMBER SEVENTY
        "\u11061",  # ; 70.0 ; ; 70 # No       BRAHMI NUMBER SEVENTY
        "\u111F0",  # ; 70.0 ; ; 70 # No       SINHALA ARCHAIC NUMBER SEVENTY
        "\u118F0",  # ; 70.0 ; ; 70 # No       WARANG CITI NUMBER SEVENTY
        "\u11C69",  # ; 70.0 ; ; 70 # No       BHAIKSUKI NUMBER SEVENTY
        "\u1D36F",  # ; 70.0 ; ; 70 # No       COUNTING ROD TENS DIGIT SEVEN
        "\u1379",  # ; 80.0 ; ; 80 # No       ETHIOPIC NUMBER EIGHTY
        "\u324F",  # ; 80.0 ; ; 80 # No       CIRCLED NUMBER EIGHTY ON BLACK SQUARE
        "\u10117",  # ; 80.0 ; ; 80 # No       AEGEAN NUMBER EIGHTY
        "\u102F1",  # ; 80.0 ; ; 80 # No       COPTIC EPACT NUMBER EIGHTY
        "\u10E70",  # ; 80.0 ; ; 80 # No       RUMI NUMBER EIGHTY
        "\u11062",  # ; 80.0 ; ; 80 # No       BRAHMI NUMBER EIGHTY
        "\u111F1",  # ; 80.0 ; ; 80 # No       SINHALA ARCHAIC NUMBER EIGHTY
        "\u118F1",  # ; 80.0 ; ; 80 # No       WARANG CITI NUMBER EIGHTY
        "\u11C6A",  # ; 80.0 ; ; 80 # No       BHAIKSUKI NUMBER EIGHTY
        "\u1D370",  # ; 80.0 ; ; 80 # No       COUNTING ROD TENS DIGIT EIGHT
        "\u137A",  # ; 90.0 ; ; 90 # No       ETHIOPIC NUMBER NINETY
        "\u10118",  # ; 90.0 ; ; 90 # No       AEGEAN NUMBER NINETY
        "\u102F2",  # ; 90.0 ; ; 90 # No       COPTIC EPACT NUMBER NINETY
        "\u10341",  # ; 90.0 ; ; 90 # Nl       GOTHIC LETTER NINETY
        "\u10E71",  # ; 90.0 ; ; 90 # No       RUMI NUMBER NINETY
        "\u11063",  # ; 90.0 ; ; 90 # No       BRAHMI NUMBER NINETY
        "\u111F2",  # ; 90.0 ; ; 90 # No       SINHALA ARCHAIC NUMBER NINETY
        "\u118F2",  # ; 90.0 ; ; 90 # No       WARANG CITI NUMBER NINETY
        "\u11C6B",  # ; 90.0 ; ; 90 # No       BHAIKSUKI NUMBER NINETY
        "\u1D371",  # ; 90.0 ; ; 90 # No       COUNTING ROD TENS DIGIT NINE
        "\u0BF1",  # ; 100.0 ; ; 100 # No       TAMIL NUMBER ONE HUNDRED
        "\u0D71",  # ; 100.0 ; ; 100 # No       MALAYALAM NUMBER ONE HUNDRED
        "\u137B",  # ; 100.0 ; ; 100 # No       ETHIOPIC NUMBER HUNDRED
        "\u216D",  # ; 100.0 ; ; 100 # Nl       ROMAN NUMERAL ONE HUNDRED
        "\u217D",  # ; 100.0 ; ; 100 # Nl       SMALL ROMAN NUMERAL ONE HUNDRED
        "\u4F70",  # ; 100.0 ; ; 100 # Lo       CJK UNIFIED IDEOGRAPH-4F70
        "\u767E",  # ; 100.0 ; ; 100 # Lo       CJK UNIFIED IDEOGRAPH-767E
        "\u964C",  # ; 100.0 ; ; 100 # Lo       CJK UNIFIED IDEOGRAPH-964C
        "\u10119",  # ; 100.0 ; ; 100 # No       AEGEAN NUMBER ONE HUNDRED
        "\u1014B",  # ; 100.0 ; ; 100 # Nl       GREEK ACROPHONIC ATTIC ONE HUNDRED TALENTS
        "\u10152",  # ; 100.0 ; ; 100 # Nl       GREEK ACROPHONIC ATTIC ONE HUNDRED STATERS
        "\u1016A",  # ; 100.0 ; ; 100 # Nl       GREEK ACROPHONIC THESPIAN ONE HUNDRED
        "\u102F3",  # ; 100.0 ; ; 100 # No       COPTIC EPACT NUMBER ONE HUNDRED
        "\u103D5",  # ; 100.0 ; ; 100 # Nl       OLD PERSIAN NUMBER HUNDRED
        "\u1085D",  # ; 100.0 ; ; 100 # No       IMPERIAL ARAMAIC NUMBER ONE HUNDRED
        "\u108AF",  # ; 100.0 ; ; 100 # No       NABATAEAN NUMBER ONE HUNDRED
        "\u108FF",  # ; 100.0 ; ; 100 # No       HATRAN NUMBER ONE HUNDRED
        "\u10919",  # ; 100.0 ; ; 100 # No       PHOENICIAN NUMBER ONE HUNDRED
        "\u109D2",  # ; 100.0 ; ; 100 # No       MEROITIC CURSIVE NUMBER ONE HUNDRED
        "\u10A46",  # ; 100.0 ; ; 100 # No       KHAROSHTHI NUMBER ONE HUNDRED
        "\u10AEF",  # ; 100.0 ; ; 100 # No       MANICHAEAN NUMBER ONE HUNDRED
        "\u10B5E",  # ; 100.0 ; ; 100 # No       INSCRIPTIONAL PARTHIAN NUMBER ONE HUNDRED
        "\u10B7E",  # ; 100.0 ; ; 100 # No       INSCRIPTIONAL PAHLAVI NUMBER ONE HUNDRED
        "\u10BAF",  # ; 100.0 ; ; 100 # No       PSALTER PAHLAVI NUMBER ONE HUNDRED
        "\u10CFE",  # ; 100.0 ; ; 100 # No       OLD HUNGARIAN NUMBER ONE HUNDRED
        "\u10E72",  # ; 100.0 ; ; 100 # No       RUMI NUMBER ONE HUNDRED
        "\u11064",  # ; 100.0 ; ; 100 # No       BRAHMI NUMBER ONE HUNDRED
        "\u111F3",  # ; 100.0 ; ; 100 # No       SINHALA ARCHAIC NUMBER ONE HUNDRED
        "\u11C6C",  # ; 100.0 ; ; 100 # No       BHAIKSUKI HUNDREDS UNIT MARK
        "\u16B5C",  # ; 100.0 ; ; 100 # No       PAHAWH HMONG NUMBER HUNDREDS
        "\u1011A",  # ; 200.0 ; ; 200 # No       AEGEAN NUMBER TWO HUNDRED
        "\u102F4",  # ; 200.0 ; ; 200 # No       COPTIC EPACT NUMBER TWO HUNDRED
        "\u109D3",  # ; 200.0 ; ; 200 # No       MEROITIC CURSIVE NUMBER TWO HUNDRED
        "\u10E73",  # ; 200.0 ; ; 200 # No       RUMI NUMBER TWO HUNDRED
        "\u1011B",  # ; 300.0 ; ; 300 # No       AEGEAN NUMBER THREE HUNDRED
        "\u1016B",  # ; 300.0 ; ; 300 # Nl       GREEK ACROPHONIC THESPIAN THREE HUNDRED
        "\u102F5",  # ; 300.0 ; ; 300 # No       COPTIC EPACT NUMBER THREE HUNDRED
        "\u109D4",  # ; 300.0 ; ; 300 # No       MEROITIC CURSIVE NUMBER THREE HUNDRED
        "\u10E74",  # ; 300.0 ; ; 300 # No       RUMI NUMBER THREE HUNDRED
        "\u1011C",  # ; 400.0 ; ; 400 # No       AEGEAN NUMBER FOUR HUNDRED
        "\u102F6",  # ; 400.0 ; ; 400 # No       COPTIC EPACT NUMBER FOUR HUNDRED
        "\u109D5",  # ; 400.0 ; ; 400 # No       MEROITIC CURSIVE NUMBER FOUR HUNDRED
        "\u10E75",  # ; 400.0 ; ; 400 # No       RUMI NUMBER FOUR HUNDRED
        "\u216E",  # ; 500.0 ; ; 500 # Nl       ROMAN NUMERAL FIVE HUNDRED
        "\u217E",  # ; 500.0 ; ; 500 # Nl       SMALL ROMAN NUMERAL FIVE HUNDRED
        "\u1011D",  # ; 500.0 ; ; 500 # No       AEGEAN NUMBER FIVE HUNDRED
        "\u10145",  # ; 500.0 ; ; 500 # Nl       GREEK ACROPHONIC ATTIC FIVE HUNDRED
        "\u1014C",  # ; 500.0 ; ; 500 # Nl       GREEK ACROPHONIC ATTIC FIVE HUNDRED TALENTS
        "\u10153",  # ; 500.0 ; ; 500 # Nl       GREEK ACROPHONIC ATTIC FIVE HUNDRED STATERS
        "\u1016c","\u1016d","\u1016e","\u1016f","\u10170",  # ; 500.0 ; ; 500 # Nl   [5] GREEK ACROPHONIC EPIDAUREAN FIVE HUNDRED..GREEK ACROPHONIC NAXIAN FIVE HUNDRED
        "\u102F7",  # ; 500.0 ; ; 500 # No       COPTIC EPACT NUMBER FIVE HUNDRED
        "\u109D6",  # ; 500.0 ; ; 500 # No       MEROITIC CURSIVE NUMBER FIVE HUNDRED
        "\u10E76",  # ; 500.0 ; ; 500 # No       RUMI NUMBER FIVE HUNDRED
        "\u1011E",  # ; 600.0 ; ; 600 # No       AEGEAN NUMBER SIX HUNDRED
        "\u102F8",  # ; 600.0 ; ; 600 # No       COPTIC EPACT NUMBER SIX HUNDRED
        "\u109D7",  # ; 600.0 ; ; 600 # No       MEROITIC CURSIVE NUMBER SIX HUNDRED
        "\u10E77",  # ; 600.0 ; ; 600 # No       RUMI NUMBER SIX HUNDRED
        "\u1011F",  # ; 700.0 ; ; 700 # No       AEGEAN NUMBER SEVEN HUNDRED
        "\u102F9",  # ; 700.0 ; ; 700 # No       COPTIC EPACT NUMBER SEVEN HUNDRED
        "\u109D8",  # ; 700.0 ; ; 700 # No       MEROITIC CURSIVE NUMBER SEVEN HUNDRED
        "\u10E78",  # ; 700.0 ; ; 700 # No       RUMI NUMBER SEVEN HUNDRED
        "\u10120",  # ; 800.0 ; ; 800 # No       AEGEAN NUMBER EIGHT HUNDRED
        "\u102FA",  # ; 800.0 ; ; 800 # No       COPTIC EPACT NUMBER EIGHT HUNDRED
        "\u109D9",  # ; 800.0 ; ; 800 # No       MEROITIC CURSIVE NUMBER EIGHT HUNDRED
        "\u10E79",  # ; 800.0 ; ; 800 # No       RUMI NUMBER EIGHT HUNDRED
        "\u10121",  # ; 900.0 ; ; 900 # No       AEGEAN NUMBER NINE HUNDRED
        "\u102FB",  # ; 900.0 ; ; 900 # No       COPTIC EPACT NUMBER NINE HUNDRED
        "\u1034A",  # ; 900.0 ; ; 900 # Nl       GOTHIC LETTER NINE HUNDRED
        "\u109DA",  # ; 900.0 ; ; 900 # No       MEROITIC CURSIVE NUMBER NINE HUNDRED
        "\u10E7A",  # ; 900.0 ; ; 900 # No       RUMI NUMBER NINE HUNDRED
        "\u0BF2",  # ; 1000.0 ; ; 1000 # No       TAMIL NUMBER ONE THOUSAND
        "\u0D72",  # ; 1000.0 ; ; 1000 # No       MALAYALAM NUMBER ONE THOUSAND
        "\u216F",  # ; 1000.0 ; ; 1000 # Nl       ROMAN NUMERAL ONE THOUSAND
        "\u217f","\u2180",  # ; 1000.0 ; ; 1000 # Nl   [2] SMALL ROMAN NUMERAL ONE THOUSAND..ROMAN NUMERAL ONE THOUSAND C D
        "\u4EDF",  # ; 1000.0 ; ; 1000 # Lo       CJK UNIFIED IDEOGRAPH-4EDF
        "\u5343",  # ; 1000.0 ; ; 1000 # Lo       CJK UNIFIED IDEOGRAPH-5343
        "\u9621",  # ; 1000.0 ; ; 1000 # Lo       CJK UNIFIED IDEOGRAPH-9621
        "\u10122",  # ; 1000.0 ; ; 1000 # No       AEGEAN NUMBER ONE THOUSAND
        "\u1014D",  # ; 1000.0 ; ; 1000 # Nl       GREEK ACROPHONIC ATTIC ONE THOUSAND TALENTS
        "\u10154",  # ; 1000.0 ; ; 1000 # Nl       GREEK ACROPHONIC ATTIC ONE THOUSAND STATERS
        "\u10171",  # ; 1000.0 ; ; 1000 # Nl       GREEK ACROPHONIC THESPIAN ONE THOUSAND
        "\u1085E",  # ; 1000.0 ; ; 1000 # No       IMPERIAL ARAMAIC NUMBER ONE THOUSAND
        "\u109DB",  # ; 1000.0 ; ; 1000 # No       MEROITIC CURSIVE NUMBER ONE THOUSAND
        "\u10A47",  # ; 1000.0 ; ; 1000 # No       KHAROSHTHI NUMBER ONE THOUSAND
        "\u10B5F",  # ; 1000.0 ; ; 1000 # No       INSCRIPTIONAL PARTHIAN NUMBER ONE THOUSAND
        "\u10B7F",  # ; 1000.0 ; ; 1000 # No       INSCRIPTIONAL PAHLAVI NUMBER ONE THOUSAND
        "\u10CFF",  # ; 1000.0 ; ; 1000 # No       OLD HUNGARIAN NUMBER ONE THOUSAND
        "\u11065",  # ; 1000.0 ; ; 1000 # No       BRAHMI NUMBER ONE THOUSAND
        "\u111F4",  # ; 1000.0 ; ; 1000 # No       SINHALA ARCHAIC NUMBER ONE THOUSAND
        "\u10123",  # ; 2000.0 ; ; 2000 # No       AEGEAN NUMBER TWO THOUSAND
        "\u109DC",  # ; 2000.0 ; ; 2000 # No       MEROITIC CURSIVE NUMBER TWO THOUSAND
        "\u10124",  # ; 3000.0 ; ; 3000 # No       AEGEAN NUMBER THREE THOUSAND
        "\u109DD",  # ; 3000.0 ; ; 3000 # No       MEROITIC CURSIVE NUMBER THREE THOUSAND
        "\u10125",  # ; 4000.0 ; ; 4000 # No       AEGEAN NUMBER FOUR THOUSAND
        "\u109DE",  # ; 4000.0 ; ; 4000 # No       MEROITIC CURSIVE NUMBER FOUR THOUSAND
        "\u2181",  # ; 5000.0 ; ; 5000 # Nl       ROMAN NUMERAL FIVE THOUSAND
        "\u10126",  # ; 5000.0 ; ; 5000 # No       AEGEAN NUMBER FIVE THOUSAND
        "\u10146",  # ; 5000.0 ; ; 5000 # Nl       GREEK ACROPHONIC ATTIC FIVE THOUSAND
        "\u1014E",  # ; 5000.0 ; ; 5000 # Nl       GREEK ACROPHONIC ATTIC FIVE THOUSAND TALENTS
        "\u10172",  # ; 5000.0 ; ; 5000 # Nl       GREEK ACROPHONIC THESPIAN FIVE THOUSAND
        "\u109DF",  # ; 5000.0 ; ; 5000 # No       MEROITIC CURSIVE NUMBER FIVE THOUSAND
        "\u10127",  # ; 6000.0 ; ; 6000 # No       AEGEAN NUMBER SIX THOUSAND
        "\u109E0",  # ; 6000.0 ; ; 6000 # No       MEROITIC CURSIVE NUMBER SIX THOUSAND
        "\u10128",  # ; 7000.0 ; ; 7000 # No       AEGEAN NUMBER SEVEN THOUSAND
        "\u109E1",  # ; 7000.0 ; ; 7000 # No       MEROITIC CURSIVE NUMBER SEVEN THOUSAND
        "\u10129",  # ; 8000.0 ; ; 8000 # No       AEGEAN NUMBER EIGHT THOUSAND
        "\u109E2",  # ; 8000.0 ; ; 8000 # No       MEROITIC CURSIVE NUMBER EIGHT THOUSAND
        "\u1012A",  # ; 9000.0 ; ; 9000 # No       AEGEAN NUMBER NINE THOUSAND
        "\u109E3",  # ; 9000.0 ; ; 9000 # No       MEROITIC CURSIVE NUMBER NINE THOUSAND
        "\u137C",  # ; 10000.0 ; ; 10000 # No       ETHIOPIC NUMBER TEN THOUSAND
        "\u2182",  # ; 10000.0 ; ; 10000 # Nl       ROMAN NUMERAL TEN THOUSAND
        "\u4E07",  # ; 10000.0 ; ; 10000 # Lo       CJK UNIFIED IDEOGRAPH-4E07
        "\u842C",  # ; 10000.0 ; ; 10000 # Lo       CJK UNIFIED IDEOGRAPH-842C
        "\u1012B",  # ; 10000.0 ; ; 10000 # No       AEGEAN NUMBER TEN THOUSAND
        "\u10155",  # ; 10000.0 ; ; 10000 # Nl       GREEK ACROPHONIC ATTIC TEN THOUSAND STATERS
        "\u1085F",  # ; 10000.0 ; ; 10000 # No       IMPERIAL ARAMAIC NUMBER TEN THOUSAND
        "\u109E4",  # ; 10000.0 ; ; 10000 # No       MEROITIC CURSIVE NUMBER TEN THOUSAND
        "\u16B5D",  # ; 10000.0 ; ; 10000 # No       PAHAWH HMONG NUMBER TEN THOUSANDS
        "\u1012C",  # ; 20000.0 ; ; 20000 # No       AEGEAN NUMBER TWENTY THOUSAND
        "\u109E5",  # ; 20000.0 ; ; 20000 # No       MEROITIC CURSIVE NUMBER TWENTY THOUSAND
        "\u1012D",  # ; 30000.0 ; ; 30000 # No       AEGEAN NUMBER THIRTY THOUSAND
        "\u109E6",  # ; 30000.0 ; ; 30000 # No       MEROITIC CURSIVE NUMBER THIRTY THOUSAND
        "\u1012E",  # ; 40000.0 ; ; 40000 # No       AEGEAN NUMBER FORTY THOUSAND
        "\u109E7",  # ; 40000.0 ; ; 40000 # No       MEROITIC CURSIVE NUMBER FORTY THOUSAND
        "\u2187",  # ; 50000.0 ; ; 50000 # Nl       ROMAN NUMERAL FIFTY THOUSAND
        "\u1012F",  # ; 50000.0 ; ; 50000 # No       AEGEAN NUMBER FIFTY THOUSAND
        "\u10147",  # ; 50000.0 ; ; 50000 # Nl       GREEK ACROPHONIC ATTIC FIFTY THOUSAND
        "\u10156",  # ; 50000.0 ; ; 50000 # Nl       GREEK ACROPHONIC ATTIC FIFTY THOUSAND STATERS
        "\u109E8",  # ; 50000.0 ; ; 50000 # No       MEROITIC CURSIVE NUMBER FIFTY THOUSAND
        "\u10130",  # ; 60000.0 ; ; 60000 # No       AEGEAN NUMBER SIXTY THOUSAND
        "\u109E9",  # ; 60000.0 ; ; 60000 # No       MEROITIC CURSIVE NUMBER SIXTY THOUSAND
        "\u10131",  # ; 70000.0 ; ; 70000 # No       AEGEAN NUMBER SEVENTY THOUSAND
        "\u109EA",  # ; 70000.0 ; ; 70000 # No       MEROITIC CURSIVE NUMBER SEVENTY THOUSAND
        "\u10132",  # ; 80000.0 ; ; 80000 # No       AEGEAN NUMBER EIGHTY THOUSAND
        "\u109EB",  # ; 80000.0 ; ; 80000 # No       MEROITIC CURSIVE NUMBER EIGHTY THOUSAND
        "\u10133",  # ; 90000.0 ; ; 90000 # No       AEGEAN NUMBER NINETY THOUSAND
        "\u109EC",  # ; 90000.0 ; ; 90000 # No       MEROITIC CURSIVE NUMBER NINETY THOUSAND
        "\u2188",  # ; 100000.0 ; ; 100000 # Nl       ROMAN NUMERAL ONE HUNDRED THOUSAND
        "\u109ED",  # ; 100000.0 ; ; 100000 # No       MEROITIC CURSIVE NUMBER ONE HUNDRED THOUSAND
        "\u109EE",  # ; 200000.0 ; ; 200000 # No       MEROITIC CURSIVE NUMBER TWO HUNDRED THOUSAND
        "\u12432",  # ; 216000.0 ; ; 216000 # Nl       CUNEIFORM NUMERIC SIGN SHAR2 TIMES GAL PLUS DISH
        "\u109EF",  # ; 300000.0 ; ; 300000 # No       MEROITIC CURSIVE NUMBER THREE HUNDRED THOUSAND
        "\u109F0",  # ; 400000.0 ; ; 400000 # No       MEROITIC CURSIVE NUMBER FOUR HUNDRED THOUSAND
        "\u12433",  # ; 432000.0 ; ; 432000 # Nl       CUNEIFORM NUMERIC SIGN SHAR2 TIMES GAL PLUS MIN
        "\u109F1",  # ; 500000.0 ; ; 500000 # No       MEROITIC CURSIVE NUMBER FIVE HUNDRED THOUSAND
        "\u109F2",  # ; 600000.0 ; ; 600000 # No       MEROITIC CURSIVE NUMBER SIX HUNDRED THOUSAND
        "\u109F3",  # ; 700000.0 ; ; 700000 # No       MEROITIC CURSIVE NUMBER SEVEN HUNDRED THOUSAND
        "\u109F4",  # ; 800000.0 ; ; 800000 # No       MEROITIC CURSIVE NUMBER EIGHT HUNDRED THOUSAND
        "\u109F5",  # ; 900000.0 ; ; 900000 # No       MEROITIC CURSIVE NUMBER NINE HUNDRED THOUSAND
        "\u16B5E",  # ; 1000000.0 ; ; 1000000 # No       PAHAWH HMONG NUMBER MILLIONS
        "\u4EBF",  # ; 100000000.0 ; ; 100000000 # Lo       CJK UNIFIED IDEOGRAPH-4EBF
        "\u5104",  # ; 100000000.0 ; ; 100000000 # Lo       CJK UNIFIED IDEOGRAPH-5104
        "\u16B5F",  # ; 100000000.0 ; ; 100000000 # No       PAHAWH HMONG NUMBER HUNDRED MILLIONS
        "\u16B60",  # ; 10000000000.0 ; ; 10000000000 # No       PAHAWH HMONG NUMBER TEN BILLIONS
        "\u5146",  # ; 1000000000000.0 ; ; 1000000000000 # Lo       CJK UNIFIED IDEOGRAPH-5146
        "\u16B61",  # ; 1000000000000.0 ; ; 1000000000000 # No       PAHAWH HMONG NUMBER TRILLIONS
    ]
    test_data.each do |string|
      assert @validator.valid_encoding?(string), "U10_DerivedNumericValues: #{string}"
      assert string.force_encoding("UTF-8").valid_encoding?, "U10_DerivedNumericValues: #{string}" if @vercheck
    end
  end

end

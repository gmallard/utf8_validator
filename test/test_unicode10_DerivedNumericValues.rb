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
        "\d0F33",  # ; -0.5 ; ; -1/2 # No       TIBETAN DIGIT HALF ZERO
        "\d0030",  # ; 0.0 ; ; 0 # Nd       DIGIT ZERO
        "\d0660",  # ; 0.0 ; ; 0 # Nd       ARABIC-INDIC DIGIT ZERO
        "\d06F0",  # ; 0.0 ; ; 0 # Nd       EXTENDED ARABIC-INDIC DIGIT ZERO
        "\d07C0",  # ; 0.0 ; ; 0 # Nd       NKO DIGIT ZERO
        "\d0966",  # ; 0.0 ; ; 0 # Nd       DEVANAGARI DIGIT ZERO
        "\d09E6",  # ; 0.0 ; ; 0 # Nd       BENGALI DIGIT ZERO
        "\d0A66",  # ; 0.0 ; ; 0 # Nd       GURMUKHI DIGIT ZERO
        "\d0AE6",  # ; 0.0 ; ; 0 # Nd       GUJARATI DIGIT ZERO
        "\d0B66",  # ; 0.0 ; ; 0 # Nd       ORIYA DIGIT ZERO
        "\d0BE6",  # ; 0.0 ; ; 0 # Nd       TAMIL DIGIT ZERO
        "\d0C66",  # ; 0.0 ; ; 0 # Nd       TELUGU DIGIT ZERO
        "\d0C78",  # ; 0.0 ; ; 0 # No       TELUGU FRACTION DIGIT ZERO FOR ODD POWERS OF FOUR
        "\d0CE6",  # ; 0.0 ; ; 0 # Nd       KANNADA DIGIT ZERO
        "\d0D66",  # ; 0.0 ; ; 0 # Nd       MALAYALAM DIGIT ZERO
        "\d0DE6",  # ; 0.0 ; ; 0 # Nd       SINHALA LITH DIGIT ZERO
        "\d0E50",  # ; 0.0 ; ; 0 # Nd       THAI DIGIT ZERO
        "\d0ED0",  # ; 0.0 ; ; 0 # Nd       LAO DIGIT ZERO
        "\d0F20",  # ; 0.0 ; ; 0 # Nd       TIBETAN DIGIT ZERO
        "\d1040",  # ; 0.0 ; ; 0 # Nd       MYANMAR DIGIT ZERO
        "\d1090",  # ; 0.0 ; ; 0 # Nd       MYANMAR SHAN DIGIT ZERO
        "\d17E0",  # ; 0.0 ; ; 0 # Nd       KHMER DIGIT ZERO
        "\d17F0",  # ; 0.0 ; ; 0 # No       KHMER SYMBOL LEK ATTAK SON
        "\d1810",  # ; 0.0 ; ; 0 # Nd       MONGOLIAN DIGIT ZERO
        "\d1946",  # ; 0.0 ; ; 0 # Nd       LIMBU DIGIT ZERO
        "\d19D0",  # ; 0.0 ; ; 0 # Nd       NEW TAI LUE DIGIT ZERO
        "\d1A80",  # ; 0.0 ; ; 0 # Nd       TAI THAM HORA DIGIT ZERO
        "\d1A90",  # ; 0.0 ; ; 0 # Nd       TAI THAM THAM DIGIT ZERO
        "\d1B50",  # ; 0.0 ; ; 0 # Nd       BALINESE DIGIT ZERO
        "\d1BB0",  # ; 0.0 ; ; 0 # Nd       SUNDANESE DIGIT ZERO
        "\d1C40",  # ; 0.0 ; ; 0 # Nd       LEPCHA DIGIT ZERO
        "\d1C50",  # ; 0.0 ; ; 0 # Nd       OL CHIKI DIGIT ZERO
        "\d2070",  # ; 0.0 ; ; 0 # No       SUPERSCRIPT ZERO
        "\d2080",  # ; 0.0 ; ; 0 # No       SUBSCRIPT ZERO
        "\d2189",  # ; 0.0 ; ; 0 # No       VULGAR FRACTION ZERO THIRDS
        "\d24EA",  # ; 0.0 ; ; 0 # No       CIRCLED DIGIT ZERO
        "\d24FF",  # ; 0.0 ; ; 0 # No       NEGATIVE CIRCLED DIGIT ZERO
        "\d3007",  # ; 0.0 ; ; 0 # Nl       IDEOGRAPHIC NUMBER ZERO
        "\d96F6",  # ; 0.0 ; ; 0 # Lo       CJK UNIFIED IDEOGRAPH-96F6
        "\dA620",  # ; 0.0 ; ; 0 # Nd       VAI DIGIT ZERO
        "\dA6EF",  # ; 0.0 ; ; 0 # Nl       BAMUM LETTER KOGHOM
        "\dA8D0",  # ; 0.0 ; ; 0 # Nd       SAURASHTRA DIGIT ZERO
        "\dA900",  # ; 0.0 ; ; 0 # Nd       KAYAH LI DIGIT ZERO
        "\dA9D0",  # ; 0.0 ; ; 0 # Nd       JAVANESE DIGIT ZERO
        "\dA9F0",  # ; 0.0 ; ; 0 # Nd       MYANMAR TAI LAING DIGIT ZERO
        "\dAA50",  # ; 0.0 ; ; 0 # Nd       CHAM DIGIT ZERO
        "\dABF0",  # ; 0.0 ; ; 0 # Nd       MEETEI MAYEK DIGIT ZERO
        "\dF9B2",  # ; 0.0 ; ; 0 # Lo       CJK COMPATIBILITY IDEOGRAPH-F9B2
        "\dFF10",  # ; 0.0 ; ; 0 # Nd       FULLWIDTH DIGIT ZERO
        "\d1018A",  # ; 0.0 ; ; 0 # No       GREEK ZERO SIGN
        "\d104A0",  # ; 0.0 ; ; 0 # Nd       OSMANYA DIGIT ZERO
        "\d11066",  # ; 0.0 ; ; 0 # Nd       BRAHMI DIGIT ZERO
        "\d110F0",  # ; 0.0 ; ; 0 # Nd       SORA SOMPENG DIGIT ZERO
        "\d11136",  # ; 0.0 ; ; 0 # Nd       CHAKMA DIGIT ZERO
        "\d111D0",  # ; 0.0 ; ; 0 # Nd       SHARADA DIGIT ZERO
        "\d112F0",  # ; 0.0 ; ; 0 # Nd       KHUDAWADI DIGIT ZERO
        "\d11450",  # ; 0.0 ; ; 0 # Nd       NEWA DIGIT ZERO
        "\d114D0",  # ; 0.0 ; ; 0 # Nd       TIRHUTA DIGIT ZERO
        "\d11650",  # ; 0.0 ; ; 0 # Nd       MODI DIGIT ZERO
        "\d116C0",  # ; 0.0 ; ; 0 # Nd       TAKRI DIGIT ZERO
        "\d11730",  # ; 0.0 ; ; 0 # Nd       AHOM DIGIT ZERO
        "\d118E0",  # ; 0.0 ; ; 0 # Nd       WARANG CITI DIGIT ZERO
        "\d11C50",  # ; 0.0 ; ; 0 # Nd       BHAIKSUKI DIGIT ZERO
        "\d11D50",  # ; 0.0 ; ; 0 # Nd       MASARAM GONDI DIGIT ZERO
        "\d16A60",  # ; 0.0 ; ; 0 # Nd       MRO DIGIT ZERO
        "\d16B50",  # ; 0.0 ; ; 0 # Nd       PAHAWH HMONG DIGIT ZERO
        "\d1D7CE",  # ; 0.0 ; ; 0 # Nd       MATHEMATICAL BOLD DIGIT ZERO
        "\d1D7D8",  # ; 0.0 ; ; 0 # Nd       MATHEMATICAL DOUBLE-STRUCK DIGIT ZERO
        "\d1D7E2",  # ; 0.0 ; ; 0 # Nd       MATHEMATICAL SANS-SERIF DIGIT ZERO
        "\d1D7EC",  # ; 0.0 ; ; 0 # Nd       MATHEMATICAL SANS-SERIF BOLD DIGIT ZERO
        "\d1D7F6",  # ; 0.0 ; ; 0 # Nd       MATHEMATICAL MONOSPACE DIGIT ZERO
        "\d1E950",  # ; 0.0 ; ; 0 # Nd       ADLAM DIGIT ZERO
        "\d1f100","\d1f101",  # ; 0.0 ; ; 0 # No   [2] DIGIT ZERO FULL STOP..DIGIT ZERO COMMA
        "\d1f10b","\d1f10c",  # ; 0.0 ; ; 0 # No   [2] DINGBAT CIRCLED SANS-SERIF DIGIT ZERO..DINGBAT NEGATIVE CIRCLED SANS-SERIF DIGIT ZERO
        "\d0D58",  # ; 0.00625 ; ; 1/160 # No       MALAYALAM FRACTION ONE ONE-HUNDRED-AND-SIXTIETH
        "\d0D59",  # ; 0.025 ; ; 1/40 # No       MALAYALAM FRACTION ONE FORTIETH
        "\d0D5A",  # ; 0.0375 ; ; 3/80 # No       MALAYALAM FRACTION THREE EIGHTIETHS
        "\d0D5B",  # ; 0.05 ; ; 1/20 # No       MALAYALAM FRACTION ONE TWENTIETH
        "\d09F4",  # ; 0.0625 ; ; 1/16 # No       BENGALI CURRENCY NUMERATOR ONE
        "\d0B75",  # ; 0.0625 ; ; 1/16 # No       ORIYA FRACTION ONE SIXTEENTH
        "\d0D76",  # ; 0.0625 ; ; 1/16 # No       MALAYALAM FRACTION ONE SIXTEENTH
        "\dA833",  # ; 0.0625 ; ; 1/16 # No       NORTH INDIC FRACTION ONE SIXTEENTH
        "\d109F6",  # ; 0.08333333 ; ; 1/12 # No       MEROITIC CURSIVE FRACTION ONE TWELFTH
        "\d0D5C",  # ; 0.1 ; ; 1/10 # No       MALAYALAM FRACTION ONE TENTH
        "\d2152",  # ; 0.1 ; ; 1/10 # No       VULGAR FRACTION ONE TENTH
        "\d2151",  # ; 0.11111111 ; ; 1/9 # No       VULGAR FRACTION ONE NINTH
        "\d09F5",  # ; 0.125 ; ; 1/8 # No       BENGALI CURRENCY NUMERATOR TWO
        "\d0B76",  # ; 0.125 ; ; 1/8 # No       ORIYA FRACTION ONE EIGHTH
        "\d0D77",  # ; 0.125 ; ; 1/8 # No       MALAYALAM FRACTION ONE EIGHTH
        "\d215B",  # ; 0.125 ; ; 1/8 # No       VULGAR FRACTION ONE EIGHTH
        "\dA834",  # ; 0.125 ; ; 1/8 # No       NORTH INDIC FRACTION ONE EIGHTH
        "\d1245F",  # ; 0.125 ; ; 1/8 # Nl       CUNEIFORM NUMERIC SIGN ONE EIGHTH ASH
        "\d2150",  # ; 0.14285714 ; ; 1/7 # No       VULGAR FRACTION ONE SEVENTH
        "\d0D5D",  # ; 0.15 ; ; 3/20 # No       MALAYALAM FRACTION THREE TWENTIETHS
        "\d2159",  # ; 0.16666667 ; ; 1/6 # No       VULGAR FRACTION ONE SIXTH
        "\d109F7",  # ; 0.16666667 ; ; 1/6 # No       MEROITIC CURSIVE FRACTION TWO TWELFTHS
        "\d12461",  # ; 0.16666667 ; ; 1/6 # Nl       CUNEIFORM NUMERIC SIGN OLD ASSYRIAN ONE SIXTH
        "\d09F6",  # ; 0.1875 ; ; 3/16 # No       BENGALI CURRENCY NUMERATOR THREE
        "\d0B77",  # ; 0.1875 ; ; 3/16 # No       ORIYA FRACTION THREE SIXTEENTHS
        "\d0D78",  # ; 0.1875 ; ; 3/16 # No       MALAYALAM FRACTION THREE SIXTEENTHS
        "\dA835",  # ; 0.1875 ; ; 3/16 # No       NORTH INDIC FRACTION THREE SIXTEENTHS
        "\d0D5E",  # ; 0.2 ; ; 1/5 # No       MALAYALAM FRACTION ONE FIFTH
        "\d2155",  # ; 0.2 ; ; 1/5 # No       VULGAR FRACTION ONE FIFTH
        "\d00BC",  # ; 0.25 ; ; 1/4 # No       VULGAR FRACTION ONE QUARTER
        "\d09F7",  # ; 0.25 ; ; 1/4 # No       BENGALI CURRENCY NUMERATOR FOUR
        "\d0B72",  # ; 0.25 ; ; 1/4 # No       ORIYA FRACTION ONE QUARTER
        "\d0D73",  # ; 0.25 ; ; 1/4 # No       MALAYALAM FRACTION ONE QUARTER
        "\dA830",  # ; 0.25 ; ; 1/4 # No       NORTH INDIC FRACTION ONE QUARTER
        "\d10140",  # ; 0.25 ; ; 1/4 # Nl       GREEK ACROPHONIC ATTIC ONE QUARTER
        "\d1018B",  # ; 0.25 ; ; 1/4 # No       GREEK ONE QUARTER SIGN
        "\d109F8",  # ; 0.25 ; ; 1/4 # No       MEROITIC CURSIVE FRACTION THREE TWELFTHS
        "\d10E7C",  # ; 0.25 ; ; 1/4 # No       RUMI FRACTION ONE QUARTER
        "\d12460",  # ; 0.25 ; ; 1/4 # Nl       CUNEIFORM NUMERIC SIGN ONE QUARTER ASH
        "\d12462","\d12463",  # ; 0.25 ; ; 1/4 # Nl   [2] CUNEIFORM NUMERIC SIGN OLD ASSYRIAN ONE QUARTER..CUNEIFORM NUMERIC SIGN ONE QUARTER GUR
        "\d2153",  # ; 0.33333333 ; ; 1/3 # No       VULGAR FRACTION ONE THIRD
        "\d109F9",  # ; 0.33333333 ; ; 1/3 # No       MEROITIC CURSIVE FRACTION FOUR TWELFTHS
        "\d10E7D",  # ; 0.33333333 ; ; 1/3 # No       RUMI FRACTION ONE THIRD
        "\d1245A",  # ; 0.33333333 ; ; 1/3 # Nl       CUNEIFORM NUMERIC SIGN ONE THIRD DISH
        "\d1245D",  # ; 0.33333333 ; ; 1/3 # Nl       CUNEIFORM NUMERIC SIGN ONE THIRD VARIANT FORM A
        "\d12465",  # ; 0.33333333 ; ; 1/3 # Nl       CUNEIFORM NUMERIC SIGN ELAMITE ONE THIRD
        "\d215C",  # ; 0.375 ; ; 3/8 # No       VULGAR FRACTION THREE EIGHTHS
        "\d2156",  # ; 0.4 ; ; 2/5 # No       VULGAR FRACTION TWO FIFTHS
        "\d109FA",  # ; 0.41666667 ; ; 5/12 # No       MEROITIC CURSIVE FRACTION FIVE TWELFTHS
        "\d00BD",  # ; 0.5 ; ; 1/2 # No       VULGAR FRACTION ONE HALF
        "\d0B73",  # ; 0.5 ; ; 1/2 # No       ORIYA FRACTION ONE HALF
        "\d0D74",  # ; 0.5 ; ; 1/2 # No       MALAYALAM FRACTION ONE HALF
        "\d0F2A",  # ; 0.5 ; ; 1/2 # No       TIBETAN DIGIT HALF ONE
        "\d2CFD",  # ; 0.5 ; ; 1/2 # No       COPTIC FRACTION ONE HALF
        "\dA831",  # ; 0.5 ; ; 1/2 # No       NORTH INDIC FRACTION ONE HALF
        "\d10141",  # ; 0.5 ; ; 1/2 # Nl       GREEK ACROPHONIC ATTIC ONE HALF
        "\d10175","\d10176",  # ; 0.5 ; ; 1/2 # No   [2] GREEK ONE HALF SIGN..GREEK ONE HALF SIGN ALTERNATE FORM
        "\d109BD",  # ; 0.5 ; ; 1/2 # No       MEROITIC CURSIVE FRACTION ONE HALF
        "\d109FB",  # ; 0.5 ; ; 1/2 # No       MEROITIC CURSIVE FRACTION SIX TWELFTHS
        "\d10E7B",  # ; 0.5 ; ; 1/2 # No       RUMI FRACTION ONE HALF
        "\d12464",  # ; 0.5 ; ; 1/2 # Nl       CUNEIFORM NUMERIC SIGN ONE HALF GUR
        "\d109FC",  # ; 0.58333333 ; ; 7/12 # No       MEROITIC CURSIVE FRACTION SEVEN TWELFTHS
        "\d2157",  # ; 0.6 ; ; 3/5 # No       VULGAR FRACTION THREE FIFTHS
        "\d215D",  # ; 0.625 ; ; 5/8 # No       VULGAR FRACTION FIVE EIGHTHS
        "\d2154",  # ; 0.66666667 ; ; 2/3 # No       VULGAR FRACTION TWO THIRDS
        "\d10177",  # ; 0.66666667 ; ; 2/3 # No       GREEK TWO THIRDS SIGN
        "\d109FD",  # ; 0.66666667 ; ; 2/3 # No       MEROITIC CURSIVE FRACTION EIGHT TWELFTHS
        "\d10E7E",  # ; 0.66666667 ; ; 2/3 # No       RUMI FRACTION TWO THIRDS
        "\d1245B",  # ; 0.66666667 ; ; 2/3 # Nl       CUNEIFORM NUMERIC SIGN TWO THIRDS DISH
        "\d1245E",  # ; 0.66666667 ; ; 2/3 # Nl       CUNEIFORM NUMERIC SIGN TWO THIRDS VARIANT FORM A
        "\d12466",  # ; 0.66666667 ; ; 2/3 # Nl       CUNEIFORM NUMERIC SIGN ELAMITE TWO THIRDS
        "\d00BE",  # ; 0.75 ; ; 3/4 # No       VULGAR FRACTION THREE QUARTERS
        "\d09F8",  # ; 0.75 ; ; 3/4 # No       BENGALI CURRENCY NUMERATOR ONE LESS THAN THE DENOMINATOR
        "\d0B74",  # ; 0.75 ; ; 3/4 # No       ORIYA FRACTION THREE QUARTERS
        "\d0D75",  # ; 0.75 ; ; 3/4 # No       MALAYALAM FRACTION THREE QUARTERS
        "\dA832",  # ; 0.75 ; ; 3/4 # No       NORTH INDIC FRACTION THREE QUARTERS
        "\d10178",  # ; 0.75 ; ; 3/4 # No       GREEK THREE QUARTERS SIGN
        "\d109FE",  # ; 0.75 ; ; 3/4 # No       MEROITIC CURSIVE FRACTION NINE TWELFTHS
        "\d2158",  # ; 0.8 ; ; 4/5 # No       VULGAR FRACTION FOUR FIFTHS
        "\d215A",  # ; 0.83333333 ; ; 5/6 # No       VULGAR FRACTION FIVE SIXTHS
        "\d109FF",  # ; 0.83333333 ; ; 5/6 # No       MEROITIC CURSIVE FRACTION TEN TWELFTHS
        "\d1245C",  # ; 0.83333333 ; ; 5/6 # Nl       CUNEIFORM NUMERIC SIGN FIVE SIXTHS DISH
        "\d215E",  # ; 0.875 ; ; 7/8 # No       VULGAR FRACTION SEVEN EIGHTHS
        "\d109BC",  # ; 0.91666667 ; ; 11/12 # No       MEROITIC CURSIVE FRACTION ELEVEN TWELFTHS
        "\d0031",  # ; 1.0 ; ; 1 # Nd       DIGIT ONE
        "\d00B9",  # ; 1.0 ; ; 1 # No       SUPERSCRIPT ONE
        "\d0661",  # ; 1.0 ; ; 1 # Nd       ARABIC-INDIC DIGIT ONE
        "\d06F1",  # ; 1.0 ; ; 1 # Nd       EXTENDED ARABIC-INDIC DIGIT ONE
        "\d07C1",  # ; 1.0 ; ; 1 # Nd       NKO DIGIT ONE
        "\d0967",  # ; 1.0 ; ; 1 # Nd       DEVANAGARI DIGIT ONE
        "\d09E7",  # ; 1.0 ; ; 1 # Nd       BENGALI DIGIT ONE
        "\d0A67",  # ; 1.0 ; ; 1 # Nd       GURMUKHI DIGIT ONE
        "\d0AE7",  # ; 1.0 ; ; 1 # Nd       GUJARATI DIGIT ONE
        "\d0B67",  # ; 1.0 ; ; 1 # Nd       ORIYA DIGIT ONE
        "\d0BE7",  # ; 1.0 ; ; 1 # Nd       TAMIL DIGIT ONE
        "\d0C67",  # ; 1.0 ; ; 1 # Nd       TELUGU DIGIT ONE
        "\d0C79",  # ; 1.0 ; ; 1 # No       TELUGU FRACTION DIGIT ONE FOR ODD POWERS OF FOUR
        "\d0C7C",  # ; 1.0 ; ; 1 # No       TELUGU FRACTION DIGIT ONE FOR EVEN POWERS OF FOUR
        "\d0CE7",  # ; 1.0 ; ; 1 # Nd       KANNADA DIGIT ONE
        "\d0D67",  # ; 1.0 ; ; 1 # Nd       MALAYALAM DIGIT ONE
        "\d0DE7",  # ; 1.0 ; ; 1 # Nd       SINHALA LITH DIGIT ONE
        "\d0E51",  # ; 1.0 ; ; 1 # Nd       THAI DIGIT ONE
        "\d0ED1",  # ; 1.0 ; ; 1 # Nd       LAO DIGIT ONE
        "\d0F21",  # ; 1.0 ; ; 1 # Nd       TIBETAN DIGIT ONE
        "\d1041",  # ; 1.0 ; ; 1 # Nd       MYANMAR DIGIT ONE
        "\d1091",  # ; 1.0 ; ; 1 # Nd       MYANMAR SHAN DIGIT ONE
        "\d1369",  # ; 1.0 ; ; 1 # No       ETHIOPIC DIGIT ONE
        "\d17E1",  # ; 1.0 ; ; 1 # Nd       KHMER DIGIT ONE
        "\d17F1",  # ; 1.0 ; ; 1 # No       KHMER SYMBOL LEK ATTAK MUOY
        "\d1811",  # ; 1.0 ; ; 1 # Nd       MONGOLIAN DIGIT ONE
        "\d1947",  # ; 1.0 ; ; 1 # Nd       LIMBU DIGIT ONE
        "\d19D1",  # ; 1.0 ; ; 1 # Nd       NEW TAI LUE DIGIT ONE
        "\d19DA",  # ; 1.0 ; ; 1 # No       NEW TAI LUE THAM DIGIT ONE
        "\d1A81",  # ; 1.0 ; ; 1 # Nd       TAI THAM HORA DIGIT ONE
        "\d1A91",  # ; 1.0 ; ; 1 # Nd       TAI THAM THAM DIGIT ONE
        "\d1B51",  # ; 1.0 ; ; 1 # Nd       BALINESE DIGIT ONE
        "\d1BB1",  # ; 1.0 ; ; 1 # Nd       SUNDANESE DIGIT ONE
        "\d1C41",  # ; 1.0 ; ; 1 # Nd       LEPCHA DIGIT ONE
        "\d1C51",  # ; 1.0 ; ; 1 # Nd       OL CHIKI DIGIT ONE
        "\d2081",  # ; 1.0 ; ; 1 # No       SUBSCRIPT ONE
        "\d215F",  # ; 1.0 ; ; 1 # No       FRACTION NUMERATOR ONE
        "\d2160",  # ; 1.0 ; ; 1 # Nl       ROMAN NUMERAL ONE
        "\d2170",  # ; 1.0 ; ; 1 # Nl       SMALL ROMAN NUMERAL ONE
        "\d2460",  # ; 1.0 ; ; 1 # No       CIRCLED DIGIT ONE
        "\d2474",  # ; 1.0 ; ; 1 # No       PARENTHESIZED DIGIT ONE
        "\d2488",  # ; 1.0 ; ; 1 # No       DIGIT ONE FULL STOP
        "\d24F5",  # ; 1.0 ; ; 1 # No       DOUBLE CIRCLED DIGIT ONE
        "\d2776",  # ; 1.0 ; ; 1 # No       DINGBAT NEGATIVE CIRCLED DIGIT ONE
        "\d2780",  # ; 1.0 ; ; 1 # No       DINGBAT CIRCLED SANS-SERIF DIGIT ONE
        "\d278A",  # ; 1.0 ; ; 1 # No       DINGBAT NEGATIVE CIRCLED SANS-SERIF DIGIT ONE
        "\d3021",  # ; 1.0 ; ; 1 # Nl       HANGZHOU NUMERAL ONE
        "\d3192",  # ; 1.0 ; ; 1 # No       IDEOGRAPHIC ANNOTATION ONE MARK
        "\d3220",  # ; 1.0 ; ; 1 # No       PARENTHESIZED IDEOGRAPH ONE
        "\d3280",  # ; 1.0 ; ; 1 # No       CIRCLED IDEOGRAPH ONE
        "\d4E00",  # ; 1.0 ; ; 1 # Lo       CJK UNIFIED IDEOGRAPH-4E00
        "\d58F1",  # ; 1.0 ; ; 1 # Lo       CJK UNIFIED IDEOGRAPH-58F1
        "\d58F9",  # ; 1.0 ; ; 1 # Lo       CJK UNIFIED IDEOGRAPH-58F9
        "\d5E7A",  # ; 1.0 ; ; 1 # Lo       CJK UNIFIED IDEOGRAPH-5E7A
        "\d5F0C",  # ; 1.0 ; ; 1 # Lo       CJK UNIFIED IDEOGRAPH-5F0C
        "\dA621",  # ; 1.0 ; ; 1 # Nd       VAI DIGIT ONE
        "\dA6E6",  # ; 1.0 ; ; 1 # Nl       BAMUM LETTER MO
        "\dA8D1",  # ; 1.0 ; ; 1 # Nd       SAURASHTRA DIGIT ONE
        "\dA901",  # ; 1.0 ; ; 1 # Nd       KAYAH LI DIGIT ONE
        "\dA9D1",  # ; 1.0 ; ; 1 # Nd       JAVANESE DIGIT ONE
        "\dA9F1",  # ; 1.0 ; ; 1 # Nd       MYANMAR TAI LAING DIGIT ONE
        "\dAA51",  # ; 1.0 ; ; 1 # Nd       CHAM DIGIT ONE
        "\dABF1",  # ; 1.0 ; ; 1 # Nd       MEETEI MAYEK DIGIT ONE
        "\dFF11",  # ; 1.0 ; ; 1 # Nd       FULLWIDTH DIGIT ONE
        "\d10107",  # ; 1.0 ; ; 1 # No       AEGEAN NUMBER ONE
        "\d10142",  # ; 1.0 ; ; 1 # Nl       GREEK ACROPHONIC ATTIC ONE DRACHMA
        "\d10158","\d10159","\d1015a",  # ; 1.0 ; ; 1 # Nl   [3] GREEK ACROPHONIC HERAEUM ONE PLETHRON..GREEK ACROPHONIC HERMIONIAN ONE
        "\d102E1",  # ; 1.0 ; ; 1 # No       COPTIC EPACT DIGIT ONE
        "\d10320",  # ; 1.0 ; ; 1 # No       OLD ITALIC NUMERAL ONE
        "\d103D1",  # ; 1.0 ; ; 1 # Nl       OLD PERSIAN NUMBER ONE
        "\d104A1",  # ; 1.0 ; ; 1 # Nd       OSMANYA DIGIT ONE
        "\d10858",  # ; 1.0 ; ; 1 # No       IMPERIAL ARAMAIC NUMBER ONE
        "\d10879",  # ; 1.0 ; ; 1 # No       PALMYRENE NUMBER ONE
        "\d108A7",  # ; 1.0 ; ; 1 # No       NABATAEAN NUMBER ONE
        "\d108FB",  # ; 1.0 ; ; 1 # No       HATRAN NUMBER ONE
        "\d10916",  # ; 1.0 ; ; 1 # No       PHOENICIAN NUMBER ONE
        "\d109C0",  # ; 1.0 ; ; 1 # No       MEROITIC CURSIVE NUMBER ONE
        "\d10A40",  # ; 1.0 ; ; 1 # No       KHAROSHTHI DIGIT ONE
        "\d10A7D",  # ; 1.0 ; ; 1 # No       OLD SOUTH ARABIAN NUMBER ONE
        "\d10A9D",  # ; 1.0 ; ; 1 # No       OLD NORTH ARABIAN NUMBER ONE
        "\d10AEB",  # ; 1.0 ; ; 1 # No       MANICHAEAN NUMBER ONE
        "\d10B58",  # ; 1.0 ; ; 1 # No       INSCRIPTIONAL PARTHIAN NUMBER ONE
        "\d10B78",  # ; 1.0 ; ; 1 # No       INSCRIPTIONAL PAHLAVI NUMBER ONE
        "\d10BA9",  # ; 1.0 ; ; 1 # No       PSALTER PAHLAVI NUMBER ONE
        "\d10CFA",  # ; 1.0 ; ; 1 # No       OLD HUNGARIAN NUMBER ONE
        "\d10E60",  # ; 1.0 ; ; 1 # No       RUMI DIGIT ONE
        "\d11052",  # ; 1.0 ; ; 1 # No       BRAHMI NUMBER ONE
        "\d11067",  # ; 1.0 ; ; 1 # Nd       BRAHMI DIGIT ONE
        "\d110F1",  # ; 1.0 ; ; 1 # Nd       SORA SOMPENG DIGIT ONE
        "\d11137",  # ; 1.0 ; ; 1 # Nd       CHAKMA DIGIT ONE
        "\d111D1",  # ; 1.0 ; ; 1 # Nd       SHARADA DIGIT ONE
        "\d111E1",  # ; 1.0 ; ; 1 # No       SINHALA ARCHAIC DIGIT ONE
        "\d112F1",  # ; 1.0 ; ; 1 # Nd       KHUDAWADI DIGIT ONE
        "\d11451",  # ; 1.0 ; ; 1 # Nd       NEWA DIGIT ONE
        "\d114D1",  # ; 1.0 ; ; 1 # Nd       TIRHUTA DIGIT ONE
        "\d11651",  # ; 1.0 ; ; 1 # Nd       MODI DIGIT ONE
        "\d116C1",  # ; 1.0 ; ; 1 # Nd       TAKRI DIGIT ONE
        "\d11731",  # ; 1.0 ; ; 1 # Nd       AHOM DIGIT ONE
        "\d118E1",  # ; 1.0 ; ; 1 # Nd       WARANG CITI DIGIT ONE
        "\d11C51",  # ; 1.0 ; ; 1 # Nd       BHAIKSUKI DIGIT ONE
        "\d11C5A",  # ; 1.0 ; ; 1 # No       BHAIKSUKI NUMBER ONE
        "\d11D51",  # ; 1.0 ; ; 1 # Nd       MASARAM GONDI DIGIT ONE
        "\d12415",  # ; 1.0 ; ; 1 # Nl       CUNEIFORM NUMERIC SIGN ONE GESH2
        "\d1241E",  # ; 1.0 ; ; 1 # Nl       CUNEIFORM NUMERIC SIGN ONE GESHU
        "\d1242C",  # ; 1.0 ; ; 1 # Nl       CUNEIFORM NUMERIC SIGN ONE SHARU
        "\d12434",  # ; 1.0 ; ; 1 # Nl       CUNEIFORM NUMERIC SIGN ONE BURU
        "\d1244F",  # ; 1.0 ; ; 1 # Nl       CUNEIFORM NUMERIC SIGN ONE BAN2
        "\d12458",  # ; 1.0 ; ; 1 # Nl       CUNEIFORM NUMERIC SIGN ONE ESHE3
        "\d16A61",  # ; 1.0 ; ; 1 # Nd       MRO DIGIT ONE
        "\d16B51",  # ; 1.0 ; ; 1 # Nd       PAHAWH HMONG DIGIT ONE
        "\d1D360",  # ; 1.0 ; ; 1 # No       COUNTING ROD UNIT DIGIT ONE
        "\d1D7CF",  # ; 1.0 ; ; 1 # Nd       MATHEMATICAL BOLD DIGIT ONE
        "\d1D7D9",  # ; 1.0 ; ; 1 # Nd       MATHEMATICAL DOUBLE-STRUCK DIGIT ONE
        "\d1D7E3",  # ; 1.0 ; ; 1 # Nd       MATHEMATICAL SANS-SERIF DIGIT ONE
        "\d1D7ED",  # ; 1.0 ; ; 1 # Nd       MATHEMATICAL SANS-SERIF BOLD DIGIT ONE
        "\d1D7F7",  # ; 1.0 ; ; 1 # Nd       MATHEMATICAL MONOSPACE DIGIT ONE
        "\d1E8C7",  # ; 1.0 ; ; 1 # No       MENDE KIKAKUI DIGIT ONE
        "\d1E951",  # ; 1.0 ; ; 1 # Nd       ADLAM DIGIT ONE
        "\d1F102",  # ; 1.0 ; ; 1 # No       DIGIT ONE COMMA
        "\d2092A",  # ; 1.0 ; ; 1 # Lo       CJK UNIFIED IDEOGRAPH-2092A
        "\d0F2B",  # ; 1.5 ; ; 3/2 # No       TIBETAN DIGIT HALF TWO
        "\d0032",  # ; 2.0 ; ; 2 # Nd       DIGIT TWO
        "\d00B2",  # ; 2.0 ; ; 2 # No       SUPERSCRIPT TWO
        "\d0662",  # ; 2.0 ; ; 2 # Nd       ARABIC-INDIC DIGIT TWO
        "\d06F2",  # ; 2.0 ; ; 2 # Nd       EXTENDED ARABIC-INDIC DIGIT TWO
        "\d07C2",  # ; 2.0 ; ; 2 # Nd       NKO DIGIT TWO
        "\d0968",  # ; 2.0 ; ; 2 # Nd       DEVANAGARI DIGIT TWO
        "\d09E8",  # ; 2.0 ; ; 2 # Nd       BENGALI DIGIT TWO
        "\d0A68",  # ; 2.0 ; ; 2 # Nd       GURMUKHI DIGIT TWO
        "\d0AE8",  # ; 2.0 ; ; 2 # Nd       GUJARATI DIGIT TWO
        "\d0B68",  # ; 2.0 ; ; 2 # Nd       ORIYA DIGIT TWO
        "\d0BE8",  # ; 2.0 ; ; 2 # Nd       TAMIL DIGIT TWO
        "\d0C68",  # ; 2.0 ; ; 2 # Nd       TELUGU DIGIT TWO
        "\d0C7A",  # ; 2.0 ; ; 2 # No       TELUGU FRACTION DIGIT TWO FOR ODD POWERS OF FOUR
        "\d0C7D",  # ; 2.0 ; ; 2 # No       TELUGU FRACTION DIGIT TWO FOR EVEN POWERS OF FOUR
        "\d0CE8",  # ; 2.0 ; ; 2 # Nd       KANNADA DIGIT TWO
        "\d0D68",  # ; 2.0 ; ; 2 # Nd       MALAYALAM DIGIT TWO
        "\d0DE8",  # ; 2.0 ; ; 2 # Nd       SINHALA LITH DIGIT TWO
        "\d0E52",  # ; 2.0 ; ; 2 # Nd       THAI DIGIT TWO
        "\d0ED2",  # ; 2.0 ; ; 2 # Nd       LAO DIGIT TWO
        "\d0F22",  # ; 2.0 ; ; 2 # Nd       TIBETAN DIGIT TWO
        "\d1042",  # ; 2.0 ; ; 2 # Nd       MYANMAR DIGIT TWO
        "\d1092",  # ; 2.0 ; ; 2 # Nd       MYANMAR SHAN DIGIT TWO
        "\d136A",  # ; 2.0 ; ; 2 # No       ETHIOPIC DIGIT TWO
        "\d17E2",  # ; 2.0 ; ; 2 # Nd       KHMER DIGIT TWO
        "\d17F2",  # ; 2.0 ; ; 2 # No       KHMER SYMBOL LEK ATTAK PII
        "\d1812",  # ; 2.0 ; ; 2 # Nd       MONGOLIAN DIGIT TWO
        "\d1948",  # ; 2.0 ; ; 2 # Nd       LIMBU DIGIT TWO
        "\d19D2",  # ; 2.0 ; ; 2 # Nd       NEW TAI LUE DIGIT TWO
        "\d1A82",  # ; 2.0 ; ; 2 # Nd       TAI THAM HORA DIGIT TWO
        "\d1A92",  # ; 2.0 ; ; 2 # Nd       TAI THAM THAM DIGIT TWO
        "\d1B52",  # ; 2.0 ; ; 2 # Nd       BALINESE DIGIT TWO
        "\d1BB2",  # ; 2.0 ; ; 2 # Nd       SUNDANESE DIGIT TWO
        "\d1C42",  # ; 2.0 ; ; 2 # Nd       LEPCHA DIGIT TWO
        "\d1C52",  # ; 2.0 ; ; 2 # Nd       OL CHIKI DIGIT TWO
        "\d2082",  # ; 2.0 ; ; 2 # No       SUBSCRIPT TWO
        "\d2161",  # ; 2.0 ; ; 2 # Nl       ROMAN NUMERAL TWO
        "\d2171",  # ; 2.0 ; ; 2 # Nl       SMALL ROMAN NUMERAL TWO
        "\d2461",  # ; 2.0 ; ; 2 # No       CIRCLED DIGIT TWO
        "\d2475",  # ; 2.0 ; ; 2 # No       PARENTHESIZED DIGIT TWO
        "\d2489",  # ; 2.0 ; ; 2 # No       DIGIT TWO FULL STOP
        "\d24F6",  # ; 2.0 ; ; 2 # No       DOUBLE CIRCLED DIGIT TWO
        "\d2777",  # ; 2.0 ; ; 2 # No       DINGBAT NEGATIVE CIRCLED DIGIT TWO
        "\d2781",  # ; 2.0 ; ; 2 # No       DINGBAT CIRCLED SANS-SERIF DIGIT TWO
        "\d278B",  # ; 2.0 ; ; 2 # No       DINGBAT NEGATIVE CIRCLED SANS-SERIF DIGIT TWO
        "\d3022",  # ; 2.0 ; ; 2 # Nl       HANGZHOU NUMERAL TWO
        "\d3193",  # ; 2.0 ; ; 2 # No       IDEOGRAPHIC ANNOTATION TWO MARK
        "\d3221",  # ; 2.0 ; ; 2 # No       PARENTHESIZED IDEOGRAPH TWO
        "\d3281",  # ; 2.0 ; ; 2 # No       CIRCLED IDEOGRAPH TWO
        "\d3483",  # ; 2.0 ; ; 2 # Lo       CJK UNIFIED IDEOGRAPH-3483
        "\d4E8C",  # ; 2.0 ; ; 2 # Lo       CJK UNIFIED IDEOGRAPH-4E8C
        "\d5169",  # ; 2.0 ; ; 2 # Lo       CJK UNIFIED IDEOGRAPH-5169
        "\d5F0D",  # ; 2.0 ; ; 2 # Lo       CJK UNIFIED IDEOGRAPH-5F0D
        "\d5F10",  # ; 2.0 ; ; 2 # Lo       CJK UNIFIED IDEOGRAPH-5F10
        "\d8CAE",  # ; 2.0 ; ; 2 # Lo       CJK UNIFIED IDEOGRAPH-8CAE
        "\d8CB3",  # ; 2.0 ; ; 2 # Lo       CJK UNIFIED IDEOGRAPH-8CB3
        "\d8D30",  # ; 2.0 ; ; 2 # Lo       CJK UNIFIED IDEOGRAPH-8D30
        "\dA622",  # ; 2.0 ; ; 2 # Nd       VAI DIGIT TWO
        "\dA6E7",  # ; 2.0 ; ; 2 # Nl       BAMUM LETTER MBAA
        "\dA8D2",  # ; 2.0 ; ; 2 # Nd       SAURASHTRA DIGIT TWO
        "\dA902",  # ; 2.0 ; ; 2 # Nd       KAYAH LI DIGIT TWO
        "\dA9D2",  # ; 2.0 ; ; 2 # Nd       JAVANESE DIGIT TWO
        "\dA9F2",  # ; 2.0 ; ; 2 # Nd       MYANMAR TAI LAING DIGIT TWO
        "\dAA52",  # ; 2.0 ; ; 2 # Nd       CHAM DIGIT TWO
        "\dABF2",  # ; 2.0 ; ; 2 # Nd       MEETEI MAYEK DIGIT TWO
        "\dF978",  # ; 2.0 ; ; 2 # Lo       CJK COMPATIBILITY IDEOGRAPH-F978
        "\dFF12",  # ; 2.0 ; ; 2 # Nd       FULLWIDTH DIGIT TWO
        "\d10108",  # ; 2.0 ; ; 2 # No       AEGEAN NUMBER TWO
        "\d1015b","\d1015c","\d1015d","\d1015e",  # ; 2.0 ; ; 2 # Nl   [4] GREEK ACROPHONIC EPIDAUREAN TWO..GREEK ACROPHONIC EPIDAUREAN TWO DRACHMAS
        "\d102E2",  # ; 2.0 ; ; 2 # No       COPTIC EPACT DIGIT TWO
        "\d103D2",  # ; 2.0 ; ; 2 # Nl       OLD PERSIAN NUMBER TWO
        "\d104A2",  # ; 2.0 ; ; 2 # Nd       OSMANYA DIGIT TWO
        "\d10859",  # ; 2.0 ; ; 2 # No       IMPERIAL ARAMAIC NUMBER TWO
        "\d1087A",  # ; 2.0 ; ; 2 # No       PALMYRENE NUMBER TWO
        "\d108A8",  # ; 2.0 ; ; 2 # No       NABATAEAN NUMBER TWO
        "\d1091A",  # ; 2.0 ; ; 2 # No       PHOENICIAN NUMBER TWO
        "\d109C1",  # ; 2.0 ; ; 2 # No       MEROITIC CURSIVE NUMBER TWO
        "\d10A41",  # ; 2.0 ; ; 2 # No       KHAROSHTHI DIGIT TWO
        "\d10B59",  # ; 2.0 ; ; 2 # No       INSCRIPTIONAL PARTHIAN NUMBER TWO
        "\d10B79",  # ; 2.0 ; ; 2 # No       INSCRIPTIONAL PAHLAVI NUMBER TWO
        "\d10BAA",  # ; 2.0 ; ; 2 # No       PSALTER PAHLAVI NUMBER TWO
        "\d10E61",  # ; 2.0 ; ; 2 # No       RUMI DIGIT TWO
        "\d11053",  # ; 2.0 ; ; 2 # No       BRAHMI NUMBER TWO
        "\d11068",  # ; 2.0 ; ; 2 # Nd       BRAHMI DIGIT TWO
        "\d110F2",  # ; 2.0 ; ; 2 # Nd       SORA SOMPENG DIGIT TWO
        "\d11138",  # ; 2.0 ; ; 2 # Nd       CHAKMA DIGIT TWO
        "\d111D2",  # ; 2.0 ; ; 2 # Nd       SHARADA DIGIT TWO
        "\d111E2",  # ; 2.0 ; ; 2 # No       SINHALA ARCHAIC DIGIT TWO
        "\d112F2",  # ; 2.0 ; ; 2 # Nd       KHUDAWADI DIGIT TWO
        "\d11452",  # ; 2.0 ; ; 2 # Nd       NEWA DIGIT TWO
        "\d114D2",  # ; 2.0 ; ; 2 # Nd       TIRHUTA DIGIT TWO
        "\d11652",  # ; 2.0 ; ; 2 # Nd       MODI DIGIT TWO
        "\d116C2",  # ; 2.0 ; ; 2 # Nd       TAKRI DIGIT TWO
        "\d11732",  # ; 2.0 ; ; 2 # Nd       AHOM DIGIT TWO
        "\d118E2",  # ; 2.0 ; ; 2 # Nd       WARANG CITI DIGIT TWO
        "\d11C52",  # ; 2.0 ; ; 2 # Nd       BHAIKSUKI DIGIT TWO
        "\d11C5B",  # ; 2.0 ; ; 2 # No       BHAIKSUKI NUMBER TWO
        "\d11D52",  # ; 2.0 ; ; 2 # Nd       MASARAM GONDI DIGIT TWO
        "\d12400",  # ; 2.0 ; ; 2 # Nl       CUNEIFORM NUMERIC SIGN TWO ASH
        "\d12416",  # ; 2.0 ; ; 2 # Nl       CUNEIFORM NUMERIC SIGN TWO GESH2
        "\d1241F",  # ; 2.0 ; ; 2 # Nl       CUNEIFORM NUMERIC SIGN TWO GESHU
        "\d12423",  # ; 2.0 ; ; 2 # Nl       CUNEIFORM NUMERIC SIGN TWO SHAR2
        "\d1242D",  # ; 2.0 ; ; 2 # Nl       CUNEIFORM NUMERIC SIGN TWO SHARU
        "\d12435",  # ; 2.0 ; ; 2 # Nl       CUNEIFORM NUMERIC SIGN TWO BURU
        "\d1244A",  # ; 2.0 ; ; 2 # Nl       CUNEIFORM NUMERIC SIGN TWO ASH TENU
        "\d12450",  # ; 2.0 ; ; 2 # Nl       CUNEIFORM NUMERIC SIGN TWO BAN2
        "\d12456",  # ; 2.0 ; ; 2 # Nl       CUNEIFORM NUMERIC SIGN NIGIDAMIN
        "\d12459",  # ; 2.0 ; ; 2 # Nl       CUNEIFORM NUMERIC SIGN TWO ESHE3
        "\d16A62",  # ; 2.0 ; ; 2 # Nd       MRO DIGIT TWO
        "\d16B52",  # ; 2.0 ; ; 2 # Nd       PAHAWH HMONG DIGIT TWO
        "\d1D361",  # ; 2.0 ; ; 2 # No       COUNTING ROD UNIT DIGIT TWO
        "\d1D7D0",  # ; 2.0 ; ; 2 # Nd       MATHEMATICAL BOLD DIGIT TWO
        "\d1D7DA",  # ; 2.0 ; ; 2 # Nd       MATHEMATICAL DOUBLE-STRUCK DIGIT TWO
        "\d1D7E4",  # ; 2.0 ; ; 2 # Nd       MATHEMATICAL SANS-SERIF DIGIT TWO
        "\d1D7EE",  # ; 2.0 ; ; 2 # Nd       MATHEMATICAL SANS-SERIF BOLD DIGIT TWO
        "\d1D7F8",  # ; 2.0 ; ; 2 # Nd       MATHEMATICAL MONOSPACE DIGIT TWO
        "\d1E8C8",  # ; 2.0 ; ; 2 # No       MENDE KIKAKUI DIGIT TWO
        "\d1E952",  # ; 2.0 ; ; 2 # Nd       ADLAM DIGIT TWO
        "\d1F103",  # ; 2.0 ; ; 2 # No       DIGIT TWO COMMA
        "\d22390",  # ; 2.0 ; ; 2 # Lo       CJK UNIFIED IDEOGRAPH-22390
        "\d0F2C",  # ; 2.5 ; ; 5/2 # No       TIBETAN DIGIT HALF THREE
        "\d0033",  # ; 3.0 ; ; 3 # Nd       DIGIT THREE
        "\d00B3",  # ; 3.0 ; ; 3 # No       SUPERSCRIPT THREE
        "\d0663",  # ; 3.0 ; ; 3 # Nd       ARABIC-INDIC DIGIT THREE
        "\d06F3",  # ; 3.0 ; ; 3 # Nd       EXTENDED ARABIC-INDIC DIGIT THREE
        "\d07C3",  # ; 3.0 ; ; 3 # Nd       NKO DIGIT THREE
        "\d0969",  # ; 3.0 ; ; 3 # Nd       DEVANAGARI DIGIT THREE
        "\d09E9",  # ; 3.0 ; ; 3 # Nd       BENGALI DIGIT THREE
        "\d0A69",  # ; 3.0 ; ; 3 # Nd       GURMUKHI DIGIT THREE
        "\d0AE9",  # ; 3.0 ; ; 3 # Nd       GUJARATI DIGIT THREE
        "\d0B69",  # ; 3.0 ; ; 3 # Nd       ORIYA DIGIT THREE
        "\d0BE9",  # ; 3.0 ; ; 3 # Nd       TAMIL DIGIT THREE
        "\d0C69",  # ; 3.0 ; ; 3 # Nd       TELUGU DIGIT THREE
        "\d0C7B",  # ; 3.0 ; ; 3 # No       TELUGU FRACTION DIGIT THREE FOR ODD POWERS OF FOUR
        "\d0C7E",  # ; 3.0 ; ; 3 # No       TELUGU FRACTION DIGIT THREE FOR EVEN POWERS OF FOUR
        "\d0CE9",  # ; 3.0 ; ; 3 # Nd       KANNADA DIGIT THREE
        "\d0D69",  # ; 3.0 ; ; 3 # Nd       MALAYALAM DIGIT THREE
        "\d0DE9",  # ; 3.0 ; ; 3 # Nd       SINHALA LITH DIGIT THREE
        "\d0E53",  # ; 3.0 ; ; 3 # Nd       THAI DIGIT THREE
        "\d0ED3",  # ; 3.0 ; ; 3 # Nd       LAO DIGIT THREE
        "\d0F23",  # ; 3.0 ; ; 3 # Nd       TIBETAN DIGIT THREE
        "\d1043",  # ; 3.0 ; ; 3 # Nd       MYANMAR DIGIT THREE
        "\d1093",  # ; 3.0 ; ; 3 # Nd       MYANMAR SHAN DIGIT THREE
        "\d136B",  # ; 3.0 ; ; 3 # No       ETHIOPIC DIGIT THREE
        "\d17E3",  # ; 3.0 ; ; 3 # Nd       KHMER DIGIT THREE
        "\d17F3",  # ; 3.0 ; ; 3 # No       KHMER SYMBOL LEK ATTAK BEI
        "\d1813",  # ; 3.0 ; ; 3 # Nd       MONGOLIAN DIGIT THREE
        "\d1949",  # ; 3.0 ; ; 3 # Nd       LIMBU DIGIT THREE
        "\d19D3",  # ; 3.0 ; ; 3 # Nd       NEW TAI LUE DIGIT THREE
        "\d1A83",  # ; 3.0 ; ; 3 # Nd       TAI THAM HORA DIGIT THREE
        "\d1A93",  # ; 3.0 ; ; 3 # Nd       TAI THAM THAM DIGIT THREE
        "\d1B53",  # ; 3.0 ; ; 3 # Nd       BALINESE DIGIT THREE
        "\d1BB3",  # ; 3.0 ; ; 3 # Nd       SUNDANESE DIGIT THREE
        "\d1C43",  # ; 3.0 ; ; 3 # Nd       LEPCHA DIGIT THREE
        "\d1C53",  # ; 3.0 ; ; 3 # Nd       OL CHIKI DIGIT THREE
        "\d2083",  # ; 3.0 ; ; 3 # No       SUBSCRIPT THREE
        "\d2162",  # ; 3.0 ; ; 3 # Nl       ROMAN NUMERAL THREE
        "\d2172",  # ; 3.0 ; ; 3 # Nl       SMALL ROMAN NUMERAL THREE
        "\d2462",  # ; 3.0 ; ; 3 # No       CIRCLED DIGIT THREE
        "\d2476",  # ; 3.0 ; ; 3 # No       PARENTHESIZED DIGIT THREE
        "\d248A",  # ; 3.0 ; ; 3 # No       DIGIT THREE FULL STOP
        "\d24F7",  # ; 3.0 ; ; 3 # No       DOUBLE CIRCLED DIGIT THREE
        "\d2778",  # ; 3.0 ; ; 3 # No       DINGBAT NEGATIVE CIRCLED DIGIT THREE
        "\d2782",  # ; 3.0 ; ; 3 # No       DINGBAT CIRCLED SANS-SERIF DIGIT THREE
        "\d278C",  # ; 3.0 ; ; 3 # No       DINGBAT NEGATIVE CIRCLED SANS-SERIF DIGIT THREE
        "\d3023",  # ; 3.0 ; ; 3 # Nl       HANGZHOU NUMERAL THREE
        "\d3194",  # ; 3.0 ; ; 3 # No       IDEOGRAPHIC ANNOTATION THREE MARK
        "\d3222",  # ; 3.0 ; ; 3 # No       PARENTHESIZED IDEOGRAPH THREE
        "\d3282",  # ; 3.0 ; ; 3 # No       CIRCLED IDEOGRAPH THREE
        "\d4E09",  # ; 3.0 ; ; 3 # Lo       CJK UNIFIED IDEOGRAPH-4E09
        "\d4EE8",  # ; 3.0 ; ; 3 # Lo       CJK UNIFIED IDEOGRAPH-4EE8
        "\d53c1","\d53c2","\d53c3","\d53c4",  # ; 3.0 ; ; 3 # Lo   [4] CJK UNIFIED IDEOGRAPH-53C1..CJK UNIFIED IDEOGRAPH-53C4
        "\d5F0E",  # ; 3.0 ; ; 3 # Lo       CJK UNIFIED IDEOGRAPH-5F0E
        "\dA623",  # ; 3.0 ; ; 3 # Nd       VAI DIGIT THREE
        "\dA6E8",  # ; 3.0 ; ; 3 # Nl       BAMUM LETTER TET
        "\dA8D3",  # ; 3.0 ; ; 3 # Nd       SAURASHTRA DIGIT THREE
        "\dA903",  # ; 3.0 ; ; 3 # Nd       KAYAH LI DIGIT THREE
        "\dA9D3",  # ; 3.0 ; ; 3 # Nd       JAVANESE DIGIT THREE
        "\dA9F3",  # ; 3.0 ; ; 3 # Nd       MYANMAR TAI LAING DIGIT THREE
        "\dAA53",  # ; 3.0 ; ; 3 # Nd       CHAM DIGIT THREE
        "\dABF3",  # ; 3.0 ; ; 3 # Nd       MEETEI MAYEK DIGIT THREE
        "\dF96B",  # ; 3.0 ; ; 3 # Lo       CJK COMPATIBILITY IDEOGRAPH-F96B
        "\dFF13",  # ; 3.0 ; ; 3 # Nd       FULLWIDTH DIGIT THREE
        "\d10109",  # ; 3.0 ; ; 3 # No       AEGEAN NUMBER THREE
        "\d102E3",  # ; 3.0 ; ; 3 # No       COPTIC EPACT DIGIT THREE
        "\d104A3",  # ; 3.0 ; ; 3 # Nd       OSMANYA DIGIT THREE
        "\d1085A",  # ; 3.0 ; ; 3 # No       IMPERIAL ARAMAIC NUMBER THREE
        "\d1087B",  # ; 3.0 ; ; 3 # No       PALMYRENE NUMBER THREE
        "\d108A9",  # ; 3.0 ; ; 3 # No       NABATAEAN NUMBER THREE
        "\d1091B",  # ; 3.0 ; ; 3 # No       PHOENICIAN NUMBER THREE
        "\d109C2",  # ; 3.0 ; ; 3 # No       MEROITIC CURSIVE NUMBER THREE
        "\d10A42",  # ; 3.0 ; ; 3 # No       KHAROSHTHI DIGIT THREE
        "\d10B5A",  # ; 3.0 ; ; 3 # No       INSCRIPTIONAL PARTHIAN NUMBER THREE
        "\d10B7A",  # ; 3.0 ; ; 3 # No       INSCRIPTIONAL PAHLAVI NUMBER THREE
        "\d10BAB",  # ; 3.0 ; ; 3 # No       PSALTER PAHLAVI NUMBER THREE
        "\d10E62",  # ; 3.0 ; ; 3 # No       RUMI DIGIT THREE
        "\d11054",  # ; 3.0 ; ; 3 # No       BRAHMI NUMBER THREE
        "\d11069",  # ; 3.0 ; ; 3 # Nd       BRAHMI DIGIT THREE
        "\d110F3",  # ; 3.0 ; ; 3 # Nd       SORA SOMPENG DIGIT THREE
        "\d11139",  # ; 3.0 ; ; 3 # Nd       CHAKMA DIGIT THREE
        "\d111D3",  # ; 3.0 ; ; 3 # Nd       SHARADA DIGIT THREE
        "\d111E3",  # ; 3.0 ; ; 3 # No       SINHALA ARCHAIC DIGIT THREE
        "\d112F3",  # ; 3.0 ; ; 3 # Nd       KHUDAWADI DIGIT THREE
        "\d11453",  # ; 3.0 ; ; 3 # Nd       NEWA DIGIT THREE
        "\d114D3",  # ; 3.0 ; ; 3 # Nd       TIRHUTA DIGIT THREE
        "\d11653",  # ; 3.0 ; ; 3 # Nd       MODI DIGIT THREE
        "\d116C3",  # ; 3.0 ; ; 3 # Nd       TAKRI DIGIT THREE
        "\d11733",  # ; 3.0 ; ; 3 # Nd       AHOM DIGIT THREE
        "\d118E3",  # ; 3.0 ; ; 3 # Nd       WARANG CITI DIGIT THREE
        "\d11C53",  # ; 3.0 ; ; 3 # Nd       BHAIKSUKI DIGIT THREE
        "\d11C5C",  # ; 3.0 ; ; 3 # No       BHAIKSUKI NUMBER THREE
        "\d11D53",  # ; 3.0 ; ; 3 # Nd       MASARAM GONDI DIGIT THREE
        "\d12401",  # ; 3.0 ; ; 3 # Nl       CUNEIFORM NUMERIC SIGN THREE ASH
        "\d12408",  # ; 3.0 ; ; 3 # Nl       CUNEIFORM NUMERIC SIGN THREE DISH
        "\d12417",  # ; 3.0 ; ; 3 # Nl       CUNEIFORM NUMERIC SIGN THREE GESH2
        "\d12420",  # ; 3.0 ; ; 3 # Nl       CUNEIFORM NUMERIC SIGN THREE GESHU
        "\d12424","\d12425",  # ; 3.0 ; ; 3 # Nl   [2] CUNEIFORM NUMERIC SIGN THREE SHAR2..CUNEIFORM NUMERIC SIGN THREE SHAR2 VARIANT FORM
        "\d1242e","\d1242f",  # ; 3.0 ; ; 3 # Nl   [2] CUNEIFORM NUMERIC SIGN THREE SHARU..CUNEIFORM NUMERIC SIGN THREE SHARU VARIANT FORM
        "\d12436","\d12437",  # ; 3.0 ; ; 3 # Nl   [2] CUNEIFORM NUMERIC SIGN THREE BURU..CUNEIFORM NUMERIC SIGN THREE BURU VARIANT FORM
        "\d1243a","\d1243b",  # ; 3.0 ; ; 3 # Nl   [2] CUNEIFORM NUMERIC SIGN THREE VARIANT FORM ESH16..CUNEIFORM NUMERIC SIGN THREE VARIANT FORM ESH21
        "\d1244B",  # ; 3.0 ; ; 3 # Nl       CUNEIFORM NUMERIC SIGN THREE ASH TENU
        "\d12451",  # ; 3.0 ; ; 3 # Nl       CUNEIFORM NUMERIC SIGN THREE BAN2
        "\d12457",  # ; 3.0 ; ; 3 # Nl       CUNEIFORM NUMERIC SIGN NIGIDAESH
        "\d16A63",  # ; 3.0 ; ; 3 # Nd       MRO DIGIT THREE
        "\d16B53",  # ; 3.0 ; ; 3 # Nd       PAHAWH HMONG DIGIT THREE
        "\d1D362",  # ; 3.0 ; ; 3 # No       COUNTING ROD UNIT DIGIT THREE
        "\d1D7D1",  # ; 3.0 ; ; 3 # Nd       MATHEMATICAL BOLD DIGIT THREE
        "\d1D7DB",  # ; 3.0 ; ; 3 # Nd       MATHEMATICAL DOUBLE-STRUCK DIGIT THREE
        "\d1D7E5",  # ; 3.0 ; ; 3 # Nd       MATHEMATICAL SANS-SERIF DIGIT THREE
        "\d1D7EF",  # ; 3.0 ; ; 3 # Nd       MATHEMATICAL SANS-SERIF BOLD DIGIT THREE
        "\d1D7F9",  # ; 3.0 ; ; 3 # Nd       MATHEMATICAL MONOSPACE DIGIT THREE
        "\d1E8C9",  # ; 3.0 ; ; 3 # No       MENDE KIKAKUI DIGIT THREE
        "\d1E953",  # ; 3.0 ; ; 3 # Nd       ADLAM DIGIT THREE
        "\d1F104",  # ; 3.0 ; ; 3 # No       DIGIT THREE COMMA
        "\d20AFD",  # ; 3.0 ; ; 3 # Lo       CJK UNIFIED IDEOGRAPH-20AFD
        "\d20B19",  # ; 3.0 ; ; 3 # Lo       CJK UNIFIED IDEOGRAPH-20B19
        "\d22998",  # ; 3.0 ; ; 3 # Lo       CJK UNIFIED IDEOGRAPH-22998
        "\d23B1B",  # ; 3.0 ; ; 3 # Lo       CJK UNIFIED IDEOGRAPH-23B1B
        "\d0F2D",  # ; 3.5 ; ; 7/2 # No       TIBETAN DIGIT HALF FOUR
        "\d0034",  # ; 4.0 ; ; 4 # Nd       DIGIT FOUR
        "\d0664",  # ; 4.0 ; ; 4 # Nd       ARABIC-INDIC DIGIT FOUR
        "\d06F4",  # ; 4.0 ; ; 4 # Nd       EXTENDED ARABIC-INDIC DIGIT FOUR
        "\d07C4",  # ; 4.0 ; ; 4 # Nd       NKO DIGIT FOUR
        "\d096A",  # ; 4.0 ; ; 4 # Nd       DEVANAGARI DIGIT FOUR
        "\d09EA",  # ; 4.0 ; ; 4 # Nd       BENGALI DIGIT FOUR
        "\d0A6A",  # ; 4.0 ; ; 4 # Nd       GURMUKHI DIGIT FOUR
        "\d0AEA",  # ; 4.0 ; ; 4 # Nd       GUJARATI DIGIT FOUR
        "\d0B6A",  # ; 4.0 ; ; 4 # Nd       ORIYA DIGIT FOUR
        "\d0BEA",  # ; 4.0 ; ; 4 # Nd       TAMIL DIGIT FOUR
        "\d0C6A",  # ; 4.0 ; ; 4 # Nd       TELUGU DIGIT FOUR
        "\d0CEA",  # ; 4.0 ; ; 4 # Nd       KANNADA DIGIT FOUR
        "\d0D6A",  # ; 4.0 ; ; 4 # Nd       MALAYALAM DIGIT FOUR
        "\d0DEA",  # ; 4.0 ; ; 4 # Nd       SINHALA LITH DIGIT FOUR
        "\d0E54",  # ; 4.0 ; ; 4 # Nd       THAI DIGIT FOUR
        "\d0ED4",  # ; 4.0 ; ; 4 # Nd       LAO DIGIT FOUR
        "\d0F24",  # ; 4.0 ; ; 4 # Nd       TIBETAN DIGIT FOUR
        "\d1044",  # ; 4.0 ; ; 4 # Nd       MYANMAR DIGIT FOUR
        "\d1094",  # ; 4.0 ; ; 4 # Nd       MYANMAR SHAN DIGIT FOUR
        "\d136C",  # ; 4.0 ; ; 4 # No       ETHIOPIC DIGIT FOUR
        "\d17E4",  # ; 4.0 ; ; 4 # Nd       KHMER DIGIT FOUR
        "\d17F4",  # ; 4.0 ; ; 4 # No       KHMER SYMBOL LEK ATTAK BUON
        "\d1814",  # ; 4.0 ; ; 4 # Nd       MONGOLIAN DIGIT FOUR
        "\d194A",  # ; 4.0 ; ; 4 # Nd       LIMBU DIGIT FOUR
        "\d19D4",  # ; 4.0 ; ; 4 # Nd       NEW TAI LUE DIGIT FOUR
        "\d1A84",  # ; 4.0 ; ; 4 # Nd       TAI THAM HORA DIGIT FOUR
        "\d1A94",  # ; 4.0 ; ; 4 # Nd       TAI THAM THAM DIGIT FOUR
        "\d1B54",  # ; 4.0 ; ; 4 # Nd       BALINESE DIGIT FOUR
        "\d1BB4",  # ; 4.0 ; ; 4 # Nd       SUNDANESE DIGIT FOUR
        "\d1C44",  # ; 4.0 ; ; 4 # Nd       LEPCHA DIGIT FOUR
        "\d1C54",  # ; 4.0 ; ; 4 # Nd       OL CHIKI DIGIT FOUR
        "\d2074",  # ; 4.0 ; ; 4 # No       SUPERSCRIPT FOUR
        "\d2084",  # ; 4.0 ; ; 4 # No       SUBSCRIPT FOUR
        "\d2163",  # ; 4.0 ; ; 4 # Nl       ROMAN NUMERAL FOUR
        "\d2173",  # ; 4.0 ; ; 4 # Nl       SMALL ROMAN NUMERAL FOUR
        "\d2463",  # ; 4.0 ; ; 4 # No       CIRCLED DIGIT FOUR
        "\d2477",  # ; 4.0 ; ; 4 # No       PARENTHESIZED DIGIT FOUR
        "\d248B",  # ; 4.0 ; ; 4 # No       DIGIT FOUR FULL STOP
        "\d24F8",  # ; 4.0 ; ; 4 # No       DOUBLE CIRCLED DIGIT FOUR
        "\d2779",  # ; 4.0 ; ; 4 # No       DINGBAT NEGATIVE CIRCLED DIGIT FOUR
        "\d2783",  # ; 4.0 ; ; 4 # No       DINGBAT CIRCLED SANS-SERIF DIGIT FOUR
        "\d278D",  # ; 4.0 ; ; 4 # No       DINGBAT NEGATIVE CIRCLED SANS-SERIF DIGIT FOUR
        "\d3024",  # ; 4.0 ; ; 4 # Nl       HANGZHOU NUMERAL FOUR
        "\d3195",  # ; 4.0 ; ; 4 # No       IDEOGRAPHIC ANNOTATION FOUR MARK
        "\d3223",  # ; 4.0 ; ; 4 # No       PARENTHESIZED IDEOGRAPH FOUR
        "\d3283",  # ; 4.0 ; ; 4 # No       CIRCLED IDEOGRAPH FOUR
        "\d4E96",  # ; 4.0 ; ; 4 # Lo       CJK UNIFIED IDEOGRAPH-4E96
        "\d56DB",  # ; 4.0 ; ; 4 # Lo       CJK UNIFIED IDEOGRAPH-56DB
        "\d8086",  # ; 4.0 ; ; 4 # Lo       CJK UNIFIED IDEOGRAPH-8086
        "\dA624",  # ; 4.0 ; ; 4 # Nd       VAI DIGIT FOUR
        "\dA6E9",  # ; 4.0 ; ; 4 # Nl       BAMUM LETTER KPA
        "\dA8D4",  # ; 4.0 ; ; 4 # Nd       SAURASHTRA DIGIT FOUR
        "\dA904",  # ; 4.0 ; ; 4 # Nd       KAYAH LI DIGIT FOUR
        "\dA9D4",  # ; 4.0 ; ; 4 # Nd       JAVANESE DIGIT FOUR
        "\dA9F4",  # ; 4.0 ; ; 4 # Nd       MYANMAR TAI LAING DIGIT FOUR
        "\dAA54",  # ; 4.0 ; ; 4 # Nd       CHAM DIGIT FOUR
        "\dABF4",  # ; 4.0 ; ; 4 # Nd       MEETEI MAYEK DIGIT FOUR
        "\dFF14",  # ; 4.0 ; ; 4 # Nd       FULLWIDTH DIGIT FOUR
        "\d1010A",  # ; 4.0 ; ; 4 # No       AEGEAN NUMBER FOUR
        "\d102E4",  # ; 4.0 ; ; 4 # No       COPTIC EPACT DIGIT FOUR
        "\d104A4",  # ; 4.0 ; ; 4 # Nd       OSMANYA DIGIT FOUR
        "\d1087C",  # ; 4.0 ; ; 4 # No       PALMYRENE NUMBER FOUR
        "\d108aa","\d108ab",  # ; 4.0 ; ; 4 # No   [2] NABATAEAN NUMBER FOUR..NABATAEAN CRUCIFORM NUMBER FOUR
        "\d109C3",  # ; 4.0 ; ; 4 # No       MEROITIC CURSIVE NUMBER FOUR
        "\d10A43",  # ; 4.0 ; ; 4 # No       KHAROSHTHI DIGIT FOUR
        "\d10B5B",  # ; 4.0 ; ; 4 # No       INSCRIPTIONAL PARTHIAN NUMBER FOUR
        "\d10B7B",  # ; 4.0 ; ; 4 # No       INSCRIPTIONAL PAHLAVI NUMBER FOUR
        "\d10BAC",  # ; 4.0 ; ; 4 # No       PSALTER PAHLAVI NUMBER FOUR
        "\d10E63",  # ; 4.0 ; ; 4 # No       RUMI DIGIT FOUR
        "\d11055",  # ; 4.0 ; ; 4 # No       BRAHMI NUMBER FOUR
        "\d1106A",  # ; 4.0 ; ; 4 # Nd       BRAHMI DIGIT FOUR
        "\d110F4",  # ; 4.0 ; ; 4 # Nd       SORA SOMPENG DIGIT FOUR
        "\d1113A",  # ; 4.0 ; ; 4 # Nd       CHAKMA DIGIT FOUR
        "\d111D4",  # ; 4.0 ; ; 4 # Nd       SHARADA DIGIT FOUR
        "\d111E4",  # ; 4.0 ; ; 4 # No       SINHALA ARCHAIC DIGIT FOUR
        "\d112F4",  # ; 4.0 ; ; 4 # Nd       KHUDAWADI DIGIT FOUR
        "\d11454",  # ; 4.0 ; ; 4 # Nd       NEWA DIGIT FOUR
        "\d114D4",  # ; 4.0 ; ; 4 # Nd       TIRHUTA DIGIT FOUR
        "\d11654",  # ; 4.0 ; ; 4 # Nd       MODI DIGIT FOUR
        "\d116C4",  # ; 4.0 ; ; 4 # Nd       TAKRI DIGIT FOUR
        "\d11734",  # ; 4.0 ; ; 4 # Nd       AHOM DIGIT FOUR
        "\d118E4",  # ; 4.0 ; ; 4 # Nd       WARANG CITI DIGIT FOUR
        "\d11C54",  # ; 4.0 ; ; 4 # Nd       BHAIKSUKI DIGIT FOUR
        "\d11C5D",  # ; 4.0 ; ; 4 # No       BHAIKSUKI NUMBER FOUR
        "\d11D54",  # ; 4.0 ; ; 4 # Nd       MASARAM GONDI DIGIT FOUR
        "\d12402",  # ; 4.0 ; ; 4 # Nl       CUNEIFORM NUMERIC SIGN FOUR ASH
        "\d12409",  # ; 4.0 ; ; 4 # Nl       CUNEIFORM NUMERIC SIGN FOUR DISH
        "\d1240F",  # ; 4.0 ; ; 4 # Nl       CUNEIFORM NUMERIC SIGN FOUR U
        "\d12418",  # ; 4.0 ; ; 4 # Nl       CUNEIFORM NUMERIC SIGN FOUR GESH2
        "\d12421",  # ; 4.0 ; ; 4 # Nl       CUNEIFORM NUMERIC SIGN FOUR GESHU
        "\d12426",  # ; 4.0 ; ; 4 # Nl       CUNEIFORM NUMERIC SIGN FOUR SHAR2
        "\d12430",  # ; 4.0 ; ; 4 # Nl       CUNEIFORM NUMERIC SIGN FOUR SHARU
        "\d12438",  # ; 4.0 ; ; 4 # Nl       CUNEIFORM NUMERIC SIGN FOUR BURU
        "\d1243c","\d1243d","\d1243e","\d1243f",  # ; 4.0 ; ; 4 # Nl   [4] CUNEIFORM NUMERIC SIGN FOUR VARIANT FORM LIMMU..CUNEIFORM NUMERIC SIGN FOUR VARIANT FORM LIMMU B
        "\d1244C",  # ; 4.0 ; ; 4 # Nl       CUNEIFORM NUMERIC SIGN FOUR ASH TENU
        "\d12452","\d12453",  # ; 4.0 ; ; 4 # Nl   [2] CUNEIFORM NUMERIC SIGN FOUR BAN2..CUNEIFORM NUMERIC SIGN FOUR BAN2 VARIANT FORM
        "\d12469",  # ; 4.0 ; ; 4 # Nl       CUNEIFORM NUMERIC SIGN FOUR U VARIANT FORM
        "\d16A64",  # ; 4.0 ; ; 4 # Nd       MRO DIGIT FOUR
        "\d16B54",  # ; 4.0 ; ; 4 # Nd       PAHAWH HMONG DIGIT FOUR
        "\d1D363",  # ; 4.0 ; ; 4 # No       COUNTING ROD UNIT DIGIT FOUR
        "\d1D7D2",  # ; 4.0 ; ; 4 # Nd       MATHEMATICAL BOLD DIGIT FOUR
        "\d1D7DC",  # ; 4.0 ; ; 4 # Nd       MATHEMATICAL DOUBLE-STRUCK DIGIT FOUR
        "\d1D7E6",  # ; 4.0 ; ; 4 # Nd       MATHEMATICAL SANS-SERIF DIGIT FOUR
        "\d1D7F0",  # ; 4.0 ; ; 4 # Nd       MATHEMATICAL SANS-SERIF BOLD DIGIT FOUR
        "\d1D7FA",  # ; 4.0 ; ; 4 # Nd       MATHEMATICAL MONOSPACE DIGIT FOUR
        "\d1E8CA",  # ; 4.0 ; ; 4 # No       MENDE KIKAKUI DIGIT FOUR
        "\d1E954",  # ; 4.0 ; ; 4 # Nd       ADLAM DIGIT FOUR
        "\d1F105",  # ; 4.0 ; ; 4 # No       DIGIT FOUR COMMA
        "\d20064",  # ; 4.0 ; ; 4 # Lo       CJK UNIFIED IDEOGRAPH-20064
        "\d200E2",  # ; 4.0 ; ; 4 # Lo       CJK UNIFIED IDEOGRAPH-200E2
        "\d2626D",  # ; 4.0 ; ; 4 # Lo       CJK UNIFIED IDEOGRAPH-2626D
        "\d0F2E",  # ; 4.5 ; ; 9/2 # No       TIBETAN DIGIT HALF FIVE
        "\d0035",  # ; 5.0 ; ; 5 # Nd       DIGIT FIVE
        "\d0665",  # ; 5.0 ; ; 5 # Nd       ARABIC-INDIC DIGIT FIVE
        "\d06F5",  # ; 5.0 ; ; 5 # Nd       EXTENDED ARABIC-INDIC DIGIT FIVE
        "\d07C5",  # ; 5.0 ; ; 5 # Nd       NKO DIGIT FIVE
        "\d096B",  # ; 5.0 ; ; 5 # Nd       DEVANAGARI DIGIT FIVE
        "\d09EB",  # ; 5.0 ; ; 5 # Nd       BENGALI DIGIT FIVE
        "\d0A6B",  # ; 5.0 ; ; 5 # Nd       GURMUKHI DIGIT FIVE
        "\d0AEB",  # ; 5.0 ; ; 5 # Nd       GUJARATI DIGIT FIVE
        "\d0B6B",  # ; 5.0 ; ; 5 # Nd       ORIYA DIGIT FIVE
        "\d0BEB",  # ; 5.0 ; ; 5 # Nd       TAMIL DIGIT FIVE
        "\d0C6B",  # ; 5.0 ; ; 5 # Nd       TELUGU DIGIT FIVE
        "\d0CEB",  # ; 5.0 ; ; 5 # Nd       KANNADA DIGIT FIVE
        "\d0D6B",  # ; 5.0 ; ; 5 # Nd       MALAYALAM DIGIT FIVE
        "\d0DEB",  # ; 5.0 ; ; 5 # Nd       SINHALA LITH DIGIT FIVE
        "\d0E55",  # ; 5.0 ; ; 5 # Nd       THAI DIGIT FIVE
        "\d0ED5",  # ; 5.0 ; ; 5 # Nd       LAO DIGIT FIVE
        "\d0F25",  # ; 5.0 ; ; 5 # Nd       TIBETAN DIGIT FIVE
        "\d1045",  # ; 5.0 ; ; 5 # Nd       MYANMAR DIGIT FIVE
        "\d1095",  # ; 5.0 ; ; 5 # Nd       MYANMAR SHAN DIGIT FIVE
        "\d136D",  # ; 5.0 ; ; 5 # No       ETHIOPIC DIGIT FIVE
        "\d17E5",  # ; 5.0 ; ; 5 # Nd       KHMER DIGIT FIVE
        "\d17F5",  # ; 5.0 ; ; 5 # No       KHMER SYMBOL LEK ATTAK PRAM
        "\d1815",  # ; 5.0 ; ; 5 # Nd       MONGOLIAN DIGIT FIVE
        "\d194B",  # ; 5.0 ; ; 5 # Nd       LIMBU DIGIT FIVE
        "\d19D5",  # ; 5.0 ; ; 5 # Nd       NEW TAI LUE DIGIT FIVE
        "\d1A85",  # ; 5.0 ; ; 5 # Nd       TAI THAM HORA DIGIT FIVE
        "\d1A95",  # ; 5.0 ; ; 5 # Nd       TAI THAM THAM DIGIT FIVE
        "\d1B55",  # ; 5.0 ; ; 5 # Nd       BALINESE DIGIT FIVE
        "\d1BB5",  # ; 5.0 ; ; 5 # Nd       SUNDANESE DIGIT FIVE
        "\d1C45",  # ; 5.0 ; ; 5 # Nd       LEPCHA DIGIT FIVE
        "\d1C55",  # ; 5.0 ; ; 5 # Nd       OL CHIKI DIGIT FIVE
        "\d2075",  # ; 5.0 ; ; 5 # No       SUPERSCRIPT FIVE
        "\d2085",  # ; 5.0 ; ; 5 # No       SUBSCRIPT FIVE
        "\d2164",  # ; 5.0 ; ; 5 # Nl       ROMAN NUMERAL FIVE
        "\d2174",  # ; 5.0 ; ; 5 # Nl       SMALL ROMAN NUMERAL FIVE
        "\d2464",  # ; 5.0 ; ; 5 # No       CIRCLED DIGIT FIVE
        "\d2478",  # ; 5.0 ; ; 5 # No       PARENTHESIZED DIGIT FIVE
        "\d248C",  # ; 5.0 ; ; 5 # No       DIGIT FIVE FULL STOP
        "\d24F9",  # ; 5.0 ; ; 5 # No       DOUBLE CIRCLED DIGIT FIVE
        "\d277A",  # ; 5.0 ; ; 5 # No       DINGBAT NEGATIVE CIRCLED DIGIT FIVE
        "\d2784",  # ; 5.0 ; ; 5 # No       DINGBAT CIRCLED SANS-SERIF DIGIT FIVE
        "\d278E",  # ; 5.0 ; ; 5 # No       DINGBAT NEGATIVE CIRCLED SANS-SERIF DIGIT FIVE
        "\d3025",  # ; 5.0 ; ; 5 # Nl       HANGZHOU NUMERAL FIVE
        "\d3224",  # ; 5.0 ; ; 5 # No       PARENTHESIZED IDEOGRAPH FIVE
        "\d3284",  # ; 5.0 ; ; 5 # No       CIRCLED IDEOGRAPH FIVE
        "\d3405",  # ; 5.0 ; ; 5 # Lo       CJK UNIFIED IDEOGRAPH-3405
        "\d382A",  # ; 5.0 ; ; 5 # Lo       CJK UNIFIED IDEOGRAPH-382A
        "\d4E94",  # ; 5.0 ; ; 5 # Lo       CJK UNIFIED IDEOGRAPH-4E94
        "\d4F0D",  # ; 5.0 ; ; 5 # Lo       CJK UNIFIED IDEOGRAPH-4F0D
        "\dA625",  # ; 5.0 ; ; 5 # Nd       VAI DIGIT FIVE
        "\dA6EA",  # ; 5.0 ; ; 5 # Nl       BAMUM LETTER TEN
        "\dA8D5",  # ; 5.0 ; ; 5 # Nd       SAURASHTRA DIGIT FIVE
        "\dA905",  # ; 5.0 ; ; 5 # Nd       KAYAH LI DIGIT FIVE
        "\dA9D5",  # ; 5.0 ; ; 5 # Nd       JAVANESE DIGIT FIVE
        "\dA9F5",  # ; 5.0 ; ; 5 # Nd       MYANMAR TAI LAING DIGIT FIVE
        "\dAA55",  # ; 5.0 ; ; 5 # Nd       CHAM DIGIT FIVE
        "\dABF5",  # ; 5.0 ; ; 5 # Nd       MEETEI MAYEK DIGIT FIVE
        "\dFF15",  # ; 5.0 ; ; 5 # Nd       FULLWIDTH DIGIT FIVE
        "\d1010B",  # ; 5.0 ; ; 5 # No       AEGEAN NUMBER FIVE
        "\d10143",  # ; 5.0 ; ; 5 # Nl       GREEK ACROPHONIC ATTIC FIVE
        "\d10148",  # ; 5.0 ; ; 5 # Nl       GREEK ACROPHONIC ATTIC FIVE TALENTS
        "\d1014F",  # ; 5.0 ; ; 5 # Nl       GREEK ACROPHONIC ATTIC FIVE STATERS
        "\d1015F",  # ; 5.0 ; ; 5 # Nl       GREEK ACROPHONIC TROEZENIAN FIVE
        "\d10173",  # ; 5.0 ; ; 5 # Nl       GREEK ACROPHONIC DELPHIC FIVE MNAS
        "\d102E5",  # ; 5.0 ; ; 5 # No       COPTIC EPACT DIGIT FIVE
        "\d10321",  # ; 5.0 ; ; 5 # No       OLD ITALIC NUMERAL FIVE
        "\d104A5",  # ; 5.0 ; ; 5 # Nd       OSMANYA DIGIT FIVE
        "\d1087D",  # ; 5.0 ; ; 5 # No       PALMYRENE NUMBER FIVE
        "\d108AC",  # ; 5.0 ; ; 5 # No       NABATAEAN NUMBER FIVE
        "\d108FC",  # ; 5.0 ; ; 5 # No       HATRAN NUMBER FIVE
        "\d109C4",  # ; 5.0 ; ; 5 # No       MEROITIC CURSIVE NUMBER FIVE
        "\d10AEC",  # ; 5.0 ; ; 5 # No       MANICHAEAN NUMBER FIVE
        "\d10CFB",  # ; 5.0 ; ; 5 # No       OLD HUNGARIAN NUMBER FIVE
        "\d10E64",  # ; 5.0 ; ; 5 # No       RUMI DIGIT FIVE
        "\d11056",  # ; 5.0 ; ; 5 # No       BRAHMI NUMBER FIVE
        "\d1106B",  # ; 5.0 ; ; 5 # Nd       BRAHMI DIGIT FIVE
        "\d110F5",  # ; 5.0 ; ; 5 # Nd       SORA SOMPENG DIGIT FIVE
        "\d1113B",  # ; 5.0 ; ; 5 # Nd       CHAKMA DIGIT FIVE
        "\d111D5",  # ; 5.0 ; ; 5 # Nd       SHARADA DIGIT FIVE
        "\d111E5",  # ; 5.0 ; ; 5 # No       SINHALA ARCHAIC DIGIT FIVE
        "\d112F5",  # ; 5.0 ; ; 5 # Nd       KHUDAWADI DIGIT FIVE
        "\d11455",  # ; 5.0 ; ; 5 # Nd       NEWA DIGIT FIVE
        "\d114D5",  # ; 5.0 ; ; 5 # Nd       TIRHUTA DIGIT FIVE
        "\d11655",  # ; 5.0 ; ; 5 # Nd       MODI DIGIT FIVE
        "\d116C5",  # ; 5.0 ; ; 5 # Nd       TAKRI DIGIT FIVE
        "\d11735",  # ; 5.0 ; ; 5 # Nd       AHOM DIGIT FIVE
        "\d118E5",  # ; 5.0 ; ; 5 # Nd       WARANG CITI DIGIT FIVE
        "\d11C55",  # ; 5.0 ; ; 5 # Nd       BHAIKSUKI DIGIT FIVE
        "\d11C5E",  # ; 5.0 ; ; 5 # No       BHAIKSUKI NUMBER FIVE
        "\d11D55",  # ; 5.0 ; ; 5 # Nd       MASARAM GONDI DIGIT FIVE
        "\d12403",  # ; 5.0 ; ; 5 # Nl       CUNEIFORM NUMERIC SIGN FIVE ASH
        "\d1240A",  # ; 5.0 ; ; 5 # Nl       CUNEIFORM NUMERIC SIGN FIVE DISH
        "\d12410",  # ; 5.0 ; ; 5 # Nl       CUNEIFORM NUMERIC SIGN FIVE U
        "\d12419",  # ; 5.0 ; ; 5 # Nl       CUNEIFORM NUMERIC SIGN FIVE GESH2
        "\d12422",  # ; 5.0 ; ; 5 # Nl       CUNEIFORM NUMERIC SIGN FIVE GESHU
        "\d12427",  # ; 5.0 ; ; 5 # Nl       CUNEIFORM NUMERIC SIGN FIVE SHAR2
        "\d12431",  # ; 5.0 ; ; 5 # Nl       CUNEIFORM NUMERIC SIGN FIVE SHARU
        "\d12439",  # ; 5.0 ; ; 5 # Nl       CUNEIFORM NUMERIC SIGN FIVE BURU
        "\d1244D",  # ; 5.0 ; ; 5 # Nl       CUNEIFORM NUMERIC SIGN FIVE ASH TENU
        "\d12454","\d12455",  # ; 5.0 ; ; 5 # Nl   [2] CUNEIFORM NUMERIC SIGN FIVE BAN2..CUNEIFORM NUMERIC SIGN FIVE BAN2 VARIANT FORM
        "\d1246A",  # ; 5.0 ; ; 5 # Nl       CUNEIFORM NUMERIC SIGN FIVE U VARIANT FORM
        "\d16A65",  # ; 5.0 ; ; 5 # Nd       MRO DIGIT FIVE
        "\d16B55",  # ; 5.0 ; ; 5 # Nd       PAHAWH HMONG DIGIT FIVE
        "\d1D364",  # ; 5.0 ; ; 5 # No       COUNTING ROD UNIT DIGIT FIVE
        "\d1D7D3",  # ; 5.0 ; ; 5 # Nd       MATHEMATICAL BOLD DIGIT FIVE
        "\d1D7DD",  # ; 5.0 ; ; 5 # Nd       MATHEMATICAL DOUBLE-STRUCK DIGIT FIVE
        "\d1D7E7",  # ; 5.0 ; ; 5 # Nd       MATHEMATICAL SANS-SERIF DIGIT FIVE
        "\d1D7F1",  # ; 5.0 ; ; 5 # Nd       MATHEMATICAL SANS-SERIF BOLD DIGIT FIVE
        "\d1D7FB",  # ; 5.0 ; ; 5 # Nd       MATHEMATICAL MONOSPACE DIGIT FIVE
        "\d1E8CB",  # ; 5.0 ; ; 5 # No       MENDE KIKAKUI DIGIT FIVE
        "\d1E955",  # ; 5.0 ; ; 5 # Nd       ADLAM DIGIT FIVE
        "\d1F106",  # ; 5.0 ; ; 5 # No       DIGIT FIVE COMMA
        "\d20121",  # ; 5.0 ; ; 5 # Lo       CJK UNIFIED IDEOGRAPH-20121
        "\d0F2F",  # ; 5.5 ; ; 11/2 # No       TIBETAN DIGIT HALF SIX
        "\d0036",  # ; 6.0 ; ; 6 # Nd       DIGIT SIX
        "\d0666",  # ; 6.0 ; ; 6 # Nd       ARABIC-INDIC DIGIT SIX
        "\d06F6",  # ; 6.0 ; ; 6 # Nd       EXTENDED ARABIC-INDIC DIGIT SIX
        "\d07C6",  # ; 6.0 ; ; 6 # Nd       NKO DIGIT SIX
        "\d096C",  # ; 6.0 ; ; 6 # Nd       DEVANAGARI DIGIT SIX
        "\d09EC",  # ; 6.0 ; ; 6 # Nd       BENGALI DIGIT SIX
        "\d0A6C",  # ; 6.0 ; ; 6 # Nd       GURMUKHI DIGIT SIX
        "\d0AEC",  # ; 6.0 ; ; 6 # Nd       GUJARATI DIGIT SIX
        "\d0B6C",  # ; 6.0 ; ; 6 # Nd       ORIYA DIGIT SIX
        "\d0BEC",  # ; 6.0 ; ; 6 # Nd       TAMIL DIGIT SIX
        "\d0C6C",  # ; 6.0 ; ; 6 # Nd       TELUGU DIGIT SIX
        "\d0CEC",  # ; 6.0 ; ; 6 # Nd       KANNADA DIGIT SIX
        "\d0D6C",  # ; 6.0 ; ; 6 # Nd       MALAYALAM DIGIT SIX
        "\d0DEC",  # ; 6.0 ; ; 6 # Nd       SINHALA LITH DIGIT SIX
        "\d0E56",  # ; 6.0 ; ; 6 # Nd       THAI DIGIT SIX
        "\d0ED6",  # ; 6.0 ; ; 6 # Nd       LAO DIGIT SIX
        "\d0F26",  # ; 6.0 ; ; 6 # Nd       TIBETAN DIGIT SIX
        "\d1046",  # ; 6.0 ; ; 6 # Nd       MYANMAR DIGIT SIX
        "\d1096",  # ; 6.0 ; ; 6 # Nd       MYANMAR SHAN DIGIT SIX
        "\d136E",  # ; 6.0 ; ; 6 # No       ETHIOPIC DIGIT SIX
        "\d17E6",  # ; 6.0 ; ; 6 # Nd       KHMER DIGIT SIX
        "\d17F6",  # ; 6.0 ; ; 6 # No       KHMER SYMBOL LEK ATTAK PRAM-MUOY
        "\d1816",  # ; 6.0 ; ; 6 # Nd       MONGOLIAN DIGIT SIX
        "\d194C",  # ; 6.0 ; ; 6 # Nd       LIMBU DIGIT SIX
        "\d19D6",  # ; 6.0 ; ; 6 # Nd       NEW TAI LUE DIGIT SIX
        "\d1A86",  # ; 6.0 ; ; 6 # Nd       TAI THAM HORA DIGIT SIX
        "\d1A96",  # ; 6.0 ; ; 6 # Nd       TAI THAM THAM DIGIT SIX
        "\d1B56",  # ; 6.0 ; ; 6 # Nd       BALINESE DIGIT SIX
        "\d1BB6",  # ; 6.0 ; ; 6 # Nd       SUNDANESE DIGIT SIX
        "\d1C46",  # ; 6.0 ; ; 6 # Nd       LEPCHA DIGIT SIX
        "\d1C56",  # ; 6.0 ; ; 6 # Nd       OL CHIKI DIGIT SIX
        "\d2076",  # ; 6.0 ; ; 6 # No       SUPERSCRIPT SIX
        "\d2086",  # ; 6.0 ; ; 6 # No       SUBSCRIPT SIX
        "\d2165",  # ; 6.0 ; ; 6 # Nl       ROMAN NUMERAL SIX
        "\d2175",  # ; 6.0 ; ; 6 # Nl       SMALL ROMAN NUMERAL SIX
        "\d2185",  # ; 6.0 ; ; 6 # Nl       ROMAN NUMERAL SIX LATE FORM
        "\d2465",  # ; 6.0 ; ; 6 # No       CIRCLED DIGIT SIX
        "\d2479",  # ; 6.0 ; ; 6 # No       PARENTHESIZED DIGIT SIX
        "\d248D",  # ; 6.0 ; ; 6 # No       DIGIT SIX FULL STOP
        "\d24FA",  # ; 6.0 ; ; 6 # No       DOUBLE CIRCLED DIGIT SIX
        "\d277B",  # ; 6.0 ; ; 6 # No       DINGBAT NEGATIVE CIRCLED DIGIT SIX
        "\d2785",  # ; 6.0 ; ; 6 # No       DINGBAT CIRCLED SANS-SERIF DIGIT SIX
        "\d278F",  # ; 6.0 ; ; 6 # No       DINGBAT NEGATIVE CIRCLED SANS-SERIF DIGIT SIX
        "\d3026",  # ; 6.0 ; ; 6 # Nl       HANGZHOU NUMERAL SIX
        "\d3225",  # ; 6.0 ; ; 6 # No       PARENTHESIZED IDEOGRAPH SIX
        "\d3285",  # ; 6.0 ; ; 6 # No       CIRCLED IDEOGRAPH SIX
        "\d516D",  # ; 6.0 ; ; 6 # Lo       CJK UNIFIED IDEOGRAPH-516D
        "\d9646",  # ; 6.0 ; ; 6 # Lo       CJK UNIFIED IDEOGRAPH-9646
        "\d9678",  # ; 6.0 ; ; 6 # Lo       CJK UNIFIED IDEOGRAPH-9678
        "\dA626",  # ; 6.0 ; ; 6 # Nd       VAI DIGIT SIX
        "\dA6EB",  # ; 6.0 ; ; 6 # Nl       BAMUM LETTER NTUU
        "\dA8D6",  # ; 6.0 ; ; 6 # Nd       SAURASHTRA DIGIT SIX
        "\dA906",  # ; 6.0 ; ; 6 # Nd       KAYAH LI DIGIT SIX
        "\dA9D6",  # ; 6.0 ; ; 6 # Nd       JAVANESE DIGIT SIX
        "\dA9F6",  # ; 6.0 ; ; 6 # Nd       MYANMAR TAI LAING DIGIT SIX
        "\dAA56",  # ; 6.0 ; ; 6 # Nd       CHAM DIGIT SIX
        "\dABF6",  # ; 6.0 ; ; 6 # Nd       MEETEI MAYEK DIGIT SIX
        "\dF9D1",  # ; 6.0 ; ; 6 # Lo       CJK COMPATIBILITY IDEOGRAPH-F9D1
        "\dF9D3",  # ; 6.0 ; ; 6 # Lo       CJK COMPATIBILITY IDEOGRAPH-F9D3
        "\dFF16",  # ; 6.0 ; ; 6 # Nd       FULLWIDTH DIGIT SIX
        "\d1010C",  # ; 6.0 ; ; 6 # No       AEGEAN NUMBER SIX
        "\d102E6",  # ; 6.0 ; ; 6 # No       COPTIC EPACT DIGIT SIX
        "\d104A6",  # ; 6.0 ; ; 6 # Nd       OSMANYA DIGIT SIX
        "\d109C5",  # ; 6.0 ; ; 6 # No       MEROITIC CURSIVE NUMBER SIX
        "\d10E65",  # ; 6.0 ; ; 6 # No       RUMI DIGIT SIX
        "\d11057",  # ; 6.0 ; ; 6 # No       BRAHMI NUMBER SIX
        "\d1106C",  # ; 6.0 ; ; 6 # Nd       BRAHMI DIGIT SIX
        "\d110F6",  # ; 6.0 ; ; 6 # Nd       SORA SOMPENG DIGIT SIX
        "\d1113C",  # ; 6.0 ; ; 6 # Nd       CHAKMA DIGIT SIX
        "\d111D6",  # ; 6.0 ; ; 6 # Nd       SHARADA DIGIT SIX
        "\d111E6",  # ; 6.0 ; ; 6 # No       SINHALA ARCHAIC DIGIT SIX
        "\d112F6",  # ; 6.0 ; ; 6 # Nd       KHUDAWADI DIGIT SIX
        "\d11456",  # ; 6.0 ; ; 6 # Nd       NEWA DIGIT SIX
        "\d114D6",  # ; 6.0 ; ; 6 # Nd       TIRHUTA DIGIT SIX
        "\d11656",  # ; 6.0 ; ; 6 # Nd       MODI DIGIT SIX
        "\d116C6",  # ; 6.0 ; ; 6 # Nd       TAKRI DIGIT SIX
        "\d11736",  # ; 6.0 ; ; 6 # Nd       AHOM DIGIT SIX
        "\d118E6",  # ; 6.0 ; ; 6 # Nd       WARANG CITI DIGIT SIX
        "\d11C56",  # ; 6.0 ; ; 6 # Nd       BHAIKSUKI DIGIT SIX
        "\d11C5F",  # ; 6.0 ; ; 6 # No       BHAIKSUKI NUMBER SIX
        "\d11D56",  # ; 6.0 ; ; 6 # Nd       MASARAM GONDI DIGIT SIX
        "\d12404",  # ; 6.0 ; ; 6 # Nl       CUNEIFORM NUMERIC SIGN SIX ASH
        "\d1240B",  # ; 6.0 ; ; 6 # Nl       CUNEIFORM NUMERIC SIGN SIX DISH
        "\d12411",  # ; 6.0 ; ; 6 # Nl       CUNEIFORM NUMERIC SIGN SIX U
        "\d1241A",  # ; 6.0 ; ; 6 # Nl       CUNEIFORM NUMERIC SIGN SIX GESH2
        "\d12428",  # ; 6.0 ; ; 6 # Nl       CUNEIFORM NUMERIC SIGN SIX SHAR2
        "\d12440",  # ; 6.0 ; ; 6 # Nl       CUNEIFORM NUMERIC SIGN SIX VARIANT FORM ASH9
        "\d1244E",  # ; 6.0 ; ; 6 # Nl       CUNEIFORM NUMERIC SIGN SIX ASH TENU
        "\d1246B",  # ; 6.0 ; ; 6 # Nl       CUNEIFORM NUMERIC SIGN SIX U VARIANT FORM
        "\d16A66",  # ; 6.0 ; ; 6 # Nd       MRO DIGIT SIX
        "\d16B56",  # ; 6.0 ; ; 6 # Nd       PAHAWH HMONG DIGIT SIX
        "\d1D365",  # ; 6.0 ; ; 6 # No       COUNTING ROD UNIT DIGIT SIX
        "\d1D7D4",  # ; 6.0 ; ; 6 # Nd       MATHEMATICAL BOLD DIGIT SIX
        "\d1D7DE",  # ; 6.0 ; ; 6 # Nd       MATHEMATICAL DOUBLE-STRUCK DIGIT SIX
        "\d1D7E8",  # ; 6.0 ; ; 6 # Nd       MATHEMATICAL SANS-SERIF DIGIT SIX
        "\d1D7F2",  # ; 6.0 ; ; 6 # Nd       MATHEMATICAL SANS-SERIF BOLD DIGIT SIX
        "\d1D7FC",  # ; 6.0 ; ; 6 # Nd       MATHEMATICAL MONOSPACE DIGIT SIX
        "\d1E8CC",  # ; 6.0 ; ; 6 # No       MENDE KIKAKUI DIGIT SIX
        "\d1E956",  # ; 6.0 ; ; 6 # Nd       ADLAM DIGIT SIX
        "\d1F107",  # ; 6.0 ; ; 6 # No       DIGIT SIX COMMA
        "\d20AEA",  # ; 6.0 ; ; 6 # Lo       CJK UNIFIED IDEOGRAPH-20AEA
        "\d0F30",  # ; 6.5 ; ; 13/2 # No       TIBETAN DIGIT HALF SEVEN
        "\d0037",  # ; 7.0 ; ; 7 # Nd       DIGIT SEVEN
        "\d0667",  # ; 7.0 ; ; 7 # Nd       ARABIC-INDIC DIGIT SEVEN
        "\d06F7",  # ; 7.0 ; ; 7 # Nd       EXTENDED ARABIC-INDIC DIGIT SEVEN
        "\d07C7",  # ; 7.0 ; ; 7 # Nd       NKO DIGIT SEVEN
        "\d096D",  # ; 7.0 ; ; 7 # Nd       DEVANAGARI DIGIT SEVEN
        "\d09ED",  # ; 7.0 ; ; 7 # Nd       BENGALI DIGIT SEVEN
        "\d0A6D",  # ; 7.0 ; ; 7 # Nd       GURMUKHI DIGIT SEVEN
        "\d0AED",  # ; 7.0 ; ; 7 # Nd       GUJARATI DIGIT SEVEN
        "\d0B6D",  # ; 7.0 ; ; 7 # Nd       ORIYA DIGIT SEVEN
        "\d0BED",  # ; 7.0 ; ; 7 # Nd       TAMIL DIGIT SEVEN
        "\d0C6D",  # ; 7.0 ; ; 7 # Nd       TELUGU DIGIT SEVEN
        "\d0CED",  # ; 7.0 ; ; 7 # Nd       KANNADA DIGIT SEVEN
        "\d0D6D",  # ; 7.0 ; ; 7 # Nd       MALAYALAM DIGIT SEVEN
        "\d0DED",  # ; 7.0 ; ; 7 # Nd       SINHALA LITH DIGIT SEVEN
        "\d0E57",  # ; 7.0 ; ; 7 # Nd       THAI DIGIT SEVEN
        "\d0ED7",  # ; 7.0 ; ; 7 # Nd       LAO DIGIT SEVEN
        "\d0F27",  # ; 7.0 ; ; 7 # Nd       TIBETAN DIGIT SEVEN
        "\d1047",  # ; 7.0 ; ; 7 # Nd       MYANMAR DIGIT SEVEN
        "\d1097",  # ; 7.0 ; ; 7 # Nd       MYANMAR SHAN DIGIT SEVEN
        "\d136F",  # ; 7.0 ; ; 7 # No       ETHIOPIC DIGIT SEVEN
        "\d17E7",  # ; 7.0 ; ; 7 # Nd       KHMER DIGIT SEVEN
        "\d17F7",  # ; 7.0 ; ; 7 # No       KHMER SYMBOL LEK ATTAK PRAM-PII
        "\d1817",  # ; 7.0 ; ; 7 # Nd       MONGOLIAN DIGIT SEVEN
        "\d194D",  # ; 7.0 ; ; 7 # Nd       LIMBU DIGIT SEVEN
        "\d19D7",  # ; 7.0 ; ; 7 # Nd       NEW TAI LUE DIGIT SEVEN
        "\d1A87",  # ; 7.0 ; ; 7 # Nd       TAI THAM HORA DIGIT SEVEN
        "\d1A97",  # ; 7.0 ; ; 7 # Nd       TAI THAM THAM DIGIT SEVEN
        "\d1B57",  # ; 7.0 ; ; 7 # Nd       BALINESE DIGIT SEVEN
        "\d1BB7",  # ; 7.0 ; ; 7 # Nd       SUNDANESE DIGIT SEVEN
        "\d1C47",  # ; 7.0 ; ; 7 # Nd       LEPCHA DIGIT SEVEN
        "\d1C57",  # ; 7.0 ; ; 7 # Nd       OL CHIKI DIGIT SEVEN
        "\d2077",  # ; 7.0 ; ; 7 # No       SUPERSCRIPT SEVEN
        "\d2087",  # ; 7.0 ; ; 7 # No       SUBSCRIPT SEVEN
        "\d2166",  # ; 7.0 ; ; 7 # Nl       ROMAN NUMERAL SEVEN
        "\d2176",  # ; 7.0 ; ; 7 # Nl       SMALL ROMAN NUMERAL SEVEN
        "\d2466",  # ; 7.0 ; ; 7 # No       CIRCLED DIGIT SEVEN
        "\d247A",  # ; 7.0 ; ; 7 # No       PARENTHESIZED DIGIT SEVEN
        "\d248E",  # ; 7.0 ; ; 7 # No       DIGIT SEVEN FULL STOP
        "\d24FB",  # ; 7.0 ; ; 7 # No       DOUBLE CIRCLED DIGIT SEVEN
        "\d277C",  # ; 7.0 ; ; 7 # No       DINGBAT NEGATIVE CIRCLED DIGIT SEVEN
        "\d2786",  # ; 7.0 ; ; 7 # No       DINGBAT CIRCLED SANS-SERIF DIGIT SEVEN
        "\d2790",  # ; 7.0 ; ; 7 # No       DINGBAT NEGATIVE CIRCLED SANS-SERIF DIGIT SEVEN
        "\d3027",  # ; 7.0 ; ; 7 # Nl       HANGZHOU NUMERAL SEVEN
        "\d3226",  # ; 7.0 ; ; 7 # No       PARENTHESIZED IDEOGRAPH SEVEN
        "\d3286",  # ; 7.0 ; ; 7 # No       CIRCLED IDEOGRAPH SEVEN
        "\d3B4D",  # ; 7.0 ; ; 7 # Lo       CJK UNIFIED IDEOGRAPH-3B4D
        "\d4E03",  # ; 7.0 ; ; 7 # Lo       CJK UNIFIED IDEOGRAPH-4E03
        "\d67D2",  # ; 7.0 ; ; 7 # Lo       CJK UNIFIED IDEOGRAPH-67D2
        "\d6F06",  # ; 7.0 ; ; 7 # Lo       CJK UNIFIED IDEOGRAPH-6F06
        "\dA627",  # ; 7.0 ; ; 7 # Nd       VAI DIGIT SEVEN
        "\dA6EC",  # ; 7.0 ; ; 7 # Nl       BAMUM LETTER SAMBA
        "\dA8D7",  # ; 7.0 ; ; 7 # Nd       SAURASHTRA DIGIT SEVEN
        "\dA907",  # ; 7.0 ; ; 7 # Nd       KAYAH LI DIGIT SEVEN
        "\dA9D7",  # ; 7.0 ; ; 7 # Nd       JAVANESE DIGIT SEVEN
        "\dA9F7",  # ; 7.0 ; ; 7 # Nd       MYANMAR TAI LAING DIGIT SEVEN
        "\dAA57",  # ; 7.0 ; ; 7 # Nd       CHAM DIGIT SEVEN
        "\dABF7",  # ; 7.0 ; ; 7 # Nd       MEETEI MAYEK DIGIT SEVEN
        "\dFF17",  # ; 7.0 ; ; 7 # Nd       FULLWIDTH DIGIT SEVEN
        "\d1010D",  # ; 7.0 ; ; 7 # No       AEGEAN NUMBER SEVEN
        "\d102E7",  # ; 7.0 ; ; 7 # No       COPTIC EPACT DIGIT SEVEN
        "\d104A7",  # ; 7.0 ; ; 7 # Nd       OSMANYA DIGIT SEVEN
        "\d109C6",  # ; 7.0 ; ; 7 # No       MEROITIC CURSIVE NUMBER SEVEN
        "\d10E66",  # ; 7.0 ; ; 7 # No       RUMI DIGIT SEVEN
        "\d11058",  # ; 7.0 ; ; 7 # No       BRAHMI NUMBER SEVEN
        "\d1106D",  # ; 7.0 ; ; 7 # Nd       BRAHMI DIGIT SEVEN
        "\d110F7",  # ; 7.0 ; ; 7 # Nd       SORA SOMPENG DIGIT SEVEN
        "\d1113D",  # ; 7.0 ; ; 7 # Nd       CHAKMA DIGIT SEVEN
        "\d111D7",  # ; 7.0 ; ; 7 # Nd       SHARADA DIGIT SEVEN
        "\d111E7",  # ; 7.0 ; ; 7 # No       SINHALA ARCHAIC DIGIT SEVEN
        "\d112F7",  # ; 7.0 ; ; 7 # Nd       KHUDAWADI DIGIT SEVEN
        "\d11457",  # ; 7.0 ; ; 7 # Nd       NEWA DIGIT SEVEN
        "\d114D7",  # ; 7.0 ; ; 7 # Nd       TIRHUTA DIGIT SEVEN
        "\d11657",  # ; 7.0 ; ; 7 # Nd       MODI DIGIT SEVEN
        "\d116C7",  # ; 7.0 ; ; 7 # Nd       TAKRI DIGIT SEVEN
        "\d11737",  # ; 7.0 ; ; 7 # Nd       AHOM DIGIT SEVEN
        "\d118E7",  # ; 7.0 ; ; 7 # Nd       WARANG CITI DIGIT SEVEN
        "\d11C57",  # ; 7.0 ; ; 7 # Nd       BHAIKSUKI DIGIT SEVEN
        "\d11C60",  # ; 7.0 ; ; 7 # No       BHAIKSUKI NUMBER SEVEN
        "\d11D57",  # ; 7.0 ; ; 7 # Nd       MASARAM GONDI DIGIT SEVEN
        "\d12405",  # ; 7.0 ; ; 7 # Nl       CUNEIFORM NUMERIC SIGN SEVEN ASH
        "\d1240C",  # ; 7.0 ; ; 7 # Nl       CUNEIFORM NUMERIC SIGN SEVEN DISH
        "\d12412",  # ; 7.0 ; ; 7 # Nl       CUNEIFORM NUMERIC SIGN SEVEN U
        "\d1241B",  # ; 7.0 ; ; 7 # Nl       CUNEIFORM NUMERIC SIGN SEVEN GESH2
        "\d12429",  # ; 7.0 ; ; 7 # Nl       CUNEIFORM NUMERIC SIGN SEVEN SHAR2
        "\d12441","\d12442","\d12443",  # ; 7.0 ; ; 7 # Nl   [3] CUNEIFORM NUMERIC SIGN SEVEN VARIANT FORM IMIN3..CUNEIFORM NUMERIC SIGN SEVEN VARIANT FORM IMIN B
        "\d1246C",  # ; 7.0 ; ; 7 # Nl       CUNEIFORM NUMERIC SIGN SEVEN U VARIANT FORM
        "\d16A67",  # ; 7.0 ; ; 7 # Nd       MRO DIGIT SEVEN
        "\d16B57",  # ; 7.0 ; ; 7 # Nd       PAHAWH HMONG DIGIT SEVEN
        "\d1D366",  # ; 7.0 ; ; 7 # No       COUNTING ROD UNIT DIGIT SEVEN
        "\d1D7D5",  # ; 7.0 ; ; 7 # Nd       MATHEMATICAL BOLD DIGIT SEVEN
        "\d1D7DF",  # ; 7.0 ; ; 7 # Nd       MATHEMATICAL DOUBLE-STRUCK DIGIT SEVEN
        "\d1D7E9",  # ; 7.0 ; ; 7 # Nd       MATHEMATICAL SANS-SERIF DIGIT SEVEN
        "\d1D7F3",  # ; 7.0 ; ; 7 # Nd       MATHEMATICAL SANS-SERIF BOLD DIGIT SEVEN
        "\d1D7FD",  # ; 7.0 ; ; 7 # Nd       MATHEMATICAL MONOSPACE DIGIT SEVEN
        "\d1E8CD",  # ; 7.0 ; ; 7 # No       MENDE KIKAKUI DIGIT SEVEN
        "\d1E957",  # ; 7.0 ; ; 7 # Nd       ADLAM DIGIT SEVEN
        "\d1F108",  # ; 7.0 ; ; 7 # No       DIGIT SEVEN COMMA
        "\d20001",  # ; 7.0 ; ; 7 # Lo       CJK UNIFIED IDEOGRAPH-20001
        "\d0F31",  # ; 7.5 ; ; 15/2 # No       TIBETAN DIGIT HALF EIGHT
        "\d0038",  # ; 8.0 ; ; 8 # Nd       DIGIT EIGHT
        "\d0668",  # ; 8.0 ; ; 8 # Nd       ARABIC-INDIC DIGIT EIGHT
        "\d06F8",  # ; 8.0 ; ; 8 # Nd       EXTENDED ARABIC-INDIC DIGIT EIGHT
        "\d07C8",  # ; 8.0 ; ; 8 # Nd       NKO DIGIT EIGHT
        "\d096E",  # ; 8.0 ; ; 8 # Nd       DEVANAGARI DIGIT EIGHT
        "\d09EE",  # ; 8.0 ; ; 8 # Nd       BENGALI DIGIT EIGHT
        "\d0A6E",  # ; 8.0 ; ; 8 # Nd       GURMUKHI DIGIT EIGHT
        "\d0AEE",  # ; 8.0 ; ; 8 # Nd       GUJARATI DIGIT EIGHT
        "\d0B6E",  # ; 8.0 ; ; 8 # Nd       ORIYA DIGIT EIGHT
        "\d0BEE",  # ; 8.0 ; ; 8 # Nd       TAMIL DIGIT EIGHT
        "\d0C6E",  # ; 8.0 ; ; 8 # Nd       TELUGU DIGIT EIGHT
        "\d0CEE",  # ; 8.0 ; ; 8 # Nd       KANNADA DIGIT EIGHT
        "\d0D6E",  # ; 8.0 ; ; 8 # Nd       MALAYALAM DIGIT EIGHT
        "\d0DEE",  # ; 8.0 ; ; 8 # Nd       SINHALA LITH DIGIT EIGHT
        "\d0E58",  # ; 8.0 ; ; 8 # Nd       THAI DIGIT EIGHT
        "\d0ED8",  # ; 8.0 ; ; 8 # Nd       LAO DIGIT EIGHT
        "\d0F28",  # ; 8.0 ; ; 8 # Nd       TIBETAN DIGIT EIGHT
        "\d1048",  # ; 8.0 ; ; 8 # Nd       MYANMAR DIGIT EIGHT
        "\d1098",  # ; 8.0 ; ; 8 # Nd       MYANMAR SHAN DIGIT EIGHT
        "\d1370",  # ; 8.0 ; ; 8 # No       ETHIOPIC DIGIT EIGHT
        "\d17E8",  # ; 8.0 ; ; 8 # Nd       KHMER DIGIT EIGHT
        "\d17F8",  # ; 8.0 ; ; 8 # No       KHMER SYMBOL LEK ATTAK PRAM-BEI
        "\d1818",  # ; 8.0 ; ; 8 # Nd       MONGOLIAN DIGIT EIGHT
        "\d194E",  # ; 8.0 ; ; 8 # Nd       LIMBU DIGIT EIGHT
        "\d19D8",  # ; 8.0 ; ; 8 # Nd       NEW TAI LUE DIGIT EIGHT
        "\d1A88",  # ; 8.0 ; ; 8 # Nd       TAI THAM HORA DIGIT EIGHT
        "\d1A98",  # ; 8.0 ; ; 8 # Nd       TAI THAM THAM DIGIT EIGHT
        "\d1B58",  # ; 8.0 ; ; 8 # Nd       BALINESE DIGIT EIGHT
        "\d1BB8",  # ; 8.0 ; ; 8 # Nd       SUNDANESE DIGIT EIGHT
        "\d1C48",  # ; 8.0 ; ; 8 # Nd       LEPCHA DIGIT EIGHT
        "\d1C58",  # ; 8.0 ; ; 8 # Nd       OL CHIKI DIGIT EIGHT
        "\d2078",  # ; 8.0 ; ; 8 # No       SUPERSCRIPT EIGHT
        "\d2088",  # ; 8.0 ; ; 8 # No       SUBSCRIPT EIGHT
        "\d2167",  # ; 8.0 ; ; 8 # Nl       ROMAN NUMERAL EIGHT
        "\d2177",  # ; 8.0 ; ; 8 # Nl       SMALL ROMAN NUMERAL EIGHT
        "\d2467",  # ; 8.0 ; ; 8 # No       CIRCLED DIGIT EIGHT
        "\d247B",  # ; 8.0 ; ; 8 # No       PARENTHESIZED DIGIT EIGHT
        "\d248F",  # ; 8.0 ; ; 8 # No       DIGIT EIGHT FULL STOP
        "\d24FC",  # ; 8.0 ; ; 8 # No       DOUBLE CIRCLED DIGIT EIGHT
        "\d277D",  # ; 8.0 ; ; 8 # No       DINGBAT NEGATIVE CIRCLED DIGIT EIGHT
        "\d2787",  # ; 8.0 ; ; 8 # No       DINGBAT CIRCLED SANS-SERIF DIGIT EIGHT
        "\d2791",  # ; 8.0 ; ; 8 # No       DINGBAT NEGATIVE CIRCLED SANS-SERIF DIGIT EIGHT
        "\d3028",  # ; 8.0 ; ; 8 # Nl       HANGZHOU NUMERAL EIGHT
        "\d3227",  # ; 8.0 ; ; 8 # No       PARENTHESIZED IDEOGRAPH EIGHT
        "\d3287",  # ; 8.0 ; ; 8 # No       CIRCLED IDEOGRAPH EIGHT
        "\d516B",  # ; 8.0 ; ; 8 # Lo       CJK UNIFIED IDEOGRAPH-516B
        "\d634C",  # ; 8.0 ; ; 8 # Lo       CJK UNIFIED IDEOGRAPH-634C
        "\dA628",  # ; 8.0 ; ; 8 # Nd       VAI DIGIT EIGHT
        "\dA6ED",  # ; 8.0 ; ; 8 # Nl       BAMUM LETTER FAAMAE
        "\dA8D8",  # ; 8.0 ; ; 8 # Nd       SAURASHTRA DIGIT EIGHT
        "\dA908",  # ; 8.0 ; ; 8 # Nd       KAYAH LI DIGIT EIGHT
        "\dA9D8",  # ; 8.0 ; ; 8 # Nd       JAVANESE DIGIT EIGHT
        "\dA9F8",  # ; 8.0 ; ; 8 # Nd       MYANMAR TAI LAING DIGIT EIGHT
        "\dAA58",  # ; 8.0 ; ; 8 # Nd       CHAM DIGIT EIGHT
        "\dABF8",  # ; 8.0 ; ; 8 # Nd       MEETEI MAYEK DIGIT EIGHT
        "\dFF18",  # ; 8.0 ; ; 8 # Nd       FULLWIDTH DIGIT EIGHT
        "\d1010E",  # ; 8.0 ; ; 8 # No       AEGEAN NUMBER EIGHT
        "\d102E8",  # ; 8.0 ; ; 8 # No       COPTIC EPACT DIGIT EIGHT
        "\d104A8",  # ; 8.0 ; ; 8 # Nd       OSMANYA DIGIT EIGHT
        "\d109C7",  # ; 8.0 ; ; 8 # No       MEROITIC CURSIVE NUMBER EIGHT
        "\d10E67",  # ; 8.0 ; ; 8 # No       RUMI DIGIT EIGHT
        "\d11059",  # ; 8.0 ; ; 8 # No       BRAHMI NUMBER EIGHT
        "\d1106E",  # ; 8.0 ; ; 8 # Nd       BRAHMI DIGIT EIGHT
        "\d110F8",  # ; 8.0 ; ; 8 # Nd       SORA SOMPENG DIGIT EIGHT
        "\d1113E",  # ; 8.0 ; ; 8 # Nd       CHAKMA DIGIT EIGHT
        "\d111D8",  # ; 8.0 ; ; 8 # Nd       SHARADA DIGIT EIGHT
        "\d111E8",  # ; 8.0 ; ; 8 # No       SINHALA ARCHAIC DIGIT EIGHT
        "\d112F8",  # ; 8.0 ; ; 8 # Nd       KHUDAWADI DIGIT EIGHT
        "\d11458",  # ; 8.0 ; ; 8 # Nd       NEWA DIGIT EIGHT
        "\d114D8",  # ; 8.0 ; ; 8 # Nd       TIRHUTA DIGIT EIGHT
        "\d11658",  # ; 8.0 ; ; 8 # Nd       MODI DIGIT EIGHT
        "\d116C8",  # ; 8.0 ; ; 8 # Nd       TAKRI DIGIT EIGHT
        "\d11738",  # ; 8.0 ; ; 8 # Nd       AHOM DIGIT EIGHT
        "\d118E8",  # ; 8.0 ; ; 8 # Nd       WARANG CITI DIGIT EIGHT
        "\d11C58",  # ; 8.0 ; ; 8 # Nd       BHAIKSUKI DIGIT EIGHT
        "\d11C61",  # ; 8.0 ; ; 8 # No       BHAIKSUKI NUMBER EIGHT
        "\d11D58",  # ; 8.0 ; ; 8 # Nd       MASARAM GONDI DIGIT EIGHT
        "\d12406",  # ; 8.0 ; ; 8 # Nl       CUNEIFORM NUMERIC SIGN EIGHT ASH
        "\d1240D",  # ; 8.0 ; ; 8 # Nl       CUNEIFORM NUMERIC SIGN EIGHT DISH
        "\d12413",  # ; 8.0 ; ; 8 # Nl       CUNEIFORM NUMERIC SIGN EIGHT U
        "\d1241C",  # ; 8.0 ; ; 8 # Nl       CUNEIFORM NUMERIC SIGN EIGHT GESH2
        "\d1242A",  # ; 8.0 ; ; 8 # Nl       CUNEIFORM NUMERIC SIGN EIGHT SHAR2
        "\d12444","\d12445",  # ; 8.0 ; ; 8 # Nl   [2] CUNEIFORM NUMERIC SIGN EIGHT VARIANT FORM USSU..CUNEIFORM NUMERIC SIGN EIGHT VARIANT FORM USSU3
        "\d1246D",  # ; 8.0 ; ; 8 # Nl       CUNEIFORM NUMERIC SIGN EIGHT U VARIANT FORM
        "\d16A68",  # ; 8.0 ; ; 8 # Nd       MRO DIGIT EIGHT
        "\d16B58",  # ; 8.0 ; ; 8 # Nd       PAHAWH HMONG DIGIT EIGHT
        "\d1D367",  # ; 8.0 ; ; 8 # No       COUNTING ROD UNIT DIGIT EIGHT
        "\d1D7D6",  # ; 8.0 ; ; 8 # Nd       MATHEMATICAL BOLD DIGIT EIGHT
        "\d1D7E0",  # ; 8.0 ; ; 8 # Nd       MATHEMATICAL DOUBLE-STRUCK DIGIT EIGHT
        "\d1D7EA",  # ; 8.0 ; ; 8 # Nd       MATHEMATICAL SANS-SERIF DIGIT EIGHT
        "\d1D7F4",  # ; 8.0 ; ; 8 # Nd       MATHEMATICAL SANS-SERIF BOLD DIGIT EIGHT
        "\d1D7FE",  # ; 8.0 ; ; 8 # Nd       MATHEMATICAL MONOSPACE DIGIT EIGHT
        "\d1E8CE",  # ; 8.0 ; ; 8 # No       MENDE KIKAKUI DIGIT EIGHT
        "\d1E958",  # ; 8.0 ; ; 8 # Nd       ADLAM DIGIT EIGHT
        "\d1F109",  # ; 8.0 ; ; 8 # No       DIGIT EIGHT COMMA
        "\d0F32",  # ; 8.5 ; ; 17/2 # No       TIBETAN DIGIT HALF NINE
        "\d0039",  # ; 9.0 ; ; 9 # Nd       DIGIT NINE
        "\d0669",  # ; 9.0 ; ; 9 # Nd       ARABIC-INDIC DIGIT NINE
        "\d06F9",  # ; 9.0 ; ; 9 # Nd       EXTENDED ARABIC-INDIC DIGIT NINE
        "\d07C9",  # ; 9.0 ; ; 9 # Nd       NKO DIGIT NINE
        "\d096F",  # ; 9.0 ; ; 9 # Nd       DEVANAGARI DIGIT NINE
        "\d09EF",  # ; 9.0 ; ; 9 # Nd       BENGALI DIGIT NINE
        "\d0A6F",  # ; 9.0 ; ; 9 # Nd       GURMUKHI DIGIT NINE
        "\d0AEF",  # ; 9.0 ; ; 9 # Nd       GUJARATI DIGIT NINE
        "\d0B6F",  # ; 9.0 ; ; 9 # Nd       ORIYA DIGIT NINE
        "\d0BEF",  # ; 9.0 ; ; 9 # Nd       TAMIL DIGIT NINE
        "\d0C6F",  # ; 9.0 ; ; 9 # Nd       TELUGU DIGIT NINE
        "\d0CEF",  # ; 9.0 ; ; 9 # Nd       KANNADA DIGIT NINE
        "\d0D6F",  # ; 9.0 ; ; 9 # Nd       MALAYALAM DIGIT NINE
        "\d0DEF",  # ; 9.0 ; ; 9 # Nd       SINHALA LITH DIGIT NINE
        "\d0E59",  # ; 9.0 ; ; 9 # Nd       THAI DIGIT NINE
        "\d0ED9",  # ; 9.0 ; ; 9 # Nd       LAO DIGIT NINE
        "\d0F29",  # ; 9.0 ; ; 9 # Nd       TIBETAN DIGIT NINE
        "\d1049",  # ; 9.0 ; ; 9 # Nd       MYANMAR DIGIT NINE
        "\d1099",  # ; 9.0 ; ; 9 # Nd       MYANMAR SHAN DIGIT NINE
        "\d1371",  # ; 9.0 ; ; 9 # No       ETHIOPIC DIGIT NINE
        "\d17E9",  # ; 9.0 ; ; 9 # Nd       KHMER DIGIT NINE
        "\d17F9",  # ; 9.0 ; ; 9 # No       KHMER SYMBOL LEK ATTAK PRAM-BUON
        "\d1819",  # ; 9.0 ; ; 9 # Nd       MONGOLIAN DIGIT NINE
        "\d194F",  # ; 9.0 ; ; 9 # Nd       LIMBU DIGIT NINE
        "\d19D9",  # ; 9.0 ; ; 9 # Nd       NEW TAI LUE DIGIT NINE
        "\d1A89",  # ; 9.0 ; ; 9 # Nd       TAI THAM HORA DIGIT NINE
        "\d1A99",  # ; 9.0 ; ; 9 # Nd       TAI THAM THAM DIGIT NINE
        "\d1B59",  # ; 9.0 ; ; 9 # Nd       BALINESE DIGIT NINE
        "\d1BB9",  # ; 9.0 ; ; 9 # Nd       SUNDANESE DIGIT NINE
        "\d1C49",  # ; 9.0 ; ; 9 # Nd       LEPCHA DIGIT NINE
        "\d1C59",  # ; 9.0 ; ; 9 # Nd       OL CHIKI DIGIT NINE
        "\d2079",  # ; 9.0 ; ; 9 # No       SUPERSCRIPT NINE
        "\d2089",  # ; 9.0 ; ; 9 # No       SUBSCRIPT NINE
        "\d2168",  # ; 9.0 ; ; 9 # Nl       ROMAN NUMERAL NINE
        "\d2178",  # ; 9.0 ; ; 9 # Nl       SMALL ROMAN NUMERAL NINE
        "\d2468",  # ; 9.0 ; ; 9 # No       CIRCLED DIGIT NINE
        "\d247C",  # ; 9.0 ; ; 9 # No       PARENTHESIZED DIGIT NINE
        "\d2490",  # ; 9.0 ; ; 9 # No       DIGIT NINE FULL STOP
        "\d24FD",  # ; 9.0 ; ; 9 # No       DOUBLE CIRCLED DIGIT NINE
        "\d277E",  # ; 9.0 ; ; 9 # No       DINGBAT NEGATIVE CIRCLED DIGIT NINE
        "\d2788",  # ; 9.0 ; ; 9 # No       DINGBAT CIRCLED SANS-SERIF DIGIT NINE
        "\d2792",  # ; 9.0 ; ; 9 # No       DINGBAT NEGATIVE CIRCLED SANS-SERIF DIGIT NINE
        "\d3029",  # ; 9.0 ; ; 9 # Nl       HANGZHOU NUMERAL NINE
        "\d3228",  # ; 9.0 ; ; 9 # No       PARENTHESIZED IDEOGRAPH NINE
        "\d3288",  # ; 9.0 ; ; 9 # No       CIRCLED IDEOGRAPH NINE
        "\d4E5D",  # ; 9.0 ; ; 9 # Lo       CJK UNIFIED IDEOGRAPH-4E5D
        "\d5EFE",  # ; 9.0 ; ; 9 # Lo       CJK UNIFIED IDEOGRAPH-5EFE
        "\d7396",  # ; 9.0 ; ; 9 # Lo       CJK UNIFIED IDEOGRAPH-7396
        "\dA629",  # ; 9.0 ; ; 9 # Nd       VAI DIGIT NINE
        "\dA6EE",  # ; 9.0 ; ; 9 # Nl       BAMUM LETTER KOVUU
        "\dA8D9",  # ; 9.0 ; ; 9 # Nd       SAURASHTRA DIGIT NINE
        "\dA909",  # ; 9.0 ; ; 9 # Nd       KAYAH LI DIGIT NINE
        "\dA9D9",  # ; 9.0 ; ; 9 # Nd       JAVANESE DIGIT NINE
        "\dA9F9",  # ; 9.0 ; ; 9 # Nd       MYANMAR TAI LAING DIGIT NINE
        "\dAA59",  # ; 9.0 ; ; 9 # Nd       CHAM DIGIT NINE
        "\dABF9",  # ; 9.0 ; ; 9 # Nd       MEETEI MAYEK DIGIT NINE
        "\dFF19",  # ; 9.0 ; ; 9 # Nd       FULLWIDTH DIGIT NINE
        "\d1010F",  # ; 9.0 ; ; 9 # No       AEGEAN NUMBER NINE
        "\d102E9",  # ; 9.0 ; ; 9 # No       COPTIC EPACT DIGIT NINE
        "\d104A9",  # ; 9.0 ; ; 9 # Nd       OSMANYA DIGIT NINE
        "\d109C8",  # ; 9.0 ; ; 9 # No       MEROITIC CURSIVE NUMBER NINE
        "\d10E68",  # ; 9.0 ; ; 9 # No       RUMI DIGIT NINE
        "\d1105A",  # ; 9.0 ; ; 9 # No       BRAHMI NUMBER NINE
        "\d1106F",  # ; 9.0 ; ; 9 # Nd       BRAHMI DIGIT NINE
        "\d110F9",  # ; 9.0 ; ; 9 # Nd       SORA SOMPENG DIGIT NINE
        "\d1113F",  # ; 9.0 ; ; 9 # Nd       CHAKMA DIGIT NINE
        "\d111D9",  # ; 9.0 ; ; 9 # Nd       SHARADA DIGIT NINE
        "\d111E9",  # ; 9.0 ; ; 9 # No       SINHALA ARCHAIC DIGIT NINE
        "\d112F9",  # ; 9.0 ; ; 9 # Nd       KHUDAWADI DIGIT NINE
        "\d11459",  # ; 9.0 ; ; 9 # Nd       NEWA DIGIT NINE
        "\d114D9",  # ; 9.0 ; ; 9 # Nd       TIRHUTA DIGIT NINE
        "\d11659",  # ; 9.0 ; ; 9 # Nd       MODI DIGIT NINE
        "\d116C9",  # ; 9.0 ; ; 9 # Nd       TAKRI DIGIT NINE
        "\d11739",  # ; 9.0 ; ; 9 # Nd       AHOM DIGIT NINE
        "\d118E9",  # ; 9.0 ; ; 9 # Nd       WARANG CITI DIGIT NINE
        "\d11C59",  # ; 9.0 ; ; 9 # Nd       BHAIKSUKI DIGIT NINE
        "\d11C62",  # ; 9.0 ; ; 9 # No       BHAIKSUKI NUMBER NINE
        "\d11D59",  # ; 9.0 ; ; 9 # Nd       MASARAM GONDI DIGIT NINE
        "\d12407",  # ; 9.0 ; ; 9 # Nl       CUNEIFORM NUMERIC SIGN NINE ASH
        "\d1240E",  # ; 9.0 ; ; 9 # Nl       CUNEIFORM NUMERIC SIGN NINE DISH
        "\d12414",  # ; 9.0 ; ; 9 # Nl       CUNEIFORM NUMERIC SIGN NINE U
        "\d1241D",  # ; 9.0 ; ; 9 # Nl       CUNEIFORM NUMERIC SIGN NINE GESH2
        "\d1242B",  # ; 9.0 ; ; 9 # Nl       CUNEIFORM NUMERIC SIGN NINE SHAR2
        "\d12446","\d12447","\d12448","\d12449",  # ; 9.0 ; ; 9 # Nl   [4] CUNEIFORM NUMERIC SIGN NINE VARIANT FORM ILIMMU..CUNEIFORM NUMERIC SIGN NINE VARIANT FORM ILIMMU A
        "\d1246E",  # ; 9.0 ; ; 9 # Nl       CUNEIFORM NUMERIC SIGN NINE U VARIANT FORM
        "\d16A69",  # ; 9.0 ; ; 9 # Nd       MRO DIGIT NINE
        "\d16B59",  # ; 9.0 ; ; 9 # Nd       PAHAWH HMONG DIGIT NINE
        "\d1D368",  # ; 9.0 ; ; 9 # No       COUNTING ROD UNIT DIGIT NINE
        "\d1D7D7",  # ; 9.0 ; ; 9 # Nd       MATHEMATICAL BOLD DIGIT NINE
        "\d1D7E1",  # ; 9.0 ; ; 9 # Nd       MATHEMATICAL DOUBLE-STRUCK DIGIT NINE
        "\d1D7EB",  # ; 9.0 ; ; 9 # Nd       MATHEMATICAL SANS-SERIF DIGIT NINE
        "\d1D7F5",  # ; 9.0 ; ; 9 # Nd       MATHEMATICAL SANS-SERIF BOLD DIGIT NINE
        "\d1D7FF",  # ; 9.0 ; ; 9 # Nd       MATHEMATICAL MONOSPACE DIGIT NINE
        "\d1E8CF",  # ; 9.0 ; ; 9 # No       MENDE KIKAKUI DIGIT NINE
        "\d1E959",  # ; 9.0 ; ; 9 # Nd       ADLAM DIGIT NINE
        "\d1F10A",  # ; 9.0 ; ; 9 # No       DIGIT NINE COMMA
        "\d2F890",  # ; 9.0 ; ; 9 # Lo       CJK COMPATIBILITY IDEOGRAPH-2F890
        "\d0BF0",  # ; 10.0 ; ; 10 # No       TAMIL NUMBER TEN
        "\d0D70",  # ; 10.0 ; ; 10 # No       MALAYALAM NUMBER TEN
        "\d1372",  # ; 10.0 ; ; 10 # No       ETHIOPIC NUMBER TEN
        "\d2169",  # ; 10.0 ; ; 10 # Nl       ROMAN NUMERAL TEN
        "\d2179",  # ; 10.0 ; ; 10 # Nl       SMALL ROMAN NUMERAL TEN
        "\d2469",  # ; 10.0 ; ; 10 # No       CIRCLED NUMBER TEN
        "\d247D",  # ; 10.0 ; ; 10 # No       PARENTHESIZED NUMBER TEN
        "\d2491",  # ; 10.0 ; ; 10 # No       NUMBER TEN FULL STOP
        "\d24FE",  # ; 10.0 ; ; 10 # No       DOUBLE CIRCLED NUMBER TEN
        "\d277F",  # ; 10.0 ; ; 10 # No       DINGBAT NEGATIVE CIRCLED NUMBER TEN
        "\d2789",  # ; 10.0 ; ; 10 # No       DINGBAT CIRCLED SANS-SERIF NUMBER TEN
        "\d2793",  # ; 10.0 ; ; 10 # No       DINGBAT NEGATIVE CIRCLED SANS-SERIF NUMBER TEN
        "\d3038",  # ; 10.0 ; ; 10 # Nl       HANGZHOU NUMERAL TEN
        "\d3229",  # ; 10.0 ; ; 10 # No       PARENTHESIZED IDEOGRAPH TEN
        "\d3248",  # ; 10.0 ; ; 10 # No       CIRCLED NUMBER TEN ON BLACK SQUARE
        "\d3289",  # ; 10.0 ; ; 10 # No       CIRCLED IDEOGRAPH TEN
        "\d4EC0",  # ; 10.0 ; ; 10 # Lo       CJK UNIFIED IDEOGRAPH-4EC0
        "\d5341",  # ; 10.0 ; ; 10 # Lo       CJK UNIFIED IDEOGRAPH-5341
        "\d62FE",  # ; 10.0 ; ; 10 # Lo       CJK UNIFIED IDEOGRAPH-62FE
        "\dF973",  # ; 10.0 ; ; 10 # Lo       CJK COMPATIBILITY IDEOGRAPH-F973
        "\dF9FD",  # ; 10.0 ; ; 10 # Lo       CJK COMPATIBILITY IDEOGRAPH-F9FD
        "\d10110",  # ; 10.0 ; ; 10 # No       AEGEAN NUMBER TEN
        "\d10149",  # ; 10.0 ; ; 10 # Nl       GREEK ACROPHONIC ATTIC TEN TALENTS
        "\d10150",  # ; 10.0 ; ; 10 # Nl       GREEK ACROPHONIC ATTIC TEN STATERS
        "\d10157",  # ; 10.0 ; ; 10 # Nl       GREEK ACROPHONIC ATTIC TEN MNAS
        "\d10160","\d10161","\d10162","\d10163","\d10164",  # ; 10.0 ; ; 10 # Nl   [5] GREEK ACROPHONIC TROEZENIAN TEN..GREEK ACROPHONIC THESPIAN TEN
        "\d102EA",  # ; 10.0 ; ; 10 # No       COPTIC EPACT NUMBER TEN
        "\d10322",  # ; 10.0 ; ; 10 # No       OLD ITALIC NUMERAL TEN
        "\d103D3",  # ; 10.0 ; ; 10 # Nl       OLD PERSIAN NUMBER TEN
        "\d1085B",  # ; 10.0 ; ; 10 # No       IMPERIAL ARAMAIC NUMBER TEN
        "\d1087E",  # ; 10.0 ; ; 10 # No       PALMYRENE NUMBER TEN
        "\d108AD",  # ; 10.0 ; ; 10 # No       NABATAEAN NUMBER TEN
        "\d108FD",  # ; 10.0 ; ; 10 # No       HATRAN NUMBER TEN
        "\d10917",  # ; 10.0 ; ; 10 # No       PHOENICIAN NUMBER TEN
        "\d109C9",  # ; 10.0 ; ; 10 # No       MEROITIC CURSIVE NUMBER TEN
        "\d10A44",  # ; 10.0 ; ; 10 # No       KHAROSHTHI NUMBER TEN
        "\d10A9E",  # ; 10.0 ; ; 10 # No       OLD NORTH ARABIAN NUMBER TEN
        "\d10AED",  # ; 10.0 ; ; 10 # No       MANICHAEAN NUMBER TEN
        "\d10B5C",  # ; 10.0 ; ; 10 # No       INSCRIPTIONAL PARTHIAN NUMBER TEN
        "\d10B7C",  # ; 10.0 ; ; 10 # No       INSCRIPTIONAL PAHLAVI NUMBER TEN
        "\d10BAD",  # ; 10.0 ; ; 10 # No       PSALTER PAHLAVI NUMBER TEN
        "\d10CFC",  # ; 10.0 ; ; 10 # No       OLD HUNGARIAN NUMBER TEN
        "\d10E69",  # ; 10.0 ; ; 10 # No       RUMI NUMBER TEN
        "\d1105B",  # ; 10.0 ; ; 10 # No       BRAHMI NUMBER TEN
        "\d111EA",  # ; 10.0 ; ; 10 # No       SINHALA ARCHAIC NUMBER TEN
        "\d1173A",  # ; 10.0 ; ; 10 # No       AHOM NUMBER TEN
        "\d118EA",  # ; 10.0 ; ; 10 # No       WARANG CITI NUMBER TEN
        "\d11C63",  # ; 10.0 ; ; 10 # No       BHAIKSUKI NUMBER TEN
        "\d16B5B",  # ; 10.0 ; ; 10 # No       PAHAWH HMONG NUMBER TENS
        "\d1D369",  # ; 10.0 ; ; 10 # No       COUNTING ROD TENS DIGIT ONE
        "\d216A",  # ; 11.0 ; ; 11 # Nl       ROMAN NUMERAL ELEVEN
        "\d217A",  # ; 11.0 ; ; 11 # Nl       SMALL ROMAN NUMERAL ELEVEN
        "\d246A",  # ; 11.0 ; ; 11 # No       CIRCLED NUMBER ELEVEN
        "\d247E",  # ; 11.0 ; ; 11 # No       PARENTHESIZED NUMBER ELEVEN
        "\d2492",  # ; 11.0 ; ; 11 # No       NUMBER ELEVEN FULL STOP
        "\d24EB",  # ; 11.0 ; ; 11 # No       NEGATIVE CIRCLED NUMBER ELEVEN
        "\d216B",  # ; 12.0 ; ; 12 # Nl       ROMAN NUMERAL TWELVE
        "\d217B",  # ; 12.0 ; ; 12 # Nl       SMALL ROMAN NUMERAL TWELVE
        "\d246B",  # ; 12.0 ; ; 12 # No       CIRCLED NUMBER TWELVE
        "\d247F",  # ; 12.0 ; ; 12 # No       PARENTHESIZED NUMBER TWELVE
        "\d2493",  # ; 12.0 ; ; 12 # No       NUMBER TWELVE FULL STOP
        "\d24EC",  # ; 12.0 ; ; 12 # No       NEGATIVE CIRCLED NUMBER TWELVE
        "\d246C",  # ; 13.0 ; ; 13 # No       CIRCLED NUMBER THIRTEEN
        "\d2480",  # ; 13.0 ; ; 13 # No       PARENTHESIZED NUMBER THIRTEEN
        "\d2494",  # ; 13.0 ; ; 13 # No       NUMBER THIRTEEN FULL STOP
        "\d24ED",  # ; 13.0 ; ; 13 # No       NEGATIVE CIRCLED NUMBER THIRTEEN
        "\d246D",  # ; 14.0 ; ; 14 # No       CIRCLED NUMBER FOURTEEN
        "\d2481",  # ; 14.0 ; ; 14 # No       PARENTHESIZED NUMBER FOURTEEN
        "\d2495",  # ; 14.0 ; ; 14 # No       NUMBER FOURTEEN FULL STOP
        "\d24EE",  # ; 14.0 ; ; 14 # No       NEGATIVE CIRCLED NUMBER FOURTEEN
        "\d246E",  # ; 15.0 ; ; 15 # No       CIRCLED NUMBER FIFTEEN
        "\d2482",  # ; 15.0 ; ; 15 # No       PARENTHESIZED NUMBER FIFTEEN
        "\d2496",  # ; 15.0 ; ; 15 # No       NUMBER FIFTEEN FULL STOP
        "\d24EF",  # ; 15.0 ; ; 15 # No       NEGATIVE CIRCLED NUMBER FIFTEEN
        "\d09F9",  # ; 16.0 ; ; 16 # No       BENGALI CURRENCY DENOMINATOR SIXTEEN
        "\d246F",  # ; 16.0 ; ; 16 # No       CIRCLED NUMBER SIXTEEN
        "\d2483",  # ; 16.0 ; ; 16 # No       PARENTHESIZED NUMBER SIXTEEN
        "\d2497",  # ; 16.0 ; ; 16 # No       NUMBER SIXTEEN FULL STOP
        "\d24F0",  # ; 16.0 ; ; 16 # No       NEGATIVE CIRCLED NUMBER SIXTEEN
        "\d16EE",  # ; 17.0 ; ; 17 # Nl       RUNIC ARLAUG SYMBOL
        "\d2470",  # ; 17.0 ; ; 17 # No       CIRCLED NUMBER SEVENTEEN
        "\d2484",  # ; 17.0 ; ; 17 # No       PARENTHESIZED NUMBER SEVENTEEN
        "\d2498",  # ; 17.0 ; ; 17 # No       NUMBER SEVENTEEN FULL STOP
        "\d24F1",  # ; 17.0 ; ; 17 # No       NEGATIVE CIRCLED NUMBER SEVENTEEN
        "\d16EF",  # ; 18.0 ; ; 18 # Nl       RUNIC TVIMADUR SYMBOL
        "\d2471",  # ; 18.0 ; ; 18 # No       CIRCLED NUMBER EIGHTEEN
        "\d2485",  # ; 18.0 ; ; 18 # No       PARENTHESIZED NUMBER EIGHTEEN
        "\d2499",  # ; 18.0 ; ; 18 # No       NUMBER EIGHTEEN FULL STOP
        "\d24F2",  # ; 18.0 ; ; 18 # No       NEGATIVE CIRCLED NUMBER EIGHTEEN
        "\d16F0",  # ; 19.0 ; ; 19 # Nl       RUNIC BELGTHOR SYMBOL
        "\d2472",  # ; 19.0 ; ; 19 # No       CIRCLED NUMBER NINETEEN
        "\d2486",  # ; 19.0 ; ; 19 # No       PARENTHESIZED NUMBER NINETEEN
        "\d249A",  # ; 19.0 ; ; 19 # No       NUMBER NINETEEN FULL STOP
        "\d24F3",  # ; 19.0 ; ; 19 # No       NEGATIVE CIRCLED NUMBER NINETEEN
        "\d1373",  # ; 20.0 ; ; 20 # No       ETHIOPIC NUMBER TWENTY
        "\d2473",  # ; 20.0 ; ; 20 # No       CIRCLED NUMBER TWENTY
        "\d2487",  # ; 20.0 ; ; 20 # No       PARENTHESIZED NUMBER TWENTY
        "\d249B",  # ; 20.0 ; ; 20 # No       NUMBER TWENTY FULL STOP
        "\d24F4",  # ; 20.0 ; ; 20 # No       NEGATIVE CIRCLED NUMBER TWENTY
        "\d3039",  # ; 20.0 ; ; 20 # Nl       HANGZHOU NUMERAL TWENTY
        "\d3249",  # ; 20.0 ; ; 20 # No       CIRCLED NUMBER TWENTY ON BLACK SQUARE
        "\d5344",  # ; 20.0 ; ; 20 # Lo       CJK UNIFIED IDEOGRAPH-5344
        "\d5EFF",  # ; 20.0 ; ; 20 # Lo       CJK UNIFIED IDEOGRAPH-5EFF
        "\d10111",  # ; 20.0 ; ; 20 # No       AEGEAN NUMBER TWENTY
        "\d102EB",  # ; 20.0 ; ; 20 # No       COPTIC EPACT NUMBER TWENTY
        "\d103D4",  # ; 20.0 ; ; 20 # Nl       OLD PERSIAN NUMBER TWENTY
        "\d1085C",  # ; 20.0 ; ; 20 # No       IMPERIAL ARAMAIC NUMBER TWENTY
        "\d1087F",  # ; 20.0 ; ; 20 # No       PALMYRENE NUMBER TWENTY
        "\d108AE",  # ; 20.0 ; ; 20 # No       NABATAEAN NUMBER TWENTY
        "\d108FE",  # ; 20.0 ; ; 20 # No       HATRAN NUMBER TWENTY
        "\d10918",  # ; 20.0 ; ; 20 # No       PHOENICIAN NUMBER TWENTY
        "\d109CA",  # ; 20.0 ; ; 20 # No       MEROITIC CURSIVE NUMBER TWENTY
        "\d10A45",  # ; 20.0 ; ; 20 # No       KHAROSHTHI NUMBER TWENTY
        "\d10A9F",  # ; 20.0 ; ; 20 # No       OLD NORTH ARABIAN NUMBER TWENTY
        "\d10AEE",  # ; 20.0 ; ; 20 # No       MANICHAEAN NUMBER TWENTY
        "\d10B5D",  # ; 20.0 ; ; 20 # No       INSCRIPTIONAL PARTHIAN NUMBER TWENTY
        "\d10B7D",  # ; 20.0 ; ; 20 # No       INSCRIPTIONAL PAHLAVI NUMBER TWENTY
        "\d10BAE",  # ; 20.0 ; ; 20 # No       PSALTER PAHLAVI NUMBER TWENTY
        "\d10E6A",  # ; 20.0 ; ; 20 # No       RUMI NUMBER TWENTY
        "\d1105C",  # ; 20.0 ; ; 20 # No       BRAHMI NUMBER TWENTY
        "\d111EB",  # ; 20.0 ; ; 20 # No       SINHALA ARCHAIC NUMBER TWENTY
        "\d1173B",  # ; 20.0 ; ; 20 # No       AHOM NUMBER TWENTY
        "\d118EB",  # ; 20.0 ; ; 20 # No       WARANG CITI NUMBER TWENTY
        "\d11C64",  # ; 20.0 ; ; 20 # No       BHAIKSUKI NUMBER TWENTY
        "\d1D36A",  # ; 20.0 ; ; 20 # No       COUNTING ROD TENS DIGIT TWO
        "\d3251",  # ; 21.0 ; ; 21 # No       CIRCLED NUMBER TWENTY ONE
        "\d3252",  # ; 22.0 ; ; 22 # No       CIRCLED NUMBER TWENTY TWO
        "\d3253",  # ; 23.0 ; ; 23 # No       CIRCLED NUMBER TWENTY THREE
        "\d3254",  # ; 24.0 ; ; 24 # No       CIRCLED NUMBER TWENTY FOUR
        "\d3255",  # ; 25.0 ; ; 25 # No       CIRCLED NUMBER TWENTY FIVE
        "\d3256",  # ; 26.0 ; ; 26 # No       CIRCLED NUMBER TWENTY SIX
        "\d3257",  # ; 27.0 ; ; 27 # No       CIRCLED NUMBER TWENTY SEVEN
        "\d3258",  # ; 28.0 ; ; 28 # No       CIRCLED NUMBER TWENTY EIGHT
        "\d3259",  # ; 29.0 ; ; 29 # No       CIRCLED NUMBER TWENTY NINE
        "\d1374",  # ; 30.0 ; ; 30 # No       ETHIOPIC NUMBER THIRTY
        "\d303A",  # ; 30.0 ; ; 30 # Nl       HANGZHOU NUMERAL THIRTY
        "\d324A",  # ; 30.0 ; ; 30 # No       CIRCLED NUMBER THIRTY ON BLACK SQUARE
        "\d325A",  # ; 30.0 ; ; 30 # No       CIRCLED NUMBER THIRTY
        "\d5345",  # ; 30.0 ; ; 30 # Lo       CJK UNIFIED IDEOGRAPH-5345
        "\d10112",  # ; 30.0 ; ; 30 # No       AEGEAN NUMBER THIRTY
        "\d10165",  # ; 30.0 ; ; 30 # Nl       GREEK ACROPHONIC THESPIAN THIRTY
        "\d102EC",  # ; 30.0 ; ; 30 # No       COPTIC EPACT NUMBER THIRTY
        "\d109CB",  # ; 30.0 ; ; 30 # No       MEROITIC CURSIVE NUMBER THIRTY
        "\d10E6B",  # ; 30.0 ; ; 30 # No       RUMI NUMBER THIRTY
        "\d1105D",  # ; 30.0 ; ; 30 # No       BRAHMI NUMBER THIRTY
        "\d111EC",  # ; 30.0 ; ; 30 # No       SINHALA ARCHAIC NUMBER THIRTY
        "\d118EC",  # ; 30.0 ; ; 30 # No       WARANG CITI NUMBER THIRTY
        "\d11C65",  # ; 30.0 ; ; 30 # No       BHAIKSUKI NUMBER THIRTY
        "\d1D36B",  # ; 30.0 ; ; 30 # No       COUNTING ROD TENS DIGIT THREE
        "\d20983",  # ; 30.0 ; ; 30 # Lo       CJK UNIFIED IDEOGRAPH-20983
        "\d325B",  # ; 31.0 ; ; 31 # No       CIRCLED NUMBER THIRTY ONE
        "\d325C",  # ; 32.0 ; ; 32 # No       CIRCLED NUMBER THIRTY TWO
        "\d325D",  # ; 33.0 ; ; 33 # No       CIRCLED NUMBER THIRTY THREE
        "\d325E",  # ; 34.0 ; ; 34 # No       CIRCLED NUMBER THIRTY FOUR
        "\d325F",  # ; 35.0 ; ; 35 # No       CIRCLED NUMBER THIRTY FIVE
        "\d32B1",  # ; 36.0 ; ; 36 # No       CIRCLED NUMBER THIRTY SIX
        "\d32B2",  # ; 37.0 ; ; 37 # No       CIRCLED NUMBER THIRTY SEVEN
        "\d32B3",  # ; 38.0 ; ; 38 # No       CIRCLED NUMBER THIRTY EIGHT
        "\d32B4",  # ; 39.0 ; ; 39 # No       CIRCLED NUMBER THIRTY NINE
        "\d1375",  # ; 40.0 ; ; 40 # No       ETHIOPIC NUMBER FORTY
        "\d324B",  # ; 40.0 ; ; 40 # No       CIRCLED NUMBER FORTY ON BLACK SQUARE
        "\d32B5",  # ; 40.0 ; ; 40 # No       CIRCLED NUMBER FORTY
        "\d534C",  # ; 40.0 ; ; 40 # Lo       CJK UNIFIED IDEOGRAPH-534C
        "\d10113",  # ; 40.0 ; ; 40 # No       AEGEAN NUMBER FORTY
        "\d102ED",  # ; 40.0 ; ; 40 # No       COPTIC EPACT NUMBER FORTY
        "\d109CC",  # ; 40.0 ; ; 40 # No       MEROITIC CURSIVE NUMBER FORTY
        "\d10E6C",  # ; 40.0 ; ; 40 # No       RUMI NUMBER FORTY
        "\d1105E",  # ; 40.0 ; ; 40 # No       BRAHMI NUMBER FORTY
        "\d111ED",  # ; 40.0 ; ; 40 # No       SINHALA ARCHAIC NUMBER FORTY
        "\d118ED",  # ; 40.0 ; ; 40 # No       WARANG CITI NUMBER FORTY
        "\d11C66",  # ; 40.0 ; ; 40 # No       BHAIKSUKI NUMBER FORTY
        "\d12467",  # ; 40.0 ; ; 40 # Nl       CUNEIFORM NUMERIC SIGN ELAMITE FORTY
        "\d1D36C",  # ; 40.0 ; ; 40 # No       COUNTING ROD TENS DIGIT FOUR
        "\d2098C",  # ; 40.0 ; ; 40 # Lo       CJK UNIFIED IDEOGRAPH-2098C
        "\d2099C",  # ; 40.0 ; ; 40 # Lo       CJK UNIFIED IDEOGRAPH-2099C
        "\d32B6",  # ; 41.0 ; ; 41 # No       CIRCLED NUMBER FORTY ONE
        "\d32B7",  # ; 42.0 ; ; 42 # No       CIRCLED NUMBER FORTY TWO
        "\d32B8",  # ; 43.0 ; ; 43 # No       CIRCLED NUMBER FORTY THREE
        "\d32B9",  # ; 44.0 ; ; 44 # No       CIRCLED NUMBER FORTY FOUR
        "\d32BA",  # ; 45.0 ; ; 45 # No       CIRCLED NUMBER FORTY FIVE
        "\d32BB",  # ; 46.0 ; ; 46 # No       CIRCLED NUMBER FORTY SIX
        "\d32BC",  # ; 47.0 ; ; 47 # No       CIRCLED NUMBER FORTY SEVEN
        "\d32BD",  # ; 48.0 ; ; 48 # No       CIRCLED NUMBER FORTY EIGHT
        "\d32BE",  # ; 49.0 ; ; 49 # No       CIRCLED NUMBER FORTY NINE
        "\d1376",  # ; 50.0 ; ; 50 # No       ETHIOPIC NUMBER FIFTY
        "\d216C",  # ; 50.0 ; ; 50 # Nl       ROMAN NUMERAL FIFTY
        "\d217C",  # ; 50.0 ; ; 50 # Nl       SMALL ROMAN NUMERAL FIFTY
        "\d2186",  # ; 50.0 ; ; 50 # Nl       ROMAN NUMERAL FIFTY EARLY FORM
        "\d324C",  # ; 50.0 ; ; 50 # No       CIRCLED NUMBER FIFTY ON BLACK SQUARE
        "\d32BF",  # ; 50.0 ; ; 50 # No       CIRCLED NUMBER FIFTY
        "\d10114",  # ; 50.0 ; ; 50 # No       AEGEAN NUMBER FIFTY
        "\d10144",  # ; 50.0 ; ; 50 # Nl       GREEK ACROPHONIC ATTIC FIFTY
        "\d1014A",  # ; 50.0 ; ; 50 # Nl       GREEK ACROPHONIC ATTIC FIFTY TALENTS
        "\d10151",  # ; 50.0 ; ; 50 # Nl       GREEK ACROPHONIC ATTIC FIFTY STATERS
        "\d10166","\d10167","\d10168","\d10169",  # ; 50.0 ; ; 50 # Nl   [4] GREEK ACROPHONIC TROEZENIAN FIFTY..GREEK ACROPHONIC THESPIAN FIFTY
        "\d10174",  # ; 50.0 ; ; 50 # Nl       GREEK ACROPHONIC STRATIAN FIFTY MNAS
        "\d102EE",  # ; 50.0 ; ; 50 # No       COPTIC EPACT NUMBER FIFTY
        "\d10323",  # ; 50.0 ; ; 50 # No       OLD ITALIC NUMERAL FIFTY
        "\d109CD",  # ; 50.0 ; ; 50 # No       MEROITIC CURSIVE NUMBER FIFTY
        "\d10A7E",  # ; 50.0 ; ; 50 # No       OLD SOUTH ARABIAN NUMBER FIFTY
        "\d10CFD",  # ; 50.0 ; ; 50 # No       OLD HUNGARIAN NUMBER FIFTY
        "\d10E6D",  # ; 50.0 ; ; 50 # No       RUMI NUMBER FIFTY
        "\d1105F",  # ; 50.0 ; ; 50 # No       BRAHMI NUMBER FIFTY
        "\d111EE",  # ; 50.0 ; ; 50 # No       SINHALA ARCHAIC NUMBER FIFTY
        "\d118EE",  # ; 50.0 ; ; 50 # No       WARANG CITI NUMBER FIFTY
        "\d11C67",  # ; 50.0 ; ; 50 # No       BHAIKSUKI NUMBER FIFTY
        "\d12468",  # ; 50.0 ; ; 50 # Nl       CUNEIFORM NUMERIC SIGN ELAMITE FIFTY
        "\d1D36D",  # ; 50.0 ; ; 50 # No       COUNTING ROD TENS DIGIT FIVE
        "\d1377",  # ; 60.0 ; ; 60 # No       ETHIOPIC NUMBER SIXTY
        "\d324D",  # ; 60.0 ; ; 60 # No       CIRCLED NUMBER SIXTY ON BLACK SQUARE
        "\d10115",  # ; 60.0 ; ; 60 # No       AEGEAN NUMBER SIXTY
        "\d102EF",  # ; 60.0 ; ; 60 # No       COPTIC EPACT NUMBER SIXTY
        "\d109CE",  # ; 60.0 ; ; 60 # No       MEROITIC CURSIVE NUMBER SIXTY
        "\d10E6E",  # ; 60.0 ; ; 60 # No       RUMI NUMBER SIXTY
        "\d11060",  # ; 60.0 ; ; 60 # No       BRAHMI NUMBER SIXTY
        "\d111EF",  # ; 60.0 ; ; 60 # No       SINHALA ARCHAIC NUMBER SIXTY
        "\d118EF",  # ; 60.0 ; ; 60 # No       WARANG CITI NUMBER SIXTY
        "\d11C68",  # ; 60.0 ; ; 60 # No       BHAIKSUKI NUMBER SIXTY
        "\d1D36E",  # ; 60.0 ; ; 60 # No       COUNTING ROD TENS DIGIT SIX
        "\d1378",  # ; 70.0 ; ; 70 # No       ETHIOPIC NUMBER SEVENTY
        "\d324E",  # ; 70.0 ; ; 70 # No       CIRCLED NUMBER SEVENTY ON BLACK SQUARE
        "\d10116",  # ; 70.0 ; ; 70 # No       AEGEAN NUMBER SEVENTY
        "\d102F0",  # ; 70.0 ; ; 70 # No       COPTIC EPACT NUMBER SEVENTY
        "\d109CF",  # ; 70.0 ; ; 70 # No       MEROITIC CURSIVE NUMBER SEVENTY
        "\d10E6F",  # ; 70.0 ; ; 70 # No       RUMI NUMBER SEVENTY
        "\d11061",  # ; 70.0 ; ; 70 # No       BRAHMI NUMBER SEVENTY
        "\d111F0",  # ; 70.0 ; ; 70 # No       SINHALA ARCHAIC NUMBER SEVENTY
        "\d118F0",  # ; 70.0 ; ; 70 # No       WARANG CITI NUMBER SEVENTY
        "\d11C69",  # ; 70.0 ; ; 70 # No       BHAIKSUKI NUMBER SEVENTY
        "\d1D36F",  # ; 70.0 ; ; 70 # No       COUNTING ROD TENS DIGIT SEVEN
        "\d1379",  # ; 80.0 ; ; 80 # No       ETHIOPIC NUMBER EIGHTY
        "\d324F",  # ; 80.0 ; ; 80 # No       CIRCLED NUMBER EIGHTY ON BLACK SQUARE
        "\d10117",  # ; 80.0 ; ; 80 # No       AEGEAN NUMBER EIGHTY
        "\d102F1",  # ; 80.0 ; ; 80 # No       COPTIC EPACT NUMBER EIGHTY
        "\d10E70",  # ; 80.0 ; ; 80 # No       RUMI NUMBER EIGHTY
        "\d11062",  # ; 80.0 ; ; 80 # No       BRAHMI NUMBER EIGHTY
        "\d111F1",  # ; 80.0 ; ; 80 # No       SINHALA ARCHAIC NUMBER EIGHTY
        "\d118F1",  # ; 80.0 ; ; 80 # No       WARANG CITI NUMBER EIGHTY
        "\d11C6A",  # ; 80.0 ; ; 80 # No       BHAIKSUKI NUMBER EIGHTY
        "\d1D370",  # ; 80.0 ; ; 80 # No       COUNTING ROD TENS DIGIT EIGHT
        "\d137A",  # ; 90.0 ; ; 90 # No       ETHIOPIC NUMBER NINETY
        "\d10118",  # ; 90.0 ; ; 90 # No       AEGEAN NUMBER NINETY
        "\d102F2",  # ; 90.0 ; ; 90 # No       COPTIC EPACT NUMBER NINETY
        "\d10341",  # ; 90.0 ; ; 90 # Nl       GOTHIC LETTER NINETY
        "\d10E71",  # ; 90.0 ; ; 90 # No       RUMI NUMBER NINETY
        "\d11063",  # ; 90.0 ; ; 90 # No       BRAHMI NUMBER NINETY
        "\d111F2",  # ; 90.0 ; ; 90 # No       SINHALA ARCHAIC NUMBER NINETY
        "\d118F2",  # ; 90.0 ; ; 90 # No       WARANG CITI NUMBER NINETY
        "\d11C6B",  # ; 90.0 ; ; 90 # No       BHAIKSUKI NUMBER NINETY
        "\d1D371",  # ; 90.0 ; ; 90 # No       COUNTING ROD TENS DIGIT NINE
        "\d0BF1",  # ; 100.0 ; ; 100 # No       TAMIL NUMBER ONE HUNDRED
        "\d0D71",  # ; 100.0 ; ; 100 # No       MALAYALAM NUMBER ONE HUNDRED
        "\d137B",  # ; 100.0 ; ; 100 # No       ETHIOPIC NUMBER HUNDRED
        "\d216D",  # ; 100.0 ; ; 100 # Nl       ROMAN NUMERAL ONE HUNDRED
        "\d217D",  # ; 100.0 ; ; 100 # Nl       SMALL ROMAN NUMERAL ONE HUNDRED
        "\d4F70",  # ; 100.0 ; ; 100 # Lo       CJK UNIFIED IDEOGRAPH-4F70
        "\d767E",  # ; 100.0 ; ; 100 # Lo       CJK UNIFIED IDEOGRAPH-767E
        "\d964C",  # ; 100.0 ; ; 100 # Lo       CJK UNIFIED IDEOGRAPH-964C
        "\d10119",  # ; 100.0 ; ; 100 # No       AEGEAN NUMBER ONE HUNDRED
        "\d1014B",  # ; 100.0 ; ; 100 # Nl       GREEK ACROPHONIC ATTIC ONE HUNDRED TALENTS
        "\d10152",  # ; 100.0 ; ; 100 # Nl       GREEK ACROPHONIC ATTIC ONE HUNDRED STATERS
        "\d1016A",  # ; 100.0 ; ; 100 # Nl       GREEK ACROPHONIC THESPIAN ONE HUNDRED
        "\d102F3",  # ; 100.0 ; ; 100 # No       COPTIC EPACT NUMBER ONE HUNDRED
        "\d103D5",  # ; 100.0 ; ; 100 # Nl       OLD PERSIAN NUMBER HUNDRED
        "\d1085D",  # ; 100.0 ; ; 100 # No       IMPERIAL ARAMAIC NUMBER ONE HUNDRED
        "\d108AF",  # ; 100.0 ; ; 100 # No       NABATAEAN NUMBER ONE HUNDRED
        "\d108FF",  # ; 100.0 ; ; 100 # No       HATRAN NUMBER ONE HUNDRED
        "\d10919",  # ; 100.0 ; ; 100 # No       PHOENICIAN NUMBER ONE HUNDRED
        "\d109D2",  # ; 100.0 ; ; 100 # No       MEROITIC CURSIVE NUMBER ONE HUNDRED
        "\d10A46",  # ; 100.0 ; ; 100 # No       KHAROSHTHI NUMBER ONE HUNDRED
        "\d10AEF",  # ; 100.0 ; ; 100 # No       MANICHAEAN NUMBER ONE HUNDRED
        "\d10B5E",  # ; 100.0 ; ; 100 # No       INSCRIPTIONAL PARTHIAN NUMBER ONE HUNDRED
        "\d10B7E",  # ; 100.0 ; ; 100 # No       INSCRIPTIONAL PAHLAVI NUMBER ONE HUNDRED
        "\d10BAF",  # ; 100.0 ; ; 100 # No       PSALTER PAHLAVI NUMBER ONE HUNDRED
        "\d10CFE",  # ; 100.0 ; ; 100 # No       OLD HUNGARIAN NUMBER ONE HUNDRED
        "\d10E72",  # ; 100.0 ; ; 100 # No       RUMI NUMBER ONE HUNDRED
        "\d11064",  # ; 100.0 ; ; 100 # No       BRAHMI NUMBER ONE HUNDRED
        "\d111F3",  # ; 100.0 ; ; 100 # No       SINHALA ARCHAIC NUMBER ONE HUNDRED
        "\d11C6C",  # ; 100.0 ; ; 100 # No       BHAIKSUKI HUNDREDS UNIT MARK
        "\d16B5C",  # ; 100.0 ; ; 100 # No       PAHAWH HMONG NUMBER HUNDREDS
        "\d1011A",  # ; 200.0 ; ; 200 # No       AEGEAN NUMBER TWO HUNDRED
        "\d102F4",  # ; 200.0 ; ; 200 # No       COPTIC EPACT NUMBER TWO HUNDRED
        "\d109D3",  # ; 200.0 ; ; 200 # No       MEROITIC CURSIVE NUMBER TWO HUNDRED
        "\d10E73",  # ; 200.0 ; ; 200 # No       RUMI NUMBER TWO HUNDRED
        "\d1011B",  # ; 300.0 ; ; 300 # No       AEGEAN NUMBER THREE HUNDRED
        "\d1016B",  # ; 300.0 ; ; 300 # Nl       GREEK ACROPHONIC THESPIAN THREE HUNDRED
        "\d102F5",  # ; 300.0 ; ; 300 # No       COPTIC EPACT NUMBER THREE HUNDRED
        "\d109D4",  # ; 300.0 ; ; 300 # No       MEROITIC CURSIVE NUMBER THREE HUNDRED
        "\d10E74",  # ; 300.0 ; ; 300 # No       RUMI NUMBER THREE HUNDRED
        "\d1011C",  # ; 400.0 ; ; 400 # No       AEGEAN NUMBER FOUR HUNDRED
        "\d102F6",  # ; 400.0 ; ; 400 # No       COPTIC EPACT NUMBER FOUR HUNDRED
        "\d109D5",  # ; 400.0 ; ; 400 # No       MEROITIC CURSIVE NUMBER FOUR HUNDRED
        "\d10E75",  # ; 400.0 ; ; 400 # No       RUMI NUMBER FOUR HUNDRED
        "\d216E",  # ; 500.0 ; ; 500 # Nl       ROMAN NUMERAL FIVE HUNDRED
        "\d217E",  # ; 500.0 ; ; 500 # Nl       SMALL ROMAN NUMERAL FIVE HUNDRED
        "\d1011D",  # ; 500.0 ; ; 500 # No       AEGEAN NUMBER FIVE HUNDRED
        "\d10145",  # ; 500.0 ; ; 500 # Nl       GREEK ACROPHONIC ATTIC FIVE HUNDRED
        "\d1014C",  # ; 500.0 ; ; 500 # Nl       GREEK ACROPHONIC ATTIC FIVE HUNDRED TALENTS
        "\d10153",  # ; 500.0 ; ; 500 # Nl       GREEK ACROPHONIC ATTIC FIVE HUNDRED STATERS
        "\d1016c","\d1016d","\d1016e","\d1016f","\d10170",  # ; 500.0 ; ; 500 # Nl   [5] GREEK ACROPHONIC EPIDAUREAN FIVE HUNDRED..GREEK ACROPHONIC NAXIAN FIVE HUNDRED
        "\d102F7",  # ; 500.0 ; ; 500 # No       COPTIC EPACT NUMBER FIVE HUNDRED
        "\d109D6",  # ; 500.0 ; ; 500 # No       MEROITIC CURSIVE NUMBER FIVE HUNDRED
        "\d10E76",  # ; 500.0 ; ; 500 # No       RUMI NUMBER FIVE HUNDRED
        "\d1011E",  # ; 600.0 ; ; 600 # No       AEGEAN NUMBER SIX HUNDRED
        "\d102F8",  # ; 600.0 ; ; 600 # No       COPTIC EPACT NUMBER SIX HUNDRED
        "\d109D7",  # ; 600.0 ; ; 600 # No       MEROITIC CURSIVE NUMBER SIX HUNDRED
        "\d10E77",  # ; 600.0 ; ; 600 # No       RUMI NUMBER SIX HUNDRED
        "\d1011F",  # ; 700.0 ; ; 700 # No       AEGEAN NUMBER SEVEN HUNDRED
        "\d102F9",  # ; 700.0 ; ; 700 # No       COPTIC EPACT NUMBER SEVEN HUNDRED
        "\d109D8",  # ; 700.0 ; ; 700 # No       MEROITIC CURSIVE NUMBER SEVEN HUNDRED
        "\d10E78",  # ; 700.0 ; ; 700 # No       RUMI NUMBER SEVEN HUNDRED
        "\d10120",  # ; 800.0 ; ; 800 # No       AEGEAN NUMBER EIGHT HUNDRED
        "\d102FA",  # ; 800.0 ; ; 800 # No       COPTIC EPACT NUMBER EIGHT HUNDRED
        "\d109D9",  # ; 800.0 ; ; 800 # No       MEROITIC CURSIVE NUMBER EIGHT HUNDRED
        "\d10E79",  # ; 800.0 ; ; 800 # No       RUMI NUMBER EIGHT HUNDRED
        "\d10121",  # ; 900.0 ; ; 900 # No       AEGEAN NUMBER NINE HUNDRED
        "\d102FB",  # ; 900.0 ; ; 900 # No       COPTIC EPACT NUMBER NINE HUNDRED
        "\d1034A",  # ; 900.0 ; ; 900 # Nl       GOTHIC LETTER NINE HUNDRED
        "\d109DA",  # ; 900.0 ; ; 900 # No       MEROITIC CURSIVE NUMBER NINE HUNDRED
        "\d10E7A",  # ; 900.0 ; ; 900 # No       RUMI NUMBER NINE HUNDRED
        "\d0BF2",  # ; 1000.0 ; ; 1000 # No       TAMIL NUMBER ONE THOUSAND
        "\d0D72",  # ; 1000.0 ; ; 1000 # No       MALAYALAM NUMBER ONE THOUSAND
        "\d216F",  # ; 1000.0 ; ; 1000 # Nl       ROMAN NUMERAL ONE THOUSAND
        "\d217f","\d2180",  # ; 1000.0 ; ; 1000 # Nl   [2] SMALL ROMAN NUMERAL ONE THOUSAND..ROMAN NUMERAL ONE THOUSAND C D
        "\d4EDF",  # ; 1000.0 ; ; 1000 # Lo       CJK UNIFIED IDEOGRAPH-4EDF
        "\d5343",  # ; 1000.0 ; ; 1000 # Lo       CJK UNIFIED IDEOGRAPH-5343
        "\d9621",  # ; 1000.0 ; ; 1000 # Lo       CJK UNIFIED IDEOGRAPH-9621
        "\d10122",  # ; 1000.0 ; ; 1000 # No       AEGEAN NUMBER ONE THOUSAND
        "\d1014D",  # ; 1000.0 ; ; 1000 # Nl       GREEK ACROPHONIC ATTIC ONE THOUSAND TALENTS
        "\d10154",  # ; 1000.0 ; ; 1000 # Nl       GREEK ACROPHONIC ATTIC ONE THOUSAND STATERS
        "\d10171",  # ; 1000.0 ; ; 1000 # Nl       GREEK ACROPHONIC THESPIAN ONE THOUSAND
        "\d1085E",  # ; 1000.0 ; ; 1000 # No       IMPERIAL ARAMAIC NUMBER ONE THOUSAND
        "\d109DB",  # ; 1000.0 ; ; 1000 # No       MEROITIC CURSIVE NUMBER ONE THOUSAND
        "\d10A47",  # ; 1000.0 ; ; 1000 # No       KHAROSHTHI NUMBER ONE THOUSAND
        "\d10B5F",  # ; 1000.0 ; ; 1000 # No       INSCRIPTIONAL PARTHIAN NUMBER ONE THOUSAND
        "\d10B7F",  # ; 1000.0 ; ; 1000 # No       INSCRIPTIONAL PAHLAVI NUMBER ONE THOUSAND
        "\d10CFF",  # ; 1000.0 ; ; 1000 # No       OLD HUNGARIAN NUMBER ONE THOUSAND
        "\d11065",  # ; 1000.0 ; ; 1000 # No       BRAHMI NUMBER ONE THOUSAND
        "\d111F4",  # ; 1000.0 ; ; 1000 # No       SINHALA ARCHAIC NUMBER ONE THOUSAND
        "\d10123",  # ; 2000.0 ; ; 2000 # No       AEGEAN NUMBER TWO THOUSAND
        "\d109DC",  # ; 2000.0 ; ; 2000 # No       MEROITIC CURSIVE NUMBER TWO THOUSAND
        "\d10124",  # ; 3000.0 ; ; 3000 # No       AEGEAN NUMBER THREE THOUSAND
        "\d109DD",  # ; 3000.0 ; ; 3000 # No       MEROITIC CURSIVE NUMBER THREE THOUSAND
        "\d10125",  # ; 4000.0 ; ; 4000 # No       AEGEAN NUMBER FOUR THOUSAND
        "\d109DE",  # ; 4000.0 ; ; 4000 # No       MEROITIC CURSIVE NUMBER FOUR THOUSAND
        "\d2181",  # ; 5000.0 ; ; 5000 # Nl       ROMAN NUMERAL FIVE THOUSAND
        "\d10126",  # ; 5000.0 ; ; 5000 # No       AEGEAN NUMBER FIVE THOUSAND
        "\d10146",  # ; 5000.0 ; ; 5000 # Nl       GREEK ACROPHONIC ATTIC FIVE THOUSAND
        "\d1014E",  # ; 5000.0 ; ; 5000 # Nl       GREEK ACROPHONIC ATTIC FIVE THOUSAND TALENTS
        "\d10172",  # ; 5000.0 ; ; 5000 # Nl       GREEK ACROPHONIC THESPIAN FIVE THOUSAND
        "\d109DF",  # ; 5000.0 ; ; 5000 # No       MEROITIC CURSIVE NUMBER FIVE THOUSAND
        "\d10127",  # ; 6000.0 ; ; 6000 # No       AEGEAN NUMBER SIX THOUSAND
        "\d109E0",  # ; 6000.0 ; ; 6000 # No       MEROITIC CURSIVE NUMBER SIX THOUSAND
        "\d10128",  # ; 7000.0 ; ; 7000 # No       AEGEAN NUMBER SEVEN THOUSAND
        "\d109E1",  # ; 7000.0 ; ; 7000 # No       MEROITIC CURSIVE NUMBER SEVEN THOUSAND
        "\d10129",  # ; 8000.0 ; ; 8000 # No       AEGEAN NUMBER EIGHT THOUSAND
        "\d109E2",  # ; 8000.0 ; ; 8000 # No       MEROITIC CURSIVE NUMBER EIGHT THOUSAND
        "\d1012A",  # ; 9000.0 ; ; 9000 # No       AEGEAN NUMBER NINE THOUSAND
        "\d109E3",  # ; 9000.0 ; ; 9000 # No       MEROITIC CURSIVE NUMBER NINE THOUSAND
        "\d137C",  # ; 10000.0 ; ; 10000 # No       ETHIOPIC NUMBER TEN THOUSAND
        "\d2182",  # ; 10000.0 ; ; 10000 # Nl       ROMAN NUMERAL TEN THOUSAND
        "\d4E07",  # ; 10000.0 ; ; 10000 # Lo       CJK UNIFIED IDEOGRAPH-4E07
        "\d842C",  # ; 10000.0 ; ; 10000 # Lo       CJK UNIFIED IDEOGRAPH-842C
        "\d1012B",  # ; 10000.0 ; ; 10000 # No       AEGEAN NUMBER TEN THOUSAND
        "\d10155",  # ; 10000.0 ; ; 10000 # Nl       GREEK ACROPHONIC ATTIC TEN THOUSAND STATERS
        "\d1085F",  # ; 10000.0 ; ; 10000 # No       IMPERIAL ARAMAIC NUMBER TEN THOUSAND
        "\d109E4",  # ; 10000.0 ; ; 10000 # No       MEROITIC CURSIVE NUMBER TEN THOUSAND
        "\d16B5D",  # ; 10000.0 ; ; 10000 # No       PAHAWH HMONG NUMBER TEN THOUSANDS
        "\d1012C",  # ; 20000.0 ; ; 20000 # No       AEGEAN NUMBER TWENTY THOUSAND
        "\d109E5",  # ; 20000.0 ; ; 20000 # No       MEROITIC CURSIVE NUMBER TWENTY THOUSAND
        "\d1012D",  # ; 30000.0 ; ; 30000 # No       AEGEAN NUMBER THIRTY THOUSAND
        "\d109E6",  # ; 30000.0 ; ; 30000 # No       MEROITIC CURSIVE NUMBER THIRTY THOUSAND
        "\d1012E",  # ; 40000.0 ; ; 40000 # No       AEGEAN NUMBER FORTY THOUSAND
        "\d109E7",  # ; 40000.0 ; ; 40000 # No       MEROITIC CURSIVE NUMBER FORTY THOUSAND
        "\d2187",  # ; 50000.0 ; ; 50000 # Nl       ROMAN NUMERAL FIFTY THOUSAND
        "\d1012F",  # ; 50000.0 ; ; 50000 # No       AEGEAN NUMBER FIFTY THOUSAND
        "\d10147",  # ; 50000.0 ; ; 50000 # Nl       GREEK ACROPHONIC ATTIC FIFTY THOUSAND
        "\d10156",  # ; 50000.0 ; ; 50000 # Nl       GREEK ACROPHONIC ATTIC FIFTY THOUSAND STATERS
        "\d109E8",  # ; 50000.0 ; ; 50000 # No       MEROITIC CURSIVE NUMBER FIFTY THOUSAND
        "\d10130",  # ; 60000.0 ; ; 60000 # No       AEGEAN NUMBER SIXTY THOUSAND
        "\d109E9",  # ; 60000.0 ; ; 60000 # No       MEROITIC CURSIVE NUMBER SIXTY THOUSAND
        "\d10131",  # ; 70000.0 ; ; 70000 # No       AEGEAN NUMBER SEVENTY THOUSAND
        "\d109EA",  # ; 70000.0 ; ; 70000 # No       MEROITIC CURSIVE NUMBER SEVENTY THOUSAND
        "\d10132",  # ; 80000.0 ; ; 80000 # No       AEGEAN NUMBER EIGHTY THOUSAND
        "\d109EB",  # ; 80000.0 ; ; 80000 # No       MEROITIC CURSIVE NUMBER EIGHTY THOUSAND
        "\d10133",  # ; 90000.0 ; ; 90000 # No       AEGEAN NUMBER NINETY THOUSAND
        "\d109EC",  # ; 90000.0 ; ; 90000 # No       MEROITIC CURSIVE NUMBER NINETY THOUSAND
        "\d2188",  # ; 100000.0 ; ; 100000 # Nl       ROMAN NUMERAL ONE HUNDRED THOUSAND
        "\d109ED",  # ; 100000.0 ; ; 100000 # No       MEROITIC CURSIVE NUMBER ONE HUNDRED THOUSAND
        "\d109EE",  # ; 200000.0 ; ; 200000 # No       MEROITIC CURSIVE NUMBER TWO HUNDRED THOUSAND
        "\d12432",  # ; 216000.0 ; ; 216000 # Nl       CUNEIFORM NUMERIC SIGN SHAR2 TIMES GAL PLUS DISH
        "\d109EF",  # ; 300000.0 ; ; 300000 # No       MEROITIC CURSIVE NUMBER THREE HUNDRED THOUSAND
        "\d109F0",  # ; 400000.0 ; ; 400000 # No       MEROITIC CURSIVE NUMBER FOUR HUNDRED THOUSAND
        "\d12433",  # ; 432000.0 ; ; 432000 # Nl       CUNEIFORM NUMERIC SIGN SHAR2 TIMES GAL PLUS MIN
        "\d109F1",  # ; 500000.0 ; ; 500000 # No       MEROITIC CURSIVE NUMBER FIVE HUNDRED THOUSAND
        "\d109F2",  # ; 600000.0 ; ; 600000 # No       MEROITIC CURSIVE NUMBER SIX HUNDRED THOUSAND
        "\d109F3",  # ; 700000.0 ; ; 700000 # No       MEROITIC CURSIVE NUMBER SEVEN HUNDRED THOUSAND
        "\d109F4",  # ; 800000.0 ; ; 800000 # No       MEROITIC CURSIVE NUMBER EIGHT HUNDRED THOUSAND
        "\d109F5",  # ; 900000.0 ; ; 900000 # No       MEROITIC CURSIVE NUMBER NINE HUNDRED THOUSAND
        "\d16B5E",  # ; 1000000.0 ; ; 1000000 # No       PAHAWH HMONG NUMBER MILLIONS
        "\d4EBF",  # ; 100000000.0 ; ; 100000000 # Lo       CJK UNIFIED IDEOGRAPH-4EBF
        "\d5104",  # ; 100000000.0 ; ; 100000000 # Lo       CJK UNIFIED IDEOGRAPH-5104
        "\d16B5F",  # ; 100000000.0 ; ; 100000000 # No       PAHAWH HMONG NUMBER HUNDRED MILLIONS
        "\d16B60",  # ; 10000000000.0 ; ; 10000000000 # No       PAHAWH HMONG NUMBER TEN BILLIONS
        "\d5146",  # ; 1000000000000.0 ; ; 1000000000000 # Lo       CJK UNIFIED IDEOGRAPH-5146
        "\d16B61",  # ; 1000000000000.0 ; ; 1000000000000 # No       PAHAWH HMONG NUMBER TRILLIONS
    ]
    test_data.each do |string|
      assert @validator.valid_encoding?(string), "U10_DerivedNumericValues: #{string}"
      assert string.force_encoding("UTF-8").valid_encoding?, "U10_DerivedNumericValues: #{string}" if @vercheck
    end
  end

end

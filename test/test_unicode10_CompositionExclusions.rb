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
class TestUnicode10CompositionExclusions < Test::Unit::TestCase
  #
  def setup
    @validator = UTF8::Validator.new
    @vercheck = ((RUBY_VERSION =~ /1.9/) or (RUBY_VERSION =~ /2./)) ? true : false
  end

  #
  def teardown
    @validator = nil
  end

  def test_unicode10_CompositionExclusions
    test_data = [
      "\u0958",  #  DEVANAGARI LETTER QA
      "\u0959",  #  DEVANAGARI LETTER KHHA
      "\u095A",  #  DEVANAGARI LETTER GHHA
      "\u095B",  #  DEVANAGARI LETTER ZA
      "\u095C",  #  DEVANAGARI LETTER DDDHA
      "\u095D",  #  DEVANAGARI LETTER RHA
      "\u095E",  #  DEVANAGARI LETTER FA
      "\u095F",  #  DEVANAGARI LETTER YYA
      "\u09DC",  #  BENGALI LETTER RRA
      "\u09DD",  #  BENGALI LETTER RHA
      "\u09DF",  #  BENGALI LETTER YYA
      "\u0A33",  #  GURMUKHI LETTER LLA
      "\u0A36",  #  GURMUKHI LETTER SHA
      "\u0A59",  #  GURMUKHI LETTER KHHA
      "\u0A5A",  #  GURMUKHI LETTER GHHA
      "\u0A5B",  #  GURMUKHI LETTER ZA
      "\u0A5E",  #  GURMUKHI LETTER FA
      "\u0B5C",  #  ORIYA LETTER RRA
      "\u0B5D",  #  ORIYA LETTER RHA
      "\u0F43",  #  TIBETAN LETTER GHA
      "\u0F4D",  #  TIBETAN LETTER DDHA
      "\u0F52",  #  TIBETAN LETTER DHA
      "\u0F57",  #  TIBETAN LETTER BHA
      "\u0F5C",  #  TIBETAN LETTER DZHA
      "\u0F69",  #  TIBETAN LETTER KSSA
      "\u0F76",  #  TIBETAN VOWEL SIGN VOCALIC R
      "\u0F78",  #  TIBETAN VOWEL SIGN VOCALIC L
      "\u0F93",  #  TIBETAN SUBJOINED LETTER GHA
      "\u0F9D",  #  TIBETAN SUBJOINED LETTER DDHA
      "\u0FA2",  #  TIBETAN SUBJOINED LETTER DHA
      "\u0FA7",  #  TIBETAN SUBJOINED LETTER BHA
      "\u0FAC",  #  TIBETAN SUBJOINED LETTER DZHA
      "\u0FB9",  #  TIBETAN SUBJOINED LETTER KSSA
      "\uFB1D",  #  HEBREW LETTER YOD WITH HIRIQ
      "\uFB1F",  #  HEBREW LIGATURE YIDDISH YOD YOD PATAH
      "\uFB2A",  #  HEBREW LETTER SHIN WITH SHIN DOT
      "\uFB2B",  #  HEBREW LETTER SHIN WITH SIN DOT
      "\uFB2C",  #  HEBREW LETTER SHIN WITH DAGESH AND SHIN DOT
      "\uFB2D",  #  HEBREW LETTER SHIN WITH DAGESH AND SIN DOT
      "\uFB2E",  #  HEBREW LETTER ALEF WITH PATAH
      "\uFB2F",  #  HEBREW LETTER ALEF WITH QAMATS
      "\uFB30",  #  HEBREW LETTER ALEF WITH MAPIQ
      "\uFB31",  #  HEBREW LETTER BET WITH DAGESH
      "\uFB32",  #  HEBREW LETTER GIMEL WITH DAGESH
      "\uFB33",  #  HEBREW LETTER DALET WITH DAGESH
      "\uFB34",  #  HEBREW LETTER HE WITH MAPIQ
      "\uFB35",  #  HEBREW LETTER VAV WITH DAGESH
      "\uFB36",  #  HEBREW LETTER ZAYIN WITH DAGESH
      "\uFB38",  #  HEBREW LETTER TET WITH DAGESH
      "\uFB39",  #  HEBREW LETTER YOD WITH DAGESH
      "\uFB3A",  #  HEBREW LETTER FINAL KAF WITH DAGESH
      "\uFB3B",  #  HEBREW LETTER KAF WITH DAGESH
      "\uFB3C",  #  HEBREW LETTER LAMED WITH DAGESH
      "\uFB3E",  #  HEBREW LETTER MEM WITH DAGESH
      "\uFB40",  #  HEBREW LETTER NUN WITH DAGESH
      "\uFB41",  #  HEBREW LETTER SAMEKH WITH DAGESH
      "\uFB43",  #  HEBREW LETTER FINAL PE WITH DAGESH
      "\uFB44",  #  HEBREW LETTER PE WITH DAGESH
      "\uFB46",  #  HEBREW LETTER TSADI WITH DAGESH
      "\uFB47",  #  HEBREW LETTER QOF WITH DAGESH
      "\uFB48",  #  HEBREW LETTER RESH WITH DAGESH
      "\uFB49",  #  HEBREW LETTER SHIN WITH DAGESH
      "\uFB4A",  #  HEBREW LETTER TAV WITH DAGESH
      "\uFB4B",  #  HEBREW LETTER VAV WITH HOLAM
      "\uFB4C",  #  HEBREW LETTER BET WITH RAFE
      "\uFB4D",  #  HEBREW LETTER KAF WITH RAFE
      "\uFB4E",  #  HEBREW LETTER PE WITH RAFE
      "\u2ADC",  #  FORKING
      "\u1D15E",  #  MUSICAL SYMBOL HALF NOTE
      "\u1D15F",  #  MUSICAL SYMBOL QUARTER NOTE
      "\u1D160",  #  MUSICAL SYMBOL EIGHTH NOTE
      "\u1D161",  #  MUSICAL SYMBOL SIXTEENTH NOTE
      "\u1D162",  #  MUSICAL SYMBOL THIRTY-SECOND NOTE
      "\u1D163",  #  MUSICAL SYMBOL SIXTY-FOURTH NOTE
      "\u1D164",  #  MUSICAL SYMBOL ONE HUNDRED TWENTY-EIGHTH NOTE
      "\u1D1BB",  #  MUSICAL SYMBOL MINIMA
      "\u1D1BC",  #  MUSICAL SYMBOL MINIMA BLACK
      "\u1D1BD",  #  MUSICAL SYMBOL SEMIMINIMA WHITE
      "\u1D1BE",  #  MUSICAL SYMBOL SEMIMINIMA BLACK
      "\u1D1BF",  #  MUSICAL SYMBOL FUSA WHITE
      "\u1D1C0",  #  MUSICAL SYMBOL FUSA BLACK
    ]
    test_data.each do |string|
      assert @validator.valid_encoding?(string), "U10_CompositionExclusions: #{string}"
      assert string.force_encoding("UTF-8").valid_encoding?, "U10_CompositionExclusions: #{string}" if @vercheck
    end
  end

end

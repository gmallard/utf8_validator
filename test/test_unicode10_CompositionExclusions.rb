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
      "\d0958",  #  DEVANAGARI LETTER QA
      "\d0959",  #  DEVANAGARI LETTER KHHA
      "\d095A",  #  DEVANAGARI LETTER GHHA
      "\d095B",  #  DEVANAGARI LETTER ZA
      "\d095C",  #  DEVANAGARI LETTER DDDHA
      "\d095D",  #  DEVANAGARI LETTER RHA
      "\d095E",  #  DEVANAGARI LETTER FA
      "\d095F",  #  DEVANAGARI LETTER YYA
      "\d09DC",  #  BENGALI LETTER RRA
      "\d09DD",  #  BENGALI LETTER RHA
      "\d09DF",  #  BENGALI LETTER YYA
      "\d0A33",  #  GURMUKHI LETTER LLA
      "\d0A36",  #  GURMUKHI LETTER SHA
      "\d0A59",  #  GURMUKHI LETTER KHHA
      "\d0A5A",  #  GURMUKHI LETTER GHHA
      "\d0A5B",  #  GURMUKHI LETTER ZA
      "\d0A5E",  #  GURMUKHI LETTER FA
      "\d0B5C",  #  ORIYA LETTER RRA
      "\d0B5D",  #  ORIYA LETTER RHA
      "\d0F43",  #  TIBETAN LETTER GHA
      "\d0F4D",  #  TIBETAN LETTER DDHA
      "\d0F52",  #  TIBETAN LETTER DHA
      "\d0F57",  #  TIBETAN LETTER BHA
      "\d0F5C",  #  TIBETAN LETTER DZHA
      "\d0F69",  #  TIBETAN LETTER KSSA
      "\d0F76",  #  TIBETAN VOWEL SIGN VOCALIC R
      "\d0F78",  #  TIBETAN VOWEL SIGN VOCALIC L
      "\d0F93",  #  TIBETAN SUBJOINED LETTER GHA
      "\d0F9D",  #  TIBETAN SUBJOINED LETTER DDHA
      "\d0FA2",  #  TIBETAN SUBJOINED LETTER DHA
      "\d0FA7",  #  TIBETAN SUBJOINED LETTER BHA
      "\d0FAC",  #  TIBETAN SUBJOINED LETTER DZHA
      "\d0FB9",  #  TIBETAN SUBJOINED LETTER KSSA
      "\dFB1D",  #  HEBREW LETTER YOD WITH HIRIQ
      "\dFB1F",  #  HEBREW LIGATURE YIDDISH YOD YOD PATAH
      "\dFB2A",  #  HEBREW LETTER SHIN WITH SHIN DOT
      "\dFB2B",  #  HEBREW LETTER SHIN WITH SIN DOT
      "\dFB2C",  #  HEBREW LETTER SHIN WITH DAGESH AND SHIN DOT
      "\dFB2D",  #  HEBREW LETTER SHIN WITH DAGESH AND SIN DOT
      "\dFB2E",  #  HEBREW LETTER ALEF WITH PATAH
      "\dFB2F",  #  HEBREW LETTER ALEF WITH QAMATS
      "\dFB30",  #  HEBREW LETTER ALEF WITH MAPIQ
      "\dFB31",  #  HEBREW LETTER BET WITH DAGESH
      "\dFB32",  #  HEBREW LETTER GIMEL WITH DAGESH
      "\dFB33",  #  HEBREW LETTER DALET WITH DAGESH
      "\dFB34",  #  HEBREW LETTER HE WITH MAPIQ
      "\dFB35",  #  HEBREW LETTER VAV WITH DAGESH
      "\dFB36",  #  HEBREW LETTER ZAYIN WITH DAGESH
      "\dFB38",  #  HEBREW LETTER TET WITH DAGESH
      "\dFB39",  #  HEBREW LETTER YOD WITH DAGESH
      "\dFB3A",  #  HEBREW LETTER FINAL KAF WITH DAGESH
      "\dFB3B",  #  HEBREW LETTER KAF WITH DAGESH
      "\dFB3C",  #  HEBREW LETTER LAMED WITH DAGESH
      "\dFB3E",  #  HEBREW LETTER MEM WITH DAGESH
      "\dFB40",  #  HEBREW LETTER NUN WITH DAGESH
      "\dFB41",  #  HEBREW LETTER SAMEKH WITH DAGESH
      "\dFB43",  #  HEBREW LETTER FINAL PE WITH DAGESH
      "\dFB44",  #  HEBREW LETTER PE WITH DAGESH
      "\dFB46",  #  HEBREW LETTER TSADI WITH DAGESH
      "\dFB47",  #  HEBREW LETTER QOF WITH DAGESH
      "\dFB48",  #  HEBREW LETTER RESH WITH DAGESH
      "\dFB49",  #  HEBREW LETTER SHIN WITH DAGESH
      "\dFB4A",  #  HEBREW LETTER TAV WITH DAGESH
      "\dFB4B",  #  HEBREW LETTER VAV WITH HOLAM
      "\dFB4C",  #  HEBREW LETTER BET WITH RAFE
      "\dFB4D",  #  HEBREW LETTER KAF WITH RAFE
      "\dFB4E",  #  HEBREW LETTER PE WITH RAFE
      "\d2ADC",  #  FORKING
      "\d1D15E",  #  MUSICAL SYMBOL HALF NOTE
      "\d1D15F",  #  MUSICAL SYMBOL QUARTER NOTE
      "\d1D160",  #  MUSICAL SYMBOL EIGHTH NOTE
      "\d1D161",  #  MUSICAL SYMBOL SIXTEENTH NOTE
      "\d1D162",  #  MUSICAL SYMBOL THIRTY-SECOND NOTE
      "\d1D163",  #  MUSICAL SYMBOL SIXTY-FOURTH NOTE
      "\d1D164",  #  MUSICAL SYMBOL ONE HUNDRED TWENTY-EIGHTH NOTE
      "\d1D1BB",  #  MUSICAL SYMBOL MINIMA
      "\d1D1BC",  #  MUSICAL SYMBOL MINIMA BLACK
      "\d1D1BD",  #  MUSICAL SYMBOL SEMIMINIMA WHITE
      "\d1D1BE",  #  MUSICAL SYMBOL SEMIMINIMA BLACK
      "\d1D1BF",  #  MUSICAL SYMBOL FUSA WHITE
      "\d1D1C0",  #  MUSICAL SYMBOL FUSA BLACK
    ]
    test_data.each do |string|
      assert @validator.valid_encoding?(string), "U10_CompositionExclusions: #{string}"
      assert string.force_encoding("UTF-8").valid_encoding?, "U10_CompositionExclusions: #{string}" if @vercheck
    end
  end

end

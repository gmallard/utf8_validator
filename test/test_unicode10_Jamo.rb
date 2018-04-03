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
class TestUnicode10Jamo < Test::Unit::TestCase
  #
  def setup
    @validator = UTF8::Validator.new
    @vercheck = ((RUBY_VERSION =~ /1.9/) or (RUBY_VERSION =~ /2./)) ? true : false
  end

  #
  def teardown
    @validator = nil
  end

  def test_unicode10_Jamo
    test_data = [
    "\u1100",  # ; G   # HANGUL CHOSEONG KIYEOK
    "\u1101",  # ; GG  # HANGUL CHOSEONG SSANGKIYEOK
    "\u1102",  # ; N   # HANGUL CHOSEONG NIEUN
    "\u1103",  # ; D   # HANGUL CHOSEONG TIKEUT
    "\u1104",  # ; DD  # HANGUL CHOSEONG SSANGTIKEUT
    "\u1105",  # ; R   # HANGUL CHOSEONG RIEUL
    "\u1106",  # ; M   # HANGUL CHOSEONG MIEUM
    "\u1107",  # ; B   # HANGUL CHOSEONG PIEUP
    "\u1108",  # ; BB  # HANGUL CHOSEONG SSANGPIEUP
    "\u1109",  # ; S   # HANGUL CHOSEONG SIOS
    "\u110A",  # ; SS  # HANGUL CHOSEONG SSANGSIOS
    "\u110B",  # ;     # HANGUL CHOSEONG IEUNG
    "\u110C",  # ; J   # HANGUL CHOSEONG CIEUC
    "\u110D",  # ; JJ  # HANGUL CHOSEONG SSANGCIEUC
    "\u110E",  # ; C   # HANGUL CHOSEONG CHIEUCH
    "\u110F",  # ; K   # HANGUL CHOSEONG KHIEUKH
    "\u1110",  # ; T   # HANGUL CHOSEONG THIEUTH
    "\u1111",  # ; P   # HANGUL CHOSEONG PHIEUPH
    "\u1112",  # ; H   # HANGUL CHOSEONG HIEUH
    "\u1161",  # ; A   # HANGUL JUNGSEONG A
    "\u1162",  # ; AE  # HANGUL JUNGSEONG AE
    "\u1163",  # ; YA  # HANGUL JUNGSEONG YA
    "\u1164",  # ; YAE # HANGUL JUNGSEONG YAE
    "\u1165",  # ; EO  # HANGUL JUNGSEONG EO
    "\u1166",  # ; E   # HANGUL JUNGSEONG E
    "\u1167",  # ; YEO # HANGUL JUNGSEONG YEO
    "\u1168",  # ; YE  # HANGUL JUNGSEONG YE
    "\u1169",  # ; O   # HANGUL JUNGSEONG O
    "\u116A",  # ; WA  # HANGUL JUNGSEONG WA
    "\u116B",  # ; WAE # HANGUL JUNGSEONG WAE
    "\u116C",  # ; OE  # HANGUL JUNGSEONG OE
    "\u116D",  # ; YO  # HANGUL JUNGSEONG YO
    "\u116E",  # ; U   # HANGUL JUNGSEONG U
    "\u116F",  # ; WEO # HANGUL JUNGSEONG WEO
    "\u1170",  # ; WE  # HANGUL JUNGSEONG WE
    "\u1171",  # ; WI  # HANGUL JUNGSEONG WI
    "\u1172",  # ; YU  # HANGUL JUNGSEONG YU
    "\u1173",  # ; EU  # HANGUL JUNGSEONG EU
    "\u1174",  # ; YI  # HANGUL JUNGSEONG YI
    "\u1175",  # ; I   # HANGUL JUNGSEONG I
    "\u11A8",  # ; G   # HANGUL JONGSEONG KIYEOK
    "\u11A9",  # ; GG  # HANGUL JONGSEONG SSANGKIYEOK
    "\u11AA",  # ; GS  # HANGUL JONGSEONG KIYEOK-SIOS
    "\u11AB",  # ; N   # HANGUL JONGSEONG NIEUN
    "\u11AC",  # ; NJ  # HANGUL JONGSEONG NIEUN-CIEUC
    "\u11AD",  # ; NH  # HANGUL JONGSEONG NIEUN-HIEUH
    "\u11AE",  # ; D   # HANGUL JONGSEONG TIKEUT
    "\u11AF",  # ; L   # HANGUL JONGSEONG RIEUL
    "\u11B0",  # ; LG  # HANGUL JONGSEONG RIEUL-KIYEOK
    "\u11B1",  # ; LM  # HANGUL JONGSEONG RIEUL-MIEUM
    "\u11B2",  # ; LB  # HANGUL JONGSEONG RIEUL-PIEUP
    "\u11B3",  # ; LS  # HANGUL JONGSEONG RIEUL-SIOS
    "\u11B4",  # ; LT  # HANGUL JONGSEONG RIEUL-THIEUTH
    "\u11B5",  # ; LP  # HANGUL JONGSEONG RIEUL-PHIEUPH
    "\u11B6",  # ; LH  # HANGUL JONGSEONG RIEUL-HIEUH
    "\u11B7",  # ; M   # HANGUL JONGSEONG MIEUM
    "\u11B8",  # ; B   # HANGUL JONGSEONG PIEUP
    "\u11B9",  # ; BS  # HANGUL JONGSEONG PIEUP-SIOS
    "\u11BA",  # ; S   # HANGUL JONGSEONG SIOS
    "\u11BB",  # ; SS  # HANGUL JONGSEONG SSANGSIOS
    "\u11BC",  # ; NG  # HANGUL JONGSEONG IEUNG
    "\u11BD",  # ; J   # HANGUL JONGSEONG CIEUC
    "\u11BE",  # ; C   # HANGUL JONGSEONG CHIEUCH
    "\u11BF",  # ; K   # HANGUL JONGSEONG KHIEUKH
    "\u11C0",  # ; T   # HANGUL JONGSEONG THIEUTH
    "\u11C1",  # ; P   # HANGUL JONGSEONG PHIEUPH
    "\u11C2",  # ; H   # HANGUL JONGSEONG HIEUH
    ]
    test_data.each do |string|
      assert @validator.valid_encoding?(string), "U10_Jamo: #{string}"
      assert string.force_encoding("UTF-8").valid_encoding?, "U10_Jamo: #{string}" if @vercheck
    end
  end

end

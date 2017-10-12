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
    "\d1100",  # ; G   # HANGUL CHOSEONG KIYEOK
    "\d1101",  # ; GG  # HANGUL CHOSEONG SSANGKIYEOK
    "\d1102",  # ; N   # HANGUL CHOSEONG NIEUN
    "\d1103",  # ; D   # HANGUL CHOSEONG TIKEUT
    "\d1104",  # ; DD  # HANGUL CHOSEONG SSANGTIKEUT
    "\d1105",  # ; R   # HANGUL CHOSEONG RIEUL
    "\d1106",  # ; M   # HANGUL CHOSEONG MIEUM
    "\d1107",  # ; B   # HANGUL CHOSEONG PIEUP
    "\d1108",  # ; BB  # HANGUL CHOSEONG SSANGPIEUP
    "\d1109",  # ; S   # HANGUL CHOSEONG SIOS
    "\d110A",  # ; SS  # HANGUL CHOSEONG SSANGSIOS
    "\d110B",  # ;     # HANGUL CHOSEONG IEUNG
    "\d110C",  # ; J   # HANGUL CHOSEONG CIEUC
    "\d110D",  # ; JJ  # HANGUL CHOSEONG SSANGCIEUC
    "\d110E",  # ; C   # HANGUL CHOSEONG CHIEUCH
    "\d110F",  # ; K   # HANGUL CHOSEONG KHIEUKH
    "\d1110",  # ; T   # HANGUL CHOSEONG THIEUTH
    "\d1111",  # ; P   # HANGUL CHOSEONG PHIEUPH
    "\d1112",  # ; H   # HANGUL CHOSEONG HIEUH
    "\d1161",  # ; A   # HANGUL JUNGSEONG A
    "\d1162",  # ; AE  # HANGUL JUNGSEONG AE
    "\d1163",  # ; YA  # HANGUL JUNGSEONG YA
    "\d1164",  # ; YAE # HANGUL JUNGSEONG YAE
    "\d1165",  # ; EO  # HANGUL JUNGSEONG EO
    "\d1166",  # ; E   # HANGUL JUNGSEONG E
    "\d1167",  # ; YEO # HANGUL JUNGSEONG YEO
    "\d1168",  # ; YE  # HANGUL JUNGSEONG YE
    "\d1169",  # ; O   # HANGUL JUNGSEONG O
    "\d116A",  # ; WA  # HANGUL JUNGSEONG WA
    "\d116B",  # ; WAE # HANGUL JUNGSEONG WAE
    "\d116C",  # ; OE  # HANGUL JUNGSEONG OE
    "\d116D",  # ; YO  # HANGUL JUNGSEONG YO
    "\d116E",  # ; U   # HANGUL JUNGSEONG U
    "\d116F",  # ; WEO # HANGUL JUNGSEONG WEO
    "\d1170",  # ; WE  # HANGUL JUNGSEONG WE
    "\d1171",  # ; WI  # HANGUL JUNGSEONG WI
    "\d1172",  # ; YU  # HANGUL JUNGSEONG YU
    "\d1173",  # ; EU  # HANGUL JUNGSEONG EU
    "\d1174",  # ; YI  # HANGUL JUNGSEONG YI
    "\d1175",  # ; I   # HANGUL JUNGSEONG I
    "\d11A8",  # ; G   # HANGUL JONGSEONG KIYEOK
    "\d11A9",  # ; GG  # HANGUL JONGSEONG SSANGKIYEOK
    "\d11AA",  # ; GS  # HANGUL JONGSEONG KIYEOK-SIOS
    "\d11AB",  # ; N   # HANGUL JONGSEONG NIEUN
    "\d11AC",  # ; NJ  # HANGUL JONGSEONG NIEUN-CIEUC
    "\d11AD",  # ; NH  # HANGUL JONGSEONG NIEUN-HIEUH
    "\d11AE",  # ; D   # HANGUL JONGSEONG TIKEUT
    "\d11AF",  # ; L   # HANGUL JONGSEONG RIEUL
    "\d11B0",  # ; LG  # HANGUL JONGSEONG RIEUL-KIYEOK
    "\d11B1",  # ; LM  # HANGUL JONGSEONG RIEUL-MIEUM
    "\d11B2",  # ; LB  # HANGUL JONGSEONG RIEUL-PIEUP
    "\d11B3",  # ; LS  # HANGUL JONGSEONG RIEUL-SIOS
    "\d11B4",  # ; LT  # HANGUL JONGSEONG RIEUL-THIEUTH
    "\d11B5",  # ; LP  # HANGUL JONGSEONG RIEUL-PHIEUPH
    "\d11B6",  # ; LH  # HANGUL JONGSEONG RIEUL-HIEUH
    "\d11B7",  # ; M   # HANGUL JONGSEONG MIEUM
    "\d11B8",  # ; B   # HANGUL JONGSEONG PIEUP
    "\d11B9",  # ; BS  # HANGUL JONGSEONG PIEUP-SIOS
    "\d11BA",  # ; S   # HANGUL JONGSEONG SIOS
    "\d11BB",  # ; SS  # HANGUL JONGSEONG SSANGSIOS
    "\d11BC",  # ; NG  # HANGUL JONGSEONG IEUNG
    "\d11BD",  # ; J   # HANGUL JONGSEONG CIEUC
    "\d11BE",  # ; C   # HANGUL JONGSEONG CHIEUCH
    "\d11BF",  # ; K   # HANGUL JONGSEONG KHIEUKH
    "\d11C0",  # ; T   # HANGUL JONGSEONG THIEUTH
    "\d11C1",  # ; P   # HANGUL JONGSEONG PHIEUPH
    "\d11C2",  # ; H   # HANGUL JONGSEONG HIEUH
    ]
    test_data.each do |string|
      assert @validator.valid_encoding?(string), "U10_Jamo: #{string}"
      assert string.force_encoding("UTF-8").valid_encoding?, "U10_Jamo: #{string}" if @vercheck
    end
  end

end

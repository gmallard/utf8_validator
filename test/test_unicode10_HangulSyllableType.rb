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
class TestUnicode10HangulSyllableType < Test::Unit::TestCase
  #
  def setup
    @validator = UTF8::Validator.new
    @vercheck = ((RUBY_VERSION =~ /1.9/) or (RUBY_VERSION =~ /2./)) ? true : false
  end

  #
  def teardown
    @validator = nil
  end

  def test_unicode10_HangulSyllableType
    test_data = [
      "\d1100..115F",  # Lo  [96] HANGUL CHOSEONG KIYEOK..HANGUL CHOSEONG FILLER
      "\dL",  # Lo  [96] HANGUL CHOSEONG KIYEOK..HANGUL CHOSEONG FILLER
      "\dA960..A97C",  # Lo  [29] HANGUL CHOSEONG TIKEUT-MIEUM..HANGUL CHOSEONG SSANGYEORINHIEUH
      "\dL",  # Lo  [29] HANGUL CHOSEONG TIKEUT-MIEUM..HANGUL CHOSEONG SSANGYEORINHIEUH
      "\d1160..11A7",  # Lo  [72] HANGUL JUNGSEONG FILLER..HANGUL JUNGSEONG O-YAE
      "\dV",  # Lo  [72] HANGUL JUNGSEONG FILLER..HANGUL JUNGSEONG O-YAE
      "\dD7B0..D7C6",  # Lo  [23] HANGUL JUNGSEONG O-YEO..HANGUL JUNGSEONG ARAEA-E
      "\dV",  # Lo  [23] HANGUL JUNGSEONG O-YEO..HANGUL JUNGSEONG ARAEA-E
      "\d11A8..11FF",  # Lo  [88] HANGUL JONGSEONG KIYEOK..HANGUL JONGSEONG SSANGNIEUN
      "\dD7CB..D7FB",  # Lo  [49] HANGUL JONGSEONG NIEUN-RIEUL..HANGUL JONGSEONG PHIEUPH-THIEUTH
      "\dAC00",  # Lo       HANGUL SYLLABLE GA
      "\dLV",  # Lo       HANGUL SYLLABLE GA
      "\dAC1C",  # Lo       HANGUL SYLLABLE GAE
      "\dLV",  # Lo       HANGUL SYLLABLE GAE
      "\dAC38",  # Lo       HANGUL SYLLABLE GYA
      "\dLV",  # Lo       HANGUL SYLLABLE GYA
      "\dAC54",  # Lo       HANGUL SYLLABLE GYAE
      "\dLV",  # Lo       HANGUL SYLLABLE GYAE
      "\dAC70",  # Lo       HANGUL SYLLABLE GEO
      "\dLV",  # Lo       HANGUL SYLLABLE GEO
      "\dAC8C",  # Lo       HANGUL SYLLABLE GE
      "\dLV",  # Lo       HANGUL SYLLABLE GE
      "\dACA8",  # Lo       HANGUL SYLLABLE GYEO
      "\dLV",  # Lo       HANGUL SYLLABLE GYEO
      "\dACC4",  # Lo       HANGUL SYLLABLE GYE
      "\dLV",  # Lo       HANGUL SYLLABLE GYE
      "\dACE0",  # Lo       HANGUL SYLLABLE GO
      "\dLV",  # Lo       HANGUL SYLLABLE GO
      "\dACFC",  # Lo       HANGUL SYLLABLE GWA
      "\dLV",  # Lo       HANGUL SYLLABLE GWA
      "\dAD18",  # Lo       HANGUL SYLLABLE GWAE
      "\dLV",  # Lo       HANGUL SYLLABLE GWAE
      "\dAD34",  # Lo       HANGUL SYLLABLE GOE
      "\dLV",  # Lo       HANGUL SYLLABLE GOE
      "\dAD50",  # Lo       HANGUL SYLLABLE GYO
      "\dLV",  # Lo       HANGUL SYLLABLE GYO
      "\dAD6C",  # Lo       HANGUL SYLLABLE GU
      "\dLV",  # Lo       HANGUL SYLLABLE GU
      "\dAD88",  # Lo       HANGUL SYLLABLE GWEO
      "\dLV",  # Lo       HANGUL SYLLABLE GWEO
      "\dADA4",  # Lo       HANGUL SYLLABLE GWE
      "\dLV",  # Lo       HANGUL SYLLABLE GWE
      "\dADC0",  # Lo       HANGUL SYLLABLE GWI
      "\dLV",  # Lo       HANGUL SYLLABLE GWI
      "\dADDC",  # Lo       HANGUL SYLLABLE GYU
      "\dLV",  # Lo       HANGUL SYLLABLE GYU
      "\dADF8",  # Lo       HANGUL SYLLABLE GEU
      "\dLV",  # Lo       HANGUL SYLLABLE GEU
      "\dAE14",  # Lo       HANGUL SYLLABLE GYI
      "\dLV",  # Lo       HANGUL SYLLABLE GYI
      "\dAE30",  # Lo       HANGUL SYLLABLE GI
      "\dLV",  # Lo       HANGUL SYLLABLE GI
      "\dAE4C",  # Lo       HANGUL SYLLABLE GGA
      "\dLV",  # Lo       HANGUL SYLLABLE GGA
      "\dAE68",  # Lo       HANGUL SYLLABLE GGAE
      "\dLV",  # Lo       HANGUL SYLLABLE GGAE
      "\dAE84",  # Lo       HANGUL SYLLABLE GGYA
      "\dLV",  # Lo       HANGUL SYLLABLE GGYA
      "\dAEA0",  # Lo       HANGUL SYLLABLE GGYAE
      "\dLV",  # Lo       HANGUL SYLLABLE GGYAE
      "\dAEBC",  # Lo       HANGUL SYLLABLE GGEO
      "\dLV",  # Lo       HANGUL SYLLABLE GGEO
      "\dAED8",  # Lo       HANGUL SYLLABLE GGE
      "\dLV",  # Lo       HANGUL SYLLABLE GGE
      "\dAEF4",  # Lo       HANGUL SYLLABLE GGYEO
      "\dLV",  # Lo       HANGUL SYLLABLE GGYEO
      "\dAF10",  # Lo       HANGUL SYLLABLE GGYE
      "\dLV",  # Lo       HANGUL SYLLABLE GGYE
      "\dAF2C",  # Lo       HANGUL SYLLABLE GGO
      "\dLV",  # Lo       HANGUL SYLLABLE GGO
      "\dAF48",  # Lo       HANGUL SYLLABLE GGWA
      "\dLV",  # Lo       HANGUL SYLLABLE GGWA
      "\dAF64",  # Lo       HANGUL SYLLABLE GGWAE
      "\dLV",  # Lo       HANGUL SYLLABLE GGWAE
      "\dAF80",  # Lo       HANGUL SYLLABLE GGOE
      "\dLV",  # Lo       HANGUL SYLLABLE GGOE
      "\dAF9C",  # Lo       HANGUL SYLLABLE GGYO
      "\dLV",  # Lo       HANGUL SYLLABLE GGYO
      "\dAFB8",  # Lo       HANGUL SYLLABLE GGU
      "\dLV",  # Lo       HANGUL SYLLABLE GGU
      "\dAFD4",  # Lo       HANGUL SYLLABLE GGWEO
      "\dLV",  # Lo       HANGUL SYLLABLE GGWEO
      "\dAFF0",  # Lo       HANGUL SYLLABLE GGWE
      "\dLV",  # Lo       HANGUL SYLLABLE GGWE
      "\dB00C",  # Lo       HANGUL SYLLABLE GGWI
      "\dLV",  # Lo       HANGUL SYLLABLE GGWI
      "\dB028",  # Lo       HANGUL SYLLABLE GGYU
      "\dLV",  # Lo       HANGUL SYLLABLE GGYU
      "\dB044",  # Lo       HANGUL SYLLABLE GGEU
      "\dLV",  # Lo       HANGUL SYLLABLE GGEU
      "\dB060",  # Lo       HANGUL SYLLABLE GGYI
      "\dLV",  # Lo       HANGUL SYLLABLE GGYI
      "\dB07C",  # Lo       HANGUL SYLLABLE GGI
      "\dLV",  # Lo       HANGUL SYLLABLE GGI
      "\dB098",  # Lo       HANGUL SYLLABLE NA
      "\dLV",  # Lo       HANGUL SYLLABLE NA
      "\dB0B4",  # Lo       HANGUL SYLLABLE NAE
      "\dLV",  # Lo       HANGUL SYLLABLE NAE
      "\dB0D0",  # Lo       HANGUL SYLLABLE NYA
      "\dLV",  # Lo       HANGUL SYLLABLE NYA
      "\dB0EC",  # Lo       HANGUL SYLLABLE NYAE
      "\dLV",  # Lo       HANGUL SYLLABLE NYAE
      "\dB108",  # Lo       HANGUL SYLLABLE NEO
      "\dLV",  # Lo       HANGUL SYLLABLE NEO
      "\dB124",  # Lo       HANGUL SYLLABLE NE
      "\dLV",  # Lo       HANGUL SYLLABLE NE
      "\dB140",  # Lo       HANGUL SYLLABLE NYEO
      "\dLV",  # Lo       HANGUL SYLLABLE NYEO
      "\dB15C",  # Lo       HANGUL SYLLABLE NYE
      "\dLV",  # Lo       HANGUL SYLLABLE NYE
      "\dB178",  # Lo       HANGUL SYLLABLE NO
      "\dLV",  # Lo       HANGUL SYLLABLE NO
      "\dB194",  # Lo       HANGUL SYLLABLE NWA
      "\dLV",  # Lo       HANGUL SYLLABLE NWA
      "\dB1B0",  # Lo       HANGUL SYLLABLE NWAE
      "\dLV",  # Lo       HANGUL SYLLABLE NWAE
      "\dB1CC",  # Lo       HANGUL SYLLABLE NOE
      "\dLV",  # Lo       HANGUL SYLLABLE NOE
      "\dB1E8",  # Lo       HANGUL SYLLABLE NYO
      "\dLV",  # Lo       HANGUL SYLLABLE NYO
      "\dB204",  # Lo       HANGUL SYLLABLE NU
      "\dLV",  # Lo       HANGUL SYLLABLE NU
      "\dB220",  # Lo       HANGUL SYLLABLE NWEO
      "\dLV",  # Lo       HANGUL SYLLABLE NWEO
      "\dB23C",  # Lo       HANGUL SYLLABLE NWE
      "\dLV",  # Lo       HANGUL SYLLABLE NWE
      "\dB258",  # Lo       HANGUL SYLLABLE NWI
      "\dLV",  # Lo       HANGUL SYLLABLE NWI
      "\dB274",  # Lo       HANGUL SYLLABLE NYU
      "\dLV",  # Lo       HANGUL SYLLABLE NYU
      "\dB290",  # Lo       HANGUL SYLLABLE NEU
      "\dLV",  # Lo       HANGUL SYLLABLE NEU
      "\dB2AC",  # Lo       HANGUL SYLLABLE NYI
      "\dLV",  # Lo       HANGUL SYLLABLE NYI
      "\dB2C8",  # Lo       HANGUL SYLLABLE NI
      "\dLV",  # Lo       HANGUL SYLLABLE NI
      "\dB2E4",  # Lo       HANGUL SYLLABLE DA
      "\dLV",  # Lo       HANGUL SYLLABLE DA
      "\dB300",  # Lo       HANGUL SYLLABLE DAE
      "\dLV",  # Lo       HANGUL SYLLABLE DAE
      "\dB31C",  # Lo       HANGUL SYLLABLE DYA
      "\dLV",  # Lo       HANGUL SYLLABLE DYA
      "\dB338",  # Lo       HANGUL SYLLABLE DYAE
      "\dLV",  # Lo       HANGUL SYLLABLE DYAE
      "\dB354",  # Lo       HANGUL SYLLABLE DEO
      "\dLV",  # Lo       HANGUL SYLLABLE DEO
      "\dB370",  # Lo       HANGUL SYLLABLE DE
      "\dLV",  # Lo       HANGUL SYLLABLE DE
      "\dB38C",  # Lo       HANGUL SYLLABLE DYEO
      "\dLV",  # Lo       HANGUL SYLLABLE DYEO
      "\dB3A8",  # Lo       HANGUL SYLLABLE DYE
      "\dLV",  # Lo       HANGUL SYLLABLE DYE
      "\dB3C4",  # Lo       HANGUL SYLLABLE DO
      "\dLV",  # Lo       HANGUL SYLLABLE DO
      "\dB3E0",  # Lo       HANGUL SYLLABLE DWA
      "\dLV",  # Lo       HANGUL SYLLABLE DWA
      "\dB3FC",  # Lo       HANGUL SYLLABLE DWAE
      "\dLV",  # Lo       HANGUL SYLLABLE DWAE
      "\dB418",  # Lo       HANGUL SYLLABLE DOE
      "\dLV",  # Lo       HANGUL SYLLABLE DOE
      "\dB434",  # Lo       HANGUL SYLLABLE DYO
      "\dLV",  # Lo       HANGUL SYLLABLE DYO
      "\dB450",  # Lo       HANGUL SYLLABLE DU
      "\dLV",  # Lo       HANGUL SYLLABLE DU
      "\dB46C",  # Lo       HANGUL SYLLABLE DWEO
      "\dLV",  # Lo       HANGUL SYLLABLE DWEO
      "\dB488",  # Lo       HANGUL SYLLABLE DWE
      "\dLV",  # Lo       HANGUL SYLLABLE DWE
      "\dB4A4",  # Lo       HANGUL SYLLABLE DWI
      "\dLV",  # Lo       HANGUL SYLLABLE DWI
      "\dB4C0",  # Lo       HANGUL SYLLABLE DYU
      "\dLV",  # Lo       HANGUL SYLLABLE DYU
      "\dB4DC",  # Lo       HANGUL SYLLABLE DEU
      "\dLV",  # Lo       HANGUL SYLLABLE DEU
      "\dB4F8",  # Lo       HANGUL SYLLABLE DYI
      "\dLV",  # Lo       HANGUL SYLLABLE DYI
      "\dB514",  # Lo       HANGUL SYLLABLE DI
      "\dLV",  # Lo       HANGUL SYLLABLE DI
      "\dB530",  # Lo       HANGUL SYLLABLE DDA
      "\dLV",  # Lo       HANGUL SYLLABLE DDA
      "\dB54C",  # Lo       HANGUL SYLLABLE DDAE
      "\dLV",  # Lo       HANGUL SYLLABLE DDAE
      "\dB568",  # Lo       HANGUL SYLLABLE DDYA
      "\dLV",  # Lo       HANGUL SYLLABLE DDYA
      "\dB584",  # Lo       HANGUL SYLLABLE DDYAE
      "\dLV",  # Lo       HANGUL SYLLABLE DDYAE
      "\dB5A0",  # Lo       HANGUL SYLLABLE DDEO
      "\dLV",  # Lo       HANGUL SYLLABLE DDEO
      "\dB5BC",  # Lo       HANGUL SYLLABLE DDE
      "\dLV",  # Lo       HANGUL SYLLABLE DDE
      "\dB5D8",  # Lo       HANGUL SYLLABLE DDYEO
      "\dLV",  # Lo       HANGUL SYLLABLE DDYEO
      "\dB5F4",  # Lo       HANGUL SYLLABLE DDYE
      "\dLV",  # Lo       HANGUL SYLLABLE DDYE
      "\dB610",  # Lo       HANGUL SYLLABLE DDO
      "\dLV",  # Lo       HANGUL SYLLABLE DDO
      "\dB62C",  # Lo       HANGUL SYLLABLE DDWA
      "\dLV",  # Lo       HANGUL SYLLABLE DDWA
      "\dB648",  # Lo       HANGUL SYLLABLE DDWAE
      "\dLV",  # Lo       HANGUL SYLLABLE DDWAE
      "\dB664",  # Lo       HANGUL SYLLABLE DDOE
      "\dLV",  # Lo       HANGUL SYLLABLE DDOE
      "\dB680",  # Lo       HANGUL SYLLABLE DDYO
      "\dLV",  # Lo       HANGUL SYLLABLE DDYO
      "\dB69C",  # Lo       HANGUL SYLLABLE DDU
      "\dLV",  # Lo       HANGUL SYLLABLE DDU
      "\dB6B8",  # Lo       HANGUL SYLLABLE DDWEO
      "\dLV",  # Lo       HANGUL SYLLABLE DDWEO
      "\dB6D4",  # Lo       HANGUL SYLLABLE DDWE
      "\dLV",  # Lo       HANGUL SYLLABLE DDWE
      "\dB6F0",  # Lo       HANGUL SYLLABLE DDWI
      "\dLV",  # Lo       HANGUL SYLLABLE DDWI
      "\dB70C",  # Lo       HANGUL SYLLABLE DDYU
      "\dLV",  # Lo       HANGUL SYLLABLE DDYU
      "\dB728",  # Lo       HANGUL SYLLABLE DDEU
      "\dLV",  # Lo       HANGUL SYLLABLE DDEU
      "\dB744",  # Lo       HANGUL SYLLABLE DDYI
      "\dLV",  # Lo       HANGUL SYLLABLE DDYI
      "\dB760",  # Lo       HANGUL SYLLABLE DDI
      "\dLV",  # Lo       HANGUL SYLLABLE DDI
      "\dB77C",  # Lo       HANGUL SYLLABLE RA
      "\dLV",  # Lo       HANGUL SYLLABLE RA
      "\dB798",  # Lo       HANGUL SYLLABLE RAE
      "\dLV",  # Lo       HANGUL SYLLABLE RAE
      "\dB7B4",  # Lo       HANGUL SYLLABLE RYA
      "\dLV",  # Lo       HANGUL SYLLABLE RYA
      "\dB7D0",  # Lo       HANGUL SYLLABLE RYAE
      "\dLV",  # Lo       HANGUL SYLLABLE RYAE
      "\dB7EC",  # Lo       HANGUL SYLLABLE REO
      "\dLV",  # Lo       HANGUL SYLLABLE REO
      "\dB808",  # Lo       HANGUL SYLLABLE RE
      "\dLV",  # Lo       HANGUL SYLLABLE RE
      "\dB824",  # Lo       HANGUL SYLLABLE RYEO
      "\dLV",  # Lo       HANGUL SYLLABLE RYEO
      "\dB840",  # Lo       HANGUL SYLLABLE RYE
      "\dLV",  # Lo       HANGUL SYLLABLE RYE
      "\dB85C",  # Lo       HANGUL SYLLABLE RO
      "\dLV",  # Lo       HANGUL SYLLABLE RO
      "\dB878",  # Lo       HANGUL SYLLABLE RWA
      "\dLV",  # Lo       HANGUL SYLLABLE RWA
      "\dB894",  # Lo       HANGUL SYLLABLE RWAE
      "\dLV",  # Lo       HANGUL SYLLABLE RWAE
      "\dB8B0",  # Lo       HANGUL SYLLABLE ROE
      "\dLV",  # Lo       HANGUL SYLLABLE ROE
      "\dB8CC",  # Lo       HANGUL SYLLABLE RYO
      "\dLV",  # Lo       HANGUL SYLLABLE RYO
      "\dB8E8",  # Lo       HANGUL SYLLABLE RU
      "\dLV",  # Lo       HANGUL SYLLABLE RU
      "\dB904",  # Lo       HANGUL SYLLABLE RWEO
      "\dLV",  # Lo       HANGUL SYLLABLE RWEO
      "\dB920",  # Lo       HANGUL SYLLABLE RWE
      "\dLV",  # Lo       HANGUL SYLLABLE RWE
      "\dB93C",  # Lo       HANGUL SYLLABLE RWI
      "\dLV",  # Lo       HANGUL SYLLABLE RWI
      "\dB958",  # Lo       HANGUL SYLLABLE RYU
      "\dLV",  # Lo       HANGUL SYLLABLE RYU
      "\dB974",  # Lo       HANGUL SYLLABLE REU
      "\dLV",  # Lo       HANGUL SYLLABLE REU
      "\dB990",  # Lo       HANGUL SYLLABLE RYI
      "\dLV",  # Lo       HANGUL SYLLABLE RYI
      "\dB9AC",  # Lo       HANGUL SYLLABLE RI
      "\dLV",  # Lo       HANGUL SYLLABLE RI
      "\dB9C8",  # Lo       HANGUL SYLLABLE MA
      "\dLV",  # Lo       HANGUL SYLLABLE MA
      "\dB9E4",  # Lo       HANGUL SYLLABLE MAE
      "\dLV",  # Lo       HANGUL SYLLABLE MAE
      "\dBA00",  # Lo       HANGUL SYLLABLE MYA
      "\dLV",  # Lo       HANGUL SYLLABLE MYA
      "\dBA1C",  # Lo       HANGUL SYLLABLE MYAE
      "\dLV",  # Lo       HANGUL SYLLABLE MYAE
      "\dBA38",  # Lo       HANGUL SYLLABLE MEO
      "\dLV",  # Lo       HANGUL SYLLABLE MEO
      "\dBA54",  # Lo       HANGUL SYLLABLE ME
      "\dLV",  # Lo       HANGUL SYLLABLE ME
      "\dBA70",  # Lo       HANGUL SYLLABLE MYEO
      "\dLV",  # Lo       HANGUL SYLLABLE MYEO
      "\dBA8C",  # Lo       HANGUL SYLLABLE MYE
      "\dLV",  # Lo       HANGUL SYLLABLE MYE
      "\dBAA8",  # Lo       HANGUL SYLLABLE MO
      "\dLV",  # Lo       HANGUL SYLLABLE MO
      "\dBAC4",  # Lo       HANGUL SYLLABLE MWA
      "\dLV",  # Lo       HANGUL SYLLABLE MWA
      "\dBAE0",  # Lo       HANGUL SYLLABLE MWAE
      "\dLV",  # Lo       HANGUL SYLLABLE MWAE
      "\dBAFC",  # Lo       HANGUL SYLLABLE MOE
      "\dLV",  # Lo       HANGUL SYLLABLE MOE
      "\dBB18",  # Lo       HANGUL SYLLABLE MYO
      "\dLV",  # Lo       HANGUL SYLLABLE MYO
      "\dBB34",  # Lo       HANGUL SYLLABLE MU
      "\dLV",  # Lo       HANGUL SYLLABLE MU
      "\dBB50",  # Lo       HANGUL SYLLABLE MWEO
      "\dLV",  # Lo       HANGUL SYLLABLE MWEO
      "\dBB6C",  # Lo       HANGUL SYLLABLE MWE
      "\dLV",  # Lo       HANGUL SYLLABLE MWE
      "\dBB88",  # Lo       HANGUL SYLLABLE MWI
      "\dLV",  # Lo       HANGUL SYLLABLE MWI
      "\dBBA4",  # Lo       HANGUL SYLLABLE MYU
      "\dLV",  # Lo       HANGUL SYLLABLE MYU
      "\dBBC0",  # Lo       HANGUL SYLLABLE MEU
      "\dLV",  # Lo       HANGUL SYLLABLE MEU
      "\dBBDC",  # Lo       HANGUL SYLLABLE MYI
      "\dLV",  # Lo       HANGUL SYLLABLE MYI
      "\dBBF8",  # Lo       HANGUL SYLLABLE MI
      "\dLV",  # Lo       HANGUL SYLLABLE MI
      "\dBC14",  # Lo       HANGUL SYLLABLE BA
      "\dLV",  # Lo       HANGUL SYLLABLE BA
      "\dBC30",  # Lo       HANGUL SYLLABLE BAE
      "\dLV",  # Lo       HANGUL SYLLABLE BAE
      "\dBC4C",  # Lo       HANGUL SYLLABLE BYA
      "\dLV",  # Lo       HANGUL SYLLABLE BYA
      "\dBC68",  # Lo       HANGUL SYLLABLE BYAE
      "\dLV",  # Lo       HANGUL SYLLABLE BYAE
      "\dBC84",  # Lo       HANGUL SYLLABLE BEO
      "\dLV",  # Lo       HANGUL SYLLABLE BEO
      "\dBCA0",  # Lo       HANGUL SYLLABLE BE
      "\dLV",  # Lo       HANGUL SYLLABLE BE
      "\dBCBC",  # Lo       HANGUL SYLLABLE BYEO
      "\dLV",  # Lo       HANGUL SYLLABLE BYEO
      "\dBCD8",  # Lo       HANGUL SYLLABLE BYE
      "\dLV",  # Lo       HANGUL SYLLABLE BYE
      "\dBCF4",  # Lo       HANGUL SYLLABLE BO
      "\dLV",  # Lo       HANGUL SYLLABLE BO
      "\dBD10",  # Lo       HANGUL SYLLABLE BWA
      "\dLV",  # Lo       HANGUL SYLLABLE BWA
      "\dBD2C",  # Lo       HANGUL SYLLABLE BWAE
      "\dLV",  # Lo       HANGUL SYLLABLE BWAE
      "\dBD48",  # Lo       HANGUL SYLLABLE BOE
      "\dLV",  # Lo       HANGUL SYLLABLE BOE
      "\dBD64",  # Lo       HANGUL SYLLABLE BYO
      "\dLV",  # Lo       HANGUL SYLLABLE BYO
      "\dBD80",  # Lo       HANGUL SYLLABLE BU
      "\dLV",  # Lo       HANGUL SYLLABLE BU
      "\dBD9C",  # Lo       HANGUL SYLLABLE BWEO
      "\dLV",  # Lo       HANGUL SYLLABLE BWEO
      "\dBDB8",  # Lo       HANGUL SYLLABLE BWE
      "\dLV",  # Lo       HANGUL SYLLABLE BWE
      "\dBDD4",  # Lo       HANGUL SYLLABLE BWI
      "\dLV",  # Lo       HANGUL SYLLABLE BWI
      "\dBDF0",  # Lo       HANGUL SYLLABLE BYU
      "\dLV",  # Lo       HANGUL SYLLABLE BYU
      "\dBE0C",  # Lo       HANGUL SYLLABLE BEU
      "\dLV",  # Lo       HANGUL SYLLABLE BEU
      "\dBE28",  # Lo       HANGUL SYLLABLE BYI
      "\dLV",  # Lo       HANGUL SYLLABLE BYI
      "\dBE44",  # Lo       HANGUL SYLLABLE BI
      "\dLV",  # Lo       HANGUL SYLLABLE BI
      "\dBE60",  # Lo       HANGUL SYLLABLE BBA
      "\dLV",  # Lo       HANGUL SYLLABLE BBA
      "\dBE7C",  # Lo       HANGUL SYLLABLE BBAE
      "\dLV",  # Lo       HANGUL SYLLABLE BBAE
      "\dBE98",  # Lo       HANGUL SYLLABLE BBYA
      "\dLV",  # Lo       HANGUL SYLLABLE BBYA
      "\dBEB4",  # Lo       HANGUL SYLLABLE BBYAE
      "\dLV",  # Lo       HANGUL SYLLABLE BBYAE
      "\dBED0",  # Lo       HANGUL SYLLABLE BBEO
      "\dLV",  # Lo       HANGUL SYLLABLE BBEO
      "\dBEEC",  # Lo       HANGUL SYLLABLE BBE
      "\dLV",  # Lo       HANGUL SYLLABLE BBE
      "\dBF08",  # Lo       HANGUL SYLLABLE BBYEO
      "\dLV",  # Lo       HANGUL SYLLABLE BBYEO
      "\dBF24",  # Lo       HANGUL SYLLABLE BBYE
      "\dLV",  # Lo       HANGUL SYLLABLE BBYE
      "\dBF40",  # Lo       HANGUL SYLLABLE BBO
      "\dLV",  # Lo       HANGUL SYLLABLE BBO
      "\dBF5C",  # Lo       HANGUL SYLLABLE BBWA
      "\dLV",  # Lo       HANGUL SYLLABLE BBWA
      "\dBF78",  # Lo       HANGUL SYLLABLE BBWAE
      "\dLV",  # Lo       HANGUL SYLLABLE BBWAE
      "\dBF94",  # Lo       HANGUL SYLLABLE BBOE
      "\dLV",  # Lo       HANGUL SYLLABLE BBOE
      "\dBFB0",  # Lo       HANGUL SYLLABLE BBYO
      "\dLV",  # Lo       HANGUL SYLLABLE BBYO
      "\dBFCC",  # Lo       HANGUL SYLLABLE BBU
      "\dLV",  # Lo       HANGUL SYLLABLE BBU
      "\dBFE8",  # Lo       HANGUL SYLLABLE BBWEO
      "\dLV",  # Lo       HANGUL SYLLABLE BBWEO
      "\dC004",  # Lo       HANGUL SYLLABLE BBWE
      "\dLV",  # Lo       HANGUL SYLLABLE BBWE
      "\dC020",  # Lo       HANGUL SYLLABLE BBWI
      "\dLV",  # Lo       HANGUL SYLLABLE BBWI
      "\dC03C",  # Lo       HANGUL SYLLABLE BBYU
      "\dLV",  # Lo       HANGUL SYLLABLE BBYU
      "\dC058",  # Lo       HANGUL SYLLABLE BBEU
      "\dLV",  # Lo       HANGUL SYLLABLE BBEU
      "\dC074",  # Lo       HANGUL SYLLABLE BBYI
      "\dLV",  # Lo       HANGUL SYLLABLE BBYI
      "\dC090",  # Lo       HANGUL SYLLABLE BBI
      "\dLV",  # Lo       HANGUL SYLLABLE BBI
      "\dC0AC",  # Lo       HANGUL SYLLABLE SA
      "\dLV",  # Lo       HANGUL SYLLABLE SA
      "\dC0C8",  # Lo       HANGUL SYLLABLE SAE
      "\dLV",  # Lo       HANGUL SYLLABLE SAE
      "\dC0E4",  # Lo       HANGUL SYLLABLE SYA
      "\dLV",  # Lo       HANGUL SYLLABLE SYA
      "\dC100",  # Lo       HANGUL SYLLABLE SYAE
      "\dLV",  # Lo       HANGUL SYLLABLE SYAE
      "\dC11C",  # Lo       HANGUL SYLLABLE SEO
      "\dLV",  # Lo       HANGUL SYLLABLE SEO
      "\dC138",  # Lo       HANGUL SYLLABLE SE
      "\dLV",  # Lo       HANGUL SYLLABLE SE
      "\dC154",  # Lo       HANGUL SYLLABLE SYEO
      "\dLV",  # Lo       HANGUL SYLLABLE SYEO
      "\dC170",  # Lo       HANGUL SYLLABLE SYE
      "\dLV",  # Lo       HANGUL SYLLABLE SYE
      "\dC18C",  # Lo       HANGUL SYLLABLE SO
      "\dLV",  # Lo       HANGUL SYLLABLE SO
      "\dC1A8",  # Lo       HANGUL SYLLABLE SWA
      "\dLV",  # Lo       HANGUL SYLLABLE SWA
      "\dC1C4",  # Lo       HANGUL SYLLABLE SWAE
      "\dLV",  # Lo       HANGUL SYLLABLE SWAE
      "\dC1E0",  # Lo       HANGUL SYLLABLE SOE
      "\dLV",  # Lo       HANGUL SYLLABLE SOE
      "\dC1FC",  # Lo       HANGUL SYLLABLE SYO
      "\dLV",  # Lo       HANGUL SYLLABLE SYO
      "\dC218",  # Lo       HANGUL SYLLABLE SU
      "\dLV",  # Lo       HANGUL SYLLABLE SU
      "\dC234",  # Lo       HANGUL SYLLABLE SWEO
      "\dLV",  # Lo       HANGUL SYLLABLE SWEO
      "\dC250",  # Lo       HANGUL SYLLABLE SWE
      "\dLV",  # Lo       HANGUL SYLLABLE SWE
      "\dC26C",  # Lo       HANGUL SYLLABLE SWI
      "\dLV",  # Lo       HANGUL SYLLABLE SWI
      "\dC288",  # Lo       HANGUL SYLLABLE SYU
      "\dLV",  # Lo       HANGUL SYLLABLE SYU
      "\dC2A4",  # Lo       HANGUL SYLLABLE SEU
      "\dLV",  # Lo       HANGUL SYLLABLE SEU
      "\dC2C0",  # Lo       HANGUL SYLLABLE SYI
      "\dLV",  # Lo       HANGUL SYLLABLE SYI
      "\dC2DC",  # Lo       HANGUL SYLLABLE SI
      "\dLV",  # Lo       HANGUL SYLLABLE SI
      "\dC2F8",  # Lo       HANGUL SYLLABLE SSA
      "\dLV",  # Lo       HANGUL SYLLABLE SSA
      "\dC314",  # Lo       HANGUL SYLLABLE SSAE
      "\dLV",  # Lo       HANGUL SYLLABLE SSAE
      "\dC330",  # Lo       HANGUL SYLLABLE SSYA
      "\dLV",  # Lo       HANGUL SYLLABLE SSYA
      "\dC34C",  # Lo       HANGUL SYLLABLE SSYAE
      "\dLV",  # Lo       HANGUL SYLLABLE SSYAE
      "\dC368",  # Lo       HANGUL SYLLABLE SSEO
      "\dLV",  # Lo       HANGUL SYLLABLE SSEO
      "\dC384",  # Lo       HANGUL SYLLABLE SSE
      "\dLV",  # Lo       HANGUL SYLLABLE SSE
      "\dC3A0",  # Lo       HANGUL SYLLABLE SSYEO
      "\dLV",  # Lo       HANGUL SYLLABLE SSYEO
      "\dC3BC",  # Lo       HANGUL SYLLABLE SSYE
      "\dLV",  # Lo       HANGUL SYLLABLE SSYE
      "\dC3D8",  # Lo       HANGUL SYLLABLE SSO
      "\dLV",  # Lo       HANGUL SYLLABLE SSO
      "\dC3F4",  # Lo       HANGUL SYLLABLE SSWA
      "\dLV",  # Lo       HANGUL SYLLABLE SSWA
      "\dC410",  # Lo       HANGUL SYLLABLE SSWAE
      "\dLV",  # Lo       HANGUL SYLLABLE SSWAE
      "\dC42C",  # Lo       HANGUL SYLLABLE SSOE
      "\dLV",  # Lo       HANGUL SYLLABLE SSOE
      "\dC448",  # Lo       HANGUL SYLLABLE SSYO
      "\dLV",  # Lo       HANGUL SYLLABLE SSYO
      "\dC464",  # Lo       HANGUL SYLLABLE SSU
      "\dLV",  # Lo       HANGUL SYLLABLE SSU
      "\dC480",  # Lo       HANGUL SYLLABLE SSWEO
      "\dLV",  # Lo       HANGUL SYLLABLE SSWEO
      "\dC49C",  # Lo       HANGUL SYLLABLE SSWE
      "\dLV",  # Lo       HANGUL SYLLABLE SSWE
      "\dC4B8",  # Lo       HANGUL SYLLABLE SSWI
      "\dLV",  # Lo       HANGUL SYLLABLE SSWI
      "\dC4D4",  # Lo       HANGUL SYLLABLE SSYU
      "\dLV",  # Lo       HANGUL SYLLABLE SSYU
      "\dC4F0",  # Lo       HANGUL SYLLABLE SSEU
      "\dLV",  # Lo       HANGUL SYLLABLE SSEU
      "\dC50C",  # Lo       HANGUL SYLLABLE SSYI
      "\dLV",  # Lo       HANGUL SYLLABLE SSYI
      "\dC528",  # Lo       HANGUL SYLLABLE SSI
      "\dLV",  # Lo       HANGUL SYLLABLE SSI
      "\dC544",  # Lo       HANGUL SYLLABLE A
      "\dLV",  # Lo       HANGUL SYLLABLE A
      "\dC560",  # Lo       HANGUL SYLLABLE AE
      "\dLV",  # Lo       HANGUL SYLLABLE AE
      "\dC57C",  # Lo       HANGUL SYLLABLE YA
      "\dLV",  # Lo       HANGUL SYLLABLE YA
      "\dC598",  # Lo       HANGUL SYLLABLE YAE
      "\dLV",  # Lo       HANGUL SYLLABLE YAE
      "\dC5B4",  # Lo       HANGUL SYLLABLE EO
      "\dLV",  # Lo       HANGUL SYLLABLE EO
      "\dC5D0",  # Lo       HANGUL SYLLABLE E
      "\dLV",  # Lo       HANGUL SYLLABLE E
      "\dC5EC",  # Lo       HANGUL SYLLABLE YEO
      "\dLV",  # Lo       HANGUL SYLLABLE YEO
      "\dC608",  # Lo       HANGUL SYLLABLE YE
      "\dLV",  # Lo       HANGUL SYLLABLE YE
      "\dC624",  # Lo       HANGUL SYLLABLE O
      "\dLV",  # Lo       HANGUL SYLLABLE O
      "\dC640",  # Lo       HANGUL SYLLABLE WA
      "\dLV",  # Lo       HANGUL SYLLABLE WA
      "\dC65C",  # Lo       HANGUL SYLLABLE WAE
      "\dLV",  # Lo       HANGUL SYLLABLE WAE
      "\dC678",  # Lo       HANGUL SYLLABLE OE
      "\dLV",  # Lo       HANGUL SYLLABLE OE
      "\dC694",  # Lo       HANGUL SYLLABLE YO
      "\dLV",  # Lo       HANGUL SYLLABLE YO
      "\dC6B0",  # Lo       HANGUL SYLLABLE U
      "\dLV",  # Lo       HANGUL SYLLABLE U
      "\dC6CC",  # Lo       HANGUL SYLLABLE WEO
      "\dLV",  # Lo       HANGUL SYLLABLE WEO
      "\dC6E8",  # Lo       HANGUL SYLLABLE WE
      "\dLV",  # Lo       HANGUL SYLLABLE WE
      "\dC704",  # Lo       HANGUL SYLLABLE WI
      "\dLV",  # Lo       HANGUL SYLLABLE WI
      "\dC720",  # Lo       HANGUL SYLLABLE YU
      "\dLV",  # Lo       HANGUL SYLLABLE YU
      "\dC73C",  # Lo       HANGUL SYLLABLE EU
      "\dLV",  # Lo       HANGUL SYLLABLE EU
      "\dC758",  # Lo       HANGUL SYLLABLE YI
      "\dLV",  # Lo       HANGUL SYLLABLE YI
      "\dC774",  # Lo       HANGUL SYLLABLE I
      "\dLV",  # Lo       HANGUL SYLLABLE I
      "\dC790",  # Lo       HANGUL SYLLABLE JA
      "\dLV",  # Lo       HANGUL SYLLABLE JA
      "\dC7AC",  # Lo       HANGUL SYLLABLE JAE
      "\dLV",  # Lo       HANGUL SYLLABLE JAE
      "\dC7C8",  # Lo       HANGUL SYLLABLE JYA
      "\dLV",  # Lo       HANGUL SYLLABLE JYA
      "\dC7E4",  # Lo       HANGUL SYLLABLE JYAE
      "\dLV",  # Lo       HANGUL SYLLABLE JYAE
      "\dC800",  # Lo       HANGUL SYLLABLE JEO
      "\dLV",  # Lo       HANGUL SYLLABLE JEO
      "\dC81C",  # Lo       HANGUL SYLLABLE JE
      "\dLV",  # Lo       HANGUL SYLLABLE JE
      "\dC838",  # Lo       HANGUL SYLLABLE JYEO
      "\dLV",  # Lo       HANGUL SYLLABLE JYEO
      "\dC854",  # Lo       HANGUL SYLLABLE JYE
      "\dLV",  # Lo       HANGUL SYLLABLE JYE
      "\dC870",  # Lo       HANGUL SYLLABLE JO
      "\dLV",  # Lo       HANGUL SYLLABLE JO
      "\dC88C",  # Lo       HANGUL SYLLABLE JWA
      "\dLV",  # Lo       HANGUL SYLLABLE JWA
      "\dC8A8",  # Lo       HANGUL SYLLABLE JWAE
      "\dLV",  # Lo       HANGUL SYLLABLE JWAE
      "\dC8C4",  # Lo       HANGUL SYLLABLE JOE
      "\dLV",  # Lo       HANGUL SYLLABLE JOE
      "\dC8E0",  # Lo       HANGUL SYLLABLE JYO
      "\dLV",  # Lo       HANGUL SYLLABLE JYO
      "\dC8FC",  # Lo       HANGUL SYLLABLE JU
      "\dLV",  # Lo       HANGUL SYLLABLE JU
      "\dC918",  # Lo       HANGUL SYLLABLE JWEO
      "\dLV",  # Lo       HANGUL SYLLABLE JWEO
      "\dC934",  # Lo       HANGUL SYLLABLE JWE
      "\dLV",  # Lo       HANGUL SYLLABLE JWE
      "\dC950",  # Lo       HANGUL SYLLABLE JWI
      "\dLV",  # Lo       HANGUL SYLLABLE JWI
      "\dC96C",  # Lo       HANGUL SYLLABLE JYU
      "\dLV",  # Lo       HANGUL SYLLABLE JYU
      "\dC988",  # Lo       HANGUL SYLLABLE JEU
      "\dLV",  # Lo       HANGUL SYLLABLE JEU
      "\dC9A4",  # Lo       HANGUL SYLLABLE JYI
      "\dLV",  # Lo       HANGUL SYLLABLE JYI
      "\dC9C0",  # Lo       HANGUL SYLLABLE JI
      "\dLV",  # Lo       HANGUL SYLLABLE JI
      "\dC9DC",  # Lo       HANGUL SYLLABLE JJA
      "\dLV",  # Lo       HANGUL SYLLABLE JJA
      "\dC9F8",  # Lo       HANGUL SYLLABLE JJAE
      "\dLV",  # Lo       HANGUL SYLLABLE JJAE
      "\dCA14",  # Lo       HANGUL SYLLABLE JJYA
      "\dLV",  # Lo       HANGUL SYLLABLE JJYA
      "\dCA30",  # Lo       HANGUL SYLLABLE JJYAE
      "\dLV",  # Lo       HANGUL SYLLABLE JJYAE
      "\dCA4C",  # Lo       HANGUL SYLLABLE JJEO
      "\dLV",  # Lo       HANGUL SYLLABLE JJEO
      "\dCA68",  # Lo       HANGUL SYLLABLE JJE
      "\dLV",  # Lo       HANGUL SYLLABLE JJE
      "\dCA84",  # Lo       HANGUL SYLLABLE JJYEO
      "\dLV",  # Lo       HANGUL SYLLABLE JJYEO
      "\dCAA0",  # Lo       HANGUL SYLLABLE JJYE
      "\dLV",  # Lo       HANGUL SYLLABLE JJYE
      "\dCABC",  # Lo       HANGUL SYLLABLE JJO
      "\dLV",  # Lo       HANGUL SYLLABLE JJO
      "\dCAD8",  # Lo       HANGUL SYLLABLE JJWA
      "\dLV",  # Lo       HANGUL SYLLABLE JJWA
      "\dCAF4",  # Lo       HANGUL SYLLABLE JJWAE
      "\dLV",  # Lo       HANGUL SYLLABLE JJWAE
      "\dCB10",  # Lo       HANGUL SYLLABLE JJOE
      "\dLV",  # Lo       HANGUL SYLLABLE JJOE
      "\dCB2C",  # Lo       HANGUL SYLLABLE JJYO
      "\dLV",  # Lo       HANGUL SYLLABLE JJYO
      "\dCB48",  # Lo       HANGUL SYLLABLE JJU
      "\dLV",  # Lo       HANGUL SYLLABLE JJU
      "\dCB64",  # Lo       HANGUL SYLLABLE JJWEO
      "\dLV",  # Lo       HANGUL SYLLABLE JJWEO
      "\dCB80",  # Lo       HANGUL SYLLABLE JJWE
      "\dLV",  # Lo       HANGUL SYLLABLE JJWE
      "\dCB9C",  # Lo       HANGUL SYLLABLE JJWI
      "\dLV",  # Lo       HANGUL SYLLABLE JJWI
      "\dCBB8",  # Lo       HANGUL SYLLABLE JJYU
      "\dLV",  # Lo       HANGUL SYLLABLE JJYU
      "\dCBD4",  # Lo       HANGUL SYLLABLE JJEU
      "\dLV",  # Lo       HANGUL SYLLABLE JJEU
      "\dCBF0",  # Lo       HANGUL SYLLABLE JJYI
      "\dLV",  # Lo       HANGUL SYLLABLE JJYI
      "\dCC0C",  # Lo       HANGUL SYLLABLE JJI
      "\dLV",  # Lo       HANGUL SYLLABLE JJI
      "\dCC28",  # Lo       HANGUL SYLLABLE CA
      "\dLV",  # Lo       HANGUL SYLLABLE CA
      "\dCC44",  # Lo       HANGUL SYLLABLE CAE
      "\dLV",  # Lo       HANGUL SYLLABLE CAE
      "\dCC60",  # Lo       HANGUL SYLLABLE CYA
      "\dLV",  # Lo       HANGUL SYLLABLE CYA
      "\dCC7C",  # Lo       HANGUL SYLLABLE CYAE
      "\dLV",  # Lo       HANGUL SYLLABLE CYAE
      "\dCC98",  # Lo       HANGUL SYLLABLE CEO
      "\dLV",  # Lo       HANGUL SYLLABLE CEO
      "\dCCB4",  # Lo       HANGUL SYLLABLE CE
      "\dLV",  # Lo       HANGUL SYLLABLE CE
      "\dCCD0",  # Lo       HANGUL SYLLABLE CYEO
      "\dLV",  # Lo       HANGUL SYLLABLE CYEO
      "\dCCEC",  # Lo       HANGUL SYLLABLE CYE
      "\dLV",  # Lo       HANGUL SYLLABLE CYE
      "\dCD08",  # Lo       HANGUL SYLLABLE CO
      "\dLV",  # Lo       HANGUL SYLLABLE CO
      "\dCD24",  # Lo       HANGUL SYLLABLE CWA
      "\dLV",  # Lo       HANGUL SYLLABLE CWA
      "\dCD40",  # Lo       HANGUL SYLLABLE CWAE
      "\dLV",  # Lo       HANGUL SYLLABLE CWAE
      "\dCD5C",  # Lo       HANGUL SYLLABLE COE
      "\dLV",  # Lo       HANGUL SYLLABLE COE
      "\dCD78",  # Lo       HANGUL SYLLABLE CYO
      "\dLV",  # Lo       HANGUL SYLLABLE CYO
      "\dCD94",  # Lo       HANGUL SYLLABLE CU
      "\dLV",  # Lo       HANGUL SYLLABLE CU
      "\dCDB0",  # Lo       HANGUL SYLLABLE CWEO
      "\dLV",  # Lo       HANGUL SYLLABLE CWEO
      "\dCDCC",  # Lo       HANGUL SYLLABLE CWE
      "\dLV",  # Lo       HANGUL SYLLABLE CWE
      "\dCDE8",  # Lo       HANGUL SYLLABLE CWI
      "\dLV",  # Lo       HANGUL SYLLABLE CWI
      "\dCE04",  # Lo       HANGUL SYLLABLE CYU
      "\dLV",  # Lo       HANGUL SYLLABLE CYU
      "\dCE20",  # Lo       HANGUL SYLLABLE CEU
      "\dLV",  # Lo       HANGUL SYLLABLE CEU
      "\dCE3C",  # Lo       HANGUL SYLLABLE CYI
      "\dLV",  # Lo       HANGUL SYLLABLE CYI
      "\dCE58",  # Lo       HANGUL SYLLABLE CI
      "\dLV",  # Lo       HANGUL SYLLABLE CI
      "\dCE74",  # Lo       HANGUL SYLLABLE KA
      "\dLV",  # Lo       HANGUL SYLLABLE KA
      "\dCE90",  # Lo       HANGUL SYLLABLE KAE
      "\dLV",  # Lo       HANGUL SYLLABLE KAE
      "\dCEAC",  # Lo       HANGUL SYLLABLE KYA
      "\dLV",  # Lo       HANGUL SYLLABLE KYA
      "\dCEC8",  # Lo       HANGUL SYLLABLE KYAE
      "\dLV",  # Lo       HANGUL SYLLABLE KYAE
      "\dCEE4",  # Lo       HANGUL SYLLABLE KEO
      "\dLV",  # Lo       HANGUL SYLLABLE KEO
      "\dCF00",  # Lo       HANGUL SYLLABLE KE
      "\dLV",  # Lo       HANGUL SYLLABLE KE
      "\dCF1C",  # Lo       HANGUL SYLLABLE KYEO
      "\dLV",  # Lo       HANGUL SYLLABLE KYEO
      "\dCF38",  # Lo       HANGUL SYLLABLE KYE
      "\dLV",  # Lo       HANGUL SYLLABLE KYE
      "\dCF54",  # Lo       HANGUL SYLLABLE KO
      "\dLV",  # Lo       HANGUL SYLLABLE KO
      "\dCF70",  # Lo       HANGUL SYLLABLE KWA
      "\dLV",  # Lo       HANGUL SYLLABLE KWA
      "\dCF8C",  # Lo       HANGUL SYLLABLE KWAE
      "\dLV",  # Lo       HANGUL SYLLABLE KWAE
      "\dCFA8",  # Lo       HANGUL SYLLABLE KOE
      "\dLV",  # Lo       HANGUL SYLLABLE KOE
      "\dCFC4",  # Lo       HANGUL SYLLABLE KYO
      "\dLV",  # Lo       HANGUL SYLLABLE KYO
      "\dCFE0",  # Lo       HANGUL SYLLABLE KU
      "\dLV",  # Lo       HANGUL SYLLABLE KU
      "\dCFFC",  # Lo       HANGUL SYLLABLE KWEO
      "\dLV",  # Lo       HANGUL SYLLABLE KWEO
      "\dD018",  # Lo       HANGUL SYLLABLE KWE
      "\dLV",  # Lo       HANGUL SYLLABLE KWE
      "\dD034",  # Lo       HANGUL SYLLABLE KWI
      "\dLV",  # Lo       HANGUL SYLLABLE KWI
      "\dD050",  # Lo       HANGUL SYLLABLE KYU
      "\dLV",  # Lo       HANGUL SYLLABLE KYU
      "\dD06C",  # Lo       HANGUL SYLLABLE KEU
      "\dLV",  # Lo       HANGUL SYLLABLE KEU
      "\dD088",  # Lo       HANGUL SYLLABLE KYI
      "\dLV",  # Lo       HANGUL SYLLABLE KYI
      "\dD0A4",  # Lo       HANGUL SYLLABLE KI
      "\dLV",  # Lo       HANGUL SYLLABLE KI
      "\dD0C0",  # Lo       HANGUL SYLLABLE TA
      "\dLV",  # Lo       HANGUL SYLLABLE TA
      "\dD0DC",  # Lo       HANGUL SYLLABLE TAE
      "\dLV",  # Lo       HANGUL SYLLABLE TAE
      "\dD0F8",  # Lo       HANGUL SYLLABLE TYA
      "\dLV",  # Lo       HANGUL SYLLABLE TYA
      "\dD114",  # Lo       HANGUL SYLLABLE TYAE
      "\dLV",  # Lo       HANGUL SYLLABLE TYAE
      "\dD130",  # Lo       HANGUL SYLLABLE TEO
      "\dLV",  # Lo       HANGUL SYLLABLE TEO
      "\dD14C",  # Lo       HANGUL SYLLABLE TE
      "\dLV",  # Lo       HANGUL SYLLABLE TE
      "\dD168",  # Lo       HANGUL SYLLABLE TYEO
      "\dLV",  # Lo       HANGUL SYLLABLE TYEO
      "\dD184",  # Lo       HANGUL SYLLABLE TYE
      "\dLV",  # Lo       HANGUL SYLLABLE TYE
      "\dD1A0",  # Lo       HANGUL SYLLABLE TO
      "\dLV",  # Lo       HANGUL SYLLABLE TO
      "\dD1BC",  # Lo       HANGUL SYLLABLE TWA
      "\dLV",  # Lo       HANGUL SYLLABLE TWA
      "\dD1D8",  # Lo       HANGUL SYLLABLE TWAE
      "\dLV",  # Lo       HANGUL SYLLABLE TWAE
      "\dD1F4",  # Lo       HANGUL SYLLABLE TOE
      "\dLV",  # Lo       HANGUL SYLLABLE TOE
      "\dD210",  # Lo       HANGUL SYLLABLE TYO
      "\dLV",  # Lo       HANGUL SYLLABLE TYO
      "\dD22C",  # Lo       HANGUL SYLLABLE TU
      "\dLV",  # Lo       HANGUL SYLLABLE TU
      "\dD248",  # Lo       HANGUL SYLLABLE TWEO
      "\dLV",  # Lo       HANGUL SYLLABLE TWEO
      "\dD264",  # Lo       HANGUL SYLLABLE TWE
      "\dLV",  # Lo       HANGUL SYLLABLE TWE
      "\dD280",  # Lo       HANGUL SYLLABLE TWI
      "\dLV",  # Lo       HANGUL SYLLABLE TWI
      "\dD29C",  # Lo       HANGUL SYLLABLE TYU
      "\dLV",  # Lo       HANGUL SYLLABLE TYU
      "\dD2B8",  # Lo       HANGUL SYLLABLE TEU
      "\dLV",  # Lo       HANGUL SYLLABLE TEU
      "\dD2D4",  # Lo       HANGUL SYLLABLE TYI
      "\dLV",  # Lo       HANGUL SYLLABLE TYI
      "\dD2F0",  # Lo       HANGUL SYLLABLE TI
      "\dLV",  # Lo       HANGUL SYLLABLE TI
      "\dD30C",  # Lo       HANGUL SYLLABLE PA
      "\dLV",  # Lo       HANGUL SYLLABLE PA
      "\dD328",  # Lo       HANGUL SYLLABLE PAE
      "\dLV",  # Lo       HANGUL SYLLABLE PAE
      "\dD344",  # Lo       HANGUL SYLLABLE PYA
      "\dLV",  # Lo       HANGUL SYLLABLE PYA
      "\dD360",  # Lo       HANGUL SYLLABLE PYAE
      "\dLV",  # Lo       HANGUL SYLLABLE PYAE
      "\dD37C",  # Lo       HANGUL SYLLABLE PEO
      "\dLV",  # Lo       HANGUL SYLLABLE PEO
      "\dD398",  # Lo       HANGUL SYLLABLE PE
      "\dLV",  # Lo       HANGUL SYLLABLE PE
      "\dD3B4",  # Lo       HANGUL SYLLABLE PYEO
      "\dLV",  # Lo       HANGUL SYLLABLE PYEO
      "\dD3D0",  # Lo       HANGUL SYLLABLE PYE
      "\dLV",  # Lo       HANGUL SYLLABLE PYE
      "\dD3EC",  # Lo       HANGUL SYLLABLE PO
      "\dLV",  # Lo       HANGUL SYLLABLE PO
      "\dD408",  # Lo       HANGUL SYLLABLE PWA
      "\dLV",  # Lo       HANGUL SYLLABLE PWA
      "\dD424",  # Lo       HANGUL SYLLABLE PWAE
      "\dLV",  # Lo       HANGUL SYLLABLE PWAE
      "\dD440",  # Lo       HANGUL SYLLABLE POE
      "\dLV",  # Lo       HANGUL SYLLABLE POE
      "\dD45C",  # Lo       HANGUL SYLLABLE PYO
      "\dLV",  # Lo       HANGUL SYLLABLE PYO
      "\dD478",  # Lo       HANGUL SYLLABLE PU
      "\dLV",  # Lo       HANGUL SYLLABLE PU
      "\dD494",  # Lo       HANGUL SYLLABLE PWEO
      "\dLV",  # Lo       HANGUL SYLLABLE PWEO
      "\dD4B0",  # Lo       HANGUL SYLLABLE PWE
      "\dLV",  # Lo       HANGUL SYLLABLE PWE
      "\dD4CC",  # Lo       HANGUL SYLLABLE PWI
      "\dLV",  # Lo       HANGUL SYLLABLE PWI
      "\dD4E8",  # Lo       HANGUL SYLLABLE PYU
      "\dLV",  # Lo       HANGUL SYLLABLE PYU
      "\dD504",  # Lo       HANGUL SYLLABLE PEU
      "\dLV",  # Lo       HANGUL SYLLABLE PEU
      "\dD520",  # Lo       HANGUL SYLLABLE PYI
      "\dLV",  # Lo       HANGUL SYLLABLE PYI
      "\dD53C",  # Lo       HANGUL SYLLABLE PI
      "\dLV",  # Lo       HANGUL SYLLABLE PI
      "\dD558",  # Lo       HANGUL SYLLABLE HA
      "\dLV",  # Lo       HANGUL SYLLABLE HA
      "\dD574",  # Lo       HANGUL SYLLABLE HAE
      "\dLV",  # Lo       HANGUL SYLLABLE HAE
      "\dD590",  # Lo       HANGUL SYLLABLE HYA
      "\dLV",  # Lo       HANGUL SYLLABLE HYA
      "\dD5AC",  # Lo       HANGUL SYLLABLE HYAE
      "\dLV",  # Lo       HANGUL SYLLABLE HYAE
      "\dD5C8",  # Lo       HANGUL SYLLABLE HEO
      "\dLV",  # Lo       HANGUL SYLLABLE HEO
      "\dD5E4",  # Lo       HANGUL SYLLABLE HE
      "\dLV",  # Lo       HANGUL SYLLABLE HE
      "\dD600",  # Lo       HANGUL SYLLABLE HYEO
      "\dLV",  # Lo       HANGUL SYLLABLE HYEO
      "\dD61C",  # Lo       HANGUL SYLLABLE HYE
      "\dLV",  # Lo       HANGUL SYLLABLE HYE
      "\dD638",  # Lo       HANGUL SYLLABLE HO
      "\dLV",  # Lo       HANGUL SYLLABLE HO
      "\dD654",  # Lo       HANGUL SYLLABLE HWA
      "\dLV",  # Lo       HANGUL SYLLABLE HWA
      "\dD670",  # Lo       HANGUL SYLLABLE HWAE
      "\dLV",  # Lo       HANGUL SYLLABLE HWAE
      "\dD68C",  # Lo       HANGUL SYLLABLE HOE
      "\dLV",  # Lo       HANGUL SYLLABLE HOE
      "\dD6A8",  # Lo       HANGUL SYLLABLE HYO
      "\dLV",  # Lo       HANGUL SYLLABLE HYO
      "\dD6C4",  # Lo       HANGUL SYLLABLE HU
      "\dLV",  # Lo       HANGUL SYLLABLE HU
      "\dD6E0",  # Lo       HANGUL SYLLABLE HWEO
      "\dLV",  # Lo       HANGUL SYLLABLE HWEO
      "\dD6FC",  # Lo       HANGUL SYLLABLE HWE
      "\dLV",  # Lo       HANGUL SYLLABLE HWE
      "\dD718",  # Lo       HANGUL SYLLABLE HWI
      "\dLV",  # Lo       HANGUL SYLLABLE HWI
      "\dD734",  # Lo       HANGUL SYLLABLE HYU
      "\dLV",  # Lo       HANGUL SYLLABLE HYU
      "\dD750",  # Lo       HANGUL SYLLABLE HEU
      "\dLV",  # Lo       HANGUL SYLLABLE HEU
      "\dD76C",  # Lo       HANGUL SYLLABLE HYI
      "\dLV",  # Lo       HANGUL SYLLABLE HYI
      "\dD788",  # Lo       HANGUL SYLLABLE HI
      "\dLV",  # Lo       HANGUL SYLLABLE HI
      "\dAC01..AC1B",  # Lo  [27] HANGUL SYLLABLE GAG..HANGUL SYLLABLE GAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE GAG..HANGUL SYLLABLE GAH
      "\dAC1D..AC37",  # Lo  [27] HANGUL SYLLABLE GAEG..HANGUL SYLLABLE GAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE GAEG..HANGUL SYLLABLE GAEH
      "\dAC39..AC53",  # Lo  [27] HANGUL SYLLABLE GYAG..HANGUL SYLLABLE GYAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE GYAG..HANGUL SYLLABLE GYAH
      "\dAC55..AC6F",  # Lo  [27] HANGUL SYLLABLE GYAEG..HANGUL SYLLABLE GYAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE GYAEG..HANGUL SYLLABLE GYAEH
      "\dAC71..AC8B",  # Lo  [27] HANGUL SYLLABLE GEOG..HANGUL SYLLABLE GEOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE GEOG..HANGUL SYLLABLE GEOH
      "\dAC8D..ACA7",  # Lo  [27] HANGUL SYLLABLE GEG..HANGUL SYLLABLE GEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE GEG..HANGUL SYLLABLE GEH
      "\dACA9..ACC3",  # Lo  [27] HANGUL SYLLABLE GYEOG..HANGUL SYLLABLE GYEOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE GYEOG..HANGUL SYLLABLE GYEOH
      "\dACC5..ACDF",  # Lo  [27] HANGUL SYLLABLE GYEG..HANGUL SYLLABLE GYEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE GYEG..HANGUL SYLLABLE GYEH
      "\dACE1..ACFB",  # Lo  [27] HANGUL SYLLABLE GOG..HANGUL SYLLABLE GOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE GOG..HANGUL SYLLABLE GOH
      "\dACFD..AD17",  # Lo  [27] HANGUL SYLLABLE GWAG..HANGUL SYLLABLE GWAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE GWAG..HANGUL SYLLABLE GWAH
      "\dAD19..AD33",  # Lo  [27] HANGUL SYLLABLE GWAEG..HANGUL SYLLABLE GWAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE GWAEG..HANGUL SYLLABLE GWAEH
      "\dAD35..AD4F",  # Lo  [27] HANGUL SYLLABLE GOEG..HANGUL SYLLABLE GOEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE GOEG..HANGUL SYLLABLE GOEH
      "\dAD51..AD6B",  # Lo  [27] HANGUL SYLLABLE GYOG..HANGUL SYLLABLE GYOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE GYOG..HANGUL SYLLABLE GYOH
      "\dAD6D..AD87",  # Lo  [27] HANGUL SYLLABLE GUG..HANGUL SYLLABLE GUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE GUG..HANGUL SYLLABLE GUH
      "\dAD89..ADA3",  # Lo  [27] HANGUL SYLLABLE GWEOG..HANGUL SYLLABLE GWEOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE GWEOG..HANGUL SYLLABLE GWEOH
      "\dADA5..ADBF",  # Lo  [27] HANGUL SYLLABLE GWEG..HANGUL SYLLABLE GWEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE GWEG..HANGUL SYLLABLE GWEH
      "\dADC1..ADDB",  # Lo  [27] HANGUL SYLLABLE GWIG..HANGUL SYLLABLE GWIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE GWIG..HANGUL SYLLABLE GWIH
      "\dADDD..ADF7",  # Lo  [27] HANGUL SYLLABLE GYUG..HANGUL SYLLABLE GYUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE GYUG..HANGUL SYLLABLE GYUH
      "\dADF9..AE13",  # Lo  [27] HANGUL SYLLABLE GEUG..HANGUL SYLLABLE GEUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE GEUG..HANGUL SYLLABLE GEUH
      "\dAE15..AE2F",  # Lo  [27] HANGUL SYLLABLE GYIG..HANGUL SYLLABLE GYIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE GYIG..HANGUL SYLLABLE GYIH
      "\dAE31..AE4B",  # Lo  [27] HANGUL SYLLABLE GIG..HANGUL SYLLABLE GIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE GIG..HANGUL SYLLABLE GIH
      "\dAE4D..AE67",  # Lo  [27] HANGUL SYLLABLE GGAG..HANGUL SYLLABLE GGAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE GGAG..HANGUL SYLLABLE GGAH
      "\dAE69..AE83",  # Lo  [27] HANGUL SYLLABLE GGAEG..HANGUL SYLLABLE GGAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE GGAEG..HANGUL SYLLABLE GGAEH
      "\dAE85..AE9F",  # Lo  [27] HANGUL SYLLABLE GGYAG..HANGUL SYLLABLE GGYAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE GGYAG..HANGUL SYLLABLE GGYAH
      "\dAEA1..AEBB",  # Lo  [27] HANGUL SYLLABLE GGYAEG..HANGUL SYLLABLE GGYAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE GGYAEG..HANGUL SYLLABLE GGYAEH
      "\dAEBD..AED7",  # Lo  [27] HANGUL SYLLABLE GGEOG..HANGUL SYLLABLE GGEOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE GGEOG..HANGUL SYLLABLE GGEOH
      "\dAED9..AEF3",  # Lo  [27] HANGUL SYLLABLE GGEG..HANGUL SYLLABLE GGEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE GGEG..HANGUL SYLLABLE GGEH
      "\dAEF5..AF0F",  # Lo  [27] HANGUL SYLLABLE GGYEOG..HANGUL SYLLABLE GGYEOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE GGYEOG..HANGUL SYLLABLE GGYEOH
      "\dAF11..AF2B",  # Lo  [27] HANGUL SYLLABLE GGYEG..HANGUL SYLLABLE GGYEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE GGYEG..HANGUL SYLLABLE GGYEH
      "\dAF2D..AF47",  # Lo  [27] HANGUL SYLLABLE GGOG..HANGUL SYLLABLE GGOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE GGOG..HANGUL SYLLABLE GGOH
      "\dAF49..AF63",  # Lo  [27] HANGUL SYLLABLE GGWAG..HANGUL SYLLABLE GGWAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE GGWAG..HANGUL SYLLABLE GGWAH
      "\dAF65..AF7F",  # Lo  [27] HANGUL SYLLABLE GGWAEG..HANGUL SYLLABLE GGWAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE GGWAEG..HANGUL SYLLABLE GGWAEH
      "\dAF81..AF9B",  # Lo  [27] HANGUL SYLLABLE GGOEG..HANGUL SYLLABLE GGOEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE GGOEG..HANGUL SYLLABLE GGOEH
      "\dAF9D..AFB7",  # Lo  [27] HANGUL SYLLABLE GGYOG..HANGUL SYLLABLE GGYOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE GGYOG..HANGUL SYLLABLE GGYOH
      "\dAFB9..AFD3",  # Lo  [27] HANGUL SYLLABLE GGUG..HANGUL SYLLABLE GGUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE GGUG..HANGUL SYLLABLE GGUH
      "\dAFD5..AFEF",  # Lo  [27] HANGUL SYLLABLE GGWEOG..HANGUL SYLLABLE GGWEOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE GGWEOG..HANGUL SYLLABLE GGWEOH
      "\dAFF1..B00B",  # Lo  [27] HANGUL SYLLABLE GGWEG..HANGUL SYLLABLE GGWEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE GGWEG..HANGUL SYLLABLE GGWEH
      "\dB00D..B027",  # Lo  [27] HANGUL SYLLABLE GGWIG..HANGUL SYLLABLE GGWIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE GGWIG..HANGUL SYLLABLE GGWIH
      "\dB029..B043",  # Lo  [27] HANGUL SYLLABLE GGYUG..HANGUL SYLLABLE GGYUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE GGYUG..HANGUL SYLLABLE GGYUH
      "\dB045..B05F",  # Lo  [27] HANGUL SYLLABLE GGEUG..HANGUL SYLLABLE GGEUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE GGEUG..HANGUL SYLLABLE GGEUH
      "\dB061..B07B",  # Lo  [27] HANGUL SYLLABLE GGYIG..HANGUL SYLLABLE GGYIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE GGYIG..HANGUL SYLLABLE GGYIH
      "\dB07D..B097",  # Lo  [27] HANGUL SYLLABLE GGIG..HANGUL SYLLABLE GGIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE GGIG..HANGUL SYLLABLE GGIH
      "\dB099..B0B3",  # Lo  [27] HANGUL SYLLABLE NAG..HANGUL SYLLABLE NAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE NAG..HANGUL SYLLABLE NAH
      "\dB0B5..B0CF",  # Lo  [27] HANGUL SYLLABLE NAEG..HANGUL SYLLABLE NAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE NAEG..HANGUL SYLLABLE NAEH
      "\dB0D1..B0EB",  # Lo  [27] HANGUL SYLLABLE NYAG..HANGUL SYLLABLE NYAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE NYAG..HANGUL SYLLABLE NYAH
      "\dB0ED..B107",  # Lo  [27] HANGUL SYLLABLE NYAEG..HANGUL SYLLABLE NYAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE NYAEG..HANGUL SYLLABLE NYAEH
      "\dB109..B123",  # Lo  [27] HANGUL SYLLABLE NEOG..HANGUL SYLLABLE NEOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE NEOG..HANGUL SYLLABLE NEOH
      "\dB125..B13F",  # Lo  [27] HANGUL SYLLABLE NEG..HANGUL SYLLABLE NEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE NEG..HANGUL SYLLABLE NEH
      "\dB141..B15B",  # Lo  [27] HANGUL SYLLABLE NYEOG..HANGUL SYLLABLE NYEOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE NYEOG..HANGUL SYLLABLE NYEOH
      "\dB15D..B177",  # Lo  [27] HANGUL SYLLABLE NYEG..HANGUL SYLLABLE NYEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE NYEG..HANGUL SYLLABLE NYEH
      "\dB179..B193",  # Lo  [27] HANGUL SYLLABLE NOG..HANGUL SYLLABLE NOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE NOG..HANGUL SYLLABLE NOH
      "\dB195..B1AF",  # Lo  [27] HANGUL SYLLABLE NWAG..HANGUL SYLLABLE NWAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE NWAG..HANGUL SYLLABLE NWAH
      "\dB1B1..B1CB",  # Lo  [27] HANGUL SYLLABLE NWAEG..HANGUL SYLLABLE NWAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE NWAEG..HANGUL SYLLABLE NWAEH
      "\dB1CD..B1E7",  # Lo  [27] HANGUL SYLLABLE NOEG..HANGUL SYLLABLE NOEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE NOEG..HANGUL SYLLABLE NOEH
      "\dB1E9..B203",  # Lo  [27] HANGUL SYLLABLE NYOG..HANGUL SYLLABLE NYOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE NYOG..HANGUL SYLLABLE NYOH
      "\dB205..B21F",  # Lo  [27] HANGUL SYLLABLE NUG..HANGUL SYLLABLE NUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE NUG..HANGUL SYLLABLE NUH
      "\dB221..B23B",  # Lo  [27] HANGUL SYLLABLE NWEOG..HANGUL SYLLABLE NWEOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE NWEOG..HANGUL SYLLABLE NWEOH
      "\dB23D..B257",  # Lo  [27] HANGUL SYLLABLE NWEG..HANGUL SYLLABLE NWEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE NWEG..HANGUL SYLLABLE NWEH
      "\dB259..B273",  # Lo  [27] HANGUL SYLLABLE NWIG..HANGUL SYLLABLE NWIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE NWIG..HANGUL SYLLABLE NWIH
      "\dB275..B28F",  # Lo  [27] HANGUL SYLLABLE NYUG..HANGUL SYLLABLE NYUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE NYUG..HANGUL SYLLABLE NYUH
      "\dB291..B2AB",  # Lo  [27] HANGUL SYLLABLE NEUG..HANGUL SYLLABLE NEUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE NEUG..HANGUL SYLLABLE NEUH
      "\dB2AD..B2C7",  # Lo  [27] HANGUL SYLLABLE NYIG..HANGUL SYLLABLE NYIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE NYIG..HANGUL SYLLABLE NYIH
      "\dB2C9..B2E3",  # Lo  [27] HANGUL SYLLABLE NIG..HANGUL SYLLABLE NIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE NIG..HANGUL SYLLABLE NIH
      "\dB2E5..B2FF",  # Lo  [27] HANGUL SYLLABLE DAG..HANGUL SYLLABLE DAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE DAG..HANGUL SYLLABLE DAH
      "\dB301..B31B",  # Lo  [27] HANGUL SYLLABLE DAEG..HANGUL SYLLABLE DAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE DAEG..HANGUL SYLLABLE DAEH
      "\dB31D..B337",  # Lo  [27] HANGUL SYLLABLE DYAG..HANGUL SYLLABLE DYAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE DYAG..HANGUL SYLLABLE DYAH
      "\dB339..B353",  # Lo  [27] HANGUL SYLLABLE DYAEG..HANGUL SYLLABLE DYAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE DYAEG..HANGUL SYLLABLE DYAEH
      "\dB355..B36F",  # Lo  [27] HANGUL SYLLABLE DEOG..HANGUL SYLLABLE DEOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE DEOG..HANGUL SYLLABLE DEOH
      "\dB371..B38B",  # Lo  [27] HANGUL SYLLABLE DEG..HANGUL SYLLABLE DEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE DEG..HANGUL SYLLABLE DEH
      "\dB38D..B3A7",  # Lo  [27] HANGUL SYLLABLE DYEOG..HANGUL SYLLABLE DYEOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE DYEOG..HANGUL SYLLABLE DYEOH
      "\dB3A9..B3C3",  # Lo  [27] HANGUL SYLLABLE DYEG..HANGUL SYLLABLE DYEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE DYEG..HANGUL SYLLABLE DYEH
      "\dB3C5..B3DF",  # Lo  [27] HANGUL SYLLABLE DOG..HANGUL SYLLABLE DOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE DOG..HANGUL SYLLABLE DOH
      "\dB3E1..B3FB",  # Lo  [27] HANGUL SYLLABLE DWAG..HANGUL SYLLABLE DWAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE DWAG..HANGUL SYLLABLE DWAH
      "\dB3FD..B417",  # Lo  [27] HANGUL SYLLABLE DWAEG..HANGUL SYLLABLE DWAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE DWAEG..HANGUL SYLLABLE DWAEH
      "\dB419..B433",  # Lo  [27] HANGUL SYLLABLE DOEG..HANGUL SYLLABLE DOEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE DOEG..HANGUL SYLLABLE DOEH
      "\dB435..B44F",  # Lo  [27] HANGUL SYLLABLE DYOG..HANGUL SYLLABLE DYOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE DYOG..HANGUL SYLLABLE DYOH
      "\dB451..B46B",  # Lo  [27] HANGUL SYLLABLE DUG..HANGUL SYLLABLE DUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE DUG..HANGUL SYLLABLE DUH
      "\dB46D..B487",  # Lo  [27] HANGUL SYLLABLE DWEOG..HANGUL SYLLABLE DWEOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE DWEOG..HANGUL SYLLABLE DWEOH
      "\dB489..B4A3",  # Lo  [27] HANGUL SYLLABLE DWEG..HANGUL SYLLABLE DWEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE DWEG..HANGUL SYLLABLE DWEH
      "\dB4A5..B4BF",  # Lo  [27] HANGUL SYLLABLE DWIG..HANGUL SYLLABLE DWIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE DWIG..HANGUL SYLLABLE DWIH
      "\dB4C1..B4DB",  # Lo  [27] HANGUL SYLLABLE DYUG..HANGUL SYLLABLE DYUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE DYUG..HANGUL SYLLABLE DYUH
      "\dB4DD..B4F7",  # Lo  [27] HANGUL SYLLABLE DEUG..HANGUL SYLLABLE DEUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE DEUG..HANGUL SYLLABLE DEUH
      "\dB4F9..B513",  # Lo  [27] HANGUL SYLLABLE DYIG..HANGUL SYLLABLE DYIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE DYIG..HANGUL SYLLABLE DYIH
      "\dB515..B52F",  # Lo  [27] HANGUL SYLLABLE DIG..HANGUL SYLLABLE DIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE DIG..HANGUL SYLLABLE DIH
      "\dB531..B54B",  # Lo  [27] HANGUL SYLLABLE DDAG..HANGUL SYLLABLE DDAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE DDAG..HANGUL SYLLABLE DDAH
      "\dB54D..B567",  # Lo  [27] HANGUL SYLLABLE DDAEG..HANGUL SYLLABLE DDAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE DDAEG..HANGUL SYLLABLE DDAEH
      "\dB569..B583",  # Lo  [27] HANGUL SYLLABLE DDYAG..HANGUL SYLLABLE DDYAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE DDYAG..HANGUL SYLLABLE DDYAH
      "\dB585..B59F",  # Lo  [27] HANGUL SYLLABLE DDYAEG..HANGUL SYLLABLE DDYAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE DDYAEG..HANGUL SYLLABLE DDYAEH
      "\dB5A1..B5BB",  # Lo  [27] HANGUL SYLLABLE DDEOG..HANGUL SYLLABLE DDEOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE DDEOG..HANGUL SYLLABLE DDEOH
      "\dB5BD..B5D7",  # Lo  [27] HANGUL SYLLABLE DDEG..HANGUL SYLLABLE DDEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE DDEG..HANGUL SYLLABLE DDEH
      "\dB5D9..B5F3",  # Lo  [27] HANGUL SYLLABLE DDYEOG..HANGUL SYLLABLE DDYEOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE DDYEOG..HANGUL SYLLABLE DDYEOH
      "\dB5F5..B60F",  # Lo  [27] HANGUL SYLLABLE DDYEG..HANGUL SYLLABLE DDYEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE DDYEG..HANGUL SYLLABLE DDYEH
      "\dB611..B62B",  # Lo  [27] HANGUL SYLLABLE DDOG..HANGUL SYLLABLE DDOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE DDOG..HANGUL SYLLABLE DDOH
      "\dB62D..B647",  # Lo  [27] HANGUL SYLLABLE DDWAG..HANGUL SYLLABLE DDWAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE DDWAG..HANGUL SYLLABLE DDWAH
      "\dB649..B663",  # Lo  [27] HANGUL SYLLABLE DDWAEG..HANGUL SYLLABLE DDWAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE DDWAEG..HANGUL SYLLABLE DDWAEH
      "\dB665..B67F",  # Lo  [27] HANGUL SYLLABLE DDOEG..HANGUL SYLLABLE DDOEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE DDOEG..HANGUL SYLLABLE DDOEH
      "\dB681..B69B",  # Lo  [27] HANGUL SYLLABLE DDYOG..HANGUL SYLLABLE DDYOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE DDYOG..HANGUL SYLLABLE DDYOH
      "\dB69D..B6B7",  # Lo  [27] HANGUL SYLLABLE DDUG..HANGUL SYLLABLE DDUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE DDUG..HANGUL SYLLABLE DDUH
      "\dB6B9..B6D3",  # Lo  [27] HANGUL SYLLABLE DDWEOG..HANGUL SYLLABLE DDWEOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE DDWEOG..HANGUL SYLLABLE DDWEOH
      "\dB6D5..B6EF",  # Lo  [27] HANGUL SYLLABLE DDWEG..HANGUL SYLLABLE DDWEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE DDWEG..HANGUL SYLLABLE DDWEH
      "\dB6F1..B70B",  # Lo  [27] HANGUL SYLLABLE DDWIG..HANGUL SYLLABLE DDWIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE DDWIG..HANGUL SYLLABLE DDWIH
      "\dB70D..B727",  # Lo  [27] HANGUL SYLLABLE DDYUG..HANGUL SYLLABLE DDYUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE DDYUG..HANGUL SYLLABLE DDYUH
      "\dB729..B743",  # Lo  [27] HANGUL SYLLABLE DDEUG..HANGUL SYLLABLE DDEUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE DDEUG..HANGUL SYLLABLE DDEUH
      "\dB745..B75F",  # Lo  [27] HANGUL SYLLABLE DDYIG..HANGUL SYLLABLE DDYIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE DDYIG..HANGUL SYLLABLE DDYIH
      "\dB761..B77B",  # Lo  [27] HANGUL SYLLABLE DDIG..HANGUL SYLLABLE DDIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE DDIG..HANGUL SYLLABLE DDIH
      "\dB77D..B797",  # Lo  [27] HANGUL SYLLABLE RAG..HANGUL SYLLABLE RAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE RAG..HANGUL SYLLABLE RAH
      "\dB799..B7B3",  # Lo  [27] HANGUL SYLLABLE RAEG..HANGUL SYLLABLE RAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE RAEG..HANGUL SYLLABLE RAEH
      "\dB7B5..B7CF",  # Lo  [27] HANGUL SYLLABLE RYAG..HANGUL SYLLABLE RYAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE RYAG..HANGUL SYLLABLE RYAH
      "\dB7D1..B7EB",  # Lo  [27] HANGUL SYLLABLE RYAEG..HANGUL SYLLABLE RYAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE RYAEG..HANGUL SYLLABLE RYAEH
      "\dB7ED..B807",  # Lo  [27] HANGUL SYLLABLE REOG..HANGUL SYLLABLE REOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE REOG..HANGUL SYLLABLE REOH
      "\dB809..B823",  # Lo  [27] HANGUL SYLLABLE REG..HANGUL SYLLABLE REH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE REG..HANGUL SYLLABLE REH
      "\dB825..B83F",  # Lo  [27] HANGUL SYLLABLE RYEOG..HANGUL SYLLABLE RYEOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE RYEOG..HANGUL SYLLABLE RYEOH
      "\dB841..B85B",  # Lo  [27] HANGUL SYLLABLE RYEG..HANGUL SYLLABLE RYEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE RYEG..HANGUL SYLLABLE RYEH
      "\dB85D..B877",  # Lo  [27] HANGUL SYLLABLE ROG..HANGUL SYLLABLE ROH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE ROG..HANGUL SYLLABLE ROH
      "\dB879..B893",  # Lo  [27] HANGUL SYLLABLE RWAG..HANGUL SYLLABLE RWAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE RWAG..HANGUL SYLLABLE RWAH
      "\dB895..B8AF",  # Lo  [27] HANGUL SYLLABLE RWAEG..HANGUL SYLLABLE RWAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE RWAEG..HANGUL SYLLABLE RWAEH
      "\dB8B1..B8CB",  # Lo  [27] HANGUL SYLLABLE ROEG..HANGUL SYLLABLE ROEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE ROEG..HANGUL SYLLABLE ROEH
      "\dB8CD..B8E7",  # Lo  [27] HANGUL SYLLABLE RYOG..HANGUL SYLLABLE RYOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE RYOG..HANGUL SYLLABLE RYOH
      "\dB8E9..B903",  # Lo  [27] HANGUL SYLLABLE RUG..HANGUL SYLLABLE RUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE RUG..HANGUL SYLLABLE RUH
      "\dB905..B91F",  # Lo  [27] HANGUL SYLLABLE RWEOG..HANGUL SYLLABLE RWEOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE RWEOG..HANGUL SYLLABLE RWEOH
      "\dB921..B93B",  # Lo  [27] HANGUL SYLLABLE RWEG..HANGUL SYLLABLE RWEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE RWEG..HANGUL SYLLABLE RWEH
      "\dB93D..B957",  # Lo  [27] HANGUL SYLLABLE RWIG..HANGUL SYLLABLE RWIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE RWIG..HANGUL SYLLABLE RWIH
      "\dB959..B973",  # Lo  [27] HANGUL SYLLABLE RYUG..HANGUL SYLLABLE RYUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE RYUG..HANGUL SYLLABLE RYUH
      "\dB975..B98F",  # Lo  [27] HANGUL SYLLABLE REUG..HANGUL SYLLABLE REUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE REUG..HANGUL SYLLABLE REUH
      "\dB991..B9AB",  # Lo  [27] HANGUL SYLLABLE RYIG..HANGUL SYLLABLE RYIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE RYIG..HANGUL SYLLABLE RYIH
      "\dB9AD..B9C7",  # Lo  [27] HANGUL SYLLABLE RIG..HANGUL SYLLABLE RIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE RIG..HANGUL SYLLABLE RIH
      "\dB9C9..B9E3",  # Lo  [27] HANGUL SYLLABLE MAG..HANGUL SYLLABLE MAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE MAG..HANGUL SYLLABLE MAH
      "\dB9E5..B9FF",  # Lo  [27] HANGUL SYLLABLE MAEG..HANGUL SYLLABLE MAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE MAEG..HANGUL SYLLABLE MAEH
      "\dBA01..BA1B",  # Lo  [27] HANGUL SYLLABLE MYAG..HANGUL SYLLABLE MYAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE MYAG..HANGUL SYLLABLE MYAH
      "\dBA1D..BA37",  # Lo  [27] HANGUL SYLLABLE MYAEG..HANGUL SYLLABLE MYAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE MYAEG..HANGUL SYLLABLE MYAEH
      "\dBA39..BA53",  # Lo  [27] HANGUL SYLLABLE MEOG..HANGUL SYLLABLE MEOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE MEOG..HANGUL SYLLABLE MEOH
      "\dBA55..BA6F",  # Lo  [27] HANGUL SYLLABLE MEG..HANGUL SYLLABLE MEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE MEG..HANGUL SYLLABLE MEH
      "\dBA71..BA8B",  # Lo  [27] HANGUL SYLLABLE MYEOG..HANGUL SYLLABLE MYEOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE MYEOG..HANGUL SYLLABLE MYEOH
      "\dBA8D..BAA7",  # Lo  [27] HANGUL SYLLABLE MYEG..HANGUL SYLLABLE MYEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE MYEG..HANGUL SYLLABLE MYEH
      "\dBAA9..BAC3",  # Lo  [27] HANGUL SYLLABLE MOG..HANGUL SYLLABLE MOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE MOG..HANGUL SYLLABLE MOH
      "\dBAC5..BADF",  # Lo  [27] HANGUL SYLLABLE MWAG..HANGUL SYLLABLE MWAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE MWAG..HANGUL SYLLABLE MWAH
      "\dBAE1..BAFB",  # Lo  [27] HANGUL SYLLABLE MWAEG..HANGUL SYLLABLE MWAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE MWAEG..HANGUL SYLLABLE MWAEH
      "\dBAFD..BB17",  # Lo  [27] HANGUL SYLLABLE MOEG..HANGUL SYLLABLE MOEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE MOEG..HANGUL SYLLABLE MOEH
      "\dBB19..BB33",  # Lo  [27] HANGUL SYLLABLE MYOG..HANGUL SYLLABLE MYOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE MYOG..HANGUL SYLLABLE MYOH
      "\dBB35..BB4F",  # Lo  [27] HANGUL SYLLABLE MUG..HANGUL SYLLABLE MUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE MUG..HANGUL SYLLABLE MUH
      "\dBB51..BB6B",  # Lo  [27] HANGUL SYLLABLE MWEOG..HANGUL SYLLABLE MWEOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE MWEOG..HANGUL SYLLABLE MWEOH
      "\dBB6D..BB87",  # Lo  [27] HANGUL SYLLABLE MWEG..HANGUL SYLLABLE MWEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE MWEG..HANGUL SYLLABLE MWEH
      "\dBB89..BBA3",  # Lo  [27] HANGUL SYLLABLE MWIG..HANGUL SYLLABLE MWIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE MWIG..HANGUL SYLLABLE MWIH
      "\dBBA5..BBBF",  # Lo  [27] HANGUL SYLLABLE MYUG..HANGUL SYLLABLE MYUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE MYUG..HANGUL SYLLABLE MYUH
      "\dBBC1..BBDB",  # Lo  [27] HANGUL SYLLABLE MEUG..HANGUL SYLLABLE MEUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE MEUG..HANGUL SYLLABLE MEUH
      "\dBBDD..BBF7",  # Lo  [27] HANGUL SYLLABLE MYIG..HANGUL SYLLABLE MYIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE MYIG..HANGUL SYLLABLE MYIH
      "\dBBF9..BC13",  # Lo  [27] HANGUL SYLLABLE MIG..HANGUL SYLLABLE MIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE MIG..HANGUL SYLLABLE MIH
      "\dBC15..BC2F",  # Lo  [27] HANGUL SYLLABLE BAG..HANGUL SYLLABLE BAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE BAG..HANGUL SYLLABLE BAH
      "\dBC31..BC4B",  # Lo  [27] HANGUL SYLLABLE BAEG..HANGUL SYLLABLE BAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE BAEG..HANGUL SYLLABLE BAEH
      "\dBC4D..BC67",  # Lo  [27] HANGUL SYLLABLE BYAG..HANGUL SYLLABLE BYAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE BYAG..HANGUL SYLLABLE BYAH
      "\dBC69..BC83",  # Lo  [27] HANGUL SYLLABLE BYAEG..HANGUL SYLLABLE BYAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE BYAEG..HANGUL SYLLABLE BYAEH
      "\dBC85..BC9F",  # Lo  [27] HANGUL SYLLABLE BEOG..HANGUL SYLLABLE BEOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE BEOG..HANGUL SYLLABLE BEOH
      "\dBCA1..BCBB",  # Lo  [27] HANGUL SYLLABLE BEG..HANGUL SYLLABLE BEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE BEG..HANGUL SYLLABLE BEH
      "\dBCBD..BCD7",  # Lo  [27] HANGUL SYLLABLE BYEOG..HANGUL SYLLABLE BYEOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE BYEOG..HANGUL SYLLABLE BYEOH
      "\dBCD9..BCF3",  # Lo  [27] HANGUL SYLLABLE BYEG..HANGUL SYLLABLE BYEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE BYEG..HANGUL SYLLABLE BYEH
      "\dBCF5..BD0F",  # Lo  [27] HANGUL SYLLABLE BOG..HANGUL SYLLABLE BOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE BOG..HANGUL SYLLABLE BOH
      "\dBD11..BD2B",  # Lo  [27] HANGUL SYLLABLE BWAG..HANGUL SYLLABLE BWAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE BWAG..HANGUL SYLLABLE BWAH
      "\dBD2D..BD47",  # Lo  [27] HANGUL SYLLABLE BWAEG..HANGUL SYLLABLE BWAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE BWAEG..HANGUL SYLLABLE BWAEH
      "\dBD49..BD63",  # Lo  [27] HANGUL SYLLABLE BOEG..HANGUL SYLLABLE BOEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE BOEG..HANGUL SYLLABLE BOEH
      "\dBD65..BD7F",  # Lo  [27] HANGUL SYLLABLE BYOG..HANGUL SYLLABLE BYOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE BYOG..HANGUL SYLLABLE BYOH
      "\dBD81..BD9B",  # Lo  [27] HANGUL SYLLABLE BUG..HANGUL SYLLABLE BUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE BUG..HANGUL SYLLABLE BUH
      "\dBD9D..BDB7",  # Lo  [27] HANGUL SYLLABLE BWEOG..HANGUL SYLLABLE BWEOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE BWEOG..HANGUL SYLLABLE BWEOH
      "\dBDB9..BDD3",  # Lo  [27] HANGUL SYLLABLE BWEG..HANGUL SYLLABLE BWEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE BWEG..HANGUL SYLLABLE BWEH
      "\dBDD5..BDEF",  # Lo  [27] HANGUL SYLLABLE BWIG..HANGUL SYLLABLE BWIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE BWIG..HANGUL SYLLABLE BWIH
      "\dBDF1..BE0B",  # Lo  [27] HANGUL SYLLABLE BYUG..HANGUL SYLLABLE BYUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE BYUG..HANGUL SYLLABLE BYUH
      "\dBE0D..BE27",  # Lo  [27] HANGUL SYLLABLE BEUG..HANGUL SYLLABLE BEUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE BEUG..HANGUL SYLLABLE BEUH
      "\dBE29..BE43",  # Lo  [27] HANGUL SYLLABLE BYIG..HANGUL SYLLABLE BYIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE BYIG..HANGUL SYLLABLE BYIH
      "\dBE45..BE5F",  # Lo  [27] HANGUL SYLLABLE BIG..HANGUL SYLLABLE BIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE BIG..HANGUL SYLLABLE BIH
      "\dBE61..BE7B",  # Lo  [27] HANGUL SYLLABLE BBAG..HANGUL SYLLABLE BBAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE BBAG..HANGUL SYLLABLE BBAH
      "\dBE7D..BE97",  # Lo  [27] HANGUL SYLLABLE BBAEG..HANGUL SYLLABLE BBAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE BBAEG..HANGUL SYLLABLE BBAEH
      "\dBE99..BEB3",  # Lo  [27] HANGUL SYLLABLE BBYAG..HANGUL SYLLABLE BBYAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE BBYAG..HANGUL SYLLABLE BBYAH
      "\dBEB5..BECF",  # Lo  [27] HANGUL SYLLABLE BBYAEG..HANGUL SYLLABLE BBYAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE BBYAEG..HANGUL SYLLABLE BBYAEH
      "\dBED1..BEEB",  # Lo  [27] HANGUL SYLLABLE BBEOG..HANGUL SYLLABLE BBEOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE BBEOG..HANGUL SYLLABLE BBEOH
      "\dBEED..BF07",  # Lo  [27] HANGUL SYLLABLE BBEG..HANGUL SYLLABLE BBEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE BBEG..HANGUL SYLLABLE BBEH
      "\dBF09..BF23",  # Lo  [27] HANGUL SYLLABLE BBYEOG..HANGUL SYLLABLE BBYEOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE BBYEOG..HANGUL SYLLABLE BBYEOH
      "\dBF25..BF3F",  # Lo  [27] HANGUL SYLLABLE BBYEG..HANGUL SYLLABLE BBYEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE BBYEG..HANGUL SYLLABLE BBYEH
      "\dBF41..BF5B",  # Lo  [27] HANGUL SYLLABLE BBOG..HANGUL SYLLABLE BBOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE BBOG..HANGUL SYLLABLE BBOH
      "\dBF5D..BF77",  # Lo  [27] HANGUL SYLLABLE BBWAG..HANGUL SYLLABLE BBWAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE BBWAG..HANGUL SYLLABLE BBWAH
      "\dBF79..BF93",  # Lo  [27] HANGUL SYLLABLE BBWAEG..HANGUL SYLLABLE BBWAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE BBWAEG..HANGUL SYLLABLE BBWAEH
      "\dBF95..BFAF",  # Lo  [27] HANGUL SYLLABLE BBOEG..HANGUL SYLLABLE BBOEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE BBOEG..HANGUL SYLLABLE BBOEH
      "\dBFB1..BFCB",  # Lo  [27] HANGUL SYLLABLE BBYOG..HANGUL SYLLABLE BBYOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE BBYOG..HANGUL SYLLABLE BBYOH
      "\dBFCD..BFE7",  # Lo  [27] HANGUL SYLLABLE BBUG..HANGUL SYLLABLE BBUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE BBUG..HANGUL SYLLABLE BBUH
      "\dBFE9..C003",  # Lo  [27] HANGUL SYLLABLE BBWEOG..HANGUL SYLLABLE BBWEOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE BBWEOG..HANGUL SYLLABLE BBWEOH
      "\dC005..C01F",  # Lo  [27] HANGUL SYLLABLE BBWEG..HANGUL SYLLABLE BBWEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE BBWEG..HANGUL SYLLABLE BBWEH
      "\dC021..C03B",  # Lo  [27] HANGUL SYLLABLE BBWIG..HANGUL SYLLABLE BBWIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE BBWIG..HANGUL SYLLABLE BBWIH
      "\dC03D..C057",  # Lo  [27] HANGUL SYLLABLE BBYUG..HANGUL SYLLABLE BBYUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE BBYUG..HANGUL SYLLABLE BBYUH
      "\dC059..C073",  # Lo  [27] HANGUL SYLLABLE BBEUG..HANGUL SYLLABLE BBEUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE BBEUG..HANGUL SYLLABLE BBEUH
      "\dC075..C08F",  # Lo  [27] HANGUL SYLLABLE BBYIG..HANGUL SYLLABLE BBYIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE BBYIG..HANGUL SYLLABLE BBYIH
      "\dC091..C0AB",  # Lo  [27] HANGUL SYLLABLE BBIG..HANGUL SYLLABLE BBIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE BBIG..HANGUL SYLLABLE BBIH
      "\dC0AD..C0C7",  # Lo  [27] HANGUL SYLLABLE SAG..HANGUL SYLLABLE SAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE SAG..HANGUL SYLLABLE SAH
      "\dC0C9..C0E3",  # Lo  [27] HANGUL SYLLABLE SAEG..HANGUL SYLLABLE SAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE SAEG..HANGUL SYLLABLE SAEH
      "\dC0E5..C0FF",  # Lo  [27] HANGUL SYLLABLE SYAG..HANGUL SYLLABLE SYAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE SYAG..HANGUL SYLLABLE SYAH
      "\dC101..C11B",  # Lo  [27] HANGUL SYLLABLE SYAEG..HANGUL SYLLABLE SYAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE SYAEG..HANGUL SYLLABLE SYAEH
      "\dC11D..C137",  # Lo  [27] HANGUL SYLLABLE SEOG..HANGUL SYLLABLE SEOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE SEOG..HANGUL SYLLABLE SEOH
      "\dC139..C153",  # Lo  [27] HANGUL SYLLABLE SEG..HANGUL SYLLABLE SEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE SEG..HANGUL SYLLABLE SEH
      "\dC155..C16F",  # Lo  [27] HANGUL SYLLABLE SYEOG..HANGUL SYLLABLE SYEOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE SYEOG..HANGUL SYLLABLE SYEOH
      "\dC171..C18B",  # Lo  [27] HANGUL SYLLABLE SYEG..HANGUL SYLLABLE SYEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE SYEG..HANGUL SYLLABLE SYEH
      "\dC18D..C1A7",  # Lo  [27] HANGUL SYLLABLE SOG..HANGUL SYLLABLE SOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE SOG..HANGUL SYLLABLE SOH
      "\dC1A9..C1C3",  # Lo  [27] HANGUL SYLLABLE SWAG..HANGUL SYLLABLE SWAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE SWAG..HANGUL SYLLABLE SWAH
      "\dC1C5..C1DF",  # Lo  [27] HANGUL SYLLABLE SWAEG..HANGUL SYLLABLE SWAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE SWAEG..HANGUL SYLLABLE SWAEH
      "\dC1E1..C1FB",  # Lo  [27] HANGUL SYLLABLE SOEG..HANGUL SYLLABLE SOEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE SOEG..HANGUL SYLLABLE SOEH
      "\dC1FD..C217",  # Lo  [27] HANGUL SYLLABLE SYOG..HANGUL SYLLABLE SYOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE SYOG..HANGUL SYLLABLE SYOH
      "\dC219..C233",  # Lo  [27] HANGUL SYLLABLE SUG..HANGUL SYLLABLE SUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE SUG..HANGUL SYLLABLE SUH
      "\dC235..C24F",  # Lo  [27] HANGUL SYLLABLE SWEOG..HANGUL SYLLABLE SWEOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE SWEOG..HANGUL SYLLABLE SWEOH
      "\dC251..C26B",  # Lo  [27] HANGUL SYLLABLE SWEG..HANGUL SYLLABLE SWEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE SWEG..HANGUL SYLLABLE SWEH
      "\dC26D..C287",  # Lo  [27] HANGUL SYLLABLE SWIG..HANGUL SYLLABLE SWIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE SWIG..HANGUL SYLLABLE SWIH
      "\dC289..C2A3",  # Lo  [27] HANGUL SYLLABLE SYUG..HANGUL SYLLABLE SYUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE SYUG..HANGUL SYLLABLE SYUH
      "\dC2A5..C2BF",  # Lo  [27] HANGUL SYLLABLE SEUG..HANGUL SYLLABLE SEUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE SEUG..HANGUL SYLLABLE SEUH
      "\dC2C1..C2DB",  # Lo  [27] HANGUL SYLLABLE SYIG..HANGUL SYLLABLE SYIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE SYIG..HANGUL SYLLABLE SYIH
      "\dC2DD..C2F7",  # Lo  [27] HANGUL SYLLABLE SIG..HANGUL SYLLABLE SIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE SIG..HANGUL SYLLABLE SIH
      "\dC2F9..C313",  # Lo  [27] HANGUL SYLLABLE SSAG..HANGUL SYLLABLE SSAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE SSAG..HANGUL SYLLABLE SSAH
      "\dC315..C32F",  # Lo  [27] HANGUL SYLLABLE SSAEG..HANGUL SYLLABLE SSAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE SSAEG..HANGUL SYLLABLE SSAEH
      "\dC331..C34B",  # Lo  [27] HANGUL SYLLABLE SSYAG..HANGUL SYLLABLE SSYAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE SSYAG..HANGUL SYLLABLE SSYAH
      "\dC34D..C367",  # Lo  [27] HANGUL SYLLABLE SSYAEG..HANGUL SYLLABLE SSYAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE SSYAEG..HANGUL SYLLABLE SSYAEH
      "\dC369..C383",  # Lo  [27] HANGUL SYLLABLE SSEOG..HANGUL SYLLABLE SSEOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE SSEOG..HANGUL SYLLABLE SSEOH
      "\dC385..C39F",  # Lo  [27] HANGUL SYLLABLE SSEG..HANGUL SYLLABLE SSEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE SSEG..HANGUL SYLLABLE SSEH
      "\dC3A1..C3BB",  # Lo  [27] HANGUL SYLLABLE SSYEOG..HANGUL SYLLABLE SSYEOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE SSYEOG..HANGUL SYLLABLE SSYEOH
      "\dC3BD..C3D7",  # Lo  [27] HANGUL SYLLABLE SSYEG..HANGUL SYLLABLE SSYEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE SSYEG..HANGUL SYLLABLE SSYEH
      "\dC3D9..C3F3",  # Lo  [27] HANGUL SYLLABLE SSOG..HANGUL SYLLABLE SSOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE SSOG..HANGUL SYLLABLE SSOH
      "\dC3F5..C40F",  # Lo  [27] HANGUL SYLLABLE SSWAG..HANGUL SYLLABLE SSWAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE SSWAG..HANGUL SYLLABLE SSWAH
      "\dC411..C42B",  # Lo  [27] HANGUL SYLLABLE SSWAEG..HANGUL SYLLABLE SSWAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE SSWAEG..HANGUL SYLLABLE SSWAEH
      "\dC42D..C447",  # Lo  [27] HANGUL SYLLABLE SSOEG..HANGUL SYLLABLE SSOEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE SSOEG..HANGUL SYLLABLE SSOEH
      "\dC449..C463",  # Lo  [27] HANGUL SYLLABLE SSYOG..HANGUL SYLLABLE SSYOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE SSYOG..HANGUL SYLLABLE SSYOH
      "\dC465..C47F",  # Lo  [27] HANGUL SYLLABLE SSUG..HANGUL SYLLABLE SSUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE SSUG..HANGUL SYLLABLE SSUH
      "\dC481..C49B",  # Lo  [27] HANGUL SYLLABLE SSWEOG..HANGUL SYLLABLE SSWEOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE SSWEOG..HANGUL SYLLABLE SSWEOH
      "\dC49D..C4B7",  # Lo  [27] HANGUL SYLLABLE SSWEG..HANGUL SYLLABLE SSWEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE SSWEG..HANGUL SYLLABLE SSWEH
      "\dC4B9..C4D3",  # Lo  [27] HANGUL SYLLABLE SSWIG..HANGUL SYLLABLE SSWIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE SSWIG..HANGUL SYLLABLE SSWIH
      "\dC4D5..C4EF",  # Lo  [27] HANGUL SYLLABLE SSYUG..HANGUL SYLLABLE SSYUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE SSYUG..HANGUL SYLLABLE SSYUH
      "\dC4F1..C50B",  # Lo  [27] HANGUL SYLLABLE SSEUG..HANGUL SYLLABLE SSEUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE SSEUG..HANGUL SYLLABLE SSEUH
      "\dC50D..C527",  # Lo  [27] HANGUL SYLLABLE SSYIG..HANGUL SYLLABLE SSYIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE SSYIG..HANGUL SYLLABLE SSYIH
      "\dC529..C543",  # Lo  [27] HANGUL SYLLABLE SSIG..HANGUL SYLLABLE SSIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE SSIG..HANGUL SYLLABLE SSIH
      "\dC545..C55F",  # Lo  [27] HANGUL SYLLABLE AG..HANGUL SYLLABLE AH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE AG..HANGUL SYLLABLE AH
      "\dC561..C57B",  # Lo  [27] HANGUL SYLLABLE AEG..HANGUL SYLLABLE AEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE AEG..HANGUL SYLLABLE AEH
      "\dC57D..C597",  # Lo  [27] HANGUL SYLLABLE YAG..HANGUL SYLLABLE YAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE YAG..HANGUL SYLLABLE YAH
      "\dC599..C5B3",  # Lo  [27] HANGUL SYLLABLE YAEG..HANGUL SYLLABLE YAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE YAEG..HANGUL SYLLABLE YAEH
      "\dC5B5..C5CF",  # Lo  [27] HANGUL SYLLABLE EOG..HANGUL SYLLABLE EOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE EOG..HANGUL SYLLABLE EOH
      "\dC5D1..C5EB",  # Lo  [27] HANGUL SYLLABLE EG..HANGUL SYLLABLE EH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE EG..HANGUL SYLLABLE EH
      "\dC5ED..C607",  # Lo  [27] HANGUL SYLLABLE YEOG..HANGUL SYLLABLE YEOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE YEOG..HANGUL SYLLABLE YEOH
      "\dC609..C623",  # Lo  [27] HANGUL SYLLABLE YEG..HANGUL SYLLABLE YEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE YEG..HANGUL SYLLABLE YEH
      "\dC625..C63F",  # Lo  [27] HANGUL SYLLABLE OG..HANGUL SYLLABLE OH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE OG..HANGUL SYLLABLE OH
      "\dC641..C65B",  # Lo  [27] HANGUL SYLLABLE WAG..HANGUL SYLLABLE WAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE WAG..HANGUL SYLLABLE WAH
      "\dC65D..C677",  # Lo  [27] HANGUL SYLLABLE WAEG..HANGUL SYLLABLE WAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE WAEG..HANGUL SYLLABLE WAEH
      "\dC679..C693",  # Lo  [27] HANGUL SYLLABLE OEG..HANGUL SYLLABLE OEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE OEG..HANGUL SYLLABLE OEH
      "\dC695..C6AF",  # Lo  [27] HANGUL SYLLABLE YOG..HANGUL SYLLABLE YOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE YOG..HANGUL SYLLABLE YOH
      "\dC6B1..C6CB",  # Lo  [27] HANGUL SYLLABLE UG..HANGUL SYLLABLE UH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE UG..HANGUL SYLLABLE UH
      "\dC6CD..C6E7",  # Lo  [27] HANGUL SYLLABLE WEOG..HANGUL SYLLABLE WEOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE WEOG..HANGUL SYLLABLE WEOH
      "\dC6E9..C703",  # Lo  [27] HANGUL SYLLABLE WEG..HANGUL SYLLABLE WEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE WEG..HANGUL SYLLABLE WEH
      "\dC705..C71F",  # Lo  [27] HANGUL SYLLABLE WIG..HANGUL SYLLABLE WIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE WIG..HANGUL SYLLABLE WIH
      "\dC721..C73B",  # Lo  [27] HANGUL SYLLABLE YUG..HANGUL SYLLABLE YUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE YUG..HANGUL SYLLABLE YUH
      "\dC73D..C757",  # Lo  [27] HANGUL SYLLABLE EUG..HANGUL SYLLABLE EUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE EUG..HANGUL SYLLABLE EUH
      "\dC759..C773",  # Lo  [27] HANGUL SYLLABLE YIG..HANGUL SYLLABLE YIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE YIG..HANGUL SYLLABLE YIH
      "\dC775..C78F",  # Lo  [27] HANGUL SYLLABLE IG..HANGUL SYLLABLE IH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE IG..HANGUL SYLLABLE IH
      "\dC791..C7AB",  # Lo  [27] HANGUL SYLLABLE JAG..HANGUL SYLLABLE JAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE JAG..HANGUL SYLLABLE JAH
      "\dC7AD..C7C7",  # Lo  [27] HANGUL SYLLABLE JAEG..HANGUL SYLLABLE JAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE JAEG..HANGUL SYLLABLE JAEH
      "\dC7C9..C7E3",  # Lo  [27] HANGUL SYLLABLE JYAG..HANGUL SYLLABLE JYAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE JYAG..HANGUL SYLLABLE JYAH
      "\dC7E5..C7FF",  # Lo  [27] HANGUL SYLLABLE JYAEG..HANGUL SYLLABLE JYAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE JYAEG..HANGUL SYLLABLE JYAEH
      "\dC801..C81B",  # Lo  [27] HANGUL SYLLABLE JEOG..HANGUL SYLLABLE JEOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE JEOG..HANGUL SYLLABLE JEOH
      "\dC81D..C837",  # Lo  [27] HANGUL SYLLABLE JEG..HANGUL SYLLABLE JEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE JEG..HANGUL SYLLABLE JEH
      "\dC839..C853",  # Lo  [27] HANGUL SYLLABLE JYEOG..HANGUL SYLLABLE JYEOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE JYEOG..HANGUL SYLLABLE JYEOH
      "\dC855..C86F",  # Lo  [27] HANGUL SYLLABLE JYEG..HANGUL SYLLABLE JYEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE JYEG..HANGUL SYLLABLE JYEH
      "\dC871..C88B",  # Lo  [27] HANGUL SYLLABLE JOG..HANGUL SYLLABLE JOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE JOG..HANGUL SYLLABLE JOH
      "\dC88D..C8A7",  # Lo  [27] HANGUL SYLLABLE JWAG..HANGUL SYLLABLE JWAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE JWAG..HANGUL SYLLABLE JWAH
      "\dC8A9..C8C3",  # Lo  [27] HANGUL SYLLABLE JWAEG..HANGUL SYLLABLE JWAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE JWAEG..HANGUL SYLLABLE JWAEH
      "\dC8C5..C8DF",  # Lo  [27] HANGUL SYLLABLE JOEG..HANGUL SYLLABLE JOEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE JOEG..HANGUL SYLLABLE JOEH
      "\dC8E1..C8FB",  # Lo  [27] HANGUL SYLLABLE JYOG..HANGUL SYLLABLE JYOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE JYOG..HANGUL SYLLABLE JYOH
      "\dC8FD..C917",  # Lo  [27] HANGUL SYLLABLE JUG..HANGUL SYLLABLE JUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE JUG..HANGUL SYLLABLE JUH
      "\dC919..C933",  # Lo  [27] HANGUL SYLLABLE JWEOG..HANGUL SYLLABLE JWEOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE JWEOG..HANGUL SYLLABLE JWEOH
      "\dC935..C94F",  # Lo  [27] HANGUL SYLLABLE JWEG..HANGUL SYLLABLE JWEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE JWEG..HANGUL SYLLABLE JWEH
      "\dC951..C96B",  # Lo  [27] HANGUL SYLLABLE JWIG..HANGUL SYLLABLE JWIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE JWIG..HANGUL SYLLABLE JWIH
      "\dC96D..C987",  # Lo  [27] HANGUL SYLLABLE JYUG..HANGUL SYLLABLE JYUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE JYUG..HANGUL SYLLABLE JYUH
      "\dC989..C9A3",  # Lo  [27] HANGUL SYLLABLE JEUG..HANGUL SYLLABLE JEUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE JEUG..HANGUL SYLLABLE JEUH
      "\dC9A5..C9BF",  # Lo  [27] HANGUL SYLLABLE JYIG..HANGUL SYLLABLE JYIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE JYIG..HANGUL SYLLABLE JYIH
      "\dC9C1..C9DB",  # Lo  [27] HANGUL SYLLABLE JIG..HANGUL SYLLABLE JIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE JIG..HANGUL SYLLABLE JIH
      "\dC9DD..C9F7",  # Lo  [27] HANGUL SYLLABLE JJAG..HANGUL SYLLABLE JJAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE JJAG..HANGUL SYLLABLE JJAH
      "\dC9F9..CA13",  # Lo  [27] HANGUL SYLLABLE JJAEG..HANGUL SYLLABLE JJAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE JJAEG..HANGUL SYLLABLE JJAEH
      "\dCA15..CA2F",  # Lo  [27] HANGUL SYLLABLE JJYAG..HANGUL SYLLABLE JJYAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE JJYAG..HANGUL SYLLABLE JJYAH
      "\dCA31..CA4B",  # Lo  [27] HANGUL SYLLABLE JJYAEG..HANGUL SYLLABLE JJYAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE JJYAEG..HANGUL SYLLABLE JJYAEH
      "\dCA4D..CA67",  # Lo  [27] HANGUL SYLLABLE JJEOG..HANGUL SYLLABLE JJEOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE JJEOG..HANGUL SYLLABLE JJEOH
      "\dCA69..CA83",  # Lo  [27] HANGUL SYLLABLE JJEG..HANGUL SYLLABLE JJEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE JJEG..HANGUL SYLLABLE JJEH
      "\dCA85..CA9F",  # Lo  [27] HANGUL SYLLABLE JJYEOG..HANGUL SYLLABLE JJYEOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE JJYEOG..HANGUL SYLLABLE JJYEOH
      "\dCAA1..CABB",  # Lo  [27] HANGUL SYLLABLE JJYEG..HANGUL SYLLABLE JJYEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE JJYEG..HANGUL SYLLABLE JJYEH
      "\dCABD..CAD7",  # Lo  [27] HANGUL SYLLABLE JJOG..HANGUL SYLLABLE JJOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE JJOG..HANGUL SYLLABLE JJOH
      "\dCAD9..CAF3",  # Lo  [27] HANGUL SYLLABLE JJWAG..HANGUL SYLLABLE JJWAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE JJWAG..HANGUL SYLLABLE JJWAH
      "\dCAF5..CB0F",  # Lo  [27] HANGUL SYLLABLE JJWAEG..HANGUL SYLLABLE JJWAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE JJWAEG..HANGUL SYLLABLE JJWAEH
      "\dCB11..CB2B",  # Lo  [27] HANGUL SYLLABLE JJOEG..HANGUL SYLLABLE JJOEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE JJOEG..HANGUL SYLLABLE JJOEH
      "\dCB2D..CB47",  # Lo  [27] HANGUL SYLLABLE JJYOG..HANGUL SYLLABLE JJYOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE JJYOG..HANGUL SYLLABLE JJYOH
      "\dCB49..CB63",  # Lo  [27] HANGUL SYLLABLE JJUG..HANGUL SYLLABLE JJUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE JJUG..HANGUL SYLLABLE JJUH
      "\dCB65..CB7F",  # Lo  [27] HANGUL SYLLABLE JJWEOG..HANGUL SYLLABLE JJWEOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE JJWEOG..HANGUL SYLLABLE JJWEOH
      "\dCB81..CB9B",  # Lo  [27] HANGUL SYLLABLE JJWEG..HANGUL SYLLABLE JJWEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE JJWEG..HANGUL SYLLABLE JJWEH
      "\dCB9D..CBB7",  # Lo  [27] HANGUL SYLLABLE JJWIG..HANGUL SYLLABLE JJWIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE JJWIG..HANGUL SYLLABLE JJWIH
      "\dCBB9..CBD3",  # Lo  [27] HANGUL SYLLABLE JJYUG..HANGUL SYLLABLE JJYUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE JJYUG..HANGUL SYLLABLE JJYUH
      "\dCBD5..CBEF",  # Lo  [27] HANGUL SYLLABLE JJEUG..HANGUL SYLLABLE JJEUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE JJEUG..HANGUL SYLLABLE JJEUH
      "\dCBF1..CC0B",  # Lo  [27] HANGUL SYLLABLE JJYIG..HANGUL SYLLABLE JJYIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE JJYIG..HANGUL SYLLABLE JJYIH
      "\dCC0D..CC27",  # Lo  [27] HANGUL SYLLABLE JJIG..HANGUL SYLLABLE JJIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE JJIG..HANGUL SYLLABLE JJIH
      "\dCC29..CC43",  # Lo  [27] HANGUL SYLLABLE CAG..HANGUL SYLLABLE CAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE CAG..HANGUL SYLLABLE CAH
      "\dCC45..CC5F",  # Lo  [27] HANGUL SYLLABLE CAEG..HANGUL SYLLABLE CAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE CAEG..HANGUL SYLLABLE CAEH
      "\dCC61..CC7B",  # Lo  [27] HANGUL SYLLABLE CYAG..HANGUL SYLLABLE CYAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE CYAG..HANGUL SYLLABLE CYAH
      "\dCC7D..CC97",  # Lo  [27] HANGUL SYLLABLE CYAEG..HANGUL SYLLABLE CYAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE CYAEG..HANGUL SYLLABLE CYAEH
      "\dCC99..CCB3",  # Lo  [27] HANGUL SYLLABLE CEOG..HANGUL SYLLABLE CEOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE CEOG..HANGUL SYLLABLE CEOH
      "\dCCB5..CCCF",  # Lo  [27] HANGUL SYLLABLE CEG..HANGUL SYLLABLE CEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE CEG..HANGUL SYLLABLE CEH
      "\dCCD1..CCEB",  # Lo  [27] HANGUL SYLLABLE CYEOG..HANGUL SYLLABLE CYEOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE CYEOG..HANGUL SYLLABLE CYEOH
      "\dCCED..CD07",  # Lo  [27] HANGUL SYLLABLE CYEG..HANGUL SYLLABLE CYEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE CYEG..HANGUL SYLLABLE CYEH
      "\dCD09..CD23",  # Lo  [27] HANGUL SYLLABLE COG..HANGUL SYLLABLE COH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE COG..HANGUL SYLLABLE COH
      "\dCD25..CD3F",  # Lo  [27] HANGUL SYLLABLE CWAG..HANGUL SYLLABLE CWAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE CWAG..HANGUL SYLLABLE CWAH
      "\dCD41..CD5B",  # Lo  [27] HANGUL SYLLABLE CWAEG..HANGUL SYLLABLE CWAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE CWAEG..HANGUL SYLLABLE CWAEH
      "\dCD5D..CD77",  # Lo  [27] HANGUL SYLLABLE COEG..HANGUL SYLLABLE COEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE COEG..HANGUL SYLLABLE COEH
      "\dCD79..CD93",  # Lo  [27] HANGUL SYLLABLE CYOG..HANGUL SYLLABLE CYOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE CYOG..HANGUL SYLLABLE CYOH
      "\dCD95..CDAF",  # Lo  [27] HANGUL SYLLABLE CUG..HANGUL SYLLABLE CUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE CUG..HANGUL SYLLABLE CUH
      "\dCDB1..CDCB",  # Lo  [27] HANGUL SYLLABLE CWEOG..HANGUL SYLLABLE CWEOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE CWEOG..HANGUL SYLLABLE CWEOH
      "\dCDCD..CDE7",  # Lo  [27] HANGUL SYLLABLE CWEG..HANGUL SYLLABLE CWEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE CWEG..HANGUL SYLLABLE CWEH
      "\dCDE9..CE03",  # Lo  [27] HANGUL SYLLABLE CWIG..HANGUL SYLLABLE CWIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE CWIG..HANGUL SYLLABLE CWIH
      "\dCE05..CE1F",  # Lo  [27] HANGUL SYLLABLE CYUG..HANGUL SYLLABLE CYUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE CYUG..HANGUL SYLLABLE CYUH
      "\dCE21..CE3B",  # Lo  [27] HANGUL SYLLABLE CEUG..HANGUL SYLLABLE CEUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE CEUG..HANGUL SYLLABLE CEUH
      "\dCE3D..CE57",  # Lo  [27] HANGUL SYLLABLE CYIG..HANGUL SYLLABLE CYIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE CYIG..HANGUL SYLLABLE CYIH
      "\dCE59..CE73",  # Lo  [27] HANGUL SYLLABLE CIG..HANGUL SYLLABLE CIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE CIG..HANGUL SYLLABLE CIH
      "\dCE75..CE8F",  # Lo  [27] HANGUL SYLLABLE KAG..HANGUL SYLLABLE KAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE KAG..HANGUL SYLLABLE KAH
      "\dCE91..CEAB",  # Lo  [27] HANGUL SYLLABLE KAEG..HANGUL SYLLABLE KAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE KAEG..HANGUL SYLLABLE KAEH
      "\dCEAD..CEC7",  # Lo  [27] HANGUL SYLLABLE KYAG..HANGUL SYLLABLE KYAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE KYAG..HANGUL SYLLABLE KYAH
      "\dCEC9..CEE3",  # Lo  [27] HANGUL SYLLABLE KYAEG..HANGUL SYLLABLE KYAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE KYAEG..HANGUL SYLLABLE KYAEH
      "\dCEE5..CEFF",  # Lo  [27] HANGUL SYLLABLE KEOG..HANGUL SYLLABLE KEOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE KEOG..HANGUL SYLLABLE KEOH
      "\dCF01..CF1B",  # Lo  [27] HANGUL SYLLABLE KEG..HANGUL SYLLABLE KEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE KEG..HANGUL SYLLABLE KEH
      "\dCF1D..CF37",  # Lo  [27] HANGUL SYLLABLE KYEOG..HANGUL SYLLABLE KYEOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE KYEOG..HANGUL SYLLABLE KYEOH
      "\dCF39..CF53",  # Lo  [27] HANGUL SYLLABLE KYEG..HANGUL SYLLABLE KYEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE KYEG..HANGUL SYLLABLE KYEH
      "\dCF55..CF6F",  # Lo  [27] HANGUL SYLLABLE KOG..HANGUL SYLLABLE KOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE KOG..HANGUL SYLLABLE KOH
      "\dCF71..CF8B",  # Lo  [27] HANGUL SYLLABLE KWAG..HANGUL SYLLABLE KWAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE KWAG..HANGUL SYLLABLE KWAH
      "\dCF8D..CFA7",  # Lo  [27] HANGUL SYLLABLE KWAEG..HANGUL SYLLABLE KWAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE KWAEG..HANGUL SYLLABLE KWAEH
      "\dCFA9..CFC3",  # Lo  [27] HANGUL SYLLABLE KOEG..HANGUL SYLLABLE KOEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE KOEG..HANGUL SYLLABLE KOEH
      "\dCFC5..CFDF",  # Lo  [27] HANGUL SYLLABLE KYOG..HANGUL SYLLABLE KYOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE KYOG..HANGUL SYLLABLE KYOH
      "\dCFE1..CFFB",  # Lo  [27] HANGUL SYLLABLE KUG..HANGUL SYLLABLE KUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE KUG..HANGUL SYLLABLE KUH
      "\dCFFD..D017",  # Lo  [27] HANGUL SYLLABLE KWEOG..HANGUL SYLLABLE KWEOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE KWEOG..HANGUL SYLLABLE KWEOH
      "\dD019..D033",  # Lo  [27] HANGUL SYLLABLE KWEG..HANGUL SYLLABLE KWEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE KWEG..HANGUL SYLLABLE KWEH
      "\dD035..D04F",  # Lo  [27] HANGUL SYLLABLE KWIG..HANGUL SYLLABLE KWIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE KWIG..HANGUL SYLLABLE KWIH
      "\dD051..D06B",  # Lo  [27] HANGUL SYLLABLE KYUG..HANGUL SYLLABLE KYUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE KYUG..HANGUL SYLLABLE KYUH
      "\dD06D..D087",  # Lo  [27] HANGUL SYLLABLE KEUG..HANGUL SYLLABLE KEUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE KEUG..HANGUL SYLLABLE KEUH
      "\dD089..D0A3",  # Lo  [27] HANGUL SYLLABLE KYIG..HANGUL SYLLABLE KYIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE KYIG..HANGUL SYLLABLE KYIH
      "\dD0A5..D0BF",  # Lo  [27] HANGUL SYLLABLE KIG..HANGUL SYLLABLE KIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE KIG..HANGUL SYLLABLE KIH
      "\dD0C1..D0DB",  # Lo  [27] HANGUL SYLLABLE TAG..HANGUL SYLLABLE TAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE TAG..HANGUL SYLLABLE TAH
      "\dD0DD..D0F7",  # Lo  [27] HANGUL SYLLABLE TAEG..HANGUL SYLLABLE TAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE TAEG..HANGUL SYLLABLE TAEH
      "\dD0F9..D113",  # Lo  [27] HANGUL SYLLABLE TYAG..HANGUL SYLLABLE TYAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE TYAG..HANGUL SYLLABLE TYAH
      "\dD115..D12F",  # Lo  [27] HANGUL SYLLABLE TYAEG..HANGUL SYLLABLE TYAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE TYAEG..HANGUL SYLLABLE TYAEH
      "\dD131..D14B",  # Lo  [27] HANGUL SYLLABLE TEOG..HANGUL SYLLABLE TEOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE TEOG..HANGUL SYLLABLE TEOH
      "\dD14D..D167",  # Lo  [27] HANGUL SYLLABLE TEG..HANGUL SYLLABLE TEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE TEG..HANGUL SYLLABLE TEH
      "\dD169..D183",  # Lo  [27] HANGUL SYLLABLE TYEOG..HANGUL SYLLABLE TYEOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE TYEOG..HANGUL SYLLABLE TYEOH
      "\dD185..D19F",  # Lo  [27] HANGUL SYLLABLE TYEG..HANGUL SYLLABLE TYEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE TYEG..HANGUL SYLLABLE TYEH
      "\dD1A1..D1BB",  # Lo  [27] HANGUL SYLLABLE TOG..HANGUL SYLLABLE TOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE TOG..HANGUL SYLLABLE TOH
      "\dD1BD..D1D7",  # Lo  [27] HANGUL SYLLABLE TWAG..HANGUL SYLLABLE TWAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE TWAG..HANGUL SYLLABLE TWAH
      "\dD1D9..D1F3",  # Lo  [27] HANGUL SYLLABLE TWAEG..HANGUL SYLLABLE TWAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE TWAEG..HANGUL SYLLABLE TWAEH
      "\dD1F5..D20F",  # Lo  [27] HANGUL SYLLABLE TOEG..HANGUL SYLLABLE TOEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE TOEG..HANGUL SYLLABLE TOEH
      "\dD211..D22B",  # Lo  [27] HANGUL SYLLABLE TYOG..HANGUL SYLLABLE TYOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE TYOG..HANGUL SYLLABLE TYOH
      "\dD22D..D247",  # Lo  [27] HANGUL SYLLABLE TUG..HANGUL SYLLABLE TUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE TUG..HANGUL SYLLABLE TUH
      "\dD249..D263",  # Lo  [27] HANGUL SYLLABLE TWEOG..HANGUL SYLLABLE TWEOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE TWEOG..HANGUL SYLLABLE TWEOH
      "\dD265..D27F",  # Lo  [27] HANGUL SYLLABLE TWEG..HANGUL SYLLABLE TWEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE TWEG..HANGUL SYLLABLE TWEH
      "\dD281..D29B",  # Lo  [27] HANGUL SYLLABLE TWIG..HANGUL SYLLABLE TWIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE TWIG..HANGUL SYLLABLE TWIH
      "\dD29D..D2B7",  # Lo  [27] HANGUL SYLLABLE TYUG..HANGUL SYLLABLE TYUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE TYUG..HANGUL SYLLABLE TYUH
      "\dD2B9..D2D3",  # Lo  [27] HANGUL SYLLABLE TEUG..HANGUL SYLLABLE TEUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE TEUG..HANGUL SYLLABLE TEUH
      "\dD2D5..D2EF",  # Lo  [27] HANGUL SYLLABLE TYIG..HANGUL SYLLABLE TYIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE TYIG..HANGUL SYLLABLE TYIH
      "\dD2F1..D30B",  # Lo  [27] HANGUL SYLLABLE TIG..HANGUL SYLLABLE TIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE TIG..HANGUL SYLLABLE TIH
      "\dD30D..D327",  # Lo  [27] HANGUL SYLLABLE PAG..HANGUL SYLLABLE PAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE PAG..HANGUL SYLLABLE PAH
      "\dD329..D343",  # Lo  [27] HANGUL SYLLABLE PAEG..HANGUL SYLLABLE PAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE PAEG..HANGUL SYLLABLE PAEH
      "\dD345..D35F",  # Lo  [27] HANGUL SYLLABLE PYAG..HANGUL SYLLABLE PYAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE PYAG..HANGUL SYLLABLE PYAH
      "\dD361..D37B",  # Lo  [27] HANGUL SYLLABLE PYAEG..HANGUL SYLLABLE PYAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE PYAEG..HANGUL SYLLABLE PYAEH
      "\dD37D..D397",  # Lo  [27] HANGUL SYLLABLE PEOG..HANGUL SYLLABLE PEOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE PEOG..HANGUL SYLLABLE PEOH
      "\dD399..D3B3",  # Lo  [27] HANGUL SYLLABLE PEG..HANGUL SYLLABLE PEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE PEG..HANGUL SYLLABLE PEH
      "\dD3B5..D3CF",  # Lo  [27] HANGUL SYLLABLE PYEOG..HANGUL SYLLABLE PYEOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE PYEOG..HANGUL SYLLABLE PYEOH
      "\dD3D1..D3EB",  # Lo  [27] HANGUL SYLLABLE PYEG..HANGUL SYLLABLE PYEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE PYEG..HANGUL SYLLABLE PYEH
      "\dD3ED..D407",  # Lo  [27] HANGUL SYLLABLE POG..HANGUL SYLLABLE POH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE POG..HANGUL SYLLABLE POH
      "\dD409..D423",  # Lo  [27] HANGUL SYLLABLE PWAG..HANGUL SYLLABLE PWAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE PWAG..HANGUL SYLLABLE PWAH
      "\dD425..D43F",  # Lo  [27] HANGUL SYLLABLE PWAEG..HANGUL SYLLABLE PWAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE PWAEG..HANGUL SYLLABLE PWAEH
      "\dD441..D45B",  # Lo  [27] HANGUL SYLLABLE POEG..HANGUL SYLLABLE POEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE POEG..HANGUL SYLLABLE POEH
      "\dD45D..D477",  # Lo  [27] HANGUL SYLLABLE PYOG..HANGUL SYLLABLE PYOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE PYOG..HANGUL SYLLABLE PYOH
      "\dD479..D493",  # Lo  [27] HANGUL SYLLABLE PUG..HANGUL SYLLABLE PUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE PUG..HANGUL SYLLABLE PUH
      "\dD495..D4AF",  # Lo  [27] HANGUL SYLLABLE PWEOG..HANGUL SYLLABLE PWEOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE PWEOG..HANGUL SYLLABLE PWEOH
      "\dD4B1..D4CB",  # Lo  [27] HANGUL SYLLABLE PWEG..HANGUL SYLLABLE PWEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE PWEG..HANGUL SYLLABLE PWEH
      "\dD4CD..D4E7",  # Lo  [27] HANGUL SYLLABLE PWIG..HANGUL SYLLABLE PWIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE PWIG..HANGUL SYLLABLE PWIH
      "\dD4E9..D503",  # Lo  [27] HANGUL SYLLABLE PYUG..HANGUL SYLLABLE PYUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE PYUG..HANGUL SYLLABLE PYUH
      "\dD505..D51F",  # Lo  [27] HANGUL SYLLABLE PEUG..HANGUL SYLLABLE PEUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE PEUG..HANGUL SYLLABLE PEUH
      "\dD521..D53B",  # Lo  [27] HANGUL SYLLABLE PYIG..HANGUL SYLLABLE PYIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE PYIG..HANGUL SYLLABLE PYIH
      "\dD53D..D557",  # Lo  [27] HANGUL SYLLABLE PIG..HANGUL SYLLABLE PIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE PIG..HANGUL SYLLABLE PIH
      "\dD559..D573",  # Lo  [27] HANGUL SYLLABLE HAG..HANGUL SYLLABLE HAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE HAG..HANGUL SYLLABLE HAH
      "\dD575..D58F",  # Lo  [27] HANGUL SYLLABLE HAEG..HANGUL SYLLABLE HAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE HAEG..HANGUL SYLLABLE HAEH
      "\dD591..D5AB",  # Lo  [27] HANGUL SYLLABLE HYAG..HANGUL SYLLABLE HYAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE HYAG..HANGUL SYLLABLE HYAH
      "\dD5AD..D5C7",  # Lo  [27] HANGUL SYLLABLE HYAEG..HANGUL SYLLABLE HYAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE HYAEG..HANGUL SYLLABLE HYAEH
      "\dD5C9..D5E3",  # Lo  [27] HANGUL SYLLABLE HEOG..HANGUL SYLLABLE HEOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE HEOG..HANGUL SYLLABLE HEOH
      "\dD5E5..D5FF",  # Lo  [27] HANGUL SYLLABLE HEG..HANGUL SYLLABLE HEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE HEG..HANGUL SYLLABLE HEH
      "\dD601..D61B",  # Lo  [27] HANGUL SYLLABLE HYEOG..HANGUL SYLLABLE HYEOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE HYEOG..HANGUL SYLLABLE HYEOH
      "\dD61D..D637",  # Lo  [27] HANGUL SYLLABLE HYEG..HANGUL SYLLABLE HYEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE HYEG..HANGUL SYLLABLE HYEH
      "\dD639..D653",  # Lo  [27] HANGUL SYLLABLE HOG..HANGUL SYLLABLE HOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE HOG..HANGUL SYLLABLE HOH
      "\dD655..D66F",  # Lo  [27] HANGUL SYLLABLE HWAG..HANGUL SYLLABLE HWAH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE HWAG..HANGUL SYLLABLE HWAH
      "\dD671..D68B",  # Lo  [27] HANGUL SYLLABLE HWAEG..HANGUL SYLLABLE HWAEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE HWAEG..HANGUL SYLLABLE HWAEH
      "\dD68D..D6A7",  # Lo  [27] HANGUL SYLLABLE HOEG..HANGUL SYLLABLE HOEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE HOEG..HANGUL SYLLABLE HOEH
      "\dD6A9..D6C3",  # Lo  [27] HANGUL SYLLABLE HYOG..HANGUL SYLLABLE HYOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE HYOG..HANGUL SYLLABLE HYOH
      "\dD6C5..D6DF",  # Lo  [27] HANGUL SYLLABLE HUG..HANGUL SYLLABLE HUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE HUG..HANGUL SYLLABLE HUH
      "\dD6E1..D6FB",  # Lo  [27] HANGUL SYLLABLE HWEOG..HANGUL SYLLABLE HWEOH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE HWEOG..HANGUL SYLLABLE HWEOH
      "\dD6FD..D717",  # Lo  [27] HANGUL SYLLABLE HWEG..HANGUL SYLLABLE HWEH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE HWEG..HANGUL SYLLABLE HWEH
      "\dD719..D733",  # Lo  [27] HANGUL SYLLABLE HWIG..HANGUL SYLLABLE HWIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE HWIG..HANGUL SYLLABLE HWIH
      "\dD735..D74F",  # Lo  [27] HANGUL SYLLABLE HYUG..HANGUL SYLLABLE HYUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE HYUG..HANGUL SYLLABLE HYUH
      "\dD751..D76B",  # Lo  [27] HANGUL SYLLABLE HEUG..HANGUL SYLLABLE HEUH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE HEUG..HANGUL SYLLABLE HEUH
      "\dD76D..D787",  # Lo  [27] HANGUL SYLLABLE HYIG..HANGUL SYLLABLE HYIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE HYIG..HANGUL SYLLABLE HYIH
      "\dD789..D7A3",  # Lo  [27] HANGUL SYLLABLE HIG..HANGUL SYLLABLE HIH
      "\dLVT",  # Lo  [27] HANGUL SYLLABLE HIG..HANGUL SYLLABLE HIH
    ]
    test_data.each do |string|
      assert @validator.valid_encoding?(string), "U10_HangulSyllableType: #{string}"
      assert string.force_encoding("UTF-8").valid_encoding?, "U10_HangulSyllableType: #{string}" if @vercheck
    end
  end

end

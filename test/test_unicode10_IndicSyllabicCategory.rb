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
class TestUnicode10IndicSyllabicCategory < Test::Unit::TestCase
  #
  def setup
    @validator = UTF8::Validator.new
    @vercheck = ((RUBY_VERSION =~ /1.9/) or (RUBY_VERSION =~ /2./)) ? true : false
  end

  #
  def teardown
    @validator = nil
  end

  def test_unicode10_IndicSyllabicCategory
    test_data = [
        "\u0900","\u0901","\u0902",  # ; Bindu # Mn   [3] DEVANAGARI SIGN INVERTED CANDRABINDU..DEVANAGARI SIGN ANUSVARA
        "\u0981",  # ; Bindu # Mn       BENGALI SIGN CANDRABINDU
        "\u0982",  # ; Bindu # Mc       BENGALI SIGN ANUSVARA
        "\u09FC",  # ; Bindu # Lo       BENGALI LETTER VEDIC ANUSVARA
        "\u0a01","\u0a02",  # ; Bindu # Mn   [2] GURMUKHI SIGN ADAK BINDI..GURMUKHI SIGN BINDI
        "\u0A70",  # ; Bindu # Mn       GURMUKHI TIPPI
        "\u0a81","\u0a82",  # ; Bindu # Mn   [2] GUJARATI SIGN CANDRABINDU..GUJARATI SIGN ANUSVARA
        "\u0B01",  # ; Bindu # Mn       ORIYA SIGN CANDRABINDU
        "\u0B02",  # ; Bindu # Mc       ORIYA SIGN ANUSVARA
        "\u0B82",  # ; Bindu # Mn       TAMIL SIGN ANUSVARA
        "\u0C00",  # ; Bindu # Mn       TELUGU SIGN COMBINING CANDRABINDU ABOVE
        "\u0c01","\u0c02",  # ; Bindu # Mc   [2] TELUGU SIGN CANDRABINDU..TELUGU SIGN ANUSVARA
        "\u0C81",  # ; Bindu # Mn       KANNADA SIGN CANDRABINDU
        "\u0C82",  # ; Bindu # Mc       KANNADA SIGN ANUSVARA
        "\u0D00",  # ; Bindu # Mn       MALAYALAM SIGN COMBINING ANUSVARA ABOVE
        "\u0D01",  # ; Bindu # Mn       MALAYALAM SIGN CANDRABINDU
        "\u0D02",  # ; Bindu # Mc       MALAYALAM SIGN ANUSVARA
        "\u0D82",  # ; Bindu # Mc       SINHALA SIGN ANUSVARAYA
        "\u0E4D",  # ; Bindu # Mn       THAI CHARACTER NIKHAHIT
        "\u0ECD",  # ; Bindu # Mn       LAO NIGGAHITA
        "\u0F7E",  # ; Bindu # Mn       TIBETAN SIGN RJES SU NGA RO
        "\u0f82","\u0f83",  # ; Bindu # Mn   [2] TIBETAN SIGN NYI ZLA NAA DA..TIBETAN SIGN SNA LDAN
        "\u1036",  # ; Bindu # Mn       MYANMAR SIGN ANUSVARA
        "\u17C6",  # ; Bindu # Mn       KHMER SIGN NIKAHIT
        "\u1932",  # ; Bindu # Mn       LIMBU SMALL LETTER ANUSVARA
        "\u1A74",  # ; Bindu # Mn       TAI THAM SIGN MAI KANG
        "\u1b00","\u1b01","\u1b02",  # ; Bindu # Mn   [3] BALINESE SIGN ULU RICEM..BALINESE SIGN CECEK
        "\u1B80",  # ; Bindu # Mn       SUNDANESE SIGN PANYECEK
        "\u1c34","\u1c35",  # ; Bindu # Mc   [2] LEPCHA CONSONANT SIGN NYIN-DO..LEPCHA CONSONANT SIGN KANG
        "\uA80B",  # ; Bindu # Mn       SYLOTI NAGRI SIGN ANUSVARA
        "\uA873",  # ; Bindu # Lo       PHAGS-PA LETTER CANDRABINDU
        "\uA880",  # ; Bindu # Mc       SAURASHTRA SIGN ANUSVARA
        "\uA8C5",  # ; Bindu # Mn       SAURASHTRA SIGN CANDRABINDU
        "\ua8f2","\ua8f3",  # ; Bindu # Lo   [2] DEVANAGARI SIGN SPACING CANDRABINDU..DEVANAGARI SIGN CANDRABINDU VIRAMA
        "\ua980","\ua981",  # ; Bindu # Mn   [2] JAVANESE SIGN PANYANGGA..JAVANESE SIGN CECAK
        "\u10A0E",  # ; Bindu # Mn       KHAROSHTHI SIGN ANUSVARA
        "\u11000",  # ; Bindu # Mc       BRAHMI SIGN CANDRABINDU
        "\u11001",  # ; Bindu # Mn       BRAHMI SIGN ANUSVARA
        "\u11080","\u11081",  # ; Bindu # Mn   [2] KAITHI SIGN CANDRABINDU..KAITHI SIGN ANUSVARA
        "\u11100","\u11101",  # ; Bindu # Mn   [2] CHAKMA SIGN CANDRABINDU..CHAKMA SIGN ANUSVARA
        "\u11180","\u11181",  # ; Bindu # Mn   [2] SHARADA SIGN CANDRABINDU..SHARADA SIGN ANUSVARA
        "\u11234",  # ; Bindu # Mn       KHOJKI SIGN ANUSVARA
        "\u112DF",  # ; Bindu # Mn       KHUDAWADI SIGN ANUSVARA
        "\u11300","\u11301",  # ; Bindu # Mn   [2] GRANTHA SIGN COMBINING ANUSVARA ABOVE..GRANTHA SIGN CANDRABINDU
        "\u11302",  # ; Bindu # Mc       GRANTHA SIGN ANUSVARA
        "\u1135e","\u1135f",  # ; Bindu # Lo   [2] GRANTHA LETTER VEDIC ANUSVARA..GRANTHA LETTER VEDIC DOUBLE ANUSVARA
        "\u11443","\u11444",  # ; Bindu # Mn   [2] NEWA SIGN CANDRABINDU..NEWA SIGN ANUSVARA
        "\u114bf","\u114c0",  # ; Bindu # Mn   [2] TIRHUTA SIGN CANDRABINDU..TIRHUTA SIGN ANUSVARA
        "\u115bc","\u115bd",  # ; Bindu # Mn   [2] SIDDHAM SIGN CANDRABINDU..SIDDHAM SIGN ANUSVARA
        "\u1163D",  # ; Bindu # Mn       MODI SIGN ANUSVARA
        "\u116AB",  # ; Bindu # Mn       TAKRI SIGN ANUSVARA
        "\u11a35","\u11a36","\u11a37","\u11a38",  # ; Bindu # Mn   [4] ZANABAZAR SQUARE SIGN CANDRABINDU..ZANABAZAR SQUARE SIGN ANUSVARA
        "\u11A96",  # ; Bindu # Mn       SOYOMBO SIGN ANUSVARA
        "\u11c3c","\u11c3d",  # ; Bindu # Mn   [2] BHAIKSUKI SIGN CANDRABINDU..BHAIKSUKI SIGN ANUSVARA
        "\u11cb5","\u11cb6",  # ; Bindu # Mn   [2] MARCHEN SIGN ANUSVARA..MARCHEN SIGN CANDRABINDU
        "\u11D40",  # ; Bindu # Mn       MASARAM GONDI SIGN ANUSVARA
        "\u0903",  # ; Visarga # Mc       DEVANAGARI SIGN VISARGA
        "\u0983",  # ; Visarga # Mc       BENGALI SIGN VISARGA
        "\u0A03",  # ; Visarga # Mc       GURMUKHI SIGN VISARGA
        "\u0A83",  # ; Visarga # Mc       GUJARATI SIGN VISARGA
        "\u0B03",  # ; Visarga # Mc       ORIYA SIGN VISARGA
        "\u0C03",  # ; Visarga # Mc       TELUGU SIGN VISARGA
        "\u0C83",  # ; Visarga # Mc       KANNADA SIGN VISARGA
        "\u0D03",  # ; Visarga # Mc       MALAYALAM SIGN VISARGA
        "\u0D83",  # ; Visarga # Mc       SINHALA SIGN VISARGAYA
        "\u0F7F",  # ; Visarga # Mc       TIBETAN SIGN RNAM BCAD
        "\u1038",  # ; Visarga # Mc       MYANMAR SIGN VISARGA
        "\u17C7",  # ; Visarga # Mc       KHMER SIGN REAHMUK
        "\u1B04",  # ; Visarga # Mc       BALINESE SIGN BISAH
        "\u1B82",  # ; Visarga # Mc       SUNDANESE SIGN PANGWISAD
        "\u1cf2","\u1cf3",  # ; Visarga # Mc   [2] VEDIC SIGN ARDHAVISARGA..VEDIC SIGN ROTATED ARDHAVISARGA
        "\uA881",  # ; Visarga # Mc       SAURASHTRA SIGN VISARGA
        "\uA983",  # ; Visarga # Mc       JAVANESE SIGN WIGNYAN
        "\uAAF5",  # ; Visarga # Mc       MEETEI MAYEK VOWEL SIGN VISARGA
        "\u10A0F",  # ; Visarga # Mn       KHAROSHTHI SIGN VISARGA
        "\u11002",  # ; Visarga # Mc       BRAHMI SIGN VISARGA
        "\u11082",  # ; Visarga # Mc       KAITHI SIGN VISARGA
        "\u11102",  # ; Visarga # Mn       CHAKMA SIGN VISARGA
        "\u11182",  # ; Visarga # Mc       SHARADA SIGN VISARGA
        "\u11303",  # ; Visarga # Mc       GRANTHA SIGN VISARGA
        "\u11445",  # ; Visarga # Mc       NEWA SIGN VISARGA
        "\u114C1",  # ; Visarga # Mc       TIRHUTA SIGN VISARGA
        "\u115BE",  # ; Visarga # Mc       SIDDHAM SIGN VISARGA
        "\u1163E",  # ; Visarga # Mc       MODI SIGN VISARGA
        "\u116AC",  # ; Visarga # Mc       TAKRI SIGN VISARGA
        "\u11A39",  # ; Visarga # Mc       ZANABAZAR SQUARE SIGN VISARGA
        "\u11A97",  # ; Visarga # Mc       SOYOMBO SIGN VISARGA
        "\u11C3E",  # ; Visarga # Mc       BHAIKSUKI SIGN VISARGA
        "\u11D41",  # ; Visarga # Mn       MASARAM GONDI SIGN VISARGA
        "\u093D",  # ; Avagraha # Lo       DEVANAGARI SIGN AVAGRAHA
        "\u09BD",  # ; Avagraha # Lo       BENGALI SIGN AVAGRAHA
        "\u0ABD",  # ; Avagraha # Lo       GUJARATI SIGN AVAGRAHA
        "\u0B3D",  # ; Avagraha # Lo       ORIYA SIGN AVAGRAHA
        "\u0C3D",  # ; Avagraha # Lo       TELUGU SIGN AVAGRAHA
        "\u0CBD",  # ; Avagraha # Lo       KANNADA SIGN AVAGRAHA
        "\u0D3D",  # ; Avagraha # Lo       MALAYALAM SIGN AVAGRAHA
        "\u0F85",  # ; Avagraha # Po       TIBETAN MARK PALUTA
        "\u17DC",  # ; Avagraha # Lo       KHMER SIGN AVAKRAHASANYA
        "\u1BBA",  # ; Avagraha # Lo       SUNDANESE AVAGRAHA
        "\u111C1",  # ; Avagraha # Lo       SHARADA SIGN AVAGRAHA
        "\u1133D",  # ; Avagraha # Lo       GRANTHA SIGN AVAGRAHA
        "\u11447",  # ; Avagraha # Lo       NEWA SIGN AVAGRAHA
        "\u114C4",  # ; Avagraha # Lo       TIRHUTA SIGN AVAGRAHA
        "\u11C40",  # ; Avagraha # Lo       BHAIKSUKI SIGN AVAGRAHA
        "\u093C",  # ; Nukta # Mn       DEVANAGARI SIGN NUKTA
        "\u09BC",  # ; Nukta # Mn       BENGALI SIGN NUKTA
        "\u0A3C",  # ; Nukta # Mn       GURMUKHI SIGN NUKTA
        "\u0ABC",  # ; Nukta # Mn       GUJARATI SIGN NUKTA
        "\u0afd","\u0afe","\u0aff",  # ; Nukta # Mn   [3] GUJARATI SIGN THREE-DOT NUKTA ABOVE..GUJARATI SIGN TWO-CIRCLE NUKTA ABOVE
        "\u0B3C",  # ; Nukta # Mn       ORIYA SIGN NUKTA
        "\u0CBC",  # ; Nukta # Mn       KANNADA SIGN NUKTA
        "\u0F39",  # ; Nukta # Mn       TIBETAN MARK TSA -PHRU
        "\u1B34",  # ; Nukta # Mn       BALINESE SIGN REREKAN
        "\u1BE6",  # ; Nukta # Mn       BATAK SIGN TOMPI
        "\u1C37",  # ; Nukta # Mn       LEPCHA SIGN NUKTA
        "\uA9B3",  # ; Nukta # Mn       JAVANESE SIGN CECAK TELU
        "\u10a38","\u10a39","\u10a3a",  # ; Nukta # Mn   [3] KHAROSHTHI SIGN BAR ABOVE..KHAROSHTHI SIGN DOT BELOW
        "\u110BA",  # ; Nukta # Mn       KAITHI SIGN NUKTA
        "\u11173",  # ; Nukta # Mn       MAHAJANI SIGN NUKTA
        "\u111CA",  # ; Nukta # Mn       SHARADA SIGN NUKTA
        "\u11236",  # ; Nukta # Mn       KHOJKI SIGN NUKTA
        "\u112E9",  # ; Nukta # Mn       KHUDAWADI SIGN NUKTA
        "\u1133C",  # ; Nukta # Mn       GRANTHA SIGN NUKTA
        "\u11446",  # ; Nukta # Mn       NEWA SIGN NUKTA
        "\u114C3",  # ; Nukta # Mn       TIRHUTA SIGN NUKTA
        "\u115C0",  # ; Nukta # Mn       SIDDHAM SIGN NUKTA
        "\u116B7",  # ; Nukta # Mn       TAKRI SIGN NUKTA
        "\u11D42",  # ; Nukta # Mn       MASARAM GONDI SIGN NUKTA
        "\u094D",  # ; Virama # Mn       DEVANAGARI SIGN VIRAMA
        "\u09CD",  # ; Virama # Mn       BENGALI SIGN VIRAMA
        "\u0A4D",  # ; Virama # Mn       GURMUKHI SIGN VIRAMA
        "\u0ACD",  # ; Virama # Mn       GUJARATI SIGN VIRAMA
        "\u0B4D",  # ; Virama # Mn       ORIYA SIGN VIRAMA
        "\u0BCD",  # ; Virama # Mn       TAMIL SIGN VIRAMA
        "\u0C4D",  # ; Virama # Mn       TELUGU SIGN VIRAMA
        "\u0CCD",  # ; Virama # Mn       KANNADA SIGN VIRAMA
        "\u0D4D",  # ; Virama # Mn       MALAYALAM SIGN VIRAMA
        "\u0DCA",  # ; Virama # Mn       SINHALA SIGN AL-LAKUNA
        "\u1B44",  # ; Virama # Mc       BALINESE ADEG ADEG
        "\uA8C4",  # ; Virama # Mn       SAURASHTRA SIGN VIRAMA
        "\uA9C0",  # ; Virama # Mc       JAVANESE PANGKON
        "\u11046",  # ; Virama # Mn       BRAHMI VIRAMA
        "\u110B9",  # ; Virama # Mn       KAITHI SIGN VIRAMA
        "\u111C0",  # ; Virama # Mc       SHARADA SIGN VIRAMA
        "\u11235",  # ; Virama # Mc       KHOJKI SIGN VIRAMA
        "\u1134D",  # ; Virama # Mc       GRANTHA SIGN VIRAMA
        "\u11442",  # ; Virama # Mn       NEWA SIGN VIRAMA
        "\u114C2",  # ; Virama # Mn       TIRHUTA SIGN VIRAMA
        "\u115BF",  # ; Virama # Mn       SIDDHAM SIGN VIRAMA
        "\u1163F",  # ; Virama # Mn       MODI SIGN VIRAMA
        "\u116B6",  # ; Virama # Mc       TAKRI SIGN VIRAMA
        "\u11C3F",  # ; Virama # Mn       BHAIKSUKI SIGN VIRAMA
        "\u0D3B",  # ; Pure_Killer # Mn       MALAYALAM SIGN VERTICAL BAR VIRAMA
        "\u0D3C",  # ; Pure_Killer # Mn       MALAYALAM SIGN CIRCULAR VIRAMA
        "\u0E3A",  # ; Pure_Killer # Mn       THAI CHARACTER PHINTHU
        "\u0E4E",  # ; Pure_Killer # Mn       THAI CHARACTER YAMAKKAN
        "\u0F84",  # ; Pure_Killer # Mn       TIBETAN MARK HALANTA
        "\u103A",  # ; Pure_Killer # Mn       MYANMAR SIGN ASAT
        "\u1714",  # ; Pure_Killer # Mn       TAGALOG SIGN VIRAMA
        "\u1734",  # ; Pure_Killer # Mn       HANUNOO SIGN PAMUDPOD
        "\u17D1",  # ; Pure_Killer # Mn       KHMER SIGN VIRIAM
        "\u1A7A",  # ; Pure_Killer # Mn       TAI THAM SIGN RA HAAM
        "\u1BAA",  # ; Pure_Killer # Mc       SUNDANESE SIGN PAMAAEH
        "\u1bf2","\u1bf3",  # ; Pure_Killer # Mc   [2] BATAK PANGOLAT..BATAK PANONGONAN
        "\uA806",  # ; Pure_Killer # Mn       SYLOTI NAGRI SIGN HASANTA
        "\uA953",  # ; Pure_Killer # Mc       REJANG VIRAMA
        "\uABED",  # ; Pure_Killer # Mn       MEETEI MAYEK APUN IYEK
        "\u11134",  # ; Pure_Killer # Mn       CHAKMA MAAYYAA
        "\u112EA",  # ; Pure_Killer # Mn       KHUDAWADI SIGN VIRAMA
        "\u1172B",  # ; Pure_Killer # Mn       AHOM SIGN KILLER
        "\u11A34",  # ; Pure_Killer # Mn       ZANABAZAR SQUARE SIGN VIRAMA
        "\u11D44",  # ; Pure_Killer # Mn       MASARAM GONDI SIGN HALANTA
        "\u1039",  # ; Invisible_Stacker # Mn       MYANMAR SIGN VIRAMA
        "\u17D2",  # ; Invisible_Stacker # Mn       KHMER SIGN COENG
        "\u1A60",  # ; Invisible_Stacker # Mn       TAI THAM SIGN SAKOT
        "\u1BAB",  # ; Invisible_Stacker # Mn       SUNDANESE SIGN VIRAMA
        "\uAAF6",  # ; Invisible_Stacker # Mn       MEETEI MAYEK VIRAMA
        "\u10A3F",  # ; Invisible_Stacker # Mn       KHAROSHTHI VIRAMA
        "\u11133",  # ; Invisible_Stacker # Mn       CHAKMA VIRAMA
        "\u11A47",  # ; Invisible_Stacker # Mn       ZANABAZAR SQUARE SUBJOINER
        "\u11A99",  # ; Invisible_Stacker # Mn       SOYOMBO SUBJOINER
        "\u11D45",  # ; Invisible_Stacker # Mn       MASARAM GONDI VIRAMA
        "\u0904","\u0905","\u0906","\u0907","\u0908","\u0909","\u090a","\u090b","\u090c","\u090d","\u090e","\u090f","\u0910","\u0911","\u0912","\u0913","\u0914",  # ; Vowel_Independent # Lo  [17] DEVANAGARI LETTER SHORT A..DEVANAGARI LETTER AU
        "\u0960","\u0961",  # ; Vowel_Independent # Lo   [2] DEVANAGARI LETTER VOCALIC RR..DEVANAGARI LETTER VOCALIC LL
        "\u0972","\u0973","\u0974","\u0975","\u0976","\u0977",  # ; Vowel_Independent # Lo   [6] DEVANAGARI LETTER CANDRA A..DEVANAGARI LETTER UUE
        "\u0985","\u0986","\u0987","\u0988","\u0989","\u098a","\u098b","\u098c",  # ; Vowel_Independent # Lo   [8] BENGALI LETTER A..BENGALI LETTER VOCALIC L
        "\u098f","\u0990",  # ; Vowel_Independent # Lo   [2] BENGALI LETTER E..BENGALI LETTER AI
        "\u0993","\u0994",  # ; Vowel_Independent # Lo   [2] BENGALI LETTER O..BENGALI LETTER AU
        "\u09e0","\u09e1",  # ; Vowel_Independent # Lo   [2] BENGALI LETTER VOCALIC RR..BENGALI LETTER VOCALIC LL
        "\u0a05","\u0a06","\u0a07","\u0a08","\u0a09","\u0a0a",  # ; Vowel_Independent # Lo   [6] GURMUKHI LETTER A..GURMUKHI LETTER UU
        "\u0a0f","\u0a10",  # ; Vowel_Independent # Lo   [2] GURMUKHI LETTER EE..GURMUKHI LETTER AI
        "\u0a13","\u0a14",  # ; Vowel_Independent # Lo   [2] GURMUKHI LETTER OO..GURMUKHI LETTER AU
        "\u0a85","\u0a86","\u0a87","\u0a88","\u0a89","\u0a8a","\u0a8b","\u0a8c","\u0a8d",  # ; Vowel_Independent # Lo   [9] GUJARATI LETTER A..GUJARATI VOWEL CANDRA E
        "\u0a8f","\u0a90","\u0a91",  # ; Vowel_Independent # Lo   [3] GUJARATI LETTER E..GUJARATI VOWEL CANDRA O
        "\u0a93","\u0a94",  # ; Vowel_Independent # Lo   [2] GUJARATI LETTER O..GUJARATI LETTER AU
        "\u0ae0","\u0ae1",  # ; Vowel_Independent # Lo   [2] GUJARATI LETTER VOCALIC RR..GUJARATI LETTER VOCALIC LL
        "\u0b05","\u0b06","\u0b07","\u0b08","\u0b09","\u0b0a","\u0b0b","\u0b0c",  # ; Vowel_Independent # Lo   [8] ORIYA LETTER A..ORIYA LETTER VOCALIC L
        "\u0b0f","\u0b10",  # ; Vowel_Independent # Lo   [2] ORIYA LETTER E..ORIYA LETTER AI
        "\u0b13","\u0b14",  # ; Vowel_Independent # Lo   [2] ORIYA LETTER O..ORIYA LETTER AU
        "\u0b60","\u0b61",  # ; Vowel_Independent # Lo   [2] ORIYA LETTER VOCALIC RR..ORIYA LETTER VOCALIC LL
        "\u0b85","\u0b86","\u0b87","\u0b88","\u0b89","\u0b8a",  # ; Vowel_Independent # Lo   [6] TAMIL LETTER A..TAMIL LETTER UU
        "\u0b8e","\u0b8f","\u0b90",  # ; Vowel_Independent # Lo   [3] TAMIL LETTER E..TAMIL LETTER AI
        "\u0b92","\u0b93","\u0b94",  # ; Vowel_Independent # Lo   [3] TAMIL LETTER O..TAMIL LETTER AU
        "\u0c05","\u0c06","\u0c07","\u0c08","\u0c09","\u0c0a","\u0c0b","\u0c0c",  # ; Vowel_Independent # Lo   [8] TELUGU LETTER A..TELUGU LETTER VOCALIC L
        "\u0c0e","\u0c0f","\u0c10",  # ; Vowel_Independent # Lo   [3] TELUGU LETTER E..TELUGU LETTER AI
        "\u0c12","\u0c13","\u0c14",  # ; Vowel_Independent # Lo   [3] TELUGU LETTER O..TELUGU LETTER AU
        "\u0c60","\u0c61",  # ; Vowel_Independent # Lo   [2] TELUGU LETTER VOCALIC RR..TELUGU LETTER VOCALIC LL
        "\u0c85","\u0c86","\u0c87","\u0c88","\u0c89","\u0c8a","\u0c8b","\u0c8c",  # ; Vowel_Independent # Lo   [8] KANNADA LETTER A..KANNADA LETTER VOCALIC L
        "\u0c8e","\u0c8f","\u0c90",  # ; Vowel_Independent # Lo   [3] KANNADA LETTER E..KANNADA LETTER AI
        "\u0c92","\u0c93","\u0c94",  # ; Vowel_Independent # Lo   [3] KANNADA LETTER O..KANNADA LETTER AU
        "\u0ce0","\u0ce1",  # ; Vowel_Independent # Lo   [2] KANNADA LETTER VOCALIC RR..KANNADA LETTER VOCALIC LL
        "\u0d05","\u0d06","\u0d07","\u0d08","\u0d09","\u0d0a","\u0d0b","\u0d0c",  # ; Vowel_Independent # Lo   [8] MALAYALAM LETTER A..MALAYALAM LETTER VOCALIC L
        "\u0d0e","\u0d0f","\u0d10",  # ; Vowel_Independent # Lo   [3] MALAYALAM LETTER E..MALAYALAM LETTER AI
        "\u0d12","\u0d13","\u0d14",  # ; Vowel_Independent # Lo   [3] MALAYALAM LETTER O..MALAYALAM LETTER AU
        "\u0d5f","\u0d60","\u0d61",  # ; Vowel_Independent # Lo   [3] MALAYALAM LETTER ARCHAIC II..MALAYALAM LETTER VOCALIC LL
        "\u0d85","\u0d86","\u0d87","\u0d88","\u0d89","\u0d8a","\u0d8b","\u0d8c","\u0d8d","\u0d8e","\u0d8f","\u0d90","\u0d91","\u0d92","\u0d93","\u0d94","\u0d95","\u0d96",  # ; Vowel_Independent # Lo  [18] SINHALA LETTER AYANNA..SINHALA LETTER AUYANNA
        "\u1021","\u1022","\u1023","\u1024","\u1025","\u1026","\u1027","\u1028","\u1029","\u102a",  # ; Vowel_Independent # Lo  [10] MYANMAR LETTER A..MYANMAR LETTER AU
        "\u1052","\u1053","\u1054","\u1055",  # ; Vowel_Independent # Lo   [4] MYANMAR LETTER VOCALIC R..MYANMAR LETTER VOCALIC LL
        "\u1700","\u1701","\u1702",  # ; Vowel_Independent # Lo   [3] TAGALOG LETTER A..TAGALOG LETTER U
        "\u1720","\u1721","\u1722",  # ; Vowel_Independent # Lo   [3] HANUNOO LETTER A..HANUNOO LETTER U
        "\u1740","\u1741","\u1742",  # ; Vowel_Independent # Lo   [3] BUHID LETTER A..BUHID LETTER U
        "\u1760","\u1761","\u1762",  # ; Vowel_Independent # Lo   [3] TAGBANWA LETTER A..TAGBANWA LETTER U
        "\u17a3","\u17a4","\u17a5","\u17a6","\u17a7","\u17a8","\u17a9","\u17aa","\u17ab","\u17ac","\u17ad","\u17ae","\u17af","\u17b0","\u17b1","\u17b2","\u17b3",  # ; Vowel_Independent # Lo  [17] KHMER INDEPENDENT VOWEL QAQ..KHMER INDEPENDENT VOWEL QAU
        "\u1a4d","\u1a4e","\u1a4f","\u1a50","\u1a51","\u1a52",  # ; Vowel_Independent # Lo   [6] TAI THAM LETTER I..TAI THAM LETTER OO
        "\u1b05","\u1b06","\u1b07","\u1b08","\u1b09","\u1b0a","\u1b0b","\u1b0c","\u1b0d","\u1b0e","\u1b0f","\u1b10","\u1b11","\u1b12",  # ; Vowel_Independent # Lo  [14] BALINESE LETTER AKARA..BALINESE LETTER OKARA TEDUNG
        "\u1b83","\u1b84","\u1b85","\u1b86","\u1b87","\u1b88","\u1b89",  # ; Vowel_Independent # Lo   [7] SUNDANESE LETTER A..SUNDANESE LETTER EU
        "\u1be4","\u1be5",  # ; Vowel_Independent # Lo   [2] BATAK LETTER I..BATAK LETTER U
        "\ua800","\ua801",  # ; Vowel_Independent # Lo   [2] SYLOTI NAGRI LETTER A..SYLOTI NAGRI LETTER I
        "\ua803","\ua804","\ua805",  # ; Vowel_Independent # Lo   [3] SYLOTI NAGRI LETTER U..SYLOTI NAGRI LETTER O
        "\ua882","\ua883","\ua884","\ua885","\ua886","\ua887","\ua888","\ua889","\ua88a","\ua88b","\ua88c","\ua88d","\ua88e","\ua88f","\ua890","\ua891",  # ; Vowel_Independent # Lo  [16] SAURASHTRA LETTER A..SAURASHTRA LETTER AU
        "\ua984","\ua985","\ua986","\ua987","\ua988",  # ; Vowel_Independent # Lo   [5] JAVANESE LETTER A..JAVANESE LETTER U
        "\ua98c","\ua98d","\ua98e",  # ; Vowel_Independent # Lo   [3] JAVANESE LETTER E..JAVANESE LETTER O
        "\uaa00","\uaa01","\uaa02","\uaa03","\uaa04","\uaa05",  # ; Vowel_Independent # Lo   [6] CHAM LETTER A..CHAM LETTER O
        "\uaae0","\uaae1",  # ; Vowel_Independent # Lo   [2] MEETEI MAYEK LETTER E..MEETEI MAYEK LETTER O
        "\uabce","\uabcf",  # ; Vowel_Independent # Lo   [2] MEETEI MAYEK LETTER UN..MEETEI MAYEK LETTER I
        "\uABD1",  # ; Vowel_Independent # Lo       MEETEI MAYEK LETTER ATIYA
        "\u11005","\u11006","\u11007","\u11008","\u11009","\u1100a","\u1100b","\u1100c","\u1100d","\u1100e","\u1100f","\u11010","\u11011","\u11012",  # ; Vowel_Independent # Lo  [14] BRAHMI LETTER A..BRAHMI LETTER AU
        "\u11083","\u11084","\u11085","\u11086","\u11087","\u11088","\u11089","\u1108a","\u1108b","\u1108c",  # ; Vowel_Independent # Lo  [10] KAITHI LETTER A..KAITHI LETTER AU
        "\u11103","\u11104","\u11105","\u11106",  # ; Vowel_Independent # Lo   [4] CHAKMA LETTER AA..CHAKMA LETTER E
        "\u11183","\u11184","\u11185","\u11186","\u11187","\u11188","\u11189","\u1118a","\u1118b","\u1118c","\u1118d","\u1118e","\u1118f","\u11190",  # ; Vowel_Independent # Lo  [14] SHARADA LETTER A..SHARADA LETTER AU
        "\u11200","\u11201","\u11202","\u11203","\u11204","\u11205","\u11206","\u11207",  # ; Vowel_Independent # Lo   [8] KHOJKI LETTER A..KHOJKI LETTER AU
        "\u11280","\u11281","\u11282","\u11283",  # ; Vowel_Independent # Lo   [4] MULTANI LETTER A..MULTANI LETTER E
        "\u112b0","\u112b1","\u112b2","\u112b3","\u112b4","\u112b5","\u112b6","\u112b7","\u112b8","\u112b9",  # ; Vowel_Independent # Lo  [10] KHUDAWADI LETTER A..KHUDAWADI LETTER AU
        "\u11305","\u11306","\u11307","\u11308","\u11309","\u1130a","\u1130b","\u1130c",  # ; Vowel_Independent # Lo   [8] GRANTHA LETTER A..GRANTHA LETTER VOCALIC L
        "\u1130f","\u11310",  # ; Vowel_Independent # Lo   [2] GRANTHA LETTER EE..GRANTHA LETTER AI
        "\u11313","\u11314",  # ; Vowel_Independent # Lo   [2] GRANTHA LETTER OO..GRANTHA LETTER AU
        "\u11360","\u11361",  # ; Vowel_Independent # Lo   [2] GRANTHA LETTER VOCALIC RR..GRANTHA LETTER VOCALIC LL
        "\u11400","\u11401","\u11402","\u11403","\u11404","\u11405","\u11406","\u11407","\u11408","\u11409","\u1140a","\u1140b","\u1140c","\u1140d",  # ; Vowel_Independent # Lo  [14] NEWA LETTER A..NEWA LETTER AU
        "\u11481","\u11482","\u11483","\u11484","\u11485","\u11486","\u11487","\u11488","\u11489","\u1148a","\u1148b","\u1148c","\u1148d","\u1148e",  # ; Vowel_Independent # Lo  [14] TIRHUTA LETTER A..TIRHUTA LETTER AU
        "\u11580","\u11581","\u11582","\u11583","\u11584","\u11585","\u11586","\u11587","\u11588","\u11589","\u1158a","\u1158b","\u1158c","\u1158d",  # ; Vowel_Independent # Lo  [14] SIDDHAM LETTER A..SIDDHAM LETTER AU
        "\u115d8","\u115d9","\u115da","\u115db",  # ; Vowel_Independent # Lo   [4] SIDDHAM LETTER THREE-CIRCLE ALTERNATE I..SIDDHAM LETTER ALTERNATE U
        "\u11600","\u11601","\u11602","\u11603","\u11604","\u11605","\u11606","\u11607","\u11608","\u11609","\u1160a","\u1160b","\u1160c","\u1160d",  # ; Vowel_Independent # Lo  [14] MODI LETTER A..MODI LETTER AU
        "\u11680","\u11681","\u11682","\u11683","\u11684","\u11685","\u11686","\u11687","\u11688","\u11689",  # ; Vowel_Independent # Lo  [10] TAKRI LETTER A..TAKRI LETTER AU
        "\u11A00",  # ; Vowel_Independent # Lo       ZANABAZAR SQUARE LETTER A
        "\u11A50",  # ; Vowel_Independent # Lo       SOYOMBO LETTER A
        "\u11c00","\u11c01","\u11c02","\u11c03","\u11c04","\u11c05","\u11c06","\u11c07","\u11c08",  # ; Vowel_Independent # Lo   [9] BHAIKSUKI LETTER A..BHAIKSUKI LETTER VOCALIC L
        "\u11c0a","\u11c0b","\u11c0c","\u11c0d",  # ; Vowel_Independent # Lo   [4] BHAIKSUKI LETTER E..BHAIKSUKI LETTER AU
        "\u11d00","\u11d01","\u11d02","\u11d03","\u11d04","\u11d05","\u11d06",  # ; Vowel_Independent # Lo   [6] MASARAM GONDI LETTER A..MASARAM GONDI LETTER E
        "\u11d08","\u11d09",  # ; Vowel_Independent # Lo   [2] MASARAM GONDI LETTER AI..MASARAM GONDI LETTER O
        "\u11D0B",  # ; Vowel_Independent # Lo       MASARAM GONDI LETTER AU
        "\u093A",  # ; Vowel_Dependent # Mn       DEVANAGARI VOWEL SIGN OE
        "\u093B",  # ; Vowel_Dependent # Mc       DEVANAGARI VOWEL SIGN OOE
        "\u093e","\u093f","\u0940",  # ; Vowel_Dependent # Mc   [3] DEVANAGARI VOWEL SIGN AA..DEVANAGARI VOWEL SIGN II
        "\u0941","\u0942","\u0943","\u0944","\u0945","\u0946","\u0947","\u0948",  # ; Vowel_Dependent # Mn   [8] DEVANAGARI VOWEL SIGN U..DEVANAGARI VOWEL SIGN AI
        "\u0949","\u094a","\u094b","\u094c",  # ; Vowel_Dependent # Mc   [4] DEVANAGARI VOWEL SIGN CANDRA O..DEVANAGARI VOWEL SIGN AU
        "\u094e","\u094f",  # ; Vowel_Dependent # Mc   [2] DEVANAGARI VOWEL SIGN PRISHTHAMATRA E..DEVANAGARI VOWEL SIGN AW
        "\u0955","\u0956","\u0957",  # ; Vowel_Dependent # Mn   [3] DEVANAGARI VOWEL SIGN CANDRA LONG E..DEVANAGARI VOWEL SIGN UUE
        "\u0962","\u0963",  # ; Vowel_Dependent # Mn   [2] DEVANAGARI VOWEL SIGN VOCALIC L..DEVANAGARI VOWEL SIGN VOCALIC LL
        "\u09be","\u09bf","\u09c0",  # ; Vowel_Dependent # Mc   [3] BENGALI VOWEL SIGN AA..BENGALI VOWEL SIGN II
        "\u09c1","\u09c2","\u09c3","\u09c4",  # ; Vowel_Dependent # Mn   [4] BENGALI VOWEL SIGN U..BENGALI VOWEL SIGN VOCALIC RR
        "\u09c7","\u09c8",  # ; Vowel_Dependent # Mc   [2] BENGALI VOWEL SIGN E..BENGALI VOWEL SIGN AI
        "\u09cb","\u09cc",  # ; Vowel_Dependent # Mc   [2] BENGALI VOWEL SIGN O..BENGALI VOWEL SIGN AU
        "\u09D7",  # ; Vowel_Dependent # Mc       BENGALI AU LENGTH MARK
        "\u09e2","\u09e3",  # ; Vowel_Dependent # Mn   [2] BENGALI VOWEL SIGN VOCALIC L..BENGALI VOWEL SIGN VOCALIC LL
        "\u0a3e","\u0a3f","\u0a40",  # ; Vowel_Dependent # Mc   [3] GURMUKHI VOWEL SIGN AA..GURMUKHI VOWEL SIGN II
        "\u0a41","\u0a42",  # ; Vowel_Dependent # Mn   [2] GURMUKHI VOWEL SIGN U..GURMUKHI VOWEL SIGN UU
        "\u0a47","\u0a48",  # ; Vowel_Dependent # Mn   [2] GURMUKHI VOWEL SIGN EE..GURMUKHI VOWEL SIGN AI
        "\u0a4b","\u0a4c",  # ; Vowel_Dependent # Mn   [2] GURMUKHI VOWEL SIGN OO..GURMUKHI VOWEL SIGN AU
        "\u0abe","\u0abf","\u0ac0",  # ; Vowel_Dependent # Mc   [3] GUJARATI VOWEL SIGN AA..GUJARATI VOWEL SIGN II
        "\u0ac1","\u0ac2","\u0ac3","\u0ac4","\u0ac5",  # ; Vowel_Dependent # Mn   [5] GUJARATI VOWEL SIGN U..GUJARATI VOWEL SIGN CANDRA E
        "\u0ac7","\u0ac8",  # ; Vowel_Dependent # Mn   [2] GUJARATI VOWEL SIGN E..GUJARATI VOWEL SIGN AI
        "\u0AC9",  # ; Vowel_Dependent # Mc       GUJARATI VOWEL SIGN CANDRA O
        "\u0acb","\u0acc",  # ; Vowel_Dependent # Mc   [2] GUJARATI VOWEL SIGN O..GUJARATI VOWEL SIGN AU
        "\u0ae2","\u0ae3",  # ; Vowel_Dependent # Mn   [2] GUJARATI VOWEL SIGN VOCALIC L..GUJARATI VOWEL SIGN VOCALIC LL
        "\u0B3E",  # ; Vowel_Dependent # Mc       ORIYA VOWEL SIGN AA
        "\u0B3F",  # ; Vowel_Dependent # Mn       ORIYA VOWEL SIGN I
        "\u0B40",  # ; Vowel_Dependent # Mc       ORIYA VOWEL SIGN II
        "\u0b41","\u0b42","\u0b43","\u0b44",  # ; Vowel_Dependent # Mn   [4] ORIYA VOWEL SIGN U..ORIYA VOWEL SIGN VOCALIC RR
        "\u0b47","\u0b48",  # ; Vowel_Dependent # Mc   [2] ORIYA VOWEL SIGN E..ORIYA VOWEL SIGN AI
        "\u0b4b","\u0b4c",  # ; Vowel_Dependent # Mc   [2] ORIYA VOWEL SIGN O..ORIYA VOWEL SIGN AU
        "\u0B56",  # ; Vowel_Dependent # Mn       ORIYA AI LENGTH MARK
        "\u0B57",  # ; Vowel_Dependent # Mc       ORIYA AU LENGTH MARK
        "\u0b62","\u0b63",  # ; Vowel_Dependent # Mn   [2] ORIYA VOWEL SIGN VOCALIC L..ORIYA VOWEL SIGN VOCALIC LL
        "\u0bbe","\u0bbf",  # ; Vowel_Dependent # Mc   [2] TAMIL VOWEL SIGN AA..TAMIL VOWEL SIGN I
        "\u0BC0",  # ; Vowel_Dependent # Mn       TAMIL VOWEL SIGN II
        "\u0bc1","\u0bc2",  # ; Vowel_Dependent # Mc   [2] TAMIL VOWEL SIGN U..TAMIL VOWEL SIGN UU
        "\u0bc6","\u0bc7","\u0bc8",  # ; Vowel_Dependent # Mc   [3] TAMIL VOWEL SIGN E..TAMIL VOWEL SIGN AI
        "\u0bca","\u0bcb","\u0bcc",  # ; Vowel_Dependent # Mc   [3] TAMIL VOWEL SIGN O..TAMIL VOWEL SIGN AU
        "\u0BD7",  # ; Vowel_Dependent # Mc       TAMIL AU LENGTH MARK
        "\u0c3e","\u0c3f","\u0c40",  # ; Vowel_Dependent # Mn   [3] TELUGU VOWEL SIGN AA..TELUGU VOWEL SIGN II
        "\u0c41","\u0c42","\u0c43","\u0c44",  # ; Vowel_Dependent # Mc   [4] TELUGU VOWEL SIGN U..TELUGU VOWEL SIGN VOCALIC RR
        "\u0c46","\u0c47","\u0c48",  # ; Vowel_Dependent # Mn   [3] TELUGU VOWEL SIGN E..TELUGU VOWEL SIGN AI
        "\u0c4a","\u0c4b","\u0c4c",  # ; Vowel_Dependent # Mn   [3] TELUGU VOWEL SIGN O..TELUGU VOWEL SIGN AU
        "\u0c55","\u0c56",  # ; Vowel_Dependent # Mn   [2] TELUGU LENGTH MARK..TELUGU AI LENGTH MARK
        "\u0c62","\u0c63",  # ; Vowel_Dependent # Mn   [2] TELUGU VOWEL SIGN VOCALIC L..TELUGU VOWEL SIGN VOCALIC LL
        "\u0CBE",  # ; Vowel_Dependent # Mc       KANNADA VOWEL SIGN AA
        "\u0CBF",  # ; Vowel_Dependent # Mn       KANNADA VOWEL SIGN I
        "\u0cc0","\u0cc1","\u0cc2","\u0cc3","\u0cc4",  # ; Vowel_Dependent # Mc   [5] KANNADA VOWEL SIGN II..KANNADA VOWEL SIGN VOCALIC RR
        "\u0CC6",  # ; Vowel_Dependent # Mn       KANNADA VOWEL SIGN E
        "\u0cc7","\u0cc8",  # ; Vowel_Dependent # Mc   [2] KANNADA VOWEL SIGN EE..KANNADA VOWEL SIGN AI
        "\u0cca","\u0ccb",  # ; Vowel_Dependent # Mc   [2] KANNADA VOWEL SIGN O..KANNADA VOWEL SIGN OO
        "\u0CCC",  # ; Vowel_Dependent # Mn       KANNADA VOWEL SIGN AU
        "\u0cd5","\u0cd6",  # ; Vowel_Dependent # Mc   [2] KANNADA LENGTH MARK..KANNADA AI LENGTH MARK
        "\u0ce2","\u0ce3",  # ; Vowel_Dependent # Mn   [2] KANNADA VOWEL SIGN VOCALIC L..KANNADA VOWEL SIGN VOCALIC LL
        "\u0d3e","\u0d3f","\u0d40",  # ; Vowel_Dependent # Mc   [3] MALAYALAM VOWEL SIGN AA..MALAYALAM VOWEL SIGN II
        "\u0d41","\u0d42","\u0d43","\u0d44",  # ; Vowel_Dependent # Mn   [4] MALAYALAM VOWEL SIGN U..MALAYALAM VOWEL SIGN VOCALIC RR
        "\u0d46","\u0d47","\u0d48",  # ; Vowel_Dependent # Mc   [3] MALAYALAM VOWEL SIGN E..MALAYALAM VOWEL SIGN AI
        "\u0d4a","\u0d4b","\u0d4c",  # ; Vowel_Dependent # Mc   [3] MALAYALAM VOWEL SIGN O..MALAYALAM VOWEL SIGN AU
        "\u0D57",  # ; Vowel_Dependent # Mc       MALAYALAM AU LENGTH MARK
        "\u0d62","\u0d63",  # ; Vowel_Dependent # Mn   [2] MALAYALAM VOWEL SIGN VOCALIC L..MALAYALAM VOWEL SIGN VOCALIC LL
        "\u0dcf","\u0dd0","\u0dd1",  # ; Vowel_Dependent # Mc   [3] SINHALA VOWEL SIGN AELA-PILLA..SINHALA VOWEL SIGN DIGA AEDA-PILLA
        "\u0dd2","\u0dd3","\u0dd4",  # ; Vowel_Dependent # Mn   [3] SINHALA VOWEL SIGN KETTI IS-PILLA..SINHALA VOWEL SIGN KETTI PAA-PILLA
        "\u0DD6",  # ; Vowel_Dependent # Mn       SINHALA VOWEL SIGN DIGA PAA-PILLA
        "\u0dd8","\u0dd9","\u0dda","\u0ddb","\u0ddc","\u0ddd","\u0dde","\u0ddf",  # ; Vowel_Dependent # Mc   [8] SINHALA VOWEL SIGN GAETTA-PILLA..SINHALA VOWEL SIGN GAYANUKITTA
        "\u0df2","\u0df3",  # ; Vowel_Dependent # Mc   [2] SINHALA VOWEL SIGN DIGA GAETTA-PILLA..SINHALA VOWEL SIGN DIGA GAYANUKITTA
        "\u0E30",  # ; Vowel_Dependent # Lo       THAI CHARACTER SARA A
        "\u0E31",  # ; Vowel_Dependent # Mn       THAI CHARACTER MAI HAN-AKAT
        "\u0e32","\u0e33",  # ; Vowel_Dependent # Lo   [2] THAI CHARACTER SARA AA..THAI CHARACTER SARA AM
        "\u0e34","\u0e35","\u0e36","\u0e37","\u0e38","\u0e39",  # ; Vowel_Dependent # Mn   [6] THAI CHARACTER SARA I..THAI CHARACTER SARA UU
        "\u0e40","\u0e41","\u0e42","\u0e43","\u0e44","\u0e45",  # ; Vowel_Dependent # Lo   [6] THAI CHARACTER SARA E..THAI CHARACTER LAKKHANGYAO
        "\u0E47",  # ; Vowel_Dependent # Mn       THAI CHARACTER MAITAIKHU
        "\u0EB0",  # ; Vowel_Dependent # Lo       LAO VOWEL SIGN A
        "\u0EB1",  # ; Vowel_Dependent # Mn       LAO VOWEL SIGN MAI KAN
        "\u0eb2","\u0eb3",  # ; Vowel_Dependent # Lo   [2] LAO VOWEL SIGN AA..LAO VOWEL SIGN AM
        "\u0eb4","\u0eb5","\u0eb6","\u0eb7","\u0eb8","\u0eb9",  # ; Vowel_Dependent # Mn   [6] LAO VOWEL SIGN I..LAO VOWEL SIGN UU
        "\u0EBB",  # ; Vowel_Dependent # Mn       LAO VOWEL SIGN MAI KON
        "\u0ec0","\u0ec1","\u0ec2","\u0ec3","\u0ec4",  # ; Vowel_Dependent # Lo   [5] LAO VOWEL SIGN E..LAO VOWEL SIGN AI
        "\u0f71","\u0f72","\u0f73","\u0f74","\u0f75","\u0f76","\u0f77","\u0f78","\u0f79","\u0f7a","\u0f7b","\u0f7c","\u0f7d",  # ; Vowel_Dependent # Mn  [13] TIBETAN VOWEL SIGN AA..TIBETAN VOWEL SIGN OO
        "\u0f80","\u0f81",  # ; Vowel_Dependent # Mn   [2] TIBETAN VOWEL SIGN REVERSED I..TIBETAN VOWEL SIGN REVERSED II
        "\u102b","\u102c",  # ; Vowel_Dependent # Mc   [2] MYANMAR VOWEL SIGN TALL AA..MYANMAR VOWEL SIGN AA
        "\u102d","\u102e","\u102f","\u1030",  # ; Vowel_Dependent # Mn   [4] MYANMAR VOWEL SIGN I..MYANMAR VOWEL SIGN UU
        "\u1031",  # ; Vowel_Dependent # Mc       MYANMAR VOWEL SIGN E
        "\u1032","\u1033","\u1034","\u1035",  # ; Vowel_Dependent # Mn   [4] MYANMAR VOWEL SIGN AI..MYANMAR VOWEL SIGN E ABOVE
        "\u1056","\u1057",  # ; Vowel_Dependent # Mc   [2] MYANMAR VOWEL SIGN VOCALIC R..MYANMAR VOWEL SIGN VOCALIC RR
        "\u1058","\u1059",  # ; Vowel_Dependent # Mn   [2] MYANMAR VOWEL SIGN VOCALIC L..MYANMAR VOWEL SIGN VOCALIC LL
        "\u1062",  # ; Vowel_Dependent # Mc       MYANMAR VOWEL SIGN SGAW KAREN EU
        "\u1067","\u1068",  # ; Vowel_Dependent # Mc   [2] MYANMAR VOWEL SIGN WESTERN PWO KAREN EU..MYANMAR VOWEL SIGN WESTERN PWO KAREN UE
        "\u1071","\u1072","\u1073","\u1074",  # ; Vowel_Dependent # Mn   [4] MYANMAR VOWEL SIGN GEBA KAREN I..MYANMAR VOWEL SIGN KAYAH EE
        "\u1083","\u1084",  # ; Vowel_Dependent # Mc   [2] MYANMAR VOWEL SIGN SHAN AA..MYANMAR VOWEL SIGN SHAN E
        "\u1085","\u1086",  # ; Vowel_Dependent # Mn   [2] MYANMAR VOWEL SIGN SHAN E ABOVE..MYANMAR VOWEL SIGN SHAN FINAL Y
        "\u109C",  # ; Vowel_Dependent # Mc       MYANMAR VOWEL SIGN AITON A
        "\u109D",  # ; Vowel_Dependent # Mn       MYANMAR VOWEL SIGN AITON AI
        "\u1712","\u1713",  # ; Vowel_Dependent # Mn   [2] TAGALOG VOWEL SIGN I..TAGALOG VOWEL SIGN U
        "\u1732","\u1733",  # ; Vowel_Dependent # Mn   [2] HANUNOO VOWEL SIGN I..HANUNOO VOWEL SIGN U
        "\u1752","\u1753",  # ; Vowel_Dependent # Mn   [2] BUHID VOWEL SIGN I..BUHID VOWEL SIGN U
        "\u1772","\u1773",  # ; Vowel_Dependent # Mn   [2] TAGBANWA VOWEL SIGN I..TAGBANWA VOWEL SIGN U
        "\u17B6",  # ; Vowel_Dependent # Mc       KHMER VOWEL SIGN AA
        "\u17b7","\u17b8","\u17b9","\u17ba","\u17bb","\u17bc","\u17bd",  # ; Vowel_Dependent # Mn   [7] KHMER VOWEL SIGN I..KHMER VOWEL SIGN UA
        "\u17be","\u17bf","\u17c0","\u17c1","\u17c2","\u17c3","\u17c4","\u17c5",  # ; Vowel_Dependent # Mc   [8] KHMER VOWEL SIGN OE..KHMER VOWEL SIGN AU
        "\u17C8",  # ; Vowel_Dependent # Mc       KHMER SIGN YUUKALEAPINTU
        "\u1920","\u1921","\u1922",  # ; Vowel_Dependent # Mn   [3] LIMBU VOWEL SIGN A..LIMBU VOWEL SIGN U
        "\u1923","\u1924","\u1925","\u1926",  # ; Vowel_Dependent # Mc   [4] LIMBU VOWEL SIGN EE..LIMBU VOWEL SIGN AU
        "\u1927","\u1928",  # ; Vowel_Dependent # Mn   [2] LIMBU VOWEL SIGN E..LIMBU VOWEL SIGN O
        "\u193A",  # ; Vowel_Dependent # Mn       LIMBU SIGN KEMPHRENG
        "\u19b0","\u19b1","\u19b2","\u19b3","\u19b4","\u19b5","\u19b6","\u19b7","\u19b8","\u19b9","\u19ba","\u19bb","\u19bc","\u19bd","\u19be","\u19bf","\u19c0",  # ; Vowel_Dependent # Lo  [17] NEW TAI LUE VOWEL SIGN VOWEL SHORTENER..NEW TAI LUE VOWEL SIGN IY
        "\u1a17","\u1a18",  # ; Vowel_Dependent # Mn   [2] BUGINESE VOWEL SIGN I..BUGINESE VOWEL SIGN U
        "\u1a19","\u1a1a",  # ; Vowel_Dependent # Mc   [2] BUGINESE VOWEL SIGN E..BUGINESE VOWEL SIGN O
        "\u1A1B",  # ; Vowel_Dependent # Mn       BUGINESE VOWEL SIGN AE
        "\u1A61",  # ; Vowel_Dependent # Mc       TAI THAM VOWEL SIGN A
        "\u1A62",  # ; Vowel_Dependent # Mn       TAI THAM VOWEL SIGN MAI SAT
        "\u1a63","\u1a64",  # ; Vowel_Dependent # Mc   [2] TAI THAM VOWEL SIGN AA..TAI THAM VOWEL SIGN TALL AA
        "\u1a65","\u1a66","\u1a67","\u1a68","\u1a69","\u1a6a","\u1a6b","\u1a6c",  # ; Vowel_Dependent # Mn   [8] TAI THAM VOWEL SIGN I..TAI THAM VOWEL SIGN OA BELOW
        "\u1a6d","\u1a6e","\u1a6f","\u1a70","\u1a71","\u1a72",  # ; Vowel_Dependent # Mc   [6] TAI THAM VOWEL SIGN OY..TAI THAM VOWEL SIGN THAM AI
        "\u1A73",  # ; Vowel_Dependent # Mn       TAI THAM VOWEL SIGN OA ABOVE
        "\u1B35",  # ; Vowel_Dependent # Mc       BALINESE VOWEL SIGN TEDUNG
        "\u1b36","\u1b37","\u1b38","\u1b39","\u1b3a",  # ; Vowel_Dependent # Mn   [5] BALINESE VOWEL SIGN ULU..BALINESE VOWEL SIGN RA REPA
        "\u1B3B",  # ; Vowel_Dependent # Mc       BALINESE VOWEL SIGN RA REPA TEDUNG
        "\u1B3C",  # ; Vowel_Dependent # Mn       BALINESE VOWEL SIGN LA LENGA
        "\u1b3d","\u1b3e","\u1b3f","\u1b40","\u1b41",  # ; Vowel_Dependent # Mc   [5] BALINESE VOWEL SIGN LA LENGA TEDUNG..BALINESE VOWEL SIGN TALING REPA TEDUNG
        "\u1B42",  # ; Vowel_Dependent # Mn       BALINESE VOWEL SIGN PEPET
        "\u1B43",  # ; Vowel_Dependent # Mc       BALINESE VOWEL SIGN PEPET TEDUNG
        "\u1ba4","\u1ba5",  # ; Vowel_Dependent # Mn   [2] SUNDANESE VOWEL SIGN PANGHULU..SUNDANESE VOWEL SIGN PANYUKU
        "\u1ba6","\u1ba7",  # ; Vowel_Dependent # Mc   [2] SUNDANESE VOWEL SIGN PANAELAENG..SUNDANESE VOWEL SIGN PANOLONG
        "\u1ba8","\u1ba9",  # ; Vowel_Dependent # Mn   [2] SUNDANESE VOWEL SIGN PAMEPET..SUNDANESE VOWEL SIGN PANEULEUNG
        "\u1BE7",  # ; Vowel_Dependent # Mc       BATAK VOWEL SIGN E
        "\u1be8","\u1be9",  # ; Vowel_Dependent # Mn   [2] BATAK VOWEL SIGN PAKPAK E..BATAK VOWEL SIGN EE
        "\u1bea","\u1beb","\u1bec",  # ; Vowel_Dependent # Mc   [3] BATAK VOWEL SIGN I..BATAK VOWEL SIGN O
        "\u1BED",  # ; Vowel_Dependent # Mn       BATAK VOWEL SIGN KARO O
        "\u1BEE",  # ; Vowel_Dependent # Mc       BATAK VOWEL SIGN U
        "\u1BEF",  # ; Vowel_Dependent # Mn       BATAK VOWEL SIGN U FOR SIMALUNGUN SA
        "\u1c26","\u1c27","\u1c28","\u1c29","\u1c2a","\u1c2b",  # ; Vowel_Dependent # Mc   [6] LEPCHA VOWEL SIGN AA..LEPCHA VOWEL SIGN UU
        "\u1C2C",  # ; Vowel_Dependent # Mn       LEPCHA VOWEL SIGN E
        "\ua823","\ua824",  # ; Vowel_Dependent # Mc   [2] SYLOTI NAGRI VOWEL SIGN A..SYLOTI NAGRI VOWEL SIGN I
        "\ua825","\ua826",  # ; Vowel_Dependent # Mn   [2] SYLOTI NAGRI VOWEL SIGN U..SYLOTI NAGRI VOWEL SIGN E
        "\uA827",  # ; Vowel_Dependent # Mc       SYLOTI NAGRI VOWEL SIGN OO
        "\ua8b5","\ua8b6","\ua8b7","\ua8b8","\ua8b9","\ua8ba","\ua8bb","\ua8bc","\ua8bd","\ua8be","\ua8bf","\ua8c0","\ua8c1","\ua8c2","\ua8c3",  # ; Vowel_Dependent # Mc  [15] SAURASHTRA VOWEL SIGN AA..SAURASHTRA VOWEL SIGN AU
        "\ua947","\ua948","\ua949","\ua94a","\ua94b","\ua94c","\ua94d","\ua94e",  # ; Vowel_Dependent # Mn   [8] REJANG VOWEL SIGN I..REJANG VOWEL SIGN EA
        "\ua9b4","\ua9b5",  # ; Vowel_Dependent # Mc   [2] JAVANESE VOWEL SIGN TARUNG..JAVANESE VOWEL SIGN TOLONG
        "\ua9b6","\ua9b7","\ua9b8","\ua9b9",  # ; Vowel_Dependent # Mn   [4] JAVANESE VOWEL SIGN WULU..JAVANESE VOWEL SIGN SUKU MENDUT
        "\ua9ba","\ua9bb",  # ; Vowel_Dependent # Mc   [2] JAVANESE VOWEL SIGN TALING..JAVANESE VOWEL SIGN DIRGA MURE
        "\uA9BC",  # ; Vowel_Dependent # Mn       JAVANESE VOWEL SIGN PEPET
        "\uA9E5",  # ; Vowel_Dependent # Mn       MYANMAR SIGN SHAN SAW
        "\uaa29","\uaa2a","\uaa2b","\uaa2c","\uaa2d","\uaa2e",  # ; Vowel_Dependent # Mn   [6] CHAM VOWEL SIGN AA..CHAM VOWEL SIGN OE
        "\uaa2f","\uaa30",  # ; Vowel_Dependent # Mc   [2] CHAM VOWEL SIGN O..CHAM VOWEL SIGN AI
        "\uaa31","\uaa32",  # ; Vowel_Dependent # Mn   [2] CHAM VOWEL SIGN AU..CHAM VOWEL SIGN UE
        "\uAAB0",  # ; Vowel_Dependent # Mn       TAI VIET MAI KANG
        "\uAAB1",  # ; Vowel_Dependent # Lo       TAI VIET VOWEL AA
        "\uaab2","\uaab3","\uaab4",  # ; Vowel_Dependent # Mn   [3] TAI VIET VOWEL I..TAI VIET VOWEL U
        "\uaab5","\uaab6",  # ; Vowel_Dependent # Lo   [2] TAI VIET VOWEL E..TAI VIET VOWEL O
        "\uaab7","\uaab8",  # ; Vowel_Dependent # Mn   [2] TAI VIET MAI KHIT..TAI VIET VOWEL IA
        "\uaab9","\uaaba","\uaabb","\uaabc","\uaabd",  # ; Vowel_Dependent # Lo   [5] TAI VIET VOWEL UEA..TAI VIET VOWEL AN
        "\uAABE",  # ; Vowel_Dependent # Mn       TAI VIET VOWEL AM
        "\uAAEB",  # ; Vowel_Dependent # Mc       MEETEI MAYEK VOWEL SIGN II
        "\uaaec","\uaaed",  # ; Vowel_Dependent # Mn   [2] MEETEI MAYEK VOWEL SIGN UU..MEETEI MAYEK VOWEL SIGN AAI
        "\uaaee","\uaaef",  # ; Vowel_Dependent # Mc   [2] MEETEI MAYEK VOWEL SIGN AU..MEETEI MAYEK VOWEL SIGN AAU
        "\uabe3","\uabe4",  # ; Vowel_Dependent # Mc   [2] MEETEI MAYEK VOWEL SIGN ONAP..MEETEI MAYEK VOWEL SIGN INAP
        "\uABE5",  # ; Vowel_Dependent # Mn       MEETEI MAYEK VOWEL SIGN ANAP
        "\uabe6","\uabe7",  # ; Vowel_Dependent # Mc   [2] MEETEI MAYEK VOWEL SIGN YENAP..MEETEI MAYEK VOWEL SIGN SOUNAP
        "\uABE8",  # ; Vowel_Dependent # Mn       MEETEI MAYEK VOWEL SIGN UNAP
        "\uabe9","\uabea",  # ; Vowel_Dependent # Mc   [2] MEETEI MAYEK VOWEL SIGN CHEINAP..MEETEI MAYEK VOWEL SIGN NUNG
        "\u10a01","\u10a02","\u10a03",  # ; Vowel_Dependent # Mn   [3] KHAROSHTHI VOWEL SIGN I..KHAROSHTHI VOWEL SIGN VOCALIC R
        "\u10a05","\u10a06",  # ; Vowel_Dependent # Mn   [2] KHAROSHTHI VOWEL SIGN E..KHAROSHTHI VOWEL SIGN O
        "\u10a0c","\u10a0d",  # ; Vowel_Dependent # Mn   [2] KHAROSHTHI VOWEL LENGTH MARK..KHAROSHTHI SIGN DOUBLE RING BELOW
        "\u11038","\u11039","\u1103a","\u1103b","\u1103c","\u1103d","\u1103e","\u1103f","\u11040","\u11041","\u11042","\u11043","\u11044","\u11045",  # ; Vowel_Dependent # Mn  [14] BRAHMI VOWEL SIGN AA..BRAHMI VOWEL SIGN AU
        "\u110b0","\u110b1","\u110b2",  # ; Vowel_Dependent # Mc   [3] KAITHI VOWEL SIGN AA..KAITHI VOWEL SIGN II
        "\u110b3","\u110b4","\u110b5","\u110b6",  # ; Vowel_Dependent # Mn   [4] KAITHI VOWEL SIGN U..KAITHI VOWEL SIGN AI
        "\u110b7","\u110b8",  # ; Vowel_Dependent # Mc   [2] KAITHI VOWEL SIGN O..KAITHI VOWEL SIGN AU
        "\u11127","\u11128","\u11129","\u1112a","\u1112b",  # ; Vowel_Dependent # Mn   [5] CHAKMA VOWEL SIGN A..CHAKMA VOWEL SIGN UU
        "\u1112C",  # ; Vowel_Dependent # Mc       CHAKMA VOWEL SIGN E
        "\u1112d","\u1112e","\u1112f","\u11130","\u11131","\u11132",  # ; Vowel_Dependent # Mn   [6] CHAKMA VOWEL SIGN AI..CHAKMA AU MARK
        "\u111b3","\u111b4","\u111b5",  # ; Vowel_Dependent # Mc   [3] SHARADA VOWEL SIGN AA..SHARADA VOWEL SIGN II
        "\u111b6","\u111b7","\u111b8","\u111b9","\u111ba","\u111bb","\u111bc","\u111bd","\u111be",  # ; Vowel_Dependent # Mn   [9] SHARADA VOWEL SIGN U..SHARADA VOWEL SIGN O
        "\u111BF",  # ; Vowel_Dependent # Mc       SHARADA VOWEL SIGN AU
        "\u111cb","\u111cc",  # ; Vowel_Dependent # Mn   [2] SHARADA VOWEL MODIFIER MARK..SHARADA EXTRA SHORT VOWEL MARK
        "\u1122c","\u1122d","\u1122e",  # ; Vowel_Dependent # Mc   [3] KHOJKI VOWEL SIGN AA..KHOJKI VOWEL SIGN II
        "\u1122f","\u11230","\u11231",  # ; Vowel_Dependent # Mn   [3] KHOJKI VOWEL SIGN U..KHOJKI VOWEL SIGN AI
        "\u11232","\u11233",  # ; Vowel_Dependent # Mc   [2] KHOJKI VOWEL SIGN O..KHOJKI VOWEL SIGN AU
        "\u112e0","\u112e1","\u112e2",  # ; Vowel_Dependent # Mc   [3] KHUDAWADI VOWEL SIGN AA..KHUDAWADI VOWEL SIGN II
        "\u112e3","\u112e4","\u112e5","\u112e6","\u112e7","\u112e8",  # ; Vowel_Dependent # Mn   [6] KHUDAWADI VOWEL SIGN U..KHUDAWADI VOWEL SIGN AU
        "\u1133e","\u1133f",  # ; Vowel_Dependent # Mc   [2] GRANTHA VOWEL SIGN AA..GRANTHA VOWEL SIGN I
        "\u11340",  # ; Vowel_Dependent # Mn       GRANTHA VOWEL SIGN II
        "\u11341","\u11342","\u11343","\u11344",  # ; Vowel_Dependent # Mc   [4] GRANTHA VOWEL SIGN U..GRANTHA VOWEL SIGN VOCALIC RR
        "\u11347","\u11348",  # ; Vowel_Dependent # Mc   [2] GRANTHA VOWEL SIGN EE..GRANTHA VOWEL SIGN AI
        "\u1134b","\u1134c",  # ; Vowel_Dependent # Mc   [2] GRANTHA VOWEL SIGN OO..GRANTHA VOWEL SIGN AU
        "\u11357",  # ; Vowel_Dependent # Mc       GRANTHA AU LENGTH MARK
        "\u11362","\u11363",  # ; Vowel_Dependent # Mc   [2] GRANTHA VOWEL SIGN VOCALIC L..GRANTHA VOWEL SIGN VOCALIC LL
        "\u11435","\u11436","\u11437",  # ; Vowel_Dependent # Mc   [3] NEWA VOWEL SIGN AA..NEWA VOWEL SIGN II
        "\u11438","\u11439","\u1143a","\u1143b","\u1143c","\u1143d","\u1143e","\u1143f",  # ; Vowel_Dependent # Mn   [8] NEWA VOWEL SIGN U..NEWA VOWEL SIGN AI
        "\u11440","\u11441",  # ; Vowel_Dependent # Mc   [2] NEWA VOWEL SIGN O..NEWA VOWEL SIGN AU
        "\u114b0","\u114b1","\u114b2",  # ; Vowel_Dependent # Mc   [3] TIRHUTA VOWEL SIGN AA..TIRHUTA VOWEL SIGN II
        "\u114b3","\u114b4","\u114b5","\u114b6","\u114b7","\u114b8",  # ; Vowel_Dependent # Mn   [6] TIRHUTA VOWEL SIGN U..TIRHUTA VOWEL SIGN VOCALIC LL
        "\u114B9",  # ; Vowel_Dependent # Mc       TIRHUTA VOWEL SIGN E
        "\u114BA",  # ; Vowel_Dependent # Mn       TIRHUTA VOWEL SIGN SHORT E
        "\u114bb","\u114bc","\u114bd","\u114be",  # ; Vowel_Dependent # Mc   [4] TIRHUTA VOWEL SIGN AI..TIRHUTA VOWEL SIGN AU
        "\u115af","\u115b0","\u115b1",  # ; Vowel_Dependent # Mc   [3] SIDDHAM VOWEL SIGN AA..SIDDHAM VOWEL SIGN II
        "\u115b2","\u115b3","\u115b4","\u115b5",  # ; Vowel_Dependent # Mn   [4] SIDDHAM VOWEL SIGN U..SIDDHAM VOWEL SIGN VOCALIC RR
        "\u115b8","\u115b9","\u115ba","\u115bb",  # ; Vowel_Dependent # Mc   [4] SIDDHAM VOWEL SIGN E..SIDDHAM VOWEL SIGN AU
        "\u115dc","\u115dd",  # ; Vowel_Dependent # Mn   [2] SIDDHAM VOWEL SIGN ALTERNATE U..SIDDHAM VOWEL SIGN ALTERNATE UU
        "\u11630","\u11631","\u11632",  # ; Vowel_Dependent # Mc   [3] MODI VOWEL SIGN AA..MODI VOWEL SIGN II
        "\u11633","\u11634","\u11635","\u11636","\u11637","\u11638","\u11639","\u1163a",  # ; Vowel_Dependent # Mn   [8] MODI VOWEL SIGN U..MODI VOWEL SIGN AI
        "\u1163b","\u1163c",  # ; Vowel_Dependent # Mc   [2] MODI VOWEL SIGN O..MODI VOWEL SIGN AU
        "\u11640",  # ; Vowel_Dependent # Mn       MODI SIGN ARDHACANDRA
        "\u116AD",  # ; Vowel_Dependent # Mn       TAKRI VOWEL SIGN AA
        "\u116ae","\u116af",  # ; Vowel_Dependent # Mc   [2] TAKRI VOWEL SIGN I..TAKRI VOWEL SIGN II
        "\u116b0","\u116b1","\u116b2","\u116b3","\u116b4","\u116b5",  # ; Vowel_Dependent # Mn   [6] TAKRI VOWEL SIGN U..TAKRI VOWEL SIGN AU
        "\u11720","\u11721",  # ; Vowel_Dependent # Mc   [2] AHOM VOWEL SIGN A..AHOM VOWEL SIGN AA
        "\u11722","\u11723","\u11724","\u11725",  # ; Vowel_Dependent # Mn   [4] AHOM VOWEL SIGN I..AHOM VOWEL SIGN UU
        "\u11726",  # ; Vowel_Dependent # Mc       AHOM VOWEL SIGN E
        "\u11727","\u11728","\u11729","\u1172a",  # ; Vowel_Dependent # Mn   [4] AHOM VOWEL SIGN AW..AHOM VOWEL SIGN AM
        "\u11a01","\u11a02","\u11a03","\u11a04","\u11a05","\u11a06",  # ; Vowel_Dependent # Mn   [6] ZANABAZAR SQUARE VOWEL SIGN I..ZANABAZAR SQUARE VOWEL SIGN O
        "\u11a07","\u11a08",  # ; Vowel_Dependent # Mc   [2] ZANABAZAR SQUARE VOWEL SIGN AI..ZANABAZAR SQUARE VOWEL SIGN AU
        "\u11a09","\u11a0a",  # ; Vowel_Dependent # Mn   [2] ZANABAZAR SQUARE VOWEL SIGN REVERSED I..ZANABAZAR SQUARE VOWEL LENGTH MARK
        "\u11a51","\u11a52","\u11a53","\u11a54","\u11a55","\u11a56",  # ; Vowel_Dependent # Mn   [6] SOYOMBO VOWEL SIGN I..SOYOMBO VOWEL SIGN OE
        "\u11a57","\u11a58",  # ; Vowel_Dependent # Mc   [2] SOYOMBO VOWEL SIGN AI..SOYOMBO VOWEL SIGN AU
        "\u11a59","\u11a5a","\u11a5b",  # ; Vowel_Dependent # Mn   [3] SOYOMBO VOWEL SIGN VOCALIC R..SOYOMBO VOWEL LENGTH MARK
        "\u11C2F",  # ; Vowel_Dependent # Mc       BHAIKSUKI VOWEL SIGN AA
        "\u11c30","\u11c31","\u11c32","\u11c33","\u11c34","\u11c35","\u11c36",  # ; Vowel_Dependent # Mn   [7] BHAIKSUKI VOWEL SIGN I..BHAIKSUKI VOWEL SIGN VOCALIC L
        "\u11c38","\u11c39","\u11c3a","\u11c3b",  # ; Vowel_Dependent # Mn   [4] BHAIKSUKI VOWEL SIGN E..BHAIKSUKI VOWEL SIGN AU
        "\u11CB0",  # ; Vowel_Dependent # Mn       MARCHEN VOWEL SIGN AA
        "\u11CB1",  # ; Vowel_Dependent # Mc       MARCHEN VOWEL SIGN I
        "\u11cb2","\u11cb3",  # ; Vowel_Dependent # Mn   [2] MARCHEN VOWEL SIGN U..MARCHEN VOWEL SIGN E
        "\u11CB4",  # ; Vowel_Dependent # Mc       MARCHEN VOWEL SIGN O
        "\u11d31","\u11d32","\u11d33","\u11d34","\u11d35","\u11d36",  # ; Vowel_Dependent # Mn   [6] MASARAM GONDI VOWEL SIGN AA..MASARAM GONDI VOWEL SIGN VOCALIC R
        "\u11D3A",  # ; Vowel_Dependent # Mn       MASARAM GONDI VOWEL SIGN E
        "\u11d3c","\u11d3d",  # ; Vowel_Dependent # Mn   [2] MASARAM GONDI VOWEL SIGN AI..MASARAM GONDI VOWEL SIGN O
        "\u11D3F",  # ; Vowel_Dependent # Mn       MASARAM GONDI VOWEL SIGN AU
        "\u11D43",  # ; Vowel_Dependent # Mn       MASARAM GONDI SIGN CANDRA
        "\u1963","\u1964","\u1965","\u1966","\u1967","\u1968","\u1969","\u196a","\u196b","\u196c","\u196d",  # ; Vowel # Lo  [11] TAI LE LETTER A..TAI LE LETTER AI
        "\ua85e","\ua85f","\ua860","\ua861",  # ; Vowel # Lo   [4] PHAGS-PA LETTER I..PHAGS-PA LETTER O
        "\uA866",  # ; Vowel # Lo       PHAGS-PA LETTER EE
        "\ua922","\ua923","\ua924","\ua925",  # ; Vowel # Lo   [4] KAYAH LI LETTER A..KAYAH LI LETTER OO
        "\ua926","\ua927","\ua928","\ua929","\ua92a",  # ; Vowel # Mn   [5] KAYAH LI VOWEL UE..KAYAH LI VOWEL O
        "\u11150","\u11151","\u11152","\u11153","\u11154",  # ; Vowel # Lo   [5] MAHAJANI LETTER A..MAHAJANI LETTER O
        "\u002D",  # ; Consonant_Placeholder # Pd       HYPHEN-MINUS
        "\u00A0",  # ; Consonant_Placeholder # Zs       NO-BREAK SPACE
        "\u00D7",  # ; Consonant_Placeholder # Sm       MULTIPLICATION SIGN
        "\u0a72","\u0a73",  # ; Consonant_Placeholder # Lo   [2] GURMUKHI IRI..GURMUKHI URA
        "\u104E",  # ; Consonant_Placeholder # Po       MYANMAR SYMBOL AFOREMENTIONED
        "\u1900",  # ; Consonant_Placeholder # Lo       LIMBU VOWEL-CARRIER LETTER
        "\u2010","\u2011","\u2012","\u2013","\u2014",  # ; Consonant_Placeholder # Pd   [5] HYPHEN..EM DASH
        "\u25CC",  # ; Consonant_Placeholder # So       DOTTED CIRCLE
        "\uaa74","\uaa75","\uaa76",  # ; Consonant_Placeholder # Lo   [3] MYANMAR LOGOGRAM KHAMTI OAY..MYANMAR LOGOGRAM KHAMTI HM
        "\u11A3F",  # ; Consonant_Placeholder # Po       ZANABAZAR SQUARE INITIAL HEAD MARK
        "\u11A45",  # ; Consonant_Placeholder # Po       ZANABAZAR SQUARE INITIAL DOUBLE-LINED HEAD MARK
        "\u0915","\u0916","\u0917","\u0918","\u0919","\u091a","\u091b","\u091c","\u091d","\u091e","\u091f","\u0920","\u0921","\u0922","\u0923","\u0924","\u0925","\u0926","\u0927","\u0928","\u0929","\u092a","\u092b","\u092c","\u092d","\u092e","\u092f","\u0930","\u0931","\u0932","\u0933","\u0934","\u0935","\u0936","\u0937","\u0938","\u0939",  # ; Consonant # Lo  [37] DEVANAGARI LETTER KA..DEVANAGARI LETTER HA
        "\u0958","\u0959","\u095a","\u095b","\u095c","\u095d","\u095e","\u095f",  # ; Consonant # Lo   [8] DEVANAGARI LETTER QA..DEVANAGARI LETTER YYA
        "\u0978","\u0979","\u097a","\u097b","\u097c","\u097d","\u097e","\u097f",  # ; Consonant # Lo   [8] DEVANAGARI LETTER MARWARI DDA..DEVANAGARI LETTER BBA
        "\u0995","\u0996","\u0997","\u0998","\u0999","\u099a","\u099b","\u099c","\u099d","\u099e","\u099f","\u09a0","\u09a1","\u09a2","\u09a3","\u09a4","\u09a5","\u09a6","\u09a7","\u09a8",  # ; Consonant # Lo  [20] BENGALI LETTER KA..BENGALI LETTER NA
        "\u09aa","\u09ab","\u09ac","\u09ad","\u09ae","\u09af","\u09b0",  # ; Consonant # Lo   [7] BENGALI LETTER PA..BENGALI LETTER RA
        "\u09B2",  # ; Consonant # Lo       BENGALI LETTER LA
        "\u09b6","\u09b7","\u09b8","\u09b9",  # ; Consonant # Lo   [4] BENGALI LETTER SHA..BENGALI LETTER HA
        "\u09dc","\u09dd",  # ; Consonant # Lo   [2] BENGALI LETTER RRA..BENGALI LETTER RHA
        "\u09DF",  # ; Consonant # Lo       BENGALI LETTER YYA
        "\u09f0","\u09f1",  # ; Consonant # Lo   [2] BENGALI LETTER RA WITH MIDDLE DIAGONAL..BENGALI LETTER RA WITH LOWER DIAGONAL
        "\u0a15","\u0a16","\u0a17","\u0a18","\u0a19","\u0a1a","\u0a1b","\u0a1c","\u0a1d","\u0a1e","\u0a1f","\u0a20","\u0a21","\u0a22","\u0a23","\u0a24","\u0a25","\u0a26","\u0a27","\u0a28",  # ; Consonant # Lo  [20] GURMUKHI LETTER KA..GURMUKHI LETTER NA
        "\u0a2a","\u0a2b","\u0a2c","\u0a2d","\u0a2e","\u0a2f","\u0a30",  # ; Consonant # Lo   [7] GURMUKHI LETTER PA..GURMUKHI LETTER RA
        "\u0a32","\u0a33",  # ; Consonant # Lo   [2] GURMUKHI LETTER LA..GURMUKHI LETTER LLA
        "\u0a35","\u0a36",  # ; Consonant # Lo   [2] GURMUKHI LETTER VA..GURMUKHI LETTER SHA
        "\u0a38","\u0a39",  # ; Consonant # Lo   [2] GURMUKHI LETTER SA..GURMUKHI LETTER HA
        "\u0a59","\u0a5a","\u0a5b","\u0a5c",  # ; Consonant # Lo   [4] GURMUKHI LETTER KHHA..GURMUKHI LETTER RRA
        "\u0A5E",  # ; Consonant # Lo       GURMUKHI LETTER FA
        "\u0a95","\u0a96","\u0a97","\u0a98","\u0a99","\u0a9a","\u0a9b","\u0a9c","\u0a9d","\u0a9e","\u0a9f","\u0aa0","\u0aa1","\u0aa2","\u0aa3","\u0aa4","\u0aa5","\u0aa6","\u0aa7","\u0aa8",  # ; Consonant # Lo  [20] GUJARATI LETTER KA..GUJARATI LETTER NA
        "\u0aaa","\u0aab","\u0aac","\u0aad","\u0aae","\u0aaf","\u0ab0",  # ; Consonant # Lo   [7] GUJARATI LETTER PA..GUJARATI LETTER RA
        "\u0ab2","\u0ab3",  # ; Consonant # Lo   [2] GUJARATI LETTER LA..GUJARATI LETTER LLA
        "\u0ab5","\u0ab6","\u0ab7","\u0ab8","\u0ab9",  # ; Consonant # Lo   [5] GUJARATI LETTER VA..GUJARATI LETTER HA
        "\u0AF9",  # ; Consonant # Lo       GUJARATI LETTER ZHA
        "\u0b15","\u0b16","\u0b17","\u0b18","\u0b19","\u0b1a","\u0b1b","\u0b1c","\u0b1d","\u0b1e","\u0b1f","\u0b20","\u0b21","\u0b22","\u0b23","\u0b24","\u0b25","\u0b26","\u0b27","\u0b28",  # ; Consonant # Lo  [20] ORIYA LETTER KA..ORIYA LETTER NA
        "\u0b2a","\u0b2b","\u0b2c","\u0b2d","\u0b2e","\u0b2f","\u0b30",  # ; Consonant # Lo   [7] ORIYA LETTER PA..ORIYA LETTER RA
        "\u0b32","\u0b33",  # ; Consonant # Lo   [2] ORIYA LETTER LA..ORIYA LETTER LLA
        "\u0b35","\u0b36","\u0b37","\u0b38","\u0b39",  # ; Consonant # Lo   [5] ORIYA LETTER VA..ORIYA LETTER HA
        "\u0b5c","\u0b5d",  # ; Consonant # Lo   [2] ORIYA LETTER RRA..ORIYA LETTER RHA
        "\u0B5F",  # ; Consonant # Lo       ORIYA LETTER YYA
        "\u0B71",  # ; Consonant # Lo       ORIYA LETTER WA
        "\u0B95",  # ; Consonant # Lo       TAMIL LETTER KA
        "\u0b99","\u0b9a",  # ; Consonant # Lo   [2] TAMIL LETTER NGA..TAMIL LETTER CA
        "\u0B9C",  # ; Consonant # Lo       TAMIL LETTER JA
        "\u0b9e","\u0b9f",  # ; Consonant # Lo   [2] TAMIL LETTER NYA..TAMIL LETTER TTA
        "\u0ba3","\u0ba4",  # ; Consonant # Lo   [2] TAMIL LETTER NNA..TAMIL LETTER TA
        "\u0ba8","\u0ba9","\u0baa",  # ; Consonant # Lo   [3] TAMIL LETTER NA..TAMIL LETTER PA
        "\u0bae","\u0baf","\u0bb0","\u0bb1","\u0bb2","\u0bb3","\u0bb4","\u0bb5","\u0bb6","\u0bb7","\u0bb8","\u0bb9",  # ; Consonant # Lo  [12] TAMIL LETTER MA..TAMIL LETTER HA
        "\u0c15","\u0c16","\u0c17","\u0c18","\u0c19","\u0c1a","\u0c1b","\u0c1c","\u0c1d","\u0c1e","\u0c1f","\u0c20","\u0c21","\u0c22","\u0c23","\u0c24","\u0c25","\u0c26","\u0c27","\u0c28",  # ; Consonant # Lo  [20] TELUGU LETTER KA..TELUGU LETTER NA
        "\u0c2a","\u0c2b","\u0c2c","\u0c2d","\u0c2e","\u0c2f","\u0c30","\u0c31","\u0c32","\u0c33","\u0c34","\u0c35","\u0c36","\u0c37","\u0c38","\u0c39",  # ; Consonant # Lo  [16] TELUGU LETTER PA..TELUGU LETTER HA
        "\u0c58","\u0c59","\u0c5a",  # ; Consonant # Lo   [3] TELUGU LETTER TSA..TELUGU LETTER RRRA
        "\u0c95","\u0c96","\u0c97","\u0c98","\u0c99","\u0c9a","\u0c9b","\u0c9c","\u0c9d","\u0c9e","\u0c9f","\u0ca0","\u0ca1","\u0ca2","\u0ca3","\u0ca4","\u0ca5","\u0ca6","\u0ca7","\u0ca8",  # ; Consonant # Lo  [20] KANNADA LETTER KA..KANNADA LETTER NA
        "\u0caa","\u0cab","\u0cac","\u0cad","\u0cae","\u0caf","\u0cb0","\u0cb1","\u0cb2","\u0cb3",  # ; Consonant # Lo  [10] KANNADA LETTER PA..KANNADA LETTER LLA
        "\u0cb5","\u0cb6","\u0cb7","\u0cb8","\u0cb9",  # ; Consonant # Lo   [5] KANNADA LETTER VA..KANNADA LETTER HA
        "\u0CDE",  # ; Consonant # Lo       KANNADA LETTER FA
        "\u0d15","\u0d16","\u0d17","\u0d18","\u0d19","\u0d1a","\u0d1b","\u0d1c","\u0d1d","\u0d1e","\u0d1f","\u0d20","\u0d21","\u0d22","\u0d23","\u0d24","\u0d25","\u0d26","\u0d27","\u0d28","\u0d29","\u0d2a","\u0d2b","\u0d2c","\u0d2d","\u0d2e","\u0d2f","\u0d30","\u0d31","\u0d32","\u0d33","\u0d34","\u0d35","\u0d36","\u0d37","\u0d38","\u0d39","\u0d3a",  # ; Consonant # Lo  [38] MALAYALAM LETTER KA..MALAYALAM LETTER TTTA
        "\u0d9a","\u0d9b","\u0d9c","\u0d9d","\u0d9e","\u0d9f","\u0da0","\u0da1","\u0da2","\u0da3","\u0da4","\u0da5","\u0da6","\u0da7","\u0da8","\u0da9","\u0daa","\u0dab","\u0dac","\u0dad","\u0dae","\u0daf","\u0db0","\u0db1",  # ; Consonant # Lo  [24] SINHALA LETTER ALPAPRAANA KAYANNA..SINHALA LETTER DANTAJA NAYANNA
        "\u0db3","\u0db4","\u0db5","\u0db6","\u0db7","\u0db8","\u0db9","\u0dba","\u0dbb",  # ; Consonant # Lo   [9] SINHALA LETTER SANYAKA DAYANNA..SINHALA LETTER RAYANNA
        "\u0DBD",  # ; Consonant # Lo       SINHALA LETTER DANTAJA LAYANNA
        "\u0dc0","\u0dc1","\u0dc2","\u0dc3","\u0dc4","\u0dc5","\u0dc6",  # ; Consonant # Lo   [7] SINHALA LETTER VAYANNA..SINHALA LETTER FAYANNA
        "\u0e01","\u0e02","\u0e03","\u0e04","\u0e05","\u0e06","\u0e07","\u0e08","\u0e09","\u0e0a","\u0e0b","\u0e0c","\u0e0d","\u0e0e","\u0e0f","\u0e10","\u0e11","\u0e12","\u0e13","\u0e14","\u0e15","\u0e16","\u0e17","\u0e18","\u0e19","\u0e1a","\u0e1b","\u0e1c","\u0e1d","\u0e1e","\u0e1f","\u0e20","\u0e21","\u0e22","\u0e23","\u0e24","\u0e25","\u0e26","\u0e27","\u0e28","\u0e29","\u0e2a","\u0e2b","\u0e2c","\u0e2d","\u0e2e",  # ; Consonant # Lo  [46] THAI CHARACTER KO KAI..THAI CHARACTER HO NOKHUK
        "\u0e81","\u0e82",  # ; Consonant # Lo   [2] LAO LETTER KO..LAO LETTER KHO SUNG
        "\u0E84",  # ; Consonant # Lo       LAO LETTER KHO TAM
        "\u0e87","\u0e88",  # ; Consonant # Lo   [2] LAO LETTER NGO..LAO LETTER CO
        "\u0E8A",  # ; Consonant # Lo       LAO LETTER SO TAM
        "\u0E8D",  # ; Consonant # Lo       LAO LETTER NYO
        "\u0e94","\u0e95","\u0e96","\u0e97",  # ; Consonant # Lo   [4] LAO LETTER DO..LAO LETTER THO TAM
        "\u0e99","\u0e9a","\u0e9b","\u0e9c","\u0e9d","\u0e9e","\u0e9f",  # ; Consonant # Lo   [7] LAO LETTER NO..LAO LETTER FO SUNG
        "\u0ea1","\u0ea2","\u0ea3",  # ; Consonant # Lo   [3] LAO LETTER MO..LAO LETTER LO LING
        "\u0EA5",  # ; Consonant # Lo       LAO LETTER LO LOOT
        "\u0EA7",  # ; Consonant # Lo       LAO LETTER WO
        "\u0eaa","\u0eab",  # ; Consonant # Lo   [2] LAO LETTER SO SUNG..LAO LETTER HO SUNG
        "\u0ead","\u0eae",  # ; Consonant # Lo   [2] LAO LETTER O..LAO LETTER HO TAM
        "\u0edc","\u0edd","\u0ede","\u0edf",  # ; Consonant # Lo   [4] LAO HO NO..LAO LETTER KHMU NYO
        "\u0f40","\u0f41","\u0f42","\u0f43","\u0f44","\u0f45","\u0f46","\u0f47",  # ; Consonant # Lo   [8] TIBETAN LETTER KA..TIBETAN LETTER JA
        "\u0f49","\u0f4a","\u0f4b","\u0f4c","\u0f4d","\u0f4e","\u0f4f","\u0f50","\u0f51","\u0f52","\u0f53","\u0f54","\u0f55","\u0f56","\u0f57","\u0f58","\u0f59","\u0f5a","\u0f5b","\u0f5c","\u0f5d","\u0f5e","\u0f5f","\u0f60","\u0f61","\u0f62","\u0f63","\u0f64","\u0f65","\u0f66","\u0f67","\u0f68","\u0f69","\u0f6a","\u0f6b","\u0f6c",  # ; Consonant # Lo  [36] TIBETAN LETTER NYA..TIBETAN LETTER RRA
        "\u1000","\u1001","\u1002","\u1003","\u1004","\u1005","\u1006","\u1007","\u1008","\u1009","\u100a","\u100b","\u100c","\u100d","\u100e","\u100f","\u1010","\u1011","\u1012","\u1013","\u1014","\u1015","\u1016","\u1017","\u1018","\u1019","\u101a","\u101b","\u101c","\u101d","\u101e","\u101f","\u1020",  # ; Consonant # Lo  [33] MYANMAR LETTER KA..MYANMAR LETTER LLA
        "\u103F",  # ; Consonant # Lo       MYANMAR LETTER GREAT SA
        "\u1050","\u1051",  # ; Consonant # Lo   [2] MYANMAR LETTER SHA..MYANMAR LETTER SSA
        "\u105a","\u105b","\u105c","\u105d",  # ; Consonant # Lo   [4] MYANMAR LETTER MON NGA..MYANMAR LETTER MON BBE
        "\u1061",  # ; Consonant # Lo       MYANMAR LETTER SGAW KAREN SHA
        "\u1065","\u1066",  # ; Consonant # Lo   [2] MYANMAR LETTER WESTERN PWO KAREN THA..MYANMAR LETTER WESTERN PWO KAREN PWA
        "\u106e","\u106f","\u1070",  # ; Consonant # Lo   [3] MYANMAR LETTER EASTERN PWO KAREN NNA..MYANMAR LETTER EASTERN PWO KAREN GHWA
        "\u1075","\u1076","\u1077","\u1078","\u1079","\u107a","\u107b","\u107c","\u107d","\u107e","\u107f","\u1080","\u1081",  # ; Consonant # Lo  [13] MYANMAR LETTER SHAN KA..MYANMAR LETTER SHAN HA
        "\u108E",  # ; Consonant # Lo       MYANMAR LETTER RUMAI PALAUNG FA
        "\u1703","\u1704","\u1705","\u1706","\u1707","\u1708","\u1709","\u170a","\u170b","\u170c",  # ; Consonant # Lo  [10] TAGALOG LETTER KA..TAGALOG LETTER YA
        "\u170e","\u170f","\u1710","\u1711",  # ; Consonant # Lo   [4] TAGALOG LETTER LA..TAGALOG LETTER HA
        "\u1723","\u1724","\u1725","\u1726","\u1727","\u1728","\u1729","\u172a","\u172b","\u172c","\u172d","\u172e","\u172f","\u1730","\u1731",  # ; Consonant # Lo  [15] HANUNOO LETTER KA..HANUNOO LETTER HA
        "\u1743","\u1744","\u1745","\u1746","\u1747","\u1748","\u1749","\u174a","\u174b","\u174c","\u174d","\u174e","\u174f","\u1750","\u1751",  # ; Consonant # Lo  [15] BUHID LETTER KA..BUHID LETTER HA
        "\u1763","\u1764","\u1765","\u1766","\u1767","\u1768","\u1769","\u176a","\u176b","\u176c",  # ; Consonant # Lo  [10] TAGBANWA LETTER KA..TAGBANWA LETTER YA
        "\u176e","\u176f","\u1770",  # ; Consonant # Lo   [3] TAGBANWA LETTER LA..TAGBANWA LETTER SA
        "\u1780","\u1781","\u1782","\u1783","\u1784","\u1785","\u1786","\u1787","\u1788","\u1789","\u178a","\u178b","\u178c","\u178d","\u178e","\u178f","\u1790","\u1791","\u1792","\u1793","\u1794","\u1795","\u1796","\u1797","\u1798","\u1799","\u179a","\u179b","\u179c","\u179d","\u179e","\u179f","\u17a0","\u17a1","\u17a2",  # ; Consonant # Lo  [35] KHMER LETTER KA..KHMER LETTER QA
        "\u1901","\u1902","\u1903","\u1904","\u1905","\u1906","\u1907","\u1908","\u1909","\u190a","\u190b","\u190c","\u190d","\u190e","\u190f","\u1910","\u1911","\u1912","\u1913","\u1914","\u1915","\u1916","\u1917","\u1918","\u1919","\u191a","\u191b","\u191c","\u191d","\u191e",  # ; Consonant # Lo  [30] LIMBU LETTER KA..LIMBU LETTER TRA
        "\u1950","\u1951","\u1952","\u1953","\u1954","\u1955","\u1956","\u1957","\u1958","\u1959","\u195a","\u195b","\u195c","\u195d","\u195e","\u195f","\u1960","\u1961","\u1962",  # ; Consonant # Lo  [19] TAI LE LETTER KA..TAI LE LETTER NA
        "\u1980","\u1981","\u1982","\u1983","\u1984","\u1985","\u1986","\u1987","\u1988","\u1989","\u198a","\u198b","\u198c","\u198d","\u198e","\u198f","\u1990","\u1991","\u1992","\u1993","\u1994","\u1995","\u1996","\u1997","\u1998","\u1999","\u199a","\u199b","\u199c","\u199d","\u199e","\u199f","\u19a0","\u19a1","\u19a2","\u19a3","\u19a4","\u19a5","\u19a6","\u19a7","\u19a8","\u19a9","\u19aa","\u19ab",  # ; Consonant # Lo  [44] NEW TAI LUE LETTER HIGH QA..NEW TAI LUE LETTER LOW SUA
        "\u1a00","\u1a01","\u1a02","\u1a03","\u1a04","\u1a05","\u1a06","\u1a07","\u1a08","\u1a09","\u1a0a","\u1a0b","\u1a0c","\u1a0d","\u1a0e","\u1a0f","\u1a10","\u1a11","\u1a12","\u1a13","\u1a14","\u1a15","\u1a16",  # ; Consonant # Lo  [23] BUGINESE LETTER KA..BUGINESE LETTER HA
        "\u1a20","\u1a21","\u1a22","\u1a23","\u1a24","\u1a25","\u1a26","\u1a27","\u1a28","\u1a29","\u1a2a","\u1a2b","\u1a2c","\u1a2d","\u1a2e","\u1a2f","\u1a30","\u1a31","\u1a32","\u1a33","\u1a34","\u1a35","\u1a36","\u1a37","\u1a38","\u1a39","\u1a3a","\u1a3b","\u1a3c","\u1a3d","\u1a3e","\u1a3f","\u1a40","\u1a41","\u1a42","\u1a43","\u1a44","\u1a45","\u1a46","\u1a47","\u1a48","\u1a49","\u1a4a","\u1a4b","\u1a4c",  # ; Consonant # Lo  [45] TAI THAM LETTER HIGH KA..TAI THAM LETTER LOW HA
        "\u1a53","\u1a54",  # ; Consonant # Lo   [2] TAI THAM LETTER LAE..TAI THAM LETTER GREAT SA
        "\u1b13","\u1b14","\u1b15","\u1b16","\u1b17","\u1b18","\u1b19","\u1b1a","\u1b1b","\u1b1c","\u1b1d","\u1b1e","\u1b1f","\u1b20","\u1b21","\u1b22","\u1b23","\u1b24","\u1b25","\u1b26","\u1b27","\u1b28","\u1b29","\u1b2a","\u1b2b","\u1b2c","\u1b2d","\u1b2e","\u1b2f","\u1b30","\u1b31","\u1b32","\u1b33",  # ; Consonant # Lo  [33] BALINESE LETTER KA..BALINESE LETTER HA
        "\u1b45","\u1b46","\u1b47","\u1b48","\u1b49","\u1b4a","\u1b4b",  # ; Consonant # Lo   [7] BALINESE LETTER KAF SASAK..BALINESE LETTER ASYURA SASAK
        "\u1b8a","\u1b8b","\u1b8c","\u1b8d","\u1b8e","\u1b8f","\u1b90","\u1b91","\u1b92","\u1b93","\u1b94","\u1b95","\u1b96","\u1b97","\u1b98","\u1b99","\u1b9a","\u1b9b","\u1b9c","\u1b9d","\u1b9e","\u1b9f","\u1ba0",  # ; Consonant # Lo  [23] SUNDANESE LETTER KA..SUNDANESE LETTER HA
        "\u1bae","\u1baf",  # ; Consonant # Lo   [2] SUNDANESE LETTER KHA..SUNDANESE LETTER SYA
        "\u1bbb","\u1bbc","\u1bbd",  # ; Consonant # Lo   [3] SUNDANESE LETTER REU..SUNDANESE LETTER BHA
        "\u1bc0","\u1bc1","\u1bc2","\u1bc3","\u1bc4","\u1bc5","\u1bc6","\u1bc7","\u1bc8","\u1bc9","\u1bca","\u1bcb","\u1bcc","\u1bcd","\u1bce","\u1bcf","\u1bd0","\u1bd1","\u1bd2","\u1bd3","\u1bd4","\u1bd5","\u1bd6","\u1bd7","\u1bd8","\u1bd9","\u1bda","\u1bdb","\u1bdc","\u1bdd","\u1bde","\u1bdf","\u1be0","\u1be1","\u1be2","\u1be3",  # ; Consonant # Lo  [36] BATAK LETTER A..BATAK LETTER MBA
        "\u1c00","\u1c01","\u1c02","\u1c03","\u1c04","\u1c05","\u1c06","\u1c07","\u1c08","\u1c09","\u1c0a","\u1c0b","\u1c0c","\u1c0d","\u1c0e","\u1c0f","\u1c10","\u1c11","\u1c12","\u1c13","\u1c14","\u1c15","\u1c16","\u1c17","\u1c18","\u1c19","\u1c1a","\u1c1b","\u1c1c","\u1c1d","\u1c1e","\u1c1f","\u1c20","\u1c21","\u1c22","\u1c23",  # ; Consonant # Lo  [36] LEPCHA LETTER KA..LEPCHA LETTER A
        "\u1c4d","\u1c4e","\u1c4f",  # ; Consonant # Lo   [3] LEPCHA LETTER TTA..LEPCHA LETTER DDA
        "\ua807","\ua808","\ua809","\ua80a",  # ; Consonant # Lo   [4] SYLOTI NAGRI LETTER KO..SYLOTI NAGRI LETTER GHO
        "\ua80c","\ua80d","\ua80e","\ua80f","\ua810","\ua811","\ua812","\ua813","\ua814","\ua815","\ua816","\ua817","\ua818","\ua819","\ua81a","\ua81b","\ua81c","\ua81d","\ua81e","\ua81f","\ua820","\ua821","\ua822",  # ; Consonant # Lo  [23] SYLOTI NAGRI LETTER CO..SYLOTI NAGRI LETTER HO
        "\ua840","\ua841","\ua842","\ua843","\ua844","\ua845","\ua846","\ua847","\ua848","\ua849","\ua84a","\ua84b","\ua84c","\ua84d","\ua84e","\ua84f","\ua850","\ua851","\ua852","\ua853","\ua854","\ua855","\ua856","\ua857","\ua858","\ua859","\ua85a","\ua85b","\ua85c","\ua85d",  # ; Consonant # Lo  [30] PHAGS-PA LETTER KA..PHAGS-PA LETTER A
        "\ua862","\ua863","\ua864","\ua865",  # ; Consonant # Lo   [4] PHAGS-PA LETTER QA..PHAGS-PA LETTER GGA
        "\ua869","\ua86a","\ua86b","\ua86c","\ua86d","\ua86e","\ua86f","\ua870",  # ; Consonant # Lo   [8] PHAGS-PA LETTER TTA..PHAGS-PA LETTER ASPIRATED FA
        "\uA872",  # ; Consonant # Lo       PHAGS-PA SUPERFIXED LETTER RA
        "\ua892","\ua893","\ua894","\ua895","\ua896","\ua897","\ua898","\ua899","\ua89a","\ua89b","\ua89c","\ua89d","\ua89e","\ua89f","\ua8a0","\ua8a1","\ua8a2","\ua8a3","\ua8a4","\ua8a5","\ua8a6","\ua8a7","\ua8a8","\ua8a9","\ua8aa","\ua8ab","\ua8ac","\ua8ad","\ua8ae","\ua8af","\ua8b0","\ua8b1","\ua8b2","\ua8b3",  # ; Consonant # Lo  [34] SAURASHTRA LETTER KA..SAURASHTRA LETTER LLA
        "\ua90a","\ua90b","\ua90c","\ua90d","\ua90e","\ua90f","\ua910","\ua911","\ua912","\ua913","\ua914","\ua915","\ua916","\ua917","\ua918","\ua919","\ua91a","\ua91b","\ua91c","\ua91d","\ua91e","\ua91f","\ua920","\ua921",  # ; Consonant # Lo  [24] KAYAH LI LETTER KA..KAYAH LI LETTER CA
        "\ua930","\ua931","\ua932","\ua933","\ua934","\ua935","\ua936","\ua937","\ua938","\ua939","\ua93a","\ua93b","\ua93c","\ua93d","\ua93e","\ua93f","\ua940","\ua941","\ua942","\ua943","\ua944","\ua945","\ua946",  # ; Consonant # Lo  [23] REJANG LETTER KA..REJANG LETTER A
        "\ua989","\ua98a","\ua98b",  # ; Consonant # Lo   [3] JAVANESE LETTER PA CEREK..JAVANESE LETTER NGA LELET RASWADI
        "\ua98f","\ua990","\ua991","\ua992","\ua993","\ua994","\ua995","\ua996","\ua997","\ua998","\ua999","\ua99a","\ua99b","\ua99c","\ua99d","\ua99e","\ua99f","\ua9a0","\ua9a1","\ua9a2","\ua9a3","\ua9a4","\ua9a5","\ua9a6","\ua9a7","\ua9a8","\ua9a9","\ua9aa","\ua9ab","\ua9ac","\ua9ad","\ua9ae","\ua9af","\ua9b0","\ua9b1","\ua9b2",  # ; Consonant # Lo  [36] JAVANESE LETTER KA..JAVANESE LETTER HA
        "\ua9e0","\ua9e1","\ua9e2","\ua9e3","\ua9e4",  # ; Consonant # Lo   [5] MYANMAR LETTER SHAN GHA..MYANMAR LETTER SHAN BHA
        "\ua9e7","\ua9e8","\ua9e9","\ua9ea","\ua9eb","\ua9ec","\ua9ed","\ua9ee","\ua9ef",  # ; Consonant # Lo   [9] MYANMAR LETTER TAI LAING NYA..MYANMAR LETTER TAI LAING NNA
        "\ua9fa","\ua9fb","\ua9fc","\ua9fd","\ua9fe",  # ; Consonant # Lo   [5] MYANMAR LETTER TAI LAING LLA..MYANMAR LETTER TAI LAING BHA
        "\uaa06","\uaa07","\uaa08","\uaa09","\uaa0a","\uaa0b","\uaa0c","\uaa0d","\uaa0e","\uaa0f","\uaa10","\uaa11","\uaa12","\uaa13","\uaa14","\uaa15","\uaa16","\uaa17","\uaa18","\uaa19","\uaa1a","\uaa1b","\uaa1c","\uaa1d","\uaa1e","\uaa1f","\uaa20","\uaa21","\uaa22","\uaa23","\uaa24","\uaa25","\uaa26","\uaa27","\uaa28",  # ; Consonant # Lo  [35] CHAM LETTER KA..CHAM LETTER HA
        "\uaa60","\uaa61","\uaa62","\uaa63","\uaa64","\uaa65","\uaa66","\uaa67","\uaa68","\uaa69","\uaa6a","\uaa6b","\uaa6c","\uaa6d","\uaa6e","\uaa6f",  # ; Consonant # Lo  [16] MYANMAR LETTER KHAMTI GA..MYANMAR LETTER KHAMTI FA
        "\uaa71","\uaa72","\uaa73",  # ; Consonant # Lo   [3] MYANMAR LETTER KHAMTI XA..MYANMAR LETTER KHAMTI RA
        "\uAA7A",  # ; Consonant # Lo       MYANMAR LETTER AITON RA
        "\uaa7e","\uaa7f",  # ; Consonant # Lo   [2] MYANMAR LETTER SHWE PALAUNG CHA..MYANMAR LETTER SHWE PALAUNG SHA
        "\uaa80","\uaa81","\uaa82","\uaa83","\uaa84","\uaa85","\uaa86","\uaa87","\uaa88","\uaa89","\uaa8a","\uaa8b","\uaa8c","\uaa8d","\uaa8e","\uaa8f","\uaa90","\uaa91","\uaa92","\uaa93","\uaa94","\uaa95","\uaa96","\uaa97","\uaa98","\uaa99","\uaa9a","\uaa9b","\uaa9c","\uaa9d","\uaa9e","\uaa9f","\uaaa0","\uaaa1","\uaaa2","\uaaa3","\uaaa4","\uaaa5","\uaaa6","\uaaa7","\uaaa8","\uaaa9","\uaaaa","\uaaab","\uaaac","\uaaad","\uaaae","\uaaaf",  # ; Consonant # Lo  [48] TAI VIET LETTER LOW KO..TAI VIET LETTER HIGH O
        "\uaae2","\uaae3","\uaae4","\uaae5","\uaae6","\uaae7","\uaae8","\uaae9","\uaaea",  # ; Consonant # Lo   [9] MEETEI MAYEK LETTER CHA..MEETEI MAYEK LETTER SSA
        "\uabc0","\uabc1","\uabc2","\uabc3","\uabc4","\uabc5","\uabc6","\uabc7","\uabc8","\uabc9","\uabca","\uabcb","\uabcc","\uabcd",  # ; Consonant # Lo  [14] MEETEI MAYEK LETTER KOK..MEETEI MAYEK LETTER HUK
        "\uABD0",  # ; Consonant # Lo       MEETEI MAYEK LETTER PHAM
        "\uabd2","\uabd3","\uabd4","\uabd5","\uabd6","\uabd7","\uabd8","\uabd9","\uabda",  # ; Consonant # Lo   [9] MEETEI MAYEK LETTER GOK..MEETEI MAYEK LETTER BHAM
        "\u10A00",  # ; Consonant # Lo       KHAROSHTHI LETTER A
        "\u10a10","\u10a11","\u10a12","\u10a13",  # ; Consonant # Lo   [4] KHAROSHTHI LETTER KA..KHAROSHTHI LETTER GHA
        "\u10a15","\u10a16","\u10a17",  # ; Consonant # Lo   [3] KHAROSHTHI LETTER CA..KHAROSHTHI LETTER JA
        "\u10a19","\u10a1a","\u10a1b","\u10a1c","\u10a1d","\u10a1e","\u10a1f","\u10a20","\u10a21","\u10a22","\u10a23","\u10a24","\u10a25","\u10a26","\u10a27","\u10a28","\u10a29","\u10a2a","\u10a2b","\u10a2c","\u10a2d","\u10a2e","\u10a2f","\u10a30","\u10a31","\u10a32","\u10a33",  # ; Consonant # Lo  [27] KHAROSHTHI LETTER NYA..KHAROSHTHI LETTER TTTHA
        "\u11013","\u11014","\u11015","\u11016","\u11017","\u11018","\u11019","\u1101a","\u1101b","\u1101c","\u1101d","\u1101e","\u1101f","\u11020","\u11021","\u11022","\u11023","\u11024","\u11025","\u11026","\u11027","\u11028","\u11029","\u1102a","\u1102b","\u1102c","\u1102d","\u1102e","\u1102f","\u11030","\u11031","\u11032","\u11033","\u11034","\u11035","\u11036","\u11037",  # ; Consonant # Lo  [37] BRAHMI LETTER KA..BRAHMI LETTER OLD TAMIL NNNA
        "\u1108d","\u1108e","\u1108f","\u11090","\u11091","\u11092","\u11093","\u11094","\u11095","\u11096","\u11097","\u11098","\u11099","\u1109a","\u1109b","\u1109c","\u1109d","\u1109e","\u1109f","\u110a0","\u110a1","\u110a2","\u110a3","\u110a4","\u110a5","\u110a6","\u110a7","\u110a8","\u110a9","\u110aa","\u110ab","\u110ac","\u110ad","\u110ae","\u110af",  # ; Consonant # Lo  [35] KAITHI LETTER KA..KAITHI LETTER HA
        "\u11107","\u11108","\u11109","\u1110a","\u1110b","\u1110c","\u1110d","\u1110e","\u1110f","\u11110","\u11111","\u11112","\u11113","\u11114","\u11115","\u11116","\u11117","\u11118","\u11119","\u1111a","\u1111b","\u1111c","\u1111d","\u1111e","\u1111f","\u11120","\u11121","\u11122","\u11123","\u11124","\u11125","\u11126",  # ; Consonant # Lo  [32] CHAKMA LETTER KAA..CHAKMA LETTER HAA
        "\u11155","\u11156","\u11157","\u11158","\u11159","\u1115a","\u1115b","\u1115c","\u1115d","\u1115e","\u1115f","\u11160","\u11161","\u11162","\u11163","\u11164","\u11165","\u11166","\u11167","\u11168","\u11169","\u1116a","\u1116b","\u1116c","\u1116d","\u1116e","\u1116f","\u11170","\u11171","\u11172",  # ; Consonant # Lo  [30] MAHAJANI LETTER KA..MAHAJANI LETTER RRA
        "\u11191","\u11192","\u11193","\u11194","\u11195","\u11196","\u11197","\u11198","\u11199","\u1119a","\u1119b","\u1119c","\u1119d","\u1119e","\u1119f","\u111a0","\u111a1","\u111a2","\u111a3","\u111a4","\u111a5","\u111a6","\u111a7","\u111a8","\u111a9","\u111aa","\u111ab","\u111ac","\u111ad","\u111ae","\u111af","\u111b0","\u111b1","\u111b2",  # ; Consonant # Lo  [34] SHARADA LETTER KA..SHARADA LETTER HA
        "\u11208","\u11209","\u1120a","\u1120b","\u1120c","\u1120d","\u1120e","\u1120f","\u11210","\u11211",  # ; Consonant # Lo  [10] KHOJKI LETTER KA..KHOJKI LETTER JJA
        "\u11213","\u11214","\u11215","\u11216","\u11217","\u11218","\u11219","\u1121a","\u1121b","\u1121c","\u1121d","\u1121e","\u1121f","\u11220","\u11221","\u11222","\u11223","\u11224","\u11225","\u11226","\u11227","\u11228","\u11229","\u1122a","\u1122b",  # ; Consonant # Lo  [25] KHOJKI LETTER NYA..KHOJKI LETTER LLA
        "\u11284","\u11285","\u11286",  # ; Consonant # Lo   [3] MULTANI LETTER KA..MULTANI LETTER GA
        "\u11288",  # ; Consonant # Lo       MULTANI LETTER GHA
        "\u1128a","\u1128b","\u1128c","\u1128d",  # ; Consonant # Lo   [4] MULTANI LETTER CA..MULTANI LETTER JJA
        "\u1128f","\u11290","\u11291","\u11292","\u11293","\u11294","\u11295","\u11296","\u11297","\u11298","\u11299","\u1129a","\u1129b","\u1129c","\u1129d",  # ; Consonant # Lo  [15] MULTANI LETTER NYA..MULTANI LETTER BA
        "\u1129f","\u112a0","\u112a1","\u112a2","\u112a3","\u112a4","\u112a5","\u112a6","\u112a7","\u112a8",  # ; Consonant # Lo  [10] MULTANI LETTER BHA..MULTANI LETTER RHA
        "\u112ba","\u112bb","\u112bc","\u112bd","\u112be","\u112bf","\u112c0","\u112c1","\u112c2","\u112c3","\u112c4","\u112c5","\u112c6","\u112c7","\u112c8","\u112c9","\u112ca","\u112cb","\u112cc","\u112cd","\u112ce","\u112cf","\u112d0","\u112d1","\u112d2","\u112d3","\u112d4","\u112d5","\u112d6","\u112d7","\u112d8","\u112d9","\u112da","\u112db","\u112dc","\u112dd","\u112de",  # ; Consonant # Lo  [37] KHUDAWADI LETTER KA..KHUDAWADI LETTER HA
        "\u11315","\u11316","\u11317","\u11318","\u11319","\u1131a","\u1131b","\u1131c","\u1131d","\u1131e","\u1131f","\u11320","\u11321","\u11322","\u11323","\u11324","\u11325","\u11326","\u11327","\u11328",  # ; Consonant # Lo  [20] GRANTHA LETTER KA..GRANTHA LETTER NA
        "\u1132a","\u1132b","\u1132c","\u1132d","\u1132e","\u1132f","\u11330",  # ; Consonant # Lo   [7] GRANTHA LETTER PA..GRANTHA LETTER RA
        "\u11332","\u11333",  # ; Consonant # Lo   [2] GRANTHA LETTER LA..GRANTHA LETTER LLA
        "\u11335","\u11336","\u11337","\u11338","\u11339",  # ; Consonant # Lo   [5] GRANTHA LETTER VA..GRANTHA LETTER HA
        "\u1140e","\u1140f","\u11410","\u11411","\u11412","\u11413","\u11414","\u11415","\u11416","\u11417","\u11418","\u11419","\u1141a","\u1141b","\u1141c","\u1141d","\u1141e","\u1141f","\u11420","\u11421","\u11422","\u11423","\u11424","\u11425","\u11426","\u11427","\u11428","\u11429","\u1142a","\u1142b","\u1142c","\u1142d","\u1142e","\u1142f","\u11430","\u11431","\u11432","\u11433","\u11434",  # ; Consonant # Lo  [39] NEWA LETTER KA..NEWA LETTER HA
        "\u1148f","\u11490","\u11491","\u11492","\u11493","\u11494","\u11495","\u11496","\u11497","\u11498","\u11499","\u1149a","\u1149b","\u1149c","\u1149d","\u1149e","\u1149f","\u114a0","\u114a1","\u114a2","\u114a3","\u114a4","\u114a5","\u114a6","\u114a7","\u114a8","\u114a9","\u114aa","\u114ab","\u114ac","\u114ad","\u114ae","\u114af",  # ; Consonant # Lo  [33] TIRHUTA LETTER KA..TIRHUTA LETTER HA
        "\u1158e","\u1158f","\u11590","\u11591","\u11592","\u11593","\u11594","\u11595","\u11596","\u11597","\u11598","\u11599","\u1159a","\u1159b","\u1159c","\u1159d","\u1159e","\u1159f","\u115a0","\u115a1","\u115a2","\u115a3","\u115a4","\u115a5","\u115a6","\u115a7","\u115a8","\u115a9","\u115aa","\u115ab","\u115ac","\u115ad","\u115ae",  # ; Consonant # Lo  [33] SIDDHAM LETTER KA..SIDDHAM LETTER HA
        "\u1160e","\u1160f","\u11610","\u11611","\u11612","\u11613","\u11614","\u11615","\u11616","\u11617","\u11618","\u11619","\u1161a","\u1161b","\u1161c","\u1161d","\u1161e","\u1161f","\u11620","\u11621","\u11622","\u11623","\u11624","\u11625","\u11626","\u11627","\u11628","\u11629","\u1162a","\u1162b","\u1162c","\u1162d","\u1162e","\u1162f",  # ; Consonant # Lo  [34] MODI LETTER KA..MODI LETTER LLA
        "\u1168a","\u1168b","\u1168c","\u1168d","\u1168e","\u1168f","\u11690","\u11691","\u11692","\u11693","\u11694","\u11695","\u11696","\u11697","\u11698","\u11699","\u1169a","\u1169b","\u1169c","\u1169d","\u1169e","\u1169f","\u116a0","\u116a1","\u116a2","\u116a3","\u116a4","\u116a5","\u116a6","\u116a7","\u116a8","\u116a9","\u116aa",  # ; Consonant # Lo  [33] TAKRI LETTER KA..TAKRI LETTER RRA
        "\u11700","\u11701","\u11702","\u11703","\u11704","\u11705","\u11706","\u11707","\u11708","\u11709","\u1170a","\u1170b","\u1170c","\u1170d","\u1170e","\u1170f","\u11710","\u11711","\u11712","\u11713","\u11714","\u11715","\u11716","\u11717","\u11718","\u11719",  # ; Consonant # Lo  [26] AHOM LETTER KA..AHOM LETTER JHA
        "\u11a0b","\u11a0c","\u11a0d","\u11a0e","\u11a0f","\u11a10","\u11a11","\u11a12","\u11a13","\u11a14","\u11a15","\u11a16","\u11a17","\u11a18","\u11a19","\u11a1a","\u11a1b","\u11a1c","\u11a1d","\u11a1e","\u11a1f","\u11a20","\u11a21","\u11a22","\u11a23","\u11a24","\u11a25","\u11a26","\u11a27","\u11a28","\u11a29","\u11a2a","\u11a2b","\u11a2c","\u11a2d","\u11a2e","\u11a2f","\u11a30","\u11a31","\u11a32",  # ; Consonant # Lo  [40] ZANABAZAR SQUARE LETTER KA..ZANABAZAR SQUARE LETTER KSSA
        "\u11a5c","\u11a5d","\u11a5e","\u11a5f","\u11a60","\u11a61","\u11a62","\u11a63","\u11a64","\u11a65","\u11a66","\u11a67","\u11a68","\u11a69","\u11a6a","\u11a6b","\u11a6c","\u11a6d","\u11a6e","\u11a6f","\u11a70","\u11a71","\u11a72","\u11a73","\u11a74","\u11a75","\u11a76","\u11a77","\u11a78","\u11a79","\u11a7a","\u11a7b","\u11a7c","\u11a7d","\u11a7e","\u11a7f","\u11a80","\u11a81","\u11a82","\u11a83",  # ; Consonant # Lo  [40] SOYOMBO LETTER KA..SOYOMBO LETTER KSSA
        "\u11c0e","\u11c0f","\u11c10","\u11c11","\u11c12","\u11c13","\u11c14","\u11c15","\u11c16","\u11c17","\u11c18","\u11c19","\u11c1a","\u11c1b","\u11c1c","\u11c1d","\u11c1e","\u11c1f","\u11c20","\u11c21","\u11c22","\u11c23","\u11c24","\u11c25","\u11c26","\u11c27","\u11c28","\u11c29","\u11c2a","\u11c2b","\u11c2c","\u11c2d","\u11c2e",  # ; Consonant # Lo  [33] BHAIKSUKI LETTER KA..BHAIKSUKI LETTER HA
        "\u11c72","\u11c73","\u11c74","\u11c75","\u11c76","\u11c77","\u11c78","\u11c79","\u11c7a","\u11c7b","\u11c7c","\u11c7d","\u11c7e","\u11c7f","\u11c80","\u11c81","\u11c82","\u11c83","\u11c84","\u11c85","\u11c86","\u11c87","\u11c88","\u11c89","\u11c8a","\u11c8b","\u11c8c","\u11c8d","\u11c8e","\u11c8f",  # ; Consonant # Lo  [30] MARCHEN LETTER KA..MARCHEN LETTER A
        "\u11d0c","\u11d0d","\u11d0e","\u11d0f","\u11d10","\u11d11","\u11d12","\u11d13","\u11d14","\u11d15","\u11d16","\u11d17","\u11d18","\u11d19","\u11d1a","\u11d1b","\u11d1c","\u11d1d","\u11d1e","\u11d1f","\u11d20","\u11d21","\u11d22","\u11d23","\u11d24","\u11d25","\u11d26","\u11d27","\u11d28","\u11d29","\u11d2a","\u11d2b","\u11d2c","\u11d2d","\u11d2e","\u11d2f","\u11d30",  # ; Consonant # Lo  [37] MASARAM GONDI LETTER KA..MASARAM GONDI LETTER TRA
        "\u09CE",  # ; Consonant_Dead # Lo       BENGALI LETTER KHANDA TA
        "\u0d54","\u0d55","\u0d56",  # ; Consonant_Dead # Lo   [3] MALAYALAM LETTER CHILLU M..MALAYALAM LETTER CHILLU LLL
        "\u0d7a","\u0d7b","\u0d7c","\u0d7d","\u0d7e","\u0d7f",  # ; Consonant_Dead # Lo   [6] MALAYALAM LETTER CHILLU NN..MALAYALAM LETTER CHILLU K
        "\u0cf1","\u0cf2",  # ; Consonant_With_Stacker # Lo   [2] KANNADA SIGN JIHVAMULIYA..KANNADA SIGN UPADHMANIYA
        "\u11003","\u11004",  # ; Consonant_With_Stacker # Lo   [2] BRAHMI SIGN JIHVAMULIYA..BRAHMI SIGN UPADHMANIYA
        "\u111c2","\u111c3",  # ; Consonant_Prefixed # Lo   [2] SHARADA SIGN JIHVAMULIYA..SHARADA SIGN UPADHMANIYA
        "\u11A3A",  # ; Consonant_Prefixed # Lo       ZANABAZAR SQUARE CLUSTER-INITIAL LETTER RA
        "\u11a86","\u11a87","\u11a88","\u11a89",  # ; Consonant_Prefixed # Lo   [4] SOYOMBO CLUSTER-INITIAL LETTER RA..SOYOMBO CLUSTER-INITIAL LETTER SA
        "\u0D4E",  # ; Consonant_Preceding_Repha # Lo       MALAYALAM LETTER DOT REPH
        "\u11D46",  # ; Consonant_Preceding_Repha # Lo       MASARAM GONDI REPHA
        "\u17CC",  # ; Consonant_Succeeding_Repha # Mn       KHMER SIGN ROBAT
        "\u1A5A",  # ; Consonant_Succeeding_Repha # Mn       TAI THAM CONSONANT SIGN LOW PA
        "\u1B03",  # ; Consonant_Succeeding_Repha # Mn       BALINESE SIGN SURANG
        "\u1B81",  # ; Consonant_Succeeding_Repha # Mn       SUNDANESE SIGN PANGLAYAR
        "\uA982",  # ; Consonant_Succeeding_Repha # Mn       JAVANESE SIGN LAYAR
        "\u0f8d","\u0f8e","\u0f8f","\u0f90","\u0f91","\u0f92","\u0f93","\u0f94","\u0f95","\u0f96","\u0f97",  # ; Consonant_Subjoined # Mn  [11] TIBETAN SUBJOINED SIGN LCE TSA CAN..TIBETAN SUBJOINED LETTER JA
        "\u0f99","\u0f9a","\u0f9b","\u0f9c","\u0f9d","\u0f9e","\u0f9f","\u0fa0","\u0fa1","\u0fa2","\u0fa3","\u0fa4","\u0fa5","\u0fa6","\u0fa7","\u0fa8","\u0fa9","\u0faa","\u0fab","\u0fac","\u0fad","\u0fae","\u0faf","\u0fb0","\u0fb1","\u0fb2","\u0fb3","\u0fb4","\u0fb5","\u0fb6","\u0fb7","\u0fb8","\u0fb9","\u0fba","\u0fbb","\u0fbc",  # ; Consonant_Subjoined # Mn  [36] TIBETAN SUBJOINED LETTER NYA..TIBETAN SUBJOINED LETTER FIXED-FORM RA
        "\u1929","\u192a","\u192b",  # ; Consonant_Subjoined # Mc   [3] LIMBU SUBJOINED LETTER YA..LIMBU SUBJOINED LETTER WA
        "\u1A57",  # ; Consonant_Subjoined # Mc       TAI THAM CONSONANT SIGN LA TANG LAI
        "\u1a5b","\u1a5c","\u1a5d","\u1a5e",  # ; Consonant_Subjoined # Mn   [4] TAI THAM CONSONANT SIGN HIGH RATHA OR LOW PA..TAI THAM CONSONANT SIGN SA
        "\u1BA1",  # ; Consonant_Subjoined # Mc       SUNDANESE CONSONANT SIGN PAMINGKAL
        "\u1ba2","\u1ba3",  # ; Consonant_Subjoined # Mn   [2] SUNDANESE CONSONANT SIGN PANYAKRA..SUNDANESE CONSONANT SIGN PANYIKU
        "\u1bac","\u1bad",  # ; Consonant_Subjoined # Mn   [2] SUNDANESE CONSONANT SIGN PASANGAN MA..SUNDANESE CONSONANT SIGN PASANGAN WA
        "\u1c24","\u1c25",  # ; Consonant_Subjoined # Mc   [2] LEPCHA SUBJOINED LETTER YA..LEPCHA SUBJOINED LETTER RA
        "\ua867","\ua868",  # ; Consonant_Subjoined # Lo   [2] PHAGS-PA SUBJOINED LETTER WA..PHAGS-PA SUBJOINED LETTER YA
        "\uA871",  # ; Consonant_Subjoined # Lo       PHAGS-PA SUBJOINED LETTER RA
        "\uA9BD",  # ; Consonant_Subjoined # Mc       JAVANESE CONSONANT SIGN KERET
        "\u11c92","\u11c93","\u11c94","\u11c95","\u11c96","\u11c97","\u11c98","\u11c99","\u11c9a","\u11c9b","\u11c9c","\u11c9d","\u11c9e","\u11c9f","\u11ca0","\u11ca1","\u11ca2","\u11ca3","\u11ca4","\u11ca5","\u11ca6","\u11ca7",  # ; Consonant_Subjoined # Mn  [22] MARCHEN SUBJOINED LETTER KA..MARCHEN SUBJOINED LETTER ZA
        "\u11CA9",  # ; Consonant_Subjoined # Mc       MARCHEN SUBJOINED LETTER YA
        "\u11caa","\u11cab","\u11cac","\u11cad","\u11cae","\u11caf",  # ; Consonant_Subjoined # Mn   [6] MARCHEN SUBJOINED LETTER RA..MARCHEN SUBJOINED LETTER A
        "\u0A75",  # ; Consonant_Medial # Mn       GURMUKHI SIGN YAKASH
        "\u0EBC",  # ; Consonant_Medial # Mn       LAO SEMIVOWEL SIGN LO
        "\u0EBD",  # ; Consonant_Medial # Lo       LAO SEMIVOWEL SIGN NYO
        "\u103b","\u103c",  # ; Consonant_Medial # Mc   [2] MYANMAR CONSONANT SIGN MEDIAL YA..MYANMAR CONSONANT SIGN MEDIAL RA
        "\u103d","\u103e",  # ; Consonant_Medial # Mn   [2] MYANMAR CONSONANT SIGN MEDIAL WA..MYANMAR CONSONANT SIGN MEDIAL HA
        "\u105e","\u105f","\u1060",  # ; Consonant_Medial # Mn   [3] MYANMAR CONSONANT SIGN MON MEDIAL NA..MYANMAR CONSONANT SIGN MON MEDIAL LA
        "\u1082",  # ; Consonant_Medial # Mn       MYANMAR CONSONANT SIGN SHAN MEDIAL WA
        "\u1A55",  # ; Consonant_Medial # Mc       TAI THAM CONSONANT SIGN MEDIAL RA
        "\u1A56",  # ; Consonant_Medial # Mn       TAI THAM CONSONANT SIGN MEDIAL LA
        "\ua9be","\ua9bf",  # ; Consonant_Medial # Mc   [2] JAVANESE CONSONANT SIGN PENGKAL..JAVANESE CONSONANT SIGN CAKRA
        "\uaa33","\uaa34",  # ; Consonant_Medial # Mc   [2] CHAM CONSONANT SIGN YA..CHAM CONSONANT SIGN RA
        "\uaa35","\uaa36",  # ; Consonant_Medial # Mn   [2] CHAM CONSONANT SIGN LA..CHAM CONSONANT SIGN WA
        "\u1171d","\u1171e","\u1171f",  # ; Consonant_Medial # Mn   [3] AHOM CONSONANT SIGN MEDIAL LA..AHOM CONSONANT SIGN MEDIAL LIGATING RA
        "\u11a3b","\u11a3c","\u11a3d","\u11a3e",  # ; Consonant_Medial # Mn   [4] ZANABAZAR SQUARE CLUSTER-FINAL LETTER YA..ZANABAZAR SQUARE CLUSTER-FINAL LETTER VA
        "\u11D47",  # ; Consonant_Medial # Mn       MASARAM GONDI RA-KARA
        "\u1930","\u1931",  # ; Consonant_Final # Mc   [2] LIMBU SMALL LETTER KA..LIMBU SMALL LETTER NGA
        "\u1933","\u1934","\u1935","\u1936","\u1937","\u1938",  # ; Consonant_Final # Mc   [6] LIMBU SMALL LETTER TA..LIMBU SMALL LETTER LA
        "\u1939",  # ; Consonant_Final # Mn       LIMBU SIGN MUKPHRENG
        "\u19c1","\u19c2","\u19c3","\u19c4","\u19c5","\u19c6","\u19c7",  # ; Consonant_Final # Lo   [7] NEW TAI LUE LETTER FINAL V..NEW TAI LUE LETTER FINAL B
        "\u1a58","\u1a59",  # ; Consonant_Final # Mn   [2] TAI THAM SIGN MAI KANG LAI..TAI THAM CONSONANT SIGN FINAL NGA
        "\u1bbe","\u1bbf",  # ; Consonant_Final # Lo   [2] SUNDANESE LETTER FINAL K..SUNDANESE LETTER FINAL M
        "\u1bf0","\u1bf1",  # ; Consonant_Final # Mn   [2] BATAK CONSONANT SIGN NG..BATAK CONSONANT SIGN H
        "\u1c2d","\u1c2e","\u1c2f","\u1c30","\u1c31","\u1c32","\u1c33",  # ; Consonant_Final # Mn   [7] LEPCHA CONSONANT SIGN K..LEPCHA CONSONANT SIGN T
        "\uA8B4",  # ; Consonant_Final # Mc       SAURASHTRA CONSONANT SIGN HAARU
        "\ua94f","\ua950","\ua951",  # ; Consonant_Final # Mn   [3] REJANG CONSONANT SIGN NG..REJANG CONSONANT SIGN R
        "\uA952",  # ; Consonant_Final # Mc       REJANG CONSONANT SIGN H
        "\uaa40","\uaa41","\uaa42",  # ; Consonant_Final # Lo   [3] CHAM LETTER FINAL K..CHAM LETTER FINAL NG
        "\uAA43",  # ; Consonant_Final # Mn       CHAM CONSONANT SIGN FINAL NG
        "\uaa44","\uaa45","\uaa46","\uaa47","\uaa48","\uaa49","\uaa4a","\uaa4b",  # ; Consonant_Final # Lo   [8] CHAM LETTER FINAL CH..CHAM LETTER FINAL SS
        "\uAA4C",  # ; Consonant_Final # Mn       CHAM CONSONANT SIGN FINAL M
        "\uAA4D",  # ; Consonant_Final # Mc       CHAM CONSONANT SIGN FINAL H
        "\uabdb","\uabdc","\uabdd","\uabde","\uabdf","\uabe0","\uabe1","\uabe2",  # ; Consonant_Final # Lo   [8] MEETEI MAYEK LETTER KOK LONSUM..MEETEI MAYEK LETTER I LONSUM
        "\u11a8a","\u11a8b","\u11a8c","\u11a8d","\u11a8e","\u11a8f","\u11a90","\u11a91","\u11a92","\u11a93","\u11a94","\u11a95",  # ; Consonant_Final # Mn  [12] SOYOMBO FINAL CONSONANT SIGN G..SOYOMBO FINAL CONSONANT SIGN -A
        "\u0f88","\u0f89","\u0f8a","\u0f8b","\u0f8c",  # ; Consonant_Head_Letter # Lo   [5] TIBETAN SIGN LCE TSA CAN..TIBETAN SIGN INVERTED MCHU CAN
        "\u0B83",  # ; Modifying_Letter # Lo       TAMIL SIGN VISARGA
        "\u1970","\u1971","\u1972","\u1973","\u1974",  # ; Tone_Letter # Lo   [5] TAI LE LETTER TONE-2..TAI LE LETTER TONE-6
        "\uAAC0",  # ; Tone_Letter # Lo       TAI VIET TONE MAI NUENG
        "\uAAC2",  # ; Tone_Letter # Lo       TAI VIET TONE MAI SONG
        "\u0e48","\u0e49","\u0e4a","\u0e4b",  # ; Tone_Mark # Mn   [4] THAI CHARACTER MAI EK..THAI CHARACTER MAI CHATTAWA
        "\u0ec8","\u0ec9","\u0eca","\u0ecb",  # ; Tone_Mark # Mn   [4] LAO TONE MAI EK..LAO TONE MAI CATAWA
        "\u1037",  # ; Tone_Mark # Mn       MYANMAR SIGN DOT BELOW
        "\u1063","\u1064",  # ; Tone_Mark # Mc   [2] MYANMAR TONE MARK SGAW KAREN HATHI..MYANMAR TONE MARK SGAW KAREN KE PHO
        "\u1069","\u106a","\u106b","\u106c","\u106d",  # ; Tone_Mark # Mc   [5] MYANMAR SIGN WESTERN PWO KAREN TONE-1..MYANMAR SIGN WESTERN PWO KAREN TONE-5
        "\u1087","\u1088","\u1089","\u108a","\u108b","\u108c",  # ; Tone_Mark # Mc   [6] MYANMAR SIGN SHAN TONE-2..MYANMAR SIGN SHAN COUNCIL TONE-3
        "\u108D",  # ; Tone_Mark # Mn       MYANMAR SIGN SHAN COUNCIL EMPHATIC TONE
        "\u108F",  # ; Tone_Mark # Mc       MYANMAR SIGN RUMAI PALAUNG TONE-5
        "\u109a","\u109b",  # ; Tone_Mark # Mc   [2] MYANMAR SIGN KHAMTI TONE-1..MYANMAR SIGN KHAMTI TONE-3
        "\u19c8","\u19c9",  # ; Tone_Mark # Lo   [2] NEW TAI LUE TONE MARK-1..NEW TAI LUE TONE MARK-2
        "\u1a75","\u1a76","\u1a77","\u1a78","\u1a79",  # ; Tone_Mark # Mn   [5] TAI THAM SIGN TONE-1..TAI THAM SIGN KHUEN TONE-5
        "\ua92b","\ua92c","\ua92d",  # ; Tone_Mark # Mn   [3] KAYAH LI TONE PLOPHU..KAYAH LI TONE CALYA PLOPHU
        "\uAA7B",  # ; Tone_Mark # Mc       MYANMAR SIGN PAO KAREN TONE
        "\uAA7C",  # ; Tone_Mark # Mn       MYANMAR SIGN TAI LAING TONE-2
        "\uAA7D",  # ; Tone_Mark # Mc       MYANMAR SIGN TAI LAING TONE-5
        "\uAABF",  # ; Tone_Mark # Mn       TAI VIET TONE MAI EK
        "\uAAC1",  # ; Tone_Mark # Mn       TAI VIET TONE MAI THO
        "\uABEC",  # ; Tone_Mark # Mc       MEETEI MAYEK LUM IYEK
        "\u0A71",  # ; Gemination_Mark # Mn       GURMUKHI ADDAK
        "\u11237",  # ; Gemination_Mark # Mn       KHOJKI SIGN SHADDA
        "\u11A98",  # ; Gemination_Mark # Mn       SOYOMBO GEMINATION MARK
        "\u0951","\u0952",  # ; Cantillation_Mark # Mn   [2] DEVANAGARI STRESS SIGN UDATTA..DEVANAGARI STRESS SIGN ANUDATTA
        "\u0afa","\u0afb","\u0afc",  # ; Cantillation_Mark # Mn   [3] GUJARATI SIGN SUKUN..GUJARATI SIGN MADDAH
        "\u1cd0","\u1cd1","\u1cd2",  # ; Cantillation_Mark # Mn   [3] VEDIC TONE KARSHANA..VEDIC TONE PRENKHA
        "\u1cd4","\u1cd5","\u1cd6","\u1cd7","\u1cd8","\u1cd9","\u1cda","\u1cdb","\u1cdc","\u1cdd","\u1cde","\u1cdf","\u1ce0",  # ; Cantillation_Mark # Mn  [13] VEDIC SIGN YAJURVEDIC MIDLINE SVARITA..VEDIC TONE RIGVEDIC KASHMIRI INDEPENDENT SVARITA
        "\u1CE1",  # ; Cantillation_Mark # Mc       VEDIC TONE ATHARVAVEDIC INDEPENDENT SVARITA
        "\u1CF4",  # ; Cantillation_Mark # Mn       VEDIC TONE CANDRA ABOVE
        "\u1CF7",  # ; Cantillation_Mark # Mc       VEDIC SIGN ATIKRAMA
        "\u1cf8","\u1cf9",  # ; Cantillation_Mark # Mn   [2] VEDIC TONE RING ABOVE..VEDIC TONE DOUBLE RING ABOVE
        "\ua8e0","\ua8e1","\ua8e2","\ua8e3","\ua8e4","\ua8e5","\ua8e6","\ua8e7","\ua8e8","\ua8e9","\ua8ea","\ua8eb","\ua8ec","\ua8ed","\ua8ee","\ua8ef","\ua8f0","\ua8f1",  # ; Cantillation_Mark # Mn  [18] COMBINING DEVANAGARI DIGIT ZERO..COMBINING DEVANAGARI SIGN AVAGRAHA
        "\u1123E",  # ; Cantillation_Mark # Mn       KHOJKI SIGN SUKUN
        "\u11366","\u11367","\u11368","\u11369","\u1136a","\u1136b","\u1136c",  # ; Cantillation_Mark # Mn   [7] COMBINING GRANTHA DIGIT ZERO..COMBINING GRANTHA DIGIT SIX
        "\u11370","\u11371","\u11372","\u11373","\u11374",  # ; Cantillation_Mark # Mn   [5] COMBINING GRANTHA LETTER A..COMBINING GRANTHA LETTER PA
        "\u17c9","\u17ca",  # ; Register_Shifter # Mn   [2] KHMER SIGN MUUSIKATOAN..KHMER SIGN TRIISAP
        "\u00b2","\u00b3",  # ; Syllable_Modifier # No   [2] SUPERSCRIPT TWO..SUPERSCRIPT THREE
        "\u0F35",  # ; Syllable_Modifier # Mn       TIBETAN MARK NGAS BZUNG NYI ZLA
        "\u0F37",  # ; Syllable_Modifier # Mn       TIBETAN MARK NGAS BZUNG SGOR RTAGS
        "\u0FC6",  # ; Syllable_Modifier # Mn       TIBETAN SYMBOL PADMA GDAN
        "\u17CB",  # ; Syllable_Modifier # Mn       KHMER SIGN BANTOC
        "\u17ce","\u17cf","\u17d0",  # ; Syllable_Modifier # Mn   [3] KHMER SIGN KAKABAT..KHMER SIGN SAMYOK SANNYA
        "\u17D3",  # ; Syllable_Modifier # Mn       KHMER SIGN BATHAMASAT
        "\u17DD",  # ; Syllable_Modifier # Mn       KHMER SIGN ATTHACAN
        "\u193B",  # ; Syllable_Modifier # Mn       LIMBU SIGN SA-I
        "\u1a7b","\u1a7c",  # ; Syllable_Modifier # Mn   [2] TAI THAM SIGN MAI SAM..TAI THAM SIGN KHUEN-LUE KARAN
        "\u1A7F",  # ; Syllable_Modifier # Mn       TAI THAM COMBINING CRYPTOGRAMMIC DOT
        "\u1C36",  # ; Syllable_Modifier # Mn       LEPCHA SIGN RAN
        "\u1DFB",  # ; Syllable_Modifier # Mn       COMBINING DELETION MARK
        "\u2074",  # ; Syllable_Modifier # No       SUPERSCRIPT FOUR
        "\u2082","\u2083","\u2084",  # ; Syllable_Modifier # No   [3] SUBSCRIPT TWO..SUBSCRIPT FOUR
        "\u11A33",  # ; Syllable_Modifier # Mn       ZANABAZAR SQUARE FINAL CONSONANT MARK
        "\u0E4C",  # ; Consonant_Killer # Mn       THAI CHARACTER THANTHAKHAT
        "\u17CD",  # ; Consonant_Killer # Mn       KHMER SIGN TOANDAKHIAT
        "\u200C",  # ; Non_Joiner # Cf       ZERO WIDTH NON-JOINER
        "\u200D",  # ; Joiner # Cf       ZERO WIDTH JOINER
        "\u1107F",  # ; Number_Joiner # Mn       BRAHMI NUMBER JOINER
        "\u0030","\u0031","\u0032","\u0033","\u0034","\u0035","\u0036","\u0037","\u0038","\u0039",  # ; Number # Nd  [10] DIGIT ZERO..DIGIT NINE
        "\u0966","\u0967","\u0968","\u0969","\u096a","\u096b","\u096c","\u096d","\u096e","\u096f",  # ; Number # Nd  [10] DEVANAGARI DIGIT ZERO..DEVANAGARI DIGIT NINE
        "\u09e6","\u09e7","\u09e8","\u09e9","\u09ea","\u09eb","\u09ec","\u09ed","\u09ee","\u09ef",  # ; Number # Nd  [10] BENGALI DIGIT ZERO..BENGALI DIGIT NINE
        "\u0a66","\u0a67","\u0a68","\u0a69","\u0a6a","\u0a6b","\u0a6c","\u0a6d","\u0a6e","\u0a6f",  # ; Number # Nd  [10] GURMUKHI DIGIT ZERO..GURMUKHI DIGIT NINE
        "\u0ae6","\u0ae7","\u0ae8","\u0ae9","\u0aea","\u0aeb","\u0aec","\u0aed","\u0aee","\u0aef",  # ; Number # Nd  [10] GUJARATI DIGIT ZERO..GUJARATI DIGIT NINE
        "\u0b66","\u0b67","\u0b68","\u0b69","\u0b6a","\u0b6b","\u0b6c","\u0b6d","\u0b6e","\u0b6f",  # ; Number # Nd  [10] ORIYA DIGIT ZERO..ORIYA DIGIT NINE
        "\u0be6","\u0be7","\u0be8","\u0be9","\u0bea","\u0beb","\u0bec","\u0bed","\u0bee","\u0bef",  # ; Number # Nd  [10] TAMIL DIGIT ZERO..TAMIL DIGIT NINE
        "\u0c66","\u0c67","\u0c68","\u0c69","\u0c6a","\u0c6b","\u0c6c","\u0c6d","\u0c6e","\u0c6f",  # ; Number # Nd  [10] TELUGU DIGIT ZERO..TELUGU DIGIT NINE
        "\u0ce6","\u0ce7","\u0ce8","\u0ce9","\u0cea","\u0ceb","\u0cec","\u0ced","\u0cee","\u0cef",  # ; Number # Nd  [10] KANNADA DIGIT ZERO..KANNADA DIGIT NINE
        "\u0d66","\u0d67","\u0d68","\u0d69","\u0d6a","\u0d6b","\u0d6c","\u0d6d","\u0d6e","\u0d6f",  # ; Number # Nd  [10] MALAYALAM DIGIT ZERO..MALAYALAM DIGIT NINE
        "\u0de6","\u0de7","\u0de8","\u0de9","\u0dea","\u0deb","\u0dec","\u0ded","\u0dee","\u0def",  # ; Number # Nd  [10] SINHALA LITH DIGIT ZERO..SINHALA LITH DIGIT NINE
        "\u0e50","\u0e51","\u0e52","\u0e53","\u0e54","\u0e55","\u0e56","\u0e57","\u0e58","\u0e59",  # ; Number # Nd  [10] THAI DIGIT ZERO..THAI DIGIT NINE
        "\u0ed0","\u0ed1","\u0ed2","\u0ed3","\u0ed4","\u0ed5","\u0ed6","\u0ed7","\u0ed8","\u0ed9",  # ; Number # Nd  [10] LAO DIGIT ZERO..LAO DIGIT NINE
        "\u0f20","\u0f21","\u0f22","\u0f23","\u0f24","\u0f25","\u0f26","\u0f27","\u0f28","\u0f29",  # ; Number # Nd  [10] TIBETAN DIGIT ZERO..TIBETAN DIGIT NINE
        "\u0f2a","\u0f2b","\u0f2c","\u0f2d","\u0f2e","\u0f2f","\u0f30","\u0f31","\u0f32","\u0f33",  # ; Number # No  [10] TIBETAN DIGIT HALF ONE..TIBETAN DIGIT HALF ZERO
        "\u1040","\u1041","\u1042","\u1043","\u1044","\u1045","\u1046","\u1047","\u1048","\u1049",  # ; Number # Nd  [10] MYANMAR DIGIT ZERO..MYANMAR DIGIT NINE
        "\u1090","\u1091","\u1092","\u1093","\u1094","\u1095","\u1096","\u1097","\u1098","\u1099",  # ; Number # Nd  [10] MYANMAR SHAN DIGIT ZERO..MYANMAR SHAN DIGIT NINE
        "\u17e0","\u17e1","\u17e2","\u17e3","\u17e4","\u17e5","\u17e6","\u17e7","\u17e8","\u17e9",  # ; Number # Nd  [10] KHMER DIGIT ZERO..KHMER DIGIT NINE
        "\u1946","\u1947","\u1948","\u1949","\u194a","\u194b","\u194c","\u194d","\u194e","\u194f",  # ; Number # Nd  [10] LIMBU DIGIT ZERO..LIMBU DIGIT NINE
        "\u19d0","\u19d1","\u19d2","\u19d3","\u19d4","\u19d5","\u19d6","\u19d7","\u19d8","\u19d9",  # ; Number # Nd  [10] NEW TAI LUE DIGIT ZERO..NEW TAI LUE DIGIT NINE
        "\u1a80","\u1a81","\u1a82","\u1a83","\u1a84","\u1a85","\u1a86","\u1a87","\u1a88","\u1a89",  # ; Number # Nd  [10] TAI THAM HORA DIGIT ZERO..TAI THAM HORA DIGIT NINE
        "\u1a90","\u1a91","\u1a92","\u1a93","\u1a94","\u1a95","\u1a96","\u1a97","\u1a98","\u1a99",  # ; Number # Nd  [10] TAI THAM THAM DIGIT ZERO..TAI THAM THAM DIGIT NINE
        "\u1b50","\u1b51","\u1b52","\u1b53","\u1b54","\u1b55","\u1b56","\u1b57","\u1b58","\u1b59",  # ; Number # Nd  [10] BALINESE DIGIT ZERO..BALINESE DIGIT NINE
        "\u1bb0","\u1bb1","\u1bb2","\u1bb3","\u1bb4","\u1bb5","\u1bb6","\u1bb7","\u1bb8","\u1bb9",  # ; Number # Nd  [10] SUNDANESE DIGIT ZERO..SUNDANESE DIGIT NINE
        "\u1c40","\u1c41","\u1c42","\u1c43","\u1c44","\u1c45","\u1c46","\u1c47","\u1c48","\u1c49",  # ; Number # Nd  [10] LEPCHA DIGIT ZERO..LEPCHA DIGIT NINE
        "\ua8d0","\ua8d1","\ua8d2","\ua8d3","\ua8d4","\ua8d5","\ua8d6","\ua8d7","\ua8d8","\ua8d9",  # ; Number # Nd  [10] SAURASHTRA DIGIT ZERO..SAURASHTRA DIGIT NINE
        "\ua900","\ua901","\ua902","\ua903","\ua904","\ua905","\ua906","\ua907","\ua908","\ua909",  # ; Number # Nd  [10] KAYAH LI DIGIT ZERO..KAYAH LI DIGIT NINE
        "\ua9d0","\ua9d1","\ua9d2","\ua9d3","\ua9d4","\ua9d5","\ua9d6","\ua9d7","\ua9d8","\ua9d9",  # ; Number # Nd  [10] JAVANESE DIGIT ZERO..JAVANESE DIGIT NINE
        "\ua9f0","\ua9f1","\ua9f2","\ua9f3","\ua9f4","\ua9f5","\ua9f6","\ua9f7","\ua9f8","\ua9f9",  # ; Number # Nd  [10] MYANMAR TAI LAING DIGIT ZERO..MYANMAR TAI LAING DIGIT NINE
        "\uaa50","\uaa51","\uaa52","\uaa53","\uaa54","\uaa55","\uaa56","\uaa57","\uaa58","\uaa59",  # ; Number # Nd  [10] CHAM DIGIT ZERO..CHAM DIGIT NINE
        "\uabf0","\uabf1","\uabf2","\uabf3","\uabf4","\uabf5","\uabf6","\uabf7","\uabf8","\uabf9",  # ; Number # Nd  [10] MEETEI MAYEK DIGIT ZERO..MEETEI MAYEK DIGIT NINE
        "\u10a40","\u10a41","\u10a42","\u10a43","\u10a44","\u10a45","\u10a46","\u10a47",  # ; Number # No   [8] KHAROSHTHI DIGIT ONE..KHAROSHTHI NUMBER ONE THOUSAND
        "\u11066","\u11067","\u11068","\u11069","\u1106a","\u1106b","\u1106c","\u1106d","\u1106e","\u1106f",  # ; Number # Nd  [10] BRAHMI DIGIT ZERO..BRAHMI DIGIT NINE
        "\u11136","\u11137","\u11138","\u11139","\u1113a","\u1113b","\u1113c","\u1113d","\u1113e","\u1113f",  # ; Number # Nd  [10] CHAKMA DIGIT ZERO..CHAKMA DIGIT NINE
        "\u111d0","\u111d1","\u111d2","\u111d3","\u111d4","\u111d5","\u111d6","\u111d7","\u111d8","\u111d9",  # ; Number # Nd  [10] SHARADA DIGIT ZERO..SHARADA DIGIT NINE
        "\u111e1","\u111e2","\u111e3","\u111e4","\u111e5","\u111e6","\u111e7","\u111e8","\u111e9","\u111ea","\u111eb","\u111ec","\u111ed","\u111ee","\u111ef","\u111f0","\u111f1","\u111f2","\u111f3","\u111f4",  # ; Number # No  [20] SINHALA ARCHAIC DIGIT ONE..SINHALA ARCHAIC NUMBER ONE THOUSAND
        "\u112f0","\u112f1","\u112f2","\u112f3","\u112f4","\u112f5","\u112f6","\u112f7","\u112f8","\u112f9",  # ; Number # Nd  [10] KHUDAWADI DIGIT ZERO..KHUDAWADI DIGIT NINE
        "\u11450","\u11451","\u11452","\u11453","\u11454","\u11455","\u11456","\u11457","\u11458","\u11459",  # ; Number # Nd  [10] NEWA DIGIT ZERO..NEWA DIGIT NINE
        "\u114d0","\u114d1","\u114d2","\u114d3","\u114d4","\u114d5","\u114d6","\u114d7","\u114d8","\u114d9",  # ; Number # Nd  [10] TIRHUTA DIGIT ZERO..TIRHUTA DIGIT NINE
        "\u11650","\u11651","\u11652","\u11653","\u11654","\u11655","\u11656","\u11657","\u11658","\u11659",  # ; Number # Nd  [10] MODI DIGIT ZERO..MODI DIGIT NINE
        "\u116c0","\u116c1","\u116c2","\u116c3","\u116c4","\u116c5","\u116c6","\u116c7","\u116c8","\u116c9",  # ; Number # Nd  [10] TAKRI DIGIT ZERO..TAKRI DIGIT NINE
        "\u11730","\u11731","\u11732","\u11733","\u11734","\u11735","\u11736","\u11737","\u11738","\u11739",  # ; Number # Nd  [10] AHOM DIGIT ZERO..AHOM DIGIT NINE
        "\u1173a","\u1173b",  # ; Number # No   [2] AHOM NUMBER TEN..AHOM NUMBER TWENTY
        "\u11c50","\u11c51","\u11c52","\u11c53","\u11c54","\u11c55","\u11c56","\u11c57","\u11c58","\u11c59",  # ; Number # Nd  [10] BHAIKSUKI DIGIT ZERO..BHAIKSUKI DIGIT NINE
        "\u11c5a","\u11c5b","\u11c5c","\u11c5d","\u11c5e","\u11c5f","\u11c60","\u11c61","\u11c62","\u11c63","\u11c64","\u11c65","\u11c66","\u11c67","\u11c68","\u11c69","\u11c6a","\u11c6b","\u11c6c",  # ; Number # No  [19] BHAIKSUKI NUMBER ONE..BHAIKSUKI HUNDREDS UNIT MARK
        "\u11d50","\u11d51","\u11d52","\u11d53","\u11d54","\u11d55","\u11d56","\u11d57","\u11d58","\u11d59",  # ; Number # Nd  [10] MASARAM GONDI DIGIT ZERO..MASARAM GONDI DIGIT NINE
        "\u11052","\u11053","\u11054","\u11055","\u11056","\u11057","\u11058","\u11059","\u1105a","\u1105b","\u1105c","\u1105d","\u1105e","\u1105f","\u11060","\u11061","\u11062","\u11063","\u11064","\u11065",  # ; Brahmi_Joining_Number # No  [20] BRAHMI NUMBER ONE..BRAHMI NUMBER ONE THOUSAND
    ]
    test_data.each do |string|
      assert @validator.valid_encoding?(string), "U10_IndicSyllabicCategory: #{string}"
      assert string.force_encoding("UTF-8").valid_encoding?, "U10_IndicSyllabicCategory: #{string}" if @vercheck
    end
  end

end

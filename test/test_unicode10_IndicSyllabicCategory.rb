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
        "\d0900","\d0901","\d0902",  # ; Bindu # Mn   [3] DEVANAGARI SIGN INVERTED CANDRABINDU..DEVANAGARI SIGN ANUSVARA
        "\d0981",  # ; Bindu # Mn       BENGALI SIGN CANDRABINDU
        "\d0982",  # ; Bindu # Mc       BENGALI SIGN ANUSVARA
        "\d09FC",  # ; Bindu # Lo       BENGALI LETTER VEDIC ANUSVARA
        "\d0a01","\d0a02",  # ; Bindu # Mn   [2] GURMUKHI SIGN ADAK BINDI..GURMUKHI SIGN BINDI
        "\d0A70",  # ; Bindu # Mn       GURMUKHI TIPPI
        "\d0a81","\d0a82",  # ; Bindu # Mn   [2] GUJARATI SIGN CANDRABINDU..GUJARATI SIGN ANUSVARA
        "\d0B01",  # ; Bindu # Mn       ORIYA SIGN CANDRABINDU
        "\d0B02",  # ; Bindu # Mc       ORIYA SIGN ANUSVARA
        "\d0B82",  # ; Bindu # Mn       TAMIL SIGN ANUSVARA
        "\d0C00",  # ; Bindu # Mn       TELUGU SIGN COMBINING CANDRABINDU ABOVE
        "\d0c01","\d0c02",  # ; Bindu # Mc   [2] TELUGU SIGN CANDRABINDU..TELUGU SIGN ANUSVARA
        "\d0C81",  # ; Bindu # Mn       KANNADA SIGN CANDRABINDU
        "\d0C82",  # ; Bindu # Mc       KANNADA SIGN ANUSVARA
        "\d0D00",  # ; Bindu # Mn       MALAYALAM SIGN COMBINING ANUSVARA ABOVE
        "\d0D01",  # ; Bindu # Mn       MALAYALAM SIGN CANDRABINDU
        "\d0D02",  # ; Bindu # Mc       MALAYALAM SIGN ANUSVARA
        "\d0D82",  # ; Bindu # Mc       SINHALA SIGN ANUSVARAYA
        "\d0E4D",  # ; Bindu # Mn       THAI CHARACTER NIKHAHIT
        "\d0ECD",  # ; Bindu # Mn       LAO NIGGAHITA
        "\d0F7E",  # ; Bindu # Mn       TIBETAN SIGN RJES SU NGA RO
        "\d0f82","\d0f83",  # ; Bindu # Mn   [2] TIBETAN SIGN NYI ZLA NAA DA..TIBETAN SIGN SNA LDAN
        "\d1036",  # ; Bindu # Mn       MYANMAR SIGN ANUSVARA
        "\d17C6",  # ; Bindu # Mn       KHMER SIGN NIKAHIT
        "\d1932",  # ; Bindu # Mn       LIMBU SMALL LETTER ANUSVARA
        "\d1A74",  # ; Bindu # Mn       TAI THAM SIGN MAI KANG
        "\d1b00","\d1b01","\d1b02",  # ; Bindu # Mn   [3] BALINESE SIGN ULU RICEM..BALINESE SIGN CECEK
        "\d1B80",  # ; Bindu # Mn       SUNDANESE SIGN PANYECEK
        "\d1c34","\d1c35",  # ; Bindu # Mc   [2] LEPCHA CONSONANT SIGN NYIN-DO..LEPCHA CONSONANT SIGN KANG
        "\dA80B",  # ; Bindu # Mn       SYLOTI NAGRI SIGN ANUSVARA
        "\dA873",  # ; Bindu # Lo       PHAGS-PA LETTER CANDRABINDU
        "\dA880",  # ; Bindu # Mc       SAURASHTRA SIGN ANUSVARA
        "\dA8C5",  # ; Bindu # Mn       SAURASHTRA SIGN CANDRABINDU
        "\da8f2","\da8f3",  # ; Bindu # Lo   [2] DEVANAGARI SIGN SPACING CANDRABINDU..DEVANAGARI SIGN CANDRABINDU VIRAMA
        "\da980","\da981",  # ; Bindu # Mn   [2] JAVANESE SIGN PANYANGGA..JAVANESE SIGN CECAK
        "\d10A0E",  # ; Bindu # Mn       KHAROSHTHI SIGN ANUSVARA
        "\d11000",  # ; Bindu # Mc       BRAHMI SIGN CANDRABINDU
        "\d11001",  # ; Bindu # Mn       BRAHMI SIGN ANUSVARA
        "\d11080","\d11081",  # ; Bindu # Mn   [2] KAITHI SIGN CANDRABINDU..KAITHI SIGN ANUSVARA
        "\d11100","\d11101",  # ; Bindu # Mn   [2] CHAKMA SIGN CANDRABINDU..CHAKMA SIGN ANUSVARA
        "\d11180","\d11181",  # ; Bindu # Mn   [2] SHARADA SIGN CANDRABINDU..SHARADA SIGN ANUSVARA
        "\d11234",  # ; Bindu # Mn       KHOJKI SIGN ANUSVARA
        "\d112DF",  # ; Bindu # Mn       KHUDAWADI SIGN ANUSVARA
        "\d11300","\d11301",  # ; Bindu # Mn   [2] GRANTHA SIGN COMBINING ANUSVARA ABOVE..GRANTHA SIGN CANDRABINDU
        "\d11302",  # ; Bindu # Mc       GRANTHA SIGN ANUSVARA
        "\d1135e","\d1135f",  # ; Bindu # Lo   [2] GRANTHA LETTER VEDIC ANUSVARA..GRANTHA LETTER VEDIC DOUBLE ANUSVARA
        "\d11443","\d11444",  # ; Bindu # Mn   [2] NEWA SIGN CANDRABINDU..NEWA SIGN ANUSVARA
        "\d114bf","\d114c0",  # ; Bindu # Mn   [2] TIRHUTA SIGN CANDRABINDU..TIRHUTA SIGN ANUSVARA
        "\d115bc","\d115bd",  # ; Bindu # Mn   [2] SIDDHAM SIGN CANDRABINDU..SIDDHAM SIGN ANUSVARA
        "\d1163D",  # ; Bindu # Mn       MODI SIGN ANUSVARA
        "\d116AB",  # ; Bindu # Mn       TAKRI SIGN ANUSVARA
        "\d11a35","\d11a36","\d11a37","\d11a38",  # ; Bindu # Mn   [4] ZANABAZAR SQUARE SIGN CANDRABINDU..ZANABAZAR SQUARE SIGN ANUSVARA
        "\d11A96",  # ; Bindu # Mn       SOYOMBO SIGN ANUSVARA
        "\d11c3c","\d11c3d",  # ; Bindu # Mn   [2] BHAIKSUKI SIGN CANDRABINDU..BHAIKSUKI SIGN ANUSVARA
        "\d11cb5","\d11cb6",  # ; Bindu # Mn   [2] MARCHEN SIGN ANUSVARA..MARCHEN SIGN CANDRABINDU
        "\d11D40",  # ; Bindu # Mn       MASARAM GONDI SIGN ANUSVARA
        "\d0903",  # ; Visarga # Mc       DEVANAGARI SIGN VISARGA
        "\d0983",  # ; Visarga # Mc       BENGALI SIGN VISARGA
        "\d0A03",  # ; Visarga # Mc       GURMUKHI SIGN VISARGA
        "\d0A83",  # ; Visarga # Mc       GUJARATI SIGN VISARGA
        "\d0B03",  # ; Visarga # Mc       ORIYA SIGN VISARGA
        "\d0C03",  # ; Visarga # Mc       TELUGU SIGN VISARGA
        "\d0C83",  # ; Visarga # Mc       KANNADA SIGN VISARGA
        "\d0D03",  # ; Visarga # Mc       MALAYALAM SIGN VISARGA
        "\d0D83",  # ; Visarga # Mc       SINHALA SIGN VISARGAYA
        "\d0F7F",  # ; Visarga # Mc       TIBETAN SIGN RNAM BCAD
        "\d1038",  # ; Visarga # Mc       MYANMAR SIGN VISARGA
        "\d17C7",  # ; Visarga # Mc       KHMER SIGN REAHMUK
        "\d1B04",  # ; Visarga # Mc       BALINESE SIGN BISAH
        "\d1B82",  # ; Visarga # Mc       SUNDANESE SIGN PANGWISAD
        "\d1cf2","\d1cf3",  # ; Visarga # Mc   [2] VEDIC SIGN ARDHAVISARGA..VEDIC SIGN ROTATED ARDHAVISARGA
        "\dA881",  # ; Visarga # Mc       SAURASHTRA SIGN VISARGA
        "\dA983",  # ; Visarga # Mc       JAVANESE SIGN WIGNYAN
        "\dAAF5",  # ; Visarga # Mc       MEETEI MAYEK VOWEL SIGN VISARGA
        "\d10A0F",  # ; Visarga # Mn       KHAROSHTHI SIGN VISARGA
        "\d11002",  # ; Visarga # Mc       BRAHMI SIGN VISARGA
        "\d11082",  # ; Visarga # Mc       KAITHI SIGN VISARGA
        "\d11102",  # ; Visarga # Mn       CHAKMA SIGN VISARGA
        "\d11182",  # ; Visarga # Mc       SHARADA SIGN VISARGA
        "\d11303",  # ; Visarga # Mc       GRANTHA SIGN VISARGA
        "\d11445",  # ; Visarga # Mc       NEWA SIGN VISARGA
        "\d114C1",  # ; Visarga # Mc       TIRHUTA SIGN VISARGA
        "\d115BE",  # ; Visarga # Mc       SIDDHAM SIGN VISARGA
        "\d1163E",  # ; Visarga # Mc       MODI SIGN VISARGA
        "\d116AC",  # ; Visarga # Mc       TAKRI SIGN VISARGA
        "\d11A39",  # ; Visarga # Mc       ZANABAZAR SQUARE SIGN VISARGA
        "\d11A97",  # ; Visarga # Mc       SOYOMBO SIGN VISARGA
        "\d11C3E",  # ; Visarga # Mc       BHAIKSUKI SIGN VISARGA
        "\d11D41",  # ; Visarga # Mn       MASARAM GONDI SIGN VISARGA
        "\d093D",  # ; Avagraha # Lo       DEVANAGARI SIGN AVAGRAHA
        "\d09BD",  # ; Avagraha # Lo       BENGALI SIGN AVAGRAHA
        "\d0ABD",  # ; Avagraha # Lo       GUJARATI SIGN AVAGRAHA
        "\d0B3D",  # ; Avagraha # Lo       ORIYA SIGN AVAGRAHA
        "\d0C3D",  # ; Avagraha # Lo       TELUGU SIGN AVAGRAHA
        "\d0CBD",  # ; Avagraha # Lo       KANNADA SIGN AVAGRAHA
        "\d0D3D",  # ; Avagraha # Lo       MALAYALAM SIGN AVAGRAHA
        "\d0F85",  # ; Avagraha # Po       TIBETAN MARK PALUTA
        "\d17DC",  # ; Avagraha # Lo       KHMER SIGN AVAKRAHASANYA
        "\d1BBA",  # ; Avagraha # Lo       SUNDANESE AVAGRAHA
        "\d111C1",  # ; Avagraha # Lo       SHARADA SIGN AVAGRAHA
        "\d1133D",  # ; Avagraha # Lo       GRANTHA SIGN AVAGRAHA
        "\d11447",  # ; Avagraha # Lo       NEWA SIGN AVAGRAHA
        "\d114C4",  # ; Avagraha # Lo       TIRHUTA SIGN AVAGRAHA
        "\d11C40",  # ; Avagraha # Lo       BHAIKSUKI SIGN AVAGRAHA
        "\d093C",  # ; Nukta # Mn       DEVANAGARI SIGN NUKTA
        "\d09BC",  # ; Nukta # Mn       BENGALI SIGN NUKTA
        "\d0A3C",  # ; Nukta # Mn       GURMUKHI SIGN NUKTA
        "\d0ABC",  # ; Nukta # Mn       GUJARATI SIGN NUKTA
        "\d0afd","\d0afe","\d0aff",  # ; Nukta # Mn   [3] GUJARATI SIGN THREE-DOT NUKTA ABOVE..GUJARATI SIGN TWO-CIRCLE NUKTA ABOVE
        "\d0B3C",  # ; Nukta # Mn       ORIYA SIGN NUKTA
        "\d0CBC",  # ; Nukta # Mn       KANNADA SIGN NUKTA
        "\d0F39",  # ; Nukta # Mn       TIBETAN MARK TSA -PHRU
        "\d1B34",  # ; Nukta # Mn       BALINESE SIGN REREKAN
        "\d1BE6",  # ; Nukta # Mn       BATAK SIGN TOMPI
        "\d1C37",  # ; Nukta # Mn       LEPCHA SIGN NUKTA
        "\dA9B3",  # ; Nukta # Mn       JAVANESE SIGN CECAK TELU
        "\d10a38","\d10a39","\d10a3a",  # ; Nukta # Mn   [3] KHAROSHTHI SIGN BAR ABOVE..KHAROSHTHI SIGN DOT BELOW
        "\d110BA",  # ; Nukta # Mn       KAITHI SIGN NUKTA
        "\d11173",  # ; Nukta # Mn       MAHAJANI SIGN NUKTA
        "\d111CA",  # ; Nukta # Mn       SHARADA SIGN NUKTA
        "\d11236",  # ; Nukta # Mn       KHOJKI SIGN NUKTA
        "\d112E9",  # ; Nukta # Mn       KHUDAWADI SIGN NUKTA
        "\d1133C",  # ; Nukta # Mn       GRANTHA SIGN NUKTA
        "\d11446",  # ; Nukta # Mn       NEWA SIGN NUKTA
        "\d114C3",  # ; Nukta # Mn       TIRHUTA SIGN NUKTA
        "\d115C0",  # ; Nukta # Mn       SIDDHAM SIGN NUKTA
        "\d116B7",  # ; Nukta # Mn       TAKRI SIGN NUKTA
        "\d11D42",  # ; Nukta # Mn       MASARAM GONDI SIGN NUKTA
        "\d094D",  # ; Virama # Mn       DEVANAGARI SIGN VIRAMA
        "\d09CD",  # ; Virama # Mn       BENGALI SIGN VIRAMA
        "\d0A4D",  # ; Virama # Mn       GURMUKHI SIGN VIRAMA
        "\d0ACD",  # ; Virama # Mn       GUJARATI SIGN VIRAMA
        "\d0B4D",  # ; Virama # Mn       ORIYA SIGN VIRAMA
        "\d0BCD",  # ; Virama # Mn       TAMIL SIGN VIRAMA
        "\d0C4D",  # ; Virama # Mn       TELUGU SIGN VIRAMA
        "\d0CCD",  # ; Virama # Mn       KANNADA SIGN VIRAMA
        "\d0D4D",  # ; Virama # Mn       MALAYALAM SIGN VIRAMA
        "\d0DCA",  # ; Virama # Mn       SINHALA SIGN AL-LAKUNA
        "\d1B44",  # ; Virama # Mc       BALINESE ADEG ADEG
        "\dA8C4",  # ; Virama # Mn       SAURASHTRA SIGN VIRAMA
        "\dA9C0",  # ; Virama # Mc       JAVANESE PANGKON
        "\d11046",  # ; Virama # Mn       BRAHMI VIRAMA
        "\d110B9",  # ; Virama # Mn       KAITHI SIGN VIRAMA
        "\d111C0",  # ; Virama # Mc       SHARADA SIGN VIRAMA
        "\d11235",  # ; Virama # Mc       KHOJKI SIGN VIRAMA
        "\d1134D",  # ; Virama # Mc       GRANTHA SIGN VIRAMA
        "\d11442",  # ; Virama # Mn       NEWA SIGN VIRAMA
        "\d114C2",  # ; Virama # Mn       TIRHUTA SIGN VIRAMA
        "\d115BF",  # ; Virama # Mn       SIDDHAM SIGN VIRAMA
        "\d1163F",  # ; Virama # Mn       MODI SIGN VIRAMA
        "\d116B6",  # ; Virama # Mc       TAKRI SIGN VIRAMA
        "\d11C3F",  # ; Virama # Mn       BHAIKSUKI SIGN VIRAMA
        "\d0D3B",  # ; Pure_Killer # Mn       MALAYALAM SIGN VERTICAL BAR VIRAMA
        "\d0D3C",  # ; Pure_Killer # Mn       MALAYALAM SIGN CIRCULAR VIRAMA
        "\d0E3A",  # ; Pure_Killer # Mn       THAI CHARACTER PHINTHU
        "\d0E4E",  # ; Pure_Killer # Mn       THAI CHARACTER YAMAKKAN
        "\d0F84",  # ; Pure_Killer # Mn       TIBETAN MARK HALANTA
        "\d103A",  # ; Pure_Killer # Mn       MYANMAR SIGN ASAT
        "\d1714",  # ; Pure_Killer # Mn       TAGALOG SIGN VIRAMA
        "\d1734",  # ; Pure_Killer # Mn       HANUNOO SIGN PAMUDPOD
        "\d17D1",  # ; Pure_Killer # Mn       KHMER SIGN VIRIAM
        "\d1A7A",  # ; Pure_Killer # Mn       TAI THAM SIGN RA HAAM
        "\d1BAA",  # ; Pure_Killer # Mc       SUNDANESE SIGN PAMAAEH
        "\d1bf2","\d1bf3",  # ; Pure_Killer # Mc   [2] BATAK PANGOLAT..BATAK PANONGONAN
        "\dA806",  # ; Pure_Killer # Mn       SYLOTI NAGRI SIGN HASANTA
        "\dA953",  # ; Pure_Killer # Mc       REJANG VIRAMA
        "\dABED",  # ; Pure_Killer # Mn       MEETEI MAYEK APUN IYEK
        "\d11134",  # ; Pure_Killer # Mn       CHAKMA MAAYYAA
        "\d112EA",  # ; Pure_Killer # Mn       KHUDAWADI SIGN VIRAMA
        "\d1172B",  # ; Pure_Killer # Mn       AHOM SIGN KILLER
        "\d11A34",  # ; Pure_Killer # Mn       ZANABAZAR SQUARE SIGN VIRAMA
        "\d11D44",  # ; Pure_Killer # Mn       MASARAM GONDI SIGN HALANTA
        "\d1039",  # ; Invisible_Stacker # Mn       MYANMAR SIGN VIRAMA
        "\d17D2",  # ; Invisible_Stacker # Mn       KHMER SIGN COENG
        "\d1A60",  # ; Invisible_Stacker # Mn       TAI THAM SIGN SAKOT
        "\d1BAB",  # ; Invisible_Stacker # Mn       SUNDANESE SIGN VIRAMA
        "\dAAF6",  # ; Invisible_Stacker # Mn       MEETEI MAYEK VIRAMA
        "\d10A3F",  # ; Invisible_Stacker # Mn       KHAROSHTHI VIRAMA
        "\d11133",  # ; Invisible_Stacker # Mn       CHAKMA VIRAMA
        "\d11A47",  # ; Invisible_Stacker # Mn       ZANABAZAR SQUARE SUBJOINER
        "\d11A99",  # ; Invisible_Stacker # Mn       SOYOMBO SUBJOINER
        "\d11D45",  # ; Invisible_Stacker # Mn       MASARAM GONDI VIRAMA
        "\d0904","\d0905","\d0906","\d0907","\d0908","\d0909","\d090a","\d090b","\d090c","\d090d","\d090e","\d090f","\d0910","\d0911","\d0912","\d0913","\d0914",  # ; Vowel_Independent # Lo  [17] DEVANAGARI LETTER SHORT A..DEVANAGARI LETTER AU
        "\d0960","\d0961",  # ; Vowel_Independent # Lo   [2] DEVANAGARI LETTER VOCALIC RR..DEVANAGARI LETTER VOCALIC LL
        "\d0972","\d0973","\d0974","\d0975","\d0976","\d0977",  # ; Vowel_Independent # Lo   [6] DEVANAGARI LETTER CANDRA A..DEVANAGARI LETTER UUE
        "\d0985","\d0986","\d0987","\d0988","\d0989","\d098a","\d098b","\d098c",  # ; Vowel_Independent # Lo   [8] BENGALI LETTER A..BENGALI LETTER VOCALIC L
        "\d098f","\d0990",  # ; Vowel_Independent # Lo   [2] BENGALI LETTER E..BENGALI LETTER AI
        "\d0993","\d0994",  # ; Vowel_Independent # Lo   [2] BENGALI LETTER O..BENGALI LETTER AU
        "\d09e0","\d09e1",  # ; Vowel_Independent # Lo   [2] BENGALI LETTER VOCALIC RR..BENGALI LETTER VOCALIC LL
        "\d0a05","\d0a06","\d0a07","\d0a08","\d0a09","\d0a0a",  # ; Vowel_Independent # Lo   [6] GURMUKHI LETTER A..GURMUKHI LETTER UU
        "\d0a0f","\d0a10",  # ; Vowel_Independent # Lo   [2] GURMUKHI LETTER EE..GURMUKHI LETTER AI
        "\d0a13","\d0a14",  # ; Vowel_Independent # Lo   [2] GURMUKHI LETTER OO..GURMUKHI LETTER AU
        "\d0a85","\d0a86","\d0a87","\d0a88","\d0a89","\d0a8a","\d0a8b","\d0a8c","\d0a8d",  # ; Vowel_Independent # Lo   [9] GUJARATI LETTER A..GUJARATI VOWEL CANDRA E
        "\d0a8f","\d0a90","\d0a91",  # ; Vowel_Independent # Lo   [3] GUJARATI LETTER E..GUJARATI VOWEL CANDRA O
        "\d0a93","\d0a94",  # ; Vowel_Independent # Lo   [2] GUJARATI LETTER O..GUJARATI LETTER AU
        "\d0ae0","\d0ae1",  # ; Vowel_Independent # Lo   [2] GUJARATI LETTER VOCALIC RR..GUJARATI LETTER VOCALIC LL
        "\d0b05","\d0b06","\d0b07","\d0b08","\d0b09","\d0b0a","\d0b0b","\d0b0c",  # ; Vowel_Independent # Lo   [8] ORIYA LETTER A..ORIYA LETTER VOCALIC L
        "\d0b0f","\d0b10",  # ; Vowel_Independent # Lo   [2] ORIYA LETTER E..ORIYA LETTER AI
        "\d0b13","\d0b14",  # ; Vowel_Independent # Lo   [2] ORIYA LETTER O..ORIYA LETTER AU
        "\d0b60","\d0b61",  # ; Vowel_Independent # Lo   [2] ORIYA LETTER VOCALIC RR..ORIYA LETTER VOCALIC LL
        "\d0b85","\d0b86","\d0b87","\d0b88","\d0b89","\d0b8a",  # ; Vowel_Independent # Lo   [6] TAMIL LETTER A..TAMIL LETTER UU
        "\d0b8e","\d0b8f","\d0b90",  # ; Vowel_Independent # Lo   [3] TAMIL LETTER E..TAMIL LETTER AI
        "\d0b92","\d0b93","\d0b94",  # ; Vowel_Independent # Lo   [3] TAMIL LETTER O..TAMIL LETTER AU
        "\d0c05","\d0c06","\d0c07","\d0c08","\d0c09","\d0c0a","\d0c0b","\d0c0c",  # ; Vowel_Independent # Lo   [8] TELUGU LETTER A..TELUGU LETTER VOCALIC L
        "\d0c0e","\d0c0f","\d0c10",  # ; Vowel_Independent # Lo   [3] TELUGU LETTER E..TELUGU LETTER AI
        "\d0c12","\d0c13","\d0c14",  # ; Vowel_Independent # Lo   [3] TELUGU LETTER O..TELUGU LETTER AU
        "\d0c60","\d0c61",  # ; Vowel_Independent # Lo   [2] TELUGU LETTER VOCALIC RR..TELUGU LETTER VOCALIC LL
        "\d0c85","\d0c86","\d0c87","\d0c88","\d0c89","\d0c8a","\d0c8b","\d0c8c",  # ; Vowel_Independent # Lo   [8] KANNADA LETTER A..KANNADA LETTER VOCALIC L
        "\d0c8e","\d0c8f","\d0c90",  # ; Vowel_Independent # Lo   [3] KANNADA LETTER E..KANNADA LETTER AI
        "\d0c92","\d0c93","\d0c94",  # ; Vowel_Independent # Lo   [3] KANNADA LETTER O..KANNADA LETTER AU
        "\d0ce0","\d0ce1",  # ; Vowel_Independent # Lo   [2] KANNADA LETTER VOCALIC RR..KANNADA LETTER VOCALIC LL
        "\d0d05","\d0d06","\d0d07","\d0d08","\d0d09","\d0d0a","\d0d0b","\d0d0c",  # ; Vowel_Independent # Lo   [8] MALAYALAM LETTER A..MALAYALAM LETTER VOCALIC L
        "\d0d0e","\d0d0f","\d0d10",  # ; Vowel_Independent # Lo   [3] MALAYALAM LETTER E..MALAYALAM LETTER AI
        "\d0d12","\d0d13","\d0d14",  # ; Vowel_Independent # Lo   [3] MALAYALAM LETTER O..MALAYALAM LETTER AU
        "\d0d5f","\d0d60","\d0d61",  # ; Vowel_Independent # Lo   [3] MALAYALAM LETTER ARCHAIC II..MALAYALAM LETTER VOCALIC LL
        "\d0d85","\d0d86","\d0d87","\d0d88","\d0d89","\d0d8a","\d0d8b","\d0d8c","\d0d8d","\d0d8e","\d0d8f","\d0d90","\d0d91","\d0d92","\d0d93","\d0d94","\d0d95","\d0d96",  # ; Vowel_Independent # Lo  [18] SINHALA LETTER AYANNA..SINHALA LETTER AUYANNA
        "\d1021","\d1022","\d1023","\d1024","\d1025","\d1026","\d1027","\d1028","\d1029","\d102a",  # ; Vowel_Independent # Lo  [10] MYANMAR LETTER A..MYANMAR LETTER AU
        "\d1052","\d1053","\d1054","\d1055",  # ; Vowel_Independent # Lo   [4] MYANMAR LETTER VOCALIC R..MYANMAR LETTER VOCALIC LL
        "\d1700","\d1701","\d1702",  # ; Vowel_Independent # Lo   [3] TAGALOG LETTER A..TAGALOG LETTER U
        "\d1720","\d1721","\d1722",  # ; Vowel_Independent # Lo   [3] HANUNOO LETTER A..HANUNOO LETTER U
        "\d1740","\d1741","\d1742",  # ; Vowel_Independent # Lo   [3] BUHID LETTER A..BUHID LETTER U
        "\d1760","\d1761","\d1762",  # ; Vowel_Independent # Lo   [3] TAGBANWA LETTER A..TAGBANWA LETTER U
        "\d17a3","\d17a4","\d17a5","\d17a6","\d17a7","\d17a8","\d17a9","\d17aa","\d17ab","\d17ac","\d17ad","\d17ae","\d17af","\d17b0","\d17b1","\d17b2","\d17b3",  # ; Vowel_Independent # Lo  [17] KHMER INDEPENDENT VOWEL QAQ..KHMER INDEPENDENT VOWEL QAU
        "\d1a4d","\d1a4e","\d1a4f","\d1a50","\d1a51","\d1a52",  # ; Vowel_Independent # Lo   [6] TAI THAM LETTER I..TAI THAM LETTER OO
        "\d1b05","\d1b06","\d1b07","\d1b08","\d1b09","\d1b0a","\d1b0b","\d1b0c","\d1b0d","\d1b0e","\d1b0f","\d1b10","\d1b11","\d1b12",  # ; Vowel_Independent # Lo  [14] BALINESE LETTER AKARA..BALINESE LETTER OKARA TEDUNG
        "\d1b83","\d1b84","\d1b85","\d1b86","\d1b87","\d1b88","\d1b89",  # ; Vowel_Independent # Lo   [7] SUNDANESE LETTER A..SUNDANESE LETTER EU
        "\d1be4","\d1be5",  # ; Vowel_Independent # Lo   [2] BATAK LETTER I..BATAK LETTER U
        "\da800","\da801",  # ; Vowel_Independent # Lo   [2] SYLOTI NAGRI LETTER A..SYLOTI NAGRI LETTER I
        "\da803","\da804","\da805",  # ; Vowel_Independent # Lo   [3] SYLOTI NAGRI LETTER U..SYLOTI NAGRI LETTER O
        "\da882","\da883","\da884","\da885","\da886","\da887","\da888","\da889","\da88a","\da88b","\da88c","\da88d","\da88e","\da88f","\da890","\da891",  # ; Vowel_Independent # Lo  [16] SAURASHTRA LETTER A..SAURASHTRA LETTER AU
        "\da984","\da985","\da986","\da987","\da988",  # ; Vowel_Independent # Lo   [5] JAVANESE LETTER A..JAVANESE LETTER U
        "\da98c","\da98d","\da98e",  # ; Vowel_Independent # Lo   [3] JAVANESE LETTER E..JAVANESE LETTER O
        "\daa00","\daa01","\daa02","\daa03","\daa04","\daa05",  # ; Vowel_Independent # Lo   [6] CHAM LETTER A..CHAM LETTER O
        "\daae0","\daae1",  # ; Vowel_Independent # Lo   [2] MEETEI MAYEK LETTER E..MEETEI MAYEK LETTER O
        "\dabce","\dabcf",  # ; Vowel_Independent # Lo   [2] MEETEI MAYEK LETTER UN..MEETEI MAYEK LETTER I
        "\dABD1",  # ; Vowel_Independent # Lo       MEETEI MAYEK LETTER ATIYA
        "\d11005","\d11006","\d11007","\d11008","\d11009","\d1100a","\d1100b","\d1100c","\d1100d","\d1100e","\d1100f","\d11010","\d11011","\d11012",  # ; Vowel_Independent # Lo  [14] BRAHMI LETTER A..BRAHMI LETTER AU
        "\d11083","\d11084","\d11085","\d11086","\d11087","\d11088","\d11089","\d1108a","\d1108b","\d1108c",  # ; Vowel_Independent # Lo  [10] KAITHI LETTER A..KAITHI LETTER AU
        "\d11103","\d11104","\d11105","\d11106",  # ; Vowel_Independent # Lo   [4] CHAKMA LETTER AA..CHAKMA LETTER E
        "\d11183","\d11184","\d11185","\d11186","\d11187","\d11188","\d11189","\d1118a","\d1118b","\d1118c","\d1118d","\d1118e","\d1118f","\d11190",  # ; Vowel_Independent # Lo  [14] SHARADA LETTER A..SHARADA LETTER AU
        "\d11200","\d11201","\d11202","\d11203","\d11204","\d11205","\d11206","\d11207",  # ; Vowel_Independent # Lo   [8] KHOJKI LETTER A..KHOJKI LETTER AU
        "\d11280","\d11281","\d11282","\d11283",  # ; Vowel_Independent # Lo   [4] MULTANI LETTER A..MULTANI LETTER E
        "\d112b0","\d112b1","\d112b2","\d112b3","\d112b4","\d112b5","\d112b6","\d112b7","\d112b8","\d112b9",  # ; Vowel_Independent # Lo  [10] KHUDAWADI LETTER A..KHUDAWADI LETTER AU
        "\d11305","\d11306","\d11307","\d11308","\d11309","\d1130a","\d1130b","\d1130c",  # ; Vowel_Independent # Lo   [8] GRANTHA LETTER A..GRANTHA LETTER VOCALIC L
        "\d1130f","\d11310",  # ; Vowel_Independent # Lo   [2] GRANTHA LETTER EE..GRANTHA LETTER AI
        "\d11313","\d11314",  # ; Vowel_Independent # Lo   [2] GRANTHA LETTER OO..GRANTHA LETTER AU
        "\d11360","\d11361",  # ; Vowel_Independent # Lo   [2] GRANTHA LETTER VOCALIC RR..GRANTHA LETTER VOCALIC LL
        "\d11400","\d11401","\d11402","\d11403","\d11404","\d11405","\d11406","\d11407","\d11408","\d11409","\d1140a","\d1140b","\d1140c","\d1140d",  # ; Vowel_Independent # Lo  [14] NEWA LETTER A..NEWA LETTER AU
        "\d11481","\d11482","\d11483","\d11484","\d11485","\d11486","\d11487","\d11488","\d11489","\d1148a","\d1148b","\d1148c","\d1148d","\d1148e",  # ; Vowel_Independent # Lo  [14] TIRHUTA LETTER A..TIRHUTA LETTER AU
        "\d11580","\d11581","\d11582","\d11583","\d11584","\d11585","\d11586","\d11587","\d11588","\d11589","\d1158a","\d1158b","\d1158c","\d1158d",  # ; Vowel_Independent # Lo  [14] SIDDHAM LETTER A..SIDDHAM LETTER AU
        "\d115d8","\d115d9","\d115da","\d115db",  # ; Vowel_Independent # Lo   [4] SIDDHAM LETTER THREE-CIRCLE ALTERNATE I..SIDDHAM LETTER ALTERNATE U
        "\d11600","\d11601","\d11602","\d11603","\d11604","\d11605","\d11606","\d11607","\d11608","\d11609","\d1160a","\d1160b","\d1160c","\d1160d",  # ; Vowel_Independent # Lo  [14] MODI LETTER A..MODI LETTER AU
        "\d11680","\d11681","\d11682","\d11683","\d11684","\d11685","\d11686","\d11687","\d11688","\d11689",  # ; Vowel_Independent # Lo  [10] TAKRI LETTER A..TAKRI LETTER AU
        "\d11A00",  # ; Vowel_Independent # Lo       ZANABAZAR SQUARE LETTER A
        "\d11A50",  # ; Vowel_Independent # Lo       SOYOMBO LETTER A
        "\d11c00","\d11c01","\d11c02","\d11c03","\d11c04","\d11c05","\d11c06","\d11c07","\d11c08",  # ; Vowel_Independent # Lo   [9] BHAIKSUKI LETTER A..BHAIKSUKI LETTER VOCALIC L
        "\d11c0a","\d11c0b","\d11c0c","\d11c0d",  # ; Vowel_Independent # Lo   [4] BHAIKSUKI LETTER E..BHAIKSUKI LETTER AU
        "\d11d00","\d11d01","\d11d02","\d11d03","\d11d04","\d11d05","\d11d06",  # ; Vowel_Independent # Lo   [6] MASARAM GONDI LETTER A..MASARAM GONDI LETTER E
        "\d11d08","\d11d09",  # ; Vowel_Independent # Lo   [2] MASARAM GONDI LETTER AI..MASARAM GONDI LETTER O
        "\d11D0B",  # ; Vowel_Independent # Lo       MASARAM GONDI LETTER AU
        "\d093A",  # ; Vowel_Dependent # Mn       DEVANAGARI VOWEL SIGN OE
        "\d093B",  # ; Vowel_Dependent # Mc       DEVANAGARI VOWEL SIGN OOE
        "\d093e","\d093f","\d0940",  # ; Vowel_Dependent # Mc   [3] DEVANAGARI VOWEL SIGN AA..DEVANAGARI VOWEL SIGN II
        "\d0941","\d0942","\d0943","\d0944","\d0945","\d0946","\d0947","\d0948",  # ; Vowel_Dependent # Mn   [8] DEVANAGARI VOWEL SIGN U..DEVANAGARI VOWEL SIGN AI
        "\d0949","\d094a","\d094b","\d094c",  # ; Vowel_Dependent # Mc   [4] DEVANAGARI VOWEL SIGN CANDRA O..DEVANAGARI VOWEL SIGN AU
        "\d094e","\d094f",  # ; Vowel_Dependent # Mc   [2] DEVANAGARI VOWEL SIGN PRISHTHAMATRA E..DEVANAGARI VOWEL SIGN AW
        "\d0955","\d0956","\d0957",  # ; Vowel_Dependent # Mn   [3] DEVANAGARI VOWEL SIGN CANDRA LONG E..DEVANAGARI VOWEL SIGN UUE
        "\d0962","\d0963",  # ; Vowel_Dependent # Mn   [2] DEVANAGARI VOWEL SIGN VOCALIC L..DEVANAGARI VOWEL SIGN VOCALIC LL
        "\d09be","\d09bf","\d09c0",  # ; Vowel_Dependent # Mc   [3] BENGALI VOWEL SIGN AA..BENGALI VOWEL SIGN II
        "\d09c1","\d09c2","\d09c3","\d09c4",  # ; Vowel_Dependent # Mn   [4] BENGALI VOWEL SIGN U..BENGALI VOWEL SIGN VOCALIC RR
        "\d09c7","\d09c8",  # ; Vowel_Dependent # Mc   [2] BENGALI VOWEL SIGN E..BENGALI VOWEL SIGN AI
        "\d09cb","\d09cc",  # ; Vowel_Dependent # Mc   [2] BENGALI VOWEL SIGN O..BENGALI VOWEL SIGN AU
        "\d09D7",  # ; Vowel_Dependent # Mc       BENGALI AU LENGTH MARK
        "\d09e2","\d09e3",  # ; Vowel_Dependent # Mn   [2] BENGALI VOWEL SIGN VOCALIC L..BENGALI VOWEL SIGN VOCALIC LL
        "\d0a3e","\d0a3f","\d0a40",  # ; Vowel_Dependent # Mc   [3] GURMUKHI VOWEL SIGN AA..GURMUKHI VOWEL SIGN II
        "\d0a41","\d0a42",  # ; Vowel_Dependent # Mn   [2] GURMUKHI VOWEL SIGN U..GURMUKHI VOWEL SIGN UU
        "\d0a47","\d0a48",  # ; Vowel_Dependent # Mn   [2] GURMUKHI VOWEL SIGN EE..GURMUKHI VOWEL SIGN AI
        "\d0a4b","\d0a4c",  # ; Vowel_Dependent # Mn   [2] GURMUKHI VOWEL SIGN OO..GURMUKHI VOWEL SIGN AU
        "\d0abe","\d0abf","\d0ac0",  # ; Vowel_Dependent # Mc   [3] GUJARATI VOWEL SIGN AA..GUJARATI VOWEL SIGN II
        "\d0ac1","\d0ac2","\d0ac3","\d0ac4","\d0ac5",  # ; Vowel_Dependent # Mn   [5] GUJARATI VOWEL SIGN U..GUJARATI VOWEL SIGN CANDRA E
        "\d0ac7","\d0ac8",  # ; Vowel_Dependent # Mn   [2] GUJARATI VOWEL SIGN E..GUJARATI VOWEL SIGN AI
        "\d0AC9",  # ; Vowel_Dependent # Mc       GUJARATI VOWEL SIGN CANDRA O
        "\d0acb","\d0acc",  # ; Vowel_Dependent # Mc   [2] GUJARATI VOWEL SIGN O..GUJARATI VOWEL SIGN AU
        "\d0ae2","\d0ae3",  # ; Vowel_Dependent # Mn   [2] GUJARATI VOWEL SIGN VOCALIC L..GUJARATI VOWEL SIGN VOCALIC LL
        "\d0B3E",  # ; Vowel_Dependent # Mc       ORIYA VOWEL SIGN AA
        "\d0B3F",  # ; Vowel_Dependent # Mn       ORIYA VOWEL SIGN I
        "\d0B40",  # ; Vowel_Dependent # Mc       ORIYA VOWEL SIGN II
        "\d0b41","\d0b42","\d0b43","\d0b44",  # ; Vowel_Dependent # Mn   [4] ORIYA VOWEL SIGN U..ORIYA VOWEL SIGN VOCALIC RR
        "\d0b47","\d0b48",  # ; Vowel_Dependent # Mc   [2] ORIYA VOWEL SIGN E..ORIYA VOWEL SIGN AI
        "\d0b4b","\d0b4c",  # ; Vowel_Dependent # Mc   [2] ORIYA VOWEL SIGN O..ORIYA VOWEL SIGN AU
        "\d0B56",  # ; Vowel_Dependent # Mn       ORIYA AI LENGTH MARK
        "\d0B57",  # ; Vowel_Dependent # Mc       ORIYA AU LENGTH MARK
        "\d0b62","\d0b63",  # ; Vowel_Dependent # Mn   [2] ORIYA VOWEL SIGN VOCALIC L..ORIYA VOWEL SIGN VOCALIC LL
        "\d0bbe","\d0bbf",  # ; Vowel_Dependent # Mc   [2] TAMIL VOWEL SIGN AA..TAMIL VOWEL SIGN I
        "\d0BC0",  # ; Vowel_Dependent # Mn       TAMIL VOWEL SIGN II
        "\d0bc1","\d0bc2",  # ; Vowel_Dependent # Mc   [2] TAMIL VOWEL SIGN U..TAMIL VOWEL SIGN UU
        "\d0bc6","\d0bc7","\d0bc8",  # ; Vowel_Dependent # Mc   [3] TAMIL VOWEL SIGN E..TAMIL VOWEL SIGN AI
        "\d0bca","\d0bcb","\d0bcc",  # ; Vowel_Dependent # Mc   [3] TAMIL VOWEL SIGN O..TAMIL VOWEL SIGN AU
        "\d0BD7",  # ; Vowel_Dependent # Mc       TAMIL AU LENGTH MARK
        "\d0c3e","\d0c3f","\d0c40",  # ; Vowel_Dependent # Mn   [3] TELUGU VOWEL SIGN AA..TELUGU VOWEL SIGN II
        "\d0c41","\d0c42","\d0c43","\d0c44",  # ; Vowel_Dependent # Mc   [4] TELUGU VOWEL SIGN U..TELUGU VOWEL SIGN VOCALIC RR
        "\d0c46","\d0c47","\d0c48",  # ; Vowel_Dependent # Mn   [3] TELUGU VOWEL SIGN E..TELUGU VOWEL SIGN AI
        "\d0c4a","\d0c4b","\d0c4c",  # ; Vowel_Dependent # Mn   [3] TELUGU VOWEL SIGN O..TELUGU VOWEL SIGN AU
        "\d0c55","\d0c56",  # ; Vowel_Dependent # Mn   [2] TELUGU LENGTH MARK..TELUGU AI LENGTH MARK
        "\d0c62","\d0c63",  # ; Vowel_Dependent # Mn   [2] TELUGU VOWEL SIGN VOCALIC L..TELUGU VOWEL SIGN VOCALIC LL
        "\d0CBE",  # ; Vowel_Dependent # Mc       KANNADA VOWEL SIGN AA
        "\d0CBF",  # ; Vowel_Dependent # Mn       KANNADA VOWEL SIGN I
        "\d0cc0","\d0cc1","\d0cc2","\d0cc3","\d0cc4",  # ; Vowel_Dependent # Mc   [5] KANNADA VOWEL SIGN II..KANNADA VOWEL SIGN VOCALIC RR
        "\d0CC6",  # ; Vowel_Dependent # Mn       KANNADA VOWEL SIGN E
        "\d0cc7","\d0cc8",  # ; Vowel_Dependent # Mc   [2] KANNADA VOWEL SIGN EE..KANNADA VOWEL SIGN AI
        "\d0cca","\d0ccb",  # ; Vowel_Dependent # Mc   [2] KANNADA VOWEL SIGN O..KANNADA VOWEL SIGN OO
        "\d0CCC",  # ; Vowel_Dependent # Mn       KANNADA VOWEL SIGN AU
        "\d0cd5","\d0cd6",  # ; Vowel_Dependent # Mc   [2] KANNADA LENGTH MARK..KANNADA AI LENGTH MARK
        "\d0ce2","\d0ce3",  # ; Vowel_Dependent # Mn   [2] KANNADA VOWEL SIGN VOCALIC L..KANNADA VOWEL SIGN VOCALIC LL
        "\d0d3e","\d0d3f","\d0d40",  # ; Vowel_Dependent # Mc   [3] MALAYALAM VOWEL SIGN AA..MALAYALAM VOWEL SIGN II
        "\d0d41","\d0d42","\d0d43","\d0d44",  # ; Vowel_Dependent # Mn   [4] MALAYALAM VOWEL SIGN U..MALAYALAM VOWEL SIGN VOCALIC RR
        "\d0d46","\d0d47","\d0d48",  # ; Vowel_Dependent # Mc   [3] MALAYALAM VOWEL SIGN E..MALAYALAM VOWEL SIGN AI
        "\d0d4a","\d0d4b","\d0d4c",  # ; Vowel_Dependent # Mc   [3] MALAYALAM VOWEL SIGN O..MALAYALAM VOWEL SIGN AU
        "\d0D57",  # ; Vowel_Dependent # Mc       MALAYALAM AU LENGTH MARK
        "\d0d62","\d0d63",  # ; Vowel_Dependent # Mn   [2] MALAYALAM VOWEL SIGN VOCALIC L..MALAYALAM VOWEL SIGN VOCALIC LL
        "\d0dcf","\d0dd0","\d0dd1",  # ; Vowel_Dependent # Mc   [3] SINHALA VOWEL SIGN AELA-PILLA..SINHALA VOWEL SIGN DIGA AEDA-PILLA
        "\d0dd2","\d0dd3","\d0dd4",  # ; Vowel_Dependent # Mn   [3] SINHALA VOWEL SIGN KETTI IS-PILLA..SINHALA VOWEL SIGN KETTI PAA-PILLA
        "\d0DD6",  # ; Vowel_Dependent # Mn       SINHALA VOWEL SIGN DIGA PAA-PILLA
        "\d0dd8","\d0dd9","\d0dda","\d0ddb","\d0ddc","\d0ddd","\d0dde","\d0ddf",  # ; Vowel_Dependent # Mc   [8] SINHALA VOWEL SIGN GAETTA-PILLA..SINHALA VOWEL SIGN GAYANUKITTA
        "\d0df2","\d0df3",  # ; Vowel_Dependent # Mc   [2] SINHALA VOWEL SIGN DIGA GAETTA-PILLA..SINHALA VOWEL SIGN DIGA GAYANUKITTA
        "\d0E30",  # ; Vowel_Dependent # Lo       THAI CHARACTER SARA A
        "\d0E31",  # ; Vowel_Dependent # Mn       THAI CHARACTER MAI HAN-AKAT
        "\d0e32","\d0e33",  # ; Vowel_Dependent # Lo   [2] THAI CHARACTER SARA AA..THAI CHARACTER SARA AM
        "\d0e34","\d0e35","\d0e36","\d0e37","\d0e38","\d0e39",  # ; Vowel_Dependent # Mn   [6] THAI CHARACTER SARA I..THAI CHARACTER SARA UU
        "\d0e40","\d0e41","\d0e42","\d0e43","\d0e44","\d0e45",  # ; Vowel_Dependent # Lo   [6] THAI CHARACTER SARA E..THAI CHARACTER LAKKHANGYAO
        "\d0E47",  # ; Vowel_Dependent # Mn       THAI CHARACTER MAITAIKHU
        "\d0EB0",  # ; Vowel_Dependent # Lo       LAO VOWEL SIGN A
        "\d0EB1",  # ; Vowel_Dependent # Mn       LAO VOWEL SIGN MAI KAN
        "\d0eb2","\d0eb3",  # ; Vowel_Dependent # Lo   [2] LAO VOWEL SIGN AA..LAO VOWEL SIGN AM
        "\d0eb4","\d0eb5","\d0eb6","\d0eb7","\d0eb8","\d0eb9",  # ; Vowel_Dependent # Mn   [6] LAO VOWEL SIGN I..LAO VOWEL SIGN UU
        "\d0EBB",  # ; Vowel_Dependent # Mn       LAO VOWEL SIGN MAI KON
        "\d0ec0","\d0ec1","\d0ec2","\d0ec3","\d0ec4",  # ; Vowel_Dependent # Lo   [5] LAO VOWEL SIGN E..LAO VOWEL SIGN AI
        "\d0f71","\d0f72","\d0f73","\d0f74","\d0f75","\d0f76","\d0f77","\d0f78","\d0f79","\d0f7a","\d0f7b","\d0f7c","\d0f7d",  # ; Vowel_Dependent # Mn  [13] TIBETAN VOWEL SIGN AA..TIBETAN VOWEL SIGN OO
        "\d0f80","\d0f81",  # ; Vowel_Dependent # Mn   [2] TIBETAN VOWEL SIGN REVERSED I..TIBETAN VOWEL SIGN REVERSED II
        "\d102b","\d102c",  # ; Vowel_Dependent # Mc   [2] MYANMAR VOWEL SIGN TALL AA..MYANMAR VOWEL SIGN AA
        "\d102d","\d102e","\d102f","\d1030",  # ; Vowel_Dependent # Mn   [4] MYANMAR VOWEL SIGN I..MYANMAR VOWEL SIGN UU
        "\d1031",  # ; Vowel_Dependent # Mc       MYANMAR VOWEL SIGN E
        "\d1032","\d1033","\d1034","\d1035",  # ; Vowel_Dependent # Mn   [4] MYANMAR VOWEL SIGN AI..MYANMAR VOWEL SIGN E ABOVE
        "\d1056","\d1057",  # ; Vowel_Dependent # Mc   [2] MYANMAR VOWEL SIGN VOCALIC R..MYANMAR VOWEL SIGN VOCALIC RR
        "\d1058","\d1059",  # ; Vowel_Dependent # Mn   [2] MYANMAR VOWEL SIGN VOCALIC L..MYANMAR VOWEL SIGN VOCALIC LL
        "\d1062",  # ; Vowel_Dependent # Mc       MYANMAR VOWEL SIGN SGAW KAREN EU
        "\d1067","\d1068",  # ; Vowel_Dependent # Mc   [2] MYANMAR VOWEL SIGN WESTERN PWO KAREN EU..MYANMAR VOWEL SIGN WESTERN PWO KAREN UE
        "\d1071","\d1072","\d1073","\d1074",  # ; Vowel_Dependent # Mn   [4] MYANMAR VOWEL SIGN GEBA KAREN I..MYANMAR VOWEL SIGN KAYAH EE
        "\d1083","\d1084",  # ; Vowel_Dependent # Mc   [2] MYANMAR VOWEL SIGN SHAN AA..MYANMAR VOWEL SIGN SHAN E
        "\d1085","\d1086",  # ; Vowel_Dependent # Mn   [2] MYANMAR VOWEL SIGN SHAN E ABOVE..MYANMAR VOWEL SIGN SHAN FINAL Y
        "\d109C",  # ; Vowel_Dependent # Mc       MYANMAR VOWEL SIGN AITON A
        "\d109D",  # ; Vowel_Dependent # Mn       MYANMAR VOWEL SIGN AITON AI
        "\d1712","\d1713",  # ; Vowel_Dependent # Mn   [2] TAGALOG VOWEL SIGN I..TAGALOG VOWEL SIGN U
        "\d1732","\d1733",  # ; Vowel_Dependent # Mn   [2] HANUNOO VOWEL SIGN I..HANUNOO VOWEL SIGN U
        "\d1752","\d1753",  # ; Vowel_Dependent # Mn   [2] BUHID VOWEL SIGN I..BUHID VOWEL SIGN U
        "\d1772","\d1773",  # ; Vowel_Dependent # Mn   [2] TAGBANWA VOWEL SIGN I..TAGBANWA VOWEL SIGN U
        "\d17B6",  # ; Vowel_Dependent # Mc       KHMER VOWEL SIGN AA
        "\d17b7","\d17b8","\d17b9","\d17ba","\d17bb","\d17bc","\d17bd",  # ; Vowel_Dependent # Mn   [7] KHMER VOWEL SIGN I..KHMER VOWEL SIGN UA
        "\d17be","\d17bf","\d17c0","\d17c1","\d17c2","\d17c3","\d17c4","\d17c5",  # ; Vowel_Dependent # Mc   [8] KHMER VOWEL SIGN OE..KHMER VOWEL SIGN AU
        "\d17C8",  # ; Vowel_Dependent # Mc       KHMER SIGN YUUKALEAPINTU
        "\d1920","\d1921","\d1922",  # ; Vowel_Dependent # Mn   [3] LIMBU VOWEL SIGN A..LIMBU VOWEL SIGN U
        "\d1923","\d1924","\d1925","\d1926",  # ; Vowel_Dependent # Mc   [4] LIMBU VOWEL SIGN EE..LIMBU VOWEL SIGN AU
        "\d1927","\d1928",  # ; Vowel_Dependent # Mn   [2] LIMBU VOWEL SIGN E..LIMBU VOWEL SIGN O
        "\d193A",  # ; Vowel_Dependent # Mn       LIMBU SIGN KEMPHRENG
        "\d19b0","\d19b1","\d19b2","\d19b3","\d19b4","\d19b5","\d19b6","\d19b7","\d19b8","\d19b9","\d19ba","\d19bb","\d19bc","\d19bd","\d19be","\d19bf","\d19c0",  # ; Vowel_Dependent # Lo  [17] NEW TAI LUE VOWEL SIGN VOWEL SHORTENER..NEW TAI LUE VOWEL SIGN IY
        "\d1a17","\d1a18",  # ; Vowel_Dependent # Mn   [2] BUGINESE VOWEL SIGN I..BUGINESE VOWEL SIGN U
        "\d1a19","\d1a1a",  # ; Vowel_Dependent # Mc   [2] BUGINESE VOWEL SIGN E..BUGINESE VOWEL SIGN O
        "\d1A1B",  # ; Vowel_Dependent # Mn       BUGINESE VOWEL SIGN AE
        "\d1A61",  # ; Vowel_Dependent # Mc       TAI THAM VOWEL SIGN A
        "\d1A62",  # ; Vowel_Dependent # Mn       TAI THAM VOWEL SIGN MAI SAT
        "\d1a63","\d1a64",  # ; Vowel_Dependent # Mc   [2] TAI THAM VOWEL SIGN AA..TAI THAM VOWEL SIGN TALL AA
        "\d1a65","\d1a66","\d1a67","\d1a68","\d1a69","\d1a6a","\d1a6b","\d1a6c",  # ; Vowel_Dependent # Mn   [8] TAI THAM VOWEL SIGN I..TAI THAM VOWEL SIGN OA BELOW
        "\d1a6d","\d1a6e","\d1a6f","\d1a70","\d1a71","\d1a72",  # ; Vowel_Dependent # Mc   [6] TAI THAM VOWEL SIGN OY..TAI THAM VOWEL SIGN THAM AI
        "\d1A73",  # ; Vowel_Dependent # Mn       TAI THAM VOWEL SIGN OA ABOVE
        "\d1B35",  # ; Vowel_Dependent # Mc       BALINESE VOWEL SIGN TEDUNG
        "\d1b36","\d1b37","\d1b38","\d1b39","\d1b3a",  # ; Vowel_Dependent # Mn   [5] BALINESE VOWEL SIGN ULU..BALINESE VOWEL SIGN RA REPA
        "\d1B3B",  # ; Vowel_Dependent # Mc       BALINESE VOWEL SIGN RA REPA TEDUNG
        "\d1B3C",  # ; Vowel_Dependent # Mn       BALINESE VOWEL SIGN LA LENGA
        "\d1b3d","\d1b3e","\d1b3f","\d1b40","\d1b41",  # ; Vowel_Dependent # Mc   [5] BALINESE VOWEL SIGN LA LENGA TEDUNG..BALINESE VOWEL SIGN TALING REPA TEDUNG
        "\d1B42",  # ; Vowel_Dependent # Mn       BALINESE VOWEL SIGN PEPET
        "\d1B43",  # ; Vowel_Dependent # Mc       BALINESE VOWEL SIGN PEPET TEDUNG
        "\d1ba4","\d1ba5",  # ; Vowel_Dependent # Mn   [2] SUNDANESE VOWEL SIGN PANGHULU..SUNDANESE VOWEL SIGN PANYUKU
        "\d1ba6","\d1ba7",  # ; Vowel_Dependent # Mc   [2] SUNDANESE VOWEL SIGN PANAELAENG..SUNDANESE VOWEL SIGN PANOLONG
        "\d1ba8","\d1ba9",  # ; Vowel_Dependent # Mn   [2] SUNDANESE VOWEL SIGN PAMEPET..SUNDANESE VOWEL SIGN PANEULEUNG
        "\d1BE7",  # ; Vowel_Dependent # Mc       BATAK VOWEL SIGN E
        "\d1be8","\d1be9",  # ; Vowel_Dependent # Mn   [2] BATAK VOWEL SIGN PAKPAK E..BATAK VOWEL SIGN EE
        "\d1bea","\d1beb","\d1bec",  # ; Vowel_Dependent # Mc   [3] BATAK VOWEL SIGN I..BATAK VOWEL SIGN O
        "\d1BED",  # ; Vowel_Dependent # Mn       BATAK VOWEL SIGN KARO O
        "\d1BEE",  # ; Vowel_Dependent # Mc       BATAK VOWEL SIGN U
        "\d1BEF",  # ; Vowel_Dependent # Mn       BATAK VOWEL SIGN U FOR SIMALUNGUN SA
        "\d1c26","\d1c27","\d1c28","\d1c29","\d1c2a","\d1c2b",  # ; Vowel_Dependent # Mc   [6] LEPCHA VOWEL SIGN AA..LEPCHA VOWEL SIGN UU
        "\d1C2C",  # ; Vowel_Dependent # Mn       LEPCHA VOWEL SIGN E
        "\da823","\da824",  # ; Vowel_Dependent # Mc   [2] SYLOTI NAGRI VOWEL SIGN A..SYLOTI NAGRI VOWEL SIGN I
        "\da825","\da826",  # ; Vowel_Dependent # Mn   [2] SYLOTI NAGRI VOWEL SIGN U..SYLOTI NAGRI VOWEL SIGN E
        "\dA827",  # ; Vowel_Dependent # Mc       SYLOTI NAGRI VOWEL SIGN OO
        "\da8b5","\da8b6","\da8b7","\da8b8","\da8b9","\da8ba","\da8bb","\da8bc","\da8bd","\da8be","\da8bf","\da8c0","\da8c1","\da8c2","\da8c3",  # ; Vowel_Dependent # Mc  [15] SAURASHTRA VOWEL SIGN AA..SAURASHTRA VOWEL SIGN AU
        "\da947","\da948","\da949","\da94a","\da94b","\da94c","\da94d","\da94e",  # ; Vowel_Dependent # Mn   [8] REJANG VOWEL SIGN I..REJANG VOWEL SIGN EA
        "\da9b4","\da9b5",  # ; Vowel_Dependent # Mc   [2] JAVANESE VOWEL SIGN TARUNG..JAVANESE VOWEL SIGN TOLONG
        "\da9b6","\da9b7","\da9b8","\da9b9",  # ; Vowel_Dependent # Mn   [4] JAVANESE VOWEL SIGN WULU..JAVANESE VOWEL SIGN SUKU MENDUT
        "\da9ba","\da9bb",  # ; Vowel_Dependent # Mc   [2] JAVANESE VOWEL SIGN TALING..JAVANESE VOWEL SIGN DIRGA MURE
        "\dA9BC",  # ; Vowel_Dependent # Mn       JAVANESE VOWEL SIGN PEPET
        "\dA9E5",  # ; Vowel_Dependent # Mn       MYANMAR SIGN SHAN SAW
        "\daa29","\daa2a","\daa2b","\daa2c","\daa2d","\daa2e",  # ; Vowel_Dependent # Mn   [6] CHAM VOWEL SIGN AA..CHAM VOWEL SIGN OE
        "\daa2f","\daa30",  # ; Vowel_Dependent # Mc   [2] CHAM VOWEL SIGN O..CHAM VOWEL SIGN AI
        "\daa31","\daa32",  # ; Vowel_Dependent # Mn   [2] CHAM VOWEL SIGN AU..CHAM VOWEL SIGN UE
        "\dAAB0",  # ; Vowel_Dependent # Mn       TAI VIET MAI KANG
        "\dAAB1",  # ; Vowel_Dependent # Lo       TAI VIET VOWEL AA
        "\daab2","\daab3","\daab4",  # ; Vowel_Dependent # Mn   [3] TAI VIET VOWEL I..TAI VIET VOWEL U
        "\daab5","\daab6",  # ; Vowel_Dependent # Lo   [2] TAI VIET VOWEL E..TAI VIET VOWEL O
        "\daab7","\daab8",  # ; Vowel_Dependent # Mn   [2] TAI VIET MAI KHIT..TAI VIET VOWEL IA
        "\daab9","\daaba","\daabb","\daabc","\daabd",  # ; Vowel_Dependent # Lo   [5] TAI VIET VOWEL UEA..TAI VIET VOWEL AN
        "\dAABE",  # ; Vowel_Dependent # Mn       TAI VIET VOWEL AM
        "\dAAEB",  # ; Vowel_Dependent # Mc       MEETEI MAYEK VOWEL SIGN II
        "\daaec","\daaed",  # ; Vowel_Dependent # Mn   [2] MEETEI MAYEK VOWEL SIGN UU..MEETEI MAYEK VOWEL SIGN AAI
        "\daaee","\daaef",  # ; Vowel_Dependent # Mc   [2] MEETEI MAYEK VOWEL SIGN AU..MEETEI MAYEK VOWEL SIGN AAU
        "\dabe3","\dabe4",  # ; Vowel_Dependent # Mc   [2] MEETEI MAYEK VOWEL SIGN ONAP..MEETEI MAYEK VOWEL SIGN INAP
        "\dABE5",  # ; Vowel_Dependent # Mn       MEETEI MAYEK VOWEL SIGN ANAP
        "\dabe6","\dabe7",  # ; Vowel_Dependent # Mc   [2] MEETEI MAYEK VOWEL SIGN YENAP..MEETEI MAYEK VOWEL SIGN SOUNAP
        "\dABE8",  # ; Vowel_Dependent # Mn       MEETEI MAYEK VOWEL SIGN UNAP
        "\dabe9","\dabea",  # ; Vowel_Dependent # Mc   [2] MEETEI MAYEK VOWEL SIGN CHEINAP..MEETEI MAYEK VOWEL SIGN NUNG
        "\d10a01","\d10a02","\d10a03",  # ; Vowel_Dependent # Mn   [3] KHAROSHTHI VOWEL SIGN I..KHAROSHTHI VOWEL SIGN VOCALIC R
        "\d10a05","\d10a06",  # ; Vowel_Dependent # Mn   [2] KHAROSHTHI VOWEL SIGN E..KHAROSHTHI VOWEL SIGN O
        "\d10a0c","\d10a0d",  # ; Vowel_Dependent # Mn   [2] KHAROSHTHI VOWEL LENGTH MARK..KHAROSHTHI SIGN DOUBLE RING BELOW
        "\d11038","\d11039","\d1103a","\d1103b","\d1103c","\d1103d","\d1103e","\d1103f","\d11040","\d11041","\d11042","\d11043","\d11044","\d11045",  # ; Vowel_Dependent # Mn  [14] BRAHMI VOWEL SIGN AA..BRAHMI VOWEL SIGN AU
        "\d110b0","\d110b1","\d110b2",  # ; Vowel_Dependent # Mc   [3] KAITHI VOWEL SIGN AA..KAITHI VOWEL SIGN II
        "\d110b3","\d110b4","\d110b5","\d110b6",  # ; Vowel_Dependent # Mn   [4] KAITHI VOWEL SIGN U..KAITHI VOWEL SIGN AI
        "\d110b7","\d110b8",  # ; Vowel_Dependent # Mc   [2] KAITHI VOWEL SIGN O..KAITHI VOWEL SIGN AU
        "\d11127","\d11128","\d11129","\d1112a","\d1112b",  # ; Vowel_Dependent # Mn   [5] CHAKMA VOWEL SIGN A..CHAKMA VOWEL SIGN UU
        "\d1112C",  # ; Vowel_Dependent # Mc       CHAKMA VOWEL SIGN E
        "\d1112d","\d1112e","\d1112f","\d11130","\d11131","\d11132",  # ; Vowel_Dependent # Mn   [6] CHAKMA VOWEL SIGN AI..CHAKMA AU MARK
        "\d111b3","\d111b4","\d111b5",  # ; Vowel_Dependent # Mc   [3] SHARADA VOWEL SIGN AA..SHARADA VOWEL SIGN II
        "\d111b6","\d111b7","\d111b8","\d111b9","\d111ba","\d111bb","\d111bc","\d111bd","\d111be",  # ; Vowel_Dependent # Mn   [9] SHARADA VOWEL SIGN U..SHARADA VOWEL SIGN O
        "\d111BF",  # ; Vowel_Dependent # Mc       SHARADA VOWEL SIGN AU
        "\d111cb","\d111cc",  # ; Vowel_Dependent # Mn   [2] SHARADA VOWEL MODIFIER MARK..SHARADA EXTRA SHORT VOWEL MARK
        "\d1122c","\d1122d","\d1122e",  # ; Vowel_Dependent # Mc   [3] KHOJKI VOWEL SIGN AA..KHOJKI VOWEL SIGN II
        "\d1122f","\d11230","\d11231",  # ; Vowel_Dependent # Mn   [3] KHOJKI VOWEL SIGN U..KHOJKI VOWEL SIGN AI
        "\d11232","\d11233",  # ; Vowel_Dependent # Mc   [2] KHOJKI VOWEL SIGN O..KHOJKI VOWEL SIGN AU
        "\d112e0","\d112e1","\d112e2",  # ; Vowel_Dependent # Mc   [3] KHUDAWADI VOWEL SIGN AA..KHUDAWADI VOWEL SIGN II
        "\d112e3","\d112e4","\d112e5","\d112e6","\d112e7","\d112e8",  # ; Vowel_Dependent # Mn   [6] KHUDAWADI VOWEL SIGN U..KHUDAWADI VOWEL SIGN AU
        "\d1133e","\d1133f",  # ; Vowel_Dependent # Mc   [2] GRANTHA VOWEL SIGN AA..GRANTHA VOWEL SIGN I
        "\d11340",  # ; Vowel_Dependent # Mn       GRANTHA VOWEL SIGN II
        "\d11341","\d11342","\d11343","\d11344",  # ; Vowel_Dependent # Mc   [4] GRANTHA VOWEL SIGN U..GRANTHA VOWEL SIGN VOCALIC RR
        "\d11347","\d11348",  # ; Vowel_Dependent # Mc   [2] GRANTHA VOWEL SIGN EE..GRANTHA VOWEL SIGN AI
        "\d1134b","\d1134c",  # ; Vowel_Dependent # Mc   [2] GRANTHA VOWEL SIGN OO..GRANTHA VOWEL SIGN AU
        "\d11357",  # ; Vowel_Dependent # Mc       GRANTHA AU LENGTH MARK
        "\d11362","\d11363",  # ; Vowel_Dependent # Mc   [2] GRANTHA VOWEL SIGN VOCALIC L..GRANTHA VOWEL SIGN VOCALIC LL
        "\d11435","\d11436","\d11437",  # ; Vowel_Dependent # Mc   [3] NEWA VOWEL SIGN AA..NEWA VOWEL SIGN II
        "\d11438","\d11439","\d1143a","\d1143b","\d1143c","\d1143d","\d1143e","\d1143f",  # ; Vowel_Dependent # Mn   [8] NEWA VOWEL SIGN U..NEWA VOWEL SIGN AI
        "\d11440","\d11441",  # ; Vowel_Dependent # Mc   [2] NEWA VOWEL SIGN O..NEWA VOWEL SIGN AU
        "\d114b0","\d114b1","\d114b2",  # ; Vowel_Dependent # Mc   [3] TIRHUTA VOWEL SIGN AA..TIRHUTA VOWEL SIGN II
        "\d114b3","\d114b4","\d114b5","\d114b6","\d114b7","\d114b8",  # ; Vowel_Dependent # Mn   [6] TIRHUTA VOWEL SIGN U..TIRHUTA VOWEL SIGN VOCALIC LL
        "\d114B9",  # ; Vowel_Dependent # Mc       TIRHUTA VOWEL SIGN E
        "\d114BA",  # ; Vowel_Dependent # Mn       TIRHUTA VOWEL SIGN SHORT E
        "\d114bb","\d114bc","\d114bd","\d114be",  # ; Vowel_Dependent # Mc   [4] TIRHUTA VOWEL SIGN AI..TIRHUTA VOWEL SIGN AU
        "\d115af","\d115b0","\d115b1",  # ; Vowel_Dependent # Mc   [3] SIDDHAM VOWEL SIGN AA..SIDDHAM VOWEL SIGN II
        "\d115b2","\d115b3","\d115b4","\d115b5",  # ; Vowel_Dependent # Mn   [4] SIDDHAM VOWEL SIGN U..SIDDHAM VOWEL SIGN VOCALIC RR
        "\d115b8","\d115b9","\d115ba","\d115bb",  # ; Vowel_Dependent # Mc   [4] SIDDHAM VOWEL SIGN E..SIDDHAM VOWEL SIGN AU
        "\d115dc","\d115dd",  # ; Vowel_Dependent # Mn   [2] SIDDHAM VOWEL SIGN ALTERNATE U..SIDDHAM VOWEL SIGN ALTERNATE UU
        "\d11630","\d11631","\d11632",  # ; Vowel_Dependent # Mc   [3] MODI VOWEL SIGN AA..MODI VOWEL SIGN II
        "\d11633","\d11634","\d11635","\d11636","\d11637","\d11638","\d11639","\d1163a",  # ; Vowel_Dependent # Mn   [8] MODI VOWEL SIGN U..MODI VOWEL SIGN AI
        "\d1163b","\d1163c",  # ; Vowel_Dependent # Mc   [2] MODI VOWEL SIGN O..MODI VOWEL SIGN AU
        "\d11640",  # ; Vowel_Dependent # Mn       MODI SIGN ARDHACANDRA
        "\d116AD",  # ; Vowel_Dependent # Mn       TAKRI VOWEL SIGN AA
        "\d116ae","\d116af",  # ; Vowel_Dependent # Mc   [2] TAKRI VOWEL SIGN I..TAKRI VOWEL SIGN II
        "\d116b0","\d116b1","\d116b2","\d116b3","\d116b4","\d116b5",  # ; Vowel_Dependent # Mn   [6] TAKRI VOWEL SIGN U..TAKRI VOWEL SIGN AU
        "\d11720","\d11721",  # ; Vowel_Dependent # Mc   [2] AHOM VOWEL SIGN A..AHOM VOWEL SIGN AA
        "\d11722","\d11723","\d11724","\d11725",  # ; Vowel_Dependent # Mn   [4] AHOM VOWEL SIGN I..AHOM VOWEL SIGN UU
        "\d11726",  # ; Vowel_Dependent # Mc       AHOM VOWEL SIGN E
        "\d11727","\d11728","\d11729","\d1172a",  # ; Vowel_Dependent # Mn   [4] AHOM VOWEL SIGN AW..AHOM VOWEL SIGN AM
        "\d11a01","\d11a02","\d11a03","\d11a04","\d11a05","\d11a06",  # ; Vowel_Dependent # Mn   [6] ZANABAZAR SQUARE VOWEL SIGN I..ZANABAZAR SQUARE VOWEL SIGN O
        "\d11a07","\d11a08",  # ; Vowel_Dependent # Mc   [2] ZANABAZAR SQUARE VOWEL SIGN AI..ZANABAZAR SQUARE VOWEL SIGN AU
        "\d11a09","\d11a0a",  # ; Vowel_Dependent # Mn   [2] ZANABAZAR SQUARE VOWEL SIGN REVERSED I..ZANABAZAR SQUARE VOWEL LENGTH MARK
        "\d11a51","\d11a52","\d11a53","\d11a54","\d11a55","\d11a56",  # ; Vowel_Dependent # Mn   [6] SOYOMBO VOWEL SIGN I..SOYOMBO VOWEL SIGN OE
        "\d11a57","\d11a58",  # ; Vowel_Dependent # Mc   [2] SOYOMBO VOWEL SIGN AI..SOYOMBO VOWEL SIGN AU
        "\d11a59","\d11a5a","\d11a5b",  # ; Vowel_Dependent # Mn   [3] SOYOMBO VOWEL SIGN VOCALIC R..SOYOMBO VOWEL LENGTH MARK
        "\d11C2F",  # ; Vowel_Dependent # Mc       BHAIKSUKI VOWEL SIGN AA
        "\d11c30","\d11c31","\d11c32","\d11c33","\d11c34","\d11c35","\d11c36",  # ; Vowel_Dependent # Mn   [7] BHAIKSUKI VOWEL SIGN I..BHAIKSUKI VOWEL SIGN VOCALIC L
        "\d11c38","\d11c39","\d11c3a","\d11c3b",  # ; Vowel_Dependent # Mn   [4] BHAIKSUKI VOWEL SIGN E..BHAIKSUKI VOWEL SIGN AU
        "\d11CB0",  # ; Vowel_Dependent # Mn       MARCHEN VOWEL SIGN AA
        "\d11CB1",  # ; Vowel_Dependent # Mc       MARCHEN VOWEL SIGN I
        "\d11cb2","\d11cb3",  # ; Vowel_Dependent # Mn   [2] MARCHEN VOWEL SIGN U..MARCHEN VOWEL SIGN E
        "\d11CB4",  # ; Vowel_Dependent # Mc       MARCHEN VOWEL SIGN O
        "\d11d31","\d11d32","\d11d33","\d11d34","\d11d35","\d11d36",  # ; Vowel_Dependent # Mn   [6] MASARAM GONDI VOWEL SIGN AA..MASARAM GONDI VOWEL SIGN VOCALIC R
        "\d11D3A",  # ; Vowel_Dependent # Mn       MASARAM GONDI VOWEL SIGN E
        "\d11d3c","\d11d3d",  # ; Vowel_Dependent # Mn   [2] MASARAM GONDI VOWEL SIGN AI..MASARAM GONDI VOWEL SIGN O
        "\d11D3F",  # ; Vowel_Dependent # Mn       MASARAM GONDI VOWEL SIGN AU
        "\d11D43",  # ; Vowel_Dependent # Mn       MASARAM GONDI SIGN CANDRA
        "\d1963","\d1964","\d1965","\d1966","\d1967","\d1968","\d1969","\d196a","\d196b","\d196c","\d196d",  # ; Vowel # Lo  [11] TAI LE LETTER A..TAI LE LETTER AI
        "\da85e","\da85f","\da860","\da861",  # ; Vowel # Lo   [4] PHAGS-PA LETTER I..PHAGS-PA LETTER O
        "\dA866",  # ; Vowel # Lo       PHAGS-PA LETTER EE
        "\da922","\da923","\da924","\da925",  # ; Vowel # Lo   [4] KAYAH LI LETTER A..KAYAH LI LETTER OO
        "\da926","\da927","\da928","\da929","\da92a",  # ; Vowel # Mn   [5] KAYAH LI VOWEL UE..KAYAH LI VOWEL O
        "\d11150","\d11151","\d11152","\d11153","\d11154",  # ; Vowel # Lo   [5] MAHAJANI LETTER A..MAHAJANI LETTER O
        "\d002D",  # ; Consonant_Placeholder # Pd       HYPHEN-MINUS
        "\d00A0",  # ; Consonant_Placeholder # Zs       NO-BREAK SPACE
        "\d00D7",  # ; Consonant_Placeholder # Sm       MULTIPLICATION SIGN
        "\d0a72","\d0a73",  # ; Consonant_Placeholder # Lo   [2] GURMUKHI IRI..GURMUKHI URA
        "\d104E",  # ; Consonant_Placeholder # Po       MYANMAR SYMBOL AFOREMENTIONED
        "\d1900",  # ; Consonant_Placeholder # Lo       LIMBU VOWEL-CARRIER LETTER
        "\d2010","\d2011","\d2012","\d2013","\d2014",  # ; Consonant_Placeholder # Pd   [5] HYPHEN..EM DASH
        "\d25CC",  # ; Consonant_Placeholder # So       DOTTED CIRCLE
        "\daa74","\daa75","\daa76",  # ; Consonant_Placeholder # Lo   [3] MYANMAR LOGOGRAM KHAMTI OAY..MYANMAR LOGOGRAM KHAMTI HM
        "\d11A3F",  # ; Consonant_Placeholder # Po       ZANABAZAR SQUARE INITIAL HEAD MARK
        "\d11A45",  # ; Consonant_Placeholder # Po       ZANABAZAR SQUARE INITIAL DOUBLE-LINED HEAD MARK
        "\d0915","\d0916","\d0917","\d0918","\d0919","\d091a","\d091b","\d091c","\d091d","\d091e","\d091f","\d0920","\d0921","\d0922","\d0923","\d0924","\d0925","\d0926","\d0927","\d0928","\d0929","\d092a","\d092b","\d092c","\d092d","\d092e","\d092f","\d0930","\d0931","\d0932","\d0933","\d0934","\d0935","\d0936","\d0937","\d0938","\d0939",  # ; Consonant # Lo  [37] DEVANAGARI LETTER KA..DEVANAGARI LETTER HA
        "\d0958","\d0959","\d095a","\d095b","\d095c","\d095d","\d095e","\d095f",  # ; Consonant # Lo   [8] DEVANAGARI LETTER QA..DEVANAGARI LETTER YYA
        "\d0978","\d0979","\d097a","\d097b","\d097c","\d097d","\d097e","\d097f",  # ; Consonant # Lo   [8] DEVANAGARI LETTER MARWARI DDA..DEVANAGARI LETTER BBA
        "\d0995","\d0996","\d0997","\d0998","\d0999","\d099a","\d099b","\d099c","\d099d","\d099e","\d099f","\d09a0","\d09a1","\d09a2","\d09a3","\d09a4","\d09a5","\d09a6","\d09a7","\d09a8",  # ; Consonant # Lo  [20] BENGALI LETTER KA..BENGALI LETTER NA
        "\d09aa","\d09ab","\d09ac","\d09ad","\d09ae","\d09af","\d09b0",  # ; Consonant # Lo   [7] BENGALI LETTER PA..BENGALI LETTER RA
        "\d09B2",  # ; Consonant # Lo       BENGALI LETTER LA
        "\d09b6","\d09b7","\d09b8","\d09b9",  # ; Consonant # Lo   [4] BENGALI LETTER SHA..BENGALI LETTER HA
        "\d09dc","\d09dd",  # ; Consonant # Lo   [2] BENGALI LETTER RRA..BENGALI LETTER RHA
        "\d09DF",  # ; Consonant # Lo       BENGALI LETTER YYA
        "\d09f0","\d09f1",  # ; Consonant # Lo   [2] BENGALI LETTER RA WITH MIDDLE DIAGONAL..BENGALI LETTER RA WITH LOWER DIAGONAL
        "\d0a15","\d0a16","\d0a17","\d0a18","\d0a19","\d0a1a","\d0a1b","\d0a1c","\d0a1d","\d0a1e","\d0a1f","\d0a20","\d0a21","\d0a22","\d0a23","\d0a24","\d0a25","\d0a26","\d0a27","\d0a28",  # ; Consonant # Lo  [20] GURMUKHI LETTER KA..GURMUKHI LETTER NA
        "\d0a2a","\d0a2b","\d0a2c","\d0a2d","\d0a2e","\d0a2f","\d0a30",  # ; Consonant # Lo   [7] GURMUKHI LETTER PA..GURMUKHI LETTER RA
        "\d0a32","\d0a33",  # ; Consonant # Lo   [2] GURMUKHI LETTER LA..GURMUKHI LETTER LLA
        "\d0a35","\d0a36",  # ; Consonant # Lo   [2] GURMUKHI LETTER VA..GURMUKHI LETTER SHA
        "\d0a38","\d0a39",  # ; Consonant # Lo   [2] GURMUKHI LETTER SA..GURMUKHI LETTER HA
        "\d0a59","\d0a5a","\d0a5b","\d0a5c",  # ; Consonant # Lo   [4] GURMUKHI LETTER KHHA..GURMUKHI LETTER RRA
        "\d0A5E",  # ; Consonant # Lo       GURMUKHI LETTER FA
        "\d0a95","\d0a96","\d0a97","\d0a98","\d0a99","\d0a9a","\d0a9b","\d0a9c","\d0a9d","\d0a9e","\d0a9f","\d0aa0","\d0aa1","\d0aa2","\d0aa3","\d0aa4","\d0aa5","\d0aa6","\d0aa7","\d0aa8",  # ; Consonant # Lo  [20] GUJARATI LETTER KA..GUJARATI LETTER NA
        "\d0aaa","\d0aab","\d0aac","\d0aad","\d0aae","\d0aaf","\d0ab0",  # ; Consonant # Lo   [7] GUJARATI LETTER PA..GUJARATI LETTER RA
        "\d0ab2","\d0ab3",  # ; Consonant # Lo   [2] GUJARATI LETTER LA..GUJARATI LETTER LLA
        "\d0ab5","\d0ab6","\d0ab7","\d0ab8","\d0ab9",  # ; Consonant # Lo   [5] GUJARATI LETTER VA..GUJARATI LETTER HA
        "\d0AF9",  # ; Consonant # Lo       GUJARATI LETTER ZHA
        "\d0b15","\d0b16","\d0b17","\d0b18","\d0b19","\d0b1a","\d0b1b","\d0b1c","\d0b1d","\d0b1e","\d0b1f","\d0b20","\d0b21","\d0b22","\d0b23","\d0b24","\d0b25","\d0b26","\d0b27","\d0b28",  # ; Consonant # Lo  [20] ORIYA LETTER KA..ORIYA LETTER NA
        "\d0b2a","\d0b2b","\d0b2c","\d0b2d","\d0b2e","\d0b2f","\d0b30",  # ; Consonant # Lo   [7] ORIYA LETTER PA..ORIYA LETTER RA
        "\d0b32","\d0b33",  # ; Consonant # Lo   [2] ORIYA LETTER LA..ORIYA LETTER LLA
        "\d0b35","\d0b36","\d0b37","\d0b38","\d0b39",  # ; Consonant # Lo   [5] ORIYA LETTER VA..ORIYA LETTER HA
        "\d0b5c","\d0b5d",  # ; Consonant # Lo   [2] ORIYA LETTER RRA..ORIYA LETTER RHA
        "\d0B5F",  # ; Consonant # Lo       ORIYA LETTER YYA
        "\d0B71",  # ; Consonant # Lo       ORIYA LETTER WA
        "\d0B95",  # ; Consonant # Lo       TAMIL LETTER KA
        "\d0b99","\d0b9a",  # ; Consonant # Lo   [2] TAMIL LETTER NGA..TAMIL LETTER CA
        "\d0B9C",  # ; Consonant # Lo       TAMIL LETTER JA
        "\d0b9e","\d0b9f",  # ; Consonant # Lo   [2] TAMIL LETTER NYA..TAMIL LETTER TTA
        "\d0ba3","\d0ba4",  # ; Consonant # Lo   [2] TAMIL LETTER NNA..TAMIL LETTER TA
        "\d0ba8","\d0ba9","\d0baa",  # ; Consonant # Lo   [3] TAMIL LETTER NA..TAMIL LETTER PA
        "\d0bae","\d0baf","\d0bb0","\d0bb1","\d0bb2","\d0bb3","\d0bb4","\d0bb5","\d0bb6","\d0bb7","\d0bb8","\d0bb9",  # ; Consonant # Lo  [12] TAMIL LETTER MA..TAMIL LETTER HA
        "\d0c15","\d0c16","\d0c17","\d0c18","\d0c19","\d0c1a","\d0c1b","\d0c1c","\d0c1d","\d0c1e","\d0c1f","\d0c20","\d0c21","\d0c22","\d0c23","\d0c24","\d0c25","\d0c26","\d0c27","\d0c28",  # ; Consonant # Lo  [20] TELUGU LETTER KA..TELUGU LETTER NA
        "\d0c2a","\d0c2b","\d0c2c","\d0c2d","\d0c2e","\d0c2f","\d0c30","\d0c31","\d0c32","\d0c33","\d0c34","\d0c35","\d0c36","\d0c37","\d0c38","\d0c39",  # ; Consonant # Lo  [16] TELUGU LETTER PA..TELUGU LETTER HA
        "\d0c58","\d0c59","\d0c5a",  # ; Consonant # Lo   [3] TELUGU LETTER TSA..TELUGU LETTER RRRA
        "\d0c95","\d0c96","\d0c97","\d0c98","\d0c99","\d0c9a","\d0c9b","\d0c9c","\d0c9d","\d0c9e","\d0c9f","\d0ca0","\d0ca1","\d0ca2","\d0ca3","\d0ca4","\d0ca5","\d0ca6","\d0ca7","\d0ca8",  # ; Consonant # Lo  [20] KANNADA LETTER KA..KANNADA LETTER NA
        "\d0caa","\d0cab","\d0cac","\d0cad","\d0cae","\d0caf","\d0cb0","\d0cb1","\d0cb2","\d0cb3",  # ; Consonant # Lo  [10] KANNADA LETTER PA..KANNADA LETTER LLA
        "\d0cb5","\d0cb6","\d0cb7","\d0cb8","\d0cb9",  # ; Consonant # Lo   [5] KANNADA LETTER VA..KANNADA LETTER HA
        "\d0CDE",  # ; Consonant # Lo       KANNADA LETTER FA
        "\d0d15","\d0d16","\d0d17","\d0d18","\d0d19","\d0d1a","\d0d1b","\d0d1c","\d0d1d","\d0d1e","\d0d1f","\d0d20","\d0d21","\d0d22","\d0d23","\d0d24","\d0d25","\d0d26","\d0d27","\d0d28","\d0d29","\d0d2a","\d0d2b","\d0d2c","\d0d2d","\d0d2e","\d0d2f","\d0d30","\d0d31","\d0d32","\d0d33","\d0d34","\d0d35","\d0d36","\d0d37","\d0d38","\d0d39","\d0d3a",  # ; Consonant # Lo  [38] MALAYALAM LETTER KA..MALAYALAM LETTER TTTA
        "\d0d9a","\d0d9b","\d0d9c","\d0d9d","\d0d9e","\d0d9f","\d0da0","\d0da1","\d0da2","\d0da3","\d0da4","\d0da5","\d0da6","\d0da7","\d0da8","\d0da9","\d0daa","\d0dab","\d0dac","\d0dad","\d0dae","\d0daf","\d0db0","\d0db1",  # ; Consonant # Lo  [24] SINHALA LETTER ALPAPRAANA KAYANNA..SINHALA LETTER DANTAJA NAYANNA
        "\d0db3","\d0db4","\d0db5","\d0db6","\d0db7","\d0db8","\d0db9","\d0dba","\d0dbb",  # ; Consonant # Lo   [9] SINHALA LETTER SANYAKA DAYANNA..SINHALA LETTER RAYANNA
        "\d0DBD",  # ; Consonant # Lo       SINHALA LETTER DANTAJA LAYANNA
        "\d0dc0","\d0dc1","\d0dc2","\d0dc3","\d0dc4","\d0dc5","\d0dc6",  # ; Consonant # Lo   [7] SINHALA LETTER VAYANNA..SINHALA LETTER FAYANNA
        "\d0e01","\d0e02","\d0e03","\d0e04","\d0e05","\d0e06","\d0e07","\d0e08","\d0e09","\d0e0a","\d0e0b","\d0e0c","\d0e0d","\d0e0e","\d0e0f","\d0e10","\d0e11","\d0e12","\d0e13","\d0e14","\d0e15","\d0e16","\d0e17","\d0e18","\d0e19","\d0e1a","\d0e1b","\d0e1c","\d0e1d","\d0e1e","\d0e1f","\d0e20","\d0e21","\d0e22","\d0e23","\d0e24","\d0e25","\d0e26","\d0e27","\d0e28","\d0e29","\d0e2a","\d0e2b","\d0e2c","\d0e2d","\d0e2e",  # ; Consonant # Lo  [46] THAI CHARACTER KO KAI..THAI CHARACTER HO NOKHUK
        "\d0e81","\d0e82",  # ; Consonant # Lo   [2] LAO LETTER KO..LAO LETTER KHO SUNG
        "\d0E84",  # ; Consonant # Lo       LAO LETTER KHO TAM
        "\d0e87","\d0e88",  # ; Consonant # Lo   [2] LAO LETTER NGO..LAO LETTER CO
        "\d0E8A",  # ; Consonant # Lo       LAO LETTER SO TAM
        "\d0E8D",  # ; Consonant # Lo       LAO LETTER NYO
        "\d0e94","\d0e95","\d0e96","\d0e97",  # ; Consonant # Lo   [4] LAO LETTER DO..LAO LETTER THO TAM
        "\d0e99","\d0e9a","\d0e9b","\d0e9c","\d0e9d","\d0e9e","\d0e9f",  # ; Consonant # Lo   [7] LAO LETTER NO..LAO LETTER FO SUNG
        "\d0ea1","\d0ea2","\d0ea3",  # ; Consonant # Lo   [3] LAO LETTER MO..LAO LETTER LO LING
        "\d0EA5",  # ; Consonant # Lo       LAO LETTER LO LOOT
        "\d0EA7",  # ; Consonant # Lo       LAO LETTER WO
        "\d0eaa","\d0eab",  # ; Consonant # Lo   [2] LAO LETTER SO SUNG..LAO LETTER HO SUNG
        "\d0ead","\d0eae",  # ; Consonant # Lo   [2] LAO LETTER O..LAO LETTER HO TAM
        "\d0edc","\d0edd","\d0ede","\d0edf",  # ; Consonant # Lo   [4] LAO HO NO..LAO LETTER KHMU NYO
        "\d0f40","\d0f41","\d0f42","\d0f43","\d0f44","\d0f45","\d0f46","\d0f47",  # ; Consonant # Lo   [8] TIBETAN LETTER KA..TIBETAN LETTER JA
        "\d0f49","\d0f4a","\d0f4b","\d0f4c","\d0f4d","\d0f4e","\d0f4f","\d0f50","\d0f51","\d0f52","\d0f53","\d0f54","\d0f55","\d0f56","\d0f57","\d0f58","\d0f59","\d0f5a","\d0f5b","\d0f5c","\d0f5d","\d0f5e","\d0f5f","\d0f60","\d0f61","\d0f62","\d0f63","\d0f64","\d0f65","\d0f66","\d0f67","\d0f68","\d0f69","\d0f6a","\d0f6b","\d0f6c",  # ; Consonant # Lo  [36] TIBETAN LETTER NYA..TIBETAN LETTER RRA
        "\d1000","\d1001","\d1002","\d1003","\d1004","\d1005","\d1006","\d1007","\d1008","\d1009","\d100a","\d100b","\d100c","\d100d","\d100e","\d100f","\d1010","\d1011","\d1012","\d1013","\d1014","\d1015","\d1016","\d1017","\d1018","\d1019","\d101a","\d101b","\d101c","\d101d","\d101e","\d101f","\d1020",  # ; Consonant # Lo  [33] MYANMAR LETTER KA..MYANMAR LETTER LLA
        "\d103F",  # ; Consonant # Lo       MYANMAR LETTER GREAT SA
        "\d1050","\d1051",  # ; Consonant # Lo   [2] MYANMAR LETTER SHA..MYANMAR LETTER SSA
        "\d105a","\d105b","\d105c","\d105d",  # ; Consonant # Lo   [4] MYANMAR LETTER MON NGA..MYANMAR LETTER MON BBE
        "\d1061",  # ; Consonant # Lo       MYANMAR LETTER SGAW KAREN SHA
        "\d1065","\d1066",  # ; Consonant # Lo   [2] MYANMAR LETTER WESTERN PWO KAREN THA..MYANMAR LETTER WESTERN PWO KAREN PWA
        "\d106e","\d106f","\d1070",  # ; Consonant # Lo   [3] MYANMAR LETTER EASTERN PWO KAREN NNA..MYANMAR LETTER EASTERN PWO KAREN GHWA
        "\d1075","\d1076","\d1077","\d1078","\d1079","\d107a","\d107b","\d107c","\d107d","\d107e","\d107f","\d1080","\d1081",  # ; Consonant # Lo  [13] MYANMAR LETTER SHAN KA..MYANMAR LETTER SHAN HA
        "\d108E",  # ; Consonant # Lo       MYANMAR LETTER RUMAI PALAUNG FA
        "\d1703","\d1704","\d1705","\d1706","\d1707","\d1708","\d1709","\d170a","\d170b","\d170c",  # ; Consonant # Lo  [10] TAGALOG LETTER KA..TAGALOG LETTER YA
        "\d170e","\d170f","\d1710","\d1711",  # ; Consonant # Lo   [4] TAGALOG LETTER LA..TAGALOG LETTER HA
        "\d1723","\d1724","\d1725","\d1726","\d1727","\d1728","\d1729","\d172a","\d172b","\d172c","\d172d","\d172e","\d172f","\d1730","\d1731",  # ; Consonant # Lo  [15] HANUNOO LETTER KA..HANUNOO LETTER HA
        "\d1743","\d1744","\d1745","\d1746","\d1747","\d1748","\d1749","\d174a","\d174b","\d174c","\d174d","\d174e","\d174f","\d1750","\d1751",  # ; Consonant # Lo  [15] BUHID LETTER KA..BUHID LETTER HA
        "\d1763","\d1764","\d1765","\d1766","\d1767","\d1768","\d1769","\d176a","\d176b","\d176c",  # ; Consonant # Lo  [10] TAGBANWA LETTER KA..TAGBANWA LETTER YA
        "\d176e","\d176f","\d1770",  # ; Consonant # Lo   [3] TAGBANWA LETTER LA..TAGBANWA LETTER SA
        "\d1780","\d1781","\d1782","\d1783","\d1784","\d1785","\d1786","\d1787","\d1788","\d1789","\d178a","\d178b","\d178c","\d178d","\d178e","\d178f","\d1790","\d1791","\d1792","\d1793","\d1794","\d1795","\d1796","\d1797","\d1798","\d1799","\d179a","\d179b","\d179c","\d179d","\d179e","\d179f","\d17a0","\d17a1","\d17a2",  # ; Consonant # Lo  [35] KHMER LETTER KA..KHMER LETTER QA
        "\d1901","\d1902","\d1903","\d1904","\d1905","\d1906","\d1907","\d1908","\d1909","\d190a","\d190b","\d190c","\d190d","\d190e","\d190f","\d1910","\d1911","\d1912","\d1913","\d1914","\d1915","\d1916","\d1917","\d1918","\d1919","\d191a","\d191b","\d191c","\d191d","\d191e",  # ; Consonant # Lo  [30] LIMBU LETTER KA..LIMBU LETTER TRA
        "\d1950","\d1951","\d1952","\d1953","\d1954","\d1955","\d1956","\d1957","\d1958","\d1959","\d195a","\d195b","\d195c","\d195d","\d195e","\d195f","\d1960","\d1961","\d1962",  # ; Consonant # Lo  [19] TAI LE LETTER KA..TAI LE LETTER NA
        "\d1980","\d1981","\d1982","\d1983","\d1984","\d1985","\d1986","\d1987","\d1988","\d1989","\d198a","\d198b","\d198c","\d198d","\d198e","\d198f","\d1990","\d1991","\d1992","\d1993","\d1994","\d1995","\d1996","\d1997","\d1998","\d1999","\d199a","\d199b","\d199c","\d199d","\d199e","\d199f","\d19a0","\d19a1","\d19a2","\d19a3","\d19a4","\d19a5","\d19a6","\d19a7","\d19a8","\d19a9","\d19aa","\d19ab",  # ; Consonant # Lo  [44] NEW TAI LUE LETTER HIGH QA..NEW TAI LUE LETTER LOW SUA
        "\d1a00","\d1a01","\d1a02","\d1a03","\d1a04","\d1a05","\d1a06","\d1a07","\d1a08","\d1a09","\d1a0a","\d1a0b","\d1a0c","\d1a0d","\d1a0e","\d1a0f","\d1a10","\d1a11","\d1a12","\d1a13","\d1a14","\d1a15","\d1a16",  # ; Consonant # Lo  [23] BUGINESE LETTER KA..BUGINESE LETTER HA
        "\d1a20","\d1a21","\d1a22","\d1a23","\d1a24","\d1a25","\d1a26","\d1a27","\d1a28","\d1a29","\d1a2a","\d1a2b","\d1a2c","\d1a2d","\d1a2e","\d1a2f","\d1a30","\d1a31","\d1a32","\d1a33","\d1a34","\d1a35","\d1a36","\d1a37","\d1a38","\d1a39","\d1a3a","\d1a3b","\d1a3c","\d1a3d","\d1a3e","\d1a3f","\d1a40","\d1a41","\d1a42","\d1a43","\d1a44","\d1a45","\d1a46","\d1a47","\d1a48","\d1a49","\d1a4a","\d1a4b","\d1a4c",  # ; Consonant # Lo  [45] TAI THAM LETTER HIGH KA..TAI THAM LETTER LOW HA
        "\d1a53","\d1a54",  # ; Consonant # Lo   [2] TAI THAM LETTER LAE..TAI THAM LETTER GREAT SA
        "\d1b13","\d1b14","\d1b15","\d1b16","\d1b17","\d1b18","\d1b19","\d1b1a","\d1b1b","\d1b1c","\d1b1d","\d1b1e","\d1b1f","\d1b20","\d1b21","\d1b22","\d1b23","\d1b24","\d1b25","\d1b26","\d1b27","\d1b28","\d1b29","\d1b2a","\d1b2b","\d1b2c","\d1b2d","\d1b2e","\d1b2f","\d1b30","\d1b31","\d1b32","\d1b33",  # ; Consonant # Lo  [33] BALINESE LETTER KA..BALINESE LETTER HA
        "\d1b45","\d1b46","\d1b47","\d1b48","\d1b49","\d1b4a","\d1b4b",  # ; Consonant # Lo   [7] BALINESE LETTER KAF SASAK..BALINESE LETTER ASYURA SASAK
        "\d1b8a","\d1b8b","\d1b8c","\d1b8d","\d1b8e","\d1b8f","\d1b90","\d1b91","\d1b92","\d1b93","\d1b94","\d1b95","\d1b96","\d1b97","\d1b98","\d1b99","\d1b9a","\d1b9b","\d1b9c","\d1b9d","\d1b9e","\d1b9f","\d1ba0",  # ; Consonant # Lo  [23] SUNDANESE LETTER KA..SUNDANESE LETTER HA
        "\d1bae","\d1baf",  # ; Consonant # Lo   [2] SUNDANESE LETTER KHA..SUNDANESE LETTER SYA
        "\d1bbb","\d1bbc","\d1bbd",  # ; Consonant # Lo   [3] SUNDANESE LETTER REU..SUNDANESE LETTER BHA
        "\d1bc0","\d1bc1","\d1bc2","\d1bc3","\d1bc4","\d1bc5","\d1bc6","\d1bc7","\d1bc8","\d1bc9","\d1bca","\d1bcb","\d1bcc","\d1bcd","\d1bce","\d1bcf","\d1bd0","\d1bd1","\d1bd2","\d1bd3","\d1bd4","\d1bd5","\d1bd6","\d1bd7","\d1bd8","\d1bd9","\d1bda","\d1bdb","\d1bdc","\d1bdd","\d1bde","\d1bdf","\d1be0","\d1be1","\d1be2","\d1be3",  # ; Consonant # Lo  [36] BATAK LETTER A..BATAK LETTER MBA
        "\d1c00","\d1c01","\d1c02","\d1c03","\d1c04","\d1c05","\d1c06","\d1c07","\d1c08","\d1c09","\d1c0a","\d1c0b","\d1c0c","\d1c0d","\d1c0e","\d1c0f","\d1c10","\d1c11","\d1c12","\d1c13","\d1c14","\d1c15","\d1c16","\d1c17","\d1c18","\d1c19","\d1c1a","\d1c1b","\d1c1c","\d1c1d","\d1c1e","\d1c1f","\d1c20","\d1c21","\d1c22","\d1c23",  # ; Consonant # Lo  [36] LEPCHA LETTER KA..LEPCHA LETTER A
        "\d1c4d","\d1c4e","\d1c4f",  # ; Consonant # Lo   [3] LEPCHA LETTER TTA..LEPCHA LETTER DDA
        "\da807","\da808","\da809","\da80a",  # ; Consonant # Lo   [4] SYLOTI NAGRI LETTER KO..SYLOTI NAGRI LETTER GHO
        "\da80c","\da80d","\da80e","\da80f","\da810","\da811","\da812","\da813","\da814","\da815","\da816","\da817","\da818","\da819","\da81a","\da81b","\da81c","\da81d","\da81e","\da81f","\da820","\da821","\da822",  # ; Consonant # Lo  [23] SYLOTI NAGRI LETTER CO..SYLOTI NAGRI LETTER HO
        "\da840","\da841","\da842","\da843","\da844","\da845","\da846","\da847","\da848","\da849","\da84a","\da84b","\da84c","\da84d","\da84e","\da84f","\da850","\da851","\da852","\da853","\da854","\da855","\da856","\da857","\da858","\da859","\da85a","\da85b","\da85c","\da85d",  # ; Consonant # Lo  [30] PHAGS-PA LETTER KA..PHAGS-PA LETTER A
        "\da862","\da863","\da864","\da865",  # ; Consonant # Lo   [4] PHAGS-PA LETTER QA..PHAGS-PA LETTER GGA
        "\da869","\da86a","\da86b","\da86c","\da86d","\da86e","\da86f","\da870",  # ; Consonant # Lo   [8] PHAGS-PA LETTER TTA..PHAGS-PA LETTER ASPIRATED FA
        "\dA872",  # ; Consonant # Lo       PHAGS-PA SUPERFIXED LETTER RA
        "\da892","\da893","\da894","\da895","\da896","\da897","\da898","\da899","\da89a","\da89b","\da89c","\da89d","\da89e","\da89f","\da8a0","\da8a1","\da8a2","\da8a3","\da8a4","\da8a5","\da8a6","\da8a7","\da8a8","\da8a9","\da8aa","\da8ab","\da8ac","\da8ad","\da8ae","\da8af","\da8b0","\da8b1","\da8b2","\da8b3",  # ; Consonant # Lo  [34] SAURASHTRA LETTER KA..SAURASHTRA LETTER LLA
        "\da90a","\da90b","\da90c","\da90d","\da90e","\da90f","\da910","\da911","\da912","\da913","\da914","\da915","\da916","\da917","\da918","\da919","\da91a","\da91b","\da91c","\da91d","\da91e","\da91f","\da920","\da921",  # ; Consonant # Lo  [24] KAYAH LI LETTER KA..KAYAH LI LETTER CA
        "\da930","\da931","\da932","\da933","\da934","\da935","\da936","\da937","\da938","\da939","\da93a","\da93b","\da93c","\da93d","\da93e","\da93f","\da940","\da941","\da942","\da943","\da944","\da945","\da946",  # ; Consonant # Lo  [23] REJANG LETTER KA..REJANG LETTER A
        "\da989","\da98a","\da98b",  # ; Consonant # Lo   [3] JAVANESE LETTER PA CEREK..JAVANESE LETTER NGA LELET RASWADI
        "\da98f","\da990","\da991","\da992","\da993","\da994","\da995","\da996","\da997","\da998","\da999","\da99a","\da99b","\da99c","\da99d","\da99e","\da99f","\da9a0","\da9a1","\da9a2","\da9a3","\da9a4","\da9a5","\da9a6","\da9a7","\da9a8","\da9a9","\da9aa","\da9ab","\da9ac","\da9ad","\da9ae","\da9af","\da9b0","\da9b1","\da9b2",  # ; Consonant # Lo  [36] JAVANESE LETTER KA..JAVANESE LETTER HA
        "\da9e0","\da9e1","\da9e2","\da9e3","\da9e4",  # ; Consonant # Lo   [5] MYANMAR LETTER SHAN GHA..MYANMAR LETTER SHAN BHA
        "\da9e7","\da9e8","\da9e9","\da9ea","\da9eb","\da9ec","\da9ed","\da9ee","\da9ef",  # ; Consonant # Lo   [9] MYANMAR LETTER TAI LAING NYA..MYANMAR LETTER TAI LAING NNA
        "\da9fa","\da9fb","\da9fc","\da9fd","\da9fe",  # ; Consonant # Lo   [5] MYANMAR LETTER TAI LAING LLA..MYANMAR LETTER TAI LAING BHA
        "\daa06","\daa07","\daa08","\daa09","\daa0a","\daa0b","\daa0c","\daa0d","\daa0e","\daa0f","\daa10","\daa11","\daa12","\daa13","\daa14","\daa15","\daa16","\daa17","\daa18","\daa19","\daa1a","\daa1b","\daa1c","\daa1d","\daa1e","\daa1f","\daa20","\daa21","\daa22","\daa23","\daa24","\daa25","\daa26","\daa27","\daa28",  # ; Consonant # Lo  [35] CHAM LETTER KA..CHAM LETTER HA
        "\daa60","\daa61","\daa62","\daa63","\daa64","\daa65","\daa66","\daa67","\daa68","\daa69","\daa6a","\daa6b","\daa6c","\daa6d","\daa6e","\daa6f",  # ; Consonant # Lo  [16] MYANMAR LETTER KHAMTI GA..MYANMAR LETTER KHAMTI FA
        "\daa71","\daa72","\daa73",  # ; Consonant # Lo   [3] MYANMAR LETTER KHAMTI XA..MYANMAR LETTER KHAMTI RA
        "\dAA7A",  # ; Consonant # Lo       MYANMAR LETTER AITON RA
        "\daa7e","\daa7f",  # ; Consonant # Lo   [2] MYANMAR LETTER SHWE PALAUNG CHA..MYANMAR LETTER SHWE PALAUNG SHA
        "\daa80","\daa81","\daa82","\daa83","\daa84","\daa85","\daa86","\daa87","\daa88","\daa89","\daa8a","\daa8b","\daa8c","\daa8d","\daa8e","\daa8f","\daa90","\daa91","\daa92","\daa93","\daa94","\daa95","\daa96","\daa97","\daa98","\daa99","\daa9a","\daa9b","\daa9c","\daa9d","\daa9e","\daa9f","\daaa0","\daaa1","\daaa2","\daaa3","\daaa4","\daaa5","\daaa6","\daaa7","\daaa8","\daaa9","\daaaa","\daaab","\daaac","\daaad","\daaae","\daaaf",  # ; Consonant # Lo  [48] TAI VIET LETTER LOW KO..TAI VIET LETTER HIGH O
        "\daae2","\daae3","\daae4","\daae5","\daae6","\daae7","\daae8","\daae9","\daaea",  # ; Consonant # Lo   [9] MEETEI MAYEK LETTER CHA..MEETEI MAYEK LETTER SSA
        "\dabc0","\dabc1","\dabc2","\dabc3","\dabc4","\dabc5","\dabc6","\dabc7","\dabc8","\dabc9","\dabca","\dabcb","\dabcc","\dabcd",  # ; Consonant # Lo  [14] MEETEI MAYEK LETTER KOK..MEETEI MAYEK LETTER HUK
        "\dABD0",  # ; Consonant # Lo       MEETEI MAYEK LETTER PHAM
        "\dabd2","\dabd3","\dabd4","\dabd5","\dabd6","\dabd7","\dabd8","\dabd9","\dabda",  # ; Consonant # Lo   [9] MEETEI MAYEK LETTER GOK..MEETEI MAYEK LETTER BHAM
        "\d10A00",  # ; Consonant # Lo       KHAROSHTHI LETTER A
        "\d10a10","\d10a11","\d10a12","\d10a13",  # ; Consonant # Lo   [4] KHAROSHTHI LETTER KA..KHAROSHTHI LETTER GHA
        "\d10a15","\d10a16","\d10a17",  # ; Consonant # Lo   [3] KHAROSHTHI LETTER CA..KHAROSHTHI LETTER JA
        "\d10a19","\d10a1a","\d10a1b","\d10a1c","\d10a1d","\d10a1e","\d10a1f","\d10a20","\d10a21","\d10a22","\d10a23","\d10a24","\d10a25","\d10a26","\d10a27","\d10a28","\d10a29","\d10a2a","\d10a2b","\d10a2c","\d10a2d","\d10a2e","\d10a2f","\d10a30","\d10a31","\d10a32","\d10a33",  # ; Consonant # Lo  [27] KHAROSHTHI LETTER NYA..KHAROSHTHI LETTER TTTHA
        "\d11013","\d11014","\d11015","\d11016","\d11017","\d11018","\d11019","\d1101a","\d1101b","\d1101c","\d1101d","\d1101e","\d1101f","\d11020","\d11021","\d11022","\d11023","\d11024","\d11025","\d11026","\d11027","\d11028","\d11029","\d1102a","\d1102b","\d1102c","\d1102d","\d1102e","\d1102f","\d11030","\d11031","\d11032","\d11033","\d11034","\d11035","\d11036","\d11037",  # ; Consonant # Lo  [37] BRAHMI LETTER KA..BRAHMI LETTER OLD TAMIL NNNA
        "\d1108d","\d1108e","\d1108f","\d11090","\d11091","\d11092","\d11093","\d11094","\d11095","\d11096","\d11097","\d11098","\d11099","\d1109a","\d1109b","\d1109c","\d1109d","\d1109e","\d1109f","\d110a0","\d110a1","\d110a2","\d110a3","\d110a4","\d110a5","\d110a6","\d110a7","\d110a8","\d110a9","\d110aa","\d110ab","\d110ac","\d110ad","\d110ae","\d110af",  # ; Consonant # Lo  [35] KAITHI LETTER KA..KAITHI LETTER HA
        "\d11107","\d11108","\d11109","\d1110a","\d1110b","\d1110c","\d1110d","\d1110e","\d1110f","\d11110","\d11111","\d11112","\d11113","\d11114","\d11115","\d11116","\d11117","\d11118","\d11119","\d1111a","\d1111b","\d1111c","\d1111d","\d1111e","\d1111f","\d11120","\d11121","\d11122","\d11123","\d11124","\d11125","\d11126",  # ; Consonant # Lo  [32] CHAKMA LETTER KAA..CHAKMA LETTER HAA
        "\d11155","\d11156","\d11157","\d11158","\d11159","\d1115a","\d1115b","\d1115c","\d1115d","\d1115e","\d1115f","\d11160","\d11161","\d11162","\d11163","\d11164","\d11165","\d11166","\d11167","\d11168","\d11169","\d1116a","\d1116b","\d1116c","\d1116d","\d1116e","\d1116f","\d11170","\d11171","\d11172",  # ; Consonant # Lo  [30] MAHAJANI LETTER KA..MAHAJANI LETTER RRA
        "\d11191","\d11192","\d11193","\d11194","\d11195","\d11196","\d11197","\d11198","\d11199","\d1119a","\d1119b","\d1119c","\d1119d","\d1119e","\d1119f","\d111a0","\d111a1","\d111a2","\d111a3","\d111a4","\d111a5","\d111a6","\d111a7","\d111a8","\d111a9","\d111aa","\d111ab","\d111ac","\d111ad","\d111ae","\d111af","\d111b0","\d111b1","\d111b2",  # ; Consonant # Lo  [34] SHARADA LETTER KA..SHARADA LETTER HA
        "\d11208","\d11209","\d1120a","\d1120b","\d1120c","\d1120d","\d1120e","\d1120f","\d11210","\d11211",  # ; Consonant # Lo  [10] KHOJKI LETTER KA..KHOJKI LETTER JJA
        "\d11213","\d11214","\d11215","\d11216","\d11217","\d11218","\d11219","\d1121a","\d1121b","\d1121c","\d1121d","\d1121e","\d1121f","\d11220","\d11221","\d11222","\d11223","\d11224","\d11225","\d11226","\d11227","\d11228","\d11229","\d1122a","\d1122b",  # ; Consonant # Lo  [25] KHOJKI LETTER NYA..KHOJKI LETTER LLA
        "\d11284","\d11285","\d11286",  # ; Consonant # Lo   [3] MULTANI LETTER KA..MULTANI LETTER GA
        "\d11288",  # ; Consonant # Lo       MULTANI LETTER GHA
        "\d1128a","\d1128b","\d1128c","\d1128d",  # ; Consonant # Lo   [4] MULTANI LETTER CA..MULTANI LETTER JJA
        "\d1128f","\d11290","\d11291","\d11292","\d11293","\d11294","\d11295","\d11296","\d11297","\d11298","\d11299","\d1129a","\d1129b","\d1129c","\d1129d",  # ; Consonant # Lo  [15] MULTANI LETTER NYA..MULTANI LETTER BA
        "\d1129f","\d112a0","\d112a1","\d112a2","\d112a3","\d112a4","\d112a5","\d112a6","\d112a7","\d112a8",  # ; Consonant # Lo  [10] MULTANI LETTER BHA..MULTANI LETTER RHA
        "\d112ba","\d112bb","\d112bc","\d112bd","\d112be","\d112bf","\d112c0","\d112c1","\d112c2","\d112c3","\d112c4","\d112c5","\d112c6","\d112c7","\d112c8","\d112c9","\d112ca","\d112cb","\d112cc","\d112cd","\d112ce","\d112cf","\d112d0","\d112d1","\d112d2","\d112d3","\d112d4","\d112d5","\d112d6","\d112d7","\d112d8","\d112d9","\d112da","\d112db","\d112dc","\d112dd","\d112de",  # ; Consonant # Lo  [37] KHUDAWADI LETTER KA..KHUDAWADI LETTER HA
        "\d11315","\d11316","\d11317","\d11318","\d11319","\d1131a","\d1131b","\d1131c","\d1131d","\d1131e","\d1131f","\d11320","\d11321","\d11322","\d11323","\d11324","\d11325","\d11326","\d11327","\d11328",  # ; Consonant # Lo  [20] GRANTHA LETTER KA..GRANTHA LETTER NA
        "\d1132a","\d1132b","\d1132c","\d1132d","\d1132e","\d1132f","\d11330",  # ; Consonant # Lo   [7] GRANTHA LETTER PA..GRANTHA LETTER RA
        "\d11332","\d11333",  # ; Consonant # Lo   [2] GRANTHA LETTER LA..GRANTHA LETTER LLA
        "\d11335","\d11336","\d11337","\d11338","\d11339",  # ; Consonant # Lo   [5] GRANTHA LETTER VA..GRANTHA LETTER HA
        "\d1140e","\d1140f","\d11410","\d11411","\d11412","\d11413","\d11414","\d11415","\d11416","\d11417","\d11418","\d11419","\d1141a","\d1141b","\d1141c","\d1141d","\d1141e","\d1141f","\d11420","\d11421","\d11422","\d11423","\d11424","\d11425","\d11426","\d11427","\d11428","\d11429","\d1142a","\d1142b","\d1142c","\d1142d","\d1142e","\d1142f","\d11430","\d11431","\d11432","\d11433","\d11434",  # ; Consonant # Lo  [39] NEWA LETTER KA..NEWA LETTER HA
        "\d1148f","\d11490","\d11491","\d11492","\d11493","\d11494","\d11495","\d11496","\d11497","\d11498","\d11499","\d1149a","\d1149b","\d1149c","\d1149d","\d1149e","\d1149f","\d114a0","\d114a1","\d114a2","\d114a3","\d114a4","\d114a5","\d114a6","\d114a7","\d114a8","\d114a9","\d114aa","\d114ab","\d114ac","\d114ad","\d114ae","\d114af",  # ; Consonant # Lo  [33] TIRHUTA LETTER KA..TIRHUTA LETTER HA
        "\d1158e","\d1158f","\d11590","\d11591","\d11592","\d11593","\d11594","\d11595","\d11596","\d11597","\d11598","\d11599","\d1159a","\d1159b","\d1159c","\d1159d","\d1159e","\d1159f","\d115a0","\d115a1","\d115a2","\d115a3","\d115a4","\d115a5","\d115a6","\d115a7","\d115a8","\d115a9","\d115aa","\d115ab","\d115ac","\d115ad","\d115ae",  # ; Consonant # Lo  [33] SIDDHAM LETTER KA..SIDDHAM LETTER HA
        "\d1160e","\d1160f","\d11610","\d11611","\d11612","\d11613","\d11614","\d11615","\d11616","\d11617","\d11618","\d11619","\d1161a","\d1161b","\d1161c","\d1161d","\d1161e","\d1161f","\d11620","\d11621","\d11622","\d11623","\d11624","\d11625","\d11626","\d11627","\d11628","\d11629","\d1162a","\d1162b","\d1162c","\d1162d","\d1162e","\d1162f",  # ; Consonant # Lo  [34] MODI LETTER KA..MODI LETTER LLA
        "\d1168a","\d1168b","\d1168c","\d1168d","\d1168e","\d1168f","\d11690","\d11691","\d11692","\d11693","\d11694","\d11695","\d11696","\d11697","\d11698","\d11699","\d1169a","\d1169b","\d1169c","\d1169d","\d1169e","\d1169f","\d116a0","\d116a1","\d116a2","\d116a3","\d116a4","\d116a5","\d116a6","\d116a7","\d116a8","\d116a9","\d116aa",  # ; Consonant # Lo  [33] TAKRI LETTER KA..TAKRI LETTER RRA
        "\d11700","\d11701","\d11702","\d11703","\d11704","\d11705","\d11706","\d11707","\d11708","\d11709","\d1170a","\d1170b","\d1170c","\d1170d","\d1170e","\d1170f","\d11710","\d11711","\d11712","\d11713","\d11714","\d11715","\d11716","\d11717","\d11718","\d11719",  # ; Consonant # Lo  [26] AHOM LETTER KA..AHOM LETTER JHA
        "\d11a0b","\d11a0c","\d11a0d","\d11a0e","\d11a0f","\d11a10","\d11a11","\d11a12","\d11a13","\d11a14","\d11a15","\d11a16","\d11a17","\d11a18","\d11a19","\d11a1a","\d11a1b","\d11a1c","\d11a1d","\d11a1e","\d11a1f","\d11a20","\d11a21","\d11a22","\d11a23","\d11a24","\d11a25","\d11a26","\d11a27","\d11a28","\d11a29","\d11a2a","\d11a2b","\d11a2c","\d11a2d","\d11a2e","\d11a2f","\d11a30","\d11a31","\d11a32",  # ; Consonant # Lo  [40] ZANABAZAR SQUARE LETTER KA..ZANABAZAR SQUARE LETTER KSSA
        "\d11a5c","\d11a5d","\d11a5e","\d11a5f","\d11a60","\d11a61","\d11a62","\d11a63","\d11a64","\d11a65","\d11a66","\d11a67","\d11a68","\d11a69","\d11a6a","\d11a6b","\d11a6c","\d11a6d","\d11a6e","\d11a6f","\d11a70","\d11a71","\d11a72","\d11a73","\d11a74","\d11a75","\d11a76","\d11a77","\d11a78","\d11a79","\d11a7a","\d11a7b","\d11a7c","\d11a7d","\d11a7e","\d11a7f","\d11a80","\d11a81","\d11a82","\d11a83",  # ; Consonant # Lo  [40] SOYOMBO LETTER KA..SOYOMBO LETTER KSSA
        "\d11c0e","\d11c0f","\d11c10","\d11c11","\d11c12","\d11c13","\d11c14","\d11c15","\d11c16","\d11c17","\d11c18","\d11c19","\d11c1a","\d11c1b","\d11c1c","\d11c1d","\d11c1e","\d11c1f","\d11c20","\d11c21","\d11c22","\d11c23","\d11c24","\d11c25","\d11c26","\d11c27","\d11c28","\d11c29","\d11c2a","\d11c2b","\d11c2c","\d11c2d","\d11c2e",  # ; Consonant # Lo  [33] BHAIKSUKI LETTER KA..BHAIKSUKI LETTER HA
        "\d11c72","\d11c73","\d11c74","\d11c75","\d11c76","\d11c77","\d11c78","\d11c79","\d11c7a","\d11c7b","\d11c7c","\d11c7d","\d11c7e","\d11c7f","\d11c80","\d11c81","\d11c82","\d11c83","\d11c84","\d11c85","\d11c86","\d11c87","\d11c88","\d11c89","\d11c8a","\d11c8b","\d11c8c","\d11c8d","\d11c8e","\d11c8f",  # ; Consonant # Lo  [30] MARCHEN LETTER KA..MARCHEN LETTER A
        "\d11d0c","\d11d0d","\d11d0e","\d11d0f","\d11d10","\d11d11","\d11d12","\d11d13","\d11d14","\d11d15","\d11d16","\d11d17","\d11d18","\d11d19","\d11d1a","\d11d1b","\d11d1c","\d11d1d","\d11d1e","\d11d1f","\d11d20","\d11d21","\d11d22","\d11d23","\d11d24","\d11d25","\d11d26","\d11d27","\d11d28","\d11d29","\d11d2a","\d11d2b","\d11d2c","\d11d2d","\d11d2e","\d11d2f","\d11d30",  # ; Consonant # Lo  [37] MASARAM GONDI LETTER KA..MASARAM GONDI LETTER TRA
        "\d09CE",  # ; Consonant_Dead # Lo       BENGALI LETTER KHANDA TA
        "\d0d54","\d0d55","\d0d56",  # ; Consonant_Dead # Lo   [3] MALAYALAM LETTER CHILLU M..MALAYALAM LETTER CHILLU LLL
        "\d0d7a","\d0d7b","\d0d7c","\d0d7d","\d0d7e","\d0d7f",  # ; Consonant_Dead # Lo   [6] MALAYALAM LETTER CHILLU NN..MALAYALAM LETTER CHILLU K
        "\d0cf1","\d0cf2",  # ; Consonant_With_Stacker # Lo   [2] KANNADA SIGN JIHVAMULIYA..KANNADA SIGN UPADHMANIYA
        "\d11003","\d11004",  # ; Consonant_With_Stacker # Lo   [2] BRAHMI SIGN JIHVAMULIYA..BRAHMI SIGN UPADHMANIYA
        "\d111c2","\d111c3",  # ; Consonant_Prefixed # Lo   [2] SHARADA SIGN JIHVAMULIYA..SHARADA SIGN UPADHMANIYA
        "\d11A3A",  # ; Consonant_Prefixed # Lo       ZANABAZAR SQUARE CLUSTER-INITIAL LETTER RA
        "\d11a86","\d11a87","\d11a88","\d11a89",  # ; Consonant_Prefixed # Lo   [4] SOYOMBO CLUSTER-INITIAL LETTER RA..SOYOMBO CLUSTER-INITIAL LETTER SA
        "\d0D4E",  # ; Consonant_Preceding_Repha # Lo       MALAYALAM LETTER DOT REPH
        "\d11D46",  # ; Consonant_Preceding_Repha # Lo       MASARAM GONDI REPHA
        "\d17CC",  # ; Consonant_Succeeding_Repha # Mn       KHMER SIGN ROBAT
        "\d1A5A",  # ; Consonant_Succeeding_Repha # Mn       TAI THAM CONSONANT SIGN LOW PA
        "\d1B03",  # ; Consonant_Succeeding_Repha # Mn       BALINESE SIGN SURANG
        "\d1B81",  # ; Consonant_Succeeding_Repha # Mn       SUNDANESE SIGN PANGLAYAR
        "\dA982",  # ; Consonant_Succeeding_Repha # Mn       JAVANESE SIGN LAYAR
        "\d0f8d","\d0f8e","\d0f8f","\d0f90","\d0f91","\d0f92","\d0f93","\d0f94","\d0f95","\d0f96","\d0f97",  # ; Consonant_Subjoined # Mn  [11] TIBETAN SUBJOINED SIGN LCE TSA CAN..TIBETAN SUBJOINED LETTER JA
        "\d0f99","\d0f9a","\d0f9b","\d0f9c","\d0f9d","\d0f9e","\d0f9f","\d0fa0","\d0fa1","\d0fa2","\d0fa3","\d0fa4","\d0fa5","\d0fa6","\d0fa7","\d0fa8","\d0fa9","\d0faa","\d0fab","\d0fac","\d0fad","\d0fae","\d0faf","\d0fb0","\d0fb1","\d0fb2","\d0fb3","\d0fb4","\d0fb5","\d0fb6","\d0fb7","\d0fb8","\d0fb9","\d0fba","\d0fbb","\d0fbc",  # ; Consonant_Subjoined # Mn  [36] TIBETAN SUBJOINED LETTER NYA..TIBETAN SUBJOINED LETTER FIXED-FORM RA
        "\d1929","\d192a","\d192b",  # ; Consonant_Subjoined # Mc   [3] LIMBU SUBJOINED LETTER YA..LIMBU SUBJOINED LETTER WA
        "\d1A57",  # ; Consonant_Subjoined # Mc       TAI THAM CONSONANT SIGN LA TANG LAI
        "\d1a5b","\d1a5c","\d1a5d","\d1a5e",  # ; Consonant_Subjoined # Mn   [4] TAI THAM CONSONANT SIGN HIGH RATHA OR LOW PA..TAI THAM CONSONANT SIGN SA
        "\d1BA1",  # ; Consonant_Subjoined # Mc       SUNDANESE CONSONANT SIGN PAMINGKAL
        "\d1ba2","\d1ba3",  # ; Consonant_Subjoined # Mn   [2] SUNDANESE CONSONANT SIGN PANYAKRA..SUNDANESE CONSONANT SIGN PANYIKU
        "\d1bac","\d1bad",  # ; Consonant_Subjoined # Mn   [2] SUNDANESE CONSONANT SIGN PASANGAN MA..SUNDANESE CONSONANT SIGN PASANGAN WA
        "\d1c24","\d1c25",  # ; Consonant_Subjoined # Mc   [2] LEPCHA SUBJOINED LETTER YA..LEPCHA SUBJOINED LETTER RA
        "\da867","\da868",  # ; Consonant_Subjoined # Lo   [2] PHAGS-PA SUBJOINED LETTER WA..PHAGS-PA SUBJOINED LETTER YA
        "\dA871",  # ; Consonant_Subjoined # Lo       PHAGS-PA SUBJOINED LETTER RA
        "\dA9BD",  # ; Consonant_Subjoined # Mc       JAVANESE CONSONANT SIGN KERET
        "\d11c92","\d11c93","\d11c94","\d11c95","\d11c96","\d11c97","\d11c98","\d11c99","\d11c9a","\d11c9b","\d11c9c","\d11c9d","\d11c9e","\d11c9f","\d11ca0","\d11ca1","\d11ca2","\d11ca3","\d11ca4","\d11ca5","\d11ca6","\d11ca7",  # ; Consonant_Subjoined # Mn  [22] MARCHEN SUBJOINED LETTER KA..MARCHEN SUBJOINED LETTER ZA
        "\d11CA9",  # ; Consonant_Subjoined # Mc       MARCHEN SUBJOINED LETTER YA
        "\d11caa","\d11cab","\d11cac","\d11cad","\d11cae","\d11caf",  # ; Consonant_Subjoined # Mn   [6] MARCHEN SUBJOINED LETTER RA..MARCHEN SUBJOINED LETTER A
        "\d0A75",  # ; Consonant_Medial # Mn       GURMUKHI SIGN YAKASH
        "\d0EBC",  # ; Consonant_Medial # Mn       LAO SEMIVOWEL SIGN LO
        "\d0EBD",  # ; Consonant_Medial # Lo       LAO SEMIVOWEL SIGN NYO
        "\d103b","\d103c",  # ; Consonant_Medial # Mc   [2] MYANMAR CONSONANT SIGN MEDIAL YA..MYANMAR CONSONANT SIGN MEDIAL RA
        "\d103d","\d103e",  # ; Consonant_Medial # Mn   [2] MYANMAR CONSONANT SIGN MEDIAL WA..MYANMAR CONSONANT SIGN MEDIAL HA
        "\d105e","\d105f","\d1060",  # ; Consonant_Medial # Mn   [3] MYANMAR CONSONANT SIGN MON MEDIAL NA..MYANMAR CONSONANT SIGN MON MEDIAL LA
        "\d1082",  # ; Consonant_Medial # Mn       MYANMAR CONSONANT SIGN SHAN MEDIAL WA
        "\d1A55",  # ; Consonant_Medial # Mc       TAI THAM CONSONANT SIGN MEDIAL RA
        "\d1A56",  # ; Consonant_Medial # Mn       TAI THAM CONSONANT SIGN MEDIAL LA
        "\da9be","\da9bf",  # ; Consonant_Medial # Mc   [2] JAVANESE CONSONANT SIGN PENGKAL..JAVANESE CONSONANT SIGN CAKRA
        "\daa33","\daa34",  # ; Consonant_Medial # Mc   [2] CHAM CONSONANT SIGN YA..CHAM CONSONANT SIGN RA
        "\daa35","\daa36",  # ; Consonant_Medial # Mn   [2] CHAM CONSONANT SIGN LA..CHAM CONSONANT SIGN WA
        "\d1171d","\d1171e","\d1171f",  # ; Consonant_Medial # Mn   [3] AHOM CONSONANT SIGN MEDIAL LA..AHOM CONSONANT SIGN MEDIAL LIGATING RA
        "\d11a3b","\d11a3c","\d11a3d","\d11a3e",  # ; Consonant_Medial # Mn   [4] ZANABAZAR SQUARE CLUSTER-FINAL LETTER YA..ZANABAZAR SQUARE CLUSTER-FINAL LETTER VA
        "\d11D47",  # ; Consonant_Medial # Mn       MASARAM GONDI RA-KARA
        "\d1930","\d1931",  # ; Consonant_Final # Mc   [2] LIMBU SMALL LETTER KA..LIMBU SMALL LETTER NGA
        "\d1933","\d1934","\d1935","\d1936","\d1937","\d1938",  # ; Consonant_Final # Mc   [6] LIMBU SMALL LETTER TA..LIMBU SMALL LETTER LA
        "\d1939",  # ; Consonant_Final # Mn       LIMBU SIGN MUKPHRENG
        "\d19c1","\d19c2","\d19c3","\d19c4","\d19c5","\d19c6","\d19c7",  # ; Consonant_Final # Lo   [7] NEW TAI LUE LETTER FINAL V..NEW TAI LUE LETTER FINAL B
        "\d1a58","\d1a59",  # ; Consonant_Final # Mn   [2] TAI THAM SIGN MAI KANG LAI..TAI THAM CONSONANT SIGN FINAL NGA
        "\d1bbe","\d1bbf",  # ; Consonant_Final # Lo   [2] SUNDANESE LETTER FINAL K..SUNDANESE LETTER FINAL M
        "\d1bf0","\d1bf1",  # ; Consonant_Final # Mn   [2] BATAK CONSONANT SIGN NG..BATAK CONSONANT SIGN H
        "\d1c2d","\d1c2e","\d1c2f","\d1c30","\d1c31","\d1c32","\d1c33",  # ; Consonant_Final # Mn   [7] LEPCHA CONSONANT SIGN K..LEPCHA CONSONANT SIGN T
        "\dA8B4",  # ; Consonant_Final # Mc       SAURASHTRA CONSONANT SIGN HAARU
        "\da94f","\da950","\da951",  # ; Consonant_Final # Mn   [3] REJANG CONSONANT SIGN NG..REJANG CONSONANT SIGN R
        "\dA952",  # ; Consonant_Final # Mc       REJANG CONSONANT SIGN H
        "\daa40","\daa41","\daa42",  # ; Consonant_Final # Lo   [3] CHAM LETTER FINAL K..CHAM LETTER FINAL NG
        "\dAA43",  # ; Consonant_Final # Mn       CHAM CONSONANT SIGN FINAL NG
        "\daa44","\daa45","\daa46","\daa47","\daa48","\daa49","\daa4a","\daa4b",  # ; Consonant_Final # Lo   [8] CHAM LETTER FINAL CH..CHAM LETTER FINAL SS
        "\dAA4C",  # ; Consonant_Final # Mn       CHAM CONSONANT SIGN FINAL M
        "\dAA4D",  # ; Consonant_Final # Mc       CHAM CONSONANT SIGN FINAL H
        "\dabdb","\dabdc","\dabdd","\dabde","\dabdf","\dabe0","\dabe1","\dabe2",  # ; Consonant_Final # Lo   [8] MEETEI MAYEK LETTER KOK LONSUM..MEETEI MAYEK LETTER I LONSUM
        "\d11a8a","\d11a8b","\d11a8c","\d11a8d","\d11a8e","\d11a8f","\d11a90","\d11a91","\d11a92","\d11a93","\d11a94","\d11a95",  # ; Consonant_Final # Mn  [12] SOYOMBO FINAL CONSONANT SIGN G..SOYOMBO FINAL CONSONANT SIGN -A
        "\d0f88","\d0f89","\d0f8a","\d0f8b","\d0f8c",  # ; Consonant_Head_Letter # Lo   [5] TIBETAN SIGN LCE TSA CAN..TIBETAN SIGN INVERTED MCHU CAN
        "\d0B83",  # ; Modifying_Letter # Lo       TAMIL SIGN VISARGA
        "\d1970","\d1971","\d1972","\d1973","\d1974",  # ; Tone_Letter # Lo   [5] TAI LE LETTER TONE-2..TAI LE LETTER TONE-6
        "\dAAC0",  # ; Tone_Letter # Lo       TAI VIET TONE MAI NUENG
        "\dAAC2",  # ; Tone_Letter # Lo       TAI VIET TONE MAI SONG
        "\d0e48","\d0e49","\d0e4a","\d0e4b",  # ; Tone_Mark # Mn   [4] THAI CHARACTER MAI EK..THAI CHARACTER MAI CHATTAWA
        "\d0ec8","\d0ec9","\d0eca","\d0ecb",  # ; Tone_Mark # Mn   [4] LAO TONE MAI EK..LAO TONE MAI CATAWA
        "\d1037",  # ; Tone_Mark # Mn       MYANMAR SIGN DOT BELOW
        "\d1063","\d1064",  # ; Tone_Mark # Mc   [2] MYANMAR TONE MARK SGAW KAREN HATHI..MYANMAR TONE MARK SGAW KAREN KE PHO
        "\d1069","\d106a","\d106b","\d106c","\d106d",  # ; Tone_Mark # Mc   [5] MYANMAR SIGN WESTERN PWO KAREN TONE-1..MYANMAR SIGN WESTERN PWO KAREN TONE-5
        "\d1087","\d1088","\d1089","\d108a","\d108b","\d108c",  # ; Tone_Mark # Mc   [6] MYANMAR SIGN SHAN TONE-2..MYANMAR SIGN SHAN COUNCIL TONE-3
        "\d108D",  # ; Tone_Mark # Mn       MYANMAR SIGN SHAN COUNCIL EMPHATIC TONE
        "\d108F",  # ; Tone_Mark # Mc       MYANMAR SIGN RUMAI PALAUNG TONE-5
        "\d109a","\d109b",  # ; Tone_Mark # Mc   [2] MYANMAR SIGN KHAMTI TONE-1..MYANMAR SIGN KHAMTI TONE-3
        "\d19c8","\d19c9",  # ; Tone_Mark # Lo   [2] NEW TAI LUE TONE MARK-1..NEW TAI LUE TONE MARK-2
        "\d1a75","\d1a76","\d1a77","\d1a78","\d1a79",  # ; Tone_Mark # Mn   [5] TAI THAM SIGN TONE-1..TAI THAM SIGN KHUEN TONE-5
        "\da92b","\da92c","\da92d",  # ; Tone_Mark # Mn   [3] KAYAH LI TONE PLOPHU..KAYAH LI TONE CALYA PLOPHU
        "\dAA7B",  # ; Tone_Mark # Mc       MYANMAR SIGN PAO KAREN TONE
        "\dAA7C",  # ; Tone_Mark # Mn       MYANMAR SIGN TAI LAING TONE-2
        "\dAA7D",  # ; Tone_Mark # Mc       MYANMAR SIGN TAI LAING TONE-5
        "\dAABF",  # ; Tone_Mark # Mn       TAI VIET TONE MAI EK
        "\dAAC1",  # ; Tone_Mark # Mn       TAI VIET TONE MAI THO
        "\dABEC",  # ; Tone_Mark # Mc       MEETEI MAYEK LUM IYEK
        "\d0A71",  # ; Gemination_Mark # Mn       GURMUKHI ADDAK
        "\d11237",  # ; Gemination_Mark # Mn       KHOJKI SIGN SHADDA
        "\d11A98",  # ; Gemination_Mark # Mn       SOYOMBO GEMINATION MARK
        "\d0951","\d0952",  # ; Cantillation_Mark # Mn   [2] DEVANAGARI STRESS SIGN UDATTA..DEVANAGARI STRESS SIGN ANUDATTA
        "\d0afa","\d0afb","\d0afc",  # ; Cantillation_Mark # Mn   [3] GUJARATI SIGN SUKUN..GUJARATI SIGN MADDAH
        "\d1cd0","\d1cd1","\d1cd2",  # ; Cantillation_Mark # Mn   [3] VEDIC TONE KARSHANA..VEDIC TONE PRENKHA
        "\d1cd4","\d1cd5","\d1cd6","\d1cd7","\d1cd8","\d1cd9","\d1cda","\d1cdb","\d1cdc","\d1cdd","\d1cde","\d1cdf","\d1ce0",  # ; Cantillation_Mark # Mn  [13] VEDIC SIGN YAJURVEDIC MIDLINE SVARITA..VEDIC TONE RIGVEDIC KASHMIRI INDEPENDENT SVARITA
        "\d1CE1",  # ; Cantillation_Mark # Mc       VEDIC TONE ATHARVAVEDIC INDEPENDENT SVARITA
        "\d1CF4",  # ; Cantillation_Mark # Mn       VEDIC TONE CANDRA ABOVE
        "\d1CF7",  # ; Cantillation_Mark # Mc       VEDIC SIGN ATIKRAMA
        "\d1cf8","\d1cf9",  # ; Cantillation_Mark # Mn   [2] VEDIC TONE RING ABOVE..VEDIC TONE DOUBLE RING ABOVE
        "\da8e0","\da8e1","\da8e2","\da8e3","\da8e4","\da8e5","\da8e6","\da8e7","\da8e8","\da8e9","\da8ea","\da8eb","\da8ec","\da8ed","\da8ee","\da8ef","\da8f0","\da8f1",  # ; Cantillation_Mark # Mn  [18] COMBINING DEVANAGARI DIGIT ZERO..COMBINING DEVANAGARI SIGN AVAGRAHA
        "\d1123E",  # ; Cantillation_Mark # Mn       KHOJKI SIGN SUKUN
        "\d11366","\d11367","\d11368","\d11369","\d1136a","\d1136b","\d1136c",  # ; Cantillation_Mark # Mn   [7] COMBINING GRANTHA DIGIT ZERO..COMBINING GRANTHA DIGIT SIX
        "\d11370","\d11371","\d11372","\d11373","\d11374",  # ; Cantillation_Mark # Mn   [5] COMBINING GRANTHA LETTER A..COMBINING GRANTHA LETTER PA
        "\d17c9","\d17ca",  # ; Register_Shifter # Mn   [2] KHMER SIGN MUUSIKATOAN..KHMER SIGN TRIISAP
        "\d00b2","\d00b3",  # ; Syllable_Modifier # No   [2] SUPERSCRIPT TWO..SUPERSCRIPT THREE
        "\d0F35",  # ; Syllable_Modifier # Mn       TIBETAN MARK NGAS BZUNG NYI ZLA
        "\d0F37",  # ; Syllable_Modifier # Mn       TIBETAN MARK NGAS BZUNG SGOR RTAGS
        "\d0FC6",  # ; Syllable_Modifier # Mn       TIBETAN SYMBOL PADMA GDAN
        "\d17CB",  # ; Syllable_Modifier # Mn       KHMER SIGN BANTOC
        "\d17ce","\d17cf","\d17d0",  # ; Syllable_Modifier # Mn   [3] KHMER SIGN KAKABAT..KHMER SIGN SAMYOK SANNYA
        "\d17D3",  # ; Syllable_Modifier # Mn       KHMER SIGN BATHAMASAT
        "\d17DD",  # ; Syllable_Modifier # Mn       KHMER SIGN ATTHACAN
        "\d193B",  # ; Syllable_Modifier # Mn       LIMBU SIGN SA-I
        "\d1a7b","\d1a7c",  # ; Syllable_Modifier # Mn   [2] TAI THAM SIGN MAI SAM..TAI THAM SIGN KHUEN-LUE KARAN
        "\d1A7F",  # ; Syllable_Modifier # Mn       TAI THAM COMBINING CRYPTOGRAMMIC DOT
        "\d1C36",  # ; Syllable_Modifier # Mn       LEPCHA SIGN RAN
        "\d1DFB",  # ; Syllable_Modifier # Mn       COMBINING DELETION MARK
        "\d2074",  # ; Syllable_Modifier # No       SUPERSCRIPT FOUR
        "\d2082","\d2083","\d2084",  # ; Syllable_Modifier # No   [3] SUBSCRIPT TWO..SUBSCRIPT FOUR
        "\d11A33",  # ; Syllable_Modifier # Mn       ZANABAZAR SQUARE FINAL CONSONANT MARK
        "\d0E4C",  # ; Consonant_Killer # Mn       THAI CHARACTER THANTHAKHAT
        "\d17CD",  # ; Consonant_Killer # Mn       KHMER SIGN TOANDAKHIAT
        "\d200C",  # ; Non_Joiner # Cf       ZERO WIDTH NON-JOINER
        "\d200D",  # ; Joiner # Cf       ZERO WIDTH JOINER
        "\d1107F",  # ; Number_Joiner # Mn       BRAHMI NUMBER JOINER
        "\d0030","\d0031","\d0032","\d0033","\d0034","\d0035","\d0036","\d0037","\d0038","\d0039",  # ; Number # Nd  [10] DIGIT ZERO..DIGIT NINE
        "\d0966","\d0967","\d0968","\d0969","\d096a","\d096b","\d096c","\d096d","\d096e","\d096f",  # ; Number # Nd  [10] DEVANAGARI DIGIT ZERO..DEVANAGARI DIGIT NINE
        "\d09e6","\d09e7","\d09e8","\d09e9","\d09ea","\d09eb","\d09ec","\d09ed","\d09ee","\d09ef",  # ; Number # Nd  [10] BENGALI DIGIT ZERO..BENGALI DIGIT NINE
        "\d0a66","\d0a67","\d0a68","\d0a69","\d0a6a","\d0a6b","\d0a6c","\d0a6d","\d0a6e","\d0a6f",  # ; Number # Nd  [10] GURMUKHI DIGIT ZERO..GURMUKHI DIGIT NINE
        "\d0ae6","\d0ae7","\d0ae8","\d0ae9","\d0aea","\d0aeb","\d0aec","\d0aed","\d0aee","\d0aef",  # ; Number # Nd  [10] GUJARATI DIGIT ZERO..GUJARATI DIGIT NINE
        "\d0b66","\d0b67","\d0b68","\d0b69","\d0b6a","\d0b6b","\d0b6c","\d0b6d","\d0b6e","\d0b6f",  # ; Number # Nd  [10] ORIYA DIGIT ZERO..ORIYA DIGIT NINE
        "\d0be6","\d0be7","\d0be8","\d0be9","\d0bea","\d0beb","\d0bec","\d0bed","\d0bee","\d0bef",  # ; Number # Nd  [10] TAMIL DIGIT ZERO..TAMIL DIGIT NINE
        "\d0c66","\d0c67","\d0c68","\d0c69","\d0c6a","\d0c6b","\d0c6c","\d0c6d","\d0c6e","\d0c6f",  # ; Number # Nd  [10] TELUGU DIGIT ZERO..TELUGU DIGIT NINE
        "\d0ce6","\d0ce7","\d0ce8","\d0ce9","\d0cea","\d0ceb","\d0cec","\d0ced","\d0cee","\d0cef",  # ; Number # Nd  [10] KANNADA DIGIT ZERO..KANNADA DIGIT NINE
        "\d0d66","\d0d67","\d0d68","\d0d69","\d0d6a","\d0d6b","\d0d6c","\d0d6d","\d0d6e","\d0d6f",  # ; Number # Nd  [10] MALAYALAM DIGIT ZERO..MALAYALAM DIGIT NINE
        "\d0de6","\d0de7","\d0de8","\d0de9","\d0dea","\d0deb","\d0dec","\d0ded","\d0dee","\d0def",  # ; Number # Nd  [10] SINHALA LITH DIGIT ZERO..SINHALA LITH DIGIT NINE
        "\d0e50","\d0e51","\d0e52","\d0e53","\d0e54","\d0e55","\d0e56","\d0e57","\d0e58","\d0e59",  # ; Number # Nd  [10] THAI DIGIT ZERO..THAI DIGIT NINE
        "\d0ed0","\d0ed1","\d0ed2","\d0ed3","\d0ed4","\d0ed5","\d0ed6","\d0ed7","\d0ed8","\d0ed9",  # ; Number # Nd  [10] LAO DIGIT ZERO..LAO DIGIT NINE
        "\d0f20","\d0f21","\d0f22","\d0f23","\d0f24","\d0f25","\d0f26","\d0f27","\d0f28","\d0f29",  # ; Number # Nd  [10] TIBETAN DIGIT ZERO..TIBETAN DIGIT NINE
        "\d0f2a","\d0f2b","\d0f2c","\d0f2d","\d0f2e","\d0f2f","\d0f30","\d0f31","\d0f32","\d0f33",  # ; Number # No  [10] TIBETAN DIGIT HALF ONE..TIBETAN DIGIT HALF ZERO
        "\d1040","\d1041","\d1042","\d1043","\d1044","\d1045","\d1046","\d1047","\d1048","\d1049",  # ; Number # Nd  [10] MYANMAR DIGIT ZERO..MYANMAR DIGIT NINE
        "\d1090","\d1091","\d1092","\d1093","\d1094","\d1095","\d1096","\d1097","\d1098","\d1099",  # ; Number # Nd  [10] MYANMAR SHAN DIGIT ZERO..MYANMAR SHAN DIGIT NINE
        "\d17e0","\d17e1","\d17e2","\d17e3","\d17e4","\d17e5","\d17e6","\d17e7","\d17e8","\d17e9",  # ; Number # Nd  [10] KHMER DIGIT ZERO..KHMER DIGIT NINE
        "\d1946","\d1947","\d1948","\d1949","\d194a","\d194b","\d194c","\d194d","\d194e","\d194f",  # ; Number # Nd  [10] LIMBU DIGIT ZERO..LIMBU DIGIT NINE
        "\d19d0","\d19d1","\d19d2","\d19d3","\d19d4","\d19d5","\d19d6","\d19d7","\d19d8","\d19d9",  # ; Number # Nd  [10] NEW TAI LUE DIGIT ZERO..NEW TAI LUE DIGIT NINE
        "\d1a80","\d1a81","\d1a82","\d1a83","\d1a84","\d1a85","\d1a86","\d1a87","\d1a88","\d1a89",  # ; Number # Nd  [10] TAI THAM HORA DIGIT ZERO..TAI THAM HORA DIGIT NINE
        "\d1a90","\d1a91","\d1a92","\d1a93","\d1a94","\d1a95","\d1a96","\d1a97","\d1a98","\d1a99",  # ; Number # Nd  [10] TAI THAM THAM DIGIT ZERO..TAI THAM THAM DIGIT NINE
        "\d1b50","\d1b51","\d1b52","\d1b53","\d1b54","\d1b55","\d1b56","\d1b57","\d1b58","\d1b59",  # ; Number # Nd  [10] BALINESE DIGIT ZERO..BALINESE DIGIT NINE
        "\d1bb0","\d1bb1","\d1bb2","\d1bb3","\d1bb4","\d1bb5","\d1bb6","\d1bb7","\d1bb8","\d1bb9",  # ; Number # Nd  [10] SUNDANESE DIGIT ZERO..SUNDANESE DIGIT NINE
        "\d1c40","\d1c41","\d1c42","\d1c43","\d1c44","\d1c45","\d1c46","\d1c47","\d1c48","\d1c49",  # ; Number # Nd  [10] LEPCHA DIGIT ZERO..LEPCHA DIGIT NINE
        "\da8d0","\da8d1","\da8d2","\da8d3","\da8d4","\da8d5","\da8d6","\da8d7","\da8d8","\da8d9",  # ; Number # Nd  [10] SAURASHTRA DIGIT ZERO..SAURASHTRA DIGIT NINE
        "\da900","\da901","\da902","\da903","\da904","\da905","\da906","\da907","\da908","\da909",  # ; Number # Nd  [10] KAYAH LI DIGIT ZERO..KAYAH LI DIGIT NINE
        "\da9d0","\da9d1","\da9d2","\da9d3","\da9d4","\da9d5","\da9d6","\da9d7","\da9d8","\da9d9",  # ; Number # Nd  [10] JAVANESE DIGIT ZERO..JAVANESE DIGIT NINE
        "\da9f0","\da9f1","\da9f2","\da9f3","\da9f4","\da9f5","\da9f6","\da9f7","\da9f8","\da9f9",  # ; Number # Nd  [10] MYANMAR TAI LAING DIGIT ZERO..MYANMAR TAI LAING DIGIT NINE
        "\daa50","\daa51","\daa52","\daa53","\daa54","\daa55","\daa56","\daa57","\daa58","\daa59",  # ; Number # Nd  [10] CHAM DIGIT ZERO..CHAM DIGIT NINE
        "\dabf0","\dabf1","\dabf2","\dabf3","\dabf4","\dabf5","\dabf6","\dabf7","\dabf8","\dabf9",  # ; Number # Nd  [10] MEETEI MAYEK DIGIT ZERO..MEETEI MAYEK DIGIT NINE
        "\d10a40","\d10a41","\d10a42","\d10a43","\d10a44","\d10a45","\d10a46","\d10a47",  # ; Number # No   [8] KHAROSHTHI DIGIT ONE..KHAROSHTHI NUMBER ONE THOUSAND
        "\d11066","\d11067","\d11068","\d11069","\d1106a","\d1106b","\d1106c","\d1106d","\d1106e","\d1106f",  # ; Number # Nd  [10] BRAHMI DIGIT ZERO..BRAHMI DIGIT NINE
        "\d11136","\d11137","\d11138","\d11139","\d1113a","\d1113b","\d1113c","\d1113d","\d1113e","\d1113f",  # ; Number # Nd  [10] CHAKMA DIGIT ZERO..CHAKMA DIGIT NINE
        "\d111d0","\d111d1","\d111d2","\d111d3","\d111d4","\d111d5","\d111d6","\d111d7","\d111d8","\d111d9",  # ; Number # Nd  [10] SHARADA DIGIT ZERO..SHARADA DIGIT NINE
        "\d111e1","\d111e2","\d111e3","\d111e4","\d111e5","\d111e6","\d111e7","\d111e8","\d111e9","\d111ea","\d111eb","\d111ec","\d111ed","\d111ee","\d111ef","\d111f0","\d111f1","\d111f2","\d111f3","\d111f4",  # ; Number # No  [20] SINHALA ARCHAIC DIGIT ONE..SINHALA ARCHAIC NUMBER ONE THOUSAND
        "\d112f0","\d112f1","\d112f2","\d112f3","\d112f4","\d112f5","\d112f6","\d112f7","\d112f8","\d112f9",  # ; Number # Nd  [10] KHUDAWADI DIGIT ZERO..KHUDAWADI DIGIT NINE
        "\d11450","\d11451","\d11452","\d11453","\d11454","\d11455","\d11456","\d11457","\d11458","\d11459",  # ; Number # Nd  [10] NEWA DIGIT ZERO..NEWA DIGIT NINE
        "\d114d0","\d114d1","\d114d2","\d114d3","\d114d4","\d114d5","\d114d6","\d114d7","\d114d8","\d114d9",  # ; Number # Nd  [10] TIRHUTA DIGIT ZERO..TIRHUTA DIGIT NINE
        "\d11650","\d11651","\d11652","\d11653","\d11654","\d11655","\d11656","\d11657","\d11658","\d11659",  # ; Number # Nd  [10] MODI DIGIT ZERO..MODI DIGIT NINE
        "\d116c0","\d116c1","\d116c2","\d116c3","\d116c4","\d116c5","\d116c6","\d116c7","\d116c8","\d116c9",  # ; Number # Nd  [10] TAKRI DIGIT ZERO..TAKRI DIGIT NINE
        "\d11730","\d11731","\d11732","\d11733","\d11734","\d11735","\d11736","\d11737","\d11738","\d11739",  # ; Number # Nd  [10] AHOM DIGIT ZERO..AHOM DIGIT NINE
        "\d1173a","\d1173b",  # ; Number # No   [2] AHOM NUMBER TEN..AHOM NUMBER TWENTY
        "\d11c50","\d11c51","\d11c52","\d11c53","\d11c54","\d11c55","\d11c56","\d11c57","\d11c58","\d11c59",  # ; Number # Nd  [10] BHAIKSUKI DIGIT ZERO..BHAIKSUKI DIGIT NINE
        "\d11c5a","\d11c5b","\d11c5c","\d11c5d","\d11c5e","\d11c5f","\d11c60","\d11c61","\d11c62","\d11c63","\d11c64","\d11c65","\d11c66","\d11c67","\d11c68","\d11c69","\d11c6a","\d11c6b","\d11c6c",  # ; Number # No  [19] BHAIKSUKI NUMBER ONE..BHAIKSUKI HUNDREDS UNIT MARK
        "\d11d50","\d11d51","\d11d52","\d11d53","\d11d54","\d11d55","\d11d56","\d11d57","\d11d58","\d11d59",  # ; Number # Nd  [10] MASARAM GONDI DIGIT ZERO..MASARAM GONDI DIGIT NINE
        "\d11052","\d11053","\d11054","\d11055","\d11056","\d11057","\d11058","\d11059","\d1105a","\d1105b","\d1105c","\d1105d","\d1105e","\d1105f","\d11060","\d11061","\d11062","\d11063","\d11064","\d11065",  # ; Brahmi_Joining_Number # No  [20] BRAHMI NUMBER ONE..BRAHMI NUMBER ONE THOUSAND
    ]
    test_data.each do |string|
      assert @validator.valid_encoding?(string), "U10_IndicSyllabicCategory: #{string}"
      assert string.force_encoding("UTF-8").valid_encoding?, "U10_IndicSyllabicCategory: #{string}" if @vercheck
    end
  end

end

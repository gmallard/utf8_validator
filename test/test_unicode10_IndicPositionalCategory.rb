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
class TestUnicode10IndicPositionalCategory < Test::Unit::TestCase
  #
  def setup
    @validator = UTF8::Validator.new
    @vercheck = ((RUBY_VERSION =~ /1.9/) or (RUBY_VERSION =~ /2./)) ? true : false
  end

  #
  def teardown
    @validator = nil
  end

  def test_unicode10_IndicPositionalCategory
    test_data = [
        "\u0903",  # ; Right # Mc       DEVANAGARI SIGN VISARGA
        "\u093B",  # ; Right # Mc       DEVANAGARI VOWEL SIGN OOE
        "\u093E",  # ; Right # Mc       DEVANAGARI VOWEL SIGN AA
        "\u0940",  # ; Right # Mc       DEVANAGARI VOWEL SIGN II
        "\u0949","\u094a","\u094b","\u094c",  # ; Right # Mc   [4] DEVANAGARI VOWEL SIGN CANDRA O..DEVANAGARI VOWEL SIGN AU
        "\u094F",  # ; Right # Mc       DEVANAGARI VOWEL SIGN AW
        "\u0982","\u0983",  # ; Right # Mc   [2] BENGALI SIGN ANUSVARA..BENGALI SIGN VISARGA
        "\u09BE",  # ; Right # Mc       BENGALI VOWEL SIGN AA
        "\u09C0",  # ; Right # Mc       BENGALI VOWEL SIGN II
        "\u09D7",  # ; Right # Mc       BENGALI AU LENGTH MARK
        "\u0A03",  # ; Right # Mc       GURMUKHI SIGN VISARGA
        "\u0A3E",  # ; Right # Mc       GURMUKHI VOWEL SIGN AA
        "\u0A40",  # ; Right # Mc       GURMUKHI VOWEL SIGN II
        "\u0A83",  # ; Right # Mc       GUJARATI SIGN VISARGA
        "\u0ABE",  # ; Right # Mc       GUJARATI VOWEL SIGN AA
        "\u0AC0",  # ; Right # Mc       GUJARATI VOWEL SIGN II
        "\u0acb","\u0acc",  # ; Right # Mc   [2] GUJARATI VOWEL SIGN O..GUJARATI VOWEL SIGN AU
        "\u0b02","\u0b03",  # ; Right # Mc   [2] ORIYA SIGN ANUSVARA..ORIYA SIGN VISARGA
        "\u0B3E",  # ; Right # Mc       ORIYA VOWEL SIGN AA
        "\u0B40",  # ; Right # Mc       ORIYA VOWEL SIGN II
        "\u0bbe","\u0bbf",  # ; Right # Mc   [2] TAMIL VOWEL SIGN AA..TAMIL VOWEL SIGN I
        "\u0bc1","\u0bc2",  # ; Right # Mc   [2] TAMIL VOWEL SIGN U..TAMIL VOWEL SIGN UU
        "\u0BD7",  # ; Right # Mc       TAMIL AU LENGTH MARK
        "\u0c01","\u0c02","\u0c03",  # ; Right # Mc   [3] TELUGU SIGN CANDRABINDU..TELUGU SIGN VISARGA
        "\u0c41","\u0c42","\u0c43","\u0c44",  # ; Right # Mc   [4] TELUGU VOWEL SIGN U..TELUGU VOWEL SIGN VOCALIC RR
        "\u0c82","\u0c83",  # ; Right # Mc   [2] KANNADA SIGN ANUSVARA..KANNADA SIGN VISARGA
        "\u0CBE",  # ; Right # Mc       KANNADA VOWEL SIGN AA
        "\u0cc1","\u0cc2","\u0cc3","\u0cc4",  # ; Right # Mc   [4] KANNADA VOWEL SIGN U..KANNADA VOWEL SIGN VOCALIC RR
        "\u0cd5","\u0cd6",  # ; Right # Mc   [2] KANNADA LENGTH MARK..KANNADA AI LENGTH MARK
        "\u0d02","\u0d03",  # ; Right # Mc   [2] MALAYALAM SIGN ANUSVARA..MALAYALAM SIGN VISARGA
        "\u0d3e","\u0d3f","\u0d40",  # ; Right # Mc   [3] MALAYALAM VOWEL SIGN AA..MALAYALAM VOWEL SIGN II
        "\u0d41","\u0d42",  # ; Right # Mn   [2] MALAYALAM VOWEL SIGN U..MALAYALAM VOWEL SIGN UU
        "\u0D57",  # ; Right # Mc       MALAYALAM AU LENGTH MARK
        "\u0d82","\u0d83",  # ; Right # Mc   [2] SINHALA SIGN ANUSVARAYA..SINHALA SIGN VISARGAYA
        "\u0dcf","\u0dd0","\u0dd1",  # ; Right # Mc   [3] SINHALA VOWEL SIGN AELA-PILLA..SINHALA VOWEL SIGN DIGA AEDA-PILLA
        "\u0DD8",  # ; Right # Mc       SINHALA VOWEL SIGN GAETTA-PILLA
        "\u0DDF",  # ; Right # Mc       SINHALA VOWEL SIGN GAYANUKITTA
        "\u0df2","\u0df3",  # ; Right # Mc   [2] SINHALA VOWEL SIGN DIGA GAETTA-PILLA..SINHALA VOWEL SIGN DIGA GAYANUKITTA
        "\u0E30",  # ; Right # Lo       THAI CHARACTER SARA A
        "\u0e32","\u0e33",  # ; Right # Lo   [2] THAI CHARACTER SARA AA..THAI CHARACTER SARA AM
        "\u0E45",  # ; Right # Lo       THAI CHARACTER LAKKHANGYAO
        "\u0EB0",  # ; Right # Lo       LAO VOWEL SIGN A
        "\u0eb2","\u0eb3",  # ; Right # Lo   [2] LAO VOWEL SIGN AA..LAO VOWEL SIGN AM
        "\u0F3E",  # ; Right # Mc       TIBETAN SIGN YAR TSHES
        "\u0F7F",  # ; Right # Mc       TIBETAN SIGN RNAM BCAD
        "\u102b","\u102c",  # ; Right # Mc   [2] MYANMAR VOWEL SIGN TALL AA..MYANMAR VOWEL SIGN AA
        "\u1038",  # ; Right # Mc       MYANMAR SIGN VISARGA
        "\u103B",  # ; Right # Mc       MYANMAR CONSONANT SIGN MEDIAL YA
        "\u1056","\u1057",  # ; Right # Mc   [2] MYANMAR VOWEL SIGN VOCALIC R..MYANMAR VOWEL SIGN VOCALIC RR
        "\u1062","\u1063","\u1064",  # ; Right # Mc   [3] MYANMAR VOWEL SIGN SGAW KAREN EU..MYANMAR TONE MARK SGAW KAREN KE PHO
        "\u1067","\u1068","\u1069","\u106a","\u106b","\u106c","\u106d",  # ; Right # Mc   [7] MYANMAR VOWEL SIGN WESTERN PWO KAREN EU..MYANMAR SIGN WESTERN PWO KAREN TONE-5
        "\u1083",  # ; Right # Mc       MYANMAR VOWEL SIGN SHAN AA
        "\u1087","\u1088","\u1089","\u108a","\u108b","\u108c",  # ; Right # Mc   [6] MYANMAR SIGN SHAN TONE-2..MYANMAR SIGN SHAN COUNCIL TONE-3
        "\u108F",  # ; Right # Mc       MYANMAR SIGN RUMAI PALAUNG TONE-5
        "\u109a","\u109b","\u109c",  # ; Right # Mc   [3] MYANMAR SIGN KHAMTI TONE-1..MYANMAR VOWEL SIGN AITON A
        "\u17B6",  # ; Right # Mc       KHMER VOWEL SIGN AA
        "\u17c7","\u17c8",  # ; Right # Mc   [2] KHMER SIGN REAHMUK..KHMER SIGN YUUKALEAPINTU
        "\u1923","\u1924",  # ; Right # Mc   [2] LIMBU VOWEL SIGN EE..LIMBU VOWEL SIGN AI
        "\u1929","\u192a","\u192b",  # ; Right # Mc   [3] LIMBU SUBJOINED LETTER YA..LIMBU SUBJOINED LETTER WA
        "\u1930","\u1931",  # ; Right # Mc   [2] LIMBU SMALL LETTER KA..LIMBU SMALL LETTER NGA
        "\u1933","\u1934","\u1935","\u1936","\u1937","\u1938",  # ; Right # Mc   [6] LIMBU SMALL LETTER TA..LIMBU SMALL LETTER LA
        "\u19b0","\u19b1","\u19b2","\u19b3","\u19b4",  # ; Right # Lo   [5] NEW TAI LUE VOWEL SIGN VOWEL SHORTENER..NEW TAI LUE VOWEL SIGN UU
        "\u19b8","\u19b9",  # ; Right # Lo   [2] NEW TAI LUE VOWEL SIGN OA..NEW TAI LUE VOWEL SIGN UE
        "\u19bb","\u19bc","\u19bd","\u19be","\u19bf","\u19c0",  # ; Right # Lo   [6] NEW TAI LUE VOWEL SIGN AAY..NEW TAI LUE VOWEL SIGN IY
        "\u19c8","\u19c9",  # ; Right # Lo   [2] NEW TAI LUE TONE MARK-1..NEW TAI LUE TONE MARK-2
        "\u1A1A",  # ; Right # Mc       BUGINESE VOWEL SIGN O
        "\u1A57",  # ; Right # Mc       TAI THAM CONSONANT SIGN LA TANG LAI
        "\u1A61",  # ; Right # Mc       TAI THAM VOWEL SIGN A
        "\u1a63","\u1a64",  # ; Right # Mc   [2] TAI THAM VOWEL SIGN AA..TAI THAM VOWEL SIGN TALL AA
        "\u1A6D",  # ; Right # Mc       TAI THAM VOWEL SIGN OY
        "\u1B04",  # ; Right # Mc       BALINESE SIGN BISAH
        "\u1B35",  # ; Right # Mc       BALINESE VOWEL SIGN TEDUNG
        "\u1B44",  # ; Right # Mc       BALINESE ADEG ADEG
        "\u1B82",  # ; Right # Mc       SUNDANESE SIGN PANGWISAD
        "\u1BA1",  # ; Right # Mc       SUNDANESE CONSONANT SIGN PAMINGKAL
        "\u1BA7",  # ; Right # Mc       SUNDANESE VOWEL SIGN PANOLONG
        "\u1BAA",  # ; Right # Mc       SUNDANESE SIGN PAMAAEH
        "\u1BE7",  # ; Right # Mc       BATAK VOWEL SIGN E
        "\u1bea","\u1beb","\u1bec",  # ; Right # Mc   [3] BATAK VOWEL SIGN I..BATAK VOWEL SIGN O
        "\u1BEE",  # ; Right # Mc       BATAK VOWEL SIGN U
        "\u1bf2","\u1bf3",  # ; Right # Mc   [2] BATAK PANGOLAT..BATAK PANONGONAN
        "\u1c24","\u1c25","\u1c26",  # ; Right # Mc   [3] LEPCHA SUBJOINED LETTER YA..LEPCHA VOWEL SIGN AA
        "\u1c2a","\u1c2b",  # ; Right # Mc   [2] LEPCHA VOWEL SIGN U..LEPCHA VOWEL SIGN UU
        "\u1CE1",  # ; Right # Mc       VEDIC TONE ATHARVAVEDIC INDEPENDENT SVARITA
        "\u1CF7",  # ; Right # Mc       VEDIC SIGN ATIKRAMA
        "\ua823","\ua824",  # ; Right # Mc   [2] SYLOTI NAGRI VOWEL SIGN A..SYLOTI NAGRI VOWEL SIGN I
        "\uA827",  # ; Right # Mc       SYLOTI NAGRI VOWEL SIGN OO
        "\ua880","\ua881",  # ; Right # Mc   [2] SAURASHTRA SIGN ANUSVARA..SAURASHTRA SIGN VISARGA
        "\ua8b4","\ua8b5","\ua8b6","\ua8b7","\ua8b8","\ua8b9","\ua8ba","\ua8bb","\ua8bc","\ua8bd","\ua8be","\ua8bf","\ua8c0","\ua8c1","\ua8c2","\ua8c3",  # ; Right # Mc  [16] SAURASHTRA CONSONANT SIGN HAARU..SAURASHTRA VOWEL SIGN AU
        "\ua952","\ua953",  # ; Right # Mc   [2] REJANG CONSONANT SIGN H..REJANG VIRAMA
        "\uA983",  # ; Right # Mc       JAVANESE SIGN WIGNYAN
        "\ua9b4","\ua9b5",  # ; Right # Mc   [2] JAVANESE VOWEL SIGN TARUNG..JAVANESE VOWEL SIGN TOLONG
        "\ua9bd","\ua9be",  # ; Right # Mc   [2] JAVANESE CONSONANT SIGN KERET..JAVANESE CONSONANT SIGN PENGKAL
        "\uAA33",  # ; Right # Mc       CHAM CONSONANT SIGN YA
        "\uAA4D",  # ; Right # Mc       CHAM CONSONANT SIGN FINAL H
        "\uAA7B",  # ; Right # Mc       MYANMAR SIGN PAO KAREN TONE
        "\uAA7D",  # ; Right # Mc       MYANMAR SIGN TAI LAING TONE-5
        "\uAAB1",  # ; Right # Lo       TAI VIET VOWEL AA
        "\uAABA",  # ; Right # Lo       TAI VIET VOWEL UA
        "\uAABD",  # ; Right # Lo       TAI VIET VOWEL AN
        "\uAAEF",  # ; Right # Mc       MEETEI MAYEK VOWEL SIGN AAU
        "\uAAF5",  # ; Right # Mc       MEETEI MAYEK VOWEL SIGN VISARGA
        "\uabe3","\uabe4",  # ; Right # Mc   [2] MEETEI MAYEK VOWEL SIGN ONAP..MEETEI MAYEK VOWEL SIGN INAP
        "\uabe6","\uabe7",  # ; Right # Mc   [2] MEETEI MAYEK VOWEL SIGN YENAP..MEETEI MAYEK VOWEL SIGN SOUNAP
        "\uabe9","\uabea",  # ; Right # Mc   [2] MEETEI MAYEK VOWEL SIGN CHEINAP..MEETEI MAYEK VOWEL SIGN NUNG
        "\uABEC",  # ; Right # Mc       MEETEI MAYEK LUM IYEK
        "\u11000",  # ; Right # Mc       BRAHMI SIGN CANDRABINDU
        "\u11002",  # ; Right # Mc       BRAHMI SIGN VISARGA
        "\u11082",  # ; Right # Mc       KAITHI SIGN VISARGA
        "\u110B0",  # ; Right # Mc       KAITHI VOWEL SIGN AA
        "\u110B2",  # ; Right # Mc       KAITHI VOWEL SIGN II
        "\u110b7","\u110b8",  # ; Right # Mc   [2] KAITHI VOWEL SIGN O..KAITHI VOWEL SIGN AU
        "\u11182",  # ; Right # Mc       SHARADA SIGN VISARGA
        "\u111B3",  # ; Right # Mc       SHARADA VOWEL SIGN AA
        "\u111B5",  # ; Right # Mc       SHARADA VOWEL SIGN II
        "\u111C0",  # ; Right # Mc       SHARADA SIGN VIRAMA
        "\u1122c","\u1122d","\u1122e",  # ; Right # Mc   [3] KHOJKI VOWEL SIGN AA..KHOJKI VOWEL SIGN II
        "\u11235",  # ; Right # Mc       KHOJKI SIGN VIRAMA
        "\u112E0",  # ; Right # Mc       KHUDAWADI VOWEL SIGN AA
        "\u112E2",  # ; Right # Mc       KHUDAWADI VOWEL SIGN II
        "\u11302","\u11303",  # ; Right # Mc   [2] GRANTHA SIGN ANUSVARA..GRANTHA SIGN VISARGA
        "\u1133e","\u1133f",  # ; Right # Mc   [2] GRANTHA VOWEL SIGN AA..GRANTHA VOWEL SIGN I
        "\u11341","\u11342","\u11343","\u11344",  # ; Right # Mc   [4] GRANTHA VOWEL SIGN U..GRANTHA VOWEL SIGN VOCALIC RR
        "\u1134D",  # ; Right # Mc       GRANTHA SIGN VIRAMA
        "\u11357",  # ; Right # Mc       GRANTHA AU LENGTH MARK
        "\u11362","\u11363",  # ; Right # Mc   [2] GRANTHA VOWEL SIGN VOCALIC L..GRANTHA VOWEL SIGN VOCALIC LL
        "\u11435",  # ; Right # Mc       NEWA VOWEL SIGN AA
        "\u11437",  # ; Right # Mc       NEWA VOWEL SIGN II
        "\u11440","\u11441",  # ; Right # Mc   [2] NEWA VOWEL SIGN O..NEWA VOWEL SIGN AU
        "\u11445",  # ; Right # Mc       NEWA SIGN VISARGA
        "\u114B0",  # ; Right # Mc       TIRHUTA VOWEL SIGN AA
        "\u114B2",  # ; Right # Mc       TIRHUTA VOWEL SIGN II
        "\u114BD",  # ; Right # Mc       TIRHUTA VOWEL SIGN SHORT O
        "\u114C1",  # ; Right # Mc       TIRHUTA SIGN VISARGA
        "\u115AF",  # ; Right # Mc       SIDDHAM VOWEL SIGN AA
        "\u115B1",  # ; Right # Mc       SIDDHAM VOWEL SIGN II
        "\u115BE",  # ; Right # Mc       SIDDHAM SIGN VISARGA
        "\u11630","\u11631","\u11632",  # ; Right # Mc   [3] MODI VOWEL SIGN AA..MODI VOWEL SIGN II
        "\u1163b","\u1163c",  # ; Right # Mc   [2] MODI VOWEL SIGN O..MODI VOWEL SIGN AU
        "\u1163E",  # ; Right # Mc       MODI SIGN VISARGA
        "\u116AC",  # ; Right # Mc       TAKRI SIGN VISARGA
        "\u116AF",  # ; Right # Mc       TAKRI VOWEL SIGN II
        "\u116B6",  # ; Right # Mc       TAKRI SIGN VIRAMA
        "\u11720","\u11721",  # ; Right # Mc   [2] AHOM VOWEL SIGN A..AHOM VOWEL SIGN AA
        "\u11A39",  # ; Right # Mc       ZANABAZAR SQUARE SIGN VISARGA
        "\u11a57","\u11a58",  # ; Right # Mc   [2] SOYOMBO VOWEL SIGN AI..SOYOMBO VOWEL SIGN AU
        "\u11A97",  # ; Right # Mc       SOYOMBO SIGN VISARGA
        "\u11C2F",  # ; Right # Mc       BHAIKSUKI VOWEL SIGN AA
        "\u11C3E",  # ; Right # Mc       BHAIKSUKI SIGN VISARGA
        "\u11CA9",  # ; Right # Mc       MARCHEN SUBJOINED LETTER YA
        "\u11CB4",  # ; Right # Mc       MARCHEN VOWEL SIGN O
        "\u093F",  # ; Left # Mc       DEVANAGARI VOWEL SIGN I
        "\u094E",  # ; Left # Mc       DEVANAGARI VOWEL SIGN PRISHTHAMATRA E
        "\u09BF",  # ; Left # Mc       BENGALI VOWEL SIGN I
        "\u09c7","\u09c8",  # ; Left # Mc   [2] BENGALI VOWEL SIGN E..BENGALI VOWEL SIGN AI
        "\u0A3F",  # ; Left # Mc       GURMUKHI VOWEL SIGN I
        "\u0ABF",  # ; Left # Mc       GUJARATI VOWEL SIGN I
        "\u0B47",  # ; Left # Mc       ORIYA VOWEL SIGN E
        "\u0bc6","\u0bc7","\u0bc8",  # ; Left # Mc   [3] TAMIL VOWEL SIGN E..TAMIL VOWEL SIGN AI
        "\u0d46","\u0d47","\u0d48",  # ; Left # Mc   [3] MALAYALAM VOWEL SIGN E..MALAYALAM VOWEL SIGN AI
        "\u0DD9",  # ; Left # Mc       SINHALA VOWEL SIGN KOMBUVA
        "\u0DDB",  # ; Left # Mc       SINHALA VOWEL SIGN KOMBU DEKA
        "\u0F3F",  # ; Left # Mc       TIBETAN SIGN MAR TSHES
        "\u1031",  # ; Left # Mc       MYANMAR VOWEL SIGN E
        "\u1084",  # ; Left # Mc       MYANMAR VOWEL SIGN SHAN E
        "\u17c1","\u17c2","\u17c3",  # ; Left # Mc   [3] KHMER VOWEL SIGN E..KHMER VOWEL SIGN AI
        "\u1A19",  # ; Left # Mc       BUGINESE VOWEL SIGN E
        "\u1A55",  # ; Left # Mc       TAI THAM CONSONANT SIGN MEDIAL RA
        "\u1a6e","\u1a6f","\u1a70","\u1a71","\u1a72",  # ; Left # Mc   [5] TAI THAM VOWEL SIGN E..TAI THAM VOWEL SIGN THAM AI
        "\u1b3e","\u1b3f",  # ; Left # Mc   [2] BALINESE VOWEL SIGN TALING..BALINESE VOWEL SIGN TALING REPA
        "\u1BA6",  # ; Left # Mc       SUNDANESE VOWEL SIGN PANAELAENG
        "\u1c27","\u1c28",  # ; Left # Mc   [2] LEPCHA VOWEL SIGN I..LEPCHA VOWEL SIGN O
        "\u1c34","\u1c35",  # ; Left # Mc   [2] LEPCHA CONSONANT SIGN NYIN-DO..LEPCHA CONSONANT SIGN KANG
        "\ua9ba","\ua9bb",  # ; Left # Mc   [2] JAVANESE VOWEL SIGN TALING..JAVANESE VOWEL SIGN DIRGA MURE
        "\uaa2f","\uaa30",  # ; Left # Mc   [2] CHAM VOWEL SIGN O..CHAM VOWEL SIGN AI
        "\uAA34",  # ; Left # Mc       CHAM CONSONANT SIGN RA
        "\uAAEB",  # ; Left # Mc       MEETEI MAYEK VOWEL SIGN II
        "\uAAEE",  # ; Left # Mc       MEETEI MAYEK VOWEL SIGN AU
        "\u110B1",  # ; Left # Mc       KAITHI VOWEL SIGN I
        "\u1112C",  # ; Left # Mc       CHAKMA VOWEL SIGN E
        "\u111B4",  # ; Left # Mc       SHARADA VOWEL SIGN I
        "\u112E1",  # ; Left # Mc       KHUDAWADI VOWEL SIGN I
        "\u11347","\u11348",  # ; Left # Mc   [2] GRANTHA VOWEL SIGN EE..GRANTHA VOWEL SIGN AI
        "\u11436",  # ; Left # Mc       NEWA VOWEL SIGN I
        "\u114B1",  # ; Left # Mc       TIRHUTA VOWEL SIGN I
        "\u114B9",  # ; Left # Mc       TIRHUTA VOWEL SIGN E
        "\u115B0",  # ; Left # Mc       SIDDHAM VOWEL SIGN I
        "\u115B8",  # ; Left # Mc       SIDDHAM VOWEL SIGN E
        "\u116AE",  # ; Left # Mc       TAKRI VOWEL SIGN I
        "\u11726",  # ; Left # Mc       AHOM VOWEL SIGN E
        "\u11CB1",  # ; Left # Mc       MARCHEN VOWEL SIGN I
        "\u0e40","\u0e41","\u0e42","\u0e43","\u0e44",  # ; Visual_Order_Left # Lo   [5] THAI CHARACTER SARA E..THAI CHARACTER SARA AI MAIMALAI
        "\u0ec0","\u0ec1","\u0ec2","\u0ec3","\u0ec4",  # ; Visual_Order_Left # Lo   [5] LAO VOWEL SIGN E..LAO VOWEL SIGN AI
        "\u19b5","\u19b6","\u19b7",  # ; Visual_Order_Left # Lo   [3] NEW TAI LUE VOWEL SIGN E..NEW TAI LUE VOWEL SIGN O
        "\u19BA",  # ; Visual_Order_Left # Lo       NEW TAI LUE VOWEL SIGN AY
        "\uaab5","\uaab6",  # ; Visual_Order_Left # Lo   [2] TAI VIET VOWEL E..TAI VIET VOWEL O
        "\uAAB9",  # ; Visual_Order_Left # Lo       TAI VIET VOWEL UEA
        "\uaabb","\uaabc",  # ; Visual_Order_Left # Lo   [2] TAI VIET VOWEL AUE..TAI VIET VOWEL AY
        "\u09cb","\u09cc",  # ; Left_And_Right # Mc   [2] BENGALI VOWEL SIGN O..BENGALI VOWEL SIGN AU
        "\u0B4B",  # ; Left_And_Right # Mc       ORIYA VOWEL SIGN O
        "\u0bca","\u0bcb","\u0bcc",  # ; Left_And_Right # Mc   [3] TAMIL VOWEL SIGN O..TAMIL VOWEL SIGN AU
        "\u0d4a","\u0d4b","\u0d4c",  # ; Left_And_Right # Mc   [3] MALAYALAM VOWEL SIGN O..MALAYALAM VOWEL SIGN AU
        "\u0DDC",  # ; Left_And_Right # Mc       SINHALA VOWEL SIGN KOMBUVA HAA AELA-PILLA
        "\u0DDE",  # ; Left_And_Right # Mc       SINHALA VOWEL SIGN KOMBUVA HAA GAYANUKITTA
        "\u17C0",  # ; Left_And_Right # Mc       KHMER VOWEL SIGN IE
        "\u17c4","\u17c5",  # ; Left_And_Right # Mc   [2] KHMER VOWEL SIGN OO..KHMER VOWEL SIGN AU
        "\u1b40","\u1b41",  # ; Left_And_Right # Mc   [2] BALINESE VOWEL SIGN TALING TEDUNG..BALINESE VOWEL SIGN TALING REPA TEDUNG
        "\u1134b","\u1134c",  # ; Left_And_Right # Mc   [2] GRANTHA VOWEL SIGN OO..GRANTHA VOWEL SIGN AU
        "\u114BC",  # ; Left_And_Right # Mc       TIRHUTA VOWEL SIGN O
        "\u114BE",  # ; Left_And_Right # Mc       TIRHUTA VOWEL SIGN AU
        "\u115BA",  # ; Left_And_Right # Mc       SIDDHAM VOWEL SIGN O
        "\u0900","\u0901","\u0902",  # ; Top # Mn   [3] DEVANAGARI SIGN INVERTED CANDRABINDU..DEVANAGARI SIGN ANUSVARA
        "\u093A",  # ; Top # Mn       DEVANAGARI VOWEL SIGN OE
        "\u0945","\u0946","\u0947","\u0948",  # ; Top # Mn   [4] DEVANAGARI VOWEL SIGN CANDRA E..DEVANAGARI VOWEL SIGN AI
        "\u0951",  # ; Top # Mn       DEVANAGARI STRESS SIGN UDATTA
        "\u0953","\u0954","\u0955",  # ; Top # Mn   [3] DEVANAGARI GRAVE ACCENT..DEVANAGARI VOWEL SIGN CANDRA LONG E
        "\u0981",  # ; Top # Mn       BENGALI SIGN CANDRABINDU
        "\u0a01","\u0a02",  # ; Top # Mn   [2] GURMUKHI SIGN ADAK BINDI..GURMUKHI SIGN BINDI
        "\u0a47","\u0a48",  # ; Top # Mn   [2] GURMUKHI VOWEL SIGN EE..GURMUKHI VOWEL SIGN AI
        "\u0a4b","\u0a4c",  # ; Top # Mn   [2] GURMUKHI VOWEL SIGN OO..GURMUKHI VOWEL SIGN AU
        "\u0a70","\u0a71",  # ; Top # Mn   [2] GURMUKHI TIPPI..GURMUKHI ADDAK
        "\u0a81","\u0a82",  # ; Top # Mn   [2] GUJARATI SIGN CANDRABINDU..GUJARATI SIGN ANUSVARA
        "\u0AC5",  # ; Top # Mn       GUJARATI VOWEL SIGN CANDRA E
        "\u0ac7","\u0ac8",  # ; Top # Mn   [2] GUJARATI VOWEL SIGN E..GUJARATI VOWEL SIGN AI
        "\u0afa","\u0afb","\u0afc","\u0afd","\u0afe","\u0aff",  # ; Top # Mn   [6] GUJARATI SIGN SUKUN..GUJARATI SIGN TWO-CIRCLE NUKTA ABOVE
        "\u0B01",  # ; Top # Mn       ORIYA SIGN CANDRABINDU
        "\u0B3F",  # ; Top # Mn       ORIYA VOWEL SIGN I
        "\u0B56",  # ; Top # Mn       ORIYA AI LENGTH MARK
        "\u0B82",  # ; Top # Mn       TAMIL SIGN ANUSVARA
        "\u0BC0",  # ; Top # Mn       TAMIL VOWEL SIGN II
        "\u0BCD",  # ; Top # Mn       TAMIL SIGN VIRAMA
        "\u0C00",  # ; Top # Mn       TELUGU SIGN COMBINING CANDRABINDU ABOVE
        "\u0c3e","\u0c3f","\u0c40",  # ; Top # Mn   [3] TELUGU VOWEL SIGN AA..TELUGU VOWEL SIGN II
        "\u0c46","\u0c47",  # ; Top # Mn   [2] TELUGU VOWEL SIGN E..TELUGU VOWEL SIGN EE
        "\u0c4a","\u0c4b","\u0c4c","\u0c4d",  # ; Top # Mn   [4] TELUGU VOWEL SIGN O..TELUGU SIGN VIRAMA
        "\u0C55",  # ; Top # Mn       TELUGU LENGTH MARK
        "\u0C81",  # ; Top # Mn       KANNADA SIGN CANDRABINDU
        "\u0CBF",  # ; Top # Mn       KANNADA VOWEL SIGN I
        "\u0CC6",  # ; Top # Mn       KANNADA VOWEL SIGN E
        "\u0ccc","\u0ccd",  # ; Top # Mn   [2] KANNADA VOWEL SIGN AU..KANNADA SIGN VIRAMA
        "\u0d00","\u0d01",  # ; Top # Mn   [2] MALAYALAM SIGN COMBINING ANUSVARA ABOVE..MALAYALAM SIGN CANDRABINDU
        "\u0d3b","\u0d3c",  # ; Top # Mn   [2] MALAYALAM SIGN VERTICAL BAR VIRAMA..MALAYALAM SIGN CIRCULAR VIRAMA
        "\u0D4D",  # ; Top # Mn       MALAYALAM SIGN VIRAMA
        "\u0DCA",  # ; Top # Mn       SINHALA SIGN AL-LAKUNA
        "\u0dd2","\u0dd3",  # ; Top # Mn   [2] SINHALA VOWEL SIGN KETTI IS-PILLA..SINHALA VOWEL SIGN DIGA IS-PILLA
        "\u0E31",  # ; Top # Mn       THAI CHARACTER MAI HAN-AKAT
        "\u0e34","\u0e35","\u0e36","\u0e37",  # ; Top # Mn   [4] THAI CHARACTER SARA I..THAI CHARACTER SARA UEE
        "\u0e47","\u0e48","\u0e49","\u0e4a","\u0e4b","\u0e4c","\u0e4d","\u0e4e",  # ; Top # Mn   [8] THAI CHARACTER MAITAIKHU..THAI CHARACTER YAMAKKAN
        "\u0EB1",  # ; Top # Mn       LAO VOWEL SIGN MAI KAN
        "\u0eb4","\u0eb5","\u0eb6","\u0eb7",  # ; Top # Mn   [4] LAO VOWEL SIGN I..LAO VOWEL SIGN YY
        "\u0EBB",  # ; Top # Mn       LAO VOWEL SIGN MAI KON
        "\u0ec8","\u0ec9","\u0eca","\u0ecb","\u0ecc","\u0ecd",  # ; Top # Mn   [6] LAO TONE MAI EK..LAO NIGGAHITA
        "\u0F39",  # ; Top # Mn       TIBETAN MARK TSA -PHRU
        "\u0F72",  # ; Top # Mn       TIBETAN VOWEL SIGN I
        "\u0f7a","\u0f7b","\u0f7c","\u0f7d","\u0f7e",  # ; Top # Mn   [5] TIBETAN VOWEL SIGN E..TIBETAN SIGN RJES SU NGA RO
        "\u0F80",  # ; Top # Mn       TIBETAN VOWEL SIGN REVERSED I
        "\u0f82","\u0f83",  # ; Top # Mn   [2] TIBETAN SIGN NYI ZLA NAA DA..TIBETAN SIGN SNA LDAN
        "\u0f86","\u0f87",  # ; Top # Mn   [2] TIBETAN SIGN LCI RTAGS..TIBETAN SIGN YANG RTAGS
        "\u102d","\u102e",  # ; Top # Mn   [2] MYANMAR VOWEL SIGN I..MYANMAR VOWEL SIGN II
        "\u1032","\u1033","\u1034","\u1035","\u1036",  # ; Top # Mn   [5] MYANMAR VOWEL SIGN AI..MYANMAR SIGN ANUSVARA
        "\u103A",  # ; Top # Mn       MYANMAR SIGN ASAT
        "\u1071","\u1072","\u1073","\u1074",  # ; Top # Mn   [4] MYANMAR VOWEL SIGN GEBA KAREN I..MYANMAR VOWEL SIGN KAYAH EE
        "\u1085","\u1086",  # ; Top # Mn   [2] MYANMAR VOWEL SIGN SHAN E ABOVE..MYANMAR VOWEL SIGN SHAN FINAL Y
        "\u109D",  # ; Top # Mn       MYANMAR VOWEL SIGN AITON AI
        "\u1712",  # ; Top # Mn       TAGALOG VOWEL SIGN I
        "\u1732",  # ; Top # Mn       HANUNOO VOWEL SIGN I
        "\u1752",  # ; Top # Mn       BUHID VOWEL SIGN I
        "\u1772",  # ; Top # Mn       TAGBANWA VOWEL SIGN I
        "\u17b7","\u17b8","\u17b9","\u17ba",  # ; Top # Mn   [4] KHMER VOWEL SIGN I..KHMER VOWEL SIGN YY
        "\u17C6",  # ; Top # Mn       KHMER SIGN NIKAHIT
        "\u17c9","\u17ca","\u17cb","\u17cc","\u17cd","\u17ce","\u17cf","\u17d0","\u17d1",  # ; Top # Mn   [9] KHMER SIGN MUUSIKATOAN..KHMER SIGN VIRIAM
        "\u17D3",  # ; Top # Mn       KHMER SIGN BATHAMASAT
        "\u17DD",  # ; Top # Mn       KHMER SIGN ATTHACAN
        "\u1920","\u1921",  # ; Top # Mn   [2] LIMBU VOWEL SIGN A..LIMBU VOWEL SIGN I
        "\u1927","\u1928",  # ; Top # Mn   [2] LIMBU VOWEL SIGN E..LIMBU VOWEL SIGN O
        "\u193A",  # ; Top # Mn       LIMBU SIGN KEMPHRENG
        "\u1A17",  # ; Top # Mn       BUGINESE VOWEL SIGN I
        "\u1A1B",  # ; Top # Mn       BUGINESE VOWEL SIGN AE
        "\u1a58","\u1a59","\u1a5a",  # ; Top # Mn   [3] TAI THAM SIGN MAI KANG LAI..TAI THAM CONSONANT SIGN LOW PA
        "\u1A62",  # ; Top # Mn       TAI THAM VOWEL SIGN MAI SAT
        "\u1a65","\u1a66","\u1a67","\u1a68",  # ; Top # Mn   [4] TAI THAM VOWEL SIGN I..TAI THAM VOWEL SIGN UUE
        "\u1A6B",  # ; Top # Mn       TAI THAM VOWEL SIGN O
        "\u1a73","\u1a74","\u1a75","\u1a76","\u1a77","\u1a78","\u1a79","\u1a7a","\u1a7b","\u1a7c",  # ; Top # Mn  [10] TAI THAM VOWEL SIGN OA ABOVE..TAI THAM SIGN KHUEN-LUE KARAN
        "\u1b00","\u1b01","\u1b02","\u1b03",  # ; Top # Mn   [4] BALINESE SIGN ULU RICEM..BALINESE SIGN SURANG
        "\u1B34",  # ; Top # Mn       BALINESE SIGN REREKAN
        "\u1b36","\u1b37",  # ; Top # Mn   [2] BALINESE VOWEL SIGN ULU..BALINESE VOWEL SIGN ULU SARI
        "\u1B42",  # ; Top # Mn       BALINESE VOWEL SIGN PEPET
        "\u1B6B",  # ; Top # Mn       BALINESE MUSICAL SYMBOL COMBINING TEGEH
        "\u1b6d","\u1b6e","\u1b6f","\u1b70","\u1b71","\u1b72","\u1b73",  # ; Top # Mn   [7] BALINESE MUSICAL SYMBOL COMBINING KEMPUL..BALINESE MUSICAL SYMBOL COMBINING GONG
        "\u1b80","\u1b81",  # ; Top # Mn   [2] SUNDANESE SIGN PANYECEK..SUNDANESE SIGN PANGLAYAR
        "\u1BA4",  # ; Top # Mn       SUNDANESE VOWEL SIGN PANGHULU
        "\u1ba8","\u1ba9",  # ; Top # Mn   [2] SUNDANESE VOWEL SIGN PAMEPET..SUNDANESE VOWEL SIGN PANEULEUNG
        "\u1BE6",  # ; Top # Mn       BATAK SIGN TOMPI
        "\u1be8","\u1be9",  # ; Top # Mn   [2] BATAK VOWEL SIGN PAKPAK E..BATAK VOWEL SIGN EE
        "\u1BED",  # ; Top # Mn       BATAK VOWEL SIGN KARO O
        "\u1bef","\u1bf0","\u1bf1",  # ; Top # Mn   [3] BATAK VOWEL SIGN U FOR SIMALUNGUN SA..BATAK CONSONANT SIGN H
        "\u1c2d","\u1c2e","\u1c2f","\u1c30","\u1c31","\u1c32","\u1c33",  # ; Top # Mn   [7] LEPCHA CONSONANT SIGN K..LEPCHA CONSONANT SIGN T
        "\u1C36",  # ; Top # Mn       LEPCHA SIGN RAN
        "\u1cd0","\u1cd1","\u1cd2",  # ; Top # Mn   [3] VEDIC TONE KARSHANA..VEDIC TONE PRENKHA
        "\u1cda","\u1cdb",  # ; Top # Mn   [2] VEDIC TONE DOUBLE SVARITA..VEDIC TONE TRIPLE SVARITA
        "\u1CE0",  # ; Top # Mn       VEDIC TONE RIGVEDIC KASHMIRI INDEPENDENT SVARITA
        "\u1CF4",  # ; Top # Mn       VEDIC TONE CANDRA ABOVE
        "\u1DFB",  # ; Top # Mn       COMBINING DELETION MARK
        "\uA806",  # ; Top # Mn       SYLOTI NAGRI SIGN HASANTA
        "\uA80B",  # ; Top # Mn       SYLOTI NAGRI SIGN ANUSVARA
        "\uA826",  # ; Top # Mn       SYLOTI NAGRI VOWEL SIGN E
        "\uA8C5",  # ; Top # Mn       SAURASHTRA SIGN CANDRABINDU
        "\ua8e0","\ua8e1","\ua8e2","\ua8e3","\ua8e4","\ua8e5","\ua8e6","\ua8e7","\ua8e8","\ua8e9","\ua8ea","\ua8eb","\ua8ec","\ua8ed","\ua8ee","\ua8ef","\ua8f0","\ua8f1",  # ; Top # Mn  [18] COMBINING DEVANAGARI DIGIT ZERO..COMBINING DEVANAGARI SIGN AVAGRAHA
        "\uA94A",  # ; Top # Mn       REJANG VOWEL SIGN AI
        "\ua94f","\ua950","\ua951",  # ; Top # Mn   [3] REJANG CONSONANT SIGN NG..REJANG CONSONANT SIGN R
        "\ua980","\ua981","\ua982",  # ; Top # Mn   [3] JAVANESE SIGN PANYANGGA..JAVANESE SIGN LAYAR
        "\uA9B3",  # ; Top # Mn       JAVANESE SIGN CECAK TELU
        "\ua9b6","\ua9b7",  # ; Top # Mn   [2] JAVANESE VOWEL SIGN WULU..JAVANESE VOWEL SIGN WULU MELIK
        "\uA9BC",  # ; Top # Mn       JAVANESE VOWEL SIGN PEPET
        "\uA9E5",  # ; Top # Mn       MYANMAR SIGN SHAN SAW
        "\uaa29","\uaa2a","\uaa2b","\uaa2c",  # ; Top # Mn   [4] CHAM VOWEL SIGN AA..CHAM VOWEL SIGN EI
        "\uAA2E",  # ; Top # Mn       CHAM VOWEL SIGN OE
        "\uAA31",  # ; Top # Mn       CHAM VOWEL SIGN AU
        "\uAA43",  # ; Top # Mn       CHAM CONSONANT SIGN FINAL NG
        "\uAA4C",  # ; Top # Mn       CHAM CONSONANT SIGN FINAL M
        "\uAA7C",  # ; Top # Mn       MYANMAR SIGN TAI LAING TONE-2
        "\uAAB0",  # ; Top # Mn       TAI VIET MAI KANG
        "\uaab2","\uaab3",  # ; Top # Mn   [2] TAI VIET VOWEL I..TAI VIET VOWEL UE
        "\uaab7","\uaab8",  # ; Top # Mn   [2] TAI VIET MAI KHIT..TAI VIET VOWEL IA
        "\uaabe","\uaabf",  # ; Top # Mn   [2] TAI VIET VOWEL AM..TAI VIET TONE MAI EK
        "\uAAC1",  # ; Top # Mn       TAI VIET TONE MAI THO
        "\uAAED",  # ; Top # Mn       MEETEI MAYEK VOWEL SIGN AAI
        "\uABE5",  # ; Top # Mn       MEETEI MAYEK VOWEL SIGN ANAP
        "\u10A05",  # ; Top # Mn       KHAROSHTHI VOWEL SIGN E
        "\u10A0F",  # ; Top # Mn       KHAROSHTHI SIGN VISARGA
        "\u10A38",  # ; Top # Mn       KHAROSHTHI SIGN BAR ABOVE
        "\u11001",  # ; Top # Mn       BRAHMI SIGN ANUSVARA
        "\u11038","\u11039","\u1103a","\u1103b",  # ; Top # Mn   [4] BRAHMI VOWEL SIGN AA..BRAHMI VOWEL SIGN II
        "\u11042","\u11043","\u11044","\u11045","\u11046",  # ; Top # Mn   [5] BRAHMI VOWEL SIGN E..BRAHMI VIRAMA
        "\u11080","\u11081",  # ; Top # Mn   [2] KAITHI SIGN CANDRABINDU..KAITHI SIGN ANUSVARA
        "\u110b5","\u110b6",  # ; Top # Mn   [2] KAITHI VOWEL SIGN E..KAITHI VOWEL SIGN AI
        "\u11100","\u11101","\u11102",  # ; Top # Mn   [3] CHAKMA SIGN CANDRABINDU..CHAKMA SIGN VISARGA
        "\u11127","\u11128","\u11129",  # ; Top # Mn   [3] CHAKMA VOWEL SIGN A..CHAKMA VOWEL SIGN II
        "\u1112D",  # ; Top # Mn       CHAKMA VOWEL SIGN AI
        "\u11130",  # ; Top # Mn       CHAKMA VOWEL SIGN OI
        "\u11134",  # ; Top # Mn       CHAKMA MAAYYAA
        "\u11180","\u11181",  # ; Top # Mn   [2] SHARADA SIGN CANDRABINDU..SHARADA SIGN ANUSVARA
        "\u111bc","\u111bd","\u111be",  # ; Top # Mn   [3] SHARADA VOWEL SIGN E..SHARADA VOWEL SIGN O
        "\u111CB",  # ; Top # Mn       SHARADA VOWEL MODIFIER MARK
        "\u11230","\u11231",  # ; Top # Mn   [2] KHOJKI VOWEL SIGN E..KHOJKI VOWEL SIGN AI
        "\u11234",  # ; Top # Mn       KHOJKI SIGN ANUSVARA
        "\u11236","\u11237",  # ; Top # Mn   [2] KHOJKI SIGN NUKTA..KHOJKI SIGN SHADDA
        "\u1123E",  # ; Top # Mn       KHOJKI SIGN SUKUN
        "\u112DF",  # ; Top # Mn       KHUDAWADI SIGN ANUSVARA
        "\u112e5","\u112e6","\u112e7","\u112e8",  # ; Top # Mn   [4] KHUDAWADI VOWEL SIGN E..KHUDAWADI VOWEL SIGN AU
        "\u11301",  # ; Top # Mn       GRANTHA SIGN CANDRABINDU
        "\u11340",  # ; Top # Mn       GRANTHA VOWEL SIGN II
        "\u11366","\u11367","\u11368","\u11369","\u1136a","\u1136b","\u1136c",  # ; Top # Mn   [7] COMBINING GRANTHA DIGIT ZERO..COMBINING GRANTHA DIGIT SIX
        "\u11370","\u11371","\u11372","\u11373","\u11374",  # ; Top # Mn   [5] COMBINING GRANTHA LETTER A..COMBINING GRANTHA LETTER PA
        "\u1143e","\u1143f",  # ; Top # Mn   [2] NEWA VOWEL SIGN E..NEWA VOWEL SIGN AI
        "\u11443","\u11444",  # ; Top # Mn   [2] NEWA SIGN CANDRABINDU..NEWA SIGN ANUSVARA
        "\u114BA",  # ; Top # Mn       TIRHUTA VOWEL SIGN SHORT E
        "\u114bf","\u114c0",  # ; Top # Mn   [2] TIRHUTA SIGN CANDRABINDU..TIRHUTA SIGN ANUSVARA
        "\u115bc","\u115bd",  # ; Top # Mn   [2] SIDDHAM SIGN CANDRABINDU..SIDDHAM SIGN ANUSVARA
        "\u11639","\u1163a",  # ; Top # Mn   [2] MODI VOWEL SIGN E..MODI VOWEL SIGN AI
        "\u1163D",  # ; Top # Mn       MODI SIGN ANUSVARA
        "\u11640",  # ; Top # Mn       MODI SIGN ARDHACANDRA
        "\u116AB",  # ; Top # Mn       TAKRI SIGN ANUSVARA
        "\u116AD",  # ; Top # Mn       TAKRI VOWEL SIGN AA
        "\u116b2","\u116b3","\u116b4","\u116b5",  # ; Top # Mn   [4] TAKRI VOWEL SIGN E..TAKRI VOWEL SIGN AU
        "\u1171F",  # ; Top # Mn       AHOM CONSONANT SIGN MEDIAL LIGATING RA
        "\u11722","\u11723",  # ; Top # Mn   [2] AHOM VOWEL SIGN I..AHOM VOWEL SIGN II
        "\u11727",  # ; Top # Mn       AHOM VOWEL SIGN AW
        "\u11729","\u1172a","\u1172b",  # ; Top # Mn   [3] AHOM VOWEL SIGN AI..AHOM SIGN KILLER
        "\u11A01",  # ; Top # Mn       ZANABAZAR SQUARE VOWEL SIGN I
        "\u11a04","\u11a05","\u11a06","\u11a07","\u11a08","\u11a09",  # ; Top # Mn   [6] ZANABAZAR SQUARE VOWEL SIGN E..ZANABAZAR SQUARE VOWEL SIGN REVERSED I
        "\u11a35","\u11a36","\u11a37","\u11a38",  # ; Top # Mn   [4] ZANABAZAR SQUARE SIGN CANDRABINDU..ZANABAZAR SQUARE SIGN ANUSVARA
        "\u11A51",  # ; Top # Mn       SOYOMBO VOWEL SIGN I
        "\u11a54","\u11a55","\u11a56",  # ; Top # Mn   [3] SOYOMBO VOWEL SIGN E..SOYOMBO VOWEL SIGN OE
        "\u11A96",  # ; Top # Mn       SOYOMBO SIGN ANUSVARA
        "\u11A98",  # ; Top # Mn       SOYOMBO GEMINATION MARK
        "\u11c30","\u11c31",  # ; Top # Mn   [2] BHAIKSUKI VOWEL SIGN I..BHAIKSUKI VOWEL SIGN II
        "\u11c38","\u11c39","\u11c3a","\u11c3b","\u11c3c","\u11c3d",  # ; Top # Mn   [6] BHAIKSUKI VOWEL SIGN E..BHAIKSUKI SIGN ANUSVARA
        "\u11CB3",  # ; Top # Mn       MARCHEN VOWEL SIGN E
        "\u11cb5","\u11cb6",  # ; Top # Mn   [2] MARCHEN SIGN ANUSVARA..MARCHEN SIGN CANDRABINDU
        "\u11d31","\u11d32","\u11d33","\u11d34","\u11d35",  # ; Top # Mn   [5] MASARAM GONDI VOWEL SIGN AA..MASARAM GONDI VOWEL SIGN UU
        "\u11D3A",  # ; Top # Mn       MASARAM GONDI VOWEL SIGN E
        "\u11d3c","\u11d3d",  # ; Top # Mn   [2] MASARAM GONDI VOWEL SIGN AI..MASARAM GONDI VOWEL SIGN O
        "\u11d3f","\u11d40","\u11d41",  # ; Top # Mn   [3] MASARAM GONDI VOWEL SIGN AU..MASARAM GONDI SIGN VISARGA
        "\u11D43",  # ; Top # Mn       MASARAM GONDI SIGN CANDRA
        "\u093C",  # ; Bottom # Mn       DEVANAGARI SIGN NUKTA
        "\u0941","\u0942","\u0943","\u0944",  # ; Bottom # Mn   [4] DEVANAGARI VOWEL SIGN U..DEVANAGARI VOWEL SIGN VOCALIC RR
        "\u094D",  # ; Bottom # Mn       DEVANAGARI SIGN VIRAMA
        "\u0952",  # ; Bottom # Mn       DEVANAGARI STRESS SIGN ANUDATTA
        "\u0956","\u0957",  # ; Bottom # Mn   [2] DEVANAGARI VOWEL SIGN UE..DEVANAGARI VOWEL SIGN UUE
        "\u0962","\u0963",  # ; Bottom # Mn   [2] DEVANAGARI VOWEL SIGN VOCALIC L..DEVANAGARI VOWEL SIGN VOCALIC LL
        "\u09BC",  # ; Bottom # Mn       BENGALI SIGN NUKTA
        "\u09c1","\u09c2","\u09c3","\u09c4",  # ; Bottom # Mn   [4] BENGALI VOWEL SIGN U..BENGALI VOWEL SIGN VOCALIC RR
        "\u09CD",  # ; Bottom # Mn       BENGALI SIGN VIRAMA
        "\u09e2","\u09e3",  # ; Bottom # Mn   [2] BENGALI VOWEL SIGN VOCALIC L..BENGALI VOWEL SIGN VOCALIC LL
        "\u0A3C",  # ; Bottom # Mn       GURMUKHI SIGN NUKTA
        "\u0a41","\u0a42",  # ; Bottom # Mn   [2] GURMUKHI VOWEL SIGN U..GURMUKHI VOWEL SIGN UU
        "\u0A4D",  # ; Bottom # Mn       GURMUKHI SIGN VIRAMA
        "\u0A75",  # ; Bottom # Mn       GURMUKHI SIGN YAKASH
        "\u0ABC",  # ; Bottom # Mn       GUJARATI SIGN NUKTA
        "\u0ac1","\u0ac2","\u0ac3","\u0ac4",  # ; Bottom # Mn   [4] GUJARATI VOWEL SIGN U..GUJARATI VOWEL SIGN VOCALIC RR
        "\u0ACD",  # ; Bottom # Mn       GUJARATI SIGN VIRAMA
        "\u0ae2","\u0ae3",  # ; Bottom # Mn   [2] GUJARATI VOWEL SIGN VOCALIC L..GUJARATI VOWEL SIGN VOCALIC LL
        "\u0B3C",  # ; Bottom # Mn       ORIYA SIGN NUKTA
        "\u0b41","\u0b42","\u0b43","\u0b44",  # ; Bottom # Mn   [4] ORIYA VOWEL SIGN U..ORIYA VOWEL SIGN VOCALIC RR
        "\u0B4D",  # ; Bottom # Mn       ORIYA SIGN VIRAMA
        "\u0b62","\u0b63",  # ; Bottom # Mn   [2] ORIYA VOWEL SIGN VOCALIC L..ORIYA VOWEL SIGN VOCALIC LL
        "\u0C56",  # ; Bottom # Mn       TELUGU AI LENGTH MARK
        "\u0c62","\u0c63",  # ; Bottom # Mn   [2] TELUGU VOWEL SIGN VOCALIC L..TELUGU VOWEL SIGN VOCALIC LL
        "\u0CBC",  # ; Bottom # Mn       KANNADA SIGN NUKTA
        "\u0ce2","\u0ce3",  # ; Bottom # Mn   [2] KANNADA VOWEL SIGN VOCALIC L..KANNADA VOWEL SIGN VOCALIC LL
        "\u0d43","\u0d44",  # ; Bottom # Mn   [2] MALAYALAM VOWEL SIGN VOCALIC R..MALAYALAM VOWEL SIGN VOCALIC RR
        "\u0d62","\u0d63",  # ; Bottom # Mn   [2] MALAYALAM VOWEL SIGN VOCALIC L..MALAYALAM VOWEL SIGN VOCALIC LL
        "\u0DD4",  # ; Bottom # Mn       SINHALA VOWEL SIGN KETTI PAA-PILLA
        "\u0DD6",  # ; Bottom # Mn       SINHALA VOWEL SIGN DIGA PAA-PILLA
        "\u0e38","\u0e39","\u0e3a",  # ; Bottom # Mn   [3] THAI CHARACTER SARA U..THAI CHARACTER PHINTHU
        "\u0eb8","\u0eb9",  # ; Bottom # Mn   [2] LAO VOWEL SIGN U..LAO VOWEL SIGN UU
        "\u0EBC",  # ; Bottom # Mn       LAO SEMIVOWEL SIGN LO
        "\u0f18","\u0f19",  # ; Bottom # Mn   [2] TIBETAN ASTROLOGICAL SIGN -KHYUD PA..TIBETAN ASTROLOGICAL SIGN SDONG TSHUGS
        "\u0F35",  # ; Bottom # Mn       TIBETAN MARK NGAS BZUNG NYI ZLA
        "\u0F37",  # ; Bottom # Mn       TIBETAN MARK NGAS BZUNG SGOR RTAGS
        "\u0F71",  # ; Bottom # Mn       TIBETAN VOWEL SIGN AA
        "\u0f74","\u0f75",  # ; Bottom # Mn   [2] TIBETAN VOWEL SIGN U..TIBETAN VOWEL SIGN UU
        "\u0F84",  # ; Bottom # Mn       TIBETAN MARK HALANTA
        "\u0f8d","\u0f8e","\u0f8f","\u0f90","\u0f91","\u0f92","\u0f93","\u0f94","\u0f95","\u0f96","\u0f97",  # ; Bottom # Mn  [11] TIBETAN SUBJOINED SIGN LCE TSA CAN..TIBETAN SUBJOINED LETTER JA
        "\u0f99","\u0f9a","\u0f9b","\u0f9c","\u0f9d","\u0f9e","\u0f9f","\u0fa0","\u0fa1","\u0fa2","\u0fa3","\u0fa4","\u0fa5","\u0fa6","\u0fa7","\u0fa8","\u0fa9","\u0faa","\u0fab","\u0fac","\u0fad","\u0fae","\u0faf","\u0fb0","\u0fb1","\u0fb2","\u0fb3","\u0fb4","\u0fb5","\u0fb6","\u0fb7","\u0fb8","\u0fb9","\u0fba","\u0fbb","\u0fbc",  # ; Bottom # Mn  [36] TIBETAN SUBJOINED LETTER NYA..TIBETAN SUBJOINED LETTER FIXED-FORM RA
        "\u0FC6",  # ; Bottom # Mn       TIBETAN SYMBOL PADMA GDAN
        "\u102f","\u1030",  # ; Bottom # Mn   [2] MYANMAR VOWEL SIGN U..MYANMAR VOWEL SIGN UU
        "\u1037",  # ; Bottom # Mn       MYANMAR SIGN DOT BELOW
        "\u103d","\u103e",  # ; Bottom # Mn   [2] MYANMAR CONSONANT SIGN MEDIAL WA..MYANMAR CONSONANT SIGN MEDIAL HA
        "\u1058","\u1059",  # ; Bottom # Mn   [2] MYANMAR VOWEL SIGN VOCALIC L..MYANMAR VOWEL SIGN VOCALIC LL
        "\u105e","\u105f","\u1060",  # ; Bottom # Mn   [3] MYANMAR CONSONANT SIGN MON MEDIAL NA..MYANMAR CONSONANT SIGN MON MEDIAL LA
        "\u1082",  # ; Bottom # Mn       MYANMAR CONSONANT SIGN SHAN MEDIAL WA
        "\u108D",  # ; Bottom # Mn       MYANMAR SIGN SHAN COUNCIL EMPHATIC TONE
        "\u1713","\u1714",  # ; Bottom # Mn   [2] TAGALOG VOWEL SIGN U..TAGALOG SIGN VIRAMA
        "\u1733","\u1734",  # ; Bottom # Mn   [2] HANUNOO VOWEL SIGN U..HANUNOO SIGN PAMUDPOD
        "\u1753",  # ; Bottom # Mn       BUHID VOWEL SIGN U
        "\u1773",  # ; Bottom # Mn       TAGBANWA VOWEL SIGN U
        "\u17bb","\u17bc","\u17bd",  # ; Bottom # Mn   [3] KHMER VOWEL SIGN U..KHMER VOWEL SIGN UA
        "\u1922",  # ; Bottom # Mn       LIMBU VOWEL SIGN U
        "\u1932",  # ; Bottom # Mn       LIMBU SMALL LETTER ANUSVARA
        "\u1939",  # ; Bottom # Mn       LIMBU SIGN MUKPHRENG
        "\u193B",  # ; Bottom # Mn       LIMBU SIGN SA-I
        "\u1A18",  # ; Bottom # Mn       BUGINESE VOWEL SIGN U
        "\u1A56",  # ; Bottom # Mn       TAI THAM CONSONANT SIGN MEDIAL LA
        "\u1a5b","\u1a5c","\u1a5d","\u1a5e",  # ; Bottom # Mn   [4] TAI THAM CONSONANT SIGN HIGH RATHA OR LOW PA..TAI THAM CONSONANT SIGN SA
        "\u1a69","\u1a6a",  # ; Bottom # Mn   [2] TAI THAM VOWEL SIGN U..TAI THAM VOWEL SIGN UU
        "\u1A6C",  # ; Bottom # Mn       TAI THAM VOWEL SIGN OA BELOW
        "\u1A7F",  # ; Bottom # Mn       TAI THAM COMBINING CRYPTOGRAMMIC DOT
        "\u1b38","\u1b39","\u1b3a",  # ; Bottom # Mn   [3] BALINESE VOWEL SIGN SUKU..BALINESE VOWEL SIGN RA REPA
        "\u1B6C",  # ; Bottom # Mn       BALINESE MUSICAL SYMBOL COMBINING ENDEP
        "\u1ba2","\u1ba3",  # ; Bottom # Mn   [2] SUNDANESE CONSONANT SIGN PANYAKRA..SUNDANESE CONSONANT SIGN PANYIKU
        "\u1BA5",  # ; Bottom # Mn       SUNDANESE VOWEL SIGN PANYUKU
        "\u1bac","\u1bad",  # ; Bottom # Mn   [2] SUNDANESE CONSONANT SIGN PASANGAN MA..SUNDANESE CONSONANT SIGN PASANGAN WA
        "\u1C2C",  # ; Bottom # Mn       LEPCHA VOWEL SIGN E
        "\u1C37",  # ; Bottom # Mn       LEPCHA SIGN NUKTA
        "\u1cd5","\u1cd6","\u1cd7","\u1cd8","\u1cd9",  # ; Bottom # Mn   [5] VEDIC TONE YAJURVEDIC AGGRAVATED INDEPENDENT SVARITA..VEDIC TONE YAJURVEDIC KATHAKA INDEPENDENT SVARITA SCHROEDER
        "\u1cdc","\u1cdd","\u1cde","\u1cdf",  # ; Bottom # Mn   [4] VEDIC TONE KATHAKA ANUDATTA..VEDIC TONE THREE DOTS BELOW
        "\u1CED",  # ; Bottom # Mn       VEDIC SIGN TIRYAK
        "\uA825",  # ; Bottom # Mn       SYLOTI NAGRI VOWEL SIGN U
        "\uA8C4",  # ; Bottom # Mn       SAURASHTRA SIGN VIRAMA
        "\ua92b","\ua92c","\ua92d",  # ; Bottom # Mn   [3] KAYAH LI TONE PLOPHU..KAYAH LI TONE CALYA PLOPHU
        "\ua947","\ua948","\ua949",  # ; Bottom # Mn   [3] REJANG VOWEL SIGN I..REJANG VOWEL SIGN E
        "\ua94b","\ua94c","\ua94d","\ua94e",  # ; Bottom # Mn   [4] REJANG VOWEL SIGN O..REJANG VOWEL SIGN EA
        "\ua9b8","\ua9b9",  # ; Bottom # Mn   [2] JAVANESE VOWEL SIGN SUKU..JAVANESE VOWEL SIGN SUKU MENDUT
        "\uAA2D",  # ; Bottom # Mn       CHAM VOWEL SIGN U
        "\uAA32",  # ; Bottom # Mn       CHAM VOWEL SIGN UE
        "\uaa35","\uaa36",  # ; Bottom # Mn   [2] CHAM CONSONANT SIGN LA..CHAM CONSONANT SIGN WA
        "\uAAB4",  # ; Bottom # Mn       TAI VIET VOWEL U
        "\uAAEC",  # ; Bottom # Mn       MEETEI MAYEK VOWEL SIGN UU
        "\uABE8",  # ; Bottom # Mn       MEETEI MAYEK VOWEL SIGN UNAP
        "\uABED",  # ; Bottom # Mn       MEETEI MAYEK APUN IYEK
        "\u10a02","\u10a03",  # ; Bottom # Mn   [2] KHAROSHTHI VOWEL SIGN U..KHAROSHTHI VOWEL SIGN VOCALIC R
        "\u10a0c","\u10a0d","\u10a0e",  # ; Bottom # Mn   [3] KHAROSHTHI VOWEL LENGTH MARK..KHAROSHTHI SIGN ANUSVARA
        "\u10a39","\u10a3a",  # ; Bottom # Mn   [2] KHAROSHTHI SIGN CAUDA..KHAROSHTHI SIGN DOT BELOW
        "\u1103c","\u1103d","\u1103e","\u1103f","\u11040","\u11041",  # ; Bottom # Mn   [6] BRAHMI VOWEL SIGN U..BRAHMI VOWEL SIGN VOCALIC LL
        "\u110b3","\u110b4",  # ; Bottom # Mn   [2] KAITHI VOWEL SIGN U..KAITHI VOWEL SIGN UU
        "\u110b9","\u110ba",  # ; Bottom # Mn   [2] KAITHI SIGN VIRAMA..KAITHI SIGN NUKTA
        "\u1112a","\u1112b",  # ; Bottom # Mn   [2] CHAKMA VOWEL SIGN U..CHAKMA VOWEL SIGN UU
        "\u11131","\u11132",  # ; Bottom # Mn   [2] CHAKMA O MARK..CHAKMA AU MARK
        "\u11173",  # ; Bottom # Mn       MAHAJANI SIGN NUKTA
        "\u111b6","\u111b7","\u111b8","\u111b9","\u111ba","\u111bb",  # ; Bottom # Mn   [6] SHARADA VOWEL SIGN U..SHARADA VOWEL SIGN VOCALIC LL
        "\u111CC",  # ; Bottom # Mn       SHARADA EXTRA SHORT VOWEL MARK
        "\u1122F",  # ; Bottom # Mn       KHOJKI VOWEL SIGN U
        "\u112e3","\u112e4",  # ; Bottom # Mn   [2] KHUDAWADI VOWEL SIGN U..KHUDAWADI VOWEL SIGN UU
        "\u112e9","\u112ea",  # ; Bottom # Mn   [2] KHUDAWADI SIGN NUKTA..KHUDAWADI SIGN VIRAMA
        "\u11438","\u11439","\u1143a","\u1143b","\u1143c","\u1143d",  # ; Bottom # Mn   [6] NEWA VOWEL SIGN U..NEWA VOWEL SIGN VOCALIC LL
        "\u11442",  # ; Bottom # Mn       NEWA SIGN VIRAMA
        "\u11446",  # ; Bottom # Mn       NEWA SIGN NUKTA
        "\u114b3","\u114b4","\u114b5","\u114b6","\u114b7","\u114b8",  # ; Bottom # Mn   [6] TIRHUTA VOWEL SIGN U..TIRHUTA VOWEL SIGN VOCALIC LL
        "\u114c2","\u114c3",  # ; Bottom # Mn   [2] TIRHUTA SIGN VIRAMA..TIRHUTA SIGN NUKTA
        "\u115b2","\u115b3","\u115b4","\u115b5",  # ; Bottom # Mn   [4] SIDDHAM VOWEL SIGN U..SIDDHAM VOWEL SIGN VOCALIC RR
        "\u115bf","\u115c0",  # ; Bottom # Mn   [2] SIDDHAM SIGN VIRAMA..SIDDHAM SIGN NUKTA
        "\u115dc","\u115dd",  # ; Bottom # Mn   [2] SIDDHAM VOWEL SIGN ALTERNATE U..SIDDHAM VOWEL SIGN ALTERNATE UU
        "\u11633","\u11634","\u11635","\u11636","\u11637","\u11638",  # ; Bottom # Mn   [6] MODI VOWEL SIGN U..MODI VOWEL SIGN VOCALIC LL
        "\u1163F",  # ; Bottom # Mn       MODI SIGN VIRAMA
        "\u116b0","\u116b1",  # ; Bottom # Mn   [2] TAKRI VOWEL SIGN U..TAKRI VOWEL SIGN UU
        "\u116B7",  # ; Bottom # Mn       TAKRI SIGN NUKTA
        "\u1171D",  # ; Bottom # Mn       AHOM CONSONANT SIGN MEDIAL LA
        "\u11724","\u11725",  # ; Bottom # Mn   [2] AHOM VOWEL SIGN U..AHOM VOWEL SIGN UU
        "\u11728",  # ; Bottom # Mn       AHOM VOWEL SIGN O
        "\u11a02","\u11a03",  # ; Bottom # Mn   [2] ZANABAZAR SQUARE VOWEL SIGN UE..ZANABAZAR SQUARE VOWEL SIGN U
        "\u11A0A",  # ; Bottom # Mn       ZANABAZAR SQUARE VOWEL LENGTH MARK
        "\u11a33","\u11a34",  # ; Bottom # Mn   [2] ZANABAZAR SQUARE FINAL CONSONANT MARK..ZANABAZAR SQUARE SIGN VIRAMA
        "\u11a3b","\u11a3c","\u11a3d","\u11a3e",  # ; Bottom # Mn   [4] ZANABAZAR SQUARE CLUSTER-FINAL LETTER YA..ZANABAZAR SQUARE CLUSTER-FINAL LETTER VA
        "\u11a52","\u11a53",  # ; Bottom # Mn   [2] SOYOMBO VOWEL SIGN UE..SOYOMBO VOWEL SIGN U
        "\u11a59","\u11a5a","\u11a5b",  # ; Bottom # Mn   [3] SOYOMBO VOWEL SIGN VOCALIC R..SOYOMBO VOWEL LENGTH MARK
        "\u11a8a","\u11a8b","\u11a8c","\u11a8d","\u11a8e","\u11a8f","\u11a90","\u11a91","\u11a92","\u11a93","\u11a94","\u11a95",  # ; Bottom # Mn  [12] SOYOMBO FINAL CONSONANT SIGN G..SOYOMBO FINAL CONSONANT SIGN -A
        "\u11c32","\u11c33","\u11c34","\u11c35","\u11c36",  # ; Bottom # Mn   [5] BHAIKSUKI VOWEL SIGN U..BHAIKSUKI VOWEL SIGN VOCALIC L
        "\u11C3F",  # ; Bottom # Mn       BHAIKSUKI SIGN VIRAMA
        "\u11c92","\u11c93","\u11c94","\u11c95","\u11c96","\u11c97","\u11c98","\u11c99","\u11c9a","\u11c9b","\u11c9c","\u11c9d","\u11c9e","\u11c9f","\u11ca0","\u11ca1","\u11ca2","\u11ca3","\u11ca4","\u11ca5","\u11ca6","\u11ca7",  # ; Bottom # Mn  [22] MARCHEN SUBJOINED LETTER KA..MARCHEN SUBJOINED LETTER ZA
        "\u11caa","\u11cab","\u11cac","\u11cad","\u11cae","\u11caf","\u11cb0",  # ; Bottom # Mn   [7] MARCHEN SUBJOINED LETTER RA..MARCHEN VOWEL SIGN AA
        "\u11CB2",  # ; Bottom # Mn       MARCHEN VOWEL SIGN U
        "\u11D36",  # ; Bottom # Mn       MASARAM GONDI VOWEL SIGN VOCALIC R
        "\u11D42",  # ; Bottom # Mn       MASARAM GONDI SIGN NUKTA
        "\u11D44",  # ; Bottom # Mn       MASARAM GONDI SIGN HALANTA
        "\u11D47",  # ; Bottom # Mn       MASARAM GONDI RA-KARA
        "\u0C48",  # ; Top_And_Bottom # Mn       TELUGU VOWEL SIGN AI
        "\u0F73",  # ; Top_And_Bottom # Mn       TIBETAN VOWEL SIGN II
        "\u0f76","\u0f77","\u0f78","\u0f79",  # ; Top_And_Bottom # Mn   [4] TIBETAN VOWEL SIGN VOCALIC R..TIBETAN VOWEL SIGN VOCALIC LL
        "\u0F81",  # ; Top_And_Bottom # Mn       TIBETAN VOWEL SIGN REVERSED II
        "\u1B3C",  # ; Top_And_Bottom # Mn       BALINESE VOWEL SIGN LA LENGA
        "\u1112e","\u1112f",  # ; Top_And_Bottom # Mn   [2] CHAKMA VOWEL SIGN O..CHAKMA VOWEL SIGN AU
        "\u0AC9",  # ; Top_And_Right # Mc       GUJARATI VOWEL SIGN CANDRA O
        "\u0B57",  # ; Top_And_Right # Mc       ORIYA AU LENGTH MARK
        "\u0CC0",  # ; Top_And_Right # Mc       KANNADA VOWEL SIGN II
        "\u0cc7","\u0cc8",  # ; Top_And_Right # Mc   [2] KANNADA VOWEL SIGN EE..KANNADA VOWEL SIGN AI
        "\u0cca","\u0ccb",  # ; Top_And_Right # Mc   [2] KANNADA VOWEL SIGN O..KANNADA VOWEL SIGN OO
        "\u1925","\u1926",  # ; Top_And_Right # Mc   [2] LIMBU VOWEL SIGN OO..LIMBU VOWEL SIGN AU
        "\u1B43",  # ; Top_And_Right # Mc       BALINESE VOWEL SIGN PEPET TEDUNG
        "\u111BF",  # ; Top_And_Right # Mc       SHARADA VOWEL SIGN AU
        "\u11232","\u11233",  # ; Top_And_Right # Mc   [2] KHOJKI VOWEL SIGN O..KHOJKI VOWEL SIGN AU
        "\u0B48",  # ; Top_And_Left # Mc       ORIYA VOWEL SIGN AI
        "\u0DDA",  # ; Top_And_Left # Mc       SINHALA VOWEL SIGN DIGA KOMBUVA
        "\u17BE",  # ; Top_And_Left # Mc       KHMER VOWEL SIGN OE
        "\u1C29",  # ; Top_And_Left # Mc       LEPCHA VOWEL SIGN OO
        "\u114BB",  # ; Top_And_Left # Mc       TIRHUTA VOWEL SIGN AI
        "\u115B9",  # ; Top_And_Left # Mc       SIDDHAM VOWEL SIGN AI
        "\u0B4C",  # ; Top_And_Left_And_Right # Mc       ORIYA VOWEL SIGN AU
        "\u0DDD",  # ; Top_And_Left_And_Right # Mc       SINHALA VOWEL SIGN KOMBUVA HAA DIGA AELA-PILLA
        "\u17BF",  # ; Top_And_Left_And_Right # Mc       KHMER VOWEL SIGN YA
        "\u115BB",  # ; Top_And_Left_And_Right # Mc       SIDDHAM VOWEL SIGN AU
        "\u1B3B",  # ; Bottom_And_Right # Mc       BALINESE VOWEL SIGN RA REPA TEDUNG
        "\uA9C0",  # ; Bottom_And_Right # Mc       JAVANESE PANGKON
        "\uA9BF",  # ; Bottom_And_Left # Mc       JAVANESE CONSONANT SIGN CAKRA
        "\u1B3D",  # ; Top_And_Bottom_And_Right # Mc       BALINESE VOWEL SIGN LA LENGA TEDUNG
        "\u1CD4",  # ; Overstruck # Mn       VEDIC SIGN YAJURVEDIC MIDLINE SVARITA
        "\u1ce2","\u1ce3","\u1ce4","\u1ce5","\u1ce6","\u1ce7","\u1ce8",  # ; Overstruck # Mn   [7] VEDIC SIGN VISARGA SVARITA..VEDIC SIGN VISARGA ANUDATTA WITH TAIL
        "\u10A01",  # ; Overstruck # Mn       KHAROSHTHI VOWEL SIGN I
        "\u10A06",  # ; Overstruck # Mn       KHAROSHTHI VOWEL SIGN O
    ]
    test_data.each do |string|
      assert @validator.valid_encoding?(string), "U10_IndicPositionalCategory: #{string}"
      assert string.force_encoding("UTF-8").valid_encoding?, "U10_IndicPositionalCategory: #{string}" if @vercheck
    end
  end

end

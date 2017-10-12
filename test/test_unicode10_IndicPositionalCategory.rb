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
        "\d0903",  # ; Right # Mc       DEVANAGARI SIGN VISARGA
        "\d093B",  # ; Right # Mc       DEVANAGARI VOWEL SIGN OOE
        "\d093E",  # ; Right # Mc       DEVANAGARI VOWEL SIGN AA
        "\d0940",  # ; Right # Mc       DEVANAGARI VOWEL SIGN II
        "\d0949","\d094a","\d094b","\d094c",  # ; Right # Mc   [4] DEVANAGARI VOWEL SIGN CANDRA O..DEVANAGARI VOWEL SIGN AU
        "\d094F",  # ; Right # Mc       DEVANAGARI VOWEL SIGN AW
        "\d0982","\d0983",  # ; Right # Mc   [2] BENGALI SIGN ANUSVARA..BENGALI SIGN VISARGA
        "\d09BE",  # ; Right # Mc       BENGALI VOWEL SIGN AA
        "\d09C0",  # ; Right # Mc       BENGALI VOWEL SIGN II
        "\d09D7",  # ; Right # Mc       BENGALI AU LENGTH MARK
        "\d0A03",  # ; Right # Mc       GURMUKHI SIGN VISARGA
        "\d0A3E",  # ; Right # Mc       GURMUKHI VOWEL SIGN AA
        "\d0A40",  # ; Right # Mc       GURMUKHI VOWEL SIGN II
        "\d0A83",  # ; Right # Mc       GUJARATI SIGN VISARGA
        "\d0ABE",  # ; Right # Mc       GUJARATI VOWEL SIGN AA
        "\d0AC0",  # ; Right # Mc       GUJARATI VOWEL SIGN II
        "\d0acb","\d0acc",  # ; Right # Mc   [2] GUJARATI VOWEL SIGN O..GUJARATI VOWEL SIGN AU
        "\d0b02","\d0b03",  # ; Right # Mc   [2] ORIYA SIGN ANUSVARA..ORIYA SIGN VISARGA
        "\d0B3E",  # ; Right # Mc       ORIYA VOWEL SIGN AA
        "\d0B40",  # ; Right # Mc       ORIYA VOWEL SIGN II
        "\d0bbe","\d0bbf",  # ; Right # Mc   [2] TAMIL VOWEL SIGN AA..TAMIL VOWEL SIGN I
        "\d0bc1","\d0bc2",  # ; Right # Mc   [2] TAMIL VOWEL SIGN U..TAMIL VOWEL SIGN UU
        "\d0BD7",  # ; Right # Mc       TAMIL AU LENGTH MARK
        "\d0c01","\d0c02","\d0c03",  # ; Right # Mc   [3] TELUGU SIGN CANDRABINDU..TELUGU SIGN VISARGA
        "\d0c41","\d0c42","\d0c43","\d0c44",  # ; Right # Mc   [4] TELUGU VOWEL SIGN U..TELUGU VOWEL SIGN VOCALIC RR
        "\d0c82","\d0c83",  # ; Right # Mc   [2] KANNADA SIGN ANUSVARA..KANNADA SIGN VISARGA
        "\d0CBE",  # ; Right # Mc       KANNADA VOWEL SIGN AA
        "\d0cc1","\d0cc2","\d0cc3","\d0cc4",  # ; Right # Mc   [4] KANNADA VOWEL SIGN U..KANNADA VOWEL SIGN VOCALIC RR
        "\d0cd5","\d0cd6",  # ; Right # Mc   [2] KANNADA LENGTH MARK..KANNADA AI LENGTH MARK
        "\d0d02","\d0d03",  # ; Right # Mc   [2] MALAYALAM SIGN ANUSVARA..MALAYALAM SIGN VISARGA
        "\d0d3e","\d0d3f","\d0d40",  # ; Right # Mc   [3] MALAYALAM VOWEL SIGN AA..MALAYALAM VOWEL SIGN II
        "\d0d41","\d0d42",  # ; Right # Mn   [2] MALAYALAM VOWEL SIGN U..MALAYALAM VOWEL SIGN UU
        "\d0D57",  # ; Right # Mc       MALAYALAM AU LENGTH MARK
        "\d0d82","\d0d83",  # ; Right # Mc   [2] SINHALA SIGN ANUSVARAYA..SINHALA SIGN VISARGAYA
        "\d0dcf","\d0dd0","\d0dd1",  # ; Right # Mc   [3] SINHALA VOWEL SIGN AELA-PILLA..SINHALA VOWEL SIGN DIGA AEDA-PILLA
        "\d0DD8",  # ; Right # Mc       SINHALA VOWEL SIGN GAETTA-PILLA
        "\d0DDF",  # ; Right # Mc       SINHALA VOWEL SIGN GAYANUKITTA
        "\d0df2","\d0df3",  # ; Right # Mc   [2] SINHALA VOWEL SIGN DIGA GAETTA-PILLA..SINHALA VOWEL SIGN DIGA GAYANUKITTA
        "\d0E30",  # ; Right # Lo       THAI CHARACTER SARA A
        "\d0e32","\d0e33",  # ; Right # Lo   [2] THAI CHARACTER SARA AA..THAI CHARACTER SARA AM
        "\d0E45",  # ; Right # Lo       THAI CHARACTER LAKKHANGYAO
        "\d0EB0",  # ; Right # Lo       LAO VOWEL SIGN A
        "\d0eb2","\d0eb3",  # ; Right # Lo   [2] LAO VOWEL SIGN AA..LAO VOWEL SIGN AM
        "\d0F3E",  # ; Right # Mc       TIBETAN SIGN YAR TSHES
        "\d0F7F",  # ; Right # Mc       TIBETAN SIGN RNAM BCAD
        "\d102b","\d102c",  # ; Right # Mc   [2] MYANMAR VOWEL SIGN TALL AA..MYANMAR VOWEL SIGN AA
        "\d1038",  # ; Right # Mc       MYANMAR SIGN VISARGA
        "\d103B",  # ; Right # Mc       MYANMAR CONSONANT SIGN MEDIAL YA
        "\d1056","\d1057",  # ; Right # Mc   [2] MYANMAR VOWEL SIGN VOCALIC R..MYANMAR VOWEL SIGN VOCALIC RR
        "\d1062","\d1063","\d1064",  # ; Right # Mc   [3] MYANMAR VOWEL SIGN SGAW KAREN EU..MYANMAR TONE MARK SGAW KAREN KE PHO
        "\d1067","\d1068","\d1069","\d106a","\d106b","\d106c","\d106d",  # ; Right # Mc   [7] MYANMAR VOWEL SIGN WESTERN PWO KAREN EU..MYANMAR SIGN WESTERN PWO KAREN TONE-5
        "\d1083",  # ; Right # Mc       MYANMAR VOWEL SIGN SHAN AA
        "\d1087","\d1088","\d1089","\d108a","\d108b","\d108c",  # ; Right # Mc   [6] MYANMAR SIGN SHAN TONE-2..MYANMAR SIGN SHAN COUNCIL TONE-3
        "\d108F",  # ; Right # Mc       MYANMAR SIGN RUMAI PALAUNG TONE-5
        "\d109a","\d109b","\d109c",  # ; Right # Mc   [3] MYANMAR SIGN KHAMTI TONE-1..MYANMAR VOWEL SIGN AITON A
        "\d17B6",  # ; Right # Mc       KHMER VOWEL SIGN AA
        "\d17c7","\d17c8",  # ; Right # Mc   [2] KHMER SIGN REAHMUK..KHMER SIGN YUUKALEAPINTU
        "\d1923","\d1924",  # ; Right # Mc   [2] LIMBU VOWEL SIGN EE..LIMBU VOWEL SIGN AI
        "\d1929","\d192a","\d192b",  # ; Right # Mc   [3] LIMBU SUBJOINED LETTER YA..LIMBU SUBJOINED LETTER WA
        "\d1930","\d1931",  # ; Right # Mc   [2] LIMBU SMALL LETTER KA..LIMBU SMALL LETTER NGA
        "\d1933","\d1934","\d1935","\d1936","\d1937","\d1938",  # ; Right # Mc   [6] LIMBU SMALL LETTER TA..LIMBU SMALL LETTER LA
        "\d19b0","\d19b1","\d19b2","\d19b3","\d19b4",  # ; Right # Lo   [5] NEW TAI LUE VOWEL SIGN VOWEL SHORTENER..NEW TAI LUE VOWEL SIGN UU
        "\d19b8","\d19b9",  # ; Right # Lo   [2] NEW TAI LUE VOWEL SIGN OA..NEW TAI LUE VOWEL SIGN UE
        "\d19bb","\d19bc","\d19bd","\d19be","\d19bf","\d19c0",  # ; Right # Lo   [6] NEW TAI LUE VOWEL SIGN AAY..NEW TAI LUE VOWEL SIGN IY
        "\d19c8","\d19c9",  # ; Right # Lo   [2] NEW TAI LUE TONE MARK-1..NEW TAI LUE TONE MARK-2
        "\d1A1A",  # ; Right # Mc       BUGINESE VOWEL SIGN O
        "\d1A57",  # ; Right # Mc       TAI THAM CONSONANT SIGN LA TANG LAI
        "\d1A61",  # ; Right # Mc       TAI THAM VOWEL SIGN A
        "\d1a63","\d1a64",  # ; Right # Mc   [2] TAI THAM VOWEL SIGN AA..TAI THAM VOWEL SIGN TALL AA
        "\d1A6D",  # ; Right # Mc       TAI THAM VOWEL SIGN OY
        "\d1B04",  # ; Right # Mc       BALINESE SIGN BISAH
        "\d1B35",  # ; Right # Mc       BALINESE VOWEL SIGN TEDUNG
        "\d1B44",  # ; Right # Mc       BALINESE ADEG ADEG
        "\d1B82",  # ; Right # Mc       SUNDANESE SIGN PANGWISAD
        "\d1BA1",  # ; Right # Mc       SUNDANESE CONSONANT SIGN PAMINGKAL
        "\d1BA7",  # ; Right # Mc       SUNDANESE VOWEL SIGN PANOLONG
        "\d1BAA",  # ; Right # Mc       SUNDANESE SIGN PAMAAEH
        "\d1BE7",  # ; Right # Mc       BATAK VOWEL SIGN E
        "\d1bea","\d1beb","\d1bec",  # ; Right # Mc   [3] BATAK VOWEL SIGN I..BATAK VOWEL SIGN O
        "\d1BEE",  # ; Right # Mc       BATAK VOWEL SIGN U
        "\d1bf2","\d1bf3",  # ; Right # Mc   [2] BATAK PANGOLAT..BATAK PANONGONAN
        "\d1c24","\d1c25","\d1c26",  # ; Right # Mc   [3] LEPCHA SUBJOINED LETTER YA..LEPCHA VOWEL SIGN AA
        "\d1c2a","\d1c2b",  # ; Right # Mc   [2] LEPCHA VOWEL SIGN U..LEPCHA VOWEL SIGN UU
        "\d1CE1",  # ; Right # Mc       VEDIC TONE ATHARVAVEDIC INDEPENDENT SVARITA
        "\d1CF7",  # ; Right # Mc       VEDIC SIGN ATIKRAMA
        "\da823","\da824",  # ; Right # Mc   [2] SYLOTI NAGRI VOWEL SIGN A..SYLOTI NAGRI VOWEL SIGN I
        "\dA827",  # ; Right # Mc       SYLOTI NAGRI VOWEL SIGN OO
        "\da880","\da881",  # ; Right # Mc   [2] SAURASHTRA SIGN ANUSVARA..SAURASHTRA SIGN VISARGA
        "\da8b4","\da8b5","\da8b6","\da8b7","\da8b8","\da8b9","\da8ba","\da8bb","\da8bc","\da8bd","\da8be","\da8bf","\da8c0","\da8c1","\da8c2","\da8c3",  # ; Right # Mc  [16] SAURASHTRA CONSONANT SIGN HAARU..SAURASHTRA VOWEL SIGN AU
        "\da952","\da953",  # ; Right # Mc   [2] REJANG CONSONANT SIGN H..REJANG VIRAMA
        "\dA983",  # ; Right # Mc       JAVANESE SIGN WIGNYAN
        "\da9b4","\da9b5",  # ; Right # Mc   [2] JAVANESE VOWEL SIGN TARUNG..JAVANESE VOWEL SIGN TOLONG
        "\da9bd","\da9be",  # ; Right # Mc   [2] JAVANESE CONSONANT SIGN KERET..JAVANESE CONSONANT SIGN PENGKAL
        "\dAA33",  # ; Right # Mc       CHAM CONSONANT SIGN YA
        "\dAA4D",  # ; Right # Mc       CHAM CONSONANT SIGN FINAL H
        "\dAA7B",  # ; Right # Mc       MYANMAR SIGN PAO KAREN TONE
        "\dAA7D",  # ; Right # Mc       MYANMAR SIGN TAI LAING TONE-5
        "\dAAB1",  # ; Right # Lo       TAI VIET VOWEL AA
        "\dAABA",  # ; Right # Lo       TAI VIET VOWEL UA
        "\dAABD",  # ; Right # Lo       TAI VIET VOWEL AN
        "\dAAEF",  # ; Right # Mc       MEETEI MAYEK VOWEL SIGN AAU
        "\dAAF5",  # ; Right # Mc       MEETEI MAYEK VOWEL SIGN VISARGA
        "\dabe3","\dabe4",  # ; Right # Mc   [2] MEETEI MAYEK VOWEL SIGN ONAP..MEETEI MAYEK VOWEL SIGN INAP
        "\dabe6","\dabe7",  # ; Right # Mc   [2] MEETEI MAYEK VOWEL SIGN YENAP..MEETEI MAYEK VOWEL SIGN SOUNAP
        "\dabe9","\dabea",  # ; Right # Mc   [2] MEETEI MAYEK VOWEL SIGN CHEINAP..MEETEI MAYEK VOWEL SIGN NUNG
        "\dABEC",  # ; Right # Mc       MEETEI MAYEK LUM IYEK
        "\d11000",  # ; Right # Mc       BRAHMI SIGN CANDRABINDU
        "\d11002",  # ; Right # Mc       BRAHMI SIGN VISARGA
        "\d11082",  # ; Right # Mc       KAITHI SIGN VISARGA
        "\d110B0",  # ; Right # Mc       KAITHI VOWEL SIGN AA
        "\d110B2",  # ; Right # Mc       KAITHI VOWEL SIGN II
        "\d110b7","\d110b8",  # ; Right # Mc   [2] KAITHI VOWEL SIGN O..KAITHI VOWEL SIGN AU
        "\d11182",  # ; Right # Mc       SHARADA SIGN VISARGA
        "\d111B3",  # ; Right # Mc       SHARADA VOWEL SIGN AA
        "\d111B5",  # ; Right # Mc       SHARADA VOWEL SIGN II
        "\d111C0",  # ; Right # Mc       SHARADA SIGN VIRAMA
        "\d1122c","\d1122d","\d1122e",  # ; Right # Mc   [3] KHOJKI VOWEL SIGN AA..KHOJKI VOWEL SIGN II
        "\d11235",  # ; Right # Mc       KHOJKI SIGN VIRAMA
        "\d112E0",  # ; Right # Mc       KHUDAWADI VOWEL SIGN AA
        "\d112E2",  # ; Right # Mc       KHUDAWADI VOWEL SIGN II
        "\d11302","\d11303",  # ; Right # Mc   [2] GRANTHA SIGN ANUSVARA..GRANTHA SIGN VISARGA
        "\d1133e","\d1133f",  # ; Right # Mc   [2] GRANTHA VOWEL SIGN AA..GRANTHA VOWEL SIGN I
        "\d11341","\d11342","\d11343","\d11344",  # ; Right # Mc   [4] GRANTHA VOWEL SIGN U..GRANTHA VOWEL SIGN VOCALIC RR
        "\d1134D",  # ; Right # Mc       GRANTHA SIGN VIRAMA
        "\d11357",  # ; Right # Mc       GRANTHA AU LENGTH MARK
        "\d11362","\d11363",  # ; Right # Mc   [2] GRANTHA VOWEL SIGN VOCALIC L..GRANTHA VOWEL SIGN VOCALIC LL
        "\d11435",  # ; Right # Mc       NEWA VOWEL SIGN AA
        "\d11437",  # ; Right # Mc       NEWA VOWEL SIGN II
        "\d11440","\d11441",  # ; Right # Mc   [2] NEWA VOWEL SIGN O..NEWA VOWEL SIGN AU
        "\d11445",  # ; Right # Mc       NEWA SIGN VISARGA
        "\d114B0",  # ; Right # Mc       TIRHUTA VOWEL SIGN AA
        "\d114B2",  # ; Right # Mc       TIRHUTA VOWEL SIGN II
        "\d114BD",  # ; Right # Mc       TIRHUTA VOWEL SIGN SHORT O
        "\d114C1",  # ; Right # Mc       TIRHUTA SIGN VISARGA
        "\d115AF",  # ; Right # Mc       SIDDHAM VOWEL SIGN AA
        "\d115B1",  # ; Right # Mc       SIDDHAM VOWEL SIGN II
        "\d115BE",  # ; Right # Mc       SIDDHAM SIGN VISARGA
        "\d11630","\d11631","\d11632",  # ; Right # Mc   [3] MODI VOWEL SIGN AA..MODI VOWEL SIGN II
        "\d1163b","\d1163c",  # ; Right # Mc   [2] MODI VOWEL SIGN O..MODI VOWEL SIGN AU
        "\d1163E",  # ; Right # Mc       MODI SIGN VISARGA
        "\d116AC",  # ; Right # Mc       TAKRI SIGN VISARGA
        "\d116AF",  # ; Right # Mc       TAKRI VOWEL SIGN II
        "\d116B6",  # ; Right # Mc       TAKRI SIGN VIRAMA
        "\d11720","\d11721",  # ; Right # Mc   [2] AHOM VOWEL SIGN A..AHOM VOWEL SIGN AA
        "\d11A39",  # ; Right # Mc       ZANABAZAR SQUARE SIGN VISARGA
        "\d11a57","\d11a58",  # ; Right # Mc   [2] SOYOMBO VOWEL SIGN AI..SOYOMBO VOWEL SIGN AU
        "\d11A97",  # ; Right # Mc       SOYOMBO SIGN VISARGA
        "\d11C2F",  # ; Right # Mc       BHAIKSUKI VOWEL SIGN AA
        "\d11C3E",  # ; Right # Mc       BHAIKSUKI SIGN VISARGA
        "\d11CA9",  # ; Right # Mc       MARCHEN SUBJOINED LETTER YA
        "\d11CB4",  # ; Right # Mc       MARCHEN VOWEL SIGN O
        "\d093F",  # ; Left # Mc       DEVANAGARI VOWEL SIGN I
        "\d094E",  # ; Left # Mc       DEVANAGARI VOWEL SIGN PRISHTHAMATRA E
        "\d09BF",  # ; Left # Mc       BENGALI VOWEL SIGN I
        "\d09c7","\d09c8",  # ; Left # Mc   [2] BENGALI VOWEL SIGN E..BENGALI VOWEL SIGN AI
        "\d0A3F",  # ; Left # Mc       GURMUKHI VOWEL SIGN I
        "\d0ABF",  # ; Left # Mc       GUJARATI VOWEL SIGN I
        "\d0B47",  # ; Left # Mc       ORIYA VOWEL SIGN E
        "\d0bc6","\d0bc7","\d0bc8",  # ; Left # Mc   [3] TAMIL VOWEL SIGN E..TAMIL VOWEL SIGN AI
        "\d0d46","\d0d47","\d0d48",  # ; Left # Mc   [3] MALAYALAM VOWEL SIGN E..MALAYALAM VOWEL SIGN AI
        "\d0DD9",  # ; Left # Mc       SINHALA VOWEL SIGN KOMBUVA
        "\d0DDB",  # ; Left # Mc       SINHALA VOWEL SIGN KOMBU DEKA
        "\d0F3F",  # ; Left # Mc       TIBETAN SIGN MAR TSHES
        "\d1031",  # ; Left # Mc       MYANMAR VOWEL SIGN E
        "\d1084",  # ; Left # Mc       MYANMAR VOWEL SIGN SHAN E
        "\d17c1","\d17c2","\d17c3",  # ; Left # Mc   [3] KHMER VOWEL SIGN E..KHMER VOWEL SIGN AI
        "\d1A19",  # ; Left # Mc       BUGINESE VOWEL SIGN E
        "\d1A55",  # ; Left # Mc       TAI THAM CONSONANT SIGN MEDIAL RA
        "\d1a6e","\d1a6f","\d1a70","\d1a71","\d1a72",  # ; Left # Mc   [5] TAI THAM VOWEL SIGN E..TAI THAM VOWEL SIGN THAM AI
        "\d1b3e","\d1b3f",  # ; Left # Mc   [2] BALINESE VOWEL SIGN TALING..BALINESE VOWEL SIGN TALING REPA
        "\d1BA6",  # ; Left # Mc       SUNDANESE VOWEL SIGN PANAELAENG
        "\d1c27","\d1c28",  # ; Left # Mc   [2] LEPCHA VOWEL SIGN I..LEPCHA VOWEL SIGN O
        "\d1c34","\d1c35",  # ; Left # Mc   [2] LEPCHA CONSONANT SIGN NYIN-DO..LEPCHA CONSONANT SIGN KANG
        "\da9ba","\da9bb",  # ; Left # Mc   [2] JAVANESE VOWEL SIGN TALING..JAVANESE VOWEL SIGN DIRGA MURE
        "\daa2f","\daa30",  # ; Left # Mc   [2] CHAM VOWEL SIGN O..CHAM VOWEL SIGN AI
        "\dAA34",  # ; Left # Mc       CHAM CONSONANT SIGN RA
        "\dAAEB",  # ; Left # Mc       MEETEI MAYEK VOWEL SIGN II
        "\dAAEE",  # ; Left # Mc       MEETEI MAYEK VOWEL SIGN AU
        "\d110B1",  # ; Left # Mc       KAITHI VOWEL SIGN I
        "\d1112C",  # ; Left # Mc       CHAKMA VOWEL SIGN E
        "\d111B4",  # ; Left # Mc       SHARADA VOWEL SIGN I
        "\d112E1",  # ; Left # Mc       KHUDAWADI VOWEL SIGN I
        "\d11347","\d11348",  # ; Left # Mc   [2] GRANTHA VOWEL SIGN EE..GRANTHA VOWEL SIGN AI
        "\d11436",  # ; Left # Mc       NEWA VOWEL SIGN I
        "\d114B1",  # ; Left # Mc       TIRHUTA VOWEL SIGN I
        "\d114B9",  # ; Left # Mc       TIRHUTA VOWEL SIGN E
        "\d115B0",  # ; Left # Mc       SIDDHAM VOWEL SIGN I
        "\d115B8",  # ; Left # Mc       SIDDHAM VOWEL SIGN E
        "\d116AE",  # ; Left # Mc       TAKRI VOWEL SIGN I
        "\d11726",  # ; Left # Mc       AHOM VOWEL SIGN E
        "\d11CB1",  # ; Left # Mc       MARCHEN VOWEL SIGN I
        "\d0e40","\d0e41","\d0e42","\d0e43","\d0e44",  # ; Visual_Order_Left # Lo   [5] THAI CHARACTER SARA E..THAI CHARACTER SARA AI MAIMALAI
        "\d0ec0","\d0ec1","\d0ec2","\d0ec3","\d0ec4",  # ; Visual_Order_Left # Lo   [5] LAO VOWEL SIGN E..LAO VOWEL SIGN AI
        "\d19b5","\d19b6","\d19b7",  # ; Visual_Order_Left # Lo   [3] NEW TAI LUE VOWEL SIGN E..NEW TAI LUE VOWEL SIGN O
        "\d19BA",  # ; Visual_Order_Left # Lo       NEW TAI LUE VOWEL SIGN AY
        "\daab5","\daab6",  # ; Visual_Order_Left # Lo   [2] TAI VIET VOWEL E..TAI VIET VOWEL O
        "\dAAB9",  # ; Visual_Order_Left # Lo       TAI VIET VOWEL UEA
        "\daabb","\daabc",  # ; Visual_Order_Left # Lo   [2] TAI VIET VOWEL AUE..TAI VIET VOWEL AY
        "\d09cb","\d09cc",  # ; Left_And_Right # Mc   [2] BENGALI VOWEL SIGN O..BENGALI VOWEL SIGN AU
        "\d0B4B",  # ; Left_And_Right # Mc       ORIYA VOWEL SIGN O
        "\d0bca","\d0bcb","\d0bcc",  # ; Left_And_Right # Mc   [3] TAMIL VOWEL SIGN O..TAMIL VOWEL SIGN AU
        "\d0d4a","\d0d4b","\d0d4c",  # ; Left_And_Right # Mc   [3] MALAYALAM VOWEL SIGN O..MALAYALAM VOWEL SIGN AU
        "\d0DDC",  # ; Left_And_Right # Mc       SINHALA VOWEL SIGN KOMBUVA HAA AELA-PILLA
        "\d0DDE",  # ; Left_And_Right # Mc       SINHALA VOWEL SIGN KOMBUVA HAA GAYANUKITTA
        "\d17C0",  # ; Left_And_Right # Mc       KHMER VOWEL SIGN IE
        "\d17c4","\d17c5",  # ; Left_And_Right # Mc   [2] KHMER VOWEL SIGN OO..KHMER VOWEL SIGN AU
        "\d1b40","\d1b41",  # ; Left_And_Right # Mc   [2] BALINESE VOWEL SIGN TALING TEDUNG..BALINESE VOWEL SIGN TALING REPA TEDUNG
        "\d1134b","\d1134c",  # ; Left_And_Right # Mc   [2] GRANTHA VOWEL SIGN OO..GRANTHA VOWEL SIGN AU
        "\d114BC",  # ; Left_And_Right # Mc       TIRHUTA VOWEL SIGN O
        "\d114BE",  # ; Left_And_Right # Mc       TIRHUTA VOWEL SIGN AU
        "\d115BA",  # ; Left_And_Right # Mc       SIDDHAM VOWEL SIGN O
        "\d0900","\d0901","\d0902",  # ; Top # Mn   [3] DEVANAGARI SIGN INVERTED CANDRABINDU..DEVANAGARI SIGN ANUSVARA
        "\d093A",  # ; Top # Mn       DEVANAGARI VOWEL SIGN OE
        "\d0945","\d0946","\d0947","\d0948",  # ; Top # Mn   [4] DEVANAGARI VOWEL SIGN CANDRA E..DEVANAGARI VOWEL SIGN AI
        "\d0951",  # ; Top # Mn       DEVANAGARI STRESS SIGN UDATTA
        "\d0953","\d0954","\d0955",  # ; Top # Mn   [3] DEVANAGARI GRAVE ACCENT..DEVANAGARI VOWEL SIGN CANDRA LONG E
        "\d0981",  # ; Top # Mn       BENGALI SIGN CANDRABINDU
        "\d0a01","\d0a02",  # ; Top # Mn   [2] GURMUKHI SIGN ADAK BINDI..GURMUKHI SIGN BINDI
        "\d0a47","\d0a48",  # ; Top # Mn   [2] GURMUKHI VOWEL SIGN EE..GURMUKHI VOWEL SIGN AI
        "\d0a4b","\d0a4c",  # ; Top # Mn   [2] GURMUKHI VOWEL SIGN OO..GURMUKHI VOWEL SIGN AU
        "\d0a70","\d0a71",  # ; Top # Mn   [2] GURMUKHI TIPPI..GURMUKHI ADDAK
        "\d0a81","\d0a82",  # ; Top # Mn   [2] GUJARATI SIGN CANDRABINDU..GUJARATI SIGN ANUSVARA
        "\d0AC5",  # ; Top # Mn       GUJARATI VOWEL SIGN CANDRA E
        "\d0ac7","\d0ac8",  # ; Top # Mn   [2] GUJARATI VOWEL SIGN E..GUJARATI VOWEL SIGN AI
        "\d0afa","\d0afb","\d0afc","\d0afd","\d0afe","\d0aff",  # ; Top # Mn   [6] GUJARATI SIGN SUKUN..GUJARATI SIGN TWO-CIRCLE NUKTA ABOVE
        "\d0B01",  # ; Top # Mn       ORIYA SIGN CANDRABINDU
        "\d0B3F",  # ; Top # Mn       ORIYA VOWEL SIGN I
        "\d0B56",  # ; Top # Mn       ORIYA AI LENGTH MARK
        "\d0B82",  # ; Top # Mn       TAMIL SIGN ANUSVARA
        "\d0BC0",  # ; Top # Mn       TAMIL VOWEL SIGN II
        "\d0BCD",  # ; Top # Mn       TAMIL SIGN VIRAMA
        "\d0C00",  # ; Top # Mn       TELUGU SIGN COMBINING CANDRABINDU ABOVE
        "\d0c3e","\d0c3f","\d0c40",  # ; Top # Mn   [3] TELUGU VOWEL SIGN AA..TELUGU VOWEL SIGN II
        "\d0c46","\d0c47",  # ; Top # Mn   [2] TELUGU VOWEL SIGN E..TELUGU VOWEL SIGN EE
        "\d0c4a","\d0c4b","\d0c4c","\d0c4d",  # ; Top # Mn   [4] TELUGU VOWEL SIGN O..TELUGU SIGN VIRAMA
        "\d0C55",  # ; Top # Mn       TELUGU LENGTH MARK
        "\d0C81",  # ; Top # Mn       KANNADA SIGN CANDRABINDU
        "\d0CBF",  # ; Top # Mn       KANNADA VOWEL SIGN I
        "\d0CC6",  # ; Top # Mn       KANNADA VOWEL SIGN E
        "\d0ccc","\d0ccd",  # ; Top # Mn   [2] KANNADA VOWEL SIGN AU..KANNADA SIGN VIRAMA
        "\d0d00","\d0d01",  # ; Top # Mn   [2] MALAYALAM SIGN COMBINING ANUSVARA ABOVE..MALAYALAM SIGN CANDRABINDU
        "\d0d3b","\d0d3c",  # ; Top # Mn   [2] MALAYALAM SIGN VERTICAL BAR VIRAMA..MALAYALAM SIGN CIRCULAR VIRAMA
        "\d0D4D",  # ; Top # Mn       MALAYALAM SIGN VIRAMA
        "\d0DCA",  # ; Top # Mn       SINHALA SIGN AL-LAKUNA
        "\d0dd2","\d0dd3",  # ; Top # Mn   [2] SINHALA VOWEL SIGN KETTI IS-PILLA..SINHALA VOWEL SIGN DIGA IS-PILLA
        "\d0E31",  # ; Top # Mn       THAI CHARACTER MAI HAN-AKAT
        "\d0e34","\d0e35","\d0e36","\d0e37",  # ; Top # Mn   [4] THAI CHARACTER SARA I..THAI CHARACTER SARA UEE
        "\d0e47","\d0e48","\d0e49","\d0e4a","\d0e4b","\d0e4c","\d0e4d","\d0e4e",  # ; Top # Mn   [8] THAI CHARACTER MAITAIKHU..THAI CHARACTER YAMAKKAN
        "\d0EB1",  # ; Top # Mn       LAO VOWEL SIGN MAI KAN
        "\d0eb4","\d0eb5","\d0eb6","\d0eb7",  # ; Top # Mn   [4] LAO VOWEL SIGN I..LAO VOWEL SIGN YY
        "\d0EBB",  # ; Top # Mn       LAO VOWEL SIGN MAI KON
        "\d0ec8","\d0ec9","\d0eca","\d0ecb","\d0ecc","\d0ecd",  # ; Top # Mn   [6] LAO TONE MAI EK..LAO NIGGAHITA
        "\d0F39",  # ; Top # Mn       TIBETAN MARK TSA -PHRU
        "\d0F72",  # ; Top # Mn       TIBETAN VOWEL SIGN I
        "\d0f7a","\d0f7b","\d0f7c","\d0f7d","\d0f7e",  # ; Top # Mn   [5] TIBETAN VOWEL SIGN E..TIBETAN SIGN RJES SU NGA RO
        "\d0F80",  # ; Top # Mn       TIBETAN VOWEL SIGN REVERSED I
        "\d0f82","\d0f83",  # ; Top # Mn   [2] TIBETAN SIGN NYI ZLA NAA DA..TIBETAN SIGN SNA LDAN
        "\d0f86","\d0f87",  # ; Top # Mn   [2] TIBETAN SIGN LCI RTAGS..TIBETAN SIGN YANG RTAGS
        "\d102d","\d102e",  # ; Top # Mn   [2] MYANMAR VOWEL SIGN I..MYANMAR VOWEL SIGN II
        "\d1032","\d1033","\d1034","\d1035","\d1036",  # ; Top # Mn   [5] MYANMAR VOWEL SIGN AI..MYANMAR SIGN ANUSVARA
        "\d103A",  # ; Top # Mn       MYANMAR SIGN ASAT
        "\d1071","\d1072","\d1073","\d1074",  # ; Top # Mn   [4] MYANMAR VOWEL SIGN GEBA KAREN I..MYANMAR VOWEL SIGN KAYAH EE
        "\d1085","\d1086",  # ; Top # Mn   [2] MYANMAR VOWEL SIGN SHAN E ABOVE..MYANMAR VOWEL SIGN SHAN FINAL Y
        "\d109D",  # ; Top # Mn       MYANMAR VOWEL SIGN AITON AI
        "\d1712",  # ; Top # Mn       TAGALOG VOWEL SIGN I
        "\d1732",  # ; Top # Mn       HANUNOO VOWEL SIGN I
        "\d1752",  # ; Top # Mn       BUHID VOWEL SIGN I
        "\d1772",  # ; Top # Mn       TAGBANWA VOWEL SIGN I
        "\d17b7","\d17b8","\d17b9","\d17ba",  # ; Top # Mn   [4] KHMER VOWEL SIGN I..KHMER VOWEL SIGN YY
        "\d17C6",  # ; Top # Mn       KHMER SIGN NIKAHIT
        "\d17c9","\d17ca","\d17cb","\d17cc","\d17cd","\d17ce","\d17cf","\d17d0","\d17d1",  # ; Top # Mn   [9] KHMER SIGN MUUSIKATOAN..KHMER SIGN VIRIAM
        "\d17D3",  # ; Top # Mn       KHMER SIGN BATHAMASAT
        "\d17DD",  # ; Top # Mn       KHMER SIGN ATTHACAN
        "\d1920","\d1921",  # ; Top # Mn   [2] LIMBU VOWEL SIGN A..LIMBU VOWEL SIGN I
        "\d1927","\d1928",  # ; Top # Mn   [2] LIMBU VOWEL SIGN E..LIMBU VOWEL SIGN O
        "\d193A",  # ; Top # Mn       LIMBU SIGN KEMPHRENG
        "\d1A17",  # ; Top # Mn       BUGINESE VOWEL SIGN I
        "\d1A1B",  # ; Top # Mn       BUGINESE VOWEL SIGN AE
        "\d1a58","\d1a59","\d1a5a",  # ; Top # Mn   [3] TAI THAM SIGN MAI KANG LAI..TAI THAM CONSONANT SIGN LOW PA
        "\d1A62",  # ; Top # Mn       TAI THAM VOWEL SIGN MAI SAT
        "\d1a65","\d1a66","\d1a67","\d1a68",  # ; Top # Mn   [4] TAI THAM VOWEL SIGN I..TAI THAM VOWEL SIGN UUE
        "\d1A6B",  # ; Top # Mn       TAI THAM VOWEL SIGN O
        "\d1a73","\d1a74","\d1a75","\d1a76","\d1a77","\d1a78","\d1a79","\d1a7a","\d1a7b","\d1a7c",  # ; Top # Mn  [10] TAI THAM VOWEL SIGN OA ABOVE..TAI THAM SIGN KHUEN-LUE KARAN
        "\d1b00","\d1b01","\d1b02","\d1b03",  # ; Top # Mn   [4] BALINESE SIGN ULU RICEM..BALINESE SIGN SURANG
        "\d1B34",  # ; Top # Mn       BALINESE SIGN REREKAN
        "\d1b36","\d1b37",  # ; Top # Mn   [2] BALINESE VOWEL SIGN ULU..BALINESE VOWEL SIGN ULU SARI
        "\d1B42",  # ; Top # Mn       BALINESE VOWEL SIGN PEPET
        "\d1B6B",  # ; Top # Mn       BALINESE MUSICAL SYMBOL COMBINING TEGEH
        "\d1b6d","\d1b6e","\d1b6f","\d1b70","\d1b71","\d1b72","\d1b73",  # ; Top # Mn   [7] BALINESE MUSICAL SYMBOL COMBINING KEMPUL..BALINESE MUSICAL SYMBOL COMBINING GONG
        "\d1b80","\d1b81",  # ; Top # Mn   [2] SUNDANESE SIGN PANYECEK..SUNDANESE SIGN PANGLAYAR
        "\d1BA4",  # ; Top # Mn       SUNDANESE VOWEL SIGN PANGHULU
        "\d1ba8","\d1ba9",  # ; Top # Mn   [2] SUNDANESE VOWEL SIGN PAMEPET..SUNDANESE VOWEL SIGN PANEULEUNG
        "\d1BE6",  # ; Top # Mn       BATAK SIGN TOMPI
        "\d1be8","\d1be9",  # ; Top # Mn   [2] BATAK VOWEL SIGN PAKPAK E..BATAK VOWEL SIGN EE
        "\d1BED",  # ; Top # Mn       BATAK VOWEL SIGN KARO O
        "\d1bef","\d1bf0","\d1bf1",  # ; Top # Mn   [3] BATAK VOWEL SIGN U FOR SIMALUNGUN SA..BATAK CONSONANT SIGN H
        "\d1c2d","\d1c2e","\d1c2f","\d1c30","\d1c31","\d1c32","\d1c33",  # ; Top # Mn   [7] LEPCHA CONSONANT SIGN K..LEPCHA CONSONANT SIGN T
        "\d1C36",  # ; Top # Mn       LEPCHA SIGN RAN
        "\d1cd0","\d1cd1","\d1cd2",  # ; Top # Mn   [3] VEDIC TONE KARSHANA..VEDIC TONE PRENKHA
        "\d1cda","\d1cdb",  # ; Top # Mn   [2] VEDIC TONE DOUBLE SVARITA..VEDIC TONE TRIPLE SVARITA
        "\d1CE0",  # ; Top # Mn       VEDIC TONE RIGVEDIC KASHMIRI INDEPENDENT SVARITA
        "\d1CF4",  # ; Top # Mn       VEDIC TONE CANDRA ABOVE
        "\d1DFB",  # ; Top # Mn       COMBINING DELETION MARK
        "\dA806",  # ; Top # Mn       SYLOTI NAGRI SIGN HASANTA
        "\dA80B",  # ; Top # Mn       SYLOTI NAGRI SIGN ANUSVARA
        "\dA826",  # ; Top # Mn       SYLOTI NAGRI VOWEL SIGN E
        "\dA8C5",  # ; Top # Mn       SAURASHTRA SIGN CANDRABINDU
        "\da8e0","\da8e1","\da8e2","\da8e3","\da8e4","\da8e5","\da8e6","\da8e7","\da8e8","\da8e9","\da8ea","\da8eb","\da8ec","\da8ed","\da8ee","\da8ef","\da8f0","\da8f1",  # ; Top # Mn  [18] COMBINING DEVANAGARI DIGIT ZERO..COMBINING DEVANAGARI SIGN AVAGRAHA
        "\dA94A",  # ; Top # Mn       REJANG VOWEL SIGN AI
        "\da94f","\da950","\da951",  # ; Top # Mn   [3] REJANG CONSONANT SIGN NG..REJANG CONSONANT SIGN R
        "\da980","\da981","\da982",  # ; Top # Mn   [3] JAVANESE SIGN PANYANGGA..JAVANESE SIGN LAYAR
        "\dA9B3",  # ; Top # Mn       JAVANESE SIGN CECAK TELU
        "\da9b6","\da9b7",  # ; Top # Mn   [2] JAVANESE VOWEL SIGN WULU..JAVANESE VOWEL SIGN WULU MELIK
        "\dA9BC",  # ; Top # Mn       JAVANESE VOWEL SIGN PEPET
        "\dA9E5",  # ; Top # Mn       MYANMAR SIGN SHAN SAW
        "\daa29","\daa2a","\daa2b","\daa2c",  # ; Top # Mn   [4] CHAM VOWEL SIGN AA..CHAM VOWEL SIGN EI
        "\dAA2E",  # ; Top # Mn       CHAM VOWEL SIGN OE
        "\dAA31",  # ; Top # Mn       CHAM VOWEL SIGN AU
        "\dAA43",  # ; Top # Mn       CHAM CONSONANT SIGN FINAL NG
        "\dAA4C",  # ; Top # Mn       CHAM CONSONANT SIGN FINAL M
        "\dAA7C",  # ; Top # Mn       MYANMAR SIGN TAI LAING TONE-2
        "\dAAB0",  # ; Top # Mn       TAI VIET MAI KANG
        "\daab2","\daab3",  # ; Top # Mn   [2] TAI VIET VOWEL I..TAI VIET VOWEL UE
        "\daab7","\daab8",  # ; Top # Mn   [2] TAI VIET MAI KHIT..TAI VIET VOWEL IA
        "\daabe","\daabf",  # ; Top # Mn   [2] TAI VIET VOWEL AM..TAI VIET TONE MAI EK
        "\dAAC1",  # ; Top # Mn       TAI VIET TONE MAI THO
        "\dAAED",  # ; Top # Mn       MEETEI MAYEK VOWEL SIGN AAI
        "\dABE5",  # ; Top # Mn       MEETEI MAYEK VOWEL SIGN ANAP
        "\d10A05",  # ; Top # Mn       KHAROSHTHI VOWEL SIGN E
        "\d10A0F",  # ; Top # Mn       KHAROSHTHI SIGN VISARGA
        "\d10A38",  # ; Top # Mn       KHAROSHTHI SIGN BAR ABOVE
        "\d11001",  # ; Top # Mn       BRAHMI SIGN ANUSVARA
        "\d11038","\d11039","\d1103a","\d1103b",  # ; Top # Mn   [4] BRAHMI VOWEL SIGN AA..BRAHMI VOWEL SIGN II
        "\d11042","\d11043","\d11044","\d11045","\d11046",  # ; Top # Mn   [5] BRAHMI VOWEL SIGN E..BRAHMI VIRAMA
        "\d11080","\d11081",  # ; Top # Mn   [2] KAITHI SIGN CANDRABINDU..KAITHI SIGN ANUSVARA
        "\d110b5","\d110b6",  # ; Top # Mn   [2] KAITHI VOWEL SIGN E..KAITHI VOWEL SIGN AI
        "\d11100","\d11101","\d11102",  # ; Top # Mn   [3] CHAKMA SIGN CANDRABINDU..CHAKMA SIGN VISARGA
        "\d11127","\d11128","\d11129",  # ; Top # Mn   [3] CHAKMA VOWEL SIGN A..CHAKMA VOWEL SIGN II
        "\d1112D",  # ; Top # Mn       CHAKMA VOWEL SIGN AI
        "\d11130",  # ; Top # Mn       CHAKMA VOWEL SIGN OI
        "\d11134",  # ; Top # Mn       CHAKMA MAAYYAA
        "\d11180","\d11181",  # ; Top # Mn   [2] SHARADA SIGN CANDRABINDU..SHARADA SIGN ANUSVARA
        "\d111bc","\d111bd","\d111be",  # ; Top # Mn   [3] SHARADA VOWEL SIGN E..SHARADA VOWEL SIGN O
        "\d111CB",  # ; Top # Mn       SHARADA VOWEL MODIFIER MARK
        "\d11230","\d11231",  # ; Top # Mn   [2] KHOJKI VOWEL SIGN E..KHOJKI VOWEL SIGN AI
        "\d11234",  # ; Top # Mn       KHOJKI SIGN ANUSVARA
        "\d11236","\d11237",  # ; Top # Mn   [2] KHOJKI SIGN NUKTA..KHOJKI SIGN SHADDA
        "\d1123E",  # ; Top # Mn       KHOJKI SIGN SUKUN
        "\d112DF",  # ; Top # Mn       KHUDAWADI SIGN ANUSVARA
        "\d112e5","\d112e6","\d112e7","\d112e8",  # ; Top # Mn   [4] KHUDAWADI VOWEL SIGN E..KHUDAWADI VOWEL SIGN AU
        "\d11301",  # ; Top # Mn       GRANTHA SIGN CANDRABINDU
        "\d11340",  # ; Top # Mn       GRANTHA VOWEL SIGN II
        "\d11366","\d11367","\d11368","\d11369","\d1136a","\d1136b","\d1136c",  # ; Top # Mn   [7] COMBINING GRANTHA DIGIT ZERO..COMBINING GRANTHA DIGIT SIX
        "\d11370","\d11371","\d11372","\d11373","\d11374",  # ; Top # Mn   [5] COMBINING GRANTHA LETTER A..COMBINING GRANTHA LETTER PA
        "\d1143e","\d1143f",  # ; Top # Mn   [2] NEWA VOWEL SIGN E..NEWA VOWEL SIGN AI
        "\d11443","\d11444",  # ; Top # Mn   [2] NEWA SIGN CANDRABINDU..NEWA SIGN ANUSVARA
        "\d114BA",  # ; Top # Mn       TIRHUTA VOWEL SIGN SHORT E
        "\d114bf","\d114c0",  # ; Top # Mn   [2] TIRHUTA SIGN CANDRABINDU..TIRHUTA SIGN ANUSVARA
        "\d115bc","\d115bd",  # ; Top # Mn   [2] SIDDHAM SIGN CANDRABINDU..SIDDHAM SIGN ANUSVARA
        "\d11639","\d1163a",  # ; Top # Mn   [2] MODI VOWEL SIGN E..MODI VOWEL SIGN AI
        "\d1163D",  # ; Top # Mn       MODI SIGN ANUSVARA
        "\d11640",  # ; Top # Mn       MODI SIGN ARDHACANDRA
        "\d116AB",  # ; Top # Mn       TAKRI SIGN ANUSVARA
        "\d116AD",  # ; Top # Mn       TAKRI VOWEL SIGN AA
        "\d116b2","\d116b3","\d116b4","\d116b5",  # ; Top # Mn   [4] TAKRI VOWEL SIGN E..TAKRI VOWEL SIGN AU
        "\d1171F",  # ; Top # Mn       AHOM CONSONANT SIGN MEDIAL LIGATING RA
        "\d11722","\d11723",  # ; Top # Mn   [2] AHOM VOWEL SIGN I..AHOM VOWEL SIGN II
        "\d11727",  # ; Top # Mn       AHOM VOWEL SIGN AW
        "\d11729","\d1172a","\d1172b",  # ; Top # Mn   [3] AHOM VOWEL SIGN AI..AHOM SIGN KILLER
        "\d11A01",  # ; Top # Mn       ZANABAZAR SQUARE VOWEL SIGN I
        "\d11a04","\d11a05","\d11a06","\d11a07","\d11a08","\d11a09",  # ; Top # Mn   [6] ZANABAZAR SQUARE VOWEL SIGN E..ZANABAZAR SQUARE VOWEL SIGN REVERSED I
        "\d11a35","\d11a36","\d11a37","\d11a38",  # ; Top # Mn   [4] ZANABAZAR SQUARE SIGN CANDRABINDU..ZANABAZAR SQUARE SIGN ANUSVARA
        "\d11A51",  # ; Top # Mn       SOYOMBO VOWEL SIGN I
        "\d11a54","\d11a55","\d11a56",  # ; Top # Mn   [3] SOYOMBO VOWEL SIGN E..SOYOMBO VOWEL SIGN OE
        "\d11A96",  # ; Top # Mn       SOYOMBO SIGN ANUSVARA
        "\d11A98",  # ; Top # Mn       SOYOMBO GEMINATION MARK
        "\d11c30","\d11c31",  # ; Top # Mn   [2] BHAIKSUKI VOWEL SIGN I..BHAIKSUKI VOWEL SIGN II
        "\d11c38","\d11c39","\d11c3a","\d11c3b","\d11c3c","\d11c3d",  # ; Top # Mn   [6] BHAIKSUKI VOWEL SIGN E..BHAIKSUKI SIGN ANUSVARA
        "\d11CB3",  # ; Top # Mn       MARCHEN VOWEL SIGN E
        "\d11cb5","\d11cb6",  # ; Top # Mn   [2] MARCHEN SIGN ANUSVARA..MARCHEN SIGN CANDRABINDU
        "\d11d31","\d11d32","\d11d33","\d11d34","\d11d35",  # ; Top # Mn   [5] MASARAM GONDI VOWEL SIGN AA..MASARAM GONDI VOWEL SIGN UU
        "\d11D3A",  # ; Top # Mn       MASARAM GONDI VOWEL SIGN E
        "\d11d3c","\d11d3d",  # ; Top # Mn   [2] MASARAM GONDI VOWEL SIGN AI..MASARAM GONDI VOWEL SIGN O
        "\d11d3f","\d11d40","\d11d41",  # ; Top # Mn   [3] MASARAM GONDI VOWEL SIGN AU..MASARAM GONDI SIGN VISARGA
        "\d11D43",  # ; Top # Mn       MASARAM GONDI SIGN CANDRA
        "\d093C",  # ; Bottom # Mn       DEVANAGARI SIGN NUKTA
        "\d0941","\d0942","\d0943","\d0944",  # ; Bottom # Mn   [4] DEVANAGARI VOWEL SIGN U..DEVANAGARI VOWEL SIGN VOCALIC RR
        "\d094D",  # ; Bottom # Mn       DEVANAGARI SIGN VIRAMA
        "\d0952",  # ; Bottom # Mn       DEVANAGARI STRESS SIGN ANUDATTA
        "\d0956","\d0957",  # ; Bottom # Mn   [2] DEVANAGARI VOWEL SIGN UE..DEVANAGARI VOWEL SIGN UUE
        "\d0962","\d0963",  # ; Bottom # Mn   [2] DEVANAGARI VOWEL SIGN VOCALIC L..DEVANAGARI VOWEL SIGN VOCALIC LL
        "\d09BC",  # ; Bottom # Mn       BENGALI SIGN NUKTA
        "\d09c1","\d09c2","\d09c3","\d09c4",  # ; Bottom # Mn   [4] BENGALI VOWEL SIGN U..BENGALI VOWEL SIGN VOCALIC RR
        "\d09CD",  # ; Bottom # Mn       BENGALI SIGN VIRAMA
        "\d09e2","\d09e3",  # ; Bottom # Mn   [2] BENGALI VOWEL SIGN VOCALIC L..BENGALI VOWEL SIGN VOCALIC LL
        "\d0A3C",  # ; Bottom # Mn       GURMUKHI SIGN NUKTA
        "\d0a41","\d0a42",  # ; Bottom # Mn   [2] GURMUKHI VOWEL SIGN U..GURMUKHI VOWEL SIGN UU
        "\d0A4D",  # ; Bottom # Mn       GURMUKHI SIGN VIRAMA
        "\d0A75",  # ; Bottom # Mn       GURMUKHI SIGN YAKASH
        "\d0ABC",  # ; Bottom # Mn       GUJARATI SIGN NUKTA
        "\d0ac1","\d0ac2","\d0ac3","\d0ac4",  # ; Bottom # Mn   [4] GUJARATI VOWEL SIGN U..GUJARATI VOWEL SIGN VOCALIC RR
        "\d0ACD",  # ; Bottom # Mn       GUJARATI SIGN VIRAMA
        "\d0ae2","\d0ae3",  # ; Bottom # Mn   [2] GUJARATI VOWEL SIGN VOCALIC L..GUJARATI VOWEL SIGN VOCALIC LL
        "\d0B3C",  # ; Bottom # Mn       ORIYA SIGN NUKTA
        "\d0b41","\d0b42","\d0b43","\d0b44",  # ; Bottom # Mn   [4] ORIYA VOWEL SIGN U..ORIYA VOWEL SIGN VOCALIC RR
        "\d0B4D",  # ; Bottom # Mn       ORIYA SIGN VIRAMA
        "\d0b62","\d0b63",  # ; Bottom # Mn   [2] ORIYA VOWEL SIGN VOCALIC L..ORIYA VOWEL SIGN VOCALIC LL
        "\d0C56",  # ; Bottom # Mn       TELUGU AI LENGTH MARK
        "\d0c62","\d0c63",  # ; Bottom # Mn   [2] TELUGU VOWEL SIGN VOCALIC L..TELUGU VOWEL SIGN VOCALIC LL
        "\d0CBC",  # ; Bottom # Mn       KANNADA SIGN NUKTA
        "\d0ce2","\d0ce3",  # ; Bottom # Mn   [2] KANNADA VOWEL SIGN VOCALIC L..KANNADA VOWEL SIGN VOCALIC LL
        "\d0d43","\d0d44",  # ; Bottom # Mn   [2] MALAYALAM VOWEL SIGN VOCALIC R..MALAYALAM VOWEL SIGN VOCALIC RR
        "\d0d62","\d0d63",  # ; Bottom # Mn   [2] MALAYALAM VOWEL SIGN VOCALIC L..MALAYALAM VOWEL SIGN VOCALIC LL
        "\d0DD4",  # ; Bottom # Mn       SINHALA VOWEL SIGN KETTI PAA-PILLA
        "\d0DD6",  # ; Bottom # Mn       SINHALA VOWEL SIGN DIGA PAA-PILLA
        "\d0e38","\d0e39","\d0e3a",  # ; Bottom # Mn   [3] THAI CHARACTER SARA U..THAI CHARACTER PHINTHU
        "\d0eb8","\d0eb9",  # ; Bottom # Mn   [2] LAO VOWEL SIGN U..LAO VOWEL SIGN UU
        "\d0EBC",  # ; Bottom # Mn       LAO SEMIVOWEL SIGN LO
        "\d0f18","\d0f19",  # ; Bottom # Mn   [2] TIBETAN ASTROLOGICAL SIGN -KHYUD PA..TIBETAN ASTROLOGICAL SIGN SDONG TSHUGS
        "\d0F35",  # ; Bottom # Mn       TIBETAN MARK NGAS BZUNG NYI ZLA
        "\d0F37",  # ; Bottom # Mn       TIBETAN MARK NGAS BZUNG SGOR RTAGS
        "\d0F71",  # ; Bottom # Mn       TIBETAN VOWEL SIGN AA
        "\d0f74","\d0f75",  # ; Bottom # Mn   [2] TIBETAN VOWEL SIGN U..TIBETAN VOWEL SIGN UU
        "\d0F84",  # ; Bottom # Mn       TIBETAN MARK HALANTA
        "\d0f8d","\d0f8e","\d0f8f","\d0f90","\d0f91","\d0f92","\d0f93","\d0f94","\d0f95","\d0f96","\d0f97",  # ; Bottom # Mn  [11] TIBETAN SUBJOINED SIGN LCE TSA CAN..TIBETAN SUBJOINED LETTER JA
        "\d0f99","\d0f9a","\d0f9b","\d0f9c","\d0f9d","\d0f9e","\d0f9f","\d0fa0","\d0fa1","\d0fa2","\d0fa3","\d0fa4","\d0fa5","\d0fa6","\d0fa7","\d0fa8","\d0fa9","\d0faa","\d0fab","\d0fac","\d0fad","\d0fae","\d0faf","\d0fb0","\d0fb1","\d0fb2","\d0fb3","\d0fb4","\d0fb5","\d0fb6","\d0fb7","\d0fb8","\d0fb9","\d0fba","\d0fbb","\d0fbc",  # ; Bottom # Mn  [36] TIBETAN SUBJOINED LETTER NYA..TIBETAN SUBJOINED LETTER FIXED-FORM RA
        "\d0FC6",  # ; Bottom # Mn       TIBETAN SYMBOL PADMA GDAN
        "\d102f","\d1030",  # ; Bottom # Mn   [2] MYANMAR VOWEL SIGN U..MYANMAR VOWEL SIGN UU
        "\d1037",  # ; Bottom # Mn       MYANMAR SIGN DOT BELOW
        "\d103d","\d103e",  # ; Bottom # Mn   [2] MYANMAR CONSONANT SIGN MEDIAL WA..MYANMAR CONSONANT SIGN MEDIAL HA
        "\d1058","\d1059",  # ; Bottom # Mn   [2] MYANMAR VOWEL SIGN VOCALIC L..MYANMAR VOWEL SIGN VOCALIC LL
        "\d105e","\d105f","\d1060",  # ; Bottom # Mn   [3] MYANMAR CONSONANT SIGN MON MEDIAL NA..MYANMAR CONSONANT SIGN MON MEDIAL LA
        "\d1082",  # ; Bottom # Mn       MYANMAR CONSONANT SIGN SHAN MEDIAL WA
        "\d108D",  # ; Bottom # Mn       MYANMAR SIGN SHAN COUNCIL EMPHATIC TONE
        "\d1713","\d1714",  # ; Bottom # Mn   [2] TAGALOG VOWEL SIGN U..TAGALOG SIGN VIRAMA
        "\d1733","\d1734",  # ; Bottom # Mn   [2] HANUNOO VOWEL SIGN U..HANUNOO SIGN PAMUDPOD
        "\d1753",  # ; Bottom # Mn       BUHID VOWEL SIGN U
        "\d1773",  # ; Bottom # Mn       TAGBANWA VOWEL SIGN U
        "\d17bb","\d17bc","\d17bd",  # ; Bottom # Mn   [3] KHMER VOWEL SIGN U..KHMER VOWEL SIGN UA
        "\d1922",  # ; Bottom # Mn       LIMBU VOWEL SIGN U
        "\d1932",  # ; Bottom # Mn       LIMBU SMALL LETTER ANUSVARA
        "\d1939",  # ; Bottom # Mn       LIMBU SIGN MUKPHRENG
        "\d193B",  # ; Bottom # Mn       LIMBU SIGN SA-I
        "\d1A18",  # ; Bottom # Mn       BUGINESE VOWEL SIGN U
        "\d1A56",  # ; Bottom # Mn       TAI THAM CONSONANT SIGN MEDIAL LA
        "\d1a5b","\d1a5c","\d1a5d","\d1a5e",  # ; Bottom # Mn   [4] TAI THAM CONSONANT SIGN HIGH RATHA OR LOW PA..TAI THAM CONSONANT SIGN SA
        "\d1a69","\d1a6a",  # ; Bottom # Mn   [2] TAI THAM VOWEL SIGN U..TAI THAM VOWEL SIGN UU
        "\d1A6C",  # ; Bottom # Mn       TAI THAM VOWEL SIGN OA BELOW
        "\d1A7F",  # ; Bottom # Mn       TAI THAM COMBINING CRYPTOGRAMMIC DOT
        "\d1b38","\d1b39","\d1b3a",  # ; Bottom # Mn   [3] BALINESE VOWEL SIGN SUKU..BALINESE VOWEL SIGN RA REPA
        "\d1B6C",  # ; Bottom # Mn       BALINESE MUSICAL SYMBOL COMBINING ENDEP
        "\d1ba2","\d1ba3",  # ; Bottom # Mn   [2] SUNDANESE CONSONANT SIGN PANYAKRA..SUNDANESE CONSONANT SIGN PANYIKU
        "\d1BA5",  # ; Bottom # Mn       SUNDANESE VOWEL SIGN PANYUKU
        "\d1bac","\d1bad",  # ; Bottom # Mn   [2] SUNDANESE CONSONANT SIGN PASANGAN MA..SUNDANESE CONSONANT SIGN PASANGAN WA
        "\d1C2C",  # ; Bottom # Mn       LEPCHA VOWEL SIGN E
        "\d1C37",  # ; Bottom # Mn       LEPCHA SIGN NUKTA
        "\d1cd5","\d1cd6","\d1cd7","\d1cd8","\d1cd9",  # ; Bottom # Mn   [5] VEDIC TONE YAJURVEDIC AGGRAVATED INDEPENDENT SVARITA..VEDIC TONE YAJURVEDIC KATHAKA INDEPENDENT SVARITA SCHROEDER
        "\d1cdc","\d1cdd","\d1cde","\d1cdf",  # ; Bottom # Mn   [4] VEDIC TONE KATHAKA ANUDATTA..VEDIC TONE THREE DOTS BELOW
        "\d1CED",  # ; Bottom # Mn       VEDIC SIGN TIRYAK
        "\dA825",  # ; Bottom # Mn       SYLOTI NAGRI VOWEL SIGN U
        "\dA8C4",  # ; Bottom # Mn       SAURASHTRA SIGN VIRAMA
        "\da92b","\da92c","\da92d",  # ; Bottom # Mn   [3] KAYAH LI TONE PLOPHU..KAYAH LI TONE CALYA PLOPHU
        "\da947","\da948","\da949",  # ; Bottom # Mn   [3] REJANG VOWEL SIGN I..REJANG VOWEL SIGN E
        "\da94b","\da94c","\da94d","\da94e",  # ; Bottom # Mn   [4] REJANG VOWEL SIGN O..REJANG VOWEL SIGN EA
        "\da9b8","\da9b9",  # ; Bottom # Mn   [2] JAVANESE VOWEL SIGN SUKU..JAVANESE VOWEL SIGN SUKU MENDUT
        "\dAA2D",  # ; Bottom # Mn       CHAM VOWEL SIGN U
        "\dAA32",  # ; Bottom # Mn       CHAM VOWEL SIGN UE
        "\daa35","\daa36",  # ; Bottom # Mn   [2] CHAM CONSONANT SIGN LA..CHAM CONSONANT SIGN WA
        "\dAAB4",  # ; Bottom # Mn       TAI VIET VOWEL U
        "\dAAEC",  # ; Bottom # Mn       MEETEI MAYEK VOWEL SIGN UU
        "\dABE8",  # ; Bottom # Mn       MEETEI MAYEK VOWEL SIGN UNAP
        "\dABED",  # ; Bottom # Mn       MEETEI MAYEK APUN IYEK
        "\d10a02","\d10a03",  # ; Bottom # Mn   [2] KHAROSHTHI VOWEL SIGN U..KHAROSHTHI VOWEL SIGN VOCALIC R
        "\d10a0c","\d10a0d","\d10a0e",  # ; Bottom # Mn   [3] KHAROSHTHI VOWEL LENGTH MARK..KHAROSHTHI SIGN ANUSVARA
        "\d10a39","\d10a3a",  # ; Bottom # Mn   [2] KHAROSHTHI SIGN CAUDA..KHAROSHTHI SIGN DOT BELOW
        "\d1103c","\d1103d","\d1103e","\d1103f","\d11040","\d11041",  # ; Bottom # Mn   [6] BRAHMI VOWEL SIGN U..BRAHMI VOWEL SIGN VOCALIC LL
        "\d110b3","\d110b4",  # ; Bottom # Mn   [2] KAITHI VOWEL SIGN U..KAITHI VOWEL SIGN UU
        "\d110b9","\d110ba",  # ; Bottom # Mn   [2] KAITHI SIGN VIRAMA..KAITHI SIGN NUKTA
        "\d1112a","\d1112b",  # ; Bottom # Mn   [2] CHAKMA VOWEL SIGN U..CHAKMA VOWEL SIGN UU
        "\d11131","\d11132",  # ; Bottom # Mn   [2] CHAKMA O MARK..CHAKMA AU MARK
        "\d11173",  # ; Bottom # Mn       MAHAJANI SIGN NUKTA
        "\d111b6","\d111b7","\d111b8","\d111b9","\d111ba","\d111bb",  # ; Bottom # Mn   [6] SHARADA VOWEL SIGN U..SHARADA VOWEL SIGN VOCALIC LL
        "\d111CC",  # ; Bottom # Mn       SHARADA EXTRA SHORT VOWEL MARK
        "\d1122F",  # ; Bottom # Mn       KHOJKI VOWEL SIGN U
        "\d112e3","\d112e4",  # ; Bottom # Mn   [2] KHUDAWADI VOWEL SIGN U..KHUDAWADI VOWEL SIGN UU
        "\d112e9","\d112ea",  # ; Bottom # Mn   [2] KHUDAWADI SIGN NUKTA..KHUDAWADI SIGN VIRAMA
        "\d11438","\d11439","\d1143a","\d1143b","\d1143c","\d1143d",  # ; Bottom # Mn   [6] NEWA VOWEL SIGN U..NEWA VOWEL SIGN VOCALIC LL
        "\d11442",  # ; Bottom # Mn       NEWA SIGN VIRAMA
        "\d11446",  # ; Bottom # Mn       NEWA SIGN NUKTA
        "\d114b3","\d114b4","\d114b5","\d114b6","\d114b7","\d114b8",  # ; Bottom # Mn   [6] TIRHUTA VOWEL SIGN U..TIRHUTA VOWEL SIGN VOCALIC LL
        "\d114c2","\d114c3",  # ; Bottom # Mn   [2] TIRHUTA SIGN VIRAMA..TIRHUTA SIGN NUKTA
        "\d115b2","\d115b3","\d115b4","\d115b5",  # ; Bottom # Mn   [4] SIDDHAM VOWEL SIGN U..SIDDHAM VOWEL SIGN VOCALIC RR
        "\d115bf","\d115c0",  # ; Bottom # Mn   [2] SIDDHAM SIGN VIRAMA..SIDDHAM SIGN NUKTA
        "\d115dc","\d115dd",  # ; Bottom # Mn   [2] SIDDHAM VOWEL SIGN ALTERNATE U..SIDDHAM VOWEL SIGN ALTERNATE UU
        "\d11633","\d11634","\d11635","\d11636","\d11637","\d11638",  # ; Bottom # Mn   [6] MODI VOWEL SIGN U..MODI VOWEL SIGN VOCALIC LL
        "\d1163F",  # ; Bottom # Mn       MODI SIGN VIRAMA
        "\d116b0","\d116b1",  # ; Bottom # Mn   [2] TAKRI VOWEL SIGN U..TAKRI VOWEL SIGN UU
        "\d116B7",  # ; Bottom # Mn       TAKRI SIGN NUKTA
        "\d1171D",  # ; Bottom # Mn       AHOM CONSONANT SIGN MEDIAL LA
        "\d11724","\d11725",  # ; Bottom # Mn   [2] AHOM VOWEL SIGN U..AHOM VOWEL SIGN UU
        "\d11728",  # ; Bottom # Mn       AHOM VOWEL SIGN O
        "\d11a02","\d11a03",  # ; Bottom # Mn   [2] ZANABAZAR SQUARE VOWEL SIGN UE..ZANABAZAR SQUARE VOWEL SIGN U
        "\d11A0A",  # ; Bottom # Mn       ZANABAZAR SQUARE VOWEL LENGTH MARK
        "\d11a33","\d11a34",  # ; Bottom # Mn   [2] ZANABAZAR SQUARE FINAL CONSONANT MARK..ZANABAZAR SQUARE SIGN VIRAMA
        "\d11a3b","\d11a3c","\d11a3d","\d11a3e",  # ; Bottom # Mn   [4] ZANABAZAR SQUARE CLUSTER-FINAL LETTER YA..ZANABAZAR SQUARE CLUSTER-FINAL LETTER VA
        "\d11a52","\d11a53",  # ; Bottom # Mn   [2] SOYOMBO VOWEL SIGN UE..SOYOMBO VOWEL SIGN U
        "\d11a59","\d11a5a","\d11a5b",  # ; Bottom # Mn   [3] SOYOMBO VOWEL SIGN VOCALIC R..SOYOMBO VOWEL LENGTH MARK
        "\d11a8a","\d11a8b","\d11a8c","\d11a8d","\d11a8e","\d11a8f","\d11a90","\d11a91","\d11a92","\d11a93","\d11a94","\d11a95",  # ; Bottom # Mn  [12] SOYOMBO FINAL CONSONANT SIGN G..SOYOMBO FINAL CONSONANT SIGN -A
        "\d11c32","\d11c33","\d11c34","\d11c35","\d11c36",  # ; Bottom # Mn   [5] BHAIKSUKI VOWEL SIGN U..BHAIKSUKI VOWEL SIGN VOCALIC L
        "\d11C3F",  # ; Bottom # Mn       BHAIKSUKI SIGN VIRAMA
        "\d11c92","\d11c93","\d11c94","\d11c95","\d11c96","\d11c97","\d11c98","\d11c99","\d11c9a","\d11c9b","\d11c9c","\d11c9d","\d11c9e","\d11c9f","\d11ca0","\d11ca1","\d11ca2","\d11ca3","\d11ca4","\d11ca5","\d11ca6","\d11ca7",  # ; Bottom # Mn  [22] MARCHEN SUBJOINED LETTER KA..MARCHEN SUBJOINED LETTER ZA
        "\d11caa","\d11cab","\d11cac","\d11cad","\d11cae","\d11caf","\d11cb0",  # ; Bottom # Mn   [7] MARCHEN SUBJOINED LETTER RA..MARCHEN VOWEL SIGN AA
        "\d11CB2",  # ; Bottom # Mn       MARCHEN VOWEL SIGN U
        "\d11D36",  # ; Bottom # Mn       MASARAM GONDI VOWEL SIGN VOCALIC R
        "\d11D42",  # ; Bottom # Mn       MASARAM GONDI SIGN NUKTA
        "\d11D44",  # ; Bottom # Mn       MASARAM GONDI SIGN HALANTA
        "\d11D47",  # ; Bottom # Mn       MASARAM GONDI RA-KARA
        "\d0C48",  # ; Top_And_Bottom # Mn       TELUGU VOWEL SIGN AI
        "\d0F73",  # ; Top_And_Bottom # Mn       TIBETAN VOWEL SIGN II
        "\d0f76","\d0f77","\d0f78","\d0f79",  # ; Top_And_Bottom # Mn   [4] TIBETAN VOWEL SIGN VOCALIC R..TIBETAN VOWEL SIGN VOCALIC LL
        "\d0F81",  # ; Top_And_Bottom # Mn       TIBETAN VOWEL SIGN REVERSED II
        "\d1B3C",  # ; Top_And_Bottom # Mn       BALINESE VOWEL SIGN LA LENGA
        "\d1112e","\d1112f",  # ; Top_And_Bottom # Mn   [2] CHAKMA VOWEL SIGN O..CHAKMA VOWEL SIGN AU
        "\d0AC9",  # ; Top_And_Right # Mc       GUJARATI VOWEL SIGN CANDRA O
        "\d0B57",  # ; Top_And_Right # Mc       ORIYA AU LENGTH MARK
        "\d0CC0",  # ; Top_And_Right # Mc       KANNADA VOWEL SIGN II
        "\d0cc7","\d0cc8",  # ; Top_And_Right # Mc   [2] KANNADA VOWEL SIGN EE..KANNADA VOWEL SIGN AI
        "\d0cca","\d0ccb",  # ; Top_And_Right # Mc   [2] KANNADA VOWEL SIGN O..KANNADA VOWEL SIGN OO
        "\d1925","\d1926",  # ; Top_And_Right # Mc   [2] LIMBU VOWEL SIGN OO..LIMBU VOWEL SIGN AU
        "\d1B43",  # ; Top_And_Right # Mc       BALINESE VOWEL SIGN PEPET TEDUNG
        "\d111BF",  # ; Top_And_Right # Mc       SHARADA VOWEL SIGN AU
        "\d11232","\d11233",  # ; Top_And_Right # Mc   [2] KHOJKI VOWEL SIGN O..KHOJKI VOWEL SIGN AU
        "\d0B48",  # ; Top_And_Left # Mc       ORIYA VOWEL SIGN AI
        "\d0DDA",  # ; Top_And_Left # Mc       SINHALA VOWEL SIGN DIGA KOMBUVA
        "\d17BE",  # ; Top_And_Left # Mc       KHMER VOWEL SIGN OE
        "\d1C29",  # ; Top_And_Left # Mc       LEPCHA VOWEL SIGN OO
        "\d114BB",  # ; Top_And_Left # Mc       TIRHUTA VOWEL SIGN AI
        "\d115B9",  # ; Top_And_Left # Mc       SIDDHAM VOWEL SIGN AI
        "\d0B4C",  # ; Top_And_Left_And_Right # Mc       ORIYA VOWEL SIGN AU
        "\d0DDD",  # ; Top_And_Left_And_Right # Mc       SINHALA VOWEL SIGN KOMBUVA HAA DIGA AELA-PILLA
        "\d17BF",  # ; Top_And_Left_And_Right # Mc       KHMER VOWEL SIGN YA
        "\d115BB",  # ; Top_And_Left_And_Right # Mc       SIDDHAM VOWEL SIGN AU
        "\d1B3B",  # ; Bottom_And_Right # Mc       BALINESE VOWEL SIGN RA REPA TEDUNG
        "\dA9C0",  # ; Bottom_And_Right # Mc       JAVANESE PANGKON
        "\dA9BF",  # ; Bottom_And_Left # Mc       JAVANESE CONSONANT SIGN CAKRA
        "\d1B3D",  # ; Top_And_Bottom_And_Right # Mc       BALINESE VOWEL SIGN LA LENGA TEDUNG
        "\d1CD4",  # ; Overstruck # Mn       VEDIC SIGN YAJURVEDIC MIDLINE SVARITA
        "\d1ce2","\d1ce3","\d1ce4","\d1ce5","\d1ce6","\d1ce7","\d1ce8",  # ; Overstruck # Mn   [7] VEDIC SIGN VISARGA SVARITA..VEDIC SIGN VISARGA ANUDATTA WITH TAIL
        "\d10A01",  # ; Overstruck # Mn       KHAROSHTHI VOWEL SIGN I
        "\d10A06",  # ; Overstruck # Mn       KHAROSHTHI VOWEL SIGN O
    ]
    test_data.each do |string|
      assert @validator.valid_encoding?(string), "U10_IndicPositionalCategory: #{string}"
      assert string.force_encoding("UTF-8").valid_encoding?, "U10_IndicPositionalCategory: #{string}" if @vercheck
    end
  end

end

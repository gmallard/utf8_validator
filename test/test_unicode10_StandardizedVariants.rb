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
class TestUnicode10StandardizedVariants < Test::Unit::TestCase
  #
  def setup
    @validator = UTF8::Validator.new
    @vercheck = ((RUBY_VERSION =~ /1.9/) or (RUBY_VERSION =~ /2./)) ? true : false
  end

  #
  def teardown
    @validator = nil
  end

  def test_unicode10_StandardizedVariants
    test_data = [
        "\d0030",  # ; short diagonal stroke form; # DIGIT ZERO
        "\dFE00",  # ; short diagonal stroke form; # DIGIT ZERO
        "\d2205",  # ; zero with long diagonal stroke overlay form; # EMPTY SET
        "\dFE00",  # ; zero with long diagonal stroke overlay form; # EMPTY SET
        "\d2229",  # ; with serifs; # INTERSECTION
        "\dFE00",  # ; with serifs; # INTERSECTION
        "\d222A",  # ; with serifs; # UNION
        "\dFE00",  # ; with serifs; # UNION
        "\d2268",  # ; with vertical stroke; # LESS-THAN BUT NOT EQUAL TO
        "\dFE00",  # ; with vertical stroke; # LESS-THAN BUT NOT EQUAL TO
        "\d2269",  # ; with vertical stroke; # GREATER-THAN BUT NOT EQUAL TO
        "\dFE00",  # ; with vertical stroke; # GREATER-THAN BUT NOT EQUAL TO
        "\d2272",  # ; following the slant of the lower leg; # LESS-THAN OR EQUIVALENT TO
        "\dFE00",  # ; following the slant of the lower leg; # LESS-THAN OR EQUIVALENT TO
        "\d2273",  # ; following the slant of the lower leg; # GREATER-THAN OR EQUIVALENT TO
        "\dFE00",  # ; following the slant of the lower leg; # GREATER-THAN OR EQUIVALENT TO
        "\d228A",  # ; with stroke through bottom members; # SUBSET OF WITH NOT EQUAL TO
        "\dFE00",  # ; with stroke through bottom members; # SUBSET OF WITH NOT EQUAL TO
        "\d228B",  # ; with stroke through bottom members; # SUPERSET OF WITH NOT EQUAL TO
        "\dFE00",  # ; with stroke through bottom members; # SUPERSET OF WITH NOT EQUAL TO
        "\d2293",  # ; with serifs; # SQUARE CAP
        "\dFE00",  # ; with serifs; # SQUARE CAP
        "\d2294",  # ; with serifs; # SQUARE CUP
        "\dFE00",  # ; with serifs; # SQUARE CUP
        "\d2295",  # ; with white rim; # CIRCLED PLUS
        "\dFE00",  # ; with white rim; # CIRCLED PLUS
        "\d2297",  # ; with white rim; # CIRCLED TIMES
        "\dFE00",  # ; with white rim; # CIRCLED TIMES
        "\d229C",  # ; with equal sign touching the circle; # CIRCLED EQUALS
        "\dFE00",  # ; with equal sign touching the circle; # CIRCLED EQUALS
        "\d22DA",  # ; with slanted equal; # LESS-THAN EQUAL TO OR GREATER-THAN
        "\dFE00",  # ; with slanted equal; # LESS-THAN EQUAL TO OR GREATER-THAN
        "\d22DB",  # ; with slanted equal; # GREATER-THAN EQUAL TO OR LESS-THAN
        "\dFE00",  # ; with slanted equal; # GREATER-THAN EQUAL TO OR LESS-THAN
        "\d2A3C",  # ; tall variant with narrow foot; # INTERIOR PRODUCT
        "\dFE00",  # ; tall variant with narrow foot; # INTERIOR PRODUCT
        "\d2A3D",  # ; tall variant with narrow foot; # RIGHTHAND INTERIOR PRODUCT
        "\dFE00",  # ; tall variant with narrow foot; # RIGHTHAND INTERIOR PRODUCT
        "\d2A9D",  # ; with similar following the slant of the upper leg; # SIMILAR OR LESS-THAN
        "\dFE00",  # ; with similar following the slant of the upper leg; # SIMILAR OR LESS-THAN
        "\d2A9E",  # ; with similar following the slant of the upper leg; # SIMILAR OR GREATER-THAN
        "\dFE00",  # ; with similar following the slant of the upper leg; # SIMILAR OR GREATER-THAN
        "\d2AAC",  # ; with slanted equal; # SMALLER THAN OR EQUAL TO
        "\dFE00",  # ; with slanted equal; # SMALLER THAN OR EQUAL TO
        "\d2AAD",  # ; with slanted equal; # LARGER THAN OR EQUAL TO
        "\dFE00",  # ; with slanted equal; # LARGER THAN OR EQUAL TO
        "\d2ACB",  # ; with stroke through bottom members; # SUBSET OF ABOVE NOT EQUAL TO
        "\dFE00",  # ; with stroke through bottom members; # SUBSET OF ABOVE NOT EQUAL TO
        "\d2ACC",  # ; with stroke through bottom members; # SUPERSET OF ABOVE NOT EQUAL TO
        "\dFE00",  # ; with stroke through bottom members; # SUPERSET OF ABOVE NOT EQUAL TO
        "\d1000",  # ; dotted form; # MYANMAR LETTER KA
        "\dFE00",  # ; dotted form; # MYANMAR LETTER KA
        "\d1002",  # ; dotted form; # MYANMAR LETTER GA
        "\dFE00",  # ; dotted form; # MYANMAR LETTER GA
        "\d1004",  # ; dotted form; # MYANMAR LETTER NGA
        "\dFE00",  # ; dotted form; # MYANMAR LETTER NGA
        "\d1010",  # ; dotted form; # MYANMAR LETTER TA
        "\dFE00",  # ; dotted form; # MYANMAR LETTER TA
        "\d1011",  # ; dotted form; # MYANMAR LETTER THA
        "\dFE00",  # ; dotted form; # MYANMAR LETTER THA
        "\d1015",  # ; dotted form; # MYANMAR LETTER PA
        "\dFE00",  # ; dotted form; # MYANMAR LETTER PA
        "\d1019",  # ; dotted form; # MYANMAR LETTER MA
        "\dFE00",  # ; dotted form; # MYANMAR LETTER MA
        "\d101A",  # ; dotted form; # MYANMAR LETTER YA
        "\dFE00",  # ; dotted form; # MYANMAR LETTER YA
        "\d101C",  # ; dotted form; # MYANMAR LETTER LA
        "\dFE00",  # ; dotted form; # MYANMAR LETTER LA
        "\d101D",  # ; dotted form; # MYANMAR LETTER WA
        "\dFE00",  # ; dotted form; # MYANMAR LETTER WA
        "\d1022",  # ; dotted form; # MYANMAR LETTER SHAN A
        "\dFE00",  # ; dotted form; # MYANMAR LETTER SHAN A
        "\d1031",  # ; dotted form; # MYANMAR VOWEL SIGN E
        "\dFE00",  # ; dotted form; # MYANMAR VOWEL SIGN E
        "\d1075",  # ; dotted form; # MYANMAR LETTER SHAN KA
        "\dFE00",  # ; dotted form; # MYANMAR LETTER SHAN KA
        "\d1078",  # ; dotted form; # MYANMAR LETTER SHAN CA
        "\dFE00",  # ; dotted form; # MYANMAR LETTER SHAN CA
        "\d107A",  # ; dotted form; # MYANMAR LETTER SHAN NYA
        "\dFE00",  # ; dotted form; # MYANMAR LETTER SHAN NYA
        "\d1080",  # ; dotted form; # MYANMAR LETTER SHAN THA
        "\dFE00",  # ; dotted form; # MYANMAR LETTER SHAN THA
        "\dAA60",  # ; dotted form; # MYANMAR LETTER KHAMTI GA
        "\dFE00",  # ; dotted form; # MYANMAR LETTER KHAMTI GA
        "\dAA61",  # ; dotted form; # MYANMAR LETTER KHAMTI CA
        "\dFE00",  # ; dotted form; # MYANMAR LETTER KHAMTI CA
        "\dAA62",  # ; dotted form; # MYANMAR LETTER KHAMTI CHA
        "\dFE00",  # ; dotted form; # MYANMAR LETTER KHAMTI CHA
        "\dAA63",  # ; dotted form; # MYANMAR LETTER KHAMTI JA
        "\dFE00",  # ; dotted form; # MYANMAR LETTER KHAMTI JA
        "\dAA64",  # ; dotted form; # MYANMAR LETTER KHAMTI JHA
        "\dFE00",  # ; dotted form; # MYANMAR LETTER KHAMTI JHA
        "\dAA65",  # ; dotted form; # MYANMAR LETTER KHAMTI NYA
        "\dFE00",  # ; dotted form; # MYANMAR LETTER KHAMTI NYA
        "\dAA66",  # ; dotted form; # MYANMAR LETTER KHAMTI TTA
        "\dFE00",  # ; dotted form; # MYANMAR LETTER KHAMTI TTA
        "\dAA6B",  # ; dotted form; # MYANMAR LETTER KHAMTI NA
        "\dFE00",  # ; dotted form; # MYANMAR LETTER KHAMTI NA
        "\dAA6C",  # ; dotted form; # MYANMAR LETTER KHAMTI SA
        "\dFE00",  # ; dotted form; # MYANMAR LETTER KHAMTI SA
        "\dAA6F",  # ; dotted form; # MYANMAR LETTER KHAMTI FA
        "\dFE00",  # ; dotted form; # MYANMAR LETTER KHAMTI FA
        "\dAA7A",  # ; dotted form; # MYANMAR LETTER AITON RA
        "\dFE00",  # ; dotted form; # MYANMAR LETTER AITON RA
        "\dA856",  # ; phags-pa letter reversed shaping small a; # PHAGS-PA LETTER SMALL A
        "\dFE00",  # ; phags-pa letter reversed shaping small a; # PHAGS-PA LETTER SMALL A
        "\dA85C",  # ; phags-pa letter reversed shaping ha; # PHAGS-PA LETTER HA
        "\dFE00",  # ; phags-pa letter reversed shaping ha; # PHAGS-PA LETTER HA
        "\dA85E",  # ; phags-pa letter reversed shaping i; # PHAGS-PA LETTER I
        "\dFE00",  # ; phags-pa letter reversed shaping i; # PHAGS-PA LETTER I
        "\dA85F",  # ; phags-pa letter reversed shaping u; # PHAGS-PA LETTER U
        "\dFE00",  # ; phags-pa letter reversed shaping u; # PHAGS-PA LETTER U
        "\dA860",  # ; phags-pa letter reversed shaping e; # PHAGS-PA LETTER E
        "\dFE00",  # ; phags-pa letter reversed shaping e; # PHAGS-PA LETTER E
        "\dA868",  # ; phags-pa letter reversed shaping subjoined ya; # PHAGS-PA SUBJOINED LETTER YA
        "\dFE00",  # ; phags-pa letter reversed shaping subjoined ya; # PHAGS-PA SUBJOINED LETTER YA
        "\d10AC5",  # ; alternate form; isolate # MANICHAEAN LETTER DALETH
        "\dFE00",  # ; alternate form; isolate # MANICHAEAN LETTER DALETH
        "\d10AC6",  # ; alternate form; isolate # MANICHAEAN LETTER HE
        "\dFE00",  # ; alternate form; isolate # MANICHAEAN LETTER HE
        "\d10AD6",  # ; alternate form; isolate final # MANICHAEAN LETTER MEM
        "\dFE00",  # ; alternate form; isolate final # MANICHAEAN LETTER MEM
        "\d10AD7",  # ; alternate form; isolate # MANICHAEAN LETTER NUN
        "\dFE00",  # ; alternate form; isolate # MANICHAEAN LETTER NUN
        "\d10AE1",  # ; alternate form; isolate # MANICHAEAN LETTER RESH
        "\dFE00",  # ; alternate form; isolate # MANICHAEAN LETTER RESH
        "\d1820",  # ; second form; isolate medial final # MONGOLIAN LETTER A
        "\d180B",  # ; second form; isolate medial final # MONGOLIAN LETTER A
        "\d1820",  # ; third form; medial # MONGOLIAN LETTER A
        "\d180C",  # ; third form; medial # MONGOLIAN LETTER A
        "\d1821",  # ; second form; initial final # MONGOLIAN LETTER E
        "\d180B",  # ; second form; initial final # MONGOLIAN LETTER E
        "\d1822",  # ; second form; medial # MONGOLIAN LETTER I
        "\d180B",  # ; second form; medial # MONGOLIAN LETTER I
        "\d1823",  # ; second form; medial final # MONGOLIAN LETTER O
        "\d180B",  # ; second form; medial final # MONGOLIAN LETTER O
        "\d1824",  # ; second form; medial # MONGOLIAN LETTER U
        "\d180B",  # ; second form; medial # MONGOLIAN LETTER U
        "\d1825",  # ; second form; medial final # MONGOLIAN LETTER OE
        "\d180B",  # ; second form; medial final # MONGOLIAN LETTER OE
        "\d1825",  # ; third form; medial # MONGOLIAN LETTER OE
        "\d180C",  # ; third form; medial # MONGOLIAN LETTER OE
        "\d1826",  # ; second form; isolate medial final # MONGOLIAN LETTER UE
        "\d180B",  # ; second form; isolate medial final # MONGOLIAN LETTER UE
        "\d1826",  # ; third form; medial # MONGOLIAN LETTER UE
        "\d180C",  # ; third form; medial # MONGOLIAN LETTER UE
        "\d1828",  # ; second form; initial medial # MONGOLIAN LETTER NA
        "\d180B",  # ; second form; initial medial # MONGOLIAN LETTER NA
        "\d1828",  # ; third form; medial # MONGOLIAN LETTER NA
        "\d180C",  # ; third form; medial # MONGOLIAN LETTER NA
        "\d1828",  # ; fourth form; medial # MONGOLIAN LETTER NA
        "\d180D",  # ; fourth form; medial # MONGOLIAN LETTER NA
        "\d182A",  # ; second form; final # MONGOLIAN LETTER BA
        "\d180B",  # ; second form; final # MONGOLIAN LETTER BA
        "\d182C",  # ; second form; isolate initial medial # MONGOLIAN LETTER QA
        "\d180B",  # ; second form; isolate initial medial # MONGOLIAN LETTER QA
        "\d182C",  # ; third form; medial # MONGOLIAN LETTER QA
        "\d180C",  # ; third form; medial # MONGOLIAN LETTER QA
        "\d182C",  # ; fourth form; medial # MONGOLIAN LETTER QA
        "\d180D",  # ; fourth form; medial # MONGOLIAN LETTER QA
        "\d182D",  # ; second form; initial medial final # MONGOLIAN LETTER GA
        "\d180B",  # ; second form; initial medial final # MONGOLIAN LETTER GA
        "\d182D",  # ; third form; medial # MONGOLIAN LETTER GA
        "\d180C",  # ; third form; medial # MONGOLIAN LETTER GA
        "\d182D",  # ; fourth form; medial # MONGOLIAN LETTER GA
        "\d180D",  # ; fourth form; medial # MONGOLIAN LETTER GA
        "\d1830",  # ; second form; final # MONGOLIAN LETTER SA
        "\d180B",  # ; second form; final # MONGOLIAN LETTER SA
        "\d1830",  # ; third form; final # MONGOLIAN LETTER SA
        "\d180C",  # ; third form; final # MONGOLIAN LETTER SA
        "\d1832",  # ; second form; medial # MONGOLIAN LETTER TA
        "\d180B",  # ; second form; medial # MONGOLIAN LETTER TA
        "\d1833",  # ; second form; initial medial final # MONGOLIAN LETTER DA
        "\d180B",  # ; second form; initial medial final # MONGOLIAN LETTER DA
        "\d1835",  # ; second form; medial # MONGOLIAN LETTER JA
        "\d180B",  # ; second form; medial # MONGOLIAN LETTER JA
        "\d1836",  # ; second form; initial medial # MONGOLIAN LETTER YA
        "\d180B",  # ; second form; initial medial # MONGOLIAN LETTER YA
        "\d1836",  # ; third form; medial # MONGOLIAN LETTER YA
        "\d180C",  # ; third form; medial # MONGOLIAN LETTER YA
        "\d1838",  # ; second form; final # MONGOLIAN LETTER WA
        "\d180B",  # ; second form; final # MONGOLIAN LETTER WA
        "\d1844",  # ; second form; medial # MONGOLIAN LETTER TODO E
        "\d180B",  # ; second form; medial # MONGOLIAN LETTER TODO E
        "\d1845",  # ; second form; medial # MONGOLIAN LETTER TODO I
        "\d180B",  # ; second form; medial # MONGOLIAN LETTER TODO I
        "\d1846",  # ; second form; medial # MONGOLIAN LETTER TODO O
        "\d180B",  # ; second form; medial # MONGOLIAN LETTER TODO O
        "\d1847",  # ; second form; isolate medial final # MONGOLIAN LETTER TODO U
        "\d180B",  # ; second form; isolate medial final # MONGOLIAN LETTER TODO U
        "\d1847",  # ; third form; medial # MONGOLIAN LETTER TODO U
        "\d180C",  # ; third form; medial # MONGOLIAN LETTER TODO U
        "\d1848",  # ; second form; medial # MONGOLIAN LETTER TODO OE
        "\d180B",  # ; second form; medial # MONGOLIAN LETTER TODO OE
        "\d1849",  # ; second form; isolate medial # MONGOLIAN LETTER TODO UE
        "\d180B",  # ; second form; isolate medial # MONGOLIAN LETTER TODO UE
        "\d184D",  # ; second form; initial medial # MONGOLIAN LETTER TODO QA
        "\d180B",  # ; second form; initial medial # MONGOLIAN LETTER TODO QA
        "\d184E",  # ; second form; medial # MONGOLIAN LETTER TODO GA
        "\d180B",  # ; second form; medial # MONGOLIAN LETTER TODO GA
        "\d185D",  # ; second form; medial final # MONGOLIAN LETTER SIBE E
        "\d180B",  # ; second form; medial final # MONGOLIAN LETTER SIBE E
        "\d185E",  # ; second form; medial final # MONGOLIAN LETTER SIBE I
        "\d180B",  # ; second form; medial final # MONGOLIAN LETTER SIBE I
        "\d185E",  # ; third form; medial final # MONGOLIAN LETTER SIBE I
        "\d180C",  # ; third form; medial final # MONGOLIAN LETTER SIBE I
        "\d1860",  # ; second form; medial final # MONGOLIAN LETTER SIBE UE
        "\d180B",  # ; second form; medial final # MONGOLIAN LETTER SIBE UE
        "\d1863",  # ; second form; medial # MONGOLIAN LETTER SIBE KA
        "\d180B",  # ; second form; medial # MONGOLIAN LETTER SIBE KA
        "\d1868",  # ; second form; initial medial # MONGOLIAN LETTER SIBE TA
        "\d180B",  # ; second form; initial medial # MONGOLIAN LETTER SIBE TA
        "\d1868",  # ; third form; medial # MONGOLIAN LETTER SIBE TA
        "\d180C",  # ; third form; medial # MONGOLIAN LETTER SIBE TA
        "\d1869",  # ; second form; initial medial # MONGOLIAN LETTER SIBE DA
        "\d180B",  # ; second form; initial medial # MONGOLIAN LETTER SIBE DA
        "\d186F",  # ; second form; initial medial # MONGOLIAN LETTER SIBE ZA
        "\d180B",  # ; second form; initial medial # MONGOLIAN LETTER SIBE ZA
        "\d1873",  # ; second form; medial final # MONGOLIAN LETTER MANCHU I
        "\d180B",  # ; second form; medial final # MONGOLIAN LETTER MANCHU I
        "\d1873",  # ; third form; medial final # MONGOLIAN LETTER MANCHU I
        "\d180C",  # ; third form; medial final # MONGOLIAN LETTER MANCHU I
        "\d1873",  # ; fourth form; medial # MONGOLIAN LETTER MANCHU I
        "\d180D",  # ; fourth form; medial # MONGOLIAN LETTER MANCHU I
        "\d1874",  # ; second form; medial final # MONGOLIAN LETTER MANCHU KA
        "\d180B",  # ; second form; medial final # MONGOLIAN LETTER MANCHU KA
        "\d1874",  # ; third form; medial final # MONGOLIAN LETTER MANCHU KA
        "\d180C",  # ; third form; medial final # MONGOLIAN LETTER MANCHU KA
        "\d1874",  # ; fourth form; medial # MONGOLIAN LETTER MANCHU KA
        "\d180D",  # ; fourth form; medial # MONGOLIAN LETTER MANCHU KA
        "\d1876",  # ; second form; initial medial # MONGOLIAN LETTER MANCHU FA
        "\d180B",  # ; second form; initial medial # MONGOLIAN LETTER MANCHU FA
        "\d1880",  # ; second form; # MONGOLIAN LETTER ALI GALI ANUSVARA ONE
        "\d180B",  # ; second form; # MONGOLIAN LETTER ALI GALI ANUSVARA ONE
        "\d1881",  # ; second form; # MONGOLIAN LETTER ALI GALI VISARGA ONE
        "\d180B",  # ; second form; # MONGOLIAN LETTER ALI GALI VISARGA ONE
        "\d1887",  # ; second form; isolate final # MONGOLIAN LETTER ALI GALI A
        "\d180B",  # ; second form; isolate final # MONGOLIAN LETTER ALI GALI A
        "\d1887",  # ; third form; final # MONGOLIAN LETTER ALI GALI A
        "\d180C",  # ; third form; final # MONGOLIAN LETTER ALI GALI A
        "\d1887",  # ; fourth form; final # MONGOLIAN LETTER ALI GALI A
        "\d180D",  # ; fourth form; final # MONGOLIAN LETTER ALI GALI A
        "\d1888",  # ; second form; final # MONGOLIAN LETTER ALI GALI I
        "\d180B",  # ; second form; final # MONGOLIAN LETTER ALI GALI I
        "\d188A",  # ; second form; initial medial # MONGOLIAN LETTER ALI GALI NGA
        "\d180B",  # ; second form; initial medial # MONGOLIAN LETTER ALI GALI NGA
        "\d349E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F80C;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F80C;
        "\d34B9",  # ; CJK COMPATIBILITY IDEOGRAPH-2F813;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F813;
        "\d34BB",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9CA;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9CA;
        "\d34DF",  # ; CJK COMPATIBILITY IDEOGRAPH-2F81F;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F81F;
        "\d3515",  # ; CJK COMPATIBILITY IDEOGRAPH-2F824;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F824;
        "\d36EE",  # ; CJK COMPATIBILITY IDEOGRAPH-2F867;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F867;
        "\d36FC",  # ; CJK COMPATIBILITY IDEOGRAPH-2F868;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F868;
        "\d3781",  # ; CJK COMPATIBILITY IDEOGRAPH-2F876;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F876;
        "\d382F",  # ; CJK COMPATIBILITY IDEOGRAPH-2F883;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F883;
        "\d3862",  # ; CJK COMPATIBILITY IDEOGRAPH-2F888;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F888;
        "\d387C",  # ; CJK COMPATIBILITY IDEOGRAPH-2F88A;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F88A;
        "\d38C7",  # ; CJK COMPATIBILITY IDEOGRAPH-2F896;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F896;
        "\d38E3",  # ; CJK COMPATIBILITY IDEOGRAPH-2F89B;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F89B;
        "\d391C",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8A2;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8A2;
        "\d393A",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8A1;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8A1;
        "\d3A2E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8C2;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8C2;
        "\d3A6C",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8C7;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8C7;
        "\d3AE4",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8D1;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8D1;
        "\d3B08",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8D0;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8D0;
        "\d3B19",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8CE;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8CE;
        "\d3B49",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8DE;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8DE;
        "\d3B9D",  # ; CJK COMPATIBILITY IDEOGRAPH-FAD2;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAD2;
        "\d3B9D",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8E7;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8E7;
        "\d3C18",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8EE;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8EE;
        "\d3C4E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8F2;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8F2;
        "\d3D33",  # ; CJK COMPATIBILITY IDEOGRAPH-2F90A;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F90A;
        "\d3D96",  # ; CJK COMPATIBILITY IDEOGRAPH-2F916;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F916;
        "\d3EAC",  # ; CJK COMPATIBILITY IDEOGRAPH-2F92A;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F92A;
        "\d3EB8",  # ; CJK COMPATIBILITY IDEOGRAPH-2F92C;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F92C;
        "\d3EB8",  # ; CJK COMPATIBILITY IDEOGRAPH-2F92D;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F92D;
        "\d3F1B",  # ; CJK COMPATIBILITY IDEOGRAPH-2F933;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F933;
        "\d3FFC",  # ; CJK COMPATIBILITY IDEOGRAPH-2F93E;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F93E;
        "\d4008",  # ; CJK COMPATIBILITY IDEOGRAPH-2F93F;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F93F;
        "\d4018",  # ; CJK COMPATIBILITY IDEOGRAPH-FAD3;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAD3;
        "\d4039",  # ; CJK COMPATIBILITY IDEOGRAPH-FAD4;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAD4;
        "\d4039",  # ; CJK COMPATIBILITY IDEOGRAPH-2F949;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F949;
        "\d4046",  # ; CJK COMPATIBILITY IDEOGRAPH-2F94B;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F94B;
        "\d4096",  # ; CJK COMPATIBILITY IDEOGRAPH-2F94C;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F94C;
        "\d40E3",  # ; CJK COMPATIBILITY IDEOGRAPH-2F951;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F951;
        "\d412F",  # ; CJK COMPATIBILITY IDEOGRAPH-2F958;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F958;
        "\d4202",  # ; CJK COMPATIBILITY IDEOGRAPH-2F960;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F960;
        "\d4227",  # ; CJK COMPATIBILITY IDEOGRAPH-2F964;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F964;
        "\d42A0",  # ; CJK COMPATIBILITY IDEOGRAPH-2F967;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F967;
        "\d4301",  # ; CJK COMPATIBILITY IDEOGRAPH-2F96D;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F96D;
        "\d4334",  # ; CJK COMPATIBILITY IDEOGRAPH-2F971;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F971;
        "\d4359",  # ; CJK COMPATIBILITY IDEOGRAPH-2F974;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F974;
        "\d43D5",  # ; CJK COMPATIBILITY IDEOGRAPH-2F981;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F981;
        "\d43D9",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8D7;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8D7;
        "\d440B",  # ; CJK COMPATIBILITY IDEOGRAPH-2F984;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F984;
        "\d446B",  # ; CJK COMPATIBILITY IDEOGRAPH-2F98E;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F98E;
        "\d452B",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9A7;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9A7;
        "\d455D",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9AE;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9AE;
        "\d4561",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9AF;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9AF;
        "\d456B",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9B2;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9B2;
        "\d45D7",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9BF;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9BF;
        "\d45F9",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9C2;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9C2;
        "\d4635",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9C8;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9C8;
        "\d46BE",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9CD;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9CD;
        "\d46C7",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9CE;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9CE;
        "\d4995",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9EF;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9EF;
        "\d49E6",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9F2;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9F2;
        "\d4A6E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9F8;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9F8;
        "\d4A76",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9F9;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9F9;
        "\d4AB2",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9FC;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9FC;
        "\d4B33",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA03;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA03;
        "\d4BCE",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA08;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA08;
        "\d4CCE",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA0D;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA0D;
        "\d4CED",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA0E;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA0E;
        "\d4CF8",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA11;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA11;
        "\d4D56",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA16;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA16;
        "\d4E0D",  # ; CJK COMPATIBILITY IDEOGRAPH-F967;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F967;
        "\d4E26",  # ; CJK COMPATIBILITY IDEOGRAPH-FA70;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA70;
        "\d4E32",  # ; CJK COMPATIBILITY IDEOGRAPH-F905;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F905;
        "\d4E38",  # ; CJK COMPATIBILITY IDEOGRAPH-2F801;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F801;
        "\d4E39",  # ; CJK COMPATIBILITY IDEOGRAPH-F95E;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F95E;
        "\d4E3D",  # ; CJK COMPATIBILITY IDEOGRAPH-2F800;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F800;
        "\d4E41",  # ; CJK COMPATIBILITY IDEOGRAPH-2F802;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F802;
        "\d4E82",  # ; CJK COMPATIBILITY IDEOGRAPH-F91B;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F91B;
        "\d4E86",  # ; CJK COMPATIBILITY IDEOGRAPH-F9BA;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9BA;
        "\d4EAE",  # ; CJK COMPATIBILITY IDEOGRAPH-F977;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F977;
        "\d4EC0",  # ; CJK COMPATIBILITY IDEOGRAPH-F9FD;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9FD;
        "\d4ECC",  # ; CJK COMPATIBILITY IDEOGRAPH-2F819;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F819;
        "\d4EE4",  # ; CJK COMPATIBILITY IDEOGRAPH-F9A8;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9A8;
        "\d4F60",  # ; CJK COMPATIBILITY IDEOGRAPH-2F804;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F804;
        "\d4F80",  # ; CJK COMPATIBILITY IDEOGRAPH-FA73;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA73;
        "\d4F86",  # ; CJK COMPATIBILITY IDEOGRAPH-F92D;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F92D;
        "\d4F8B",  # ; CJK COMPATIBILITY IDEOGRAPH-F9B5;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9B5;
        "\d4FAE",  # ; CJK COMPATIBILITY IDEOGRAPH-FA30;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA30;
        "\d4FAE",  # ; CJK COMPATIBILITY IDEOGRAPH-2F805;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F805;
        "\d4FBB",  # ; CJK COMPATIBILITY IDEOGRAPH-2F806;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F806;
        "\d4FBF",  # ; CJK COMPATIBILITY IDEOGRAPH-F965;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F965;
        "\d5002",  # ; CJK COMPATIBILITY IDEOGRAPH-2F807;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F807;
        "\d502B",  # ; CJK COMPATIBILITY IDEOGRAPH-F9D4;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9D4;
        "\d507A",  # ; CJK COMPATIBILITY IDEOGRAPH-2F808;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F808;
        "\d5099",  # ; CJK COMPATIBILITY IDEOGRAPH-2F809;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F809;
        "\d50CF",  # ; CJK COMPATIBILITY IDEOGRAPH-2F80B;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F80B;
        "\d50DA",  # ; CJK COMPATIBILITY IDEOGRAPH-F9BB;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9BB;
        "\d50E7",  # ; CJK COMPATIBILITY IDEOGRAPH-FA31;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA31;
        "\d50E7",  # ; CJK COMPATIBILITY IDEOGRAPH-2F80A;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F80A;
        "\d5140",  # ; CJK COMPATIBILITY IDEOGRAPH-FA0C;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA0C;
        "\d5145",  # ; CJK COMPATIBILITY IDEOGRAPH-FA74;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA74;
        "\d514D",  # ; CJK COMPATIBILITY IDEOGRAPH-FA32;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA32;
        "\d514D",  # ; CJK COMPATIBILITY IDEOGRAPH-2F80E;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F80E;
        "\d5154",  # ; CJK COMPATIBILITY IDEOGRAPH-2F80F;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F80F;
        "\d5164",  # ; CJK COMPATIBILITY IDEOGRAPH-2F810;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F810;
        "\d5167",  # ; CJK COMPATIBILITY IDEOGRAPH-2F814;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F814;
        "\d5168",  # ; CJK COMPATIBILITY IDEOGRAPH-FA72;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA72;
        "\d5169",  # ; CJK COMPATIBILITY IDEOGRAPH-F978;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F978;
        "\d516D",  # ; CJK COMPATIBILITY IDEOGRAPH-F9D1;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9D1;
        "\d5177",  # ; CJK COMPATIBILITY IDEOGRAPH-2F811;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F811;
        "\d5180",  # ; CJK COMPATIBILITY IDEOGRAPH-FA75;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA75;
        "\d518D",  # ; CJK COMPATIBILITY IDEOGRAPH-2F815;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F815;
        "\d5192",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8D2;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8D2;
        "\d5195",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8D3;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8D3;
        "\d5197",  # ; CJK COMPATIBILITY IDEOGRAPH-2F817;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F817;
        "\d51A4",  # ; CJK COMPATIBILITY IDEOGRAPH-2F818;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F818;
        "\d51AC",  # ; CJK COMPATIBILITY IDEOGRAPH-2F81A;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F81A;
        "\d51B5",  # ; CJK COMPATIBILITY IDEOGRAPH-FA71;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA71;
        "\d51B5",  # ; CJK COMPATIBILITY IDEOGRAPH-2F81B;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F81B;
        "\d51B7",  # ; CJK COMPATIBILITY IDEOGRAPH-F92E;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F92E;
        "\d51C9",  # ; CJK COMPATIBILITY IDEOGRAPH-F979;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F979;
        "\d51CC",  # ; CJK COMPATIBILITY IDEOGRAPH-F955;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F955;
        "\d51DC",  # ; CJK COMPATIBILITY IDEOGRAPH-F954;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F954;
        "\d51DE",  # ; CJK COMPATIBILITY IDEOGRAPH-FA15;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA15;
        "\d51F5",  # ; CJK COMPATIBILITY IDEOGRAPH-2F81D;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F81D;
        "\d5203",  # ; CJK COMPATIBILITY IDEOGRAPH-2F81E;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F81E;
        "\d5207",  # ; CJK COMPATIBILITY IDEOGRAPH-FA00;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA00;
        "\d5207",  # ; CJK COMPATIBILITY IDEOGRAPH-2F850;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F850;
        "\d5217",  # ; CJK COMPATIBILITY IDEOGRAPH-F99C;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F99C;
        "\d5229",  # ; CJK COMPATIBILITY IDEOGRAPH-F9DD;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9DD;
        "\d523A",  # ; CJK COMPATIBILITY IDEOGRAPH-F9FF;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9FF;
        "\d523B",  # ; CJK COMPATIBILITY IDEOGRAPH-2F820;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F820;
        "\d5246",  # ; CJK COMPATIBILITY IDEOGRAPH-2F821;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F821;
        "\d5272",  # ; CJK COMPATIBILITY IDEOGRAPH-2F822;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F822;
        "\d5277",  # ; CJK COMPATIBILITY IDEOGRAPH-2F823;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F823;
        "\d5289",  # ; CJK COMPATIBILITY IDEOGRAPH-F9C7;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9C7;
        "\d529B",  # ; CJK COMPATIBILITY IDEOGRAPH-F98A;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F98A;
        "\d52A3",  # ; CJK COMPATIBILITY IDEOGRAPH-F99D;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F99D;
        "\d52B3",  # ; CJK COMPATIBILITY IDEOGRAPH-2F992;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F992;
        "\d52C7",  # ; CJK COMPATIBILITY IDEOGRAPH-FA76;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA76;
        "\d52C7",  # ; CJK COMPATIBILITY IDEOGRAPH-2F825;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F825;
        "\d52C9",  # ; CJK COMPATIBILITY IDEOGRAPH-FA33;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA33;
        "\d52C9",  # ; CJK COMPATIBILITY IDEOGRAPH-2F826;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F826;
        "\d52D2",  # ; CJK COMPATIBILITY IDEOGRAPH-F952;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F952;
        "\d52DE",  # ; CJK COMPATIBILITY IDEOGRAPH-F92F;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F92F;
        "\d52E4",  # ; CJK COMPATIBILITY IDEOGRAPH-FA34;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA34;
        "\d52E4",  # ; CJK COMPATIBILITY IDEOGRAPH-2F827;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F827;
        "\d52F5",  # ; CJK COMPATIBILITY IDEOGRAPH-F97F;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F97F;
        "\d52FA",  # ; CJK COMPATIBILITY IDEOGRAPH-FA77;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA77;
        "\d52FA",  # ; CJK COMPATIBILITY IDEOGRAPH-2F828;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F828;
        "\d5305",  # ; CJK COMPATIBILITY IDEOGRAPH-2F829;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F829;
        "\d5306",  # ; CJK COMPATIBILITY IDEOGRAPH-2F82A;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F82A;
        "\d5317",  # ; CJK COMPATIBILITY IDEOGRAPH-F963;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F963;
        "\d5317",  # ; CJK COMPATIBILITY IDEOGRAPH-2F82B;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F82B;
        "\d533F",  # ; CJK COMPATIBILITY IDEOGRAPH-F9EB;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9EB;
        "\d5349",  # ; CJK COMPATIBILITY IDEOGRAPH-2F82C;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F82C;
        "\d5351",  # ; CJK COMPATIBILITY IDEOGRAPH-FA35;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA35;
        "\d5351",  # ; CJK COMPATIBILITY IDEOGRAPH-2F82D;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F82D;
        "\d535A",  # ; CJK COMPATIBILITY IDEOGRAPH-2F82E;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F82E;
        "\d5373",  # ; CJK COMPATIBILITY IDEOGRAPH-2F82F;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F82F;
        "\d5375",  # ; CJK COMPATIBILITY IDEOGRAPH-F91C;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F91C;
        "\d537D",  # ; CJK COMPATIBILITY IDEOGRAPH-2F830;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F830;
        "\d537F",  # ; CJK COMPATIBILITY IDEOGRAPH-2F831;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F831;
        "\d537F",  # ; CJK COMPATIBILITY IDEOGRAPH-2F832;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F832;
        "\d537F",  # ; CJK COMPATIBILITY IDEOGRAPH-2F833;
        "\dFE02",  # ; CJK COMPATIBILITY IDEOGRAPH-2F833;
        "\d53C3",  # ; CJK COMPATIBILITY IDEOGRAPH-F96B;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F96B;
        "\d53CA",  # ; CJK COMPATIBILITY IDEOGRAPH-2F836;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F836;
        "\d53DF",  # ; CJK COMPATIBILITY IDEOGRAPH-2F837;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F837;
        "\d53E5",  # ; CJK COMPATIBILITY IDEOGRAPH-F906;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F906;
        "\d53EB",  # ; CJK COMPATIBILITY IDEOGRAPH-2F839;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F839;
        "\d53F1",  # ; CJK COMPATIBILITY IDEOGRAPH-2F83A;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F83A;
        "\d5406",  # ; CJK COMPATIBILITY IDEOGRAPH-2F83B;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F83B;
        "\d540F",  # ; CJK COMPATIBILITY IDEOGRAPH-F9DE;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9DE;
        "\d541D",  # ; CJK COMPATIBILITY IDEOGRAPH-F9ED;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9ED;
        "\d5438",  # ; CJK COMPATIBILITY IDEOGRAPH-2F83D;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F83D;
        "\d5442",  # ; CJK COMPATIBILITY IDEOGRAPH-F980;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F980;
        "\d5448",  # ; CJK COMPATIBILITY IDEOGRAPH-2F83E;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F83E;
        "\d5468",  # ; CJK COMPATIBILITY IDEOGRAPH-2F83F;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F83F;
        "\d549E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F83C;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F83C;
        "\d54A2",  # ; CJK COMPATIBILITY IDEOGRAPH-2F840;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F840;
        "\d54BD",  # ; CJK COMPATIBILITY IDEOGRAPH-F99E;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F99E;
        "\d54F6",  # ; CJK COMPATIBILITY IDEOGRAPH-2F841;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F841;
        "\d5510",  # ; CJK COMPATIBILITY IDEOGRAPH-2F842;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F842;
        "\d5553",  # ; CJK COMPATIBILITY IDEOGRAPH-2F843;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F843;
        "\d5555",  # ; CJK COMPATIBILITY IDEOGRAPH-FA79;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA79;
        "\d5563",  # ; CJK COMPATIBILITY IDEOGRAPH-2F844;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F844;
        "\d5584",  # ; CJK COMPATIBILITY IDEOGRAPH-2F845;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F845;
        "\d5584",  # ; CJK COMPATIBILITY IDEOGRAPH-2F846;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F846;
        "\d5587",  # ; CJK COMPATIBILITY IDEOGRAPH-F90B;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F90B;
        "\d5599",  # ; CJK COMPATIBILITY IDEOGRAPH-FA7A;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA7A;
        "\d5599",  # ; CJK COMPATIBILITY IDEOGRAPH-2F847;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F847;
        "\d559D",  # ; CJK COMPATIBILITY IDEOGRAPH-FA36;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA36;
        "\d559D",  # ; CJK COMPATIBILITY IDEOGRAPH-FA78;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-FA78;
        "\d55AB",  # ; CJK COMPATIBILITY IDEOGRAPH-2F848;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F848;
        "\d55B3",  # ; CJK COMPATIBILITY IDEOGRAPH-2F849;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F849;
        "\d55C0",  # ; CJK COMPATIBILITY IDEOGRAPH-FA0D;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA0D;
        "\d55C2",  # ; CJK COMPATIBILITY IDEOGRAPH-2F84A;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F84A;
        "\d55E2",  # ; CJK COMPATIBILITY IDEOGRAPH-FA7B;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA7B;
        "\d5606",  # ; CJK COMPATIBILITY IDEOGRAPH-FA37;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA37;
        "\d5606",  # ; CJK COMPATIBILITY IDEOGRAPH-2F84C;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F84C;
        "\d5651",  # ; CJK COMPATIBILITY IDEOGRAPH-2F84E;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F84E;
        "\d5668",  # ; CJK COMPATIBILITY IDEOGRAPH-FA38;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA38;
        "\d5674",  # ; CJK COMPATIBILITY IDEOGRAPH-2F84F;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F84F;
        "\d56F9",  # ; CJK COMPATIBILITY IDEOGRAPH-F9A9;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9A9;
        "\d5716",  # ; CJK COMPATIBILITY IDEOGRAPH-2F84B;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F84B;
        "\d5717",  # ; CJK COMPATIBILITY IDEOGRAPH-2F84D;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F84D;
        "\d578B",  # ; CJK COMPATIBILITY IDEOGRAPH-2F855;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F855;
        "\d57CE",  # ; CJK COMPATIBILITY IDEOGRAPH-2F852;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F852;
        "\d57F4",  # ; CJK COMPATIBILITY IDEOGRAPH-2F853;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F853;
        "\d580D",  # ; CJK COMPATIBILITY IDEOGRAPH-2F854;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F854;
        "\d5831",  # ; CJK COMPATIBILITY IDEOGRAPH-2F857;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F857;
        "\d5832",  # ; CJK COMPATIBILITY IDEOGRAPH-2F856;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F856;
        "\d5840",  # ; CJK COMPATIBILITY IDEOGRAPH-FA39;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA39;
        "\d585A",  # ; CJK COMPATIBILITY IDEOGRAPH-FA10;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA10;
        "\d585A",  # ; CJK COMPATIBILITY IDEOGRAPH-FA7C;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-FA7C;
        "\d585E",  # ; CJK COMPATIBILITY IDEOGRAPH-F96C;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F96C;
        "\d58A8",  # ; CJK COMPATIBILITY IDEOGRAPH-FA3A;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA3A;
        "\d58AC",  # ; CJK COMPATIBILITY IDEOGRAPH-2F858;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F858;
        "\d58B3",  # ; CJK COMPATIBILITY IDEOGRAPH-FA7D;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA7D;
        "\d58D8",  # ; CJK COMPATIBILITY IDEOGRAPH-F94A;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F94A;
        "\d58DF",  # ; CJK COMPATIBILITY IDEOGRAPH-F942;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F942;
        "\d58EE",  # ; CJK COMPATIBILITY IDEOGRAPH-2F851;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F851;
        "\d58F2",  # ; CJK COMPATIBILITY IDEOGRAPH-2F85A;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F85A;
        "\d58F7",  # ; CJK COMPATIBILITY IDEOGRAPH-2F85B;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F85B;
        "\d5906",  # ; CJK COMPATIBILITY IDEOGRAPH-2F85C;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F85C;
        "\d591A",  # ; CJK COMPATIBILITY IDEOGRAPH-2F85D;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F85D;
        "\d5922",  # ; CJK COMPATIBILITY IDEOGRAPH-2F85E;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F85E;
        "\d5944",  # ; CJK COMPATIBILITY IDEOGRAPH-FA7E;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA7E;
        "\d5948",  # ; CJK COMPATIBILITY IDEOGRAPH-F90C;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F90C;
        "\d5951",  # ; CJK COMPATIBILITY IDEOGRAPH-F909;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F909;
        "\d5954",  # ; CJK COMPATIBILITY IDEOGRAPH-FA7F;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA7F;
        "\d5962",  # ; CJK COMPATIBILITY IDEOGRAPH-2F85F;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F85F;
        "\d5973",  # ; CJK COMPATIBILITY IDEOGRAPH-F981;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F981;
        "\d59D8",  # ; CJK COMPATIBILITY IDEOGRAPH-2F865;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F865;
        "\d59EC",  # ; CJK COMPATIBILITY IDEOGRAPH-2F862;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F862;
        "\d5A1B",  # ; CJK COMPATIBILITY IDEOGRAPH-2F863;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F863;
        "\d5A27",  # ; CJK COMPATIBILITY IDEOGRAPH-2F864;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F864;
        "\d5A62",  # ; CJK COMPATIBILITY IDEOGRAPH-FA80;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA80;
        "\d5A66",  # ; CJK COMPATIBILITY IDEOGRAPH-2F866;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F866;
        "\d5AB5",  # ; CJK COMPATIBILITY IDEOGRAPH-2F986;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F986;
        "\d5B08",  # ; CJK COMPATIBILITY IDEOGRAPH-2F869;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F869;
        "\d5B28",  # ; CJK COMPATIBILITY IDEOGRAPH-FA81;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA81;
        "\d5B3E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F86A;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F86A;
        "\d5B3E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F86B;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F86B;
        "\d5B85",  # ; CJK COMPATIBILITY IDEOGRAPH-FA04;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA04;
        "\d5BC3",  # ; CJK COMPATIBILITY IDEOGRAPH-2F86D;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F86D;
        "\d5BD8",  # ; CJK COMPATIBILITY IDEOGRAPH-2F86E;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F86E;
        "\d5BE7",  # ; CJK COMPATIBILITY IDEOGRAPH-F95F;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F95F;
        "\d5BE7",  # ; CJK COMPATIBILITY IDEOGRAPH-F9AA;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-F9AA;
        "\d5BE7",  # ; CJK COMPATIBILITY IDEOGRAPH-2F86F;
        "\dFE02",  # ; CJK COMPATIBILITY IDEOGRAPH-2F86F;
        "\d5BEE",  # ; CJK COMPATIBILITY IDEOGRAPH-F9BC;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9BC;
        "\d5BF3",  # ; CJK COMPATIBILITY IDEOGRAPH-2F870;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F870;
        "\d5BFF",  # ; CJK COMPATIBILITY IDEOGRAPH-2F872;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F872;
        "\d5C06",  # ; CJK COMPATIBILITY IDEOGRAPH-2F873;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F873;
        "\d5C22",  # ; CJK COMPATIBILITY IDEOGRAPH-2F875;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F875;
        "\d5C3F",  # ; CJK COMPATIBILITY IDEOGRAPH-F9BD;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9BD;
        "\d5C60",  # ; CJK COMPATIBILITY IDEOGRAPH-2F877;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F877;
        "\d5C62",  # ; CJK COMPATIBILITY IDEOGRAPH-F94B;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F94B;
        "\d5C64",  # ; CJK COMPATIBILITY IDEOGRAPH-FA3B;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA3B;
        "\d5C65",  # ; CJK COMPATIBILITY IDEOGRAPH-F9DF;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9DF;
        "\d5C6E",  # ; CJK COMPATIBILITY IDEOGRAPH-FA3C;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA3C;
        "\d5C6E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F878;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F878;
        "\d5C8D",  # ; CJK COMPATIBILITY IDEOGRAPH-2F87A;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F87A;
        "\d5CC0",  # ; CJK COMPATIBILITY IDEOGRAPH-2F879;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F879;
        "\d5D19",  # ; CJK COMPATIBILITY IDEOGRAPH-F9D5;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9D5;
        "\d5D43",  # ; CJK COMPATIBILITY IDEOGRAPH-2F87C;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F87C;
        "\d5D50",  # ; CJK COMPATIBILITY IDEOGRAPH-F921;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F921;
        "\d5D6B",  # ; CJK COMPATIBILITY IDEOGRAPH-2F87F;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F87F;
        "\d5D6E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F87E;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F87E;
        "\d5D7C",  # ; CJK COMPATIBILITY IDEOGRAPH-2F880;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F880;
        "\d5DB2",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9F4;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9F4;
        "\d5DBA",  # ; CJK COMPATIBILITY IDEOGRAPH-F9AB;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9AB;
        "\d5DE1",  # ; CJK COMPATIBILITY IDEOGRAPH-2F881;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F881;
        "\d5DE2",  # ; CJK COMPATIBILITY IDEOGRAPH-2F882;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F882;
        "\d5DFD",  # ; CJK COMPATIBILITY IDEOGRAPH-2F884;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F884;
        "\d5E28",  # ; CJK COMPATIBILITY IDEOGRAPH-2F885;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F885;
        "\d5E3D",  # ; CJK COMPATIBILITY IDEOGRAPH-2F886;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F886;
        "\d5E69",  # ; CJK COMPATIBILITY IDEOGRAPH-2F887;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F887;
        "\d5E74",  # ; CJK COMPATIBILITY IDEOGRAPH-F98E;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F98E;
        "\d5EA6",  # ; CJK COMPATIBILITY IDEOGRAPH-FA01;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA01;
        "\d5EB0",  # ; CJK COMPATIBILITY IDEOGRAPH-2F88B;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F88B;
        "\d5EB3",  # ; CJK COMPATIBILITY IDEOGRAPH-2F88C;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F88C;
        "\d5EB6",  # ; CJK COMPATIBILITY IDEOGRAPH-2F88D;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F88D;
        "\d5EC9",  # ; CJK COMPATIBILITY IDEOGRAPH-F9A2;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9A2;
        "\d5ECA",  # ; CJK COMPATIBILITY IDEOGRAPH-F928;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F928;
        "\d5ECA",  # ; CJK COMPATIBILITY IDEOGRAPH-2F88E;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F88E;
        "\d5ED2",  # ; CJK COMPATIBILITY IDEOGRAPH-FA82;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA82;
        "\d5ED3",  # ; CJK COMPATIBILITY IDEOGRAPH-FA0B;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA0B;
        "\d5ED9",  # ; CJK COMPATIBILITY IDEOGRAPH-FA83;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA83;
        "\d5EEC",  # ; CJK COMPATIBILITY IDEOGRAPH-F982;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F982;
        "\d5EFE",  # ; CJK COMPATIBILITY IDEOGRAPH-2F890;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F890;
        "\d5F04",  # ; CJK COMPATIBILITY IDEOGRAPH-F943;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F943;
        "\d5F22",  # ; CJK COMPATIBILITY IDEOGRAPH-2F894;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F894;
        "\d5F22",  # ; CJK COMPATIBILITY IDEOGRAPH-2F895;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F895;
        "\d5F53",  # ; CJK COMPATIBILITY IDEOGRAPH-2F874;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F874;
        "\d5F62",  # ; CJK COMPATIBILITY IDEOGRAPH-2F899;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F899;
        "\d5F69",  # ; CJK COMPATIBILITY IDEOGRAPH-FA84;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA84;
        "\d5F6B",  # ; CJK COMPATIBILITY IDEOGRAPH-2F89A;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F89A;
        "\d5F8B",  # ; CJK COMPATIBILITY IDEOGRAPH-F9D8;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9D8;
        "\d5F9A",  # ; CJK COMPATIBILITY IDEOGRAPH-2F89C;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F89C;
        "\d5FA9",  # ; CJK COMPATIBILITY IDEOGRAPH-F966;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F966;
        "\d5FAD",  # ; CJK COMPATIBILITY IDEOGRAPH-FA85;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA85;
        "\d5FCD",  # ; CJK COMPATIBILITY IDEOGRAPH-2F89D;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F89D;
        "\d5FD7",  # ; CJK COMPATIBILITY IDEOGRAPH-2F89E;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F89E;
        "\d5FF5",  # ; CJK COMPATIBILITY IDEOGRAPH-F9A3;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9A3;
        "\d5FF9",  # ; CJK COMPATIBILITY IDEOGRAPH-2F89F;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F89F;
        "\d6012",  # ; CJK COMPATIBILITY IDEOGRAPH-F960;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F960;
        "\d601C",  # ; CJK COMPATIBILITY IDEOGRAPH-F9AC;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9AC;
        "\d6075",  # ; CJK COMPATIBILITY IDEOGRAPH-FA6B;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA6B;
        "\d6081",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8A0;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8A0;
        "\d6094",  # ; CJK COMPATIBILITY IDEOGRAPH-FA3D;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA3D;
        "\d6094",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8A3;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8A3;
        "\d60C7",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8A5;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8A5;
        "\d60D8",  # ; CJK COMPATIBILITY IDEOGRAPH-FA86;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA86;
        "\d60E1",  # ; CJK COMPATIBILITY IDEOGRAPH-F9B9;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9B9;
        "\d6108",  # ; CJK COMPATIBILITY IDEOGRAPH-FA88;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA88;
        "\d6144",  # ; CJK COMPATIBILITY IDEOGRAPH-F9D9;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9D9;
        "\d6148",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8A6;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8A6;
        "\d614C",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8A7;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8A7;
        "\d614C",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8A9;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8A9;
        "\d614E",  # ; CJK COMPATIBILITY IDEOGRAPH-FA87;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA87;
        "\d614E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8A8;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8A8;
        "\d6160",  # ; CJK COMPATIBILITY IDEOGRAPH-FA8A;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA8A;
        "\d6168",  # ; CJK COMPATIBILITY IDEOGRAPH-FA3E;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA3E;
        "\d617A",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8AA;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8AA;
        "\d618E",  # ; CJK COMPATIBILITY IDEOGRAPH-FA3F;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA3F;
        "\d618E",  # ; CJK COMPATIBILITY IDEOGRAPH-FA89;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-FA89;
        "\d618E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8AB;
        "\dFE02",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8AB;
        "\d6190",  # ; CJK COMPATIBILITY IDEOGRAPH-F98F;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F98F;
        "\d61A4",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8AD;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8AD;
        "\d61AF",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8AE;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8AE;
        "\d61B2",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8AC;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8AC;
        "\d61DE",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8AF;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8AF;
        "\d61F2",  # ; CJK COMPATIBILITY IDEOGRAPH-FA40;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA40;
        "\d61F2",  # ; CJK COMPATIBILITY IDEOGRAPH-FA8B;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-FA8B;
        "\d61F2",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8B0;
        "\dFE02",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8B0;
        "\d61F6",  # ; CJK COMPATIBILITY IDEOGRAPH-F90D;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F90D;
        "\d61F6",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8B1;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8B1;
        "\d6200",  # ; CJK COMPATIBILITY IDEOGRAPH-F990;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F990;
        "\d6210",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8B2;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8B2;
        "\d621B",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8B3;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8B3;
        "\d622E",  # ; CJK COMPATIBILITY IDEOGRAPH-F9D2;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9D2;
        "\d6234",  # ; CJK COMPATIBILITY IDEOGRAPH-FA8C;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA8C;
        "\d625D",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8B4;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8B4;
        "\d62B1",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8B5;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8B5;
        "\d62C9",  # ; CJK COMPATIBILITY IDEOGRAPH-F925;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F925;
        "\d62CF",  # ; CJK COMPATIBILITY IDEOGRAPH-F95B;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F95B;
        "\d62D3",  # ; CJK COMPATIBILITY IDEOGRAPH-FA02;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA02;
        "\d62D4",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8B6;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8B6;
        "\d62FC",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8BA;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8BA;
        "\d62FE",  # ; CJK COMPATIBILITY IDEOGRAPH-F973;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F973;
        "\d633D",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8B9;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8B9;
        "\d6350",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8B7;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8B7;
        "\d6368",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8BB;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8BB;
        "\d637B",  # ; CJK COMPATIBILITY IDEOGRAPH-F9A4;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9A4;
        "\d6383",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8BC;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8BC;
        "\d63A0",  # ; CJK COMPATIBILITY IDEOGRAPH-F975;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F975;
        "\d63A9",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8C1;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8C1;
        "\d63C4",  # ; CJK COMPATIBILITY IDEOGRAPH-FA8D;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA8D;
        "\d63C5",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8C0;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8C0;
        "\d63E4",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8BD;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8BD;
        "\d641C",  # ; CJK COMPATIBILITY IDEOGRAPH-FA8E;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA8E;
        "\d6422",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8BF;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8BF;
        "\d6452",  # ; CJK COMPATIBILITY IDEOGRAPH-FA8F;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA8F;
        "\d6469",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8C3;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8C3;
        "\d6477",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8C6;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8C6;
        "\d647E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8C4;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8C4;
        "\d649A",  # ; CJK COMPATIBILITY IDEOGRAPH-F991;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F991;
        "\d649D",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8C5;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8C5;
        "\d64C4",  # ; CJK COMPATIBILITY IDEOGRAPH-F930;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F930;
        "\d654F",  # ; CJK COMPATIBILITY IDEOGRAPH-FA41;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA41;
        "\d654F",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8C8;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8C8;
        "\d6556",  # ; CJK COMPATIBILITY IDEOGRAPH-FA90;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA90;
        "\d656C",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8C9;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8C9;
        "\d6578",  # ; CJK COMPATIBILITY IDEOGRAPH-F969;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F969;
        "\d6599",  # ; CJK COMPATIBILITY IDEOGRAPH-F9BE;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9BE;
        "\d65C5",  # ; CJK COMPATIBILITY IDEOGRAPH-F983;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F983;
        "\d65E2",  # ; CJK COMPATIBILITY IDEOGRAPH-FA42;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA42;
        "\d65E3",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8CB;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8CB;
        "\d6613",  # ; CJK COMPATIBILITY IDEOGRAPH-F9E0;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9E0;
        "\d6649",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8CD;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8CD;
        "\d6674",  # ; CJK COMPATIBILITY IDEOGRAPH-FA12;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA12;
        "\d6674",  # ; CJK COMPATIBILITY IDEOGRAPH-FA91;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-FA91;
        "\d6688",  # ; CJK COMPATIBILITY IDEOGRAPH-F9C5;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9C5;
        "\d6691",  # ; CJK COMPATIBILITY IDEOGRAPH-FA43;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA43;
        "\d6691",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8CF;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8CF;
        "\d669C",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8D5;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8D5;
        "\d66B4",  # ; CJK COMPATIBILITY IDEOGRAPH-FA06;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA06;
        "\d66C6",  # ; CJK COMPATIBILITY IDEOGRAPH-F98B;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F98B;
        "\d66F4",  # ; CJK COMPATIBILITY IDEOGRAPH-F901;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F901;
        "\d66F8",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8CC;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8CC;
        "\d6700",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8D4;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8D4;
        "\d6717",  # ; CJK COMPATIBILITY IDEOGRAPH-F929;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F929;
        "\d6717",  # ; CJK COMPATIBILITY IDEOGRAPH-FA92;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-FA92;
        "\d6717",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8D8;
        "\dFE02",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8D8;
        "\d671B",  # ; CJK COMPATIBILITY IDEOGRAPH-FA93;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA93;
        "\d671B",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8D9;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8D9;
        "\d6721",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8DA;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8DA;
        "\d674E",  # ; CJK COMPATIBILITY IDEOGRAPH-F9E1;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9E1;
        "\d6753",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8DC;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8DC;
        "\d6756",  # ; CJK COMPATIBILITY IDEOGRAPH-FA94;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA94;
        "\d675E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8DB;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8DB;
        "\d677B",  # ; CJK COMPATIBILITY IDEOGRAPH-F9C8;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9C8;
        "\d6785",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8E0;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8E0;
        "\d6797",  # ; CJK COMPATIBILITY IDEOGRAPH-F9F4;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9F4;
        "\d67F3",  # ; CJK COMPATIBILITY IDEOGRAPH-F9C9;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9C9;
        "\d67FA",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8DF;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8DF;
        "\d6817",  # ; CJK COMPATIBILITY IDEOGRAPH-F9DA;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9DA;
        "\d681F",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8E5;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8E5;
        "\d6852",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8E1;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8E1;
        "\d6881",  # ; CJK COMPATIBILITY IDEOGRAPH-F97A;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F97A;
        "\d6885",  # ; CJK COMPATIBILITY IDEOGRAPH-FA44;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA44;
        "\d6885",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8E2;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8E2;
        "\d688E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8E4;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8E4;
        "\d68A8",  # ; CJK COMPATIBILITY IDEOGRAPH-F9E2;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9E2;
        "\d6914",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8E6;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8E6;
        "\d6942",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8E8;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8E8;
        "\d69A3",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8E9;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8E9;
        "\d69EA",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8EA;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8EA;
        "\d6A02",  # ; CJK COMPATIBILITY IDEOGRAPH-F914;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F914;
        "\d6A02",  # ; CJK COMPATIBILITY IDEOGRAPH-F95C;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-F95C;
        "\d6A02",  # ; CJK COMPATIBILITY IDEOGRAPH-F9BF;
        "\dFE02",  # ; CJK COMPATIBILITY IDEOGRAPH-F9BF;
        "\d6A13",  # ; CJK COMPATIBILITY IDEOGRAPH-F94C;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F94C;
        "\d6AA8",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8EB;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8EB;
        "\d6AD3",  # ; CJK COMPATIBILITY IDEOGRAPH-F931;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F931;
        "\d6ADB",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8ED;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8ED;
        "\d6B04",  # ; CJK COMPATIBILITY IDEOGRAPH-F91D;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F91D;
        "\d6B21",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8EF;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8EF;
        "\d6B54",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8F1;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8F1;
        "\d6B72",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8F3;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8F3;
        "\d6B77",  # ; CJK COMPATIBILITY IDEOGRAPH-F98C;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F98C;
        "\d6B79",  # ; CJK COMPATIBILITY IDEOGRAPH-FA95;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA95;
        "\d6B9F",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8F4;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8F4;
        "\d6BAE",  # ; CJK COMPATIBILITY IDEOGRAPH-F9A5;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9A5;
        "\d6BBA",  # ; CJK COMPATIBILITY IDEOGRAPH-F970;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F970;
        "\d6BBA",  # ; CJK COMPATIBILITY IDEOGRAPH-FA96;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-FA96;
        "\d6BBA",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8F5;
        "\dFE02",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8F5;
        "\d6BBB",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8F6;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8F6;
        "\d6C4E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8FA;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8FA;
        "\d6C67",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8FE;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8FE;
        "\d6C88",  # ; CJK COMPATIBILITY IDEOGRAPH-F972;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F972;
        "\d6CBF",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8FC;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8FC;
        "\d6CCC",  # ; CJK COMPATIBILITY IDEOGRAPH-F968;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F968;
        "\d6CCD",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8FD;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8FD;
        "\d6CE5",  # ; CJK COMPATIBILITY IDEOGRAPH-F9E3;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9E3;
        "\d6D16",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8FF;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8FF;
        "\d6D1B",  # ; CJK COMPATIBILITY IDEOGRAPH-F915;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F915;
        "\d6D1E",  # ; CJK COMPATIBILITY IDEOGRAPH-FA05;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA05;
        "\d6D34",  # ; CJK COMPATIBILITY IDEOGRAPH-2F907;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F907;
        "\d6D3E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F900;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F900;
        "\d6D41",  # ; CJK COMPATIBILITY IDEOGRAPH-F9CA;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9CA;
        "\d6D41",  # ; CJK COMPATIBILITY IDEOGRAPH-FA97;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-FA97;
        "\d6D41",  # ; CJK COMPATIBILITY IDEOGRAPH-2F902;
        "\dFE02",  # ; CJK COMPATIBILITY IDEOGRAPH-2F902;
        "\d6D69",  # ; CJK COMPATIBILITY IDEOGRAPH-2F903;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F903;
        "\d6D6A",  # ; CJK COMPATIBILITY IDEOGRAPH-F92A;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F92A;
        "\d6D77",  # ; CJK COMPATIBILITY IDEOGRAPH-FA45;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA45;
        "\d6D77",  # ; CJK COMPATIBILITY IDEOGRAPH-2F901;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F901;
        "\d6D78",  # ; CJK COMPATIBILITY IDEOGRAPH-2F904;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F904;
        "\d6D85",  # ; CJK COMPATIBILITY IDEOGRAPH-2F905;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F905;
        "\d6DCB",  # ; CJK COMPATIBILITY IDEOGRAPH-F9F5;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9F5;
        "\d6DDA",  # ; CJK COMPATIBILITY IDEOGRAPH-F94D;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F94D;
        "\d6DEA",  # ; CJK COMPATIBILITY IDEOGRAPH-F9D6;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9D6;
        "\d6DF9",  # ; CJK COMPATIBILITY IDEOGRAPH-2F90E;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F90E;
        "\d6E1A",  # ; CJK COMPATIBILITY IDEOGRAPH-FA46;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA46;
        "\d6E2F",  # ; CJK COMPATIBILITY IDEOGRAPH-2F908;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F908;
        "\d6E6E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F909;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F909;
        "\d6E9C",  # ; CJK COMPATIBILITY IDEOGRAPH-F9CB;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9CB;
        "\d6EBA",  # ; CJK COMPATIBILITY IDEOGRAPH-F9EC;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9EC;
        "\d6EC7",  # ; CJK COMPATIBILITY IDEOGRAPH-2F90C;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F90C;
        "\d6ECB",  # ; CJK COMPATIBILITY IDEOGRAPH-FA99;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA99;
        "\d6ECB",  # ; CJK COMPATIBILITY IDEOGRAPH-2F90B;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F90B;
        "\d6ED1",  # ; CJK COMPATIBILITY IDEOGRAPH-F904;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F904;
        "\d6EDB",  # ; CJK COMPATIBILITY IDEOGRAPH-FA98;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA98;
        "\d6F0F",  # ; CJK COMPATIBILITY IDEOGRAPH-F94E;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F94E;
        "\d6F22",  # ; CJK COMPATIBILITY IDEOGRAPH-FA47;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA47;
        "\d6F22",  # ; CJK COMPATIBILITY IDEOGRAPH-FA9A;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-FA9A;
        "\d6F23",  # ; CJK COMPATIBILITY IDEOGRAPH-F992;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F992;
        "\d6F6E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F90F;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F90F;
        "\d6FC6",  # ; CJK COMPATIBILITY IDEOGRAPH-2F912;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F912;
        "\d6FEB",  # ; CJK COMPATIBILITY IDEOGRAPH-F922;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F922;
        "\d6FFE",  # ; CJK COMPATIBILITY IDEOGRAPH-F984;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F984;
        "\d701B",  # ; CJK COMPATIBILITY IDEOGRAPH-2F915;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F915;
        "\d701E",  # ; CJK COMPATIBILITY IDEOGRAPH-FA9B;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA9B;
        "\d701E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F914;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F914;
        "\d7039",  # ; CJK COMPATIBILITY IDEOGRAPH-2F913;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F913;
        "\d704A",  # ; CJK COMPATIBILITY IDEOGRAPH-2F917;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F917;
        "\d7070",  # ; CJK COMPATIBILITY IDEOGRAPH-2F835;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F835;
        "\d7077",  # ; CJK COMPATIBILITY IDEOGRAPH-2F919;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F919;
        "\d707D",  # ; CJK COMPATIBILITY IDEOGRAPH-2F918;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F918;
        "\d7099",  # ; CJK COMPATIBILITY IDEOGRAPH-F9FB;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9FB;
        "\d70AD",  # ; CJK COMPATIBILITY IDEOGRAPH-2F91A;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F91A;
        "\d70C8",  # ; CJK COMPATIBILITY IDEOGRAPH-F99F;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F99F;
        "\d70D9",  # ; CJK COMPATIBILITY IDEOGRAPH-F916;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F916;
        "\d7145",  # ; CJK COMPATIBILITY IDEOGRAPH-2F91C;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F91C;
        "\d7149",  # ; CJK COMPATIBILITY IDEOGRAPH-F993;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F993;
        "\d716E",  # ; CJK COMPATIBILITY IDEOGRAPH-FA48;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA48;
        "\d716E",  # ; CJK COMPATIBILITY IDEOGRAPH-FA9C;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-FA9C;
        "\d719C",  # ; CJK COMPATIBILITY IDEOGRAPH-2F91E;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F91E;
        "\d71CE",  # ; CJK COMPATIBILITY IDEOGRAPH-F9C0;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9C0;
        "\d71D0",  # ; CJK COMPATIBILITY IDEOGRAPH-F9EE;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9EE;
        "\d7210",  # ; CJK COMPATIBILITY IDEOGRAPH-F932;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F932;
        "\d721B",  # ; CJK COMPATIBILITY IDEOGRAPH-F91E;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F91E;
        "\d7228",  # ; CJK COMPATIBILITY IDEOGRAPH-2F920;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F920;
        "\d722B",  # ; CJK COMPATIBILITY IDEOGRAPH-FA49;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA49;
        "\d7235",  # ; CJK COMPATIBILITY IDEOGRAPH-FA9E;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA9E;
        "\d7235",  # ; CJK COMPATIBILITY IDEOGRAPH-2F921;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F921;
        "\d7250",  # ; CJK COMPATIBILITY IDEOGRAPH-2F922;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F922;
        "\d7262",  # ; CJK COMPATIBILITY IDEOGRAPH-F946;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F946;
        "\d7280",  # ; CJK COMPATIBILITY IDEOGRAPH-2F924;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F924;
        "\d7295",  # ; CJK COMPATIBILITY IDEOGRAPH-2F925;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F925;
        "\d72AF",  # ; CJK COMPATIBILITY IDEOGRAPH-FA9F;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA9F;
        "\d72C0",  # ; CJK COMPATIBILITY IDEOGRAPH-F9FA;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9FA;
        "\d72FC",  # ; CJK COMPATIBILITY IDEOGRAPH-F92B;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F92B;
        "\d732A",  # ; CJK COMPATIBILITY IDEOGRAPH-FA16;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA16;
        "\d732A",  # ; CJK COMPATIBILITY IDEOGRAPH-FAA0;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-FAA0;
        "\d7375",  # ; CJK COMPATIBILITY IDEOGRAPH-F9A7;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9A7;
        "\d737A",  # ; CJK COMPATIBILITY IDEOGRAPH-2F928;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F928;
        "\d7387",  # ; CJK COMPATIBILITY IDEOGRAPH-F961;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F961;
        "\d7387",  # ; CJK COMPATIBILITY IDEOGRAPH-F9DB;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-F9DB;
        "\d738B",  # ; CJK COMPATIBILITY IDEOGRAPH-2F929;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F929;
        "\d73A5",  # ; CJK COMPATIBILITY IDEOGRAPH-2F92B;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F92B;
        "\d73B2",  # ; CJK COMPATIBILITY IDEOGRAPH-F9AD;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9AD;
        "\d73DE",  # ; CJK COMPATIBILITY IDEOGRAPH-F917;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F917;
        "\d7406",  # ; CJK COMPATIBILITY IDEOGRAPH-F9E4;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9E4;
        "\d7409",  # ; CJK COMPATIBILITY IDEOGRAPH-F9CC;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9CC;
        "\d7422",  # ; CJK COMPATIBILITY IDEOGRAPH-FA4A;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA4A;
        "\d7447",  # ; CJK COMPATIBILITY IDEOGRAPH-2F92E;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F92E;
        "\d745C",  # ; CJK COMPATIBILITY IDEOGRAPH-2F92F;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F92F;
        "\d7469",  # ; CJK COMPATIBILITY IDEOGRAPH-F9AE;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9AE;
        "\d7471",  # ; CJK COMPATIBILITY IDEOGRAPH-FAA1;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAA1;
        "\d7471",  # ; CJK COMPATIBILITY IDEOGRAPH-2F930;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F930;
        "\d7485",  # ; CJK COMPATIBILITY IDEOGRAPH-2F931;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F931;
        "\d7489",  # ; CJK COMPATIBILITY IDEOGRAPH-F994;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F994;
        "\d7498",  # ; CJK COMPATIBILITY IDEOGRAPH-F9EF;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9EF;
        "\d74CA",  # ; CJK COMPATIBILITY IDEOGRAPH-2F932;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F932;
        "\d7506",  # ; CJK COMPATIBILITY IDEOGRAPH-FAA2;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAA2;
        "\d7524",  # ; CJK COMPATIBILITY IDEOGRAPH-2F934;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F934;
        "\d753B",  # ; CJK COMPATIBILITY IDEOGRAPH-FAA3;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAA3;
        "\d753E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F936;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F936;
        "\d7559",  # ; CJK COMPATIBILITY IDEOGRAPH-F9CD;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9CD;
        "\d7565",  # ; CJK COMPATIBILITY IDEOGRAPH-F976;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F976;
        "\d7570",  # ; CJK COMPATIBILITY IDEOGRAPH-F962;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F962;
        "\d7570",  # ; CJK COMPATIBILITY IDEOGRAPH-2F938;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F938;
        "\d75E2",  # ; CJK COMPATIBILITY IDEOGRAPH-F9E5;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9E5;
        "\d7610",  # ; CJK COMPATIBILITY IDEOGRAPH-2F93A;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F93A;
        "\d761D",  # ; CJK COMPATIBILITY IDEOGRAPH-FAA4;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAA4;
        "\d761F",  # ; CJK COMPATIBILITY IDEOGRAPH-FAA5;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAA5;
        "\d7642",  # ; CJK COMPATIBILITY IDEOGRAPH-F9C1;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9C1;
        "\d7669",  # ; CJK COMPATIBILITY IDEOGRAPH-F90E;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F90E;
        "\d76CA",  # ; CJK COMPATIBILITY IDEOGRAPH-FA17;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA17;
        "\d76CA",  # ; CJK COMPATIBILITY IDEOGRAPH-FAA6;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-FAA6;
        "\d76DB",  # ; CJK COMPATIBILITY IDEOGRAPH-FAA7;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAA7;
        "\d76E7",  # ; CJK COMPATIBILITY IDEOGRAPH-F933;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F933;
        "\d76F4",  # ; CJK COMPATIBILITY IDEOGRAPH-FAA8;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAA8;
        "\d76F4",  # ; CJK COMPATIBILITY IDEOGRAPH-2F940;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F940;
        "\d7701",  # ; CJK COMPATIBILITY IDEOGRAPH-F96D;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F96D;
        "\d771E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F945;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F945;
        "\d771F",  # ; CJK COMPATIBILITY IDEOGRAPH-2F946;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F946;
        "\d771F",  # ; CJK COMPATIBILITY IDEOGRAPH-2F947;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F947;
        "\d7740",  # ; CJK COMPATIBILITY IDEOGRAPH-FAAA;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAAA;
        "\d774A",  # ; CJK COMPATIBILITY IDEOGRAPH-FAA9;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAA9;
        "\d774A",  # ; CJK COMPATIBILITY IDEOGRAPH-2F948;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F948;
        "\d778B",  # ; CJK COMPATIBILITY IDEOGRAPH-2F94A;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F94A;
        "\d77A7",  # ; CJK COMPATIBILITY IDEOGRAPH-FA9D;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA9D;
        "\d784E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F94E;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F94E;
        "\d786B",  # ; CJK COMPATIBILITY IDEOGRAPH-F9CE;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9CE;
        "\d788C",  # ; CJK COMPATIBILITY IDEOGRAPH-F93B;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F93B;
        "\d788C",  # ; CJK COMPATIBILITY IDEOGRAPH-2F94F;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F94F;
        "\d7891",  # ; CJK COMPATIBILITY IDEOGRAPH-FA4B;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA4B;
        "\d78CA",  # ; CJK COMPATIBILITY IDEOGRAPH-F947;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F947;
        "\d78CC",  # ; CJK COMPATIBILITY IDEOGRAPH-FAAB;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAAB;
        "\d78CC",  # ; CJK COMPATIBILITY IDEOGRAPH-2F950;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F950;
        "\d78FB",  # ; CJK COMPATIBILITY IDEOGRAPH-F964;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F964;
        "\d792A",  # ; CJK COMPATIBILITY IDEOGRAPH-F985;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F985;
        "\d793C",  # ; CJK COMPATIBILITY IDEOGRAPH-FA18;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA18;
        "\d793E",  # ; CJK COMPATIBILITY IDEOGRAPH-FA4C;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA4C;
        "\d7948",  # ; CJK COMPATIBILITY IDEOGRAPH-FA4E;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA4E;
        "\d7949",  # ; CJK COMPATIBILITY IDEOGRAPH-FA4D;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA4D;
        "\d7950",  # ; CJK COMPATIBILITY IDEOGRAPH-FA4F;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA4F;
        "\d7956",  # ; CJK COMPATIBILITY IDEOGRAPH-FA50;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA50;
        "\d7956",  # ; CJK COMPATIBILITY IDEOGRAPH-2F953;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F953;
        "\d795D",  # ; CJK COMPATIBILITY IDEOGRAPH-FA51;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA51;
        "\d795E",  # ; CJK COMPATIBILITY IDEOGRAPH-FA19;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA19;
        "\d7965",  # ; CJK COMPATIBILITY IDEOGRAPH-FA1A;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA1A;
        "\d797F",  # ; CJK COMPATIBILITY IDEOGRAPH-F93C;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F93C;
        "\d798D",  # ; CJK COMPATIBILITY IDEOGRAPH-FA52;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA52;
        "\d798E",  # ; CJK COMPATIBILITY IDEOGRAPH-FA53;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA53;
        "\d798F",  # ; CJK COMPATIBILITY IDEOGRAPH-FA1B;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA1B;
        "\d798F",  # ; CJK COMPATIBILITY IDEOGRAPH-2F956;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F956;
        "\d79AE",  # ; CJK COMPATIBILITY IDEOGRAPH-F9B6;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9B6;
        "\d79CA",  # ; CJK COMPATIBILITY IDEOGRAPH-F995;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F995;
        "\d79EB",  # ; CJK COMPATIBILITY IDEOGRAPH-2F957;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F957;
        "\d7A1C",  # ; CJK COMPATIBILITY IDEOGRAPH-F956;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F956;
        "\d7A40",  # ; CJK COMPATIBILITY IDEOGRAPH-FA54;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA54;
        "\d7A40",  # ; CJK COMPATIBILITY IDEOGRAPH-2F959;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F959;
        "\d7A4A",  # ; CJK COMPATIBILITY IDEOGRAPH-2F95A;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F95A;
        "\d7A4F",  # ; CJK COMPATIBILITY IDEOGRAPH-2F95B;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F95B;
        "\d7A81",  # ; CJK COMPATIBILITY IDEOGRAPH-FA55;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA55;
        "\d7AB1",  # ; CJK COMPATIBILITY IDEOGRAPH-FAAC;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAAC;
        "\d7ACB",  # ; CJK COMPATIBILITY IDEOGRAPH-F9F7;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9F7;
        "\d7AEE",  # ; CJK COMPATIBILITY IDEOGRAPH-2F95F;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F95F;
        "\d7B20",  # ; CJK COMPATIBILITY IDEOGRAPH-F9F8;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9F8;
        "\d7BC0",  # ; CJK COMPATIBILITY IDEOGRAPH-FA56;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA56;
        "\d7BC0",  # ; CJK COMPATIBILITY IDEOGRAPH-FAAD;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-FAAD;
        "\d7BC6",  # ; CJK COMPATIBILITY IDEOGRAPH-2F962;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F962;
        "\d7BC9",  # ; CJK COMPATIBILITY IDEOGRAPH-2F963;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F963;
        "\d7C3E",  # ; CJK COMPATIBILITY IDEOGRAPH-F9A6;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9A6;
        "\d7C60",  # ; CJK COMPATIBILITY IDEOGRAPH-F944;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F944;
        "\d7C7B",  # ; CJK COMPATIBILITY IDEOGRAPH-FAAE;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAAE;
        "\d7C92",  # ; CJK COMPATIBILITY IDEOGRAPH-F9F9;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9F9;
        "\d7CBE",  # ; CJK COMPATIBILITY IDEOGRAPH-FA1D;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA1D;
        "\d7CD2",  # ; CJK COMPATIBILITY IDEOGRAPH-2F966;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F966;
        "\d7CD6",  # ; CJK COMPATIBILITY IDEOGRAPH-FA03;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA03;
        "\d7CE3",  # ; CJK COMPATIBILITY IDEOGRAPH-2F969;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F969;
        "\d7CE7",  # ; CJK COMPATIBILITY IDEOGRAPH-F97B;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F97B;
        "\d7CE8",  # ; CJK COMPATIBILITY IDEOGRAPH-2F968;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F968;
        "\d7D00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F96A;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F96A;
        "\d7D10",  # ; CJK COMPATIBILITY IDEOGRAPH-F9CF;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9CF;
        "\d7D22",  # ; CJK COMPATIBILITY IDEOGRAPH-F96A;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F96A;
        "\d7D2F",  # ; CJK COMPATIBILITY IDEOGRAPH-F94F;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F94F;
        "\d7D5B",  # ; CJK COMPATIBILITY IDEOGRAPH-FAAF;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAAF;
        "\d7D63",  # ; CJK COMPATIBILITY IDEOGRAPH-2F96C;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F96C;
        "\d7DA0",  # ; CJK COMPATIBILITY IDEOGRAPH-F93D;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F93D;
        "\d7DBE",  # ; CJK COMPATIBILITY IDEOGRAPH-F957;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F957;
        "\d7DC7",  # ; CJK COMPATIBILITY IDEOGRAPH-2F96E;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F96E;
        "\d7DF4",  # ; CJK COMPATIBILITY IDEOGRAPH-F996;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F996;
        "\d7DF4",  # ; CJK COMPATIBILITY IDEOGRAPH-FA57;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-FA57;
        "\d7DF4",  # ; CJK COMPATIBILITY IDEOGRAPH-FAB0;
        "\dFE02",  # ; CJK COMPATIBILITY IDEOGRAPH-FAB0;
        "\d7E02",  # ; CJK COMPATIBILITY IDEOGRAPH-2F96F;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F96F;
        "\d7E09",  # ; CJK COMPATIBILITY IDEOGRAPH-FA58;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA58;
        "\d7E37",  # ; CJK COMPATIBILITY IDEOGRAPH-F950;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F950;
        "\d7E41",  # ; CJK COMPATIBILITY IDEOGRAPH-FA59;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA59;
        "\d7E45",  # ; CJK COMPATIBILITY IDEOGRAPH-2F970;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F970;
        "\d7F3E",  # ; CJK COMPATIBILITY IDEOGRAPH-FAB1;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAB1;
        "\d7F72",  # ; CJK COMPATIBILITY IDEOGRAPH-FA5A;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA5A;
        "\d7F79",  # ; CJK COMPATIBILITY IDEOGRAPH-F9E6;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9E6;
        "\d7F7A",  # ; CJK COMPATIBILITY IDEOGRAPH-2F976;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F976;
        "\d7F85",  # ; CJK COMPATIBILITY IDEOGRAPH-F90F;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F90F;
        "\d7F95",  # ; CJK COMPATIBILITY IDEOGRAPH-2F978;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F978;
        "\d7F9A",  # ; CJK COMPATIBILITY IDEOGRAPH-F9AF;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9AF;
        "\d7FBD",  # ; CJK COMPATIBILITY IDEOGRAPH-FA1E;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA1E;
        "\d7FFA",  # ; CJK COMPATIBILITY IDEOGRAPH-2F979;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F979;
        "\d8001",  # ; CJK COMPATIBILITY IDEOGRAPH-F934;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F934;
        "\d8005",  # ; CJK COMPATIBILITY IDEOGRAPH-FA5B;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA5B;
        "\d8005",  # ; CJK COMPATIBILITY IDEOGRAPH-FAB2;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-FAB2;
        "\d8005",  # ; CJK COMPATIBILITY IDEOGRAPH-2F97A;
        "\dFE02",  # ; CJK COMPATIBILITY IDEOGRAPH-2F97A;
        "\d8046",  # ; CJK COMPATIBILITY IDEOGRAPH-F9B0;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9B0;
        "\d8060",  # ; CJK COMPATIBILITY IDEOGRAPH-2F97D;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F97D;
        "\d806F",  # ; CJK COMPATIBILITY IDEOGRAPH-F997;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F997;
        "\d8070",  # ; CJK COMPATIBILITY IDEOGRAPH-2F97F;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F97F;
        "\d807E",  # ; CJK COMPATIBILITY IDEOGRAPH-F945;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F945;
        "\d808B",  # ; CJK COMPATIBILITY IDEOGRAPH-F953;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F953;
        "\d80AD",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8D6;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8D6;
        "\d80B2",  # ; CJK COMPATIBILITY IDEOGRAPH-2F982;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F982;
        "\d8103",  # ; CJK COMPATIBILITY IDEOGRAPH-2F983;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F983;
        "\d813E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F985;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F985;
        "\d81D8",  # ; CJK COMPATIBILITY IDEOGRAPH-F926;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F926;
        "\d81E8",  # ; CJK COMPATIBILITY IDEOGRAPH-F9F6;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9F6;
        "\d81ED",  # ; CJK COMPATIBILITY IDEOGRAPH-FA5C;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA5C;
        "\d8201",  # ; CJK COMPATIBILITY IDEOGRAPH-2F893;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F893;
        "\d8201",  # ; CJK COMPATIBILITY IDEOGRAPH-2F98B;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F98B;
        "\d8204",  # ; CJK COMPATIBILITY IDEOGRAPH-2F98C;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F98C;
        "\d8218",  # ; CJK COMPATIBILITY IDEOGRAPH-FA6D;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA6D;
        "\d826F",  # ; CJK COMPATIBILITY IDEOGRAPH-F97C;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F97C;
        "\d8279",  # ; CJK COMPATIBILITY IDEOGRAPH-FA5D;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA5D;
        "\d8279",  # ; CJK COMPATIBILITY IDEOGRAPH-FA5E;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-FA5E;
        "\d828B",  # ; CJK COMPATIBILITY IDEOGRAPH-2F990;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F990;
        "\d8291",  # ; CJK COMPATIBILITY IDEOGRAPH-2F98F;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F98F;
        "\d829D",  # ; CJK COMPATIBILITY IDEOGRAPH-2F991;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F991;
        "\d82B1",  # ; CJK COMPATIBILITY IDEOGRAPH-2F993;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F993;
        "\d82B3",  # ; CJK COMPATIBILITY IDEOGRAPH-2F994;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F994;
        "\d82BD",  # ; CJK COMPATIBILITY IDEOGRAPH-2F995;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F995;
        "\d82E5",  # ; CJK COMPATIBILITY IDEOGRAPH-F974;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F974;
        "\d82E5",  # ; CJK COMPATIBILITY IDEOGRAPH-2F998;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F998;
        "\d82E6",  # ; CJK COMPATIBILITY IDEOGRAPH-2F996;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F996;
        "\d831D",  # ; CJK COMPATIBILITY IDEOGRAPH-2F999;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F999;
        "\d8323",  # ; CJK COMPATIBILITY IDEOGRAPH-2F99C;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F99C;
        "\d8336",  # ; CJK COMPATIBILITY IDEOGRAPH-F9FE;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9FE;
        "\d8352",  # ; CJK COMPATIBILITY IDEOGRAPH-FAB3;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAB3;
        "\d8353",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9A0;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9A0;
        "\d8363",  # ; CJK COMPATIBILITY IDEOGRAPH-2F99A;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F99A;
        "\d83AD",  # ; CJK COMPATIBILITY IDEOGRAPH-2F99B;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F99B;
        "\d83BD",  # ; CJK COMPATIBILITY IDEOGRAPH-2F99D;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F99D;
        "\d83C9",  # ; CJK COMPATIBILITY IDEOGRAPH-F93E;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F93E;
        "\d83CA",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9A1;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9A1;
        "\d83CC",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9A2;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9A2;
        "\d83DC",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9A3;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9A3;
        "\d83E7",  # ; CJK COMPATIBILITY IDEOGRAPH-2F99E;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F99E;
        "\d83EF",  # ; CJK COMPATIBILITY IDEOGRAPH-FAB4;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAB4;
        "\d83F1",  # ; CJK COMPATIBILITY IDEOGRAPH-F958;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F958;
        "\d843D",  # ; CJK COMPATIBILITY IDEOGRAPH-F918;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F918;
        "\d8449",  # ; CJK COMPATIBILITY IDEOGRAPH-F96E;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F96E;
        "\d8457",  # ; CJK COMPATIBILITY IDEOGRAPH-FA5F;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA5F;
        "\d8457",  # ; CJK COMPATIBILITY IDEOGRAPH-2F99F;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F99F;
        "\d84EE",  # ; CJK COMPATIBILITY IDEOGRAPH-F999;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F999;
        "\d84F1",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9A8;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9A8;
        "\d84F3",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9A9;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9A9;
        "\d84FC",  # ; CJK COMPATIBILITY IDEOGRAPH-F9C2;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9C2;
        "\d8516",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9AA;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9AA;
        "\d8564",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9AC;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9AC;
        "\d85CD",  # ; CJK COMPATIBILITY IDEOGRAPH-F923;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F923;
        "\d85FA",  # ; CJK COMPATIBILITY IDEOGRAPH-F9F0;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9F0;
        "\d8606",  # ; CJK COMPATIBILITY IDEOGRAPH-F935;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F935;
        "\d8612",  # ; CJK COMPATIBILITY IDEOGRAPH-FA20;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA20;
        "\d862D",  # ; CJK COMPATIBILITY IDEOGRAPH-F91F;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F91F;
        "\d863F",  # ; CJK COMPATIBILITY IDEOGRAPH-F910;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F910;
        "\d8650",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9B3;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9B3;
        "\d865C",  # ; CJK COMPATIBILITY IDEOGRAPH-F936;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F936;
        "\d865C",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9B4;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9B4;
        "\d8667",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9B5;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9B5;
        "\d8669",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9B6;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9B6;
        "\d8688",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9B8;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9B8;
        "\d86A9",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9B7;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9B7;
        "\d86E2",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9BA;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9BA;
        "\d870E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9B9;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9B9;
        "\d8728",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9BC;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9BC;
        "\d876B",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9BD;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9BD;
        "\d8779",  # ; CJK COMPATIBILITY IDEOGRAPH-FAB5;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAB5;
        "\d8779",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9BB;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9BB;
        "\d8786",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9BE;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9BE;
        "\d87BA",  # ; CJK COMPATIBILITY IDEOGRAPH-F911;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F911;
        "\d87E1",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9C0;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9C0;
        "\d8801",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9C1;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9C1;
        "\d881F",  # ; CJK COMPATIBILITY IDEOGRAPH-F927;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F927;
        "\d884C",  # ; CJK COMPATIBILITY IDEOGRAPH-FA08;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA08;
        "\d8860",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9C3;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9C3;
        "\d8863",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9C4;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9C4;
        "\d88C2",  # ; CJK COMPATIBILITY IDEOGRAPH-F9A0;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9A0;
        "\d88CF",  # ; CJK COMPATIBILITY IDEOGRAPH-F9E7;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9E7;
        "\d88D7",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9C6;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9C6;
        "\d88DE",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9C7;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9C7;
        "\d88E1",  # ; CJK COMPATIBILITY IDEOGRAPH-F9E8;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9E8;
        "\d88F8",  # ; CJK COMPATIBILITY IDEOGRAPH-F912;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F912;
        "\d88FA",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9C9;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9C9;
        "\d8910",  # ; CJK COMPATIBILITY IDEOGRAPH-FA60;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA60;
        "\d8941",  # ; CJK COMPATIBILITY IDEOGRAPH-FAB6;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAB6;
        "\d8964",  # ; CJK COMPATIBILITY IDEOGRAPH-F924;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F924;
        "\d8986",  # ; CJK COMPATIBILITY IDEOGRAPH-FAB7;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAB7;
        "\d898B",  # ; CJK COMPATIBILITY IDEOGRAPH-FA0A;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA0A;
        "\d8996",  # ; CJK COMPATIBILITY IDEOGRAPH-FA61;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA61;
        "\d8996",  # ; CJK COMPATIBILITY IDEOGRAPH-FAB8;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-FAB8;
        "\d8AA0",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9CF;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9CF;
        "\d8AAA",  # ; CJK COMPATIBILITY IDEOGRAPH-F96F;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F96F;
        "\d8AAA",  # ; CJK COMPATIBILITY IDEOGRAPH-F9A1;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-F9A1;
        "\d8ABF",  # ; CJK COMPATIBILITY IDEOGRAPH-FAB9;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAB9;
        "\d8ACB",  # ; CJK COMPATIBILITY IDEOGRAPH-FABB;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FABB;
        "\d8AD2",  # ; CJK COMPATIBILITY IDEOGRAPH-F97D;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F97D;
        "\d8AD6",  # ; CJK COMPATIBILITY IDEOGRAPH-F941;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F941;
        "\d8AED",  # ; CJK COMPATIBILITY IDEOGRAPH-FABE;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FABE;
        "\d8AED",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9D0;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9D0;
        "\d8AF8",  # ; CJK COMPATIBILITY IDEOGRAPH-FA22;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA22;
        "\d8AF8",  # ; CJK COMPATIBILITY IDEOGRAPH-FABA;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-FABA;
        "\d8AFE",  # ; CJK COMPATIBILITY IDEOGRAPH-F95D;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F95D;
        "\d8AFE",  # ; CJK COMPATIBILITY IDEOGRAPH-FABD;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-FABD;
        "\d8B01",  # ; CJK COMPATIBILITY IDEOGRAPH-FA62;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA62;
        "\d8B01",  # ; CJK COMPATIBILITY IDEOGRAPH-FABC;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-FABC;
        "\d8B39",  # ; CJK COMPATIBILITY IDEOGRAPH-FA63;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA63;
        "\d8B39",  # ; CJK COMPATIBILITY IDEOGRAPH-FABF;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-FABF;
        "\d8B58",  # ; CJK COMPATIBILITY IDEOGRAPH-F9FC;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9FC;
        "\d8B80",  # ; CJK COMPATIBILITY IDEOGRAPH-F95A;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F95A;
        "\d8B8A",  # ; CJK COMPATIBILITY IDEOGRAPH-FAC0;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAC0;
        "\d8B8A",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9D1;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9D1;
        "\d8C48",  # ; CJK COMPATIBILITY IDEOGRAPH-F900;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F900;
        "\d8C55",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9D2;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9D2;
        "\d8CAB",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9D4;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9D4;
        "\d8CC1",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9D5;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9D5;
        "\d8CC2",  # ; CJK COMPATIBILITY IDEOGRAPH-F948;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F948;
        "\d8CC8",  # ; CJK COMPATIBILITY IDEOGRAPH-F903;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F903;
        "\d8CD3",  # ; CJK COMPATIBILITY IDEOGRAPH-FA64;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA64;
        "\d8D08",  # ; CJK COMPATIBILITY IDEOGRAPH-FA65;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA65;
        "\d8D08",  # ; CJK COMPATIBILITY IDEOGRAPH-FAC1;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-FAC1;
        "\d8D1B",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9D6;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9D6;
        "\d8D77",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9D7;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9D7;
        "\d8DBC",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9DB;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9DB;
        "\d8DCB",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9DA;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9DA;
        "\d8DEF",  # ; CJK COMPATIBILITY IDEOGRAPH-F937;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F937;
        "\d8DF0",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9DC;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9DC;
        "\d8ECA",  # ; CJK COMPATIBILITY IDEOGRAPH-F902;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F902;
        "\d8ED4",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9DE;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9DE;
        "\d8F26",  # ; CJK COMPATIBILITY IDEOGRAPH-F998;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F998;
        "\d8F2A",  # ; CJK COMPATIBILITY IDEOGRAPH-F9D7;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9D7;
        "\d8F38",  # ; CJK COMPATIBILITY IDEOGRAPH-FAC2;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAC2;
        "\d8F38",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9DF;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9DF;
        "\d8F3B",  # ; CJK COMPATIBILITY IDEOGRAPH-FA07;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA07;
        "\d8F62",  # ; CJK COMPATIBILITY IDEOGRAPH-F98D;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F98D;
        "\d8F9E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F98D;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F98D;
        "\d8FB0",  # ; CJK COMPATIBILITY IDEOGRAPH-F971;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F971;
        "\d8FB6",  # ; CJK COMPATIBILITY IDEOGRAPH-FA66;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA66;
        "\d9023",  # ; CJK COMPATIBILITY IDEOGRAPH-F99A;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F99A;
        "\d9038",  # ; CJK COMPATIBILITY IDEOGRAPH-FA25;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA25;
        "\d9038",  # ; CJK COMPATIBILITY IDEOGRAPH-FA67;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-FA67;
        "\d9072",  # ; CJK COMPATIBILITY IDEOGRAPH-FAC3;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAC3;
        "\d907C",  # ; CJK COMPATIBILITY IDEOGRAPH-F9C3;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9C3;
        "\d908F",  # ; CJK COMPATIBILITY IDEOGRAPH-F913;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F913;
        "\d9094",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9E2;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9E2;
        "\d90CE",  # ; CJK COMPATIBILITY IDEOGRAPH-F92C;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F92C;
        "\d90DE",  # ; CJK COMPATIBILITY IDEOGRAPH-FA2E;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA2E;
        "\d90F1",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9E3;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9E3;
        "\d90FD",  # ; CJK COMPATIBILITY IDEOGRAPH-FA26;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA26;
        "\d9111",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9E4;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9E4;
        "\d911B",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9E6;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9E6;
        "\d916A",  # ; CJK COMPATIBILITY IDEOGRAPH-F919;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F919;
        "\d9199",  # ; CJK COMPATIBILITY IDEOGRAPH-FAC4;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAC4;
        "\d91B4",  # ; CJK COMPATIBILITY IDEOGRAPH-F9B7;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9B7;
        "\d91CC",  # ; CJK COMPATIBILITY IDEOGRAPH-F9E9;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9E9;
        "\d91CF",  # ; CJK COMPATIBILITY IDEOGRAPH-F97E;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F97E;
        "\d91D1",  # ; CJK COMPATIBILITY IDEOGRAPH-F90A;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F90A;
        "\d9234",  # ; CJK COMPATIBILITY IDEOGRAPH-F9B1;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9B1;
        "\d9238",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9E7;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9E7;
        "\d9276",  # ; CJK COMPATIBILITY IDEOGRAPH-FAC5;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAC5;
        "\d927C",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9EA;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9EA;
        "\d92D7",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9E8;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9E8;
        "\d92D8",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9E9;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9E9;
        "\d9304",  # ; CJK COMPATIBILITY IDEOGRAPH-F93F;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F93F;
        "\d934A",  # ; CJK COMPATIBILITY IDEOGRAPH-F99B;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F99B;
        "\d93F9",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9EB;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9EB;
        "\d9415",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9EC;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9EC;
        "\d958B",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9EE;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9EE;
        "\d95AD",  # ; CJK COMPATIBILITY IDEOGRAPH-F986;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F986;
        "\d95B7",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9F0;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9F0;
        "\d962E",  # ; CJK COMPATIBILITY IDEOGRAPH-F9C6;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9C6;
        "\d964B",  # ; CJK COMPATIBILITY IDEOGRAPH-F951;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F951;
        "\d964D",  # ; CJK COMPATIBILITY IDEOGRAPH-FA09;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA09;
        "\d9675",  # ; CJK COMPATIBILITY IDEOGRAPH-F959;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F959;
        "\d9678",  # ; CJK COMPATIBILITY IDEOGRAPH-F9D3;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9D3;
        "\d967C",  # ; CJK COMPATIBILITY IDEOGRAPH-FAC6;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAC6;
        "\d9686",  # ; CJK COMPATIBILITY IDEOGRAPH-F9DC;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9DC;
        "\d96A3",  # ; CJK COMPATIBILITY IDEOGRAPH-F9F1;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9F1;
        "\d96B7",  # ; CJK COMPATIBILITY IDEOGRAPH-FA2F;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA2F;
        "\d96B8",  # ; CJK COMPATIBILITY IDEOGRAPH-F9B8;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9B8;
        "\d96C3",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9F3;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9F3;
        "\d96E2",  # ; CJK COMPATIBILITY IDEOGRAPH-F9EA;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9EA;
        "\d96E3",  # ; CJK COMPATIBILITY IDEOGRAPH-FA68;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA68;
        "\d96E3",  # ; CJK COMPATIBILITY IDEOGRAPH-FAC7;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-FAC7;
        "\d96F6",  # ; CJK COMPATIBILITY IDEOGRAPH-F9B2;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9B2;
        "\d96F7",  # ; CJK COMPATIBILITY IDEOGRAPH-F949;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F949;
        "\d9723",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9F5;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9F5;
        "\d9732",  # ; CJK COMPATIBILITY IDEOGRAPH-F938;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F938;
        "\d9748",  # ; CJK COMPATIBILITY IDEOGRAPH-F9B3;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9B3;
        "\d9756",  # ; CJK COMPATIBILITY IDEOGRAPH-FA1C;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA1C;
        "\d9756",  # ; CJK COMPATIBILITY IDEOGRAPH-FAC8;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-FAC8;
        "\d97DB",  # ; CJK COMPATIBILITY IDEOGRAPH-FAC9;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAC9;
        "\d97E0",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9FA;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9FA;
        "\d97FF",  # ; CJK COMPATIBILITY IDEOGRAPH-FA69;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA69;
        "\d97FF",  # ; CJK COMPATIBILITY IDEOGRAPH-FACA;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-FACA;
        "\d980B",  # ; CJK COMPATIBILITY IDEOGRAPH-FACB;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FACB;
        "\d980B",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9FE;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9FE;
        "\d980B",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9FF;
        "\dFE02",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9FF;
        "\d9818",  # ; CJK COMPATIBILITY IDEOGRAPH-F9B4;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9B4;
        "\d9829",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA00;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA00;
        "\d983B",  # ; CJK COMPATIBILITY IDEOGRAPH-FA6A;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA6A;
        "\d983B",  # ; CJK COMPATIBILITY IDEOGRAPH-FACC;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-FACC;
        "\d985E",  # ; CJK COMPATIBILITY IDEOGRAPH-F9D0;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9D0;
        "\d98E2",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA02;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA02;
        "\d98EF",  # ; CJK COMPATIBILITY IDEOGRAPH-FA2A;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA2A;
        "\d98FC",  # ; CJK COMPATIBILITY IDEOGRAPH-FA2B;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA2B;
        "\d9928",  # ; CJK COMPATIBILITY IDEOGRAPH-FA2C;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA2C;
        "\d9929",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA04;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA04;
        "\d99A7",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA05;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA05;
        "\d99C2",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA06;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA06;
        "\d99F1",  # ; CJK COMPATIBILITY IDEOGRAPH-F91A;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F91A;
        "\d99FE",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA07;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA07;
        "\d9A6A",  # ; CJK COMPATIBILITY IDEOGRAPH-F987;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F987;
        "\d9B12",  # ; CJK COMPATIBILITY IDEOGRAPH-FACD;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FACD;
        "\d9B12",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA0A;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA0A;
        "\d9B6F",  # ; CJK COMPATIBILITY IDEOGRAPH-F939;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F939;
        "\d9C40",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA0B;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA0B;
        "\d9C57",  # ; CJK COMPATIBILITY IDEOGRAPH-F9F2;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9F2;
        "\d9CFD",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA0C;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA0C;
        "\d9D67",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA0F;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA0F;
        "\d9DB4",  # ; CJK COMPATIBILITY IDEOGRAPH-FA2D;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA2D;
        "\d9DFA",  # ; CJK COMPATIBILITY IDEOGRAPH-F93A;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F93A;
        "\d9E1E",  # ; CJK COMPATIBILITY IDEOGRAPH-F920;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F920;
        "\d9E7F",  # ; CJK COMPATIBILITY IDEOGRAPH-F940;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F940;
        "\d9E97",  # ; CJK COMPATIBILITY IDEOGRAPH-F988;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F988;
        "\d9E9F",  # ; CJK COMPATIBILITY IDEOGRAPH-F9F3;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9F3;
        "\d9EBB",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA15;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA15;
        "\d9ECE",  # ; CJK COMPATIBILITY IDEOGRAPH-F989;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F989;
        "\d9EF9",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA17;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA17;
        "\d9EFE",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA18;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA18;
        "\d9F05",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA19;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA19;
        "\d9F0F",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA1A;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA1A;
        "\d9F16",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA1B;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA1B;
        "\d9F3B",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA1C;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA1C;
        "\d9F43",  # ; CJK COMPATIBILITY IDEOGRAPH-FAD8;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAD8;
        "\d9F8D",  # ; CJK COMPATIBILITY IDEOGRAPH-F9C4;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9C4;
        "\d9F8E",  # ; CJK COMPATIBILITY IDEOGRAPH-FAD9;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAD9;
        "\d9F9C",  # ; CJK COMPATIBILITY IDEOGRAPH-F907;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F907;
        "\d9F9C",  # ; CJK COMPATIBILITY IDEOGRAPH-F908;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-F908;
        "\d9F9C",  # ; CJK COMPATIBILITY IDEOGRAPH-FACE;
        "\dFE02",  # ; CJK COMPATIBILITY IDEOGRAPH-FACE;
        "\d20122",  # ; CJK COMPATIBILITY IDEOGRAPH-2F803;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F803;
        "\d2051C",  # ; CJK COMPATIBILITY IDEOGRAPH-2F812;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F812;
        "\d20525",  # ; CJK COMPATIBILITY IDEOGRAPH-2F91B;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F91B;
        "\d2054B",  # ; CJK COMPATIBILITY IDEOGRAPH-2F816;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F816;
        "\d2063A",  # ; CJK COMPATIBILITY IDEOGRAPH-2F80D;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F80D;
        "\d20804",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9D9;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9D9;
        "\d208DE",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9DD;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9DD;
        "\d20A2C",  # ; CJK COMPATIBILITY IDEOGRAPH-2F834;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F834;
        "\d20B63",  # ; CJK COMPATIBILITY IDEOGRAPH-2F838;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F838;
        "\d214E4",  # ; CJK COMPATIBILITY IDEOGRAPH-2F859;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F859;
        "\d216A8",  # ; CJK COMPATIBILITY IDEOGRAPH-2F860;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F860;
        "\d216EA",  # ; CJK COMPATIBILITY IDEOGRAPH-2F861;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F861;
        "\d219C8",  # ; CJK COMPATIBILITY IDEOGRAPH-2F86C;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F86C;
        "\d21B18",  # ; CJK COMPATIBILITY IDEOGRAPH-2F871;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F871;
        "\d21D0B",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8F8;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8F8;
        "\d21DE4",  # ; CJK COMPATIBILITY IDEOGRAPH-2F87B;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F87B;
        "\d21DE6",  # ; CJK COMPATIBILITY IDEOGRAPH-2F87D;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F87D;
        "\d22183",  # ; CJK COMPATIBILITY IDEOGRAPH-2F889;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F889;
        "\d2219F",  # ; CJK COMPATIBILITY IDEOGRAPH-2F939;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F939;
        "\d22331",  # ; CJK COMPATIBILITY IDEOGRAPH-2F891;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F891;
        "\d22331",  # ; CJK COMPATIBILITY IDEOGRAPH-2F892;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F892;
        "\d226D4",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8A4;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8A4;
        "\d22844",  # ; CJK COMPATIBILITY IDEOGRAPH-FAD0;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAD0;
        "\d2284A",  # ; CJK COMPATIBILITY IDEOGRAPH-FACF;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FACF;
        "\d22B0C",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8B8;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8B8;
        "\d22BF1",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8BE;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8BE;
        "\d2300A",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8CA;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8CA;
        "\d232B8",  # ; CJK COMPATIBILITY IDEOGRAPH-2F897;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F897;
        "\d2335F",  # ; CJK COMPATIBILITY IDEOGRAPH-2F980;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F980;
        "\d23393",  # ; CJK COMPATIBILITY IDEOGRAPH-2F989;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F989;
        "\d2339C",  # ; CJK COMPATIBILITY IDEOGRAPH-2F98A;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F98A;
        "\d233C3",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8DD;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8DD;
        "\d233D5",  # ; CJK COMPATIBILITY IDEOGRAPH-FAD1;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAD1;
        "\d2346D",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8E3;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8E3;
        "\d236A3",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8EC;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8EC;
        "\d238A7",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8F0;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8F0;
        "\d23A8D",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8F7;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8F7;
        "\d23AFA",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8F9;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8F9;
        "\d23CBC",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8FB;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8FB;
        "\d23D1E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F906;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F906;
        "\d23ED1",  # ; CJK COMPATIBILITY IDEOGRAPH-2F90D;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F90D;
        "\d23F5E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F910;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F910;
        "\d23F8E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F911;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F911;
        "\d24263",  # ; CJK COMPATIBILITY IDEOGRAPH-2F91D;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F91D;
        "\d242EE",  # ; CJK COMPATIBILITY IDEOGRAPH-FA6C;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA6C;
        "\d243AB",  # ; CJK COMPATIBILITY IDEOGRAPH-2F91F;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F91F;
        "\d24608",  # ; CJK COMPATIBILITY IDEOGRAPH-2F923;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F923;
        "\d24735",  # ; CJK COMPATIBILITY IDEOGRAPH-2F926;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F926;
        "\d24814",  # ; CJK COMPATIBILITY IDEOGRAPH-2F927;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F927;
        "\d24C36",  # ; CJK COMPATIBILITY IDEOGRAPH-2F935;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F935;
        "\d24C92",  # ; CJK COMPATIBILITY IDEOGRAPH-2F937;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F937;
        "\d24FA1",  # ; CJK COMPATIBILITY IDEOGRAPH-2F93B;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F93B;
        "\d24FB8",  # ; CJK COMPATIBILITY IDEOGRAPH-2F93C;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F93C;
        "\d25044",  # ; CJK COMPATIBILITY IDEOGRAPH-2F93D;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F93D;
        "\d250F2",  # ; CJK COMPATIBILITY IDEOGRAPH-2F942;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F942;
        "\d250F3",  # ; CJK COMPATIBILITY IDEOGRAPH-2F941;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F941;
        "\d25119",  # ; CJK COMPATIBILITY IDEOGRAPH-2F943;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F943;
        "\d25133",  # ; CJK COMPATIBILITY IDEOGRAPH-2F944;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F944;
        "\d25249",  # ; CJK COMPATIBILITY IDEOGRAPH-FAD5;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAD5;
        "\d2541D",  # ; CJK COMPATIBILITY IDEOGRAPH-2F94D;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F94D;
        "\d25626",  # ; CJK COMPATIBILITY IDEOGRAPH-2F952;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F952;
        "\d2569A",  # ; CJK COMPATIBILITY IDEOGRAPH-2F954;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F954;
        "\d256C5",  # ; CJK COMPATIBILITY IDEOGRAPH-2F955;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F955;
        "\d2597C",  # ; CJK COMPATIBILITY IDEOGRAPH-2F95C;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F95C;
        "\d25AA7",  # ; CJK COMPATIBILITY IDEOGRAPH-2F95D;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F95D;
        "\d25AA7",  # ; CJK COMPATIBILITY IDEOGRAPH-2F95E;
        "\dFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F95E;
        "\d25BAB",  # ; CJK COMPATIBILITY IDEOGRAPH-2F961;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F961;
        "\d25C80",  # ; CJK COMPATIBILITY IDEOGRAPH-2F965;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F965;
        "\d25CD0",  # ; CJK COMPATIBILITY IDEOGRAPH-FAD6;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAD6;
        "\d25F86",  # ; CJK COMPATIBILITY IDEOGRAPH-2F96B;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F96B;
        "\d261DA",  # ; CJK COMPATIBILITY IDEOGRAPH-2F898;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F898;
        "\d26228",  # ; CJK COMPATIBILITY IDEOGRAPH-2F972;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F972;
        "\d26247",  # ; CJK COMPATIBILITY IDEOGRAPH-2F973;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F973;
        "\d262D9",  # ; CJK COMPATIBILITY IDEOGRAPH-2F975;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F975;
        "\d2633E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F977;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F977;
        "\d264DA",  # ; CJK COMPATIBILITY IDEOGRAPH-2F97B;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F97B;
        "\d26523",  # ; CJK COMPATIBILITY IDEOGRAPH-2F97C;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F97C;
        "\d265A8",  # ; CJK COMPATIBILITY IDEOGRAPH-2F97E;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F97E;
        "\d267A7",  # ; CJK COMPATIBILITY IDEOGRAPH-2F987;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F987;
        "\d267B5",  # ; CJK COMPATIBILITY IDEOGRAPH-2F988;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F988;
        "\d26B3C",  # ; CJK COMPATIBILITY IDEOGRAPH-2F997;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F997;
        "\d26C36",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9A4;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9A4;
        "\d26CD5",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9A6;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9A6;
        "\d26D6B",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9A5;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9A5;
        "\d26F2C",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9AD;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9AD;
        "\d26FB1",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9B0;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9B0;
        "\d270D2",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9B1;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9B1;
        "\d273CA",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9AB;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9AB;
        "\d27667",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9C5;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9C5;
        "\d278AE",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9CB;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9CB;
        "\d27966",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9CC;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9CC;
        "\d27CA8",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9D3;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9D3;
        "\d27ED3",  # ; CJK COMPATIBILITY IDEOGRAPH-FAD7;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAD7;
        "\d27F2F",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9D8;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9D8;
        "\d285D2",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9E0;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9E0;
        "\d285ED",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9E1;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9E1;
        "\d2872E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9E5;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9E5;
        "\d28BFA",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9ED;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9ED;
        "\d28D77",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9F1;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9F1;
        "\d29145",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9F6;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9F6;
        "\d291DF",  # ; CJK COMPATIBILITY IDEOGRAPH-2F81C;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F81C;
        "\d2921A",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9F7;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9F7;
        "\d2940A",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9FB;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9FB;
        "\d29496",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9FD;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9FD;
        "\d295B6",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA01;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA01;
        "\d29B30",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA09;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA09;
        "\d2A0CE",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA10;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA10;
        "\d2A105",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA12;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA12;
        "\d2A20E",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA13;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA13;
        "\d2A291",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA14;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA14;
        "\d2A392",  # ; CJK COMPATIBILITY IDEOGRAPH-2F88F;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F88F;
        "\d2A600",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA1D;
        "\dFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA1D;
    ]
    test_data.each do |string|
      assert @validator.valid_encoding?(string), "U10_StandardizedVariants: #{string}"
      assert string.force_encoding("UTF-8").valid_encoding?, "U10_StandardizedVariants: #{string}" if @vercheck
    end
  end

end

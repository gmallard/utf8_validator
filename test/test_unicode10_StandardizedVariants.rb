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
        "\u0030",  # ; short diagonal stroke form; # DIGIT ZERO
        "\uFE00",  # ; short diagonal stroke form; # DIGIT ZERO
        "\u2205",  # ; zero with long diagonal stroke overlay form; # EMPTY SET
        "\uFE00",  # ; zero with long diagonal stroke overlay form; # EMPTY SET
        "\u2229",  # ; with serifs; # INTERSECTION
        "\uFE00",  # ; with serifs; # INTERSECTION
        "\u222A",  # ; with serifs; # UNION
        "\uFE00",  # ; with serifs; # UNION
        "\u2268",  # ; with vertical stroke; # LESS-THAN BUT NOT EQUAL TO
        "\uFE00",  # ; with vertical stroke; # LESS-THAN BUT NOT EQUAL TO
        "\u2269",  # ; with vertical stroke; # GREATER-THAN BUT NOT EQUAL TO
        "\uFE00",  # ; with vertical stroke; # GREATER-THAN BUT NOT EQUAL TO
        "\u2272",  # ; following the slant of the lower leg; # LESS-THAN OR EQUIVALENT TO
        "\uFE00",  # ; following the slant of the lower leg; # LESS-THAN OR EQUIVALENT TO
        "\u2273",  # ; following the slant of the lower leg; # GREATER-THAN OR EQUIVALENT TO
        "\uFE00",  # ; following the slant of the lower leg; # GREATER-THAN OR EQUIVALENT TO
        "\u228A",  # ; with stroke through bottom members; # SUBSET OF WITH NOT EQUAL TO
        "\uFE00",  # ; with stroke through bottom members; # SUBSET OF WITH NOT EQUAL TO
        "\u228B",  # ; with stroke through bottom members; # SUPERSET OF WITH NOT EQUAL TO
        "\uFE00",  # ; with stroke through bottom members; # SUPERSET OF WITH NOT EQUAL TO
        "\u2293",  # ; with serifs; # SQUARE CAP
        "\uFE00",  # ; with serifs; # SQUARE CAP
        "\u2294",  # ; with serifs; # SQUARE CUP
        "\uFE00",  # ; with serifs; # SQUARE CUP
        "\u2295",  # ; with white rim; # CIRCLED PLUS
        "\uFE00",  # ; with white rim; # CIRCLED PLUS
        "\u2297",  # ; with white rim; # CIRCLED TIMES
        "\uFE00",  # ; with white rim; # CIRCLED TIMES
        "\u229C",  # ; with equal sign touching the circle; # CIRCLED EQUALS
        "\uFE00",  # ; with equal sign touching the circle; # CIRCLED EQUALS
        "\u22DA",  # ; with slanted equal; # LESS-THAN EQUAL TO OR GREATER-THAN
        "\uFE00",  # ; with slanted equal; # LESS-THAN EQUAL TO OR GREATER-THAN
        "\u22DB",  # ; with slanted equal; # GREATER-THAN EQUAL TO OR LESS-THAN
        "\uFE00",  # ; with slanted equal; # GREATER-THAN EQUAL TO OR LESS-THAN
        "\u2A3C",  # ; tall variant with narrow foot; # INTERIOR PRODUCT
        "\uFE00",  # ; tall variant with narrow foot; # INTERIOR PRODUCT
        "\u2A3D",  # ; tall variant with narrow foot; # RIGHTHAND INTERIOR PRODUCT
        "\uFE00",  # ; tall variant with narrow foot; # RIGHTHAND INTERIOR PRODUCT
        "\u2A9D",  # ; with similar following the slant of the upper leg; # SIMILAR OR LESS-THAN
        "\uFE00",  # ; with similar following the slant of the upper leg; # SIMILAR OR LESS-THAN
        "\u2A9E",  # ; with similar following the slant of the upper leg; # SIMILAR OR GREATER-THAN
        "\uFE00",  # ; with similar following the slant of the upper leg; # SIMILAR OR GREATER-THAN
        "\u2AAC",  # ; with slanted equal; # SMALLER THAN OR EQUAL TO
        "\uFE00",  # ; with slanted equal; # SMALLER THAN OR EQUAL TO
        "\u2AAD",  # ; with slanted equal; # LARGER THAN OR EQUAL TO
        "\uFE00",  # ; with slanted equal; # LARGER THAN OR EQUAL TO
        "\u2ACB",  # ; with stroke through bottom members; # SUBSET OF ABOVE NOT EQUAL TO
        "\uFE00",  # ; with stroke through bottom members; # SUBSET OF ABOVE NOT EQUAL TO
        "\u2ACC",  # ; with stroke through bottom members; # SUPERSET OF ABOVE NOT EQUAL TO
        "\uFE00",  # ; with stroke through bottom members; # SUPERSET OF ABOVE NOT EQUAL TO
        "\u1000",  # ; dotted form; # MYANMAR LETTER KA
        "\uFE00",  # ; dotted form; # MYANMAR LETTER KA
        "\u1002",  # ; dotted form; # MYANMAR LETTER GA
        "\uFE00",  # ; dotted form; # MYANMAR LETTER GA
        "\u1004",  # ; dotted form; # MYANMAR LETTER NGA
        "\uFE00",  # ; dotted form; # MYANMAR LETTER NGA
        "\u1010",  # ; dotted form; # MYANMAR LETTER TA
        "\uFE00",  # ; dotted form; # MYANMAR LETTER TA
        "\u1011",  # ; dotted form; # MYANMAR LETTER THA
        "\uFE00",  # ; dotted form; # MYANMAR LETTER THA
        "\u1015",  # ; dotted form; # MYANMAR LETTER PA
        "\uFE00",  # ; dotted form; # MYANMAR LETTER PA
        "\u1019",  # ; dotted form; # MYANMAR LETTER MA
        "\uFE00",  # ; dotted form; # MYANMAR LETTER MA
        "\u101A",  # ; dotted form; # MYANMAR LETTER YA
        "\uFE00",  # ; dotted form; # MYANMAR LETTER YA
        "\u101C",  # ; dotted form; # MYANMAR LETTER LA
        "\uFE00",  # ; dotted form; # MYANMAR LETTER LA
        "\u101D",  # ; dotted form; # MYANMAR LETTER WA
        "\uFE00",  # ; dotted form; # MYANMAR LETTER WA
        "\u1022",  # ; dotted form; # MYANMAR LETTER SHAN A
        "\uFE00",  # ; dotted form; # MYANMAR LETTER SHAN A
        "\u1031",  # ; dotted form; # MYANMAR VOWEL SIGN E
        "\uFE00",  # ; dotted form; # MYANMAR VOWEL SIGN E
        "\u1075",  # ; dotted form; # MYANMAR LETTER SHAN KA
        "\uFE00",  # ; dotted form; # MYANMAR LETTER SHAN KA
        "\u1078",  # ; dotted form; # MYANMAR LETTER SHAN CA
        "\uFE00",  # ; dotted form; # MYANMAR LETTER SHAN CA
        "\u107A",  # ; dotted form; # MYANMAR LETTER SHAN NYA
        "\uFE00",  # ; dotted form; # MYANMAR LETTER SHAN NYA
        "\u1080",  # ; dotted form; # MYANMAR LETTER SHAN THA
        "\uFE00",  # ; dotted form; # MYANMAR LETTER SHAN THA
        "\uAA60",  # ; dotted form; # MYANMAR LETTER KHAMTI GA
        "\uFE00",  # ; dotted form; # MYANMAR LETTER KHAMTI GA
        "\uAA61",  # ; dotted form; # MYANMAR LETTER KHAMTI CA
        "\uFE00",  # ; dotted form; # MYANMAR LETTER KHAMTI CA
        "\uAA62",  # ; dotted form; # MYANMAR LETTER KHAMTI CHA
        "\uFE00",  # ; dotted form; # MYANMAR LETTER KHAMTI CHA
        "\uAA63",  # ; dotted form; # MYANMAR LETTER KHAMTI JA
        "\uFE00",  # ; dotted form; # MYANMAR LETTER KHAMTI JA
        "\uAA64",  # ; dotted form; # MYANMAR LETTER KHAMTI JHA
        "\uFE00",  # ; dotted form; # MYANMAR LETTER KHAMTI JHA
        "\uAA65",  # ; dotted form; # MYANMAR LETTER KHAMTI NYA
        "\uFE00",  # ; dotted form; # MYANMAR LETTER KHAMTI NYA
        "\uAA66",  # ; dotted form; # MYANMAR LETTER KHAMTI TTA
        "\uFE00",  # ; dotted form; # MYANMAR LETTER KHAMTI TTA
        "\uAA6B",  # ; dotted form; # MYANMAR LETTER KHAMTI NA
        "\uFE00",  # ; dotted form; # MYANMAR LETTER KHAMTI NA
        "\uAA6C",  # ; dotted form; # MYANMAR LETTER KHAMTI SA
        "\uFE00",  # ; dotted form; # MYANMAR LETTER KHAMTI SA
        "\uAA6F",  # ; dotted form; # MYANMAR LETTER KHAMTI FA
        "\uFE00",  # ; dotted form; # MYANMAR LETTER KHAMTI FA
        "\uAA7A",  # ; dotted form; # MYANMAR LETTER AITON RA
        "\uFE00",  # ; dotted form; # MYANMAR LETTER AITON RA
        "\uA856",  # ; phags-pa letter reversed shaping small a; # PHAGS-PA LETTER SMALL A
        "\uFE00",  # ; phags-pa letter reversed shaping small a; # PHAGS-PA LETTER SMALL A
        "\uA85C",  # ; phags-pa letter reversed shaping ha; # PHAGS-PA LETTER HA
        "\uFE00",  # ; phags-pa letter reversed shaping ha; # PHAGS-PA LETTER HA
        "\uA85E",  # ; phags-pa letter reversed shaping i; # PHAGS-PA LETTER I
        "\uFE00",  # ; phags-pa letter reversed shaping i; # PHAGS-PA LETTER I
        "\uA85F",  # ; phags-pa letter reversed shaping u; # PHAGS-PA LETTER U
        "\uFE00",  # ; phags-pa letter reversed shaping u; # PHAGS-PA LETTER U
        "\uA860",  # ; phags-pa letter reversed shaping e; # PHAGS-PA LETTER E
        "\uFE00",  # ; phags-pa letter reversed shaping e; # PHAGS-PA LETTER E
        "\uA868",  # ; phags-pa letter reversed shaping subjoined ya; # PHAGS-PA SUBJOINED LETTER YA
        "\uFE00",  # ; phags-pa letter reversed shaping subjoined ya; # PHAGS-PA SUBJOINED LETTER YA
        "\u10AC5",  # ; alternate form; isolate # MANICHAEAN LETTER DALETH
        "\uFE00",  # ; alternate form; isolate # MANICHAEAN LETTER DALETH
        "\u10AC6",  # ; alternate form; isolate # MANICHAEAN LETTER HE
        "\uFE00",  # ; alternate form; isolate # MANICHAEAN LETTER HE
        "\u10AD6",  # ; alternate form; isolate final # MANICHAEAN LETTER MEM
        "\uFE00",  # ; alternate form; isolate final # MANICHAEAN LETTER MEM
        "\u10AD7",  # ; alternate form; isolate # MANICHAEAN LETTER NUN
        "\uFE00",  # ; alternate form; isolate # MANICHAEAN LETTER NUN
        "\u10AE1",  # ; alternate form; isolate # MANICHAEAN LETTER RESH
        "\uFE00",  # ; alternate form; isolate # MANICHAEAN LETTER RESH
        "\u1820",  # ; second form; isolate medial final # MONGOLIAN LETTER A
        "\u180B",  # ; second form; isolate medial final # MONGOLIAN LETTER A
        "\u1820",  # ; third form; medial # MONGOLIAN LETTER A
        "\u180C",  # ; third form; medial # MONGOLIAN LETTER A
        "\u1821",  # ; second form; initial final # MONGOLIAN LETTER E
        "\u180B",  # ; second form; initial final # MONGOLIAN LETTER E
        "\u1822",  # ; second form; medial # MONGOLIAN LETTER I
        "\u180B",  # ; second form; medial # MONGOLIAN LETTER I
        "\u1823",  # ; second form; medial final # MONGOLIAN LETTER O
        "\u180B",  # ; second form; medial final # MONGOLIAN LETTER O
        "\u1824",  # ; second form; medial # MONGOLIAN LETTER U
        "\u180B",  # ; second form; medial # MONGOLIAN LETTER U
        "\u1825",  # ; second form; medial final # MONGOLIAN LETTER OE
        "\u180B",  # ; second form; medial final # MONGOLIAN LETTER OE
        "\u1825",  # ; third form; medial # MONGOLIAN LETTER OE
        "\u180C",  # ; third form; medial # MONGOLIAN LETTER OE
        "\u1826",  # ; second form; isolate medial final # MONGOLIAN LETTER UE
        "\u180B",  # ; second form; isolate medial final # MONGOLIAN LETTER UE
        "\u1826",  # ; third form; medial # MONGOLIAN LETTER UE
        "\u180C",  # ; third form; medial # MONGOLIAN LETTER UE
        "\u1828",  # ; second form; initial medial # MONGOLIAN LETTER NA
        "\u180B",  # ; second form; initial medial # MONGOLIAN LETTER NA
        "\u1828",  # ; third form; medial # MONGOLIAN LETTER NA
        "\u180C",  # ; third form; medial # MONGOLIAN LETTER NA
        "\u1828",  # ; fourth form; medial # MONGOLIAN LETTER NA
        "\u180D",  # ; fourth form; medial # MONGOLIAN LETTER NA
        "\u182A",  # ; second form; final # MONGOLIAN LETTER BA
        "\u180B",  # ; second form; final # MONGOLIAN LETTER BA
        "\u182C",  # ; second form; isolate initial medial # MONGOLIAN LETTER QA
        "\u180B",  # ; second form; isolate initial medial # MONGOLIAN LETTER QA
        "\u182C",  # ; third form; medial # MONGOLIAN LETTER QA
        "\u180C",  # ; third form; medial # MONGOLIAN LETTER QA
        "\u182C",  # ; fourth form; medial # MONGOLIAN LETTER QA
        "\u180D",  # ; fourth form; medial # MONGOLIAN LETTER QA
        "\u182D",  # ; second form; initial medial final # MONGOLIAN LETTER GA
        "\u180B",  # ; second form; initial medial final # MONGOLIAN LETTER GA
        "\u182D",  # ; third form; medial # MONGOLIAN LETTER GA
        "\u180C",  # ; third form; medial # MONGOLIAN LETTER GA
        "\u182D",  # ; fourth form; medial # MONGOLIAN LETTER GA
        "\u180D",  # ; fourth form; medial # MONGOLIAN LETTER GA
        "\u1830",  # ; second form; final # MONGOLIAN LETTER SA
        "\u180B",  # ; second form; final # MONGOLIAN LETTER SA
        "\u1830",  # ; third form; final # MONGOLIAN LETTER SA
        "\u180C",  # ; third form; final # MONGOLIAN LETTER SA
        "\u1832",  # ; second form; medial # MONGOLIAN LETTER TA
        "\u180B",  # ; second form; medial # MONGOLIAN LETTER TA
        "\u1833",  # ; second form; initial medial final # MONGOLIAN LETTER DA
        "\u180B",  # ; second form; initial medial final # MONGOLIAN LETTER DA
        "\u1835",  # ; second form; medial # MONGOLIAN LETTER JA
        "\u180B",  # ; second form; medial # MONGOLIAN LETTER JA
        "\u1836",  # ; second form; initial medial # MONGOLIAN LETTER YA
        "\u180B",  # ; second form; initial medial # MONGOLIAN LETTER YA
        "\u1836",  # ; third form; medial # MONGOLIAN LETTER YA
        "\u180C",  # ; third form; medial # MONGOLIAN LETTER YA
        "\u1838",  # ; second form; final # MONGOLIAN LETTER WA
        "\u180B",  # ; second form; final # MONGOLIAN LETTER WA
        "\u1844",  # ; second form; medial # MONGOLIAN LETTER TODO E
        "\u180B",  # ; second form; medial # MONGOLIAN LETTER TODO E
        "\u1845",  # ; second form; medial # MONGOLIAN LETTER TODO I
        "\u180B",  # ; second form; medial # MONGOLIAN LETTER TODO I
        "\u1846",  # ; second form; medial # MONGOLIAN LETTER TODO O
        "\u180B",  # ; second form; medial # MONGOLIAN LETTER TODO O
        "\u1847",  # ; second form; isolate medial final # MONGOLIAN LETTER TODO U
        "\u180B",  # ; second form; isolate medial final # MONGOLIAN LETTER TODO U
        "\u1847",  # ; third form; medial # MONGOLIAN LETTER TODO U
        "\u180C",  # ; third form; medial # MONGOLIAN LETTER TODO U
        "\u1848",  # ; second form; medial # MONGOLIAN LETTER TODO OE
        "\u180B",  # ; second form; medial # MONGOLIAN LETTER TODO OE
        "\u1849",  # ; second form; isolate medial # MONGOLIAN LETTER TODO UE
        "\u180B",  # ; second form; isolate medial # MONGOLIAN LETTER TODO UE
        "\u184D",  # ; second form; initial medial # MONGOLIAN LETTER TODO QA
        "\u180B",  # ; second form; initial medial # MONGOLIAN LETTER TODO QA
        "\u184E",  # ; second form; medial # MONGOLIAN LETTER TODO GA
        "\u180B",  # ; second form; medial # MONGOLIAN LETTER TODO GA
        "\u185D",  # ; second form; medial final # MONGOLIAN LETTER SIBE E
        "\u180B",  # ; second form; medial final # MONGOLIAN LETTER SIBE E
        "\u185E",  # ; second form; medial final # MONGOLIAN LETTER SIBE I
        "\u180B",  # ; second form; medial final # MONGOLIAN LETTER SIBE I
        "\u185E",  # ; third form; medial final # MONGOLIAN LETTER SIBE I
        "\u180C",  # ; third form; medial final # MONGOLIAN LETTER SIBE I
        "\u1860",  # ; second form; medial final # MONGOLIAN LETTER SIBE UE
        "\u180B",  # ; second form; medial final # MONGOLIAN LETTER SIBE UE
        "\u1863",  # ; second form; medial # MONGOLIAN LETTER SIBE KA
        "\u180B",  # ; second form; medial # MONGOLIAN LETTER SIBE KA
        "\u1868",  # ; second form; initial medial # MONGOLIAN LETTER SIBE TA
        "\u180B",  # ; second form; initial medial # MONGOLIAN LETTER SIBE TA
        "\u1868",  # ; third form; medial # MONGOLIAN LETTER SIBE TA
        "\u180C",  # ; third form; medial # MONGOLIAN LETTER SIBE TA
        "\u1869",  # ; second form; initial medial # MONGOLIAN LETTER SIBE DA
        "\u180B",  # ; second form; initial medial # MONGOLIAN LETTER SIBE DA
        "\u186F",  # ; second form; initial medial # MONGOLIAN LETTER SIBE ZA
        "\u180B",  # ; second form; initial medial # MONGOLIAN LETTER SIBE ZA
        "\u1873",  # ; second form; medial final # MONGOLIAN LETTER MANCHU I
        "\u180B",  # ; second form; medial final # MONGOLIAN LETTER MANCHU I
        "\u1873",  # ; third form; medial final # MONGOLIAN LETTER MANCHU I
        "\u180C",  # ; third form; medial final # MONGOLIAN LETTER MANCHU I
        "\u1873",  # ; fourth form; medial # MONGOLIAN LETTER MANCHU I
        "\u180D",  # ; fourth form; medial # MONGOLIAN LETTER MANCHU I
        "\u1874",  # ; second form; medial final # MONGOLIAN LETTER MANCHU KA
        "\u180B",  # ; second form; medial final # MONGOLIAN LETTER MANCHU KA
        "\u1874",  # ; third form; medial final # MONGOLIAN LETTER MANCHU KA
        "\u180C",  # ; third form; medial final # MONGOLIAN LETTER MANCHU KA
        "\u1874",  # ; fourth form; medial # MONGOLIAN LETTER MANCHU KA
        "\u180D",  # ; fourth form; medial # MONGOLIAN LETTER MANCHU KA
        "\u1876",  # ; second form; initial medial # MONGOLIAN LETTER MANCHU FA
        "\u180B",  # ; second form; initial medial # MONGOLIAN LETTER MANCHU FA
        "\u1880",  # ; second form; # MONGOLIAN LETTER ALI GALI ANUSVARA ONE
        "\u180B",  # ; second form; # MONGOLIAN LETTER ALI GALI ANUSVARA ONE
        "\u1881",  # ; second form; # MONGOLIAN LETTER ALI GALI VISARGA ONE
        "\u180B",  # ; second form; # MONGOLIAN LETTER ALI GALI VISARGA ONE
        "\u1887",  # ; second form; isolate final # MONGOLIAN LETTER ALI GALI A
        "\u180B",  # ; second form; isolate final # MONGOLIAN LETTER ALI GALI A
        "\u1887",  # ; third form; final # MONGOLIAN LETTER ALI GALI A
        "\u180C",  # ; third form; final # MONGOLIAN LETTER ALI GALI A
        "\u1887",  # ; fourth form; final # MONGOLIAN LETTER ALI GALI A
        "\u180D",  # ; fourth form; final # MONGOLIAN LETTER ALI GALI A
        "\u1888",  # ; second form; final # MONGOLIAN LETTER ALI GALI I
        "\u180B",  # ; second form; final # MONGOLIAN LETTER ALI GALI I
        "\u188A",  # ; second form; initial medial # MONGOLIAN LETTER ALI GALI NGA
        "\u180B",  # ; second form; initial medial # MONGOLIAN LETTER ALI GALI NGA
        "\u349E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F80C;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F80C;
        "\u34B9",  # ; CJK COMPATIBILITY IDEOGRAPH-2F813;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F813;
        "\u34BB",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9CA;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9CA;
        "\u34DF",  # ; CJK COMPATIBILITY IDEOGRAPH-2F81F;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F81F;
        "\u3515",  # ; CJK COMPATIBILITY IDEOGRAPH-2F824;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F824;
        "\u36EE",  # ; CJK COMPATIBILITY IDEOGRAPH-2F867;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F867;
        "\u36FC",  # ; CJK COMPATIBILITY IDEOGRAPH-2F868;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F868;
        "\u3781",  # ; CJK COMPATIBILITY IDEOGRAPH-2F876;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F876;
        "\u382F",  # ; CJK COMPATIBILITY IDEOGRAPH-2F883;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F883;
        "\u3862",  # ; CJK COMPATIBILITY IDEOGRAPH-2F888;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F888;
        "\u387C",  # ; CJK COMPATIBILITY IDEOGRAPH-2F88A;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F88A;
        "\u38C7",  # ; CJK COMPATIBILITY IDEOGRAPH-2F896;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F896;
        "\u38E3",  # ; CJK COMPATIBILITY IDEOGRAPH-2F89B;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F89B;
        "\u391C",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8A2;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8A2;
        "\u393A",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8A1;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8A1;
        "\u3A2E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8C2;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8C2;
        "\u3A6C",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8C7;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8C7;
        "\u3AE4",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8D1;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8D1;
        "\u3B08",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8D0;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8D0;
        "\u3B19",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8CE;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8CE;
        "\u3B49",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8DE;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8DE;
        "\u3B9D",  # ; CJK COMPATIBILITY IDEOGRAPH-FAD2;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAD2;
        "\u3B9D",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8E7;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8E7;
        "\u3C18",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8EE;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8EE;
        "\u3C4E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8F2;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8F2;
        "\u3D33",  # ; CJK COMPATIBILITY IDEOGRAPH-2F90A;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F90A;
        "\u3D96",  # ; CJK COMPATIBILITY IDEOGRAPH-2F916;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F916;
        "\u3EAC",  # ; CJK COMPATIBILITY IDEOGRAPH-2F92A;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F92A;
        "\u3EB8",  # ; CJK COMPATIBILITY IDEOGRAPH-2F92C;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F92C;
        "\u3EB8",  # ; CJK COMPATIBILITY IDEOGRAPH-2F92D;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F92D;
        "\u3F1B",  # ; CJK COMPATIBILITY IDEOGRAPH-2F933;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F933;
        "\u3FFC",  # ; CJK COMPATIBILITY IDEOGRAPH-2F93E;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F93E;
        "\u4008",  # ; CJK COMPATIBILITY IDEOGRAPH-2F93F;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F93F;
        "\u4018",  # ; CJK COMPATIBILITY IDEOGRAPH-FAD3;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAD3;
        "\u4039",  # ; CJK COMPATIBILITY IDEOGRAPH-FAD4;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAD4;
        "\u4039",  # ; CJK COMPATIBILITY IDEOGRAPH-2F949;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F949;
        "\u4046",  # ; CJK COMPATIBILITY IDEOGRAPH-2F94B;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F94B;
        "\u4096",  # ; CJK COMPATIBILITY IDEOGRAPH-2F94C;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F94C;
        "\u40E3",  # ; CJK COMPATIBILITY IDEOGRAPH-2F951;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F951;
        "\u412F",  # ; CJK COMPATIBILITY IDEOGRAPH-2F958;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F958;
        "\u4202",  # ; CJK COMPATIBILITY IDEOGRAPH-2F960;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F960;
        "\u4227",  # ; CJK COMPATIBILITY IDEOGRAPH-2F964;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F964;
        "\u42A0",  # ; CJK COMPATIBILITY IDEOGRAPH-2F967;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F967;
        "\u4301",  # ; CJK COMPATIBILITY IDEOGRAPH-2F96D;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F96D;
        "\u4334",  # ; CJK COMPATIBILITY IDEOGRAPH-2F971;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F971;
        "\u4359",  # ; CJK COMPATIBILITY IDEOGRAPH-2F974;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F974;
        "\u43D5",  # ; CJK COMPATIBILITY IDEOGRAPH-2F981;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F981;
        "\u43D9",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8D7;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8D7;
        "\u440B",  # ; CJK COMPATIBILITY IDEOGRAPH-2F984;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F984;
        "\u446B",  # ; CJK COMPATIBILITY IDEOGRAPH-2F98E;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F98E;
        "\u452B",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9A7;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9A7;
        "\u455D",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9AE;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9AE;
        "\u4561",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9AF;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9AF;
        "\u456B",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9B2;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9B2;
        "\u45D7",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9BF;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9BF;
        "\u45F9",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9C2;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9C2;
        "\u4635",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9C8;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9C8;
        "\u46BE",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9CD;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9CD;
        "\u46C7",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9CE;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9CE;
        "\u4995",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9EF;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9EF;
        "\u49E6",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9F2;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9F2;
        "\u4A6E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9F8;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9F8;
        "\u4A76",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9F9;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9F9;
        "\u4AB2",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9FC;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9FC;
        "\u4B33",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA03;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA03;
        "\u4BCE",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA08;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA08;
        "\u4CCE",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA0D;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA0D;
        "\u4CED",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA0E;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA0E;
        "\u4CF8",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA11;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA11;
        "\u4D56",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA16;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA16;
        "\u4E0D",  # ; CJK COMPATIBILITY IDEOGRAPH-F967;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F967;
        "\u4E26",  # ; CJK COMPATIBILITY IDEOGRAPH-FA70;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA70;
        "\u4E32",  # ; CJK COMPATIBILITY IDEOGRAPH-F905;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F905;
        "\u4E38",  # ; CJK COMPATIBILITY IDEOGRAPH-2F801;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F801;
        "\u4E39",  # ; CJK COMPATIBILITY IDEOGRAPH-F95E;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F95E;
        "\u4E3D",  # ; CJK COMPATIBILITY IDEOGRAPH-2F800;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F800;
        "\u4E41",  # ; CJK COMPATIBILITY IDEOGRAPH-2F802;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F802;
        "\u4E82",  # ; CJK COMPATIBILITY IDEOGRAPH-F91B;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F91B;
        "\u4E86",  # ; CJK COMPATIBILITY IDEOGRAPH-F9BA;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9BA;
        "\u4EAE",  # ; CJK COMPATIBILITY IDEOGRAPH-F977;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F977;
        "\u4EC0",  # ; CJK COMPATIBILITY IDEOGRAPH-F9FD;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9FD;
        "\u4ECC",  # ; CJK COMPATIBILITY IDEOGRAPH-2F819;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F819;
        "\u4EE4",  # ; CJK COMPATIBILITY IDEOGRAPH-F9A8;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9A8;
        "\u4F60",  # ; CJK COMPATIBILITY IDEOGRAPH-2F804;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F804;
        "\u4F80",  # ; CJK COMPATIBILITY IDEOGRAPH-FA73;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA73;
        "\u4F86",  # ; CJK COMPATIBILITY IDEOGRAPH-F92D;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F92D;
        "\u4F8B",  # ; CJK COMPATIBILITY IDEOGRAPH-F9B5;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9B5;
        "\u4FAE",  # ; CJK COMPATIBILITY IDEOGRAPH-FA30;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA30;
        "\u4FAE",  # ; CJK COMPATIBILITY IDEOGRAPH-2F805;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F805;
        "\u4FBB",  # ; CJK COMPATIBILITY IDEOGRAPH-2F806;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F806;
        "\u4FBF",  # ; CJK COMPATIBILITY IDEOGRAPH-F965;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F965;
        "\u5002",  # ; CJK COMPATIBILITY IDEOGRAPH-2F807;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F807;
        "\u502B",  # ; CJK COMPATIBILITY IDEOGRAPH-F9D4;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9D4;
        "\u507A",  # ; CJK COMPATIBILITY IDEOGRAPH-2F808;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F808;
        "\u5099",  # ; CJK COMPATIBILITY IDEOGRAPH-2F809;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F809;
        "\u50CF",  # ; CJK COMPATIBILITY IDEOGRAPH-2F80B;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F80B;
        "\u50DA",  # ; CJK COMPATIBILITY IDEOGRAPH-F9BB;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9BB;
        "\u50E7",  # ; CJK COMPATIBILITY IDEOGRAPH-FA31;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA31;
        "\u50E7",  # ; CJK COMPATIBILITY IDEOGRAPH-2F80A;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F80A;
        "\u5140",  # ; CJK COMPATIBILITY IDEOGRAPH-FA0C;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA0C;
        "\u5145",  # ; CJK COMPATIBILITY IDEOGRAPH-FA74;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA74;
        "\u514D",  # ; CJK COMPATIBILITY IDEOGRAPH-FA32;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA32;
        "\u514D",  # ; CJK COMPATIBILITY IDEOGRAPH-2F80E;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F80E;
        "\u5154",  # ; CJK COMPATIBILITY IDEOGRAPH-2F80F;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F80F;
        "\u5164",  # ; CJK COMPATIBILITY IDEOGRAPH-2F810;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F810;
        "\u5167",  # ; CJK COMPATIBILITY IDEOGRAPH-2F814;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F814;
        "\u5168",  # ; CJK COMPATIBILITY IDEOGRAPH-FA72;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA72;
        "\u5169",  # ; CJK COMPATIBILITY IDEOGRAPH-F978;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F978;
        "\u516D",  # ; CJK COMPATIBILITY IDEOGRAPH-F9D1;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9D1;
        "\u5177",  # ; CJK COMPATIBILITY IDEOGRAPH-2F811;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F811;
        "\u5180",  # ; CJK COMPATIBILITY IDEOGRAPH-FA75;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA75;
        "\u518D",  # ; CJK COMPATIBILITY IDEOGRAPH-2F815;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F815;
        "\u5192",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8D2;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8D2;
        "\u5195",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8D3;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8D3;
        "\u5197",  # ; CJK COMPATIBILITY IDEOGRAPH-2F817;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F817;
        "\u51A4",  # ; CJK COMPATIBILITY IDEOGRAPH-2F818;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F818;
        "\u51AC",  # ; CJK COMPATIBILITY IDEOGRAPH-2F81A;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F81A;
        "\u51B5",  # ; CJK COMPATIBILITY IDEOGRAPH-FA71;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA71;
        "\u51B5",  # ; CJK COMPATIBILITY IDEOGRAPH-2F81B;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F81B;
        "\u51B7",  # ; CJK COMPATIBILITY IDEOGRAPH-F92E;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F92E;
        "\u51C9",  # ; CJK COMPATIBILITY IDEOGRAPH-F979;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F979;
        "\u51CC",  # ; CJK COMPATIBILITY IDEOGRAPH-F955;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F955;
        "\u51DC",  # ; CJK COMPATIBILITY IDEOGRAPH-F954;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F954;
        "\u51DE",  # ; CJK COMPATIBILITY IDEOGRAPH-FA15;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA15;
        "\u51F5",  # ; CJK COMPATIBILITY IDEOGRAPH-2F81D;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F81D;
        "\u5203",  # ; CJK COMPATIBILITY IDEOGRAPH-2F81E;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F81E;
        "\u5207",  # ; CJK COMPATIBILITY IDEOGRAPH-FA00;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA00;
        "\u5207",  # ; CJK COMPATIBILITY IDEOGRAPH-2F850;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F850;
        "\u5217",  # ; CJK COMPATIBILITY IDEOGRAPH-F99C;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F99C;
        "\u5229",  # ; CJK COMPATIBILITY IDEOGRAPH-F9DD;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9DD;
        "\u523A",  # ; CJK COMPATIBILITY IDEOGRAPH-F9FF;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9FF;
        "\u523B",  # ; CJK COMPATIBILITY IDEOGRAPH-2F820;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F820;
        "\u5246",  # ; CJK COMPATIBILITY IDEOGRAPH-2F821;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F821;
        "\u5272",  # ; CJK COMPATIBILITY IDEOGRAPH-2F822;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F822;
        "\u5277",  # ; CJK COMPATIBILITY IDEOGRAPH-2F823;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F823;
        "\u5289",  # ; CJK COMPATIBILITY IDEOGRAPH-F9C7;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9C7;
        "\u529B",  # ; CJK COMPATIBILITY IDEOGRAPH-F98A;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F98A;
        "\u52A3",  # ; CJK COMPATIBILITY IDEOGRAPH-F99D;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F99D;
        "\u52B3",  # ; CJK COMPATIBILITY IDEOGRAPH-2F992;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F992;
        "\u52C7",  # ; CJK COMPATIBILITY IDEOGRAPH-FA76;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA76;
        "\u52C7",  # ; CJK COMPATIBILITY IDEOGRAPH-2F825;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F825;
        "\u52C9",  # ; CJK COMPATIBILITY IDEOGRAPH-FA33;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA33;
        "\u52C9",  # ; CJK COMPATIBILITY IDEOGRAPH-2F826;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F826;
        "\u52D2",  # ; CJK COMPATIBILITY IDEOGRAPH-F952;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F952;
        "\u52DE",  # ; CJK COMPATIBILITY IDEOGRAPH-F92F;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F92F;
        "\u52E4",  # ; CJK COMPATIBILITY IDEOGRAPH-FA34;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA34;
        "\u52E4",  # ; CJK COMPATIBILITY IDEOGRAPH-2F827;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F827;
        "\u52F5",  # ; CJK COMPATIBILITY IDEOGRAPH-F97F;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F97F;
        "\u52FA",  # ; CJK COMPATIBILITY IDEOGRAPH-FA77;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA77;
        "\u52FA",  # ; CJK COMPATIBILITY IDEOGRAPH-2F828;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F828;
        "\u5305",  # ; CJK COMPATIBILITY IDEOGRAPH-2F829;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F829;
        "\u5306",  # ; CJK COMPATIBILITY IDEOGRAPH-2F82A;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F82A;
        "\u5317",  # ; CJK COMPATIBILITY IDEOGRAPH-F963;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F963;
        "\u5317",  # ; CJK COMPATIBILITY IDEOGRAPH-2F82B;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F82B;
        "\u533F",  # ; CJK COMPATIBILITY IDEOGRAPH-F9EB;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9EB;
        "\u5349",  # ; CJK COMPATIBILITY IDEOGRAPH-2F82C;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F82C;
        "\u5351",  # ; CJK COMPATIBILITY IDEOGRAPH-FA35;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA35;
        "\u5351",  # ; CJK COMPATIBILITY IDEOGRAPH-2F82D;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F82D;
        "\u535A",  # ; CJK COMPATIBILITY IDEOGRAPH-2F82E;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F82E;
        "\u5373",  # ; CJK COMPATIBILITY IDEOGRAPH-2F82F;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F82F;
        "\u5375",  # ; CJK COMPATIBILITY IDEOGRAPH-F91C;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F91C;
        "\u537D",  # ; CJK COMPATIBILITY IDEOGRAPH-2F830;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F830;
        "\u537F",  # ; CJK COMPATIBILITY IDEOGRAPH-2F831;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F831;
        "\u537F",  # ; CJK COMPATIBILITY IDEOGRAPH-2F832;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F832;
        "\u537F",  # ; CJK COMPATIBILITY IDEOGRAPH-2F833;
        "\uFE02",  # ; CJK COMPATIBILITY IDEOGRAPH-2F833;
        "\u53C3",  # ; CJK COMPATIBILITY IDEOGRAPH-F96B;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F96B;
        "\u53CA",  # ; CJK COMPATIBILITY IDEOGRAPH-2F836;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F836;
        "\u53DF",  # ; CJK COMPATIBILITY IDEOGRAPH-2F837;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F837;
        "\u53E5",  # ; CJK COMPATIBILITY IDEOGRAPH-F906;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F906;
        "\u53EB",  # ; CJK COMPATIBILITY IDEOGRAPH-2F839;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F839;
        "\u53F1",  # ; CJK COMPATIBILITY IDEOGRAPH-2F83A;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F83A;
        "\u5406",  # ; CJK COMPATIBILITY IDEOGRAPH-2F83B;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F83B;
        "\u540F",  # ; CJK COMPATIBILITY IDEOGRAPH-F9DE;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9DE;
        "\u541D",  # ; CJK COMPATIBILITY IDEOGRAPH-F9ED;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9ED;
        "\u5438",  # ; CJK COMPATIBILITY IDEOGRAPH-2F83D;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F83D;
        "\u5442",  # ; CJK COMPATIBILITY IDEOGRAPH-F980;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F980;
        "\u5448",  # ; CJK COMPATIBILITY IDEOGRAPH-2F83E;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F83E;
        "\u5468",  # ; CJK COMPATIBILITY IDEOGRAPH-2F83F;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F83F;
        "\u549E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F83C;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F83C;
        "\u54A2",  # ; CJK COMPATIBILITY IDEOGRAPH-2F840;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F840;
        "\u54BD",  # ; CJK COMPATIBILITY IDEOGRAPH-F99E;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F99E;
        "\u54F6",  # ; CJK COMPATIBILITY IDEOGRAPH-2F841;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F841;
        "\u5510",  # ; CJK COMPATIBILITY IDEOGRAPH-2F842;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F842;
        "\u5553",  # ; CJK COMPATIBILITY IDEOGRAPH-2F843;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F843;
        "\u5555",  # ; CJK COMPATIBILITY IDEOGRAPH-FA79;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA79;
        "\u5563",  # ; CJK COMPATIBILITY IDEOGRAPH-2F844;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F844;
        "\u5584",  # ; CJK COMPATIBILITY IDEOGRAPH-2F845;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F845;
        "\u5584",  # ; CJK COMPATIBILITY IDEOGRAPH-2F846;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F846;
        "\u5587",  # ; CJK COMPATIBILITY IDEOGRAPH-F90B;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F90B;
        "\u5599",  # ; CJK COMPATIBILITY IDEOGRAPH-FA7A;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA7A;
        "\u5599",  # ; CJK COMPATIBILITY IDEOGRAPH-2F847;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F847;
        "\u559D",  # ; CJK COMPATIBILITY IDEOGRAPH-FA36;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA36;
        "\u559D",  # ; CJK COMPATIBILITY IDEOGRAPH-FA78;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-FA78;
        "\u55AB",  # ; CJK COMPATIBILITY IDEOGRAPH-2F848;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F848;
        "\u55B3",  # ; CJK COMPATIBILITY IDEOGRAPH-2F849;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F849;
        "\u55C0",  # ; CJK COMPATIBILITY IDEOGRAPH-FA0D;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA0D;
        "\u55C2",  # ; CJK COMPATIBILITY IDEOGRAPH-2F84A;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F84A;
        "\u55E2",  # ; CJK COMPATIBILITY IDEOGRAPH-FA7B;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA7B;
        "\u5606",  # ; CJK COMPATIBILITY IDEOGRAPH-FA37;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA37;
        "\u5606",  # ; CJK COMPATIBILITY IDEOGRAPH-2F84C;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F84C;
        "\u5651",  # ; CJK COMPATIBILITY IDEOGRAPH-2F84E;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F84E;
        "\u5668",  # ; CJK COMPATIBILITY IDEOGRAPH-FA38;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA38;
        "\u5674",  # ; CJK COMPATIBILITY IDEOGRAPH-2F84F;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F84F;
        "\u56F9",  # ; CJK COMPATIBILITY IDEOGRAPH-F9A9;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9A9;
        "\u5716",  # ; CJK COMPATIBILITY IDEOGRAPH-2F84B;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F84B;
        "\u5717",  # ; CJK COMPATIBILITY IDEOGRAPH-2F84D;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F84D;
        "\u578B",  # ; CJK COMPATIBILITY IDEOGRAPH-2F855;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F855;
        "\u57CE",  # ; CJK COMPATIBILITY IDEOGRAPH-2F852;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F852;
        "\u57F4",  # ; CJK COMPATIBILITY IDEOGRAPH-2F853;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F853;
        "\u580D",  # ; CJK COMPATIBILITY IDEOGRAPH-2F854;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F854;
        "\u5831",  # ; CJK COMPATIBILITY IDEOGRAPH-2F857;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F857;
        "\u5832",  # ; CJK COMPATIBILITY IDEOGRAPH-2F856;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F856;
        "\u5840",  # ; CJK COMPATIBILITY IDEOGRAPH-FA39;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA39;
        "\u585A",  # ; CJK COMPATIBILITY IDEOGRAPH-FA10;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA10;
        "\u585A",  # ; CJK COMPATIBILITY IDEOGRAPH-FA7C;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-FA7C;
        "\u585E",  # ; CJK COMPATIBILITY IDEOGRAPH-F96C;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F96C;
        "\u58A8",  # ; CJK COMPATIBILITY IDEOGRAPH-FA3A;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA3A;
        "\u58AC",  # ; CJK COMPATIBILITY IDEOGRAPH-2F858;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F858;
        "\u58B3",  # ; CJK COMPATIBILITY IDEOGRAPH-FA7D;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA7D;
        "\u58D8",  # ; CJK COMPATIBILITY IDEOGRAPH-F94A;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F94A;
        "\u58DF",  # ; CJK COMPATIBILITY IDEOGRAPH-F942;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F942;
        "\u58EE",  # ; CJK COMPATIBILITY IDEOGRAPH-2F851;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F851;
        "\u58F2",  # ; CJK COMPATIBILITY IDEOGRAPH-2F85A;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F85A;
        "\u58F7",  # ; CJK COMPATIBILITY IDEOGRAPH-2F85B;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F85B;
        "\u5906",  # ; CJK COMPATIBILITY IDEOGRAPH-2F85C;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F85C;
        "\u591A",  # ; CJK COMPATIBILITY IDEOGRAPH-2F85D;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F85D;
        "\u5922",  # ; CJK COMPATIBILITY IDEOGRAPH-2F85E;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F85E;
        "\u5944",  # ; CJK COMPATIBILITY IDEOGRAPH-FA7E;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA7E;
        "\u5948",  # ; CJK COMPATIBILITY IDEOGRAPH-F90C;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F90C;
        "\u5951",  # ; CJK COMPATIBILITY IDEOGRAPH-F909;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F909;
        "\u5954",  # ; CJK COMPATIBILITY IDEOGRAPH-FA7F;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA7F;
        "\u5962",  # ; CJK COMPATIBILITY IDEOGRAPH-2F85F;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F85F;
        "\u5973",  # ; CJK COMPATIBILITY IDEOGRAPH-F981;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F981;
        "\u59D8",  # ; CJK COMPATIBILITY IDEOGRAPH-2F865;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F865;
        "\u59EC",  # ; CJK COMPATIBILITY IDEOGRAPH-2F862;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F862;
        "\u5A1B",  # ; CJK COMPATIBILITY IDEOGRAPH-2F863;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F863;
        "\u5A27",  # ; CJK COMPATIBILITY IDEOGRAPH-2F864;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F864;
        "\u5A62",  # ; CJK COMPATIBILITY IDEOGRAPH-FA80;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA80;
        "\u5A66",  # ; CJK COMPATIBILITY IDEOGRAPH-2F866;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F866;
        "\u5AB5",  # ; CJK COMPATIBILITY IDEOGRAPH-2F986;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F986;
        "\u5B08",  # ; CJK COMPATIBILITY IDEOGRAPH-2F869;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F869;
        "\u5B28",  # ; CJK COMPATIBILITY IDEOGRAPH-FA81;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA81;
        "\u5B3E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F86A;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F86A;
        "\u5B3E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F86B;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F86B;
        "\u5B85",  # ; CJK COMPATIBILITY IDEOGRAPH-FA04;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA04;
        "\u5BC3",  # ; CJK COMPATIBILITY IDEOGRAPH-2F86D;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F86D;
        "\u5BD8",  # ; CJK COMPATIBILITY IDEOGRAPH-2F86E;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F86E;
        "\u5BE7",  # ; CJK COMPATIBILITY IDEOGRAPH-F95F;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F95F;
        "\u5BE7",  # ; CJK COMPATIBILITY IDEOGRAPH-F9AA;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-F9AA;
        "\u5BE7",  # ; CJK COMPATIBILITY IDEOGRAPH-2F86F;
        "\uFE02",  # ; CJK COMPATIBILITY IDEOGRAPH-2F86F;
        "\u5BEE",  # ; CJK COMPATIBILITY IDEOGRAPH-F9BC;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9BC;
        "\u5BF3",  # ; CJK COMPATIBILITY IDEOGRAPH-2F870;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F870;
        "\u5BFF",  # ; CJK COMPATIBILITY IDEOGRAPH-2F872;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F872;
        "\u5C06",  # ; CJK COMPATIBILITY IDEOGRAPH-2F873;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F873;
        "\u5C22",  # ; CJK COMPATIBILITY IDEOGRAPH-2F875;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F875;
        "\u5C3F",  # ; CJK COMPATIBILITY IDEOGRAPH-F9BD;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9BD;
        "\u5C60",  # ; CJK COMPATIBILITY IDEOGRAPH-2F877;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F877;
        "\u5C62",  # ; CJK COMPATIBILITY IDEOGRAPH-F94B;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F94B;
        "\u5C64",  # ; CJK COMPATIBILITY IDEOGRAPH-FA3B;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA3B;
        "\u5C65",  # ; CJK COMPATIBILITY IDEOGRAPH-F9DF;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9DF;
        "\u5C6E",  # ; CJK COMPATIBILITY IDEOGRAPH-FA3C;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA3C;
        "\u5C6E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F878;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F878;
        "\u5C8D",  # ; CJK COMPATIBILITY IDEOGRAPH-2F87A;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F87A;
        "\u5CC0",  # ; CJK COMPATIBILITY IDEOGRAPH-2F879;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F879;
        "\u5D19",  # ; CJK COMPATIBILITY IDEOGRAPH-F9D5;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9D5;
        "\u5D43",  # ; CJK COMPATIBILITY IDEOGRAPH-2F87C;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F87C;
        "\u5D50",  # ; CJK COMPATIBILITY IDEOGRAPH-F921;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F921;
        "\u5D6B",  # ; CJK COMPATIBILITY IDEOGRAPH-2F87F;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F87F;
        "\u5D6E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F87E;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F87E;
        "\u5D7C",  # ; CJK COMPATIBILITY IDEOGRAPH-2F880;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F880;
        "\u5DB2",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9F4;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9F4;
        "\u5DBA",  # ; CJK COMPATIBILITY IDEOGRAPH-F9AB;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9AB;
        "\u5DE1",  # ; CJK COMPATIBILITY IDEOGRAPH-2F881;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F881;
        "\u5DE2",  # ; CJK COMPATIBILITY IDEOGRAPH-2F882;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F882;
        "\u5DFD",  # ; CJK COMPATIBILITY IDEOGRAPH-2F884;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F884;
        "\u5E28",  # ; CJK COMPATIBILITY IDEOGRAPH-2F885;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F885;
        "\u5E3D",  # ; CJK COMPATIBILITY IDEOGRAPH-2F886;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F886;
        "\u5E69",  # ; CJK COMPATIBILITY IDEOGRAPH-2F887;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F887;
        "\u5E74",  # ; CJK COMPATIBILITY IDEOGRAPH-F98E;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F98E;
        "\u5EA6",  # ; CJK COMPATIBILITY IDEOGRAPH-FA01;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA01;
        "\u5EB0",  # ; CJK COMPATIBILITY IDEOGRAPH-2F88B;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F88B;
        "\u5EB3",  # ; CJK COMPATIBILITY IDEOGRAPH-2F88C;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F88C;
        "\u5EB6",  # ; CJK COMPATIBILITY IDEOGRAPH-2F88D;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F88D;
        "\u5EC9",  # ; CJK COMPATIBILITY IDEOGRAPH-F9A2;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9A2;
        "\u5ECA",  # ; CJK COMPATIBILITY IDEOGRAPH-F928;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F928;
        "\u5ECA",  # ; CJK COMPATIBILITY IDEOGRAPH-2F88E;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F88E;
        "\u5ED2",  # ; CJK COMPATIBILITY IDEOGRAPH-FA82;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA82;
        "\u5ED3",  # ; CJK COMPATIBILITY IDEOGRAPH-FA0B;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA0B;
        "\u5ED9",  # ; CJK COMPATIBILITY IDEOGRAPH-FA83;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA83;
        "\u5EEC",  # ; CJK COMPATIBILITY IDEOGRAPH-F982;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F982;
        "\u5EFE",  # ; CJK COMPATIBILITY IDEOGRAPH-2F890;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F890;
        "\u5F04",  # ; CJK COMPATIBILITY IDEOGRAPH-F943;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F943;
        "\u5F22",  # ; CJK COMPATIBILITY IDEOGRAPH-2F894;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F894;
        "\u5F22",  # ; CJK COMPATIBILITY IDEOGRAPH-2F895;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F895;
        "\u5F53",  # ; CJK COMPATIBILITY IDEOGRAPH-2F874;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F874;
        "\u5F62",  # ; CJK COMPATIBILITY IDEOGRAPH-2F899;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F899;
        "\u5F69",  # ; CJK COMPATIBILITY IDEOGRAPH-FA84;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA84;
        "\u5F6B",  # ; CJK COMPATIBILITY IDEOGRAPH-2F89A;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F89A;
        "\u5F8B",  # ; CJK COMPATIBILITY IDEOGRAPH-F9D8;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9D8;
        "\u5F9A",  # ; CJK COMPATIBILITY IDEOGRAPH-2F89C;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F89C;
        "\u5FA9",  # ; CJK COMPATIBILITY IDEOGRAPH-F966;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F966;
        "\u5FAD",  # ; CJK COMPATIBILITY IDEOGRAPH-FA85;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA85;
        "\u5FCD",  # ; CJK COMPATIBILITY IDEOGRAPH-2F89D;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F89D;
        "\u5FD7",  # ; CJK COMPATIBILITY IDEOGRAPH-2F89E;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F89E;
        "\u5FF5",  # ; CJK COMPATIBILITY IDEOGRAPH-F9A3;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9A3;
        "\u5FF9",  # ; CJK COMPATIBILITY IDEOGRAPH-2F89F;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F89F;
        "\u6012",  # ; CJK COMPATIBILITY IDEOGRAPH-F960;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F960;
        "\u601C",  # ; CJK COMPATIBILITY IDEOGRAPH-F9AC;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9AC;
        "\u6075",  # ; CJK COMPATIBILITY IDEOGRAPH-FA6B;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA6B;
        "\u6081",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8A0;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8A0;
        "\u6094",  # ; CJK COMPATIBILITY IDEOGRAPH-FA3D;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA3D;
        "\u6094",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8A3;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8A3;
        "\u60C7",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8A5;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8A5;
        "\u60D8",  # ; CJK COMPATIBILITY IDEOGRAPH-FA86;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA86;
        "\u60E1",  # ; CJK COMPATIBILITY IDEOGRAPH-F9B9;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9B9;
        "\u6108",  # ; CJK COMPATIBILITY IDEOGRAPH-FA88;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA88;
        "\u6144",  # ; CJK COMPATIBILITY IDEOGRAPH-F9D9;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9D9;
        "\u6148",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8A6;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8A6;
        "\u614C",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8A7;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8A7;
        "\u614C",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8A9;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8A9;
        "\u614E",  # ; CJK COMPATIBILITY IDEOGRAPH-FA87;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA87;
        "\u614E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8A8;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8A8;
        "\u6160",  # ; CJK COMPATIBILITY IDEOGRAPH-FA8A;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA8A;
        "\u6168",  # ; CJK COMPATIBILITY IDEOGRAPH-FA3E;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA3E;
        "\u617A",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8AA;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8AA;
        "\u618E",  # ; CJK COMPATIBILITY IDEOGRAPH-FA3F;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA3F;
        "\u618E",  # ; CJK COMPATIBILITY IDEOGRAPH-FA89;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-FA89;
        "\u618E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8AB;
        "\uFE02",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8AB;
        "\u6190",  # ; CJK COMPATIBILITY IDEOGRAPH-F98F;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F98F;
        "\u61A4",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8AD;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8AD;
        "\u61AF",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8AE;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8AE;
        "\u61B2",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8AC;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8AC;
        "\u61DE",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8AF;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8AF;
        "\u61F2",  # ; CJK COMPATIBILITY IDEOGRAPH-FA40;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA40;
        "\u61F2",  # ; CJK COMPATIBILITY IDEOGRAPH-FA8B;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-FA8B;
        "\u61F2",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8B0;
        "\uFE02",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8B0;
        "\u61F6",  # ; CJK COMPATIBILITY IDEOGRAPH-F90D;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F90D;
        "\u61F6",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8B1;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8B1;
        "\u6200",  # ; CJK COMPATIBILITY IDEOGRAPH-F990;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F990;
        "\u6210",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8B2;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8B2;
        "\u621B",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8B3;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8B3;
        "\u622E",  # ; CJK COMPATIBILITY IDEOGRAPH-F9D2;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9D2;
        "\u6234",  # ; CJK COMPATIBILITY IDEOGRAPH-FA8C;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA8C;
        "\u625D",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8B4;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8B4;
        "\u62B1",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8B5;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8B5;
        "\u62C9",  # ; CJK COMPATIBILITY IDEOGRAPH-F925;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F925;
        "\u62CF",  # ; CJK COMPATIBILITY IDEOGRAPH-F95B;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F95B;
        "\u62D3",  # ; CJK COMPATIBILITY IDEOGRAPH-FA02;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA02;
        "\u62D4",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8B6;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8B6;
        "\u62FC",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8BA;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8BA;
        "\u62FE",  # ; CJK COMPATIBILITY IDEOGRAPH-F973;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F973;
        "\u633D",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8B9;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8B9;
        "\u6350",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8B7;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8B7;
        "\u6368",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8BB;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8BB;
        "\u637B",  # ; CJK COMPATIBILITY IDEOGRAPH-F9A4;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9A4;
        "\u6383",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8BC;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8BC;
        "\u63A0",  # ; CJK COMPATIBILITY IDEOGRAPH-F975;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F975;
        "\u63A9",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8C1;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8C1;
        "\u63C4",  # ; CJK COMPATIBILITY IDEOGRAPH-FA8D;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA8D;
        "\u63C5",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8C0;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8C0;
        "\u63E4",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8BD;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8BD;
        "\u641C",  # ; CJK COMPATIBILITY IDEOGRAPH-FA8E;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA8E;
        "\u6422",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8BF;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8BF;
        "\u6452",  # ; CJK COMPATIBILITY IDEOGRAPH-FA8F;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA8F;
        "\u6469",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8C3;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8C3;
        "\u6477",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8C6;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8C6;
        "\u647E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8C4;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8C4;
        "\u649A",  # ; CJK COMPATIBILITY IDEOGRAPH-F991;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F991;
        "\u649D",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8C5;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8C5;
        "\u64C4",  # ; CJK COMPATIBILITY IDEOGRAPH-F930;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F930;
        "\u654F",  # ; CJK COMPATIBILITY IDEOGRAPH-FA41;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA41;
        "\u654F",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8C8;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8C8;
        "\u6556",  # ; CJK COMPATIBILITY IDEOGRAPH-FA90;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA90;
        "\u656C",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8C9;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8C9;
        "\u6578",  # ; CJK COMPATIBILITY IDEOGRAPH-F969;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F969;
        "\u6599",  # ; CJK COMPATIBILITY IDEOGRAPH-F9BE;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9BE;
        "\u65C5",  # ; CJK COMPATIBILITY IDEOGRAPH-F983;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F983;
        "\u65E2",  # ; CJK COMPATIBILITY IDEOGRAPH-FA42;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA42;
        "\u65E3",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8CB;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8CB;
        "\u6613",  # ; CJK COMPATIBILITY IDEOGRAPH-F9E0;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9E0;
        "\u6649",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8CD;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8CD;
        "\u6674",  # ; CJK COMPATIBILITY IDEOGRAPH-FA12;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA12;
        "\u6674",  # ; CJK COMPATIBILITY IDEOGRAPH-FA91;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-FA91;
        "\u6688",  # ; CJK COMPATIBILITY IDEOGRAPH-F9C5;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9C5;
        "\u6691",  # ; CJK COMPATIBILITY IDEOGRAPH-FA43;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA43;
        "\u6691",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8CF;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8CF;
        "\u669C",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8D5;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8D5;
        "\u66B4",  # ; CJK COMPATIBILITY IDEOGRAPH-FA06;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA06;
        "\u66C6",  # ; CJK COMPATIBILITY IDEOGRAPH-F98B;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F98B;
        "\u66F4",  # ; CJK COMPATIBILITY IDEOGRAPH-F901;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F901;
        "\u66F8",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8CC;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8CC;
        "\u6700",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8D4;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8D4;
        "\u6717",  # ; CJK COMPATIBILITY IDEOGRAPH-F929;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F929;
        "\u6717",  # ; CJK COMPATIBILITY IDEOGRAPH-FA92;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-FA92;
        "\u6717",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8D8;
        "\uFE02",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8D8;
        "\u671B",  # ; CJK COMPATIBILITY IDEOGRAPH-FA93;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA93;
        "\u671B",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8D9;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8D9;
        "\u6721",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8DA;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8DA;
        "\u674E",  # ; CJK COMPATIBILITY IDEOGRAPH-F9E1;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9E1;
        "\u6753",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8DC;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8DC;
        "\u6756",  # ; CJK COMPATIBILITY IDEOGRAPH-FA94;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA94;
        "\u675E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8DB;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8DB;
        "\u677B",  # ; CJK COMPATIBILITY IDEOGRAPH-F9C8;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9C8;
        "\u6785",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8E0;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8E0;
        "\u6797",  # ; CJK COMPATIBILITY IDEOGRAPH-F9F4;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9F4;
        "\u67F3",  # ; CJK COMPATIBILITY IDEOGRAPH-F9C9;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9C9;
        "\u67FA",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8DF;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8DF;
        "\u6817",  # ; CJK COMPATIBILITY IDEOGRAPH-F9DA;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9DA;
        "\u681F",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8E5;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8E5;
        "\u6852",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8E1;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8E1;
        "\u6881",  # ; CJK COMPATIBILITY IDEOGRAPH-F97A;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F97A;
        "\u6885",  # ; CJK COMPATIBILITY IDEOGRAPH-FA44;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA44;
        "\u6885",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8E2;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8E2;
        "\u688E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8E4;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8E4;
        "\u68A8",  # ; CJK COMPATIBILITY IDEOGRAPH-F9E2;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9E2;
        "\u6914",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8E6;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8E6;
        "\u6942",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8E8;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8E8;
        "\u69A3",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8E9;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8E9;
        "\u69EA",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8EA;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8EA;
        "\u6A02",  # ; CJK COMPATIBILITY IDEOGRAPH-F914;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F914;
        "\u6A02",  # ; CJK COMPATIBILITY IDEOGRAPH-F95C;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-F95C;
        "\u6A02",  # ; CJK COMPATIBILITY IDEOGRAPH-F9BF;
        "\uFE02",  # ; CJK COMPATIBILITY IDEOGRAPH-F9BF;
        "\u6A13",  # ; CJK COMPATIBILITY IDEOGRAPH-F94C;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F94C;
        "\u6AA8",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8EB;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8EB;
        "\u6AD3",  # ; CJK COMPATIBILITY IDEOGRAPH-F931;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F931;
        "\u6ADB",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8ED;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8ED;
        "\u6B04",  # ; CJK COMPATIBILITY IDEOGRAPH-F91D;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F91D;
        "\u6B21",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8EF;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8EF;
        "\u6B54",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8F1;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8F1;
        "\u6B72",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8F3;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8F3;
        "\u6B77",  # ; CJK COMPATIBILITY IDEOGRAPH-F98C;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F98C;
        "\u6B79",  # ; CJK COMPATIBILITY IDEOGRAPH-FA95;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA95;
        "\u6B9F",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8F4;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8F4;
        "\u6BAE",  # ; CJK COMPATIBILITY IDEOGRAPH-F9A5;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9A5;
        "\u6BBA",  # ; CJK COMPATIBILITY IDEOGRAPH-F970;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F970;
        "\u6BBA",  # ; CJK COMPATIBILITY IDEOGRAPH-FA96;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-FA96;
        "\u6BBA",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8F5;
        "\uFE02",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8F5;
        "\u6BBB",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8F6;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8F6;
        "\u6C4E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8FA;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8FA;
        "\u6C67",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8FE;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8FE;
        "\u6C88",  # ; CJK COMPATIBILITY IDEOGRAPH-F972;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F972;
        "\u6CBF",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8FC;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8FC;
        "\u6CCC",  # ; CJK COMPATIBILITY IDEOGRAPH-F968;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F968;
        "\u6CCD",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8FD;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8FD;
        "\u6CE5",  # ; CJK COMPATIBILITY IDEOGRAPH-F9E3;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9E3;
        "\u6D16",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8FF;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8FF;
        "\u6D1B",  # ; CJK COMPATIBILITY IDEOGRAPH-F915;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F915;
        "\u6D1E",  # ; CJK COMPATIBILITY IDEOGRAPH-FA05;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA05;
        "\u6D34",  # ; CJK COMPATIBILITY IDEOGRAPH-2F907;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F907;
        "\u6D3E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F900;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F900;
        "\u6D41",  # ; CJK COMPATIBILITY IDEOGRAPH-F9CA;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9CA;
        "\u6D41",  # ; CJK COMPATIBILITY IDEOGRAPH-FA97;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-FA97;
        "\u6D41",  # ; CJK COMPATIBILITY IDEOGRAPH-2F902;
        "\uFE02",  # ; CJK COMPATIBILITY IDEOGRAPH-2F902;
        "\u6D69",  # ; CJK COMPATIBILITY IDEOGRAPH-2F903;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F903;
        "\u6D6A",  # ; CJK COMPATIBILITY IDEOGRAPH-F92A;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F92A;
        "\u6D77",  # ; CJK COMPATIBILITY IDEOGRAPH-FA45;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA45;
        "\u6D77",  # ; CJK COMPATIBILITY IDEOGRAPH-2F901;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F901;
        "\u6D78",  # ; CJK COMPATIBILITY IDEOGRAPH-2F904;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F904;
        "\u6D85",  # ; CJK COMPATIBILITY IDEOGRAPH-2F905;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F905;
        "\u6DCB",  # ; CJK COMPATIBILITY IDEOGRAPH-F9F5;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9F5;
        "\u6DDA",  # ; CJK COMPATIBILITY IDEOGRAPH-F94D;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F94D;
        "\u6DEA",  # ; CJK COMPATIBILITY IDEOGRAPH-F9D6;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9D6;
        "\u6DF9",  # ; CJK COMPATIBILITY IDEOGRAPH-2F90E;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F90E;
        "\u6E1A",  # ; CJK COMPATIBILITY IDEOGRAPH-FA46;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA46;
        "\u6E2F",  # ; CJK COMPATIBILITY IDEOGRAPH-2F908;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F908;
        "\u6E6E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F909;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F909;
        "\u6E9C",  # ; CJK COMPATIBILITY IDEOGRAPH-F9CB;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9CB;
        "\u6EBA",  # ; CJK COMPATIBILITY IDEOGRAPH-F9EC;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9EC;
        "\u6EC7",  # ; CJK COMPATIBILITY IDEOGRAPH-2F90C;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F90C;
        "\u6ECB",  # ; CJK COMPATIBILITY IDEOGRAPH-FA99;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA99;
        "\u6ECB",  # ; CJK COMPATIBILITY IDEOGRAPH-2F90B;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F90B;
        "\u6ED1",  # ; CJK COMPATIBILITY IDEOGRAPH-F904;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F904;
        "\u6EDB",  # ; CJK COMPATIBILITY IDEOGRAPH-FA98;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA98;
        "\u6F0F",  # ; CJK COMPATIBILITY IDEOGRAPH-F94E;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F94E;
        "\u6F22",  # ; CJK COMPATIBILITY IDEOGRAPH-FA47;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA47;
        "\u6F22",  # ; CJK COMPATIBILITY IDEOGRAPH-FA9A;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-FA9A;
        "\u6F23",  # ; CJK COMPATIBILITY IDEOGRAPH-F992;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F992;
        "\u6F6E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F90F;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F90F;
        "\u6FC6",  # ; CJK COMPATIBILITY IDEOGRAPH-2F912;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F912;
        "\u6FEB",  # ; CJK COMPATIBILITY IDEOGRAPH-F922;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F922;
        "\u6FFE",  # ; CJK COMPATIBILITY IDEOGRAPH-F984;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F984;
        "\u701B",  # ; CJK COMPATIBILITY IDEOGRAPH-2F915;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F915;
        "\u701E",  # ; CJK COMPATIBILITY IDEOGRAPH-FA9B;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA9B;
        "\u701E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F914;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F914;
        "\u7039",  # ; CJK COMPATIBILITY IDEOGRAPH-2F913;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F913;
        "\u704A",  # ; CJK COMPATIBILITY IDEOGRAPH-2F917;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F917;
        "\u7070",  # ; CJK COMPATIBILITY IDEOGRAPH-2F835;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F835;
        "\u7077",  # ; CJK COMPATIBILITY IDEOGRAPH-2F919;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F919;
        "\u707D",  # ; CJK COMPATIBILITY IDEOGRAPH-2F918;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F918;
        "\u7099",  # ; CJK COMPATIBILITY IDEOGRAPH-F9FB;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9FB;
        "\u70AD",  # ; CJK COMPATIBILITY IDEOGRAPH-2F91A;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F91A;
        "\u70C8",  # ; CJK COMPATIBILITY IDEOGRAPH-F99F;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F99F;
        "\u70D9",  # ; CJK COMPATIBILITY IDEOGRAPH-F916;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F916;
        "\u7145",  # ; CJK COMPATIBILITY IDEOGRAPH-2F91C;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F91C;
        "\u7149",  # ; CJK COMPATIBILITY IDEOGRAPH-F993;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F993;
        "\u716E",  # ; CJK COMPATIBILITY IDEOGRAPH-FA48;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA48;
        "\u716E",  # ; CJK COMPATIBILITY IDEOGRAPH-FA9C;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-FA9C;
        "\u719C",  # ; CJK COMPATIBILITY IDEOGRAPH-2F91E;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F91E;
        "\u71CE",  # ; CJK COMPATIBILITY IDEOGRAPH-F9C0;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9C0;
        "\u71D0",  # ; CJK COMPATIBILITY IDEOGRAPH-F9EE;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9EE;
        "\u7210",  # ; CJK COMPATIBILITY IDEOGRAPH-F932;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F932;
        "\u721B",  # ; CJK COMPATIBILITY IDEOGRAPH-F91E;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F91E;
        "\u7228",  # ; CJK COMPATIBILITY IDEOGRAPH-2F920;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F920;
        "\u722B",  # ; CJK COMPATIBILITY IDEOGRAPH-FA49;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA49;
        "\u7235",  # ; CJK COMPATIBILITY IDEOGRAPH-FA9E;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA9E;
        "\u7235",  # ; CJK COMPATIBILITY IDEOGRAPH-2F921;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F921;
        "\u7250",  # ; CJK COMPATIBILITY IDEOGRAPH-2F922;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F922;
        "\u7262",  # ; CJK COMPATIBILITY IDEOGRAPH-F946;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F946;
        "\u7280",  # ; CJK COMPATIBILITY IDEOGRAPH-2F924;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F924;
        "\u7295",  # ; CJK COMPATIBILITY IDEOGRAPH-2F925;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F925;
        "\u72AF",  # ; CJK COMPATIBILITY IDEOGRAPH-FA9F;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA9F;
        "\u72C0",  # ; CJK COMPATIBILITY IDEOGRAPH-F9FA;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9FA;
        "\u72FC",  # ; CJK COMPATIBILITY IDEOGRAPH-F92B;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F92B;
        "\u732A",  # ; CJK COMPATIBILITY IDEOGRAPH-FA16;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA16;
        "\u732A",  # ; CJK COMPATIBILITY IDEOGRAPH-FAA0;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-FAA0;
        "\u7375",  # ; CJK COMPATIBILITY IDEOGRAPH-F9A7;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9A7;
        "\u737A",  # ; CJK COMPATIBILITY IDEOGRAPH-2F928;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F928;
        "\u7387",  # ; CJK COMPATIBILITY IDEOGRAPH-F961;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F961;
        "\u7387",  # ; CJK COMPATIBILITY IDEOGRAPH-F9DB;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-F9DB;
        "\u738B",  # ; CJK COMPATIBILITY IDEOGRAPH-2F929;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F929;
        "\u73A5",  # ; CJK COMPATIBILITY IDEOGRAPH-2F92B;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F92B;
        "\u73B2",  # ; CJK COMPATIBILITY IDEOGRAPH-F9AD;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9AD;
        "\u73DE",  # ; CJK COMPATIBILITY IDEOGRAPH-F917;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F917;
        "\u7406",  # ; CJK COMPATIBILITY IDEOGRAPH-F9E4;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9E4;
        "\u7409",  # ; CJK COMPATIBILITY IDEOGRAPH-F9CC;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9CC;
        "\u7422",  # ; CJK COMPATIBILITY IDEOGRAPH-FA4A;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA4A;
        "\u7447",  # ; CJK COMPATIBILITY IDEOGRAPH-2F92E;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F92E;
        "\u745C",  # ; CJK COMPATIBILITY IDEOGRAPH-2F92F;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F92F;
        "\u7469",  # ; CJK COMPATIBILITY IDEOGRAPH-F9AE;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9AE;
        "\u7471",  # ; CJK COMPATIBILITY IDEOGRAPH-FAA1;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAA1;
        "\u7471",  # ; CJK COMPATIBILITY IDEOGRAPH-2F930;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F930;
        "\u7485",  # ; CJK COMPATIBILITY IDEOGRAPH-2F931;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F931;
        "\u7489",  # ; CJK COMPATIBILITY IDEOGRAPH-F994;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F994;
        "\u7498",  # ; CJK COMPATIBILITY IDEOGRAPH-F9EF;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9EF;
        "\u74CA",  # ; CJK COMPATIBILITY IDEOGRAPH-2F932;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F932;
        "\u7506",  # ; CJK COMPATIBILITY IDEOGRAPH-FAA2;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAA2;
        "\u7524",  # ; CJK COMPATIBILITY IDEOGRAPH-2F934;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F934;
        "\u753B",  # ; CJK COMPATIBILITY IDEOGRAPH-FAA3;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAA3;
        "\u753E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F936;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F936;
        "\u7559",  # ; CJK COMPATIBILITY IDEOGRAPH-F9CD;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9CD;
        "\u7565",  # ; CJK COMPATIBILITY IDEOGRAPH-F976;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F976;
        "\u7570",  # ; CJK COMPATIBILITY IDEOGRAPH-F962;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F962;
        "\u7570",  # ; CJK COMPATIBILITY IDEOGRAPH-2F938;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F938;
        "\u75E2",  # ; CJK COMPATIBILITY IDEOGRAPH-F9E5;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9E5;
        "\u7610",  # ; CJK COMPATIBILITY IDEOGRAPH-2F93A;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F93A;
        "\u761D",  # ; CJK COMPATIBILITY IDEOGRAPH-FAA4;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAA4;
        "\u761F",  # ; CJK COMPATIBILITY IDEOGRAPH-FAA5;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAA5;
        "\u7642",  # ; CJK COMPATIBILITY IDEOGRAPH-F9C1;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9C1;
        "\u7669",  # ; CJK COMPATIBILITY IDEOGRAPH-F90E;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F90E;
        "\u76CA",  # ; CJK COMPATIBILITY IDEOGRAPH-FA17;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA17;
        "\u76CA",  # ; CJK COMPATIBILITY IDEOGRAPH-FAA6;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-FAA6;
        "\u76DB",  # ; CJK COMPATIBILITY IDEOGRAPH-FAA7;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAA7;
        "\u76E7",  # ; CJK COMPATIBILITY IDEOGRAPH-F933;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F933;
        "\u76F4",  # ; CJK COMPATIBILITY IDEOGRAPH-FAA8;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAA8;
        "\u76F4",  # ; CJK COMPATIBILITY IDEOGRAPH-2F940;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F940;
        "\u7701",  # ; CJK COMPATIBILITY IDEOGRAPH-F96D;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F96D;
        "\u771E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F945;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F945;
        "\u771F",  # ; CJK COMPATIBILITY IDEOGRAPH-2F946;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F946;
        "\u771F",  # ; CJK COMPATIBILITY IDEOGRAPH-2F947;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F947;
        "\u7740",  # ; CJK COMPATIBILITY IDEOGRAPH-FAAA;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAAA;
        "\u774A",  # ; CJK COMPATIBILITY IDEOGRAPH-FAA9;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAA9;
        "\u774A",  # ; CJK COMPATIBILITY IDEOGRAPH-2F948;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F948;
        "\u778B",  # ; CJK COMPATIBILITY IDEOGRAPH-2F94A;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F94A;
        "\u77A7",  # ; CJK COMPATIBILITY IDEOGRAPH-FA9D;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA9D;
        "\u784E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F94E;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F94E;
        "\u786B",  # ; CJK COMPATIBILITY IDEOGRAPH-F9CE;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9CE;
        "\u788C",  # ; CJK COMPATIBILITY IDEOGRAPH-F93B;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F93B;
        "\u788C",  # ; CJK COMPATIBILITY IDEOGRAPH-2F94F;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F94F;
        "\u7891",  # ; CJK COMPATIBILITY IDEOGRAPH-FA4B;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA4B;
        "\u78CA",  # ; CJK COMPATIBILITY IDEOGRAPH-F947;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F947;
        "\u78CC",  # ; CJK COMPATIBILITY IDEOGRAPH-FAAB;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAAB;
        "\u78CC",  # ; CJK COMPATIBILITY IDEOGRAPH-2F950;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F950;
        "\u78FB",  # ; CJK COMPATIBILITY IDEOGRAPH-F964;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F964;
        "\u792A",  # ; CJK COMPATIBILITY IDEOGRAPH-F985;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F985;
        "\u793C",  # ; CJK COMPATIBILITY IDEOGRAPH-FA18;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA18;
        "\u793E",  # ; CJK COMPATIBILITY IDEOGRAPH-FA4C;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA4C;
        "\u7948",  # ; CJK COMPATIBILITY IDEOGRAPH-FA4E;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA4E;
        "\u7949",  # ; CJK COMPATIBILITY IDEOGRAPH-FA4D;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA4D;
        "\u7950",  # ; CJK COMPATIBILITY IDEOGRAPH-FA4F;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA4F;
        "\u7956",  # ; CJK COMPATIBILITY IDEOGRAPH-FA50;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA50;
        "\u7956",  # ; CJK COMPATIBILITY IDEOGRAPH-2F953;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F953;
        "\u795D",  # ; CJK COMPATIBILITY IDEOGRAPH-FA51;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA51;
        "\u795E",  # ; CJK COMPATIBILITY IDEOGRAPH-FA19;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA19;
        "\u7965",  # ; CJK COMPATIBILITY IDEOGRAPH-FA1A;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA1A;
        "\u797F",  # ; CJK COMPATIBILITY IDEOGRAPH-F93C;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F93C;
        "\u798D",  # ; CJK COMPATIBILITY IDEOGRAPH-FA52;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA52;
        "\u798E",  # ; CJK COMPATIBILITY IDEOGRAPH-FA53;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA53;
        "\u798F",  # ; CJK COMPATIBILITY IDEOGRAPH-FA1B;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA1B;
        "\u798F",  # ; CJK COMPATIBILITY IDEOGRAPH-2F956;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F956;
        "\u79AE",  # ; CJK COMPATIBILITY IDEOGRAPH-F9B6;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9B6;
        "\u79CA",  # ; CJK COMPATIBILITY IDEOGRAPH-F995;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F995;
        "\u79EB",  # ; CJK COMPATIBILITY IDEOGRAPH-2F957;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F957;
        "\u7A1C",  # ; CJK COMPATIBILITY IDEOGRAPH-F956;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F956;
        "\u7A40",  # ; CJK COMPATIBILITY IDEOGRAPH-FA54;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA54;
        "\u7A40",  # ; CJK COMPATIBILITY IDEOGRAPH-2F959;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F959;
        "\u7A4A",  # ; CJK COMPATIBILITY IDEOGRAPH-2F95A;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F95A;
        "\u7A4F",  # ; CJK COMPATIBILITY IDEOGRAPH-2F95B;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F95B;
        "\u7A81",  # ; CJK COMPATIBILITY IDEOGRAPH-FA55;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA55;
        "\u7AB1",  # ; CJK COMPATIBILITY IDEOGRAPH-FAAC;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAAC;
        "\u7ACB",  # ; CJK COMPATIBILITY IDEOGRAPH-F9F7;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9F7;
        "\u7AEE",  # ; CJK COMPATIBILITY IDEOGRAPH-2F95F;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F95F;
        "\u7B20",  # ; CJK COMPATIBILITY IDEOGRAPH-F9F8;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9F8;
        "\u7BC0",  # ; CJK COMPATIBILITY IDEOGRAPH-FA56;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA56;
        "\u7BC0",  # ; CJK COMPATIBILITY IDEOGRAPH-FAAD;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-FAAD;
        "\u7BC6",  # ; CJK COMPATIBILITY IDEOGRAPH-2F962;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F962;
        "\u7BC9",  # ; CJK COMPATIBILITY IDEOGRAPH-2F963;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F963;
        "\u7C3E",  # ; CJK COMPATIBILITY IDEOGRAPH-F9A6;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9A6;
        "\u7C60",  # ; CJK COMPATIBILITY IDEOGRAPH-F944;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F944;
        "\u7C7B",  # ; CJK COMPATIBILITY IDEOGRAPH-FAAE;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAAE;
        "\u7C92",  # ; CJK COMPATIBILITY IDEOGRAPH-F9F9;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9F9;
        "\u7CBE",  # ; CJK COMPATIBILITY IDEOGRAPH-FA1D;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA1D;
        "\u7CD2",  # ; CJK COMPATIBILITY IDEOGRAPH-2F966;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F966;
        "\u7CD6",  # ; CJK COMPATIBILITY IDEOGRAPH-FA03;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA03;
        "\u7CE3",  # ; CJK COMPATIBILITY IDEOGRAPH-2F969;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F969;
        "\u7CE7",  # ; CJK COMPATIBILITY IDEOGRAPH-F97B;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F97B;
        "\u7CE8",  # ; CJK COMPATIBILITY IDEOGRAPH-2F968;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F968;
        "\u7D00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F96A;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F96A;
        "\u7D10",  # ; CJK COMPATIBILITY IDEOGRAPH-F9CF;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9CF;
        "\u7D22",  # ; CJK COMPATIBILITY IDEOGRAPH-F96A;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F96A;
        "\u7D2F",  # ; CJK COMPATIBILITY IDEOGRAPH-F94F;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F94F;
        "\u7D5B",  # ; CJK COMPATIBILITY IDEOGRAPH-FAAF;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAAF;
        "\u7D63",  # ; CJK COMPATIBILITY IDEOGRAPH-2F96C;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F96C;
        "\u7DA0",  # ; CJK COMPATIBILITY IDEOGRAPH-F93D;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F93D;
        "\u7DBE",  # ; CJK COMPATIBILITY IDEOGRAPH-F957;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F957;
        "\u7DC7",  # ; CJK COMPATIBILITY IDEOGRAPH-2F96E;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F96E;
        "\u7DF4",  # ; CJK COMPATIBILITY IDEOGRAPH-F996;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F996;
        "\u7DF4",  # ; CJK COMPATIBILITY IDEOGRAPH-FA57;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-FA57;
        "\u7DF4",  # ; CJK COMPATIBILITY IDEOGRAPH-FAB0;
        "\uFE02",  # ; CJK COMPATIBILITY IDEOGRAPH-FAB0;
        "\u7E02",  # ; CJK COMPATIBILITY IDEOGRAPH-2F96F;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F96F;
        "\u7E09",  # ; CJK COMPATIBILITY IDEOGRAPH-FA58;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA58;
        "\u7E37",  # ; CJK COMPATIBILITY IDEOGRAPH-F950;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F950;
        "\u7E41",  # ; CJK COMPATIBILITY IDEOGRAPH-FA59;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA59;
        "\u7E45",  # ; CJK COMPATIBILITY IDEOGRAPH-2F970;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F970;
        "\u7F3E",  # ; CJK COMPATIBILITY IDEOGRAPH-FAB1;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAB1;
        "\u7F72",  # ; CJK COMPATIBILITY IDEOGRAPH-FA5A;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA5A;
        "\u7F79",  # ; CJK COMPATIBILITY IDEOGRAPH-F9E6;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9E6;
        "\u7F7A",  # ; CJK COMPATIBILITY IDEOGRAPH-2F976;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F976;
        "\u7F85",  # ; CJK COMPATIBILITY IDEOGRAPH-F90F;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F90F;
        "\u7F95",  # ; CJK COMPATIBILITY IDEOGRAPH-2F978;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F978;
        "\u7F9A",  # ; CJK COMPATIBILITY IDEOGRAPH-F9AF;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9AF;
        "\u7FBD",  # ; CJK COMPATIBILITY IDEOGRAPH-FA1E;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA1E;
        "\u7FFA",  # ; CJK COMPATIBILITY IDEOGRAPH-2F979;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F979;
        "\u8001",  # ; CJK COMPATIBILITY IDEOGRAPH-F934;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F934;
        "\u8005",  # ; CJK COMPATIBILITY IDEOGRAPH-FA5B;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA5B;
        "\u8005",  # ; CJK COMPATIBILITY IDEOGRAPH-FAB2;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-FAB2;
        "\u8005",  # ; CJK COMPATIBILITY IDEOGRAPH-2F97A;
        "\uFE02",  # ; CJK COMPATIBILITY IDEOGRAPH-2F97A;
        "\u8046",  # ; CJK COMPATIBILITY IDEOGRAPH-F9B0;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9B0;
        "\u8060",  # ; CJK COMPATIBILITY IDEOGRAPH-2F97D;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F97D;
        "\u806F",  # ; CJK COMPATIBILITY IDEOGRAPH-F997;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F997;
        "\u8070",  # ; CJK COMPATIBILITY IDEOGRAPH-2F97F;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F97F;
        "\u807E",  # ; CJK COMPATIBILITY IDEOGRAPH-F945;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F945;
        "\u808B",  # ; CJK COMPATIBILITY IDEOGRAPH-F953;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F953;
        "\u80AD",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8D6;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8D6;
        "\u80B2",  # ; CJK COMPATIBILITY IDEOGRAPH-2F982;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F982;
        "\u8103",  # ; CJK COMPATIBILITY IDEOGRAPH-2F983;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F983;
        "\u813E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F985;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F985;
        "\u81D8",  # ; CJK COMPATIBILITY IDEOGRAPH-F926;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F926;
        "\u81E8",  # ; CJK COMPATIBILITY IDEOGRAPH-F9F6;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9F6;
        "\u81ED",  # ; CJK COMPATIBILITY IDEOGRAPH-FA5C;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA5C;
        "\u8201",  # ; CJK COMPATIBILITY IDEOGRAPH-2F893;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F893;
        "\u8201",  # ; CJK COMPATIBILITY IDEOGRAPH-2F98B;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F98B;
        "\u8204",  # ; CJK COMPATIBILITY IDEOGRAPH-2F98C;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F98C;
        "\u8218",  # ; CJK COMPATIBILITY IDEOGRAPH-FA6D;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA6D;
        "\u826F",  # ; CJK COMPATIBILITY IDEOGRAPH-F97C;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F97C;
        "\u8279",  # ; CJK COMPATIBILITY IDEOGRAPH-FA5D;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA5D;
        "\u8279",  # ; CJK COMPATIBILITY IDEOGRAPH-FA5E;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-FA5E;
        "\u828B",  # ; CJK COMPATIBILITY IDEOGRAPH-2F990;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F990;
        "\u8291",  # ; CJK COMPATIBILITY IDEOGRAPH-2F98F;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F98F;
        "\u829D",  # ; CJK COMPATIBILITY IDEOGRAPH-2F991;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F991;
        "\u82B1",  # ; CJK COMPATIBILITY IDEOGRAPH-2F993;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F993;
        "\u82B3",  # ; CJK COMPATIBILITY IDEOGRAPH-2F994;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F994;
        "\u82BD",  # ; CJK COMPATIBILITY IDEOGRAPH-2F995;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F995;
        "\u82E5",  # ; CJK COMPATIBILITY IDEOGRAPH-F974;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F974;
        "\u82E5",  # ; CJK COMPATIBILITY IDEOGRAPH-2F998;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F998;
        "\u82E6",  # ; CJK COMPATIBILITY IDEOGRAPH-2F996;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F996;
        "\u831D",  # ; CJK COMPATIBILITY IDEOGRAPH-2F999;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F999;
        "\u8323",  # ; CJK COMPATIBILITY IDEOGRAPH-2F99C;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F99C;
        "\u8336",  # ; CJK COMPATIBILITY IDEOGRAPH-F9FE;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9FE;
        "\u8352",  # ; CJK COMPATIBILITY IDEOGRAPH-FAB3;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAB3;
        "\u8353",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9A0;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9A0;
        "\u8363",  # ; CJK COMPATIBILITY IDEOGRAPH-2F99A;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F99A;
        "\u83AD",  # ; CJK COMPATIBILITY IDEOGRAPH-2F99B;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F99B;
        "\u83BD",  # ; CJK COMPATIBILITY IDEOGRAPH-2F99D;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F99D;
        "\u83C9",  # ; CJK COMPATIBILITY IDEOGRAPH-F93E;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F93E;
        "\u83CA",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9A1;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9A1;
        "\u83CC",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9A2;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9A2;
        "\u83DC",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9A3;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9A3;
        "\u83E7",  # ; CJK COMPATIBILITY IDEOGRAPH-2F99E;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F99E;
        "\u83EF",  # ; CJK COMPATIBILITY IDEOGRAPH-FAB4;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAB4;
        "\u83F1",  # ; CJK COMPATIBILITY IDEOGRAPH-F958;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F958;
        "\u843D",  # ; CJK COMPATIBILITY IDEOGRAPH-F918;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F918;
        "\u8449",  # ; CJK COMPATIBILITY IDEOGRAPH-F96E;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F96E;
        "\u8457",  # ; CJK COMPATIBILITY IDEOGRAPH-FA5F;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA5F;
        "\u8457",  # ; CJK COMPATIBILITY IDEOGRAPH-2F99F;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F99F;
        "\u84EE",  # ; CJK COMPATIBILITY IDEOGRAPH-F999;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F999;
        "\u84F1",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9A8;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9A8;
        "\u84F3",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9A9;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9A9;
        "\u84FC",  # ; CJK COMPATIBILITY IDEOGRAPH-F9C2;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9C2;
        "\u8516",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9AA;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9AA;
        "\u8564",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9AC;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9AC;
        "\u85CD",  # ; CJK COMPATIBILITY IDEOGRAPH-F923;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F923;
        "\u85FA",  # ; CJK COMPATIBILITY IDEOGRAPH-F9F0;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9F0;
        "\u8606",  # ; CJK COMPATIBILITY IDEOGRAPH-F935;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F935;
        "\u8612",  # ; CJK COMPATIBILITY IDEOGRAPH-FA20;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA20;
        "\u862D",  # ; CJK COMPATIBILITY IDEOGRAPH-F91F;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F91F;
        "\u863F",  # ; CJK COMPATIBILITY IDEOGRAPH-F910;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F910;
        "\u8650",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9B3;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9B3;
        "\u865C",  # ; CJK COMPATIBILITY IDEOGRAPH-F936;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F936;
        "\u865C",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9B4;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9B4;
        "\u8667",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9B5;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9B5;
        "\u8669",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9B6;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9B6;
        "\u8688",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9B8;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9B8;
        "\u86A9",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9B7;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9B7;
        "\u86E2",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9BA;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9BA;
        "\u870E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9B9;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9B9;
        "\u8728",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9BC;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9BC;
        "\u876B",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9BD;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9BD;
        "\u8779",  # ; CJK COMPATIBILITY IDEOGRAPH-FAB5;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAB5;
        "\u8779",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9BB;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9BB;
        "\u8786",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9BE;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9BE;
        "\u87BA",  # ; CJK COMPATIBILITY IDEOGRAPH-F911;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F911;
        "\u87E1",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9C0;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9C0;
        "\u8801",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9C1;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9C1;
        "\u881F",  # ; CJK COMPATIBILITY IDEOGRAPH-F927;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F927;
        "\u884C",  # ; CJK COMPATIBILITY IDEOGRAPH-FA08;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA08;
        "\u8860",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9C3;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9C3;
        "\u8863",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9C4;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9C4;
        "\u88C2",  # ; CJK COMPATIBILITY IDEOGRAPH-F9A0;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9A0;
        "\u88CF",  # ; CJK COMPATIBILITY IDEOGRAPH-F9E7;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9E7;
        "\u88D7",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9C6;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9C6;
        "\u88DE",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9C7;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9C7;
        "\u88E1",  # ; CJK COMPATIBILITY IDEOGRAPH-F9E8;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9E8;
        "\u88F8",  # ; CJK COMPATIBILITY IDEOGRAPH-F912;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F912;
        "\u88FA",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9C9;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9C9;
        "\u8910",  # ; CJK COMPATIBILITY IDEOGRAPH-FA60;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA60;
        "\u8941",  # ; CJK COMPATIBILITY IDEOGRAPH-FAB6;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAB6;
        "\u8964",  # ; CJK COMPATIBILITY IDEOGRAPH-F924;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F924;
        "\u8986",  # ; CJK COMPATIBILITY IDEOGRAPH-FAB7;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAB7;
        "\u898B",  # ; CJK COMPATIBILITY IDEOGRAPH-FA0A;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA0A;
        "\u8996",  # ; CJK COMPATIBILITY IDEOGRAPH-FA61;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA61;
        "\u8996",  # ; CJK COMPATIBILITY IDEOGRAPH-FAB8;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-FAB8;
        "\u8AA0",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9CF;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9CF;
        "\u8AAA",  # ; CJK COMPATIBILITY IDEOGRAPH-F96F;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F96F;
        "\u8AAA",  # ; CJK COMPATIBILITY IDEOGRAPH-F9A1;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-F9A1;
        "\u8ABF",  # ; CJK COMPATIBILITY IDEOGRAPH-FAB9;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAB9;
        "\u8ACB",  # ; CJK COMPATIBILITY IDEOGRAPH-FABB;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FABB;
        "\u8AD2",  # ; CJK COMPATIBILITY IDEOGRAPH-F97D;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F97D;
        "\u8AD6",  # ; CJK COMPATIBILITY IDEOGRAPH-F941;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F941;
        "\u8AED",  # ; CJK COMPATIBILITY IDEOGRAPH-FABE;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FABE;
        "\u8AED",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9D0;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9D0;
        "\u8AF8",  # ; CJK COMPATIBILITY IDEOGRAPH-FA22;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA22;
        "\u8AF8",  # ; CJK COMPATIBILITY IDEOGRAPH-FABA;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-FABA;
        "\u8AFE",  # ; CJK COMPATIBILITY IDEOGRAPH-F95D;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F95D;
        "\u8AFE",  # ; CJK COMPATIBILITY IDEOGRAPH-FABD;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-FABD;
        "\u8B01",  # ; CJK COMPATIBILITY IDEOGRAPH-FA62;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA62;
        "\u8B01",  # ; CJK COMPATIBILITY IDEOGRAPH-FABC;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-FABC;
        "\u8B39",  # ; CJK COMPATIBILITY IDEOGRAPH-FA63;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA63;
        "\u8B39",  # ; CJK COMPATIBILITY IDEOGRAPH-FABF;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-FABF;
        "\u8B58",  # ; CJK COMPATIBILITY IDEOGRAPH-F9FC;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9FC;
        "\u8B80",  # ; CJK COMPATIBILITY IDEOGRAPH-F95A;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F95A;
        "\u8B8A",  # ; CJK COMPATIBILITY IDEOGRAPH-FAC0;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAC0;
        "\u8B8A",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9D1;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9D1;
        "\u8C48",  # ; CJK COMPATIBILITY IDEOGRAPH-F900;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F900;
        "\u8C55",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9D2;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9D2;
        "\u8CAB",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9D4;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9D4;
        "\u8CC1",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9D5;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9D5;
        "\u8CC2",  # ; CJK COMPATIBILITY IDEOGRAPH-F948;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F948;
        "\u8CC8",  # ; CJK COMPATIBILITY IDEOGRAPH-F903;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F903;
        "\u8CD3",  # ; CJK COMPATIBILITY IDEOGRAPH-FA64;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA64;
        "\u8D08",  # ; CJK COMPATIBILITY IDEOGRAPH-FA65;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA65;
        "\u8D08",  # ; CJK COMPATIBILITY IDEOGRAPH-FAC1;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-FAC1;
        "\u8D1B",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9D6;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9D6;
        "\u8D77",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9D7;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9D7;
        "\u8DBC",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9DB;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9DB;
        "\u8DCB",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9DA;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9DA;
        "\u8DEF",  # ; CJK COMPATIBILITY IDEOGRAPH-F937;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F937;
        "\u8DF0",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9DC;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9DC;
        "\u8ECA",  # ; CJK COMPATIBILITY IDEOGRAPH-F902;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F902;
        "\u8ED4",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9DE;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9DE;
        "\u8F26",  # ; CJK COMPATIBILITY IDEOGRAPH-F998;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F998;
        "\u8F2A",  # ; CJK COMPATIBILITY IDEOGRAPH-F9D7;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9D7;
        "\u8F38",  # ; CJK COMPATIBILITY IDEOGRAPH-FAC2;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAC2;
        "\u8F38",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9DF;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9DF;
        "\u8F3B",  # ; CJK COMPATIBILITY IDEOGRAPH-FA07;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA07;
        "\u8F62",  # ; CJK COMPATIBILITY IDEOGRAPH-F98D;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F98D;
        "\u8F9E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F98D;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F98D;
        "\u8FB0",  # ; CJK COMPATIBILITY IDEOGRAPH-F971;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F971;
        "\u8FB6",  # ; CJK COMPATIBILITY IDEOGRAPH-FA66;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA66;
        "\u9023",  # ; CJK COMPATIBILITY IDEOGRAPH-F99A;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F99A;
        "\u9038",  # ; CJK COMPATIBILITY IDEOGRAPH-FA25;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA25;
        "\u9038",  # ; CJK COMPATIBILITY IDEOGRAPH-FA67;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-FA67;
        "\u9072",  # ; CJK COMPATIBILITY IDEOGRAPH-FAC3;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAC3;
        "\u907C",  # ; CJK COMPATIBILITY IDEOGRAPH-F9C3;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9C3;
        "\u908F",  # ; CJK COMPATIBILITY IDEOGRAPH-F913;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F913;
        "\u9094",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9E2;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9E2;
        "\u90CE",  # ; CJK COMPATIBILITY IDEOGRAPH-F92C;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F92C;
        "\u90DE",  # ; CJK COMPATIBILITY IDEOGRAPH-FA2E;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA2E;
        "\u90F1",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9E3;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9E3;
        "\u90FD",  # ; CJK COMPATIBILITY IDEOGRAPH-FA26;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA26;
        "\u9111",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9E4;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9E4;
        "\u911B",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9E6;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9E6;
        "\u916A",  # ; CJK COMPATIBILITY IDEOGRAPH-F919;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F919;
        "\u9199",  # ; CJK COMPATIBILITY IDEOGRAPH-FAC4;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAC4;
        "\u91B4",  # ; CJK COMPATIBILITY IDEOGRAPH-F9B7;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9B7;
        "\u91CC",  # ; CJK COMPATIBILITY IDEOGRAPH-F9E9;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9E9;
        "\u91CF",  # ; CJK COMPATIBILITY IDEOGRAPH-F97E;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F97E;
        "\u91D1",  # ; CJK COMPATIBILITY IDEOGRAPH-F90A;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F90A;
        "\u9234",  # ; CJK COMPATIBILITY IDEOGRAPH-F9B1;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9B1;
        "\u9238",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9E7;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9E7;
        "\u9276",  # ; CJK COMPATIBILITY IDEOGRAPH-FAC5;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAC5;
        "\u927C",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9EA;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9EA;
        "\u92D7",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9E8;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9E8;
        "\u92D8",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9E9;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9E9;
        "\u9304",  # ; CJK COMPATIBILITY IDEOGRAPH-F93F;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F93F;
        "\u934A",  # ; CJK COMPATIBILITY IDEOGRAPH-F99B;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F99B;
        "\u93F9",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9EB;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9EB;
        "\u9415",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9EC;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9EC;
        "\u958B",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9EE;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9EE;
        "\u95AD",  # ; CJK COMPATIBILITY IDEOGRAPH-F986;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F986;
        "\u95B7",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9F0;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9F0;
        "\u962E",  # ; CJK COMPATIBILITY IDEOGRAPH-F9C6;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9C6;
        "\u964B",  # ; CJK COMPATIBILITY IDEOGRAPH-F951;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F951;
        "\u964D",  # ; CJK COMPATIBILITY IDEOGRAPH-FA09;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA09;
        "\u9675",  # ; CJK COMPATIBILITY IDEOGRAPH-F959;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F959;
        "\u9678",  # ; CJK COMPATIBILITY IDEOGRAPH-F9D3;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9D3;
        "\u967C",  # ; CJK COMPATIBILITY IDEOGRAPH-FAC6;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAC6;
        "\u9686",  # ; CJK COMPATIBILITY IDEOGRAPH-F9DC;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9DC;
        "\u96A3",  # ; CJK COMPATIBILITY IDEOGRAPH-F9F1;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9F1;
        "\u96B7",  # ; CJK COMPATIBILITY IDEOGRAPH-FA2F;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA2F;
        "\u96B8",  # ; CJK COMPATIBILITY IDEOGRAPH-F9B8;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9B8;
        "\u96C3",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9F3;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9F3;
        "\u96E2",  # ; CJK COMPATIBILITY IDEOGRAPH-F9EA;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9EA;
        "\u96E3",  # ; CJK COMPATIBILITY IDEOGRAPH-FA68;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA68;
        "\u96E3",  # ; CJK COMPATIBILITY IDEOGRAPH-FAC7;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-FAC7;
        "\u96F6",  # ; CJK COMPATIBILITY IDEOGRAPH-F9B2;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9B2;
        "\u96F7",  # ; CJK COMPATIBILITY IDEOGRAPH-F949;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F949;
        "\u9723",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9F5;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9F5;
        "\u9732",  # ; CJK COMPATIBILITY IDEOGRAPH-F938;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F938;
        "\u9748",  # ; CJK COMPATIBILITY IDEOGRAPH-F9B3;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9B3;
        "\u9756",  # ; CJK COMPATIBILITY IDEOGRAPH-FA1C;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA1C;
        "\u9756",  # ; CJK COMPATIBILITY IDEOGRAPH-FAC8;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-FAC8;
        "\u97DB",  # ; CJK COMPATIBILITY IDEOGRAPH-FAC9;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAC9;
        "\u97E0",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9FA;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9FA;
        "\u97FF",  # ; CJK COMPATIBILITY IDEOGRAPH-FA69;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA69;
        "\u97FF",  # ; CJK COMPATIBILITY IDEOGRAPH-FACA;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-FACA;
        "\u980B",  # ; CJK COMPATIBILITY IDEOGRAPH-FACB;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FACB;
        "\u980B",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9FE;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9FE;
        "\u980B",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9FF;
        "\uFE02",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9FF;
        "\u9818",  # ; CJK COMPATIBILITY IDEOGRAPH-F9B4;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9B4;
        "\u9829",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA00;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA00;
        "\u983B",  # ; CJK COMPATIBILITY IDEOGRAPH-FA6A;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA6A;
        "\u983B",  # ; CJK COMPATIBILITY IDEOGRAPH-FACC;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-FACC;
        "\u985E",  # ; CJK COMPATIBILITY IDEOGRAPH-F9D0;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9D0;
        "\u98E2",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA02;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA02;
        "\u98EF",  # ; CJK COMPATIBILITY IDEOGRAPH-FA2A;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA2A;
        "\u98FC",  # ; CJK COMPATIBILITY IDEOGRAPH-FA2B;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA2B;
        "\u9928",  # ; CJK COMPATIBILITY IDEOGRAPH-FA2C;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA2C;
        "\u9929",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA04;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA04;
        "\u99A7",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA05;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA05;
        "\u99C2",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA06;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA06;
        "\u99F1",  # ; CJK COMPATIBILITY IDEOGRAPH-F91A;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F91A;
        "\u99FE",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA07;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA07;
        "\u9A6A",  # ; CJK COMPATIBILITY IDEOGRAPH-F987;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F987;
        "\u9B12",  # ; CJK COMPATIBILITY IDEOGRAPH-FACD;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FACD;
        "\u9B12",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA0A;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA0A;
        "\u9B6F",  # ; CJK COMPATIBILITY IDEOGRAPH-F939;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F939;
        "\u9C40",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA0B;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA0B;
        "\u9C57",  # ; CJK COMPATIBILITY IDEOGRAPH-F9F2;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9F2;
        "\u9CFD",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA0C;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA0C;
        "\u9D67",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA0F;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA0F;
        "\u9DB4",  # ; CJK COMPATIBILITY IDEOGRAPH-FA2D;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA2D;
        "\u9DFA",  # ; CJK COMPATIBILITY IDEOGRAPH-F93A;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F93A;
        "\u9E1E",  # ; CJK COMPATIBILITY IDEOGRAPH-F920;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F920;
        "\u9E7F",  # ; CJK COMPATIBILITY IDEOGRAPH-F940;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F940;
        "\u9E97",  # ; CJK COMPATIBILITY IDEOGRAPH-F988;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F988;
        "\u9E9F",  # ; CJK COMPATIBILITY IDEOGRAPH-F9F3;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9F3;
        "\u9EBB",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA15;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA15;
        "\u9ECE",  # ; CJK COMPATIBILITY IDEOGRAPH-F989;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F989;
        "\u9EF9",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA17;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA17;
        "\u9EFE",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA18;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA18;
        "\u9F05",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA19;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA19;
        "\u9F0F",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA1A;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA1A;
        "\u9F16",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA1B;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA1B;
        "\u9F3B",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA1C;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA1C;
        "\u9F43",  # ; CJK COMPATIBILITY IDEOGRAPH-FAD8;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAD8;
        "\u9F8D",  # ; CJK COMPATIBILITY IDEOGRAPH-F9C4;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F9C4;
        "\u9F8E",  # ; CJK COMPATIBILITY IDEOGRAPH-FAD9;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAD9;
        "\u9F9C",  # ; CJK COMPATIBILITY IDEOGRAPH-F907;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-F907;
        "\u9F9C",  # ; CJK COMPATIBILITY IDEOGRAPH-F908;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-F908;
        "\u9F9C",  # ; CJK COMPATIBILITY IDEOGRAPH-FACE;
        "\uFE02",  # ; CJK COMPATIBILITY IDEOGRAPH-FACE;
        "\u20122",  # ; CJK COMPATIBILITY IDEOGRAPH-2F803;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F803;
        "\u2051C",  # ; CJK COMPATIBILITY IDEOGRAPH-2F812;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F812;
        "\u20525",  # ; CJK COMPATIBILITY IDEOGRAPH-2F91B;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F91B;
        "\u2054B",  # ; CJK COMPATIBILITY IDEOGRAPH-2F816;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F816;
        "\u2063A",  # ; CJK COMPATIBILITY IDEOGRAPH-2F80D;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F80D;
        "\u20804",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9D9;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9D9;
        "\u208DE",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9DD;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9DD;
        "\u20A2C",  # ; CJK COMPATIBILITY IDEOGRAPH-2F834;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F834;
        "\u20B63",  # ; CJK COMPATIBILITY IDEOGRAPH-2F838;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F838;
        "\u214E4",  # ; CJK COMPATIBILITY IDEOGRAPH-2F859;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F859;
        "\u216A8",  # ; CJK COMPATIBILITY IDEOGRAPH-2F860;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F860;
        "\u216EA",  # ; CJK COMPATIBILITY IDEOGRAPH-2F861;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F861;
        "\u219C8",  # ; CJK COMPATIBILITY IDEOGRAPH-2F86C;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F86C;
        "\u21B18",  # ; CJK COMPATIBILITY IDEOGRAPH-2F871;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F871;
        "\u21D0B",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8F8;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8F8;
        "\u21DE4",  # ; CJK COMPATIBILITY IDEOGRAPH-2F87B;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F87B;
        "\u21DE6",  # ; CJK COMPATIBILITY IDEOGRAPH-2F87D;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F87D;
        "\u22183",  # ; CJK COMPATIBILITY IDEOGRAPH-2F889;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F889;
        "\u2219F",  # ; CJK COMPATIBILITY IDEOGRAPH-2F939;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F939;
        "\u22331",  # ; CJK COMPATIBILITY IDEOGRAPH-2F891;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F891;
        "\u22331",  # ; CJK COMPATIBILITY IDEOGRAPH-2F892;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F892;
        "\u226D4",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8A4;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8A4;
        "\u22844",  # ; CJK COMPATIBILITY IDEOGRAPH-FAD0;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAD0;
        "\u2284A",  # ; CJK COMPATIBILITY IDEOGRAPH-FACF;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FACF;
        "\u22B0C",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8B8;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8B8;
        "\u22BF1",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8BE;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8BE;
        "\u2300A",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8CA;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8CA;
        "\u232B8",  # ; CJK COMPATIBILITY IDEOGRAPH-2F897;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F897;
        "\u2335F",  # ; CJK COMPATIBILITY IDEOGRAPH-2F980;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F980;
        "\u23393",  # ; CJK COMPATIBILITY IDEOGRAPH-2F989;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F989;
        "\u2339C",  # ; CJK COMPATIBILITY IDEOGRAPH-2F98A;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F98A;
        "\u233C3",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8DD;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8DD;
        "\u233D5",  # ; CJK COMPATIBILITY IDEOGRAPH-FAD1;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAD1;
        "\u2346D",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8E3;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8E3;
        "\u236A3",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8EC;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8EC;
        "\u238A7",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8F0;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8F0;
        "\u23A8D",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8F7;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8F7;
        "\u23AFA",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8F9;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8F9;
        "\u23CBC",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8FB;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F8FB;
        "\u23D1E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F906;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F906;
        "\u23ED1",  # ; CJK COMPATIBILITY IDEOGRAPH-2F90D;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F90D;
        "\u23F5E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F910;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F910;
        "\u23F8E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F911;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F911;
        "\u24263",  # ; CJK COMPATIBILITY IDEOGRAPH-2F91D;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F91D;
        "\u242EE",  # ; CJK COMPATIBILITY IDEOGRAPH-FA6C;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FA6C;
        "\u243AB",  # ; CJK COMPATIBILITY IDEOGRAPH-2F91F;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F91F;
        "\u24608",  # ; CJK COMPATIBILITY IDEOGRAPH-2F923;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F923;
        "\u24735",  # ; CJK COMPATIBILITY IDEOGRAPH-2F926;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F926;
        "\u24814",  # ; CJK COMPATIBILITY IDEOGRAPH-2F927;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F927;
        "\u24C36",  # ; CJK COMPATIBILITY IDEOGRAPH-2F935;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F935;
        "\u24C92",  # ; CJK COMPATIBILITY IDEOGRAPH-2F937;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F937;
        "\u24FA1",  # ; CJK COMPATIBILITY IDEOGRAPH-2F93B;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F93B;
        "\u24FB8",  # ; CJK COMPATIBILITY IDEOGRAPH-2F93C;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F93C;
        "\u25044",  # ; CJK COMPATIBILITY IDEOGRAPH-2F93D;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F93D;
        "\u250F2",  # ; CJK COMPATIBILITY IDEOGRAPH-2F942;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F942;
        "\u250F3",  # ; CJK COMPATIBILITY IDEOGRAPH-2F941;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F941;
        "\u25119",  # ; CJK COMPATIBILITY IDEOGRAPH-2F943;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F943;
        "\u25133",  # ; CJK COMPATIBILITY IDEOGRAPH-2F944;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F944;
        "\u25249",  # ; CJK COMPATIBILITY IDEOGRAPH-FAD5;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAD5;
        "\u2541D",  # ; CJK COMPATIBILITY IDEOGRAPH-2F94D;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F94D;
        "\u25626",  # ; CJK COMPATIBILITY IDEOGRAPH-2F952;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F952;
        "\u2569A",  # ; CJK COMPATIBILITY IDEOGRAPH-2F954;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F954;
        "\u256C5",  # ; CJK COMPATIBILITY IDEOGRAPH-2F955;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F955;
        "\u2597C",  # ; CJK COMPATIBILITY IDEOGRAPH-2F95C;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F95C;
        "\u25AA7",  # ; CJK COMPATIBILITY IDEOGRAPH-2F95D;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F95D;
        "\u25AA7",  # ; CJK COMPATIBILITY IDEOGRAPH-2F95E;
        "\uFE01",  # ; CJK COMPATIBILITY IDEOGRAPH-2F95E;
        "\u25BAB",  # ; CJK COMPATIBILITY IDEOGRAPH-2F961;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F961;
        "\u25C80",  # ; CJK COMPATIBILITY IDEOGRAPH-2F965;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F965;
        "\u25CD0",  # ; CJK COMPATIBILITY IDEOGRAPH-FAD6;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAD6;
        "\u25F86",  # ; CJK COMPATIBILITY IDEOGRAPH-2F96B;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F96B;
        "\u261DA",  # ; CJK COMPATIBILITY IDEOGRAPH-2F898;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F898;
        "\u26228",  # ; CJK COMPATIBILITY IDEOGRAPH-2F972;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F972;
        "\u26247",  # ; CJK COMPATIBILITY IDEOGRAPH-2F973;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F973;
        "\u262D9",  # ; CJK COMPATIBILITY IDEOGRAPH-2F975;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F975;
        "\u2633E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F977;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F977;
        "\u264DA",  # ; CJK COMPATIBILITY IDEOGRAPH-2F97B;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F97B;
        "\u26523",  # ; CJK COMPATIBILITY IDEOGRAPH-2F97C;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F97C;
        "\u265A8",  # ; CJK COMPATIBILITY IDEOGRAPH-2F97E;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F97E;
        "\u267A7",  # ; CJK COMPATIBILITY IDEOGRAPH-2F987;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F987;
        "\u267B5",  # ; CJK COMPATIBILITY IDEOGRAPH-2F988;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F988;
        "\u26B3C",  # ; CJK COMPATIBILITY IDEOGRAPH-2F997;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F997;
        "\u26C36",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9A4;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9A4;
        "\u26CD5",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9A6;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9A6;
        "\u26D6B",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9A5;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9A5;
        "\u26F2C",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9AD;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9AD;
        "\u26FB1",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9B0;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9B0;
        "\u270D2",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9B1;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9B1;
        "\u273CA",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9AB;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9AB;
        "\u27667",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9C5;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9C5;
        "\u278AE",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9CB;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9CB;
        "\u27966",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9CC;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9CC;
        "\u27CA8",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9D3;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9D3;
        "\u27ED3",  # ; CJK COMPATIBILITY IDEOGRAPH-FAD7;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-FAD7;
        "\u27F2F",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9D8;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9D8;
        "\u285D2",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9E0;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9E0;
        "\u285ED",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9E1;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9E1;
        "\u2872E",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9E5;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9E5;
        "\u28BFA",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9ED;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9ED;
        "\u28D77",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9F1;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9F1;
        "\u29145",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9F6;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9F6;
        "\u291DF",  # ; CJK COMPATIBILITY IDEOGRAPH-2F81C;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F81C;
        "\u2921A",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9F7;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9F7;
        "\u2940A",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9FB;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9FB;
        "\u29496",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9FD;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F9FD;
        "\u295B6",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA01;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA01;
        "\u29B30",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA09;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA09;
        "\u2A0CE",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA10;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA10;
        "\u2A105",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA12;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA12;
        "\u2A20E",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA13;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA13;
        "\u2A291",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA14;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA14;
        "\u2A392",  # ; CJK COMPATIBILITY IDEOGRAPH-2F88F;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2F88F;
        "\u2A600",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA1D;
        "\uFE00",  # ; CJK COMPATIBILITY IDEOGRAPH-2FA1D;
    ]
    test_data.each do |string|
      assert @validator.valid_encoding?(string), "U10_StandardizedVariants: #{string}"
      assert string.force_encoding("UTF-8").valid_encoding?, "U10_StandardizedVariants: #{string}" if @vercheck
    end
  end

end

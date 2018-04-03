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
class TestUnicode10DerivedBinaryProperties < Test::Unit::TestCase
  #
  def setup
    @validator = UTF8::Validator.new
    @vercheck = ((RUBY_VERSION =~ /1.9/) or (RUBY_VERSION =~ /2./)) ? true : false
  end

  #
  def teardown
    @validator = nil
  end

  def test_unicode10_DerivedBinaryProperties
    test_data = [
        "\u0028",  # ; Bidi_Mirrored # Ps       LEFT PARENTHESIS
        "\u0029",  # ; Bidi_Mirrored # Pe       RIGHT PARENTHESIS
        "\u003C",  # ; Bidi_Mirrored # Sm       LESS-THAN SIGN
        "\u003E",  # ; Bidi_Mirrored # Sm       GREATER-THAN SIGN
        "\u005B",  # ; Bidi_Mirrored # Ps       LEFT SQUARE BRACKET
        "\u005D",  # ; Bidi_Mirrored # Pe       RIGHT SQUARE BRACKET
        "\u007B",  # ; Bidi_Mirrored # Ps       LEFT CURLY BRACKET
        "\u007D",  # ; Bidi_Mirrored # Pe       RIGHT CURLY BRACKET
        "\u00AB",  # ; Bidi_Mirrored # Pi       LEFT-POINTING DOUBLE ANGLE QUOTATION MARK
        "\u00BB",  # ; Bidi_Mirrored # Pf       RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK
        "\u0F3A",  # ; Bidi_Mirrored # Ps       TIBETAN MARK GUG RTAGS GYON
        "\u0F3B",  # ; Bidi_Mirrored # Pe       TIBETAN MARK GUG RTAGS GYAS
        "\u0F3C",  # ; Bidi_Mirrored # Ps       TIBETAN MARK ANG KHANG GYON
        "\u0F3D",  # ; Bidi_Mirrored # Pe       TIBETAN MARK ANG KHANG GYAS
        "\u169B",  # ; Bidi_Mirrored # Ps       OGHAM FEATHER MARK
        "\u169C",  # ; Bidi_Mirrored # Pe       OGHAM REVERSED FEATHER MARK
        "\u2039",  # ; Bidi_Mirrored # Pi       SINGLE LEFT-POINTING ANGLE QUOTATION MARK
        "\u203A",  # ; Bidi_Mirrored # Pf       SINGLE RIGHT-POINTING ANGLE QUOTATION MARK
        "\u2045",  # ; Bidi_Mirrored # Ps       LEFT SQUARE BRACKET WITH QUILL
        "\u2046",  # ; Bidi_Mirrored # Pe       RIGHT SQUARE BRACKET WITH QUILL
        "\u207D",  # ; Bidi_Mirrored # Ps       SUPERSCRIPT LEFT PARENTHESIS
        "\u207E",  # ; Bidi_Mirrored # Pe       SUPERSCRIPT RIGHT PARENTHESIS
        "\u208D",  # ; Bidi_Mirrored # Ps       SUBSCRIPT LEFT PARENTHESIS
        "\u208E",  # ; Bidi_Mirrored # Pe       SUBSCRIPT RIGHT PARENTHESIS
        "\u2140",  # ; Bidi_Mirrored # Sm       DOUBLE-STRUCK N-ARY SUMMATION
        "\u2201","\u2202","\u2203","\u2204",  # ; Bidi_Mirrored # Sm   [4] COMPLEMENT..THERE DOES NOT EXIST
        "\u2208","\u2209","\u220a","\u220b","\u220c","\u220d",  # ; Bidi_Mirrored # Sm   [6] ELEMENT OF..SMALL CONTAINS AS MEMBER
        "\u2211",  # ; Bidi_Mirrored # Sm       N-ARY SUMMATION
        "\u2215","\u2216",  # ; Bidi_Mirrored # Sm   [2] DIVISION SLASH..SET MINUS
        "\u221a","\u221b","\u221c","\u221d",  # ; Bidi_Mirrored # Sm   [4] SQUARE ROOT..PROPORTIONAL TO
        "\u221f","\u2220","\u2221","\u2222",  # ; Bidi_Mirrored # Sm   [4] RIGHT ANGLE..SPHERICAL ANGLE
        "\u2224",  # ; Bidi_Mirrored # Sm       DOES NOT DIVIDE
        "\u2226",  # ; Bidi_Mirrored # Sm       NOT PARALLEL TO
        "\u222b","\u222c","\u222d","\u222e","\u222f","\u2230","\u2231","\u2232","\u2233",  # ; Bidi_Mirrored # Sm   [9] INTEGRAL..ANTICLOCKWISE CONTOUR INTEGRAL
        "\u2239",  # ; Bidi_Mirrored # Sm       EXCESS
        "\u223b","\u223c","\u223d","\u223e","\u223f","\u2240","\u2241","\u2242","\u2243","\u2244","\u2245","\u2246","\u2247","\u2248","\u2249","\u224a","\u224b","\u224c",  # ; Bidi_Mirrored # Sm  [18] HOMOTHETIC..ALL EQUAL TO
        "\u2252","\u2253","\u2254","\u2255",  # ; Bidi_Mirrored # Sm   [4] APPROXIMATELY EQUAL TO OR THE IMAGE OF..EQUALS COLON
        "\u225f","\u2260",  # ; Bidi_Mirrored # Sm   [2] QUESTIONED EQUAL TO..NOT EQUAL TO
        "\u2262",  # ; Bidi_Mirrored # Sm       NOT IDENTICAL TO
        "\u2264","\u2265","\u2266","\u2267","\u2268","\u2269","\u226a","\u226b",  # ; Bidi_Mirrored # Sm   [8] LESS-THAN OR EQUAL TO..MUCH GREATER-THAN
        "\u226e","\u226f","\u2270","\u2271","\u2272","\u2273","\u2274","\u2275","\u2276","\u2277","\u2278","\u2279","\u227a","\u227b","\u227c","\u227d","\u227e","\u227f","\u2280","\u2281","\u2282","\u2283","\u2284","\u2285","\u2286","\u2287","\u2288","\u2289","\u228a","\u228b","\u228c",  # ; Bidi_Mirrored # Sm  [31] NOT LESS-THAN..MULTISET
        "\u228f","\u2290","\u2291","\u2292",  # ; Bidi_Mirrored # Sm   [4] SQUARE IMAGE OF..SQUARE ORIGINAL OF OR EQUAL TO
        "\u2298",  # ; Bidi_Mirrored # Sm       CIRCLED DIVISION SLASH
        "\u22a2","\u22a3",  # ; Bidi_Mirrored # Sm   [2] RIGHT TACK..LEFT TACK
        "\u22a6","\u22a7","\u22a8","\u22a9","\u22aa","\u22ab","\u22ac","\u22ad","\u22ae","\u22af","\u22b0","\u22b1","\u22b2","\u22b3","\u22b4","\u22b5","\u22b6","\u22b7","\u22b8",  # ; Bidi_Mirrored # Sm  [19] ASSERTION..MULTIMAP
        "\u22be","\u22bf",  # ; Bidi_Mirrored # Sm   [2] RIGHT ANGLE WITH ARC..RIGHT TRIANGLE
        "\u22c9","\u22ca","\u22cb","\u22cc","\u22cd",  # ; Bidi_Mirrored # Sm   [5] LEFT NORMAL FACTOR SEMIDIRECT PRODUCT..REVERSED TILDE EQUALS
        "\u22d0","\u22d1",  # ; Bidi_Mirrored # Sm   [2] DOUBLE SUBSET..DOUBLE SUPERSET
        "\u22d6","\u22d7","\u22d8","\u22d9","\u22da","\u22db","\u22dc","\u22dd","\u22de","\u22df","\u22e0","\u22e1","\u22e2","\u22e3","\u22e4","\u22e5","\u22e6","\u22e7","\u22e8","\u22e9","\u22ea","\u22eb","\u22ec","\u22ed",  # ; Bidi_Mirrored # Sm  [24] LESS-THAN WITH DOT..DOES NOT CONTAIN AS NORMAL SUBGROUP OR EQUAL
        "\u22f0","\u22f1","\u22f2","\u22f3","\u22f4","\u22f5","\u22f6","\u22f7","\u22f8","\u22f9","\u22fa","\u22fb","\u22fc","\u22fd","\u22fe","\u22ff",  # ; Bidi_Mirrored # Sm  [16] UP RIGHT DIAGONAL ELLIPSIS..Z NOTATION BAG MEMBERSHIP
        "\u2308",  # ; Bidi_Mirrored # Ps       LEFT CEILING
        "\u2309",  # ; Bidi_Mirrored # Pe       RIGHT CEILING
        "\u230A",  # ; Bidi_Mirrored # Ps       LEFT FLOOR
        "\u230B",  # ; Bidi_Mirrored # Pe       RIGHT FLOOR
        "\u2320","\u2321",  # ; Bidi_Mirrored # Sm   [2] TOP HALF INTEGRAL..BOTTOM HALF INTEGRAL
        "\u2329",  # ; Bidi_Mirrored # Ps       LEFT-POINTING ANGLE BRACKET
        "\u232A",  # ; Bidi_Mirrored # Pe       RIGHT-POINTING ANGLE BRACKET
        "\u2768",  # ; Bidi_Mirrored # Ps       MEDIUM LEFT PARENTHESIS ORNAMENT
        "\u2769",  # ; Bidi_Mirrored # Pe       MEDIUM RIGHT PARENTHESIS ORNAMENT
        "\u276A",  # ; Bidi_Mirrored # Ps       MEDIUM FLATTENED LEFT PARENTHESIS ORNAMENT
        "\u276B",  # ; Bidi_Mirrored # Pe       MEDIUM FLATTENED RIGHT PARENTHESIS ORNAMENT
        "\u276C",  # ; Bidi_Mirrored # Ps       MEDIUM LEFT-POINTING ANGLE BRACKET ORNAMENT
        "\u276D",  # ; Bidi_Mirrored # Pe       MEDIUM RIGHT-POINTING ANGLE BRACKET ORNAMENT
        "\u276E",  # ; Bidi_Mirrored # Ps       HEAVY LEFT-POINTING ANGLE QUOTATION MARK ORNAMENT
        "\u276F",  # ; Bidi_Mirrored # Pe       HEAVY RIGHT-POINTING ANGLE QUOTATION MARK ORNAMENT
        "\u2770",  # ; Bidi_Mirrored # Ps       HEAVY LEFT-POINTING ANGLE BRACKET ORNAMENT
        "\u2771",  # ; Bidi_Mirrored # Pe       HEAVY RIGHT-POINTING ANGLE BRACKET ORNAMENT
        "\u2772",  # ; Bidi_Mirrored # Ps       LIGHT LEFT TORTOISE SHELL BRACKET ORNAMENT
        "\u2773",  # ; Bidi_Mirrored # Pe       LIGHT RIGHT TORTOISE SHELL BRACKET ORNAMENT
        "\u2774",  # ; Bidi_Mirrored # Ps       MEDIUM LEFT CURLY BRACKET ORNAMENT
        "\u2775",  # ; Bidi_Mirrored # Pe       MEDIUM RIGHT CURLY BRACKET ORNAMENT
        "\u27C0",  # ; Bidi_Mirrored # Sm       THREE DIMENSIONAL ANGLE
        "\u27c3","\u27c4",  # ; Bidi_Mirrored # Sm   [2] OPEN SUBSET..OPEN SUPERSET
        "\u27C5",  # ; Bidi_Mirrored # Ps       LEFT S-SHAPED BAG DELIMITER
        "\u27C6",  # ; Bidi_Mirrored # Pe       RIGHT S-SHAPED BAG DELIMITER
        "\u27c8","\u27c9",  # ; Bidi_Mirrored # Sm   [2] REVERSE SOLIDUS PRECEDING SUBSET..SUPERSET PRECEDING SOLIDUS
        "\u27cb","\u27cc","\u27cd",  # ; Bidi_Mirrored # Sm   [3] MATHEMATICAL RISING DIAGONAL..MATHEMATICAL FALLING DIAGONAL
        "\u27d3","\u27d4","\u27d5","\u27d6",  # ; Bidi_Mirrored # Sm   [4] LOWER RIGHT CORNER WITH DOT..RIGHT OUTER JOIN
        "\u27dc","\u27dd","\u27de",  # ; Bidi_Mirrored # Sm   [3] LEFT MULTIMAP..LONG LEFT TACK
        "\u27e2","\u27e3","\u27e4","\u27e5",  # ; Bidi_Mirrored # Sm   [4] WHITE CONCAVE-SIDED DIAMOND WITH LEFTWARDS TICK..WHITE SQUARE WITH RIGHTWARDS TICK
        "\u27E6",  # ; Bidi_Mirrored # Ps       MATHEMATICAL LEFT WHITE SQUARE BRACKET
        "\u27E7",  # ; Bidi_Mirrored # Pe       MATHEMATICAL RIGHT WHITE SQUARE BRACKET
        "\u27E8",  # ; Bidi_Mirrored # Ps       MATHEMATICAL LEFT ANGLE BRACKET
        "\u27E9",  # ; Bidi_Mirrored # Pe       MATHEMATICAL RIGHT ANGLE BRACKET
        "\u27EA",  # ; Bidi_Mirrored # Ps       MATHEMATICAL LEFT DOUBLE ANGLE BRACKET
        "\u27EB",  # ; Bidi_Mirrored # Pe       MATHEMATICAL RIGHT DOUBLE ANGLE BRACKET
        "\u27EC",  # ; Bidi_Mirrored # Ps       MATHEMATICAL LEFT WHITE TORTOISE SHELL BRACKET
        "\u27ED",  # ; Bidi_Mirrored # Pe       MATHEMATICAL RIGHT WHITE TORTOISE SHELL BRACKET
        "\u27EE",  # ; Bidi_Mirrored # Ps       MATHEMATICAL LEFT FLATTENED PARENTHESIS
        "\u27EF",  # ; Bidi_Mirrored # Pe       MATHEMATICAL RIGHT FLATTENED PARENTHESIS
        "\u2983",  # ; Bidi_Mirrored # Ps       LEFT WHITE CURLY BRACKET
        "\u2984",  # ; Bidi_Mirrored # Pe       RIGHT WHITE CURLY BRACKET
        "\u2985",  # ; Bidi_Mirrored # Ps       LEFT WHITE PARENTHESIS
        "\u2986",  # ; Bidi_Mirrored # Pe       RIGHT WHITE PARENTHESIS
        "\u2987",  # ; Bidi_Mirrored # Ps       Z NOTATION LEFT IMAGE BRACKET
        "\u2988",  # ; Bidi_Mirrored # Pe       Z NOTATION RIGHT IMAGE BRACKET
        "\u2989",  # ; Bidi_Mirrored # Ps       Z NOTATION LEFT BINDING BRACKET
        "\u298A",  # ; Bidi_Mirrored # Pe       Z NOTATION RIGHT BINDING BRACKET
        "\u298B",  # ; Bidi_Mirrored # Ps       LEFT SQUARE BRACKET WITH UNDERBAR
        "\u298C",  # ; Bidi_Mirrored # Pe       RIGHT SQUARE BRACKET WITH UNDERBAR
        "\u298D",  # ; Bidi_Mirrored # Ps       LEFT SQUARE BRACKET WITH TICK IN TOP CORNER
        "\u298E",  # ; Bidi_Mirrored # Pe       RIGHT SQUARE BRACKET WITH TICK IN BOTTOM CORNER
        "\u298F",  # ; Bidi_Mirrored # Ps       LEFT SQUARE BRACKET WITH TICK IN BOTTOM CORNER
        "\u2990",  # ; Bidi_Mirrored # Pe       RIGHT SQUARE BRACKET WITH TICK IN TOP CORNER
        "\u2991",  # ; Bidi_Mirrored # Ps       LEFT ANGLE BRACKET WITH DOT
        "\u2992",  # ; Bidi_Mirrored # Pe       RIGHT ANGLE BRACKET WITH DOT
        "\u2993",  # ; Bidi_Mirrored # Ps       LEFT ARC LESS-THAN BRACKET
        "\u2994",  # ; Bidi_Mirrored # Pe       RIGHT ARC GREATER-THAN BRACKET
        "\u2995",  # ; Bidi_Mirrored # Ps       DOUBLE LEFT ARC GREATER-THAN BRACKET
        "\u2996",  # ; Bidi_Mirrored # Pe       DOUBLE RIGHT ARC LESS-THAN BRACKET
        "\u2997",  # ; Bidi_Mirrored # Ps       LEFT BLACK TORTOISE SHELL BRACKET
        "\u2998",  # ; Bidi_Mirrored # Pe       RIGHT BLACK TORTOISE SHELL BRACKET
        "\u299b","\u299c","\u299d","\u299e","\u299f","\u29a0","\u29a1","\u29a2","\u29a3","\u29a4","\u29a5","\u29a6","\u29a7","\u29a8","\u29a9","\u29aa","\u29ab","\u29ac","\u29ad","\u29ae","\u29af",  # ; Bidi_Mirrored # Sm  [21] MEASURED ANGLE OPENING LEFT..MEASURED ANGLE WITH OPEN ARM ENDING IN ARROW POINTING LEFT AND DOWN
        "\u29B8",  # ; Bidi_Mirrored # Sm       CIRCLED REVERSE SOLIDUS
        "\u29c0","\u29c1","\u29c2","\u29c3","\u29c4","\u29c5",  # ; Bidi_Mirrored # Sm   [6] CIRCLED LESS-THAN..SQUARED FALLING DIAGONAL SLASH
        "\u29C9",  # ; Bidi_Mirrored # Sm       TWO JOINED SQUARES
        "\u29ce","\u29cf","\u29d0","\u29d1","\u29d2",  # ; Bidi_Mirrored # Sm   [5] RIGHT TRIANGLE ABOVE LEFT TRIANGLE..BOWTIE WITH RIGHT HALF BLACK
        "\u29d4","\u29d5",  # ; Bidi_Mirrored # Sm   [2] TIMES WITH LEFT HALF BLACK..TIMES WITH RIGHT HALF BLACK
        "\u29D8",  # ; Bidi_Mirrored # Ps       LEFT WIGGLY FENCE
        "\u29D9",  # ; Bidi_Mirrored # Pe       RIGHT WIGGLY FENCE
        "\u29DA",  # ; Bidi_Mirrored # Ps       LEFT DOUBLE WIGGLY FENCE
        "\u29DB",  # ; Bidi_Mirrored # Pe       RIGHT DOUBLE WIGGLY FENCE
        "\u29DC",  # ; Bidi_Mirrored # Sm       INCOMPLETE INFINITY
        "\u29E1",  # ; Bidi_Mirrored # Sm       INCREASES AS
        "\u29e3","\u29e4","\u29e5",  # ; Bidi_Mirrored # Sm   [3] EQUALS SIGN AND SLANTED PARALLEL..IDENTICAL TO AND SLANTED PARALLEL
        "\u29e8","\u29e9",  # ; Bidi_Mirrored # Sm   [2] DOWN-POINTING TRIANGLE WITH LEFT HALF BLACK..DOWN-POINTING TRIANGLE WITH RIGHT HALF BLACK
        "\u29f4","\u29f5","\u29f6","\u29f7","\u29f8","\u29f9",  # ; Bidi_Mirrored # Sm   [6] RULE-DELAYED..BIG REVERSE SOLIDUS
        "\u29FC",  # ; Bidi_Mirrored # Ps       LEFT-POINTING CURVED ANGLE BRACKET
        "\u29FD",  # ; Bidi_Mirrored # Pe       RIGHT-POINTING CURVED ANGLE BRACKET
        "\u2a0a","\u2a0b","\u2a0c","\u2a0d","\u2a0e","\u2a0f","\u2a10","\u2a11","\u2a12","\u2a13","\u2a14","\u2a15","\u2a16","\u2a17","\u2a18","\u2a19","\u2a1a","\u2a1b","\u2a1c",  # ; Bidi_Mirrored # Sm  [19] MODULO TWO SUM..INTEGRAL WITH UNDERBAR
        "\u2a1e","\u2a1f","\u2a20","\u2a21",  # ; Bidi_Mirrored # Sm   [4] LARGE LEFT TRIANGLE OPERATOR..Z NOTATION SCHEMA PROJECTION
        "\u2A24",  # ; Bidi_Mirrored # Sm       PLUS SIGN WITH TILDE ABOVE
        "\u2A26",  # ; Bidi_Mirrored # Sm       PLUS SIGN WITH TILDE BELOW
        "\u2A29",  # ; Bidi_Mirrored # Sm       MINUS SIGN WITH COMMA ABOVE
        "\u2a2b","\u2a2c","\u2a2d","\u2a2e",  # ; Bidi_Mirrored # Sm   [4] MINUS SIGN WITH FALLING DOTS..PLUS SIGN IN RIGHT HALF CIRCLE
        "\u2a34","\u2a35",  # ; Bidi_Mirrored # Sm   [2] MULTIPLICATION SIGN IN LEFT HALF CIRCLE..MULTIPLICATION SIGN IN RIGHT HALF CIRCLE
        "\u2a3c","\u2a3d","\u2a3e",  # ; Bidi_Mirrored # Sm   [3] INTERIOR PRODUCT..Z NOTATION RELATIONAL COMPOSITION
        "\u2a57","\u2a58",  # ; Bidi_Mirrored # Sm   [2] SLOPING LARGE OR..SLOPING LARGE AND
        "\u2a64","\u2a65",  # ; Bidi_Mirrored # Sm   [2] Z NOTATION DOMAIN ANTIRESTRICTION..Z NOTATION RANGE ANTIRESTRICTION
        "\u2a6a","\u2a6b","\u2a6c","\u2a6d",  # ; Bidi_Mirrored # Sm   [4] TILDE OPERATOR WITH DOT ABOVE..CONGRUENT WITH DOT ABOVE
        "\u2a6f","\u2a70",  # ; Bidi_Mirrored # Sm   [2] ALMOST EQUAL TO WITH CIRCUMFLEX ACCENT..APPROXIMATELY EQUAL OR EQUAL TO
        "\u2a73","\u2a74",  # ; Bidi_Mirrored # Sm   [2] EQUALS SIGN ABOVE TILDE OPERATOR..DOUBLE COLON EQUAL
        "\u2a79","\u2a7a","\u2a7b","\u2a7c","\u2a7d","\u2a7e","\u2a7f","\u2a80","\u2a81","\u2a82","\u2a83","\u2a84","\u2a85","\u2a86","\u2a87","\u2a88","\u2a89","\u2a8a","\u2a8b","\u2a8c","\u2a8d","\u2a8e","\u2a8f","\u2a90","\u2a91","\u2a92","\u2a93","\u2a94","\u2a95","\u2a96","\u2a97","\u2a98","\u2a99","\u2a9a","\u2a9b","\u2a9c","\u2a9d","\u2a9e","\u2a9f","\u2aa0","\u2aa1","\u2aa2","\u2aa3",  # ; Bidi_Mirrored # Sm  [43] LESS-THAN WITH CIRCLE INSIDE..DOUBLE NESTED LESS-THAN WITH UNDERBAR
        "\u2aa6","\u2aa7","\u2aa8","\u2aa9","\u2aaa","\u2aab","\u2aac","\u2aad",  # ; Bidi_Mirrored # Sm   [8] LESS-THAN CLOSED BY CURVE..LARGER THAN OR EQUAL TO
        "\u2aaf","\u2ab0","\u2ab1","\u2ab2","\u2ab3","\u2ab4","\u2ab5","\u2ab6","\u2ab7","\u2ab8","\u2ab9","\u2aba","\u2abb","\u2abc","\u2abd","\u2abe","\u2abf","\u2ac0","\u2ac1","\u2ac2","\u2ac3","\u2ac4","\u2ac5","\u2ac6","\u2ac7","\u2ac8","\u2ac9","\u2aca","\u2acb","\u2acc","\u2acd","\u2ace","\u2acf","\u2ad0","\u2ad1","\u2ad2","\u2ad3","\u2ad4","\u2ad5","\u2ad6",  # ; Bidi_Mirrored # Sm  [40] PRECEDES ABOVE SINGLE-LINE EQUALS SIGN..SUPERSET ABOVE SUPERSET
        "\u2ADC",  # ; Bidi_Mirrored # Sm       FORKING
        "\u2ADE",  # ; Bidi_Mirrored # Sm       SHORT LEFT TACK
        "\u2ae2","\u2ae3","\u2ae4","\u2ae5","\u2ae6",  # ; Bidi_Mirrored # Sm   [5] VERTICAL BAR TRIPLE RIGHT TURNSTILE..LONG DASH FROM LEFT MEMBER OF DOUBLE VERTICAL
        "\u2aec","\u2aed","\u2aee",  # ; Bidi_Mirrored # Sm   [3] DOUBLE STROKE NOT SIGN..DOES NOT DIVIDE WITH REVERSED NEGATION SLASH
        "\u2AF3",  # ; Bidi_Mirrored # Sm       PARALLEL WITH TILDE OPERATOR
        "\u2af7","\u2af8","\u2af9","\u2afa","\u2afb",  # ; Bidi_Mirrored # Sm   [5] TRIPLE NESTED LESS-THAN..TRIPLE SOLIDUS BINARY RELATION
        "\u2AFD",  # ; Bidi_Mirrored # Sm       DOUBLE SOLIDUS OPERATOR
        "\u2E02",  # ; Bidi_Mirrored # Pi       LEFT SUBSTITUTION BRACKET
        "\u2E03",  # ; Bidi_Mirrored # Pf       RIGHT SUBSTITUTION BRACKET
        "\u2E04",  # ; Bidi_Mirrored # Pi       LEFT DOTTED SUBSTITUTION BRACKET
        "\u2E05",  # ; Bidi_Mirrored # Pf       RIGHT DOTTED SUBSTITUTION BRACKET
        "\u2E09",  # ; Bidi_Mirrored # Pi       LEFT TRANSPOSITION BRACKET
        "\u2E0A",  # ; Bidi_Mirrored # Pf       RIGHT TRANSPOSITION BRACKET
        "\u2E0C",  # ; Bidi_Mirrored # Pi       LEFT RAISED OMISSION BRACKET
        "\u2E0D",  # ; Bidi_Mirrored # Pf       RIGHT RAISED OMISSION BRACKET
        "\u2E1C",  # ; Bidi_Mirrored # Pi       LEFT LOW PARAPHRASE BRACKET
        "\u2E1D",  # ; Bidi_Mirrored # Pf       RIGHT LOW PARAPHRASE BRACKET
        "\u2E20",  # ; Bidi_Mirrored # Pi       LEFT VERTICAL BAR WITH QUILL
        "\u2E21",  # ; Bidi_Mirrored # Pf       RIGHT VERTICAL BAR WITH QUILL
        "\u2E22",  # ; Bidi_Mirrored # Ps       TOP LEFT HALF BRACKET
        "\u2E23",  # ; Bidi_Mirrored # Pe       TOP RIGHT HALF BRACKET
        "\u2E24",  # ; Bidi_Mirrored # Ps       BOTTOM LEFT HALF BRACKET
        "\u2E25",  # ; Bidi_Mirrored # Pe       BOTTOM RIGHT HALF BRACKET
        "\u2E26",  # ; Bidi_Mirrored # Ps       LEFT SIDEWAYS U BRACKET
        "\u2E27",  # ; Bidi_Mirrored # Pe       RIGHT SIDEWAYS U BRACKET
        "\u2E28",  # ; Bidi_Mirrored # Ps       LEFT DOUBLE PARENTHESIS
        "\u2E29",  # ; Bidi_Mirrored # Pe       RIGHT DOUBLE PARENTHESIS
        "\u3008",  # ; Bidi_Mirrored # Ps       LEFT ANGLE BRACKET
        "\u3009",  # ; Bidi_Mirrored # Pe       RIGHT ANGLE BRACKET
        "\u300A",  # ; Bidi_Mirrored # Ps       LEFT DOUBLE ANGLE BRACKET
        "\u300B",  # ; Bidi_Mirrored # Pe       RIGHT DOUBLE ANGLE BRACKET
        "\u300C",  # ; Bidi_Mirrored # Ps       LEFT CORNER BRACKET
        "\u300D",  # ; Bidi_Mirrored # Pe       RIGHT CORNER BRACKET
        "\u300E",  # ; Bidi_Mirrored # Ps       LEFT WHITE CORNER BRACKET
        "\u300F",  # ; Bidi_Mirrored # Pe       RIGHT WHITE CORNER BRACKET
        "\u3010",  # ; Bidi_Mirrored # Ps       LEFT BLACK LENTICULAR BRACKET
        "\u3011",  # ; Bidi_Mirrored # Pe       RIGHT BLACK LENTICULAR BRACKET
        "\u3014",  # ; Bidi_Mirrored # Ps       LEFT TORTOISE SHELL BRACKET
        "\u3015",  # ; Bidi_Mirrored # Pe       RIGHT TORTOISE SHELL BRACKET
        "\u3016",  # ; Bidi_Mirrored # Ps       LEFT WHITE LENTICULAR BRACKET
        "\u3017",  # ; Bidi_Mirrored # Pe       RIGHT WHITE LENTICULAR BRACKET
        "\u3018",  # ; Bidi_Mirrored # Ps       LEFT WHITE TORTOISE SHELL BRACKET
        "\u3019",  # ; Bidi_Mirrored # Pe       RIGHT WHITE TORTOISE SHELL BRACKET
        "\u301A",  # ; Bidi_Mirrored # Ps       LEFT WHITE SQUARE BRACKET
        "\u301B",  # ; Bidi_Mirrored # Pe       RIGHT WHITE SQUARE BRACKET
        "\uFE59",  # ; Bidi_Mirrored # Ps       SMALL LEFT PARENTHESIS
        "\uFE5A",  # ; Bidi_Mirrored # Pe       SMALL RIGHT PARENTHESIS
        "\uFE5B",  # ; Bidi_Mirrored # Ps       SMALL LEFT CURLY BRACKET
        "\uFE5C",  # ; Bidi_Mirrored # Pe       SMALL RIGHT CURLY BRACKET
        "\uFE5D",  # ; Bidi_Mirrored # Ps       SMALL LEFT TORTOISE SHELL BRACKET
        "\uFE5E",  # ; Bidi_Mirrored # Pe       SMALL RIGHT TORTOISE SHELL BRACKET
        "\ufe64","\ufe65",  # ; Bidi_Mirrored # Sm   [2] SMALL LESS-THAN SIGN..SMALL GREATER-THAN SIGN
        "\uFF08",  # ; Bidi_Mirrored # Ps       FULLWIDTH LEFT PARENTHESIS
        "\uFF09",  # ; Bidi_Mirrored # Pe       FULLWIDTH RIGHT PARENTHESIS
        "\uFF1C",  # ; Bidi_Mirrored # Sm       FULLWIDTH LESS-THAN SIGN
        "\uFF1E",  # ; Bidi_Mirrored # Sm       FULLWIDTH GREATER-THAN SIGN
        "\uFF3B",  # ; Bidi_Mirrored # Ps       FULLWIDTH LEFT SQUARE BRACKET
        "\uFF3D",  # ; Bidi_Mirrored # Pe       FULLWIDTH RIGHT SQUARE BRACKET
        "\uFF5B",  # ; Bidi_Mirrored # Ps       FULLWIDTH LEFT CURLY BRACKET
        "\uFF5D",  # ; Bidi_Mirrored # Pe       FULLWIDTH RIGHT CURLY BRACKET
        "\uFF5F",  # ; Bidi_Mirrored # Ps       FULLWIDTH LEFT WHITE PARENTHESIS
        "\uFF60",  # ; Bidi_Mirrored # Pe       FULLWIDTH RIGHT WHITE PARENTHESIS
        "\uFF62",  # ; Bidi_Mirrored # Ps       HALFWIDTH LEFT CORNER BRACKET
        "\uFF63",  # ; Bidi_Mirrored # Pe       HALFWIDTH RIGHT CORNER BRACKET
        "\u1D6DB",  # ; Bidi_Mirrored # Sm       MATHEMATICAL BOLD PARTIAL DIFFERENTIAL
        "\u1D715",  # ; Bidi_Mirrored # Sm       MATHEMATICAL ITALIC PARTIAL DIFFERENTIAL
        "\u1D74F",  # ; Bidi_Mirrored # Sm       MATHEMATICAL BOLD ITALIC PARTIAL DIFFERENTIAL
        "\u1D789",  # ; Bidi_Mirrored # Sm       MATHEMATICAL SANS-SERIF BOLD PARTIAL DIFFERENTIAL
        "\u1D7C3",  # ; Bidi_Mirrored # Sm       MATHEMATICAL SANS-SERIF BOLD ITALIC PARTIAL DIFFERENTIAL
    ]
    test_data.each do |string|
      assert @validator.valid_encoding?(string), "U10_DerivedBinaryProperties: #{string}"
      assert string.force_encoding("UTF-8").valid_encoding?, "U10_DerivedBinaryProperties: #{string}" if @vercheck
    end
  end

end

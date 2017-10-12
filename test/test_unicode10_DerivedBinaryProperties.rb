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
        "\d0028",  # ; Bidi_Mirrored # Ps       LEFT PARENTHESIS
        "\d0029",  # ; Bidi_Mirrored # Pe       RIGHT PARENTHESIS
        "\d003C",  # ; Bidi_Mirrored # Sm       LESS-THAN SIGN
        "\d003E",  # ; Bidi_Mirrored # Sm       GREATER-THAN SIGN
        "\d005B",  # ; Bidi_Mirrored # Ps       LEFT SQUARE BRACKET
        "\d005D",  # ; Bidi_Mirrored # Pe       RIGHT SQUARE BRACKET
        "\d007B",  # ; Bidi_Mirrored # Ps       LEFT CURLY BRACKET
        "\d007D",  # ; Bidi_Mirrored # Pe       RIGHT CURLY BRACKET
        "\d00AB",  # ; Bidi_Mirrored # Pi       LEFT-POINTING DOUBLE ANGLE QUOTATION MARK
        "\d00BB",  # ; Bidi_Mirrored # Pf       RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK
        "\d0F3A",  # ; Bidi_Mirrored # Ps       TIBETAN MARK GUG RTAGS GYON
        "\d0F3B",  # ; Bidi_Mirrored # Pe       TIBETAN MARK GUG RTAGS GYAS
        "\d0F3C",  # ; Bidi_Mirrored # Ps       TIBETAN MARK ANG KHANG GYON
        "\d0F3D",  # ; Bidi_Mirrored # Pe       TIBETAN MARK ANG KHANG GYAS
        "\d169B",  # ; Bidi_Mirrored # Ps       OGHAM FEATHER MARK
        "\d169C",  # ; Bidi_Mirrored # Pe       OGHAM REVERSED FEATHER MARK
        "\d2039",  # ; Bidi_Mirrored # Pi       SINGLE LEFT-POINTING ANGLE QUOTATION MARK
        "\d203A",  # ; Bidi_Mirrored # Pf       SINGLE RIGHT-POINTING ANGLE QUOTATION MARK
        "\d2045",  # ; Bidi_Mirrored # Ps       LEFT SQUARE BRACKET WITH QUILL
        "\d2046",  # ; Bidi_Mirrored # Pe       RIGHT SQUARE BRACKET WITH QUILL
        "\d207D",  # ; Bidi_Mirrored # Ps       SUPERSCRIPT LEFT PARENTHESIS
        "\d207E",  # ; Bidi_Mirrored # Pe       SUPERSCRIPT RIGHT PARENTHESIS
        "\d208D",  # ; Bidi_Mirrored # Ps       SUBSCRIPT LEFT PARENTHESIS
        "\d208E",  # ; Bidi_Mirrored # Pe       SUBSCRIPT RIGHT PARENTHESIS
        "\d2140",  # ; Bidi_Mirrored # Sm       DOUBLE-STRUCK N-ARY SUMMATION
        "\d2201","\d2202","\d2203","\d2204",  # ; Bidi_Mirrored # Sm   [4] COMPLEMENT..THERE DOES NOT EXIST
        "\d2208","\d2209","\d220a","\d220b","\d220c","\d220d",  # ; Bidi_Mirrored # Sm   [6] ELEMENT OF..SMALL CONTAINS AS MEMBER
        "\d2211",  # ; Bidi_Mirrored # Sm       N-ARY SUMMATION
        "\d2215","\d2216",  # ; Bidi_Mirrored # Sm   [2] DIVISION SLASH..SET MINUS
        "\d221a","\d221b","\d221c","\d221d",  # ; Bidi_Mirrored # Sm   [4] SQUARE ROOT..PROPORTIONAL TO
        "\d221f","\d2220","\d2221","\d2222",  # ; Bidi_Mirrored # Sm   [4] RIGHT ANGLE..SPHERICAL ANGLE
        "\d2224",  # ; Bidi_Mirrored # Sm       DOES NOT DIVIDE
        "\d2226",  # ; Bidi_Mirrored # Sm       NOT PARALLEL TO
        "\d222b","\d222c","\d222d","\d222e","\d222f","\d2230","\d2231","\d2232","\d2233",  # ; Bidi_Mirrored # Sm   [9] INTEGRAL..ANTICLOCKWISE CONTOUR INTEGRAL
        "\d2239",  # ; Bidi_Mirrored # Sm       EXCESS
        "\d223b","\d223c","\d223d","\d223e","\d223f","\d2240","\d2241","\d2242","\d2243","\d2244","\d2245","\d2246","\d2247","\d2248","\d2249","\d224a","\d224b","\d224c",  # ; Bidi_Mirrored # Sm  [18] HOMOTHETIC..ALL EQUAL TO
        "\d2252","\d2253","\d2254","\d2255",  # ; Bidi_Mirrored # Sm   [4] APPROXIMATELY EQUAL TO OR THE IMAGE OF..EQUALS COLON
        "\d225f","\d2260",  # ; Bidi_Mirrored # Sm   [2] QUESTIONED EQUAL TO..NOT EQUAL TO
        "\d2262",  # ; Bidi_Mirrored # Sm       NOT IDENTICAL TO
        "\d2264","\d2265","\d2266","\d2267","\d2268","\d2269","\d226a","\d226b",  # ; Bidi_Mirrored # Sm   [8] LESS-THAN OR EQUAL TO..MUCH GREATER-THAN
        "\d226e","\d226f","\d2270","\d2271","\d2272","\d2273","\d2274","\d2275","\d2276","\d2277","\d2278","\d2279","\d227a","\d227b","\d227c","\d227d","\d227e","\d227f","\d2280","\d2281","\d2282","\d2283","\d2284","\d2285","\d2286","\d2287","\d2288","\d2289","\d228a","\d228b","\d228c",  # ; Bidi_Mirrored # Sm  [31] NOT LESS-THAN..MULTISET
        "\d228f","\d2290","\d2291","\d2292",  # ; Bidi_Mirrored # Sm   [4] SQUARE IMAGE OF..SQUARE ORIGINAL OF OR EQUAL TO
        "\d2298",  # ; Bidi_Mirrored # Sm       CIRCLED DIVISION SLASH
        "\d22a2","\d22a3",  # ; Bidi_Mirrored # Sm   [2] RIGHT TACK..LEFT TACK
        "\d22a6","\d22a7","\d22a8","\d22a9","\d22aa","\d22ab","\d22ac","\d22ad","\d22ae","\d22af","\d22b0","\d22b1","\d22b2","\d22b3","\d22b4","\d22b5","\d22b6","\d22b7","\d22b8",  # ; Bidi_Mirrored # Sm  [19] ASSERTION..MULTIMAP
        "\d22be","\d22bf",  # ; Bidi_Mirrored # Sm   [2] RIGHT ANGLE WITH ARC..RIGHT TRIANGLE
        "\d22c9","\d22ca","\d22cb","\d22cc","\d22cd",  # ; Bidi_Mirrored # Sm   [5] LEFT NORMAL FACTOR SEMIDIRECT PRODUCT..REVERSED TILDE EQUALS
        "\d22d0","\d22d1",  # ; Bidi_Mirrored # Sm   [2] DOUBLE SUBSET..DOUBLE SUPERSET
        "\d22d6","\d22d7","\d22d8","\d22d9","\d22da","\d22db","\d22dc","\d22dd","\d22de","\d22df","\d22e0","\d22e1","\d22e2","\d22e3","\d22e4","\d22e5","\d22e6","\d22e7","\d22e8","\d22e9","\d22ea","\d22eb","\d22ec","\d22ed",  # ; Bidi_Mirrored # Sm  [24] LESS-THAN WITH DOT..DOES NOT CONTAIN AS NORMAL SUBGROUP OR EQUAL
        "\d22f0","\d22f1","\d22f2","\d22f3","\d22f4","\d22f5","\d22f6","\d22f7","\d22f8","\d22f9","\d22fa","\d22fb","\d22fc","\d22fd","\d22fe","\d22ff",  # ; Bidi_Mirrored # Sm  [16] UP RIGHT DIAGONAL ELLIPSIS..Z NOTATION BAG MEMBERSHIP
        "\d2308",  # ; Bidi_Mirrored # Ps       LEFT CEILING
        "\d2309",  # ; Bidi_Mirrored # Pe       RIGHT CEILING
        "\d230A",  # ; Bidi_Mirrored # Ps       LEFT FLOOR
        "\d230B",  # ; Bidi_Mirrored # Pe       RIGHT FLOOR
        "\d2320","\d2321",  # ; Bidi_Mirrored # Sm   [2] TOP HALF INTEGRAL..BOTTOM HALF INTEGRAL
        "\d2329",  # ; Bidi_Mirrored # Ps       LEFT-POINTING ANGLE BRACKET
        "\d232A",  # ; Bidi_Mirrored # Pe       RIGHT-POINTING ANGLE BRACKET
        "\d2768",  # ; Bidi_Mirrored # Ps       MEDIUM LEFT PARENTHESIS ORNAMENT
        "\d2769",  # ; Bidi_Mirrored # Pe       MEDIUM RIGHT PARENTHESIS ORNAMENT
        "\d276A",  # ; Bidi_Mirrored # Ps       MEDIUM FLATTENED LEFT PARENTHESIS ORNAMENT
        "\d276B",  # ; Bidi_Mirrored # Pe       MEDIUM FLATTENED RIGHT PARENTHESIS ORNAMENT
        "\d276C",  # ; Bidi_Mirrored # Ps       MEDIUM LEFT-POINTING ANGLE BRACKET ORNAMENT
        "\d276D",  # ; Bidi_Mirrored # Pe       MEDIUM RIGHT-POINTING ANGLE BRACKET ORNAMENT
        "\d276E",  # ; Bidi_Mirrored # Ps       HEAVY LEFT-POINTING ANGLE QUOTATION MARK ORNAMENT
        "\d276F",  # ; Bidi_Mirrored # Pe       HEAVY RIGHT-POINTING ANGLE QUOTATION MARK ORNAMENT
        "\d2770",  # ; Bidi_Mirrored # Ps       HEAVY LEFT-POINTING ANGLE BRACKET ORNAMENT
        "\d2771",  # ; Bidi_Mirrored # Pe       HEAVY RIGHT-POINTING ANGLE BRACKET ORNAMENT
        "\d2772",  # ; Bidi_Mirrored # Ps       LIGHT LEFT TORTOISE SHELL BRACKET ORNAMENT
        "\d2773",  # ; Bidi_Mirrored # Pe       LIGHT RIGHT TORTOISE SHELL BRACKET ORNAMENT
        "\d2774",  # ; Bidi_Mirrored # Ps       MEDIUM LEFT CURLY BRACKET ORNAMENT
        "\d2775",  # ; Bidi_Mirrored # Pe       MEDIUM RIGHT CURLY BRACKET ORNAMENT
        "\d27C0",  # ; Bidi_Mirrored # Sm       THREE DIMENSIONAL ANGLE
        "\d27c3","\d27c4",  # ; Bidi_Mirrored # Sm   [2] OPEN SUBSET..OPEN SUPERSET
        "\d27C5",  # ; Bidi_Mirrored # Ps       LEFT S-SHAPED BAG DELIMITER
        "\d27C6",  # ; Bidi_Mirrored # Pe       RIGHT S-SHAPED BAG DELIMITER
        "\d27c8","\d27c9",  # ; Bidi_Mirrored # Sm   [2] REVERSE SOLIDUS PRECEDING SUBSET..SUPERSET PRECEDING SOLIDUS
        "\d27cb","\d27cc","\d27cd",  # ; Bidi_Mirrored # Sm   [3] MATHEMATICAL RISING DIAGONAL..MATHEMATICAL FALLING DIAGONAL
        "\d27d3","\d27d4","\d27d5","\d27d6",  # ; Bidi_Mirrored # Sm   [4] LOWER RIGHT CORNER WITH DOT..RIGHT OUTER JOIN
        "\d27dc","\d27dd","\d27de",  # ; Bidi_Mirrored # Sm   [3] LEFT MULTIMAP..LONG LEFT TACK
        "\d27e2","\d27e3","\d27e4","\d27e5",  # ; Bidi_Mirrored # Sm   [4] WHITE CONCAVE-SIDED DIAMOND WITH LEFTWARDS TICK..WHITE SQUARE WITH RIGHTWARDS TICK
        "\d27E6",  # ; Bidi_Mirrored # Ps       MATHEMATICAL LEFT WHITE SQUARE BRACKET
        "\d27E7",  # ; Bidi_Mirrored # Pe       MATHEMATICAL RIGHT WHITE SQUARE BRACKET
        "\d27E8",  # ; Bidi_Mirrored # Ps       MATHEMATICAL LEFT ANGLE BRACKET
        "\d27E9",  # ; Bidi_Mirrored # Pe       MATHEMATICAL RIGHT ANGLE BRACKET
        "\d27EA",  # ; Bidi_Mirrored # Ps       MATHEMATICAL LEFT DOUBLE ANGLE BRACKET
        "\d27EB",  # ; Bidi_Mirrored # Pe       MATHEMATICAL RIGHT DOUBLE ANGLE BRACKET
        "\d27EC",  # ; Bidi_Mirrored # Ps       MATHEMATICAL LEFT WHITE TORTOISE SHELL BRACKET
        "\d27ED",  # ; Bidi_Mirrored # Pe       MATHEMATICAL RIGHT WHITE TORTOISE SHELL BRACKET
        "\d27EE",  # ; Bidi_Mirrored # Ps       MATHEMATICAL LEFT FLATTENED PARENTHESIS
        "\d27EF",  # ; Bidi_Mirrored # Pe       MATHEMATICAL RIGHT FLATTENED PARENTHESIS
        "\d2983",  # ; Bidi_Mirrored # Ps       LEFT WHITE CURLY BRACKET
        "\d2984",  # ; Bidi_Mirrored # Pe       RIGHT WHITE CURLY BRACKET
        "\d2985",  # ; Bidi_Mirrored # Ps       LEFT WHITE PARENTHESIS
        "\d2986",  # ; Bidi_Mirrored # Pe       RIGHT WHITE PARENTHESIS
        "\d2987",  # ; Bidi_Mirrored # Ps       Z NOTATION LEFT IMAGE BRACKET
        "\d2988",  # ; Bidi_Mirrored # Pe       Z NOTATION RIGHT IMAGE BRACKET
        "\d2989",  # ; Bidi_Mirrored # Ps       Z NOTATION LEFT BINDING BRACKET
        "\d298A",  # ; Bidi_Mirrored # Pe       Z NOTATION RIGHT BINDING BRACKET
        "\d298B",  # ; Bidi_Mirrored # Ps       LEFT SQUARE BRACKET WITH UNDERBAR
        "\d298C",  # ; Bidi_Mirrored # Pe       RIGHT SQUARE BRACKET WITH UNDERBAR
        "\d298D",  # ; Bidi_Mirrored # Ps       LEFT SQUARE BRACKET WITH TICK IN TOP CORNER
        "\d298E",  # ; Bidi_Mirrored # Pe       RIGHT SQUARE BRACKET WITH TICK IN BOTTOM CORNER
        "\d298F",  # ; Bidi_Mirrored # Ps       LEFT SQUARE BRACKET WITH TICK IN BOTTOM CORNER
        "\d2990",  # ; Bidi_Mirrored # Pe       RIGHT SQUARE BRACKET WITH TICK IN TOP CORNER
        "\d2991",  # ; Bidi_Mirrored # Ps       LEFT ANGLE BRACKET WITH DOT
        "\d2992",  # ; Bidi_Mirrored # Pe       RIGHT ANGLE BRACKET WITH DOT
        "\d2993",  # ; Bidi_Mirrored # Ps       LEFT ARC LESS-THAN BRACKET
        "\d2994",  # ; Bidi_Mirrored # Pe       RIGHT ARC GREATER-THAN BRACKET
        "\d2995",  # ; Bidi_Mirrored # Ps       DOUBLE LEFT ARC GREATER-THAN BRACKET
        "\d2996",  # ; Bidi_Mirrored # Pe       DOUBLE RIGHT ARC LESS-THAN BRACKET
        "\d2997",  # ; Bidi_Mirrored # Ps       LEFT BLACK TORTOISE SHELL BRACKET
        "\d2998",  # ; Bidi_Mirrored # Pe       RIGHT BLACK TORTOISE SHELL BRACKET
        "\d299b","\d299c","\d299d","\d299e","\d299f","\d29a0","\d29a1","\d29a2","\d29a3","\d29a4","\d29a5","\d29a6","\d29a7","\d29a8","\d29a9","\d29aa","\d29ab","\d29ac","\d29ad","\d29ae","\d29af",  # ; Bidi_Mirrored # Sm  [21] MEASURED ANGLE OPENING LEFT..MEASURED ANGLE WITH OPEN ARM ENDING IN ARROW POINTING LEFT AND DOWN
        "\d29B8",  # ; Bidi_Mirrored # Sm       CIRCLED REVERSE SOLIDUS
        "\d29c0","\d29c1","\d29c2","\d29c3","\d29c4","\d29c5",  # ; Bidi_Mirrored # Sm   [6] CIRCLED LESS-THAN..SQUARED FALLING DIAGONAL SLASH
        "\d29C9",  # ; Bidi_Mirrored # Sm       TWO JOINED SQUARES
        "\d29ce","\d29cf","\d29d0","\d29d1","\d29d2",  # ; Bidi_Mirrored # Sm   [5] RIGHT TRIANGLE ABOVE LEFT TRIANGLE..BOWTIE WITH RIGHT HALF BLACK
        "\d29d4","\d29d5",  # ; Bidi_Mirrored # Sm   [2] TIMES WITH LEFT HALF BLACK..TIMES WITH RIGHT HALF BLACK
        "\d29D8",  # ; Bidi_Mirrored # Ps       LEFT WIGGLY FENCE
        "\d29D9",  # ; Bidi_Mirrored # Pe       RIGHT WIGGLY FENCE
        "\d29DA",  # ; Bidi_Mirrored # Ps       LEFT DOUBLE WIGGLY FENCE
        "\d29DB",  # ; Bidi_Mirrored # Pe       RIGHT DOUBLE WIGGLY FENCE
        "\d29DC",  # ; Bidi_Mirrored # Sm       INCOMPLETE INFINITY
        "\d29E1",  # ; Bidi_Mirrored # Sm       INCREASES AS
        "\d29e3","\d29e4","\d29e5",  # ; Bidi_Mirrored # Sm   [3] EQUALS SIGN AND SLANTED PARALLEL..IDENTICAL TO AND SLANTED PARALLEL
        "\d29e8","\d29e9",  # ; Bidi_Mirrored # Sm   [2] DOWN-POINTING TRIANGLE WITH LEFT HALF BLACK..DOWN-POINTING TRIANGLE WITH RIGHT HALF BLACK
        "\d29f4","\d29f5","\d29f6","\d29f7","\d29f8","\d29f9",  # ; Bidi_Mirrored # Sm   [6] RULE-DELAYED..BIG REVERSE SOLIDUS
        "\d29FC",  # ; Bidi_Mirrored # Ps       LEFT-POINTING CURVED ANGLE BRACKET
        "\d29FD",  # ; Bidi_Mirrored # Pe       RIGHT-POINTING CURVED ANGLE BRACKET
        "\d2a0a","\d2a0b","\d2a0c","\d2a0d","\d2a0e","\d2a0f","\d2a10","\d2a11","\d2a12","\d2a13","\d2a14","\d2a15","\d2a16","\d2a17","\d2a18","\d2a19","\d2a1a","\d2a1b","\d2a1c",  # ; Bidi_Mirrored # Sm  [19] MODULO TWO SUM..INTEGRAL WITH UNDERBAR
        "\d2a1e","\d2a1f","\d2a20","\d2a21",  # ; Bidi_Mirrored # Sm   [4] LARGE LEFT TRIANGLE OPERATOR..Z NOTATION SCHEMA PROJECTION
        "\d2A24",  # ; Bidi_Mirrored # Sm       PLUS SIGN WITH TILDE ABOVE
        "\d2A26",  # ; Bidi_Mirrored # Sm       PLUS SIGN WITH TILDE BELOW
        "\d2A29",  # ; Bidi_Mirrored # Sm       MINUS SIGN WITH COMMA ABOVE
        "\d2a2b","\d2a2c","\d2a2d","\d2a2e",  # ; Bidi_Mirrored # Sm   [4] MINUS SIGN WITH FALLING DOTS..PLUS SIGN IN RIGHT HALF CIRCLE
        "\d2a34","\d2a35",  # ; Bidi_Mirrored # Sm   [2] MULTIPLICATION SIGN IN LEFT HALF CIRCLE..MULTIPLICATION SIGN IN RIGHT HALF CIRCLE
        "\d2a3c","\d2a3d","\d2a3e",  # ; Bidi_Mirrored # Sm   [3] INTERIOR PRODUCT..Z NOTATION RELATIONAL COMPOSITION
        "\d2a57","\d2a58",  # ; Bidi_Mirrored # Sm   [2] SLOPING LARGE OR..SLOPING LARGE AND
        "\d2a64","\d2a65",  # ; Bidi_Mirrored # Sm   [2] Z NOTATION DOMAIN ANTIRESTRICTION..Z NOTATION RANGE ANTIRESTRICTION
        "\d2a6a","\d2a6b","\d2a6c","\d2a6d",  # ; Bidi_Mirrored # Sm   [4] TILDE OPERATOR WITH DOT ABOVE..CONGRUENT WITH DOT ABOVE
        "\d2a6f","\d2a70",  # ; Bidi_Mirrored # Sm   [2] ALMOST EQUAL TO WITH CIRCUMFLEX ACCENT..APPROXIMATELY EQUAL OR EQUAL TO
        "\d2a73","\d2a74",  # ; Bidi_Mirrored # Sm   [2] EQUALS SIGN ABOVE TILDE OPERATOR..DOUBLE COLON EQUAL
        "\d2a79","\d2a7a","\d2a7b","\d2a7c","\d2a7d","\d2a7e","\d2a7f","\d2a80","\d2a81","\d2a82","\d2a83","\d2a84","\d2a85","\d2a86","\d2a87","\d2a88","\d2a89","\d2a8a","\d2a8b","\d2a8c","\d2a8d","\d2a8e","\d2a8f","\d2a90","\d2a91","\d2a92","\d2a93","\d2a94","\d2a95","\d2a96","\d2a97","\d2a98","\d2a99","\d2a9a","\d2a9b","\d2a9c","\d2a9d","\d2a9e","\d2a9f","\d2aa0","\d2aa1","\d2aa2","\d2aa3",  # ; Bidi_Mirrored # Sm  [43] LESS-THAN WITH CIRCLE INSIDE..DOUBLE NESTED LESS-THAN WITH UNDERBAR
        "\d2aa6","\d2aa7","\d2aa8","\d2aa9","\d2aaa","\d2aab","\d2aac","\d2aad",  # ; Bidi_Mirrored # Sm   [8] LESS-THAN CLOSED BY CURVE..LARGER THAN OR EQUAL TO
        "\d2aaf","\d2ab0","\d2ab1","\d2ab2","\d2ab3","\d2ab4","\d2ab5","\d2ab6","\d2ab7","\d2ab8","\d2ab9","\d2aba","\d2abb","\d2abc","\d2abd","\d2abe","\d2abf","\d2ac0","\d2ac1","\d2ac2","\d2ac3","\d2ac4","\d2ac5","\d2ac6","\d2ac7","\d2ac8","\d2ac9","\d2aca","\d2acb","\d2acc","\d2acd","\d2ace","\d2acf","\d2ad0","\d2ad1","\d2ad2","\d2ad3","\d2ad4","\d2ad5","\d2ad6",  # ; Bidi_Mirrored # Sm  [40] PRECEDES ABOVE SINGLE-LINE EQUALS SIGN..SUPERSET ABOVE SUPERSET
        "\d2ADC",  # ; Bidi_Mirrored # Sm       FORKING
        "\d2ADE",  # ; Bidi_Mirrored # Sm       SHORT LEFT TACK
        "\d2ae2","\d2ae3","\d2ae4","\d2ae5","\d2ae6",  # ; Bidi_Mirrored # Sm   [5] VERTICAL BAR TRIPLE RIGHT TURNSTILE..LONG DASH FROM LEFT MEMBER OF DOUBLE VERTICAL
        "\d2aec","\d2aed","\d2aee",  # ; Bidi_Mirrored # Sm   [3] DOUBLE STROKE NOT SIGN..DOES NOT DIVIDE WITH REVERSED NEGATION SLASH
        "\d2AF3",  # ; Bidi_Mirrored # Sm       PARALLEL WITH TILDE OPERATOR
        "\d2af7","\d2af8","\d2af9","\d2afa","\d2afb",  # ; Bidi_Mirrored # Sm   [5] TRIPLE NESTED LESS-THAN..TRIPLE SOLIDUS BINARY RELATION
        "\d2AFD",  # ; Bidi_Mirrored # Sm       DOUBLE SOLIDUS OPERATOR
        "\d2E02",  # ; Bidi_Mirrored # Pi       LEFT SUBSTITUTION BRACKET
        "\d2E03",  # ; Bidi_Mirrored # Pf       RIGHT SUBSTITUTION BRACKET
        "\d2E04",  # ; Bidi_Mirrored # Pi       LEFT DOTTED SUBSTITUTION BRACKET
        "\d2E05",  # ; Bidi_Mirrored # Pf       RIGHT DOTTED SUBSTITUTION BRACKET
        "\d2E09",  # ; Bidi_Mirrored # Pi       LEFT TRANSPOSITION BRACKET
        "\d2E0A",  # ; Bidi_Mirrored # Pf       RIGHT TRANSPOSITION BRACKET
        "\d2E0C",  # ; Bidi_Mirrored # Pi       LEFT RAISED OMISSION BRACKET
        "\d2E0D",  # ; Bidi_Mirrored # Pf       RIGHT RAISED OMISSION BRACKET
        "\d2E1C",  # ; Bidi_Mirrored # Pi       LEFT LOW PARAPHRASE BRACKET
        "\d2E1D",  # ; Bidi_Mirrored # Pf       RIGHT LOW PARAPHRASE BRACKET
        "\d2E20",  # ; Bidi_Mirrored # Pi       LEFT VERTICAL BAR WITH QUILL
        "\d2E21",  # ; Bidi_Mirrored # Pf       RIGHT VERTICAL BAR WITH QUILL
        "\d2E22",  # ; Bidi_Mirrored # Ps       TOP LEFT HALF BRACKET
        "\d2E23",  # ; Bidi_Mirrored # Pe       TOP RIGHT HALF BRACKET
        "\d2E24",  # ; Bidi_Mirrored # Ps       BOTTOM LEFT HALF BRACKET
        "\d2E25",  # ; Bidi_Mirrored # Pe       BOTTOM RIGHT HALF BRACKET
        "\d2E26",  # ; Bidi_Mirrored # Ps       LEFT SIDEWAYS U BRACKET
        "\d2E27",  # ; Bidi_Mirrored # Pe       RIGHT SIDEWAYS U BRACKET
        "\d2E28",  # ; Bidi_Mirrored # Ps       LEFT DOUBLE PARENTHESIS
        "\d2E29",  # ; Bidi_Mirrored # Pe       RIGHT DOUBLE PARENTHESIS
        "\d3008",  # ; Bidi_Mirrored # Ps       LEFT ANGLE BRACKET
        "\d3009",  # ; Bidi_Mirrored # Pe       RIGHT ANGLE BRACKET
        "\d300A",  # ; Bidi_Mirrored # Ps       LEFT DOUBLE ANGLE BRACKET
        "\d300B",  # ; Bidi_Mirrored # Pe       RIGHT DOUBLE ANGLE BRACKET
        "\d300C",  # ; Bidi_Mirrored # Ps       LEFT CORNER BRACKET
        "\d300D",  # ; Bidi_Mirrored # Pe       RIGHT CORNER BRACKET
        "\d300E",  # ; Bidi_Mirrored # Ps       LEFT WHITE CORNER BRACKET
        "\d300F",  # ; Bidi_Mirrored # Pe       RIGHT WHITE CORNER BRACKET
        "\d3010",  # ; Bidi_Mirrored # Ps       LEFT BLACK LENTICULAR BRACKET
        "\d3011",  # ; Bidi_Mirrored # Pe       RIGHT BLACK LENTICULAR BRACKET
        "\d3014",  # ; Bidi_Mirrored # Ps       LEFT TORTOISE SHELL BRACKET
        "\d3015",  # ; Bidi_Mirrored # Pe       RIGHT TORTOISE SHELL BRACKET
        "\d3016",  # ; Bidi_Mirrored # Ps       LEFT WHITE LENTICULAR BRACKET
        "\d3017",  # ; Bidi_Mirrored # Pe       RIGHT WHITE LENTICULAR BRACKET
        "\d3018",  # ; Bidi_Mirrored # Ps       LEFT WHITE TORTOISE SHELL BRACKET
        "\d3019",  # ; Bidi_Mirrored # Pe       RIGHT WHITE TORTOISE SHELL BRACKET
        "\d301A",  # ; Bidi_Mirrored # Ps       LEFT WHITE SQUARE BRACKET
        "\d301B",  # ; Bidi_Mirrored # Pe       RIGHT WHITE SQUARE BRACKET
        "\dFE59",  # ; Bidi_Mirrored # Ps       SMALL LEFT PARENTHESIS
        "\dFE5A",  # ; Bidi_Mirrored # Pe       SMALL RIGHT PARENTHESIS
        "\dFE5B",  # ; Bidi_Mirrored # Ps       SMALL LEFT CURLY BRACKET
        "\dFE5C",  # ; Bidi_Mirrored # Pe       SMALL RIGHT CURLY BRACKET
        "\dFE5D",  # ; Bidi_Mirrored # Ps       SMALL LEFT TORTOISE SHELL BRACKET
        "\dFE5E",  # ; Bidi_Mirrored # Pe       SMALL RIGHT TORTOISE SHELL BRACKET
        "\dfe64","\dfe65",  # ; Bidi_Mirrored # Sm   [2] SMALL LESS-THAN SIGN..SMALL GREATER-THAN SIGN
        "\dFF08",  # ; Bidi_Mirrored # Ps       FULLWIDTH LEFT PARENTHESIS
        "\dFF09",  # ; Bidi_Mirrored # Pe       FULLWIDTH RIGHT PARENTHESIS
        "\dFF1C",  # ; Bidi_Mirrored # Sm       FULLWIDTH LESS-THAN SIGN
        "\dFF1E",  # ; Bidi_Mirrored # Sm       FULLWIDTH GREATER-THAN SIGN
        "\dFF3B",  # ; Bidi_Mirrored # Ps       FULLWIDTH LEFT SQUARE BRACKET
        "\dFF3D",  # ; Bidi_Mirrored # Pe       FULLWIDTH RIGHT SQUARE BRACKET
        "\dFF5B",  # ; Bidi_Mirrored # Ps       FULLWIDTH LEFT CURLY BRACKET
        "\dFF5D",  # ; Bidi_Mirrored # Pe       FULLWIDTH RIGHT CURLY BRACKET
        "\dFF5F",  # ; Bidi_Mirrored # Ps       FULLWIDTH LEFT WHITE PARENTHESIS
        "\dFF60",  # ; Bidi_Mirrored # Pe       FULLWIDTH RIGHT WHITE PARENTHESIS
        "\dFF62",  # ; Bidi_Mirrored # Ps       HALFWIDTH LEFT CORNER BRACKET
        "\dFF63",  # ; Bidi_Mirrored # Pe       HALFWIDTH RIGHT CORNER BRACKET
        "\d1D6DB",  # ; Bidi_Mirrored # Sm       MATHEMATICAL BOLD PARTIAL DIFFERENTIAL
        "\d1D715",  # ; Bidi_Mirrored # Sm       MATHEMATICAL ITALIC PARTIAL DIFFERENTIAL
        "\d1D74F",  # ; Bidi_Mirrored # Sm       MATHEMATICAL BOLD ITALIC PARTIAL DIFFERENTIAL
        "\d1D789",  # ; Bidi_Mirrored # Sm       MATHEMATICAL SANS-SERIF BOLD PARTIAL DIFFERENTIAL
        "\d1D7C3",  # ; Bidi_Mirrored # Sm       MATHEMATICAL SANS-SERIF BOLD ITALIC PARTIAL DIFFERENTIAL
    ]
    test_data.each do |string|
      assert @validator.valid_encoding?(string), "U10_DerivedBinaryProperties: #{string}"
      assert string.force_encoding("UTF-8").valid_encoding?, "U10_DerivedBinaryProperties: #{string}" if @vercheck
    end
  end

end

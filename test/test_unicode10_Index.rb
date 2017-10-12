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
class TestUnicode10Index < Test::Unit::TestCase
  #
  def setup
    @validator = UTF8::Validator.new
    @vercheck = ((RUBY_VERSION =~ /1.9/) or (RUBY_VERSION =~ /2./)) ? true : false
  end

  #
  def teardown
    @validator = nil
  end

  def test_unicode10_Index
    test_data = [
    "\d00C1",  # A WITH ACUTE, LATIN CAPITAL LETTER
    "\d00E1",  # A WITH ACUTE, LATIN SMALL LETTER
    "\d0103",  # A WITH BREVE, LATIN SMALL LETTER
    "\d01CE",  # A WITH CARON, LATIN SMALL LETTER
    "\d00C2",  # A WITH CIRCUMFLEX, LATIN CAPITAL LETTER
    "\d00E2",  # A WITH CIRCUMFLEX, LATIN SMALL LETTER
    "\d00C4",  # A WITH DIAERESIS, LATIN CAPITAL LETTER
    "\d00E4",  # A WITH DIAERESIS, LATIN SMALL LETTER
    "\d0227",  # A WITH DOT ABOVE, LATIN SMALL LETTER
    "\d1EA1",  # A WITH DOT BELOW, LATIN SMALL LETTER
    "\d0201",  # A WITH DOUBLE GRAVE, LATIN SMALL LETTER
    "\d00C0",  # A WITH GRAVE, LATIN CAPITAL LETTER
    "\d00E0",  # A WITH GRAVE, LATIN SMALL LETTER
    "\d1EA3",  # A WITH HOOK ABOVE, LATIN SMALL LETTER
    "\d0203",  # A WITH INVERTED BREVE, LATIN SMALL LETTER
    "\d0101",  # A WITH MACRON, LATIN SMALL LETTER
    "\d0105",  # A WITH OGONEK, LATIN SMALL LETTER
    "\d1E9A",  # A WITH RIGHT HALF RING, LATIN SMALL LETTER
    "\d00C5",  # A WITH RING ABOVE, LATIN CAPITAL LETTER
    "\d00E5",  # A WITH RING ABOVE, LATIN SMALL LETTER
    "\d1E01",  # A WITH RING BELOW, LATIN SMALL LETTER
    "\d023A",  # A WITH STROKE, LATIN CAPITAL LETTER
    "\d00C3",  # A WITH TILDE, LATIN CAPITAL LETTER
    "\d00E3",  # A WITH TILDE, LATIN SMALL LETTER
    "\d0363",  # A, COMBINING LATIN SMALL LETTER
    "\d1D00",  # A, LATIN LETTER SMALL CAPITAL
    "\d0251",  # a, latin small letter script
    "\d0250",  # A, LATIN SMALL LETTER TURNED
    "\d055F",  # ABBREVIATION MARK, ARMENIAN
    "\d070F",  # ABBREVIATION MARK, SYRIAC
    "\d0970",  # ABBREVIATION SIGN, DEVANAGARI
    "\d3371",  # Abbreviations, Squared Latin
    "\d18B0",  # Aboriginal Syllabics Extended, Unified Canadian
    "\d1400",  # Aboriginal Syllabics, Unified Canadian
    "\d0315",  # ABOVE RIGHT, COMBINING COMMA
    "\d0358",  # ABOVE RIGHT, COMBINING DOT
    "\d0312",  # above, cedilla
    "\d034C",  # ABOVE, COMBINING ALMOST EQUAL TO
    "\d20D4",  # ABOVE, COMBINING ANTICLOCKWISE ARROW
    "\d20F0",  # ABOVE, COMBINING ASTERISK
    "\d0346",  # ABOVE, COMBINING BRIDGE
    "\d20D5",  # ABOVE, COMBINING CLOCKWISE ARROW
    "\d0313",  # ABOVE, COMBINING COMMA
    "\d20D4",  # above, combining counterclockwise arrow
    "\d0307",  # ABOVE, COMBINING DOT
    "\d030E",  # ABOVE, COMBINING DOUBLE VERTICAL LINE
    "\d20DC",  # ABOVE, COMBINING FOUR DOTS
    "\d034B",  # ABOVE, COMBINING HOMOTHETIC
    "\d0309",  # ABOVE, COMBINING HOOK
    "\d031A",  # ABOVE, COMBINING LEFT ANGLE
    "\d20D6",  # ABOVE, COMBINING LEFT ARROW
    "\d0351",  # ABOVE, COMBINING LEFT HALF RING
    "\d20D0",  # ABOVE, COMBINING LEFT HARPOON
    "\d20E1",  # ABOVE, COMBINING LEFT RIGHT ARROW
    "\d034A",  # ABOVE, COMBINING NOT TILDE
    "\d0314",  # ABOVE, COMBINING REVERSED COMMA
    "\d20D7",  # ABOVE, COMBINING RIGHT ARROW
    "\d0350",  # ABOVE, COMBINING RIGHT ARROWHEAD
    "\d0357",  # ABOVE, COMBINING RIGHT HALF RING
    "\d20D1",  # ABOVE, COMBINING RIGHT HARPOON
    "\d030A",  # ABOVE, COMBINING RING
    "\d20DB",  # ABOVE, COMBINING THREE DOTS
    "\d0312",  # ABOVE, COMBINING TURNED COMMA
    "\d030D",  # ABOVE, COMBINING VERTICAL LINE
    "\d20E9",  # ABOVE, COMBINING WIDE BRIDGE
    "\d033D",  # ABOVE, COMBINING X
    "\d035B",  # ABOVE, COMBINING ZIGZAG
    "\d02D9",  # ABOVE, DOT
    "\d0308",  # above, double dot
    "\d02DA",  # ABOVE, RING
    "\d030C",  # above, v
    "\d2AA1",  # absolute continuity
    "\d007C",  # absolute value
    "\d301A",  # abstract syntax bracket, left
    "\d301B",  # abstract syntax bracket, right
    "\d23E6",  # AC CURRENT
    "\d0317",  # ACCENT BELOW, COMBINING ACUTE
    "\d032D",  # ACCENT BELOW, COMBINING CIRCUMFLEX
    "\d0316",  # ACCENT BELOW, COMBINING GRAVE
    "\d00B4",  # ACCENT, ACUTE
    "\d005E",  # ACCENT, CIRCUMFLEX
    "\d0301",  # ACCENT, COMBINING ACUTE
    "\d0302",  # ACCENT, COMBINING CIRCUMFLEX
    "\d030B",  # ACCENT, COMBINING DOUBLE ACUTE
    "\d030F",  # ACCENT, COMBINING DOUBLE GRAVE
    "\d0300",  # ACCENT, COMBINING GRAVE
    "\d02DD",  # ACCENT, DOUBLE ACUTE
    "\d0060",  # ACCENT, GRAVE
    "\d02CA",  # ACCENT, MODIFIER LETTER ACUTE
    "\d02C6",  # ACCENT, MODIFIER LETTER CIRCUMFLEX
    "\d02DF",  # ACCENT, MODIFIER LETTER CROSS
    "\d02CB",  # ACCENT, MODIFIER LETTER GRAVE
    "\d02CF",  # ACCENT, MODIFIER LETTER LOW ACUTE
    "\d02CE",  # ACCENT, MODIFIER LETTER LOW GRAVE
    "\d00B4",  # accent, spacing acute
    "\d005E",  # accent, spacing circumflex
    "\d0060",  # accent, spacing grave
    "\d02DF",  # accent, swedish grave
    "\d26CC",  # accident
    "\d2100",  # ACCOUNT OF
    "\d1F464",  # account, guest
    "\d1F465",  # accounts
    "\d0006",  # ACKNOWLEDGE
    "\d0015",  # ACKNOWLEDGE, NEGATIVE
    "\d2406",  # ACKNOWLEDGE, SYMBOL FOR
    "\d2415",  # ACKNOWLEDGE, SYMBOL FOR NEGATIVE
    "\d205D",  # acrophonic symbol three, epidaurean
    "\d20E7",  # actuarial bend
    "\d00B4",  # ACUTE ACCENT
    "\d0317",  # ACUTE ACCENT BELOW, COMBINING
    "\d0301",  # ACUTE ACCENT, COMBINING
    "\d030B",  # ACUTE ACCENT, COMBINING DOUBLE
    "\d02DD",  # ACUTE ACCENT, DOUBLE
    "\d02CA",  # ACUTE ACCENT, MODIFIER LETTER
    "\d02CF",  # ACUTE ACCENT, MODIFIER LETTER LOW
    "\d00B4",  # acute accent, spacing
    "\d0341",  # ACUTE TONE MARK, COMBINING
    "\d0A71",  # ADDAK, GURMUKHI
    "\d2101",  # ADDRESSED TO THE SUBJECT
    "\d262C",  # ADI SHAKTI
    "\d1E900",  # Adlam
    "\d00C6",  # AE, LATIN CAPITAL LETTER
    "\d00C6",  # ae, latin capital ligature
    "\d1D01",  # AE, LATIN LETTER SMALL CAPITAL
    "\d00E6",  # AE, LATIN SMALL LETTER
    "\d1D02",  # AE, LATIN SMALL LETTER TURNED
    "\d00E6",  # ae, latin small ligature
    "\d10101",  # AEGEAN WORD SEPARATOR DOT
    "\d10100",  # AEGEAN WORD SEPARATOR LINE
    "\d2695",  # AESCULAPIUS, STAFF OF
    "\d060B",  # AFGHANI SIGN
    "\d01C0",  # African Letters for Clicks
    "\d11700",  # Ahom
    "\d1D25",  # AIN, LATIN LETTER
    "\d31F0",  # Ainu, Katakana Extensions for
    "\d2708",  # AIRPLANE
    "\d214D",  # AKTIESELSKAB
    "\d0DCA",  # AL-LAKUNA, SINHALA SIGN
    "\d23F0",  # ALARM CLOCK
    "\d10530",  # Albanian, Caucasian
    "\d1F700",  # Alchemical Symbols
    "\d2766",  # aldus leaf
    "\d2135",  # ALEF SYMBOL
    "\d2697",  # ALEMBIC
    "\d1F47E",  # ALIEN MONSTER
    "\d1F47D",  # ALIEN, EXTRATERRESTRIAL
    "\d232E",  # ALL AROUND-PROFILE
    "\d224C",  # ALL EQUAL TO
    "\d2200",  # ALL, FOR
    "\d2248",  # ALMOST EQUAL TO
    "\d034C",  # ALMOST EQUAL TO ABOVE, COMBINING
    "\d2249",  # ALMOST EQUAL TO, NOT
    "\d0251",  # ALPHA, LATIN SMALL LETTER
    "\d0252",  # ALPHA, LATIN SMALL LETTER TURNED
    "\dFB00",  # Alphabetic Presentation Forms
    "\d1F100",  # Alphanumeric Supplement, Enclosed
    "\d1D400",  # Alphanumeric Symbols, Mathematical
    "\d2460",  # Alphanumerics, Enclosed
    "\d223F",  # alternating current
    "\d2387",  # ALTERNATIVE KEY SYMBOL
    "\d01C2",  # ALVEOLAR CLICK, LATIN LETTER
    "\d25FB",  # always
    "\d0026",  # AMPERSAND
    "\d1F670",  # Ampersand and Ligature-et Ornaments
    "\d214B",  # AMPERSAND, TURNED
    "\d14400",  # Anatolian Hieroglyphs
    "\d2693",  # ANCHOR
    "\dFFF9",  # ANCHOR, INTERLINEAR ANNOTATION
    "\d2E0E",  # Ancient Greek Textual Symbols
    "\d22CF",  # AND, CURLY LOGICAL
    "\d2227",  # AND, LOGICAL
    "\d22C0",  # AND, N-ARY LOGICAL
    "\d2A51",  # Ands and Ors, Logical
    "\d1F47C",  # ANGEL, BABY
    "\d1F4A2",  # ANGER SYMBOL
    "\d0E5A",  # ANGKHANKHU, THAI CHARACTER
    "\d2220",  # ANGLE
    "\d031A",  # ANGLE ABOVE, COMBINING LEFT
    "\d2222",  # angle arc
    "\d0349",  # ANGLE BELOW, COMBINING LEFT
    "\d3008",  # ANGLE BRACKET, LEFT
    "\d300A",  # ANGLE BRACKET, LEFT DOUBLE
    "\d2329",  # ANGLE BRACKET, LEFT-POINTING
    "\d27E8",  # ANGLE BRACKET, MATHEMATICAL LEFT
    "\d27EA",  # ANGLE BRACKET, MATHEMATICAL LEFT DOUBLE
    "\d27E9",  # ANGLE BRACKET, MATHEMATICAL RIGHT
    "\d27EB",  # ANGLE BRACKET, MATHEMATICAL RIGHT DOUBLE
    "\d3009",  # ANGLE BRACKET, RIGHT
    "\d300B",  # ANGLE BRACKET, RIGHT DOUBLE
    "\d232A",  # ANGLE BRACKET, RIGHT-POINTING
    "\d3008",  # Angle Brackets, CJK
    "\d00AB",  # ANGLE QUOTATION MARK, LEFT-POINTING DOUBLE
    "\d00BB",  # ANGLE QUOTATION MARK, RIGHT-POINTING DOUBLE
    "\d2039",  # ANGLE QUOTATION MARK, SINGLE LEFT-POINTING
    "\d203A",  # ANGLE QUOTATION MARK, SINGLE RIGHT-POINTING
    "\d276E",  # Angle Quotation Marks, Ornamental
    "\d22BE",  # ANGLE WITH ARC, RIGHT
    "\d2221",  # ANGLE, MEASURED
    "\d221F",  # ANGLE, RIGHT
    "\d2222",  # ANGLE, SPHERICAL
    "\d00AC",  # angled dash
    "\d221F",  # Angles
    "\d299B",  # Angles and Measured Angles
    "\d212B",  # ANGSTROM SIGN
    "\d1F42D",  # Animal Faces
    "\d1F400",  # Animal Symbols
    "\d1F980",  # Animal Symbols
    "\d2625",  # ANKH
    "\dFFF9",  # ANNOTATION ANCHOR, INTERLINEAR
    "\dFFFA",  # ANNOTATION SEPARATOR, INTERLINEAR
    "\d06D6",  # Annotation Signs, Arabic Koranic
    "\d06D6",  # Annotation Signs, Arabic Qur'anic
    "\dFFFB",  # ANNOTATION TERMINATOR, INTERLINEAR
    "\dFFF9",  # Annotation, Interlinear
    "\d3190",  # Annotation, Japanese Kanbun Ideographic
    "\d20E7",  # ANNUITY SYMBOL, COMBINING
    "\d00B7",  # ano teleia, greek
    "\d1F41C",  # ANT
    "\d20D4",  # ANTICLOCKWISE ARROW ABOVE, COMBINING
    "\d2233",  # ANTICLOCKWISE CONTOUR INTEGRAL
    "\d2A11",  # ANTICLOCKWISE INTEGRATION
    "\d20DA",  # ANTICLOCKWISE RING OVERLAY, COMBINING
    "\d2183",  # antisigma, claudian
    "\d0901",  # anunasika, devanagari
    "\d0902",  # ANUSVARA, DEVANAGARI SIGN
    "\d17C6",  # anusvara, khmer
    "\d0F7E",  # anusvara, tibetan
    "\d230A",  # apl downstile
    "\d2336",  # APL Functional Symbols
    "\d2218",  # apl jot
    "\d00AF",  # apl overbar
    "\d0027",  # apl quote
    "\d2223",  # apl stile
    "\d223C",  # apl tilde
    "\d2308",  # apl upstile
    "\d0027",  # APOSTROPHE
    "\d2019",  # apostrophe
    "\d055A",  # APOSTROPHE, ARMENIAN
    "\d02BC",  # APOSTROPHE, MODIFIER LETTER
    "\d02EE",  # APOSTROPHE, MODIFIER LETTER DOUBLE
    "\d02BC",  # apostrophe, neutral
    "\d0027",  # apostrophe-quote
    "\d2183",  # apostrophic c
    "\d009F",  # APPLICATION PROGRAM COMMAND
    "\d2061",  # APPLICATION, FUNCTION
    "\d2250",  # APPROACHES THE LIMIT
    "\d2245",  # APPROXIMATELY EQUAL TO
    "\d2257",  # approximately equal to
    "\d2652",  # AQUARIUS
    "\d10A80",  # Arabian, Old North
    "\d10A60",  # Arabian, Old South
    "\d0600",  # Arabic
    "\d0621",  # Arabic Alphabet
    "\d0653",  # Arabic Combining Marks
    "\d060C",  # ARABIC COMMA
    "\dFB50",  # Arabic Contextual Form Glyphs
    "\dFE80",  # Arabic Contextual Form Glyphs
    "\d060D",  # ARABIC DATE SEPARATOR
    "\d066B",  # ARABIC DECIMAL SEPARATOR
    "\d08A0",  # Arabic Extended-A
    "\d0671",  # Arabic Extensions
    "\d06D4",  # ARABIC FULL STOP
    "\d064B",  # Arabic Harakat
    "\d0610",  # Arabic Honorifics
    "\d0640",  # arabic kashida
    "\d06D6",  # Arabic Koranic Annotation Signs
    "\d06C0",  # arabic letter hamzah on ha
    "\d06C0",  # ARABIC LETTER HEH WITH YEH ABOVE
    "\d061C",  # ARABIC LETTER MARK
    "\d0671",  # Arabic Letters, Extended
    "\d0750",  # Arabic Letters, Extended
    "\dFDFD",  # ARABIC LIGATURE BISMILLAH AR-RAHMAN AR-RAHEEM
    "\dFBEA",  # Arabic Ligatures
    "\d1EE00",  # Arabic Mathematical Alphabetic Symbols
    "\d066C",  # arabic phrase separator
    "\dFE70",  # Arabic Points, Glyphs for Spacing Forms of
    "\dFB50",  # Arabic Presentation Forms-A
    "\dFE70",  # Arabic Presentation Forms-B
    "\d060C",  # Arabic Punctuation
    "\d061F",  # ARABIC QUESTION MARK
    "\d06D6",  # Arabic Qur'anic Annotation Signs
    "\d061B",  # ARABIC SEMICOLON
    "\dFBB2",  # Arabic Spacing Diacritics
    "\d0600",  # Arabic Subtending Marks
    "\d0750",  # Arabic Supplement
    "\d0640",  # ARABIC TATWEEL
    "\d066C",  # ARABIC THOUSANDS SEPARATOR
    "\d0660",  # Arabic-Indic Digits
    "\d06F0",  # Arabic-Indic Digits, Eastern
    "\d10840",  # Aramaic, Imperial
    "\d2312",  # ARC
    "\d2222",  # arc, angle
    "\d22BE",  # ARC, RIGHT ANGLE WITH
    "\d032B",  # ARCH BELOW, COMBINING INVERTED DOUBLE
    "\d25DC",  # Arcs
    "\dAC00",  # Area, Asian Scripts
    "\d3400",  # Area, CJK Ideographs
    "\d2E80",  # Area, CJK Phonetics and Symbols
    "\dF900",  # Area, Compatibility and Specials
    "\d0000",  # Area, General Scripts
    "\dAC00",  # Area, Korean Hangul Syllables
    "\dE000",  # Area, Private Use
    "\d20000",  # Area, Supplementary CJK Ideographs
    "\d10000",  # Area, Supplementary General Scripts
    "\dD800",  # Area, Surrogates
    "\d2000",  # Area, Symbols
    "\dFFF80",  # Area-A, Supplementary Private Use
    "\d10FF80",  # Area-B, Supplementary Private Use
    "\d20B3",  # argentinian former currency
    "\d2648",  # ARIES
    "\d055F",  # ARMENIAN ABBREVIATION MARK
    "\d0530",  # Armenian Alphabet
    "\d055A",  # ARMENIAN APOSTROPHE
    "\d055C",  # armenian batsaganchakan nshan
    "\d055D",  # armenian bowt
    "\d0531",  # Armenian Capital Letters
    "\d055D",  # ARMENIAN COMMA
    "\d055B",  # ARMENIAN EMPHASIS MARK
    "\d055C",  # ARMENIAN EXCLAMATION MARK
    "\d0589",  # ARMENIAN FULL STOP
    "\d055E",  # armenian hartsakan nshan
    "\d058A",  # ARMENIAN HYPHEN
    "\dFB13",  # Armenian Ligatures
    "\d055F",  # armenian patiw
    "\d055E",  # ARMENIAN QUESTION MARK
    "\d055B",  # armenian shesht
    "\d0561",  # Armenian Small Letters
    "\d0589",  # armenian vertsaket
    "\d058A",  # armenian yentamna
    "\d20D4",  # ARROW ABOVE, COMBINING ANTICLOCKWISE
    "\d20D5",  # ARROW ABOVE, COMBINING CLOCKWISE
    "\d20D4",  # arrow above, combining counterclockwise
    "\d20D6",  # ARROW ABOVE, COMBINING LEFT
    "\d20E1",  # ARROW ABOVE, COMBINING LEFT RIGHT
    "\d20D7",  # ARROW ABOVE, COMBINING RIGHT
    "\d0362",  # ARROW BELOW, COMBINING DOUBLE RIGHTWARDS
    "\d20EE",  # ARROW BELOW, COMBINING LEFT
    "\d034D",  # ARROW BELOW, COMBINING LEFT RIGHT
    "\d20EF",  # ARROW BELOW, COMBINING RIGHT
    "\d034E",  # ARROW BELOW, COMBINING UPWARDS
    "\d2794",  # Arrow Dingbats
    "\d25C5",  # arrow indicator, backward
    "\d25BB",  # arrow indicator, forward
    "\d20EA",  # ARROW OVERLAY, COMBINING LEFTWARDS
    "\d2193",  # ARROW, DOWNWARDS
    "\d2301",  # ARROW, ELECTRIC
    "\d2190",  # ARROW, LEFTWARDS
    "\d2192",  # ARROW, RIGHTWARDS
    "\d2191",  # ARROW, UPWARDS
    "\d0350",  # ARROWHEAD ABOVE, COMBINING RIGHT
    "\d0354",  # ARROWHEAD BELOW, COMBINING LEFT
    "\d0355",  # ARROWHEAD BELOW, COMBINING RIGHT
    "\d2304",  # ARROWHEAD, DOWN
    "\d2303",  # ARROWHEAD, UP
    "\d02C2",  # Arrowheads, Modifier Letter
    "\d2190",  # Arrows
    "\d2794",  # Arrows, Dingbat
    "\d21CD",  # Arrows, Double
    "\d27F5",  # Arrows, Long
    "\d2B30",  # Arrows, Mathematical
    "\d2B00",  # Arrows, Miscellaneous
    "\d1F500",  # Arrows, User Interface
    "\d1F519",  # Arrows, Words with
    "\d27F0",  # Arrows-A Supplement
    "\d2900",  # Arrows-B, Supplemental
    "\d1F800",  # Arrows-C, Supplemental
    "\d260A",  # ASCENDING NODE
    "\d0000",  # ASCII C0 Control Codes
    "\d0030",  # ASCII Digits
    "\d0020",  # ASCII Punctuation and Symbols
    "\dFF01",  # ASCII Variants, Fullwidth
    "\d00E6",  # ash
    "\dAC00",  # Asian Scripts Area
    "\d22A6",  # ASSERTION
    "\d002A",  # ASTERISK
    "\d20F0",  # ASTERISK ABOVE, COMBINING
    "\d0359",  # ASTERISK BELOW, COMBINING
    "\d2722",  # Asterisk Dingbats
    "\d2217",  # ASTERISK OPERATOR
    "\d229B",  # ASTERISK OPERATOR, CIRCLED
    "\d204E",  # ASTERISK, LOW
    "\d2722",  # Asterisks
    "\d1F7AF",  # Asterisks
    "\d2051",  # ASTERISKS ALIGNED VERTICALLY, TWO
    "\d2042",  # ASTERISM
    "\d26B3",  # Astrological Signs
    "\d0F15",  # Astrological Signs, Tibetan
    "\d263D",  # Astrological Symbols
    "\d2600",  # Astrological Symbols, Weather and
    "\d2248",  # asymptotic to
    "\d2243",  # ASYMPTOTICALLY EQUAL TO
    "\d2244",  # ASYMPTOTICALLY EQUAL TO, NOT
    "\d0040",  # at sign
    "\d0040",  # AT, COMMERCIAL
    "\d269B",  # ATOM SYMBOL
    "\d1F4F7",  # Audio and Video Symbols
    "\d20B3",  # AUSTRAL SIGN
    "\d093D",  # AVAGRAHA, DEVANAGARI SIGN
    "\d10B00",  # Avestan
    "\d0B83",  # aytham, tamil
    "\d1E03",  # B WITH DOT ABOVE, LATIN SMALL LETTER
    "\d1E05",  # B WITH DOT BELOW, LATIN SMALL LETTER
    "\d0181",  # B WITH HOOK, LATIN CAPITAL LETTER
    "\d0253",  # B WITH HOOK, LATIN SMALL LETTER
    "\d1E07",  # B WITH LINE BELOW, LATIN SMALL LETTER
    "\d0243",  # B WITH STROKE, LATIN CAPITAL LETTER
    "\d0180",  # B WITH STROKE, LATIN SMALL LETTER
    "\d0183",  # B WITH TOPBAR, LATIN SMALL LETTER
    "\d0299",  # B, LATIN LETTER SMALL CAPITAL
    "\d1D03",  # B, LATIN LETTER SMALL CAPITAL BARRED
    "\d212C",  # B, SCRIPT CAPITAL
    "\d1F476",  # BABY
    "\d1F47C",  # BABY ANGEL
    "\d0264",  # baby gamma, latin small letter
    "\d005C",  # backslash
    "\d20E0",  # BACKSLASH, COMBINING ENCLOSING CIRCLE
    "\d0008",  # BACKSPACE
    "\d2408",  # BACKSPACE, SYMBOL FOR
    "\d25C5",  # backward arrow indicator
    "\d2207",  # backward difference
    "\d008C",  # BACKWARD, PARTIAL LINE
    "\d228E",  # bag addition
    "\d27E6",  # bag bracket, left
    "\d27E7",  # bag bracket, right
    "\d266F",  # bag count, infix
    "\d22FF",  # BAG MEMBERSHIP, Z NOTATION
    "\d2A41",  # bag subtraction
    "\d0E3F",  # BAHT, THAI CURRENCY SYMBOL
    "\d1B00",  # Balinese
    "\d1B50",  # Balinese Digits
    "\d1B61",  # Balinese Musical Symbols
    "\d2610",  # BALLOT BOX
    "\d2611",  # BALLOT BOX WITH CHECK
    "\d2612",  # BALLOT BOX WITH X
    "\d1F5F3",  # Ballot Symbols
    "\d2717",  # BALLOT X
    "\d2718",  # BALLOT X, HEAVY
    "\dA6A0",  # Bamum
    "\d16800",  # Bamum Supplement
    "\d0021",  # bang
    "\d2758",  # Bar Dingbats, Vertical
    "\d29EE",  # Bar Symbols, Error
    "\d00A6",  # BAR, BROKEN
    "\d2015",  # BAR, HORIZONTAL
    "\d007C",  # bar, vertical
    "\d2AFE",  # BAR, WHITE VERTICAL
    "\d1F488",  # BARBER POLE
    "\d1D03",  # BARRED B, LATIN LETTER SMALL CAPITAL
    "\d019F",  # barred o, latin capital letter
    "\d0275",  # BARRED O, LATIN SMALL LETTER
    "\d22A5",  # base
    "\d26BE",  # BASEBALL
    "\d2669",  # Basic Musical Symbols
    "\d16AD0",  # Bassa Vah
    "\d1F987",  # BAT
    "\d1BC0",  # Batak
    "\d055C",  # batsaganchakan nshan, armenian
    "\d1F50B",  # BATTERY
    "\d2694",  # battleground symbol
    "\d26F1",  # beach, bathing
    "\d266B",  # BEAMED EIGHTH NOTES
    "\d266B",  # beamed quavers
    "\d266C",  # beamed semiquavers
    "\d266C",  # BEAMED SIXTEENTH NOTES
    "\d1F43B",  # BEAR FACE
    "\d2235",  # BECAUSE
    "\d1F404",  # beef (on menus)
    "\d0007",  # BELL
    "\d1F514",  # BELL
    "\d237E",  # BELL SYMBOL
    "\d2407",  # BELL, SYMBOL FOR
    "\d0317",  # BELOW, COMBINING ACUTE ACCENT
    "\d0359",  # BELOW, COMBINING ASTERISK
    "\d032E",  # BELOW, COMBINING BREVE
    "\d032A",  # BELOW, COMBINING BRIDGE
    "\d032C",  # BELOW, COMBINING CARON
    "\d032D",  # BELOW, COMBINING CIRCUMFLEX ACCENT
    "\d0326",  # BELOW, COMBINING COMMA
    "\d0324",  # BELOW, COMBINING DIAERESIS
    "\d0323",  # BELOW, COMBINING DOT
    "\d035C",  # BELOW, COMBINING DOUBLE BREVE
    "\d035F",  # BELOW, COMBINING DOUBLE MACRON
    "\d0362",  # BELOW, COMBINING DOUBLE RIGHTWARDS ARROW
    "\d035A",  # BELOW, COMBINING DOUBLE RING
    "\d0348",  # BELOW, COMBINING DOUBLE VERTICAL LINE
    "\d031E",  # BELOW, COMBINING DOWN TACK
    "\d0347",  # BELOW, COMBINING EQUALS SIGN
    "\d0316",  # BELOW, COMBINING GRAVE ACCENT
    "\d032F",  # BELOW, COMBINING INVERTED BREVE
    "\d033A",  # BELOW, COMBINING INVERTED BRIDGE
    "\d032B",  # BELOW, COMBINING INVERTED DOUBLE ARCH
    "\d0349",  # BELOW, COMBINING LEFT ANGLE
    "\d20EE",  # BELOW, COMBINING LEFT ARROW
    "\d0354",  # BELOW, COMBINING LEFT ARROWHEAD
    "\d031C",  # BELOW, COMBINING LEFT HALF RING
    "\d034D",  # BELOW, COMBINING LEFT RIGHT ARROW
    "\d0318",  # BELOW, COMBINING LEFT TACK
    "\d0331",  # BELOW, COMBINING MACRON
    "\d0320",  # BELOW, COMBINING MINUS SIGN
    "\d0321",  # BELOW, COMBINING PALATALIZED HOOK
    "\d031F",  # BELOW, COMBINING PLUS SIGN
    "\d0322",  # BELOW, COMBINING RETROFLEX HOOK
    "\d20EF",  # BELOW, COMBINING RIGHT ARROW
    "\d0355",  # BELOW, COMBINING RIGHT ARROWHEAD
    "\d0339",  # BELOW, COMBINING RIGHT HALF RING
    "\d0319",  # BELOW, COMBINING RIGHT TACK
    "\d0325",  # BELOW, COMBINING RING
    "\d033C",  # BELOW, COMBINING SEAGULL
    "\d033B",  # BELOW, COMBINING SQUARE
    "\d0330",  # BELOW, COMBINING TILDE
    "\d031D",  # BELOW, COMBINING UP TACK
    "\d034E",  # BELOW, COMBINING UPWARDS ARROW
    "\d0329",  # BELOW, COMBINING VERTICAL LINE
    "\d0353",  # BELOW, COMBINING X
    "\d026C",  # BELT, LATIN SMALL LETTER L WITH
    "\d20E7",  # bend, actuarial
    "\d0980",  # Bengali
    "\d0995",  # Bengali Consonants
    "\d09F2",  # Bengali Currency Signs
    "\d09BE",  # Bengali Dependent Vowel Signs
    "\d09E6",  # Bengali Digits
    "\d09CD",  # bengali hasant
    "\d0985",  # Bengali Independent Vowels
    "\d09FA",  # BENGALI ISSHAR
    "\d09F2",  # BENGALI RUPEE MARK
    "\d09F3",  # BENGALI RUPEE SIGN
    "\d232C",  # BENZENE RING
    "\d212C",  # bernoulli function
    "\d2136",  # BET SYMBOL
    "\d03D0",  # BETA SYMBOL, GREEK
    "\d03D0",  # beta, curled
    "\d226C",  # BETWEEN
    "\d1F375",  # Beverage Symbols
    "\d2615",  # BEVERAGE, HOT
    "\d11C00",  # Bhaiksuki
    "\d202A",  # Bidirectional Format Characters
    "\dFA0C",  # Big 5, Duplicate Characters from
    "\d29F9",  # BIG REVERSE SOLIDUS
    "\d29F8",  # BIG SOLIDUS
    "\d2916",  # bijection
    "\d0298",  # BILABIAL CLICK, LATIN LETTER
    "\d02AC",  # BILABIAL PERCUSSIVE, LATIN LETTER
    "\d0902",  # bindu, devanagari
    "\d2623",  # BIOHAZARD SIGN
    "\d1F426",  # BIRD
    "\d1800",  # BIRGA, MONGOLIAN
    "\dFDFD",  # BISMILLAH AR-RAHMAN AR-RAHEEM, ARABIC LIGATURE
    "\d20BF",  # BITCOIN SIGN
    "\d25CF",  # BLACK CIRCLE
    "\d26AB",  # BLACK CIRCLE, MEDIUM
    "\d2691",  # BLACK FLAG
    "\d1F5A4",  # BLACK HEART
    "\d29D7",  # BLACK HOURGLASS
    "\d261A",  # BLACK LEFT POINTING INDEX
    "\d204C",  # BLACK LEFTWARDS BULLET
    "\d3010",  # BLACK LENTICULAR BRACKET, LEFT
    "\d3011",  # BLACK LENTICULAR BRACKET, RIGHT
    "\d29EB",  # BLACK LOZENGE
    "\d25FE",  # BLACK MEDIUM SMALL SQUARE
    "\d25FC",  # BLACK MEDIUM SQUARE
    "\d2712",  # BLACK NIB
    "\d25B0",  # BLACK PARALLELOGRAM
    "\d261B",  # BLACK RIGHT POINTING INDEX
    "\d204D",  # BLACK RIGHTWARDS BULLET
    "\d2702",  # BLACK SCISSORS
    "\d2617",  # BLACK SHOGI PIECE
    "\d2022",  # black small circle
    "\d263B",  # BLACK SMILING FACE
    "\d2605",  # BLACK STAR
    "\d2600",  # BLACK SUN WITH RAYS
    "\d260E",  # BLACK TELEPHONE
    "\d212D",  # BLACK-LETTER CAPITAL C
    "\d210C",  # BLACK-LETTER CAPITAL H
    "\d2111",  # BLACK-LETTER CAPITAL I
    "\d211C",  # BLACK-LETTER CAPITAL R
    "\d2128",  # BLACK-LETTER CAPITAL Z
    "\d1D504",  # Black-letter Mathematical Symbols
    "\d2422",  # BLANK SYMBOL
    "\d2580",  # Block Elements
    "\d0017",  # BLOCK, END OF TRANSMISSION
    "\d2588",  # BLOCK, FULL
    "\d2417",  # BLOCK, SYMBOL FOR END OF TRANSMISSION
    "\d1F421",  # BLOWFISH
    "\d1F417",  # BOAR
    "\d26F4",  # boat terminal
    "\d2C80",  # Bohairic Coptic
    "\d1D7CE",  # Bold Digits
    "\d1D7EC",  # Bold Digits, Sans-serif
    "\d1D56C",  # Bold Fraktur Mathematical Symbols
    "\d1D6A8",  # Bold Greek Mathematical Symbols
    "\d1D756",  # Bold Greek Mathematical Symbols, Sans-serif
    "\d1D71C",  # Bold Italic Greek Mathematical Symbols
    "\d1D790",  # Bold Italic Greek Mathematical Symbols, Sans-serif
    "\d1D468",  # Bold Italic Mathematical Symbols
    "\d1D63C",  # Bold Italic Mathematical Symbols, Sans-serif
    "\d1D400",  # Bold Mathematical Symbols
    "\d1D5D4",  # Bold Mathematical Symbols, Sans-serif
    "\d1D4D0",  # Bold Script Mathematical Symbols
    "\dFEFF",  # bom
    "\d1F4A3",  # BOMB
    "\d1F56E",  # BOOK
    "\d1F4D5",  # Books
    "\d31A0",  # Bopomofo Extensions, Chinese
    "\d3100",  # Bopomofo, Chinese
    "\d22A5",  # bottom
    "\d055D",  # bowt, armenian
    "\d22C8",  # BOWTIE
    "\d29D1",  # Bowtie Symbols
    "\d2A1D",  # bowtie, large
    "\d29D6",  # bowtie, vertical
    "\d2500",  # Box Drawing
    "\d2611",  # BOX WITH CHECK, BALLOT
    "\d2612",  # BOX WITH X, BALLOT
    "\d2610",  # BOX, BALLOT
    "\d2423",  # BOX, OPEN
    "\d237D",  # BOX, SHOULDERED OPEN
    "\d2327",  # BOX, X IN A RECTANGLE
    "\d1F466",  # BOY
    "\d27E8",  # bra
    "\d007D",  # brace, closing
    "\d007B",  # brace, opening
    "\d239B",  # Bracket Pieces
    "\d23B0",  # Bracket Pieces
    "\d23DC",  # Bracket Variants for Vertical Text
    "\d2045",  # BRACKET WITH QUILL, LEFT SQUARE
    "\d2046",  # BRACKET WITH QUILL, RIGHT SQUARE
    "\d007D",  # bracket, closing curly
    "\d005D",  # bracket, closing square
    "\d301A",  # bracket, left abstract syntax
    "\d3008",  # BRACKET, LEFT ANGLE
    "\d27E6",  # bracket, left bag
    "\d3010",  # BRACKET, LEFT BLACK LENTICULAR
    "\d27EA",  # bracket, left chevron
    "\d300C",  # BRACKET, LEFT CORNER
    "\d007B",  # BRACKET, LEFT CURLY
    "\d300A",  # BRACKET, LEFT DOUBLE ANGLE
    "\d27E8",  # bracket, left sequence
    "\d005B",  # BRACKET, LEFT SQUARE
    "\d3014",  # BRACKET, LEFT TORTOISE SHELL
    "\d300E",  # BRACKET, LEFT WHITE CORNER
    "\d2983",  # BRACKET, LEFT WHITE CURLY
    "\d3016",  # BRACKET, LEFT WHITE LENTICULAR
    "\d301A",  # BRACKET, LEFT WHITE SQUARE
    "\d3018",  # BRACKET, LEFT WHITE TORTOISE SHELL
    "\d2329",  # BRACKET, LEFT-POINTING ANGLE
    "\d27E8",  # BRACKET, MATHEMATICAL LEFT ANGLE
    "\d27EA",  # BRACKET, MATHEMATICAL LEFT DOUBLE ANGLE
    "\d27E9",  # BRACKET, MATHEMATICAL RIGHT ANGLE
    "\d27EB",  # BRACKET, MATHEMATICAL RIGHT DOUBLE ANGLE
    "\d007B",  # bracket, opening curly
    "\d005B",  # bracket, opening square
    "\d301B",  # bracket, right abstract syntax
    "\d3009",  # BRACKET, RIGHT ANGLE
    "\d27E7",  # bracket, right bag
    "\d3011",  # BRACKET, RIGHT BLACK LENTICULAR
    "\d27EB",  # bracket, right chevron
    "\d300D",  # BRACKET, RIGHT CORNER
    "\d007D",  # BRACKET, RIGHT CURLY
    "\d300B",  # BRACKET, RIGHT DOUBLE ANGLE
    "\d27E9",  # bracket, right sequence
    "\d005D",  # BRACKET, RIGHT SQUARE
    "\d3015",  # BRACKET, RIGHT TORTOISE SHELL
    "\d300F",  # BRACKET, RIGHT WHITE CORNER
    "\d2984",  # BRACKET, RIGHT WHITE CURLY
    "\d3017",  # BRACKET, RIGHT WHITE LENTICULAR
    "\d301B",  # BRACKET, RIGHT WHITE SQUARE
    "\d3019",  # BRACKET, RIGHT WHITE TORTOISE SHELL
    "\d232A",  # BRACKET, RIGHT-POINTING ANGLE
    "\d2983",  # Brackets
    "\d3008",  # Brackets, CJK Angle
    "\d300C",  # Brackets, CJK Corner
    "\d2308",  # Brackets, Corner
    "\d27E6",  # Brackets, Mathematical
    "\d2768",  # Brackets, Ornamental
    "\d23B4",  # Brackets, Vertical
    "\d11000",  # Brahmi
    "\d2800",  # Braille Patterns
    "\d20A2",  # brazilian currency
    "\d0083",  # BREAK HERE, NO
    "\d0082",  # BREAK PERMITTED HERE
    "\d0314",  # breathing mark, greek rough
    "\d0313",  # breathing mark, greek smooth
    "\d02D8",  # BREVE
    "\d032E",  # BREVE BELOW, COMBINING
    "\d035C",  # BREVE BELOW, COMBINING DOUBLE
    "\d1DFC",  # BREVE BELOW, COMBINING DOUBLE INVERTED
    "\d032F",  # BREVE BELOW, COMBINING INVERTED
    "\d0306",  # BREVE, COMBINING
    "\d035D",  # BREVE, COMBINING DOUBLE
    "\d0361",  # BREVE, COMBINING DOUBLE INVERTED
    "\d0311",  # BREVE, COMBINING INVERTED
    "\d1F470",  # BRIDE WITH VEIL
    "\d0346",  # BRIDGE ABOVE, COMBINING
    "\d20E9",  # BRIDGE ABOVE, COMBINING WIDE
    "\d032A",  # BRIDGE BELOW, COMBINING
    "\d033A",  # BRIDGE BELOW, COMBINING INVERTED
    "\d1F4A8",  # briffits
    "\d00A6",  # BROKEN BAR
    "\d00A6",  # broken vertical bar
    "\d1F949",  # bronze medal
    "\d1F5E8",  # Bubble Symbols, Speech and Thought
    "\d1F660",  # Bud Ornaments, Pointing
    "\d1F41B",  # BUG
    "\d1A00",  # Buginese
    "\d1740",  # Buhid
    "\d1F3D4",  # Building and Map Symbols
    "\d1F3E0",  # Building and Map Symbols
    "\d2022",  # BULLET
    "\d2219",  # BULLET OPERATOR
    "\d204C",  # BULLET, BLACK LEFTWARDS
    "\d204D",  # BULLET, BLACK RIGHTWARDS
    "\d2043",  # BULLET, HYPHEN
    "\d2619",  # BULLET, REVERSED ROTATED FLORAL HEART
    "\d25C9",  # bullet, tainome japanese
    "\d2023",  # BULLET, TRIANGULAR
    "\d25E6",  # BULLET, WHITE
    "\d25CE",  # BULLSEYE
    "\d1F78B",  # bullseye
    "\d0298",  # bullseye, latin letter
    "\d26B0",  # buried symbol
    "\d1000",  # Burmese
    "\d1F98B",  # BUTTERFLY
    "\d225C",  # by definition, equal to
    "\d225D",  # BY DEFINITION, EQUAL TO
    "\d225E",  # BY, MEASURED
    "\dFEFF",  # byte order mark
    "\d1D000",  # Byzantine Musical Symbols
    "\d0107",  # C WITH ACUTE, LATIN SMALL LETTER
    "\d010D",  # C WITH CARON, LATIN SMALL LETTER
    "\d00C7",  # C WITH CEDILLA, LATIN CAPITAL LETTER
    "\d00E7",  # C WITH CEDILLA, LATIN SMALL LETTER
    "\d0109",  # C WITH CIRCUMFLEX, LATIN SMALL LETTER
    "\d0255",  # C WITH CURL, LATIN SMALL LETTER
    "\d010B",  # C WITH DOT ABOVE, LATIN SMALL LETTER
    "\d0188",  # C WITH HOOK, LATIN SMALL LETTER
    "\d023B",  # C WITH STROKE, LATIN CAPITAL LETTER
    "\d023C",  # C WITH STROKE, LATIN SMALL LETTER
    "\d2183",  # c, apostrophic
    "\d212D",  # C, BLACK-LETTER CAPITAL
    "\d0368",  # C, COMBINING LATIN SMALL LETTER
    "\d2102",  # C, DOUBLE-STRUCK CAPITAL
    "\d1D04",  # C, LATIN LETTER SMALL CAPITAL
    "\d0297",  # C, LATIN LETTER STRETCHED
    "\d2184",  # C, LATIN SMALL LETTER REVERSED
    "\d0000",  # C0 Control Codes, ASCII
    "\d0080",  # C1 Control Codes
    "\d2106",  # CADA UNA
    "\d2624",  # CADUCEUS
    "\d1F919",  # CALL ME HAND
    "\d1780",  # Cambodian
    "\d1F42B",  # CAMEL, BACTRIAN
    "\d1F42A",  # CAMEL, DROMEDARY
    "\d26FA",  # camping site
    "\d18B0",  # Canadian Aboriginal Syllabics Extended, Unified
    "\d1400",  # Canadian Aboriginal Syllabics, Unified
    "\d166E",  # CANADIAN SYLLABICS FULL STOP
    "\d166D",  # Canadian Syllabics Punctuation
    "\d0018",  # CANCEL
    "\d0094",  # CANCEL CHARACTER
    "\dE007F",  # CANCEL TAG
    "\d2418",  # CANCEL, SYMBOL FOR
    "\d0ECC",  # CANCELLATION MARK, LAO
    "\d1F5D9",  # CANCELLATION X
    "\d264B",  # CANCER
    "\d0310",  # CANDRABINDU, COMBINING
    "\d0901",  # CANDRABINDU, DEVANAGARI SIGN
    "\d0591",  # Cantillation Marks, Hebrew
    "\d0FC0",  # Cantillation Signs, Tibetan
    "\d2229",  # cap
    "\d2293",  # CAP, SQUARE
    "\d0531",  # Capital Letters, Armenian
    "\d0400",  # Capital Letters, Cyrillic
    "\d10A0",  # Capital Letters, Georgian
    "\d0391",  # Capital Letters, Greek
    "\d0041",  # Capital Letters, Latin
    "\d2E3F",  # CAPITULUM
    "\d2651",  # CAPRICORN
    "\d21EA",  # caps lock
    "\d21EC",  # caps lock
    "\d2BB8",  # caps lock
    "\d26D0",  # CAR SLIDING
    "\d26CD",  # CAR, DISABLED
    "\d2660",  # Card Suits, Playing
    "\d2135",  # cardinal, first transfinite
    "\d2138",  # cardinal, fourth transfinite
    "\d2136",  # cardinal, second transfinite
    "\d2137",  # cardinal, third transfinite
    "\d1F0A0",  # Cards, Playing
    "\d2105",  # CARE OF
    "\d028C",  # caret
    "\d2038",  # CARET
    "\d2041",  # CARET INSERTION POINT
    "\d102A0",  # Carian
    "\d02C7",  # CARON
    "\d032C",  # CARON BELOW, COMBINING
    "\d030C",  # CARON, COMBINING
    "\d000D",  # CARRIAGE RETURN
    "\d240D",  # CARRIAGE RETURN, SYMBOL FOR
    "\d00D7",  # cartesian product
    "\d26EB",  # CASTLE
    "\d1F408",  # CAT
    "\d1F431",  # CAT FACE
    "\d1F638",  # Cat Faces
    "\d1F6C6",  # caution
    "\d2621",  # CAUTION SIGN
    "\d1F4BF",  # cd
    "\d20B5",  # CEDI SIGN
    "\d00B8",  # CEDILLA
    "\d0312",  # cedilla above
    "\d0327",  # CEDILLA, COMBINING
    "\d00C7",  # CEDILLA, LATIN CAPITAL LETTER C WITH
    "\d00E7",  # CEDILLA, LATIN SMALL LETTER C WITH
    "\d00B8",  # cedilla, spacing
    "\d2308",  # CEILING, LEFT
    "\d2309",  # CEILING, RIGHT
    "\d1F380",  # Celebration Symbols
    "\d2103",  # CELSIUS, DEGREE
    "\d26FC",  # cemetery
    "\d00A2",  # CENT SIGN
    "\d2385",  # center
    "\d2103",  # centigrade, degrees
    "\d2104",  # CENTRE LINE SYMBOL
    "\dFE4E",  # CENTRELINE LOW LINE
    "\dFE4A",  # CENTRELINE OVERLINE
    "\d034F",  # cgj
    "\d26D3",  # CHAINS
    "\d11100",  # Chakma
    "\dAA00",  # Cham
    "\d0D4D",  # chandrakkala, malayalam
    "\d009A",  # CHARACTER INTRODUCER, SINGLE
    "\d0009",  # CHARACTER TABULATION
    "\d0088",  # CHARACTER TABULATION SET
    "\d0089",  # CHARACTER TABULATION WITH JUSTIFICATION
    "\d2040",  # CHARACTER TIE
    "\d2500",  # Chart Components, Form and
    "\d2713",  # CHECK MARK
    "\d2714",  # CHECK MARK, HEAVY
    "\d237B",  # CHECK MARK, NOT
    "\d2611",  # CHECK, BALLOT BOX WITH
    "\d1F67E",  # CHECKER BOARD
    "\d26C0",  # Checkers, Symbols for Draughts and
    "\d1F9C0",  # CHEESE WEDGE
    "\d13A0",  # Cherokee
    "\dAB70",  # Cherokee Supplement
    "\d2654",  # Chess Symbols
    "\d2616",  # Chess Symbols, Japanese
    "\d27EA",  # chevron bracket, left
    "\d27EB",  # chevron bracket, right
    "\d00AB",  # chevrons
    "\d2627",  # CHI RHO
    "\d1F424",  # CHICK, BABY
    "\d1F425",  # CHICK, FRONT-FACING BABY
    "\d1F423",  # CHICK, HATCHING
    "\d1F414",  # CHICKEN
    "\d0D7A",  # Chillu Letters, Malayalam
    "\d3100",  # Chinese Bopomofo
    "\d31A0",  # Chinese Bopomofo Extensions
    "\d02D9",  # chinese fifth or neutral tone, mandarin
    "\d02C9",  # chinese first tone, mandarin
    "\d1F260",  # Chinese Folk Religion Symbols
    "\d02CB",  # chinese fourth tone, mandarin
    "\d02CA",  # chinese second tone, mandarin
    "\d02C7",  # chinese third tone, mandarin
    "\dA700",  # Chinese, Corner Tone Marks for
    "\d1F43F",  # CHIPMUNK
    "\d2AFE",  # choice, dijkstra
    "\d2AFF",  # choice, n-ary dijkstra
    "\d1F384",  # CHRISTMAS TREE
    "\d1F385",  # CHRISTMAS, FATHER
    "\d2627",  # christogram
    "\d26EA",  # CHURCH
    "\d20E0",  # CIRCLE BACKSLASH, COMBINING ENCLOSING
    "\d2B55",  # Circle Signs, Heavy
    "\d29B5",  # Circle Symbols
    "\d25CF",  # CIRCLE, BLACK
    "\d2022",  # circle, black small
    "\d20DD",  # CIRCLE, COMBINING ENCLOSING
    "\d25CC",  # CIRCLE, DOTTED
    "\d20DD",  # circle, jis composition
    "\d25EF",  # CIRCLE, LARGE
    "\d26AB",  # CIRCLE, MEDIUM BLACK
    "\d26AC",  # CIRCLE, MEDIUM SMALL WHITE
    "\d26AA",  # CIRCLE, MEDIUM WHITE
    "\d274D",  # CIRCLE, SHADOWED WHITE
    "\d25CB",  # CIRCLE, WHITE
    "\d229B",  # CIRCLED ASTERISK OPERATOR
    "\d26D2",  # CIRCLED CROSSING LANES
    "\d229D",  # CIRCLED DASH
    "\d24EA",  # CIRCLED DIGIT ZERO
    "\d2776",  # Circled Digits, Dingbat
    "\d2A38",  # CIRCLED DIVISION SIGN
    "\d2298",  # CIRCLED DIVISION SLASH
    "\d2299",  # CIRCLED DOT OPERATOR
    "\d2A00",  # CIRCLED DOT OPERATOR, N-ARY
    "\d229C",  # CIRCLED EQUALS
    "\d3280",  # Circled Ideographs
    "\d2776",  # Circled Inverse Numbers
    "\d32D0",  # Circled Katakana
    "\d3260",  # Circled Korean Hangul Letters
    "\d326E",  # Circled Korean Hangul Syllables
    "\d1F12B",  # Circled Latin Letters
    "\d24B6",  # Circled Latin Letters
    "\d2296",  # CIRCLED MINUS
    "\d2460",  # Circled Numbers
    "\d3251",  # Circled Numbers
    "\d32B1",  # Circled Numbers
    "\d24F5",  # Circled Numbers, Double
    "\d24EB",  # Circled Numbers, White on Black
    "\d2295",  # CIRCLED PLUS
    "\d2A01",  # CIRCLED PLUS OPERATOR, N-ARY
    "\d3036",  # CIRCLED POSTAL MARK
    "\d229A",  # CIRCLED RING OPERATOR
    "\d2297",  # CIRCLED TIMES
    "\d2A02",  # CIRCLED TIMES OPERATOR, N-ARY
    "\d25CB",  # Circles
    "\d005E",  # CIRCUMFLEX ACCENT
    "\d032D",  # CIRCUMFLEX ACCENT BELOW, COMBINING
    "\d0302",  # CIRCUMFLEX ACCENT, COMBINING
    "\d02C6",  # CIRCUMFLEX ACCENT, MODIFIER LETTER
    "\d005E",  # circumflex accent, spacing
    "\d3008",  # CJK Angle Brackets
    "\d3300",  # CJK Compatibility
    "\dFE30",  # CJK Compatibility Forms
    "\dF900",  # CJK Compatibility Ideographs
    "\d2F800",  # CJK Compatibility Ideographs Supplement
    "\d300C",  # CJK Corner Brackets
    "\d302A",  # CJK Diacritics
    "\d2FF0",  # CJK Ideographic Description Characters
    "\d3400",  # CJK Ideographs Area
    "\d20000",  # CJK Ideographs Area, Supplementary
    "\d3220",  # CJK Ideographs, Parenthesized
    "\d2F00",  # CJK Kangxi Radicals
    "\d3200",  # CJK Letters and Months, Enclosed
    "\d2E80",  # CJK Phonetics and Symbols Area
    "\dFF61",  # CJK Punctuation, Halfwidth
    "\d300C",  # CJK Quotation Marks
    "\d2E80",  # CJK Radicals Supplement
    "\d31C0",  # CJK Strokes
    "\d3000",  # CJK Symbols and Punctuation
    "\d4E00",  # CJK Unified Ideographs
    "\d3400",  # CJK Unified Ideographs Extension A
    "\d20000",  # CJK Unified Ideographs Extension B
    "\d2A700",  # CJK Unified Ideographs Extension C
    "\d2B740",  # CJK Unified Ideographs Extension D
    "\d2B820",  # CJK Unified Ideographs Extension E
    "\d2CEB0",  # CJK Unified Ideographs Extension F
    "\d1F44F",  # CLAPPING HANDS SIGN
    "\d2183",  # claudian antisigma
    "\d2132",  # claudian digamma inversum
    "\d2327",  # clear key
    "\d239A",  # CLEAR SCREEN SYMBOL
    "\d2600",  # clear weather
    "\d01C2",  # CLICK, LATIN LETTER ALVEOLAR
    "\d0298",  # CLICK, LATIN LETTER BILABIAL
    "\d01C0",  # CLICK, LATIN LETTER DENTAL
    "\d01C1",  # CLICK, LATIN LETTER LATERAL
    "\d01C3",  # CLICK, LATIN LETTER RETROFLEX
    "\d01C0",  # Clicks, African Letters for
    "\d1F550",  # Clock Face Symbols
    "\d23F0",  # CLOCK, ALARM
    "\d20D5",  # CLOCKWISE ARROW ABOVE, COMBINING
    "\d2232",  # CLOCKWISE CONTOUR INTEGRAL
    "\d2231",  # CLOCKWISE INTEGRAL
    "\d20D9",  # CLOCKWISE RING OVERLAY, COMBINING
    "\d2104",  # clone
    "\d02D8",  # Clones of Diacritics, Spacing
    "\d2050",  # CLOSE UP
    "\d029A",  # closed epsilon, latin small letter
    "\d0277",  # CLOSED OMEGA, LATIN SMALL LETTER
    "\d029A",  # CLOSED OPEN E, LATIN SMALL LETTER
    "\d025E",  # closed reversed epsilon, latin small letter
    "\d025E",  # CLOSED REVERSED OPEN E, LATIN SMALL LETTER
    "\d007D",  # closing brace
    "\d007D",  # closing curly bracket
    "\d3006",  # CLOSING MARK, IDEOGRAPHIC
    "\d0029",  # closing parenthesis
    "\d005D",  # closing square bracket
    "\d1F451",  # Clothing and Accessories
    "\d2601",  # CLOUD
    "\d2601",  # cloudy weather
    "\d26C5",  # cloudy, partly
    "\d2F800",  # CNS 11643-1992, Duplicate Characters from
    "\d2615",  # coffee, cup of
    "\d26B0",  # COFFIN
    "\d1F4A5",  # COLLISION SYMBOL
    "\d003A",  # COLON
    "\d2254",  # COLON EQUALS
    "\d29F4",  # colon right arrow
    "\d20A1",  # COLON SIGN
    "\d2255",  # COLON, EQUALS
    "\d1365",  # COLON, ETHIOPIC
    "\d1366",  # COLON, ETHIOPIC PREFACE
    "\d02D1",  # COLON, MODIFIER LETTER HALF TRIANGULAR
    "\d02D0",  # COLON, MODIFIER LETTER TRIANGULAR
    "\d1804",  # COLON, MONGOLIAN
    "\d2982",  # COLON, Z NOTATION TYPE
    "\d0301",  # COMBINING ACUTE ACCENT
    "\d0317",  # COMBINING ACUTE ACCENT BELOW
    "\d0341",  # COMBINING ACUTE TONE MARK
    "\d034C",  # COMBINING ALMOST EQUAL TO ABOVE
    "\d1100",  # Combining Alphabet, Korean Hangul Jamo
    "\d20E7",  # COMBINING ANNUITY SYMBOL
    "\d20D4",  # COMBINING ANTICLOCKWISE ARROW ABOVE
    "\d20DA",  # COMBINING ANTICLOCKWISE RING OVERLAY
    "\d20F0",  # COMBINING ASTERISK ABOVE
    "\d0359",  # COMBINING ASTERISK BELOW
    "\d0306",  # COMBINING BREVE
    "\d032E",  # COMBINING BREVE BELOW
    "\d0346",  # COMBINING BRIDGE ABOVE
    "\d032A",  # COMBINING BRIDGE BELOW
    "\d0310",  # COMBINING CANDRABINDU
    "\d030C",  # COMBINING CARON
    "\d032C",  # COMBINING CARON BELOW
    "\d0327",  # COMBINING CEDILLA
    "\d0483",  # Combining Characters, Cyrillic
    "\d0302",  # COMBINING CIRCUMFLEX ACCENT
    "\d032D",  # COMBINING CIRCUMFLEX ACCENT BELOW
    "\d20D5",  # COMBINING CLOCKWISE ARROW ABOVE
    "\d20D9",  # COMBINING CLOCKWISE RING OVERLAY
    "\d0313",  # COMBINING COMMA ABOVE
    "\d0315",  # COMBINING COMMA ABOVE RIGHT
    "\d0326",  # COMBINING COMMA BELOW
    "\dFE26",  # COMBINING CONJOINING MACRON
    "\d20D4",  # combining counterclockwise arrow above
    "\d20DA",  # combining counterclockwise ring overlay
    "\d0300",  # Combining Diacritical Marks
    "\d1AB0",  # Combining Diacritical Marks Extended
    "\d20D0",  # Combining Diacritical Marks for Symbols
    "\d0308",  # COMBINING DIAERESIS
    "\d0324",  # COMBINING DIAERESIS BELOW
    "\d0307",  # COMBINING DOT ABOVE
    "\d0358",  # COMBINING DOT ABOVE RIGHT
    "\d0323",  # COMBINING DOT BELOW
    "\d030B",  # COMBINING DOUBLE ACUTE ACCENT
    "\d035D",  # COMBINING DOUBLE BREVE
    "\d035C",  # COMBINING DOUBLE BREVE BELOW
    "\d030F",  # COMBINING DOUBLE GRAVE ACCENT
    "\d0361",  # COMBINING DOUBLE INVERTED BREVE
    "\d1DFC",  # COMBINING DOUBLE INVERTED BREVE BELOW
    "\d0333",  # COMBINING DOUBLE LOW LINE
    "\d035E",  # COMBINING DOUBLE MACRON
    "\d035F",  # COMBINING DOUBLE MACRON BELOW
    "\d033F",  # COMBINING DOUBLE OVERLINE
    "\d0362",  # COMBINING DOUBLE RIGHTWARDS ARROW BELOW
    "\d035A",  # COMBINING DOUBLE RING BELOW
    "\d0360",  # COMBINING DOUBLE TILDE
    "\d030E",  # COMBINING DOUBLE VERTICAL LINE ABOVE
    "\d0348",  # COMBINING DOUBLE VERTICAL LINE BELOW
    "\d20E6",  # COMBINING DOUBLE VERTICAL STROKE OVERLAY
    "\d031E",  # COMBINING DOWN TACK BELOW
    "\d20DD",  # COMBINING ENCLOSING CIRCLE
    "\d20E0",  # COMBINING ENCLOSING CIRCLE BACKSLASH
    "\d20DF",  # COMBINING ENCLOSING DIAMOND
    "\d20E3",  # COMBINING ENCLOSING KEYCAP
    "\d20E2",  # COMBINING ENCLOSING SCREEN
    "\d20DE",  # COMBINING ENCLOSING SQUARE
    "\d20E4",  # COMBINING ENCLOSING UPWARD POINTING TRIANGLE
    "\d0347",  # COMBINING EQUALS SIGN BELOW
    "\d0352",  # COMBINING FERMATA
    "\d20DC",  # COMBINING FOUR DOTS ABOVE
    "\d034F",  # COMBINING GRAPHEME JOINER
    "\d0300",  # COMBINING GRAVE ACCENT
    "\d0316",  # COMBINING GRAVE ACCENT BELOW
    "\d0340",  # COMBINING GRAVE TONE MARK
    "\d0344",  # COMBINING GREEK DIALYTIKA TONOS
    "\d0343",  # COMBINING GREEK KORONIS
    "\d0342",  # COMBINING GREEK PERISPOMENI
    "\d0345",  # COMBINING GREEK YPOGEGRAMMENI
    "\d030C",  # combining hacek
    "\dFE20",  # Combining Half Marks
    "\dFE27",  # Combining Half Marks Below
    "\d034B",  # COMBINING HOMOTHETIC ABOVE
    "\d0309",  # COMBINING HOOK ABOVE
    "\d031B",  # COMBINING HORN
    "\d0311",  # COMBINING INVERTED BREVE
    "\d032F",  # COMBINING INVERTED BREVE BELOW
    "\d033A",  # COMBINING INVERTED BRIDGE BELOW
    "\d032B",  # COMBINING INVERTED DOUBLE ARCH BELOW
    "\d3099",  # combining japanese daku-on
    "\d309A",  # combining japanese han-daku-on
    "\d0363",  # Combining Latin Small Letters
    "\d031A",  # COMBINING LEFT ANGLE ABOVE
    "\d0349",  # COMBINING LEFT ANGLE BELOW
    "\d20D6",  # COMBINING LEFT ARROW ABOVE
    "\d20EE",  # COMBINING LEFT ARROW BELOW
    "\d0354",  # COMBINING LEFT ARROWHEAD BELOW
    "\d0351",  # COMBINING LEFT HALF RING ABOVE
    "\d031C",  # COMBINING LEFT HALF RING BELOW
    "\d20D0",  # COMBINING LEFT HARPOON ABOVE
    "\d20E1",  # COMBINING LEFT RIGHT ARROW ABOVE
    "\d034D",  # COMBINING LEFT RIGHT ARROW BELOW
    "\d0318",  # COMBINING LEFT TACK BELOW
    "\d20EA",  # COMBINING LEFTWARDS ARROW OVERLAY
    "\d20ED",  # COMBINING LEFTWARDS HARPOON WITH BARB DOWNWARDS
    "\d20EB",  # COMBINING LONG DOUBLE SOLIDUS OVERLAY
    "\d0338",  # COMBINING LONG SOLIDUS OVERLAY
    "\d0336",  # COMBINING LONG STROKE OVERLAY
    "\d20D2",  # COMBINING LONG VERTICAL LINE OVERLAY
    "\d0332",  # COMBINING LOW LINE
    "\d0304",  # COMBINING MACRON
    "\d0331",  # COMBINING MACRON BELOW
    "\dFE24",  # COMBINING MACRON LEFT HALF
    "\dFE25",  # COMBINING MACRON RIGHT HALF
    "\d0653",  # Combining Marks, Arabic
    "\d135D",  # Combining Marks, Ethiopic
    "\d0320",  # COMBINING MINUS SIGN BELOW
    "\d034A",  # COMBINING NOT TILDE ABOVE
    "\d0328",  # COMBINING OGONEK
    "\d0305",  # COMBINING OVERLINE
    "\d0321",  # COMBINING PALATALIZED HOOK BELOW
    "\d031F",  # COMBINING PLUS SIGN BELOW
    "\d0322",  # COMBINING RETROFLEX HOOK BELOW
    "\d20E5",  # COMBINING REVERSE SOLIDUS OVERLAY
    "\d0314",  # COMBINING REVERSED COMMA ABOVE
    "\d20D7",  # COMBINING RIGHT ARROW ABOVE
    "\d20EF",  # COMBINING RIGHT ARROW BELOW
    "\d0350",  # COMBINING RIGHT ARROWHEAD ABOVE
    "\d0355",  # COMBINING RIGHT ARROWHEAD BELOW
    "\d0357",  # COMBINING RIGHT HALF RING ABOVE
    "\d0339",  # COMBINING RIGHT HALF RING BELOW
    "\d20D1",  # COMBINING RIGHT HARPOON ABOVE
    "\d0319",  # COMBINING RIGHT TACK BELOW
    "\d20EC",  # COMBINING RIGHTWARDS HARPOON WITH BARB DOWNWARDS
    "\d030A",  # COMBINING RING ABOVE
    "\d0325",  # COMBINING RING BELOW
    "\d20D8",  # COMBINING RING OVERLAY
    "\d033C",  # COMBINING SEAGULL BELOW
    "\d0337",  # COMBINING SHORT SOLIDUS OVERLAY
    "\d0335",  # COMBINING SHORT STROKE OVERLAY
    "\d20D3",  # COMBINING SHORT VERTICAL LINE OVERLAY
    "\d033B",  # COMBINING SQUARE BELOW
    "\d20DB",  # COMBINING THREE DOTS ABOVE
    "\d0303",  # COMBINING TILDE
    "\d0330",  # COMBINING TILDE BELOW
    "\d0334",  # COMBINING TILDE OVERLAY
    "\d20E8",  # COMBINING TRIPLE UNDERDOT
    "\d0312",  # COMBINING TURNED COMMA ABOVE
    "\d031D",  # COMBINING UP TACK BELOW
    "\d034E",  # COMBINING UPWARDS ARROW BELOW
    "\d030D",  # COMBINING VERTICAL LINE ABOVE
    "\d0329",  # COMBINING VERTICAL LINE BELOW
    "\d033E",  # COMBINING VERTICAL TILDE
    "\d20E9",  # COMBINING WIDE BRIDGE ABOVE
    "\d033D",  # COMBINING X ABOVE
    "\d0353",  # COMBINING X BELOW
    "\d035B",  # COMBINING ZIGZAG ABOVE
    "\d1F3AD",  # comedy and tragedy, masks of
    "\d2604",  # COMET
    "\d1F4A0",  # Comic Style Symbols
    "\d002C",  # COMMA
    "\d0315",  # COMMA ABOVE RIGHT, COMBINING
    "\d0313",  # COMMA ABOVE, COMBINING
    "\d0314",  # COMMA ABOVE, COMBINING REVERSED
    "\d0312",  # COMMA ABOVE, COMBINING TURNED
    "\d0326",  # COMMA BELOW, COMBINING
    "\d201D",  # comma quotation mark, double
    "\d201F",  # comma quotation mark, double reversed
    "\d201C",  # comma quotation mark, double turned
    "\d201E",  # comma quotation mark, low double
    "\d201A",  # comma quotation mark, low single
    "\d2019",  # comma quotation mark, single
    "\d201B",  # comma quotation mark, single reversed
    "\d2018",  # comma quotation mark, single turned
    "\d060C",  # COMMA, ARABIC
    "\d055D",  # COMMA, ARMENIAN
    "\d1363",  # COMMA, ETHIOPIC
    "\d00B7",  # comma, georgian
    "\d3001",  # COMMA, IDEOGRAPHIC
    "\d2063",  # comma, invisible
    "\d02BD",  # COMMA, MODIFIER LETTER REVERSED
    "\d02BB",  # COMMA, MODIFIER LETTER TURNED
    "\d1802",  # COMMA, MONGOLIAN
    "\d1808",  # COMMA, MONGOLIAN MANCHU
    "\d2E41",  # COMMA, REVERSED
    "\d2318",  # command key
    "\d009F",  # COMMAND, APPLICATION PROGRAM
    "\d009D",  # COMMAND, OPERATING SYSTEM
    "\d0040",  # COMMERCIAL AT
    "\d2052",  # COMMERCIAL MINUS SIGN
    "\d1F4DD",  # Communication Symbols
    "\d1F57B",  # Communication Symbols
    "\d1F4BF",  # compact disc
    "\d263C",  # compass
    "\dF900",  # Compatibility and Specials Area
    "\dFE30",  # Compatibility Forms, CJK
    "\d2F800",  # Compatibility Ideographs Supplement, CJK
    "\dF900",  # Compatibility Ideographs, CJK
    "\dFA70",  # Compatibility Ideographs, DPRK
    "\dFA30",  # Compatibility Ideographs, JIS X 0213
    "\d3130",  # Compatibility Jamo, Korean Hangul
    "\d3300",  # Compatibility, CJK
    "\d2201",  # COMPLEMENT
    "\d2102",  # complex numbers
    "\d27DF",  # component, radial
    "\d2500",  # Components, Form and Chart
    "\d2218",  # composite function
    "\d20DD",  # composition circle, jis
    "\d2384",  # COMPOSITION SYMBOL
    "\d1F5A5",  # Computer Component Symbols
    "\d2040",  # concatenation, sequence
    "\d2332",  # CONICAL TAPER
    "\dFE26",  # CONJOINING MACRON, COMBINING
    "\d22B9",  # CONJUGATE MATRIX, HERMITIAN
    "\d2227",  # conjunction
    "\d260C",  # CONJUNCTION
    "\d03C0",  # constant pi, mathematical
    "\d2107",  # CONSTANT, EULER
    "\d210E",  # CONSTANT, PLANCK
    "\d2627",  # constantine's cross
    "\d26CF",  # construction
    "\d1F477",  # CONSTRUCTION WORKER
    "\d220B",  # CONTAINS AS MEMBER
    "\d220D",  # CONTAINS AS MEMBER, SMALL
    "\d22B3",  # CONTAINS AS NORMAL SUBGROUP
    "\dFB50",  # Contextual Form Glyphs, Arabic
    "\dFE80",  # Contextual Form Glyphs, Arabic
    "\d2AA1",  # continuity, absolute
    "\d2381",  # CONTINUOUS UNDERLINE SYMBOL
    "\d2136",  # continuum, second transfinite cardinal
    "\d222E",  # CONTOUR INTEGRAL
    "\d2233",  # CONTOUR INTEGRAL, ANTICLOCKWISE
    "\d2232",  # CONTOUR INTEGRAL, CLOCKWISE
    "\d2233",  # contour integral, counterclockwise
    "\d20E9",  # contraction operator
    "\d2388",  # control
    "\d25F0",  # Control Code Graphics, Quadrant
    "\d0000",  # Control Codes, ASCII C0
    "\d0000",  # Control Codes, C0
    "\d0080",  # Control Codes, C1
    "\d2400",  # Control Codes, Graphic Pictures for
    "\d237D",  # Control Codes, Graphics for
    "\d009B",  # CONTROL SEQUENCE INTRODUCER
    "\d202A",  # Controls, Bidirectional Format
    "\d180B",  # Controls, Mongolian Format
    "\d2210",  # coproduct sign
    "\d2210",  # COPRODUCT, N-ARY
    "\d102E0",  # Coptic Epact Numbers
    "\d03E2",  # Coptic Letters Derived from Demotic
    "\d2C80",  # Coptic, Bohairic
    "\dFE24",  # Coptic, Continuous Macrons for
    "\d2CB2",  # Coptic, Extended
    "\d00A9",  # COPYRIGHT SIGN
    "\d2117",  # COPYRIGHT, SOUND RECORDING
    "\d2308",  # Corner Brackets
    "\d300C",  # Corner Brackets, CJK
    "\dA700",  # Corner Tone Marks for Chinese
    "\d231C",  # Corners, Quine
    "\d2258",  # CORRESPONDS TO
    "\d2259",  # corresponds to
    "\d20A1",  # costa rican currency
    "\d2135",  # countable, first transfinite cardinal
    "\d2334",  # COUNTERBORE
    "\d20D4",  # counterclockwise arrow above, combining
    "\d2233",  # counterclockwise contour integral
    "\d2A11",  # counterclockwise integration
    "\d20DA",  # counterclockwise ring overlay, combining
    "\d2335",  # COUNTERSINK
    "\d1F404",  # COW
    "\d1F42E",  # COW FACE
    "\d000D",  # cr
    "\d1F980",  # CRAB
    "\d0BF7",  # CREDIT SIGN, TAMIL
    "\d26B1",  # cremated symbol
    "\d1F319",  # CRESCENT MOON
    "\d262A",  # CRESCENT, STAR AND
    "\d01C4",  # Croatian Digraphs Matching Serbian Cyrillic Letters
    "\d1F40A",  # CROCODILE
    "\d230C",  # Crops
    "\d02DF",  # CROSS ACCENT, MODIFIER LETTER
    "\d2719",  # Cross Dingbats
    "\d274C",  # CROSS MARK
    "\d2629",  # CROSS OF JERUSALEM
    "\d2628",  # CROSS OF LORRAINE
    "\d1F542",  # CROSS POMMEE
    "\d211E",  # cross ratio
    "\d2627",  # cross, constantine's
    "\d205C",  # CROSS, DOTTED
    "\d2671",  # CROSS, EAST SYRIAC
    "\d1F547",  # CROSS, HEAVY LATIN
    "\d271D",  # CROSS, LATIN
    "\d2020",  # cross, long
    "\d2720",  # CROSS, MALTESE
    "\d2626",  # CROSS, ORTHODOX
    "\d2613",  # cross, st. andrew's
    "\d2670",  # CROSS, WEST SYRIAC
    "\d1F546",  # CROSS, WHITE LATIN
    "\d1F91E",  # crossed fingers
    "\d2694",  # CROSSED SWORDS
    "\d2719",  # Crosses
    "\d1F7A1",  # Crosses, Greek
    "\d0023",  # crosshatch
    "\d1D15F",  # crotchet
    "\d2669",  # crotchet
    "\d20A2",  # CRUZEIRO SIGN
    "\d2CEB",  # Cryptogrammic Letters
    "\d221B",  # CUBE ROOT
    "\d00B3",  # cubed
    "\d1F5FB",  # Cultural Symbols
    "\d12000",  # Cuneiform
    "\d12400",  # Cuneiform Numbers and Punctuation
    "\d12480",  # Cuneiform, Early Dynastic
    "\d222A",  # cup
    "\d2615",  # cup of coffee
    "\d2615",  # cup of tea
    "\d26FE",  # CUP ON BLACK SQUARE
    "\d2294",  # CUP, SQUARE
    "\d03D0",  # curled beta
    "\d007D",  # curly bracket, closing
    "\d007B",  # CURLY BRACKET, LEFT
    "\d2983",  # CURLY BRACKET, LEFT WHITE
    "\d007B",  # curly bracket, opening
    "\d007D",  # CURLY BRACKET, RIGHT
    "\d2984",  # CURLY BRACKET, RIGHT WHITE
    "\d22CF",  # CURLY LOGICAL AND
    "\d22CE",  # CURLY LOGICAL OR
    "\d00A4",  # CURRENCY SIGN
    "\d09F2",  # Currency Signs, Bengali
    "\d0E3F",  # CURRENCY SYMBOL BAHT, THAI
    "\d17DB",  # CURRENCY SYMBOL RIEL, KHMER
    "\d0192",  # currency symbol, florin
    "\d20A0",  # Currency Symbols
    "\d20B3",  # currency, argentinian former
    "\d058F",  # currency, armenian
    "\d20BC",  # currency, azerbaijani
    "\d20A2",  # currency, brazilian
    "\d20A1",  # currency, costa rican
    "\d20A1",  # currency, el salvadorian
    "\d20AC",  # currency, euro european
    "\d20A3",  # currency, french
    "\d20BE",  # currency, georgian
    "\d20B5",  # currency, ghana
    "\d20AF",  # currency, greek
    "\d20A8",  # currency, indian
    "\dFDFC",  # currency, iranian
    "\d20AA",  # currency, israeli
    "\d20A4",  # currency, italian
    "\d20A9",  # currency, korean
    "\d20AD",  # currency, laotian
    "\d20AE",  # currency, mongolian
    "\d20A6",  # currency, nigerian
    "\d20B2",  # currency, paraguayan
    "\d20B1",  # currency, phillipine
    "\d20BD",  # currency, russian
    "\d20A7",  # currency, spanish
    "\d20A4",  # currency, turkish
    "\d20B4",  # currency, ukrainian
    "\d20AB",  # currency, vietnamese
    "\d2393",  # CURRENT SYMBOL FORM TWO, DIRECT
    "\d23E6",  # CURRENT, AC
    "\d223F",  # current, alternating
    "\d21A1",  # cursor down, fast
    "\d219E",  # cursor left, fast
    "\d21A0",  # cursor right, fast
    "\d219F",  # cursor up, fast
    "\d223C",  # cycle
    "\d232D",  # CYLINDRICITY
    "\d10800",  # Cypriot Syllabary
    "\d0400",  # Cyrillic
    "\d0400",  # Cyrillic Capital Letters
    "\d0483",  # Cyrillic Combining Characters
    "\d2DE0",  # Cyrillic Extended-A
    "\dA640",  # Cyrillic Extended-B
    "\d1C80",  # Cyrillic Extended-C
    "\d0450",  # Cyrillic Extensions
    "\d048A",  # Cyrillic Extensions
    "\d0460",  # Cyrillic Historic Letters
    "\d0430",  # Cyrillic Small Letters
    "\d0500",  # Cyrillic Supplement
    "\dFE2E",  # CYRILLIC TITLO LEFT HALF, COMBINING
    "\d0256",  # d retroflex hook, latin small letter
    "\d010F",  # D WITH CARON, LATIN SMALL LETTER
    "\d1E11",  # D WITH CEDILLA, LATIN SMALL LETTER
    "\d1E13",  # D WITH CIRCUMFLEX BELOW, LATIN SMALL LETTER
    "\d0221",  # D WITH CURL, LATIN SMALL LETTER
    "\d1E0B",  # D WITH DOT ABOVE, LATIN SMALL LETTER
    "\d1E0D",  # D WITH DOT BELOW, LATIN SMALL LETTER
    "\d018A",  # D WITH HOOK, LATIN CAPITAL LETTER
    "\d0257",  # D WITH HOOK, LATIN SMALL LETTER
    "\d1E0F",  # D WITH LINE BELOW, LATIN SMALL LETTER
    "\d0111",  # D WITH STROKE, LATIN SMALL LETTER
    "\d0256",  # D WITH TAIL, LATIN SMALL LETTER
    "\d018C",  # D WITH TOPBAR, LATIN SMALL LETTER
    "\d29E0",  # d'alembertian
    "\d0369",  # D, COMBINING LATIN SMALL LETTER
    "\d2145",  # D, DOUBLE-STRUCK ITALIC CAPITAL
    "\d2146",  # D, DOUBLE-STRUCK ITALIC SMALL
    "\d0189",  # D, LATIN CAPITAL LETTER AFRICAN
    "\d1D05",  # D, LATIN LETTER SMALL CAPITAL
    "\d2020",  # DAGGER
    "\d2021",  # DAGGER, DOUBLE
    "\d3099",  # daku-on, combining japanese
    "\d309B",  # daku-on, japanese
    "\d2138",  # DALET SYMBOL
    "\d0964",  # DANDA, DEVANAGARI
    "\d0965",  # DANDA, DEVANAGARI DOUBLE
    "\d00AC",  # dash, angled
    "\d229D",  # DASH, CIRCLED
    "\d2014",  # DASH, EM
    "\d2013",  # DASH, EN
    "\d2012",  # DASH, FIGURE
    "\d2E3A",  # dash, omission
    "\d2015",  # dash, quotation
    "\d2053",  # DASH, SWUNG
    "\d2E3A",  # DASH, TWO-EM
    "\d301C",  # DASH, WAVE
    "\d3030",  # DASH, WAVY
    "\dFE4D",  # DASHED LOW LINE
    "\dFE49",  # DASHED OVERLINE
    "\d2010",  # Dashes
    "\d0314",  # dasia, greek
    "\d0010",  # DATA LINK ESCAPE
    "\d2410",  # DATA LINK ESCAPE, SYMBOL FOR
    "\d27D5",  # Database Theory Operators
    "\d2721",  # DAVID, STAR OF
    "\d0BF3",  # DAY SIGN, TAMIL
    "\d33E0",  # Days, Ideographic Telegraph Symbols for
    "\d0238",  # DB DIGRAPH, LATIN SMALL LETTER
    "\d0BF6",  # DEBIT SIGN, TAMIL
    "\d23E8",  # DECIMAL EXPONENT SYMBOL
    "\d002E",  # decimal point
    "\d002C",  # decimal separator
    "\d2396",  # DECIMAL SEPARATOR KEY SYMBOL
    "\d066B",  # DECIMAL SEPARATOR, ARABIC
    "\d23F7",  # decrease
    "\d0965",  # deergh viram, devanagari
    "\d2103",  # DEGREE CELSIUS
    "\d2109",  # DEGREE FAHRENHEIT
    "\d00B0",  # DEGREE SIGN
    "\d2103",  # degrees centigrade
    "\d2207",  # del
    "\d007F",  # DELETE
    "\d2425",  # DELETE FORM TWO, SYMBOL FOR
    "\d232B",  # delete to the left key
    "\d2326",  # delete to the right key
    "\d2421",  # DELETE, SYMBOL FOR
    "\d225C",  # DELTA EQUAL TO
    "\d018D",  # DELTA, LATIN SMALL LETTER TURNED
    "\d03E2",  # Demotic, Coptic Letters Derived from
    "\d01C0",  # DENTAL CLICK, LATIN LETTER
    "\d23BE",  # Dentistry Notation Symbols
    "\d21A7",  # depth symbol
    "\d0307",  # derivative
    "\d0308",  # derivative, double
    "\d20DC",  # derivative, fourth
    "\d20DB",  # derivative, third
    "\d260B",  # DESCENDING NODE
    "\d10400",  # Deseret
    "\d0900",  # Devanagari
    "\d0902",  # devanagari bindu
    "\d0915",  # Devanagari Consonants
    "\d0964",  # DEVANAGARI DANDA
    "\d0965",  # devanagari deergh viram
    "\d093E",  # Devanagari Dependent Vowel Signs
    "\d0966",  # Devanagari Digits
    "\d0965",  # DEVANAGARI DOUBLE DANDA
    "\dA8E0",  # Devanagari Extended
    "\d0951",  # Devanagari Extensions
    "\d0904",  # Devanagari Independent Vowels
    "\d0950",  # DEVANAGARI OM
    "\d0964",  # devanagari purna viram
    "\d0902",  # DEVANAGARI SIGN ANUSVARA
    "\d093D",  # DEVANAGARI SIGN AVAGRAHA
    "\d0901",  # DEVANAGARI SIGN CANDRABINDU
    "\d093C",  # DEVANAGARI SIGN NUKTA
    "\d094D",  # DEVANAGARI SIGN VIRAMA
    "\d0903",  # DEVANAGARI SIGN VISARGA
    "\d0011",  # Device Controls
    "\d2411",  # Device Controls, Symbols for
    "\d2638",  # DHARMA, WHEEL OF
    "\d20E6",  # diacritic, finite function
    "\d20D0",  # Diacritical Marks for Symbols
    "\d20D0",  # Diacritical Marks for Symbols, Combining
    "\d0300",  # Diacritical Marks, Combining
    "\d0342",  # Diacritics for Greek
    "\d0346",  # Diacritics for IPA
    "\d0350",  # Diacritics for Uralic Phonetic Alphabet
    "\d302A",  # Diacritics, CJK
    "\d035C",  # Diacritics, Double
    "\d20DD",  # Diacritics, Enclosing
    "\d0363",  # Diacritics, Medieval Superscript Letter
    "\d0300",  # Diacritics, Ordinary
    "\d0334",  # Diacritics, Overstruck
    "\d02D8",  # Diacritics, Spacing Clones of
    "\d00A8",  # DIAERESIS
    "\d0324",  # DIAERESIS BELOW, COMBINING
    "\d0308",  # DIAERESIS, COMBINING
    "\d00A8",  # diaeresis, spacing
    "\d22F1",  # DIAGONAL ELLIPSIS, DOWN RIGHT
    "\d22F0",  # DIAGONAL ELLIPSIS, UP RIGHT
    "\d0344",  # DIALYTIKA TONOS, COMBINING GREEK
    "\d0308",  # dialytika, greek
    "\d2300",  # DIAMETER SIGN
    "\d22C4",  # DIAMOND OPERATOR
    "\d20DF",  # DIAMOND, COMBINING ENCLOSING
    "\d25C6",  # Diamonds
    "\d1F797",  # Diamonds
    "\d2B25",  # Diamonds and Lozenges
    "\d2680",  # Dice
    "\d2690",  # Dictionary and Map Symbols
    "\d2E1A",  # Dictionary Punctuation
    "\d2021",  # diesis
    "\d223C",  # difference between
    "\d224F",  # DIFFERENCE BETWEEN
    "\d2A24",  # difference or sum, positive
    "\d2207",  # difference, backward
    "\d2206",  # difference, forward
    "\d2A26",  # difference, sum or positive
    "\d2206",  # difference, symmetric
    "\d2238",  # difference, symmetric
    "\d2296",  # difference, symmetric
    "\d2202",  # DIFFERENTIAL, PARTIAL
    "\d2132",  # digamma inversum, claudian
    "\d24EA",  # DIGIT ZERO, CIRCLED
    "\d0F2A",  # Digits Minus Half, Tibetan
    "\d1D7CE",  # Digits Symbols, Mathematical
    "\d0660",  # Digits, Arabic-Indic
    "\d0030",  # Digits, ASCII
    "\d1B50",  # Digits, Balinese
    "\d09E6",  # Digits, Bengali
    "\d1D7CE",  # Digits, Bold
    "\d0966",  # Digits, Devanagari
    "\d2776",  # Digits, Dingbat Circled
    "\d1D7D8",  # Digits, Double-struck
    "\d06F0",  # Digits, Eastern Arabic-Indic
    "\d1369",  # Digits, Ethiopic
    "\d0AE6",  # Digits, Gujarati
    "\d0A66",  # Digits, Gurmukhi
    "\d0CE6",  # Digits, Kannada
    "\d10A40",  # Digits, Kharoshthi
    "\d17E0",  # Digits, Khmer
    "\d0ED0",  # Digits, Lao
    "\d1946",  # Digits, Limbu
    "\d0D66",  # Digits, Malayalam
    "\d1810",  # Digits, Mongolian
    "\d1D7F6",  # Digits, Monospace
    "\d1040",  # Digits, Myanmar
    "\d19D0",  # Digits, New Tai Lue
    "\d0B66",  # Digits, Oriya
    "\d104A0",  # Digits, Osmanya
    "\d1D7E2",  # Digits, Sans-serif
    "\d1D7EC",  # Digits, Sans-serif Bold
    "\d2080",  # Digits, Subscript
    "\d2070",  # Digits, Superscript
    "\d0BE7",  # Digits, Tamil
    "\d0C66",  # Digits, Telugu
    "\d0E50",  # Digits, Thai
    "\d0F20",  # Digits, Tibetan
    "\d268A",  # Digram Symbols, Yijing / I Ching Monogram and
    "\d01C4",  # Digraphs Matching Serbian Cyrillic Letters, Croatian
    "\d02A3",  # Digraphs, Phonetic
    "\d05F0",  # Digraphs, Yiddish
    "\d2AFE",  # dijkstra choice
    "\d2AFF",  # dijkstra choice, n-ary
    "\d2331",  # DIMENSION ORIGIN
    "\d2794",  # Dingbat Arrows
    "\d2776",  # Dingbat Circled Digits
    "\d2700",  # Dingbats
    "\d2700",  # Dingbats Series 100, ITC Zapf
    "\d2794",  # Dingbats, Arrow
    "\d2722",  # Dingbats, Asterisk
    "\d2719",  # Dingbats, Cross
    "\d274D",  # Dingbats, Drop-shadowed
    "\d2620",  # Dingbats, Hazard
    "\d2763",  # Dingbats, Heart
    "\d2600",  # Dingbats, Miscellaneous
    "\d2669",  # Dingbats, Music
    "\d1F650",  # Dingbats, Ornamental
    "\d270E",  # Dingbats, Pencil
    "\d261A",  # Dingbats, Pointing Index Finger
    "\d275B",  # Dingbats, Quotation Mark
    "\d2701",  # Dingbats, Scissors
    "\d2744",  # Dingbats, Snowflake
    "\d2726",  # Dingbats, Star
    "\d2758",  # Dingbats, Vertical Bar
    "\d2620",  # Dingbats, Warning
    "\d2600",  # Dingbats, Weather
    "\d2700",  # Dingbats, Zapf
    "\d1F37D",  # dining available symbol
    "\d2393",  # DIRECT CURRENT SYMBOL FORM TWO
    "\d2299",  # direct product
    "\d2295",  # direct sum
    "\d202A",  # Directional Format Characters
    "\d202C",  # DIRECTIONAL FORMATTING, POP
    "\d2069",  # DIRECTIONAL ISOLATE, POP
    "\d2382",  # DISCONTINUOUS UNDERLINE SYMBOL
    "\d00AD",  # discretionary hyphen
    "\d2228",  # disjunction
    "\d3003",  # DITTO MARK
    "\d2223",  # DIVIDES
    "\d17F0",  # Divination, Khmer Numeric Symbols for
    "\d00F7",  # DIVISION SIGN
    "\d2A2F",  # Division Sign Operators, Multiplication and
    "\d2A38",  # DIVISION SIGN, CIRCLED
    "\d2215",  # DIVISION SLASH
    "\d2298",  # DIVISION SLASH, CIRCLED
    "\d22C7",  # DIVISION TIMES
    "\d27CC",  # DIVISION, LONG
    "\d26AE",  # DIVORCE SYMBOL
    "\d1F4AB",  # DIZZY SYMBOL
    "\d26D4",  # do not enter
    "\d1F5CE",  # DOCUMENT
    "\d1F5CB",  # DOCUMENT, EMPTY
    "\d220C",  # DOES NOT CONTAIN AS MEMBER
    "\d2224",  # DOES NOT DIVIDE
    "\d2204",  # DOES NOT EXIST, THERE
    "\d22A3",  # does not yield
    "\d1F415",  # DOG
    "\d1F436",  # DOG FACE
    "\d0024",  # DOLLAR SIGN
    "\d1F42C",  # DOLPHIN
    "\d25C1",  # domain restriction
    "\d1F030",  # Domino Tiles
    "\d20AB",  # DONG SIGN
    "\d002E",  # dot
    "\d02D9",  # DOT ABOVE
    "\d0358",  # DOT ABOVE RIGHT, COMBINING
    "\d0307",  # DOT ABOVE, COMBINING
    "\d0308",  # dot above, double
    "\d0323",  # DOT BELOW, COMBINING
    "\d1037",  # DOT BELOW, MYANMAR SIGN
    "\d2024",  # DOT LEADER, ONE
    "\d2026",  # dot leader, three
    "\d2025",  # DOT LEADER, TWO
    "\d2238",  # DOT MINUS
    "\d22C5",  # DOT OPERATOR
    "\d2299",  # DOT OPERATOR, CIRCLED
    "\d22A1",  # DOT OPERATOR, SQUARED
    "\d2214",  # DOT PLUS
    "\d2059",  # DOT PUNCTUATION, FIVE
    "\d2058",  # DOT PUNCTUATION, FOUR
    "\d2056",  # DOT PUNCTUATION, THREE
    "\d205A",  # DOT PUNCTUATION, TWO
    "\d00B7",  # dot, greek middle
    "\d30FB",  # DOT, KATAKANA MIDDLE
    "\d0130",  # dot, latin capital letter i
    "\dA78F",  # DOT, LATIN LETTER SINOLOGICAL
    "\d00B7",  # DOT, MIDDLE
    "\dFE45",  # DOT, SESAME
    "\d237F",  # DOT, VERTICAL LINE WITH MIDDLE
    "\dFE46",  # DOT, WHITE SESAME
    "\d0131",  # DOTLESS I, LATIN SMALL LETTER
    "\d025F",  # DOTLESS J WITH STROKE, LATIN SMALL LETTER
    "\d0237",  # DOTLESS J, LATIN SMALL LETTER
    "\d1D6A4",  # Dotless Mathematical Symbols
    "\d20DC",  # DOTS ABOVE, COMBINING FOUR
    "\d20DB",  # DOTS ABOVE, COMBINING THREE
    "\d1805",  # DOTS, MONGOLIAN FOUR
    "\d205E",  # DOTS, VERTICAL FOUR
    "\d25CC",  # DOTTED CIRCLE
    "\d205C",  # DOTTED CROSS
    "\d2999",  # DOTTED FENCE
    "\d2234",  # Dotted Mathematical Operators
    "\d02DD",  # DOUBLE ACUTE ACCENT
    "\d030B",  # DOUBLE ACUTE ACCENT, COMBINING
    "\d300A",  # DOUBLE ANGLE BRACKET, LEFT
    "\d27EA",  # DOUBLE ANGLE BRACKET, MATHEMATICAL LEFT
    "\d27EB",  # DOUBLE ANGLE BRACKET, MATHEMATICAL RIGHT
    "\d300B",  # DOUBLE ANGLE BRACKET, RIGHT
    "\d00AB",  # DOUBLE ANGLE QUOTATION MARK, LEFT-POINTING
    "\d00BB",  # DOUBLE ANGLE QUOTATION MARK, RIGHT-POINTING
    "\d02EE",  # DOUBLE APOSTROPHE, MODIFIER LETTER
    "\d032B",  # DOUBLE ARCH BELOW, COMBINING INVERTED
    "\d21CD",  # Double Arrows
    "\d035C",  # DOUBLE BREVE BELOW, COMBINING
    "\d035D",  # DOUBLE BREVE, COMBINING
    "\d24F5",  # Double Circled Numbers
    "\d201D",  # double comma quotation mark
    "\d201E",  # double comma quotation mark, low
    "\d2021",  # DOUBLE DAGGER
    "\d0965",  # DOUBLE DANDA, DEVANAGARI
    "\d0308",  # double derivative
    "\d035C",  # Double Diacritics
    "\d0308",  # double dot above
    "\d203C",  # DOUBLE EXCLAMATION MARK
    "\d030F",  # DOUBLE GRAVE ACCENT, COMBINING
    "\d201F",  # DOUBLE HIGH-REVERSED-9 QUOTATION MARK
    "\d30A0",  # DOUBLE HYPHEN, KATAKANA-HIRAGANA
    "\d222C",  # DOUBLE INTEGRAL
    "\d22D2",  # DOUBLE INTERSECTION
    "\d0361",  # DOUBLE INVERTED BREVE, COMBINING
    "\d2A53",  # DOUBLE LOGICAL AND
    "\d2A54",  # DOUBLE LOGICAL OR
    "\d2017",  # DOUBLE LOW LINE
    "\d0333",  # DOUBLE LOW LINE, COMBINING
    "\d201E",  # DOUBLE LOW-9 QUOTATION MARK
    "\d035F",  # DOUBLE MACRON BELOW, COMBINING
    "\d035E",  # DOUBLE MACRON, COMBINING
    "\d22D0",  # Double Operators
    "\d033F",  # DOUBLE OVERLINE, COMBINING
    "\d01C1",  # double pipe
    "\d29FA",  # DOUBLE PLUS
    "\d2ABB",  # DOUBLE PRECEDES
    "\d2033",  # DOUBLE PRIME
    "\d301E",  # DOUBLE PRIME QUOTATION MARK
    "\d301F",  # DOUBLE PRIME QUOTATION MARK, LOW
    "\d301D",  # DOUBLE PRIME QUOTATION MARK, REVERSED
    "\d02BA",  # DOUBLE PRIME, MODIFIER LETTER
    "\d2036",  # DOUBLE PRIME, REVERSED
    "\d2047",  # Double Punctuation for Vertical Text
    "\d1736",  # DOUBLE PUNCTUATION, PHILIPPINE
    "\d2047",  # DOUBLE QUESTION MARK
    "\d201C",  # DOUBLE QUOTATION MARK, LEFT
    "\d201D",  # DOUBLE QUOTATION MARK, RIGHT
    "\d201F",  # double reversed comma quotation mark
    "\d0362",  # DOUBLE RIGHTWARDS ARROW BELOW, COMBINING
    "\d035A",  # DOUBLE RING BELOW, COMBINING
    "\d20EB",  # double slash overlay, long
    "\d2AFD",  # DOUBLE SOLIDUS OPERATOR
    "\d20EB",  # DOUBLE SOLIDUS OVERLAY, COMBINING LONG
    "\d22D0",  # DOUBLE SUBSET
    "\d2ABC",  # DOUBLE SUCCEEDS
    "\d22D1",  # DOUBLE SUPERSET
    "\d0360",  # DOUBLE TILDE, COMBINING
    "\d23E9",  # Double Triangles
    "\d201C",  # double turned comma quotation mark
    "\d0333",  # double underline
    "\d0333",  # double underscore
    "\d2017",  # double underscore, spacing
    "\d22D3",  # DOUBLE UNION
    "\d2016",  # DOUBLE VERTICAL LINE
    "\d030E",  # DOUBLE VERTICAL LINE ABOVE, COMBINING
    "\d0348",  # DOUBLE VERTICAL LINE BELOW, COMBINING
    "\d20E6",  # DOUBLE VERTICAL STROKE OVERLAY, COMBINING
    "\dFE4C",  # DOUBLE WAVY OVERLINE
    "\d01C2",  # double-barred pipe
    "\d1D7D8",  # Double-struck Digits
    "\d213C",  # Double-struck Greek Letters
    "\d213D",  # Double-struck Greek Letters
    "\d2145",  # Double-struck Italic Mathematical Symbols
    "\d1D538",  # Double-struck Mathematical Symbols
    "\d1F54A",  # DOVE OF PEACE
    "\d2304",  # DOWN ARROWHEAD
    "\d261F",  # DOWN POINTING INDEX, WHITE
    "\d22F1",  # DOWN RIGHT DIAGONAL ELLIPSIS
    "\d22A4",  # DOWN TACK
    "\d031E",  # DOWN TACK BELOW, COMBINING
    "\d21DF",  # down, page
    "\d230A",  # downstile, apl
    "\d2193",  # DOWNWARDS ARROW
    "\dFA70",  # DPRK Compatibility Ideographs
    "\d20AF",  # DRACHMA SIGN
    "\d232D",  # Drafting Symbols
    "\d1F409",  # DRAGON
    "\d1F432",  # DRAGON FACE
    "\d0292",  # dram
    "\d058F",  # DRAM SIGN, ARMENIAN
    "\d26C0",  # Draughts and Checkers, Symbols for
    "\d26DA",  # DRIVE SLOW SIGN
    "\d26FE",  # drive-in restaurant
    "\d264F",  # drop
    "\d274D",  # Drop-shadowed Dingbats
    "\d1F4A7",  # DROPLET
    "\d1F322",  # DROPLET, BLACK
    "\dFA0C",  # Duplicate Characters from Big 5
    "\d2F800",  # Duplicate Characters from CNS 11643-1992
    "\d1BC00",  # Duployan
    "\d1F4C0",  # DVD
    "\d00C9",  # E WITH ACUTE, LATIN CAPITAL LETTER
    "\d00E9",  # E WITH ACUTE, LATIN SMALL LETTER
    "\d0115",  # E WITH BREVE, LATIN SMALL LETTER
    "\d011B",  # E WITH CARON, LATIN SMALL LETTER
    "\d0229",  # E WITH CEDILLA, LATIN SMALL LETTER
    "\d1E19",  # E WITH CIRCUMFLEX BELOW, LATIN SMALL LETTER
    "\d00CA",  # E WITH CIRCUMFLEX, LATIN CAPITAL LETTER
    "\d00EA",  # E WITH CIRCUMFLEX, LATIN SMALL LETTER
    "\d00CB",  # E WITH DIAERESIS, LATIN CAPITAL LETTER
    "\d00EB",  # E WITH DIAERESIS, LATIN SMALL LETTER
    "\d0117",  # E WITH DOT ABOVE, LATIN SMALL LETTER
    "\d1EB9",  # E WITH DOT BELOW, LATIN SMALL LETTER
    "\d0205",  # E WITH DOUBLE GRAVE, LATIN SMALL LETTER
    "\d00C8",  # E WITH GRAVE, LATIN CAPITAL LETTER
    "\d00E8",  # E WITH GRAVE, LATIN SMALL LETTER
    "\d1EBB",  # E WITH HOOK ABOVE, LATIN SMALL LETTER
    "\d025D",  # E WITH HOOK, LATIN SMALL LETTER REVERSED OPEN
    "\d0207",  # E WITH INVERTED BREVE, LATIN SMALL LETTER
    "\d0113",  # E WITH MACRON, LATIN SMALL LETTER
    "\d0119",  # E WITH OGONEK, LATIN SMALL LETTER
    "\d0246",  # E WITH STROKE, LATIN CAPITAL LETTER
    "\d0247",  # E WITH STROKE, LATIN SMALL LETTER
    "\d1E1B",  # E WITH TILDE BELOW, LATIN SMALL LETTER
    "\d1EBD",  # E WITH TILDE, LATIN SMALL LETTER
    "\d0364",  # E, COMBINING LATIN SMALL LETTER
    "\d2147",  # E, DOUBLE-STRUCK ITALIC SMALL
    "\d0190",  # E, LATIN CAPITAL LETTER OPEN
    "\d018E",  # E, LATIN CAPITAL LETTER REVERSED
    "\d018E",  # e, latin capital letter turned
    "\d1D07",  # E, LATIN LETTER SMALL CAPITAL
    "\d029A",  # E, LATIN SMALL LETTER CLOSED OPEN
    "\d025E",  # E, LATIN SMALL LETTER CLOSED REVERSED OPEN
    "\d0153",  # e, latin small letter o
    "\d025B",  # E, LATIN SMALL LETTER OPEN
    "\d0258",  # E, LATIN SMALL LETTER REVERSED
    "\d025C",  # E, LATIN SMALL LETTER REVERSED OPEN
    "\d01DD",  # E, LATIN SMALL LETTER TURNED
    "\d1D08",  # E, LATIN SMALL LETTER TURNED OPEN
    "\d2130",  # E, SCRIPT CAPITAL
    "\d212F",  # E, SCRIPT SMALL
    "\d1F985",  # EAGLE
    "\d1F442",  # EAR
    "\d2641",  # EARTH
    "\d23DA",  # EARTH GROUND
    "\d2671",  # EAST SYRIAC CROSS
    "\d06F0",  # Eastern Arabic-Indic Digits
    "\d2E00",  # Editorial Symbols, New Testament
    "\d2191",  # egressive airflow
    "\d13000",  # Egyptian Hieroglyphs
    "\d266A",  # EIGHTH NOTE
    "\d266B",  # EIGHTH NOTES, BEAMED
    "\d215B",  # Eighths, Fractions
    "\d23CF",  # eject media
    "\d0A74",  # EK ONKAR, GURMUKHI
    "\d20A1",  # el salvadorian currency
    "\d10500",  # Elbasan
    "\d2301",  # ELECTRIC ARROW
    "\d1F50C",  # ELECTRIC PLUG
    "\d23E7",  # ELECTRICAL INTERSECTION
    "\d21AF",  # electrolysis
    "\d2130",  # electromotive force
    "\d238D",  # Electrotechnical Symbols
    "\d2208",  # ELEMENT OF
    "\d2209",  # ELEMENT OF, NOT AN
    "\d220A",  # ELEMENT OF, SMALL
    "\d2129",  # element, unique
    "\d1F418",  # ELEPHANT
    "\d2B2C",  # Ellipses
    "\d22F1",  # ELLIPSIS, DOWN RIGHT DIAGONAL
    "\d2026",  # ELLIPSIS, HORIZONTAL
    "\d0EAF",  # ELLIPSIS, LAO
    "\d22EF",  # ELLIPSIS, MIDLINE HORIZONTAL
    "\d1801",  # ELLIPSIS, MONGOLIAN
    "\d22F0",  # ELLIPSIS, UP RIGHT DIAGONAL
    "\d22EE",  # ELLIPSIS, VERTICAL
    "\d2118",  # elliptic function, weierstrass
    "\d2014",  # EM DASH
    "\d2001",  # EM QUAD
    "\d2003",  # EM SPACE
    "\d202A",  # EMBEDDING, LEFT-TO-RIGHT
    "\d202B",  # EMBEDDING, RIGHT-TO-LEFT
    "\d2130",  # emf
    "\d1F3FB",  # Emoji Modifiers
    "\d1F910",  # Emoticon Faces
    "\d1F600",  # Emoticons
    "\d055B",  # EMPHASIS MARK, ARMENIAN
    "\dFE45",  # Emphasis Marks, Sidelining
    "\d2383",  # EMPHASIS SYMBOL
    "\d2205",  # EMPTY SET
    "\d29B0",  # Empty Sets
    "\d2013",  # EN DASH
    "\d2000",  # EN QUAD
    "\d2002",  # EN SPACE
    "\d1F100",  # Enclosed Alphanumeric Supplement
    "\d2460",  # Enclosed Alphanumerics
    "\d3200",  # Enclosed CJK Letters and Months
    "\d1F200",  # Enclosed Ideographic Supplement
    "\d1F110",  # Enclosed Latin Capital Letters
    "\d2295",  # Enclosed Mathematical Operators
    "\d20E0",  # ENCLOSING CIRCLE BACKSLASH, COMBINING
    "\d20DD",  # ENCLOSING CIRCLE, COMBINING
    "\d20DD",  # Enclosing Diacritics
    "\d20DF",  # ENCLOSING DIAMOND, COMBINING
    "\d20E3",  # ENCLOSING KEYCAP, COMBINING
    "\d20E2",  # ENCLOSING SCREEN, COMBINING
    "\d20DE",  # ENCLOSING SQUARE, COMBINING
    "\d20E4",  # ENCLOSING UPWARD POINTING TRIANGLE, COMBINING
    "\d21F2",  # end
    "\d0097",  # END OF GUARDED AREA
    "\d000A",  # end of line
    "\d0019",  # END OF MEDIUM
    "\d237F",  # end of medium, symbol for
    "\d2419",  # END OF MEDIUM, SYMBOL FOR
    "\d220E",  # END OF PROOF
    "\d0087",  # END OF SELECTED AREA
    "\d0003",  # END OF TEXT
    "\d2403",  # END OF TEXT, SYMBOL FOR
    "\d0004",  # END OF TRANSMISSION
    "\d0017",  # END OF TRANSMISSION BLOCK
    "\d2417",  # END OF TRANSMISSION BLOCK, SYMBOL FOR
    "\d2301",  # end of transmission symbol
    "\d2404",  # END OF TRANSMISSION, SYMBOL FOR
    "\d014B",  # ENG, LATIN SMALL LETTER
    "\d0BFA",  # enn, tamil
    "\d203F",  # enotikon, greek
    "\d0005",  # ENQUIRY
    "\d2405",  # ENQUIRY, SYMBOL FOR
    "\d2324",  # enter key
    "\d2386",  # ENTER SYMBOL
    "\d1F3A0",  # Entertainment Symbols
    "\d29DC",  # entity &iinfin;, isotech
    "\d2709",  # ENVELOPE
    "\d1F582",  # ENVELOPE, BACK OF
    "\d1F583",  # ENVELOPE, STAMPED
    "\d000A",  # eol
    "\d205D",  # epidaurean acrophonic symbol three
    "\d03F5",  # EPSILON SYMBOL, GREEK LUNATE
    "\d03F6",  # EPSILON SYMBOL, GREEK REVERSED LUNATE
    "\d0190",  # epsilon, latin capital letter
    "\d025B",  # epsilon, latin small letter
    "\d029A",  # epsilon, latin small letter closed
    "\d025E",  # epsilon, latin small letter closed reversed
    "\d03F6",  # epsilon, reversed straight
    "\d220D",  # epsilon, reversed straight
    "\d03F5",  # epsilon, straight
    "\d034C",  # EQUAL TO ABOVE, COMBINING ALMOST
    "\d225C",  # equal to by definition
    "\d225D",  # EQUAL TO BY DEFINITION
    "\d224C",  # EQUAL TO, ALL
    "\d2248",  # EQUAL TO, ALMOST
    "\d2245",  # EQUAL TO, APPROXIMATELY
    "\d2257",  # equal to, approximately
    "\d2243",  # EQUAL TO, ASYMPTOTICALLY
    "\d225C",  # EQUAL TO, DELTA
    "\d2251",  # EQUAL TO, GEOMETRICALLY
    "\d2265",  # EQUAL TO, GREATER-THAN OR
    "\d2264",  # EQUAL TO, LESS-THAN OR
    "\d2260",  # EQUAL TO, NOT
    "\d225F",  # EQUAL TO, QUESTIONED
    "\d2257",  # EQUAL TO, RING
    "\d2256",  # EQUAL TO, RING IN
    "\d2243",  # Equality and Inequality Signs
    "\d22D5",  # Equality and Inequality Signs
    "\d2255",  # EQUALS COLON
    "\d003D",  # EQUALS SIGN
    "\d0347",  # EQUALS SIGN BELOW, COMBINING
    "\d229C",  # EQUALS, CIRCLED
    "\d2254",  # EQUALS, COLON
    "\d2252",  # equals, nearly
    "\d22CD",  # EQUALS, REVERSED TILDE
    "\d225B",  # EQUALS, STAR
    "\d225C",  # equiangular
    "\d225A",  # EQUIANGULAR TO
    "\d224D",  # EQUIVALENT TO
    "\d224E",  # EQUIVALENT TO, GEOMETRICALLY
    "\d2263",  # EQUIVALENT TO, STRICTLY
    "\d29E6",  # equivalent, tautological
    "\d337B",  # Era Names, Japanese
    "\d232B",  # ERASE TO THE LEFT
    "\d2326",  # ERASE TO THE RIGHT
    "\d212F",  # error
    "\d29EE",  # Error Bar Symbols
    "\d001B",  # ESCAPE
    "\d238B",  # escape
    "\d2BB9",  # escape
    "\d0010",  # ESCAPE, DATA LINK
    "\d241B",  # ESCAPE, SYMBOL FOR
    "\d2410",  # ESCAPE, SYMBOL FOR DATA LINK
    "\d0024",  # escudo
    "\d01AA",  # ESH LOOP, LATIN LETTER REVERSED
    "\d01A9",  # ESH, LATIN CAPITAL LETTER
    "\d0283",  # ESH, LATIN SMALL LETTER
    "\d0285",  # ESH, LATIN SMALL LETTER SQUAT REVERSED
    "\d212E",  # ESTIMATED SYMBOL
    "\d2259",  # ESTIMATES
    "\d00DF",  # eszett
    "\d204A",  # ET, TIRONIAN SIGN
    "\d00D0",  # ETH, LATIN CAPITAL LETTER
    "\d1D06",  # ETH, LATIN LETTER SMALL CAPITAL
    "\d00F0",  # ETH, LATIN SMALL LETTER
    "\d0153",  # ethel
    "\d1365",  # ETHIOPIC COLON
    "\d135D",  # Ethiopic Combining Marks
    "\d1363",  # ETHIOPIC COMMA
    "\d1369",  # Ethiopic Digits
    "\d2D80",  # Ethiopic Extended
    "\dAB00",  # Ethiopic Extended-A
    "\d1362",  # ETHIOPIC FULL STOP
    "\d1369",  # Ethiopic Numbers
    "\d1368",  # ETHIOPIC PARAGRAPH SEPARATOR
    "\d1366",  # ETHIOPIC PREFACE COLON
    "\d1361",  # Ethiopic Punctuation
    "\d1367",  # ETHIOPIC QUESTION MARK
    "\d1364",  # ETHIOPIC SEMICOLON
    "\d1380",  # Ethiopic Supplement
    "\d1200",  # Ethiopic Syllables
    "\d1361",  # ETHIOPIC WORDSPACE
    "\d2107",  # EULER CONSTANT
    "\d20AC",  # euro european currency
    "\d20AC",  # EURO SIGN
    "\d0100",  # European Latin
    "\d00A7",  # european paragraph sign
    "\d00B6",  # european section sign
    "\d2239",  # EXCESS
    "\d0021",  # EXCLAMATION MARK
    "\d2762",  # EXCLAMATION MARK ORNAMENT, HEAVY
    "\d2755",  # EXCLAMATION MARK ORNAMENT, WHITE
    "\d055C",  # EXCLAMATION MARK, ARMENIAN
    "\d203C",  # EXCLAMATION MARK, DOUBLE
    "\d00A1",  # EXCLAMATION MARK, INVERTED
    "\d01C3",  # exclamation mark, latin letter
    "\d1944",  # EXCLAMATION MARK, LIMBU
    "\d2048",  # EXCLAMATION MARK, QUESTION
    "\d2049",  # EXCLAMATION QUESTION MARK
    "\d2204",  # EXIST, THERE DOES NOT
    "\d2203",  # existential quantifier
    "\d2203",  # EXISTS, THERE
    "\d212F",  # exponent, natural
    "\d31F0",  # Extensions for Ainu, Katakana
    "\d1F47D",  # EXTRATERRESTRIAL ALIEN
    "\d1F441",  # EYE
    "\d1F440",  # EYES
    "\d01B9",  # EZH REVERSED, LATIN SMALL LETTER
    "\d01EF",  # EZH WITH CARON, LATIN SMALL LETTER
    "\d01B7",  # EZH, LATIN CAPITAL LETTER
    "\d1D23",  # EZH, LATIN LETTER SMALL CAPITAL
    "\d0292",  # EZH, LATIN SMALL LETTER
    "\d1E1F",  # F WITH DOT ABOVE, LATIN SMALL LETTER
    "\d0192",  # F WITH HOOK, LATIN SMALL LETTER
    "\d0192",  # f, latin small letter script
    "\d2131",  # F, SCRIPT CAPITAL
    "\d2132",  # F, TURNED CAPITAL
    "\d214E",  # F, TURNED SMALL
    "\d1F926",  # FACE PALM
    "\d263B",  # FACE, BLACK SMILING
    "\d3020",  # FACE, POSTAL MARK
    "\d2639",  # FACE, WHITE FROWNING
    "\d263A",  # FACE, WHITE SMILING
    "\d1F600",  # Faces
    "\d1F920",  # Faces
    "\d1F440",  # Facial Parts Symbols
    "\d213B",  # FACSIMILE SIGN
    "\d0021",  # factorial
    "\d26ED",  # factory
    "\d2109",  # FAHRENHEIT, DEGREE
    "\d1F478",  # Fairy Tale Symbols
    "\d1F46A",  # FAMILY
    "\d21A1",  # fast cursor down
    "\d219E",  # fast cursor left
    "\d21A0",  # fast cursor right
    "\d219F",  # fast cursor up
    "\d23E9",  # fast forward
    "\d23EA",  # fast rewind
    "\d1F385",  # FATHER CHRISTMAS
    "\d2032",  # feet
    "\d2640",  # FEMALE SIGN
    "\d00AA",  # FEMININE ORDINAL INDICATOR
    "\d2999",  # FENCE, DOTTED
    "\d2999",  # Fences
    "\d29D8",  # Fences, Wiggly
    "\d0352",  # FERMATA, COMBINING
    "\d26F4",  # FERRY
    "\d000C",  # ff
    "\d2155",  # Fifths, Fractions
    "\d2012",  # FIGURE DASH
    "\d2007",  # FIGURE SPACE
    "\d1F4C1",  # FILE FOLDER
    "\d1F4C2",  # FILE FOLDER, OPEN
    "\d001C",  # file separator
    "\d241C",  # FILE SEPARATOR, SYMBOL FOR
    "\d303F",  # FILL SPACE, IDEOGRAPHIC HALF
    "\d3164",  # FILLER, HANGUL
    "\d1F39E",  # FILM FRAMES
    "\d261A",  # Finger Dingbats, Pointing Index
    "\d1F91E",  # fingers crossed
    "\d21FB",  # finite function
    "\d20E6",  # finite function diacritic
    "\d2915",  # finite injection
    "\d21FC",  # finite relation
    "\d2901",  # finite surjection
    "\d2918",  # finite surjective injection
    "\d1F525",  # FIRE
    "\d1F6F1",  # FIRE ENGINE, ONCOMING
    "\d263D",  # FIRST QUARTER MOON
    "\d2068",  # FIRST STRONG ISOLATE
    "\d1F41F",  # FISH
    "\d297C",  # Fish Tails
    "\d1F420",  # FISH, TROPICAL
    "\d25C9",  # FISHEYE
    "\d261E",  # fist
    "\d270A",  # FIST, RAISED
    "\d1F44A",  # FISTED HAND SIGN
    "\d2059",  # FIVE DOT PUNCTUATION
    "\d26F3",  # FLAG IN HOLE
    "\d2691",  # FLAG, BLACK
    "\d1F3F4",  # FLAG, WAVING BLACK
    "\d1F3F3",  # FLAG, WAVING WHITE
    "\d2690",  # FLAG, WHITE
    "\d266D",  # FLAT SIGN, MUSIC
    "\d23E5",  # FLATNESS
    "\d269C",  # FLEUR-DE-LIS
    "\d230A",  # FLOOR, LEFT
    "\d230B",  # FLOOR, RIGHT
    "\d1F4BE",  # FLOPPY DISK
    "\d2619",  # FLORAL HEART BULLET, REVERSED ROTATED
    "\d0192",  # florin currency symbol
    "\d1F6F8",  # FLYING SAUCER
    "\d0192",  # folder
    "\d0E4F",  # FONGMAN, THAI CHARACTER
    "\d1F37D",  # food available symbol
    "\d1F354",  # Food Symbols
    "\d1F950",  # Food Symbols
    "\d1F463",  # FOOTPRINTS
    "\d2200",  # FOR ALL
    "\d22A9",  # FORCES
    "\d1695",  # Forfeda Supplement, Ogham
    "\d1F37D",  # FORK AND KNIFE WITH PLATE
    "\d2AD9",  # Forks
    "\d2500",  # Form and Chart Components
    "\d000C",  # FORM FEED
    "\d21A1",  # form feed
    "\d240C",  # FORM FEED, SYMBOL FOR
    "\d200C",  # Format Characters
    "\d202A",  # Format Characters, Directional
    "\d180B",  # Format Controls, Mongolian
    "\d202C",  # FORMATTING, POP DIRECTIONAL
    "\d25BB",  # forward arrow indicator
    "\d2206",  # forward difference
    "\d23F5",  # forward play
    "\d23E9",  # forward, fast
    "\d26F2",  # FOUNTAIN
    "\d26F6",  # FOUR CORNERS, SQUARE
    "\d205B",  # FOUR DOT MARK
    "\d2058",  # FOUR DOT PUNCTUATION
    "\d20DC",  # FOUR DOTS ABOVE, COMBINING
    "\d1805",  # FOUR DOTS, MONGOLIAN
    "\d205E",  # FOUR DOTS, VERTICAL
    "\d2005",  # FOUR-PER-EM SPACE
    "\d2131",  # fourier transform
    "\d20DC",  # fourth derivative
    "\d221C",  # FOURTH ROOT
    "\d02CB",  # fourth tone, mandarin chinese
    "\d00BC",  # Fourths, Fractions
    "\d215F",  # FRACTION NUMERATOR ONE
    "\d00BD",  # FRACTION ONE HALF, VULGAR
    "\d2151",  # FRACTION ONE NINTH, VULGAR
    "\d00BC",  # FRACTION ONE QUARTER, VULGAR
    "\d2150",  # FRACTION ONE SEVENTH, VULGAR
    "\d2152",  # FRACTION ONE TENTH, VULGAR
    "\d2044",  # FRACTION SLASH
    "\d00BE",  # FRACTION THREE QUARTERS, VULGAR
    "\d215B",  # Fractions Eighths
    "\d2155",  # Fractions Fifths
    "\d00BC",  # Fractions Fourths
    "\d00BC",  # Fractions Quarters
    "\d2159",  # Fractions Sixths
    "\d2153",  # Fractions Thirds
    "\d2153",  # Fractions, Vulgar
    "\d1D504",  # Fraktur Mathematical Symbols
    "\d1D56C",  # Fraktur Mathematical Symbols, Bold
    "\d29D6",  # framus, white
    "\d20A3",  # FRANC SIGN, FRENCH
    "\d0295",  # FRICATIVE, LATIN LETTER PHARYNGEAL VOICED
    "\d1F438",  # FROG FACE
    "\d2322",  # FROWN
    "\d2639",  # FROWNING FACE, WHITE
    "\d1F345",  # Fruit and Vegetable Symbols
    "\d26FD",  # FUEL PUMP
    "\d2588",  # FULL BLOCK
    "\d002E",  # FULL STOP
    "\d06D4",  # FULL STOP, ARABIC
    "\d0589",  # FULL STOP, ARMENIAN
    "\d166E",  # FULL STOP, CANADIAN SYLLABICS
    "\d1362",  # FULL STOP, ETHIOPIC
    "\d0589",  # full stop, georgian
    "\d3002",  # FULL STOP, IDEOGRAPHIC
    "\d1803",  # FULL STOP, MONGOLIAN
    "\d1809",  # FULL STOP, MONGOLIAN MANCHU
    "\dFF01",  # Fullwidth ASCII Variants
    "\dFF00",  # Fullwidth Forms, Halfwidth and
    "\dFFE0",  # Fullwidth Symbol Variants
    "\d2061",  # FUNCTION APPLICATION
    "\d0192",  # function symbol
    "\d212C",  # function, bernoulli
    "\d2218",  # function, composite
    "\d21FB",  # function, finite
    "\d0393",  # function, gamma
    "\d21F8",  # function, partial
    "\d2192",  # function, total
    "\d2118",  # function, weierstrass elliptic
    "\d2336",  # Functional Symbols, APL
    "\d26B1",  # FUNERAL URN
    "\d23DB",  # FUSE
    "\d180B",  # fvs1
    "\d01F5",  # G WITH ACUTE, LATIN SMALL LETTER
    "\d011F",  # G WITH BREVE, LATIN SMALL LETTER
    "\d01E7",  # G WITH CARON, LATIN SMALL LETTER
    "\d0123",  # G WITH CEDILLA, LATIN SMALL LETTER
    "\d011D",  # G WITH CIRCUMFLEX, LATIN SMALL LETTER
    "\d0121",  # G WITH DOT ABOVE, LATIN SMALL LETTER
    "\d0193",  # G WITH HOOK, LATIN CAPITAL LETTER
    "\d029B",  # G WITH HOOK, LATIN LETTER SMALL CAPITAL
    "\d0260",  # G WITH HOOK, LATIN SMALL LETTER
    "\d1E21",  # G WITH MACRON, LATIN SMALL LETTER
    "\d01E5",  # G WITH STROKE, LATIN SMALL LETTER
    "\d0262",  # G, LATIN LETTER SMALL CAPITAL
    "\d0261",  # G, LATIN SMALL LETTER SCRIPT
    "\d210A",  # G, SCRIPT SMALL
    "\d2141",  # G, TURNED SANS-SERIF CAPITAL
    "\d2141",  # game
    "\d1F3AE",  # Game Symbols
    "\d0393",  # gamma function
    "\d213E",  # GAMMA, DOUBLE-STRUCK CAPITAL
    "\d213D",  # GAMMA, DOUBLE-STRUCK SMALL
    "\d0194",  # GAMMA, LATIN CAPITAL LETTER
    "\d0263",  # GAMMA, LATIN SMALL LETTER
    "\d0264",  # gamma, latin small letter baby
    "\d02E0",  # GAMMA, MODIFIER LETTER SMALL
    "\d26FD",  # gas station
    "\d2699",  # GEAR
    "\d264A",  # GEMINI
    "\d26A2",  # Gender Symbols
    "\d26AD",  # Genealogical Symbols
    "\d2000",  # General Punctuation
    "\d0000",  # General Scripts Area
    "\d10000",  # General Scripts Area, Supplementary
    "\d22C2",  # generalized intersection
    "\d22C3",  # generalized union
    "\d223A",  # GEOMETRIC PROPORTION
    "\d1F532",  # Geometric Shapes
    "\d25A0",  # Geometric Shapes
    "\d1F780",  # Geometric Shapes Extended
    "\d2251",  # GEOMETRICALLY EQUAL TO
    "\d224E",  # GEOMETRICALLY EQUIVALENT TO
    "\d10A0",  # Georgian
    "\d10D0",  # Georgian Alphabet
    "\d10A0",  # Georgian Capital Letters
    "\d00B7",  # georgian comma
    "\d20BE",  # georgian currency
    "\d10F1",  # Georgian Extensions
    "\d0589",  # georgian full stop
    "\d10A0",  # Georgian Khutsuri
    "\d10D0",  # Georgian Mkhedruli
    "\d10FB",  # GEORGIAN PARAGRAPH SEPARATOR
    "\d10D0",  # Georgian Small Letters
    "\d2D00",  # Georgian Supplement
    "\d2133",  # german mark pre-wwii
    "\d20B0",  # GERMAN PENNY SIGN
    "\d1F645",  # Gesture Symbols
    "\d3013",  # GETA MARK
    "\d20B5",  # ghana currency
    "\d1F47B",  # GHOST
    "\d2137",  # GIMEL SYMBOL
    "\d1F467",  # GIRL
    "\d2C00",  # Glagolitic
    "\d1E000",  # Glagolitic Supplement
    "\d29E6",  # GLEICH STARK
    "\d1F30D",  # Globe Symbols
    "\d1F310",  # GLOBE WITH MERIDIANS
    "\d02BC",  # glottal stop
    "\d0241",  # GLOTTAL STOP, LATIN CAPITAL LETTER
    "\d0294",  # GLOTTAL STOP, LATIN LETTER
    "\d0296",  # GLOTTAL STOP, LATIN LETTER INVERTED
    "\d0295",  # glottal stop, latin letter reversed
    "\d0242",  # GLOTTAL STOP, LATIN SMALL LETTER
    "\d02C0",  # GLOTTAL STOP, MODIFIER LETTER
    "\d02C1",  # GLOTTAL STOP, MODIFIER LETTER REVERSED
    "\d02E4",  # GLOTTAL STOP, MODIFIER LETTER SMALL REVERSED
    "\d2E18",  # gnaborretni
    "\d2686",  # Go Markers
    "\d1F410",  # GOAT
    "\d1F47A",  # GOBLIN, JAPANESE
    "\d1F947",  # gold medal
    "\d16EE",  # Golden Numbers, Runic
    "\d26F3",  # golf course
    "\d10330",  # Gothic
    "\d11300",  # Grantha
    "\d034F",  # GRAPHEME JOINER, COMBINING
    "\d23B7",  # Graphic Characters, Terminal
    "\d2596",  # Graphic Characters, Terminal
    "\d2400",  # Graphic Pictures for Control Codes
    "\d237D",  # Graphics for Control Codes
    "\d25F0",  # Graphics, Quadrant Control Code
    "\d0060",  # GRAVE ACCENT
    "\d0316",  # GRAVE ACCENT BELOW, COMBINING
    "\d0300",  # GRAVE ACCENT, COMBINING
    "\d030F",  # GRAVE ACCENT, COMBINING DOUBLE
    "\d02CB",  # GRAVE ACCENT, MODIFIER LETTER
    "\d02CE",  # GRAVE ACCENT, MODIFIER LETTER LOW
    "\d0060",  # grave accent, spacing
    "\d02DF",  # grave accent, swedish
    "\d0340",  # GRAVE TONE MARK, COMBINING
    "\d26FC",  # graveyard
    "\d2265",  # GREATER-THAN OR EQUAL TO
    "\d003E",  # GREATER-THAN SIGN
    "\d226B",  # GREATER-THAN, MUCH
    "\d22D9",  # GREATER-THAN, VERY MUCH
    "\d0370",  # Greek
    "\d0391",  # Greek Alphabet
    "\d00B7",  # greek ano teleia
    "\d03D8",  # Greek Archaic Letters
    "\d03D0",  # GREEK BETA SYMBOL
    "\d0391",  # Greek Capital Letters
    "\d1F7A1",  # Greek Crosses
    "\d20AF",  # greek currency
    "\d0314",  # greek dasia
    "\d0308",  # greek dialytika
    "\d0344",  # GREEK DIALYTIKA TONOS, COMBINING
    "\d203F",  # greek enotikon
    "\d1F00",  # Greek Extended
    "\d0345",  # greek iota subscript
    "\d0343",  # GREEK KORONIS, COMBINING
    "\d213C",  # Greek Letters, Double-struck
    "\d03F5",  # GREEK LUNATE EPSILON SYMBOL
    "\d03F2",  # GREEK LUNATE SIGMA SYMBOL
    "\d1D6A8",  # Greek Mathematical Symbols
    "\d1D6A8",  # Greek Mathematical Symbols, Bold
    "\d1D71C",  # Greek Mathematical Symbols, Bold Italic
    "\d1D6E2",  # Greek Mathematical Symbols, Italic
    "\d1D756",  # Greek Mathematical Symbols, Sans-serif Bold
    "\d1D790",  # Greek Mathematical Symbols, Sans-serif Bold Italic
    "\d00B7",  # greek middle dot
    "\d1D200",  # Greek Musical Notation, Ancient
    "\d0345",  # greek non-spacing iota below
    "\d10140",  # Greek Numbers, Ancient
    "\d1D516",  # greek old testament
    "\d0301",  # greek oxia
    "\d2059",  # greek pentonkion
    "\d0342",  # GREEK PERISPOMENI, COMBINING
    "\d03D5",  # GREEK PHI SYMBOL
    "\d03D6",  # GREEK PI SYMBOL
    "\d0313",  # greek psili
    "\d0374",  # Greek Punctuation and Signs
    "\d003B",  # greek question mark
    "\d037E",  # GREEK QUESTION MARK
    "\d03F6",  # GREEK REVERSED LUNATE EPSILON SYMBOL
    "\d0314",  # greek rough breathing mark
    "\d2129",  # GREEK SMALL LETTER IOTA, TURNED
    "\d03F2",  # greek small letter lunate sigma
    "\d03C0",  # GREEK SMALL LETTER PI
    "\d03B1",  # Greek Small Letters
    "\d0313",  # greek smooth breathing mark
    "\d2E0E",  # Greek Textual Symbols, Ancient
    "\d03D1",  # GREEK THETA SYMBOL
    "\d0301",  # greek tonos
    "\d0300",  # greek varia
    "\d03D0",  # Greek Variant Letterforms
    "\d0306",  # greek vrachy
    "\d0345",  # GREEK YPOGEGRAMMENI, COMBINING
    "\d0342",  # Greek, Diacritics for
    "\d1F00",  # Greek, Precomposed Polytonic
    "\d1D1D0",  # Gregorian Musical Symbols
    "\d23DA",  # GROUND, EARTH
    "\d21F0",  # group lock
    "\d21E8",  # group select (ISO 9995-7)
    "\d001D",  # group separator
    "\d241D",  # GROUP SEPARATOR, SYMBOL FOR
    "\d20B2",  # GUARANI SIGN
    "\d0097",  # GUARDED AREA, END OF
    "\d0096",  # GUARDED AREA, START OF
    "\d00AB",  # guillemet, left pointing
    "\d2039",  # guillemet, left pointing single
    "\d00BB",  # guillemet, right pointing
    "\d203A",  # guillemet, right pointing single
    "\d0A80",  # Gujarati
    "\d0A95",  # Gujarati Consonants
    "\d0ABE",  # Gujarati Dependent Vowel Signs
    "\d0AE6",  # Gujarati Digits
    "\d0A85",  # Gujarati Independent Vowels
    "\d0AF1",  # GUJARATI RUPEE SIGN
    "\d0A00",  # Gurmukhi
    "\d0A71",  # GURMUKHI ADDAK
    "\d0A15",  # Gurmukhi Consonants
    "\d0A3E",  # Gurmukhi Dependent Vowel Signs
    "\d0A66",  # Gurmukhi Digits
    "\d0A74",  # GURMUKHI EK ONKAR
    "\d0A05",  # Gurmukhi Independent Vowels
    "\d262C",  # gurmukhi khanda
    "\d0A70",  # GURMUKHI TIPPI
    "\d1E2B",  # H WITH BREVE BELOW, LATIN SMALL LETTER
    "\d021F",  # H WITH CARON, LATIN SMALL LETTER
    "\d1E29",  # H WITH CEDILLA, LATIN SMALL LETTER
    "\d0125",  # H WITH CIRCUMFLEX, LATIN SMALL LETTER
    "\d1E27",  # H WITH DIAERESIS, LATIN SMALL LETTER
    "\d1E23",  # H WITH DOT ABOVE, LATIN SMALL LETTER
    "\d1E25",  # H WITH DOT BELOW, LATIN SMALL LETTER
    "\d02AE",  # H WITH FISHHOOK, LATIN SMALL LETTER TURNED
    "\d0266",  # H WITH HOOK, LATIN SMALL LETTER
    "\d1E96",  # H WITH LINE BELOW, LATIN SMALL LETTER
    "\d0127",  # H WITH STROKE, LATIN SMALL LETTER
    "\d210C",  # H, BLACK-LETTER CAPITAL
    "\d036A",  # H, COMBINING LATIN SMALL LETTER
    "\d210D",  # H, DOUBLE-STRUCK CAPITAL
    "\d029C",  # H, LATIN LETTER SMALL CAPITAL
    "\d0265",  # H, LATIN SMALL LETTER TURNED
    "\d2095",  # H, LATIN SUBSCRIPT SMALL LETTER
    "\d02B0",  # H, MODIFIER LETTER SMALL
    "\d210B",  # H, SCRIPT CAPITAL
    "\d030C",  # hacek, combining
    "\d02C7",  # hacek, modifier letter
    "\d200A",  # HAIR SPACE
    "\d094D",  # halant
    "\d0F84",  # HALANTA, TIBETAN MARK
    "\d303F",  # HALF FILL SPACE, IDEOGRAPHIC
    "\d2321",  # HALF INTEGRAL, BOTTOM
    "\d2320",  # HALF INTEGRAL, TOP
    "\dFE20",  # Half Marks, Combining
    "\d0351",  # HALF RING ABOVE, COMBINING LEFT
    "\d0357",  # HALF RING ABOVE, COMBINING RIGHT
    "\d031C",  # HALF RING BELOW, COMBINING LEFT
    "\d0339",  # HALF RING BELOW, COMBINING RIGHT
    "\d0559",  # HALF RING, ARMENIAN MODIFIER LETTER LEFT
    "\d055A",  # half ring, armenian modifier letter right
    "\d02D3",  # HALF RING, MODIFIER LETTER CENTRED LEFT
    "\d02BF",  # HALF RING, MODIFIER LETTER LEFT
    "\d02D1",  # HALF TRIANGULAR COLON, MODIFIER LETTER
    "\d00BD",  # HALF, VULGAR FRACTION ONE
    "\dFF00",  # Halfwidth and Fullwidth Forms
    "\dFF61",  # Halfwidth CJK Punctuation
    "\dFF61",  # Halfwidth Japanese Katakana Variants
    "\dFFA0",  # Halfwidth Korean Hangul Variants
    "\dFFE8",  # Halfwidth Symbol Variants
    "\d25BD",  # hamilton operator
    "\d2692",  # HAMMER AND PICK
    "\d262D",  # HAMMER AND SICKLE
    "\d1F439",  # HAMSTER FACE
    "\d06C0",  # hamzah on ha, arabic letter
    "\d4E00",  # Han Ideographs
    "\d309A",  # han-daku-on, combining japanese
    "\d309C",  # han-daku-on, japanese
    "\d1F446",  # Hand Symbols
    "\d1F58E",  # Hand Symbols
    "\d1F918",  # Hand Symbols
    "\d261A",  # Hand Symbols, Pointing
    "\d1F446",  # Hand, Index Finger Pointing
    "\d270B",  # HAND, RAISED
    "\d1F91A",  # HAND, RAISED BACK OF
    "\d270C",  # HAND, VICTORY
    "\d270D",  # HAND, WRITING
    "\d1F91D",  # HANDSHAKE
    "\d3165",  # Hangul Archaic Letters, Korean
    "\d115F",  # HANGUL CHOSEONG FILLER
    "\d3130",  # Hangul Compatibility Jamo, Korean
    "\d3164",  # HANGUL FILLER
    "\d1100",  # Hangul Jamo Combining Alphabet, Korean
    "\dA960",  # Hangul Jamo Extended-A, Korean
    "\dD7B0",  # Hangul Jamo Extended-B, Korean
    "\d1160",  # HANGUL JUNGSEONG FILLER
    "\d3260",  # Hangul Letters, Circled Korean
    "\d3200",  # Hangul Letters, Parenthesized Korean
    "\dAC00",  # Hangul Syllables Area, Korean
    "\d326E",  # Hangul Syllables, Circled Korean
    "\d320E",  # Hangul Syllables, Parenthesized Korean
    "\dFFA0",  # Hangul Variants, Halfwidth Korean
    "\d3021",  # Hangzhou Numerals
    "\d1720",  # Hanunoo
    "\d064B",  # Harakat, Arabic
    "\d2693",  # harbor symbol
    "\d1F477",  # hardhat
    "\d20D0",  # HARPOON ABOVE, COMBINING LEFT
    "\d20D1",  # HARPOON ABOVE, COMBINING RIGHT
    "\d20ED",  # HARPOON WITH BARB DOWNWARDS, COMBINING LEFTWARDS
    "\d20EC",  # HARPOON WITH BARB DOWNWARDS, COMBINING RIGHTWARDS
    "\d21BC",  # Harpoons
    "\d294A",  # Harpoons, Miscellaneous
    "\d055E",  # hartsakan nshan, armenian
    "\d09CD",  # hasant, bengali
    "\dA806",  # HASANTA, SYLOTI NAGRI SIGN
    "\d0023",  # hash
    "\d0302",  # hat
    "\d2229",  # hat
    "\d108E0",  # Hatran
    "\d263A",  # have a nice day!
    "\d2620",  # Hazard Dingbats
    "\d0F01",  # Head Marks, Tibetan
    "\d0001",  # HEADING, START OF
    "\d2401",  # HEADING, SYMBOL FOR START OF
    "\d1F3A7",  # HEADPHONE
    "\d26FC",  # HEADSTONE GRAVEYARD SYMBOL
    "\d2619",  # HEART BULLET, REVERSED ROTATED FLORAL
    "\d2763",  # Heart Dingbats
    "\d2763",  # Heart Ornaments
    "\d1F493",  # Heart Symbols
    "\d1F5A4",  # HEART, BLACK
    "\d2718",  # HEAVY BALLOT X
    "\d2714",  # HEAVY CHECK MARK
    "\d2762",  # HEAVY EXCLAMATION MARK ORNAMENT
    "\d2716",  # HEAVY MULTIPLICATION X
    "\d2748",  # HEAVY SPARKLE
    "\d0590",  # Hebrew
    "\d05D0",  # Hebrew Alphabet
    "\d0591",  # Hebrew Cantillation Marks
    "\d2135",  # Hebrew Letterlike Mathematical Symbols
    "\d05B0",  # Hebrew Points and Punctuation
    "\dFB1D",  # Hebrew Presentation Forms
    "\d2767",  # hedera
    "\d06C0",  # HEH WITH YEH ABOVE, ARABIC LETTER
    "\d2388",  # HELM SYMBOL
    "\d26D1",  # HELMET WITH WHITE CROSS
    "\d1B002",  # Hentaigana
    "\d1B100",  # Hentaigana
    "\d269A",  # HERMES, STAFF OF
    "\d22B9",  # HERMITIAN CONJUGATE MATRIX
    "\d4DC0",  # Hexagram Symbols, Yijing / I Ching
    "\d14400",  # Hieroglyphs, Anatolian
    "\d13000",  # Hieroglyphs, Egyptian
    "\dD800",  # High Surrogates
    "\d26A1",  # HIGH VOLTAGE SIGN
    "\d201F",  # HIGH-REVERSED-9 QUOTATION MARK, DOUBLE
    "\d201B",  # HIGH-REVERSED-9 QUOTATION MARK, SINGLE
    "\d227B",  # higher rank than
    "\d210C",  # hilbert space
    "\d3040",  # Hiragana
    "\d309D",  # HIRAGANA ITERATION MARK
    "\d3095",  # HIRAGANA LETTER SMALL KA
    "\d3096",  # HIRAGANA LETTER SMALL KE
    "\d3095",  # Hiragana Supplement
    "\d309E",  # HIRAGANA VOICED ITERATION MARK
    "\d25AE",  # histogram marker
    "\d26EC",  # HISTORIC SITE
    "\d2365",  # holler
    "\d21B8",  # home
    "\d21F1",  # home
    "\d223B",  # HOMOTHETIC
    "\d034B",  # HOMOTHETIC ABOVE, COMBINING
    "\d1F41D",  # HONEYBEE
    "\d0610",  # Honorifics, Arabic
    "\d0309",  # HOOK ABOVE, COMBINING
    "\d0321",  # HOOK BELOW, COMBINING PALATALIZED
    "\d0322",  # HOOK BELOW, COMBINING RETROFLEX
    "\d02DE",  # HOOK, MODIFIER LETTER RHOTIC
    "\d0328",  # hook, nasal
    "\d2364",  # hoot
    "\d2015",  # HORIZONTAL BAR
    "\d2026",  # HORIZONTAL ELLIPSIS
    "\d22EF",  # HORIZONTAL ELLIPSIS, MIDLINE
    "\d23BA",  # Horizontal Scan Lines
    "\d0009",  # horizontal tabulation
    "\d2409",  # HORIZONTAL TABULATION, SYMBOL FOR
    "\d031B",  # HORN, COMBINING
    "\d1F40E",  # HORSE
    "\d1F434",  # HORSE FACE
    "\d26E8",  # hospital
    "\d2615",  # HOT BEVERAGE
    "\d1F32D",  # HOT DOG
    "\d2668",  # HOT SPRINGS
    "\d231B",  # HOURGLASS
    "\d23F3",  # HOURGLASS WITH FLOWING SAND
    "\d29D7",  # HOURGLASS, BLACK
    "\d3358",  # Hours, Ideographic Telegraph Symbols for
    "\d2302",  # HOUSE
    "\d20B4",  # HRYVNIA SIGN
    "\d0009",  # ht
    "\d10C80",  # Hungarian, Old
    "\d0195",  # HV, LATIN SMALL LETTER
    "\d01F6",  # HWAIR, LATIN CAPITAL LETTER
    "\d2010",  # HYPHEN
    "\d2043",  # HYPHEN BULLET
    "\d002D",  # hyphen or minus sign
    "\d058A",  # HYPHEN, ARMENIAN
    "\d00AD",  # hyphen, discretionary
    "\d2E40",  # HYPHEN, DOUBLE
    "\d30A0",  # HYPHEN, KATAKANA-HIRAGANA DOUBLE
    "\d1806",  # HYPHEN, MONGOLIAN TODO SOFT
    "\d2011",  # HYPHEN, NON-BREAKING
    "\d035C",  # hyphen, papyrological
    "\d00AD",  # HYPHEN, SOFT
    "\d002D",  # HYPHEN-MINUS
    "\d2027",  # HYPHENATION POINT
    "\d002D",  # hyphus
    "\d238E",  # HYSTERESIS SYMBOL
    "\d0197",  # i bar, latin capital letter
    "\d4DC0",  # I Ching / Yijing Hexagram Symbols
    "\d268A",  # I Ching / Yijing Monogram and Digram Symbols
    "\d2630",  # I Ching / Yijing Trigram Symbols
    "\d0130",  # i dot, latin capital letter
    "\d1F91F",  # I LOVE YOU HAND SIGN
    "\d00CD",  # I WITH ACUTE, LATIN CAPITAL LETTER
    "\d00ED",  # I WITH ACUTE, LATIN SMALL LETTER
    "\d012D",  # I WITH BREVE, LATIN SMALL LETTER
    "\d01D0",  # I WITH CARON, LATIN SMALL LETTER
    "\d00CE",  # I WITH CIRCUMFLEX, LATIN CAPITAL LETTER
    "\d00EE",  # I WITH CIRCUMFLEX, LATIN SMALL LETTER
    "\d00CF",  # I WITH DIAERESIS, LATIN CAPITAL LETTER
    "\d00EF",  # I WITH DIAERESIS, LATIN SMALL LETTER
    "\d0130",  # I WITH DOT ABOVE, LATIN CAPITAL LETTER
    "\d1ECB",  # I WITH DOT BELOW, LATIN SMALL LETTER
    "\d0209",  # I WITH DOUBLE GRAVE, LATIN SMALL LETTER
    "\d00CC",  # I WITH GRAVE, LATIN CAPITAL LETTER
    "\d00EC",  # I WITH GRAVE, LATIN SMALL LETTER
    "\d1EC9",  # I WITH HOOK ABOVE, LATIN SMALL LETTER
    "\d020B",  # I WITH INVERTED BREVE, LATIN SMALL LETTER
    "\d012B",  # I WITH MACRON, LATIN SMALL LETTER
    "\d012F",  # I WITH OGONEK, LATIN SMALL LETTER
    "\d0197",  # I WITH STROKE, LATIN CAPITAL LETTER
    "\d0268",  # I WITH STROKE, LATIN SMALL LETTER
    "\d1E2D",  # I WITH TILDE BELOW, LATIN SMALL LETTER
    "\d0129",  # I WITH TILDE, LATIN SMALL LETTER
    "\d2111",  # I, BLACK-LETTER CAPITAL
    "\d0365",  # I, COMBINING LATIN SMALL LETTER
    "\d2148",  # I, DOUBLE-STRUCK ITALIC SMALL
    "\d026A",  # I, LATIN LETTER SMALL CAPITAL
    "\d0131",  # I, LATIN SMALL LETTER DOTLESS
    "\d1D09",  # I, LATIN SMALL LETTER TURNED
    "\d1D62",  # I, LATIN SUBSCRIPT SMALL LETTER
    "\d2110",  # I, SCRIPT CAPITAL
    "\d2071",  # I, SUPERSCRIPT LATIN SMALL LETTER
    "\d26F8",  # ICE SKATE
    "\d26D0",  # icy road
    "\d1F4A1",  # idea
    "\d2261",  # IDENTICAL TO
    "\d2262",  # IDENTICAL TO, NOT
    "\d10080",  # Ideograms, Linear B
    "\d3190",  # Ideographic Annotation, Japanese Kanbun
    "\d3006",  # IDEOGRAPHIC CLOSING MARK
    "\d3001",  # IDEOGRAPHIC COMMA
    "\d2FF0",  # Ideographic Description Characters, CJK
    "\d3002",  # IDEOGRAPHIC FULL STOP
    "\d303F",  # IDEOGRAPHIC HALF FILL SPACE
    "\d3005",  # IDEOGRAPHIC ITERATION MARK
    "\d303B",  # IDEOGRAPHIC ITERATION MARK, VERTICAL
    "\d3007",  # IDEOGRAPHIC NUMBER ZERO
    "\d3000",  # IDEOGRAPHIC SPACE
    "\d1F200",  # Ideographic Supplement, Enclosed
    "\d16FE0",  # Ideographic Symbols and Punctuation
    "\d33E0",  # Ideographic Telegraph Symbols for Days
    "\d3358",  # Ideographic Telegraph Symbols for Hours
    "\d32C0",  # Ideographic Telegraph Symbols for Months
    "\d302A",  # Ideographic Tone Marks
    "\d303E",  # IDEOGRAPHIC VARIATION INDICATOR
    "\d3400",  # Ideographs Area, CJK
    "\d20000",  # Ideographs Area, Supplementary CJK
    "\d3400",  # Ideographs Extension A, CJK Unified
    "\d20000",  # Ideographs Extension B, CJK Unified
    "\d2A700",  # Ideographs Extension C, CJK Unified
    "\d2B740",  # Ideographs Extension D, CJK Unified
    "\d2F800",  # Ideographs Supplement, CJK Compatibility
    "\d3280",  # Ideographs, Circled
    "\dF900",  # Ideographs, CJK Compatibility
    "\d4E00",  # Ideographs, CJK Unified
    "\dFA70",  # Ideographs, DPRK Compatibility
    "\d4E00",  # Ideographs, Han
    "\dFA30",  # Ideographs, JIS X 0213 Compatibility
    "\d3220",  # Ideographs, Parenthesized CJK
    "\d2416",  # IDLE, SYMBOL FOR SYNCHRONOUS
    "\d0016",  # IDLE, SYNCHRONOUS
    "\d0133",  # IJ, LATIN SMALL LIGATURE
    "\d22B7",  # IMAGE OF
    "\d228F",  # IMAGE OF, SQUARE
    "\d2111",  # imaginary part
    "\d1F47F",  # IMP
    "\d10840",  # Imperial Aramaic
    "\d22A2",  # implies
    "\d2033",  # inches
    "\d2282",  # included in set
    "\d2283",  # includes in set
    "\d337F",  # incorporated, japanese
    "\d23F6",  # increase
    "\d2206",  # INCREMENT
    "\d2AEB",  # independence
    "\d2ADD",  # independent
    "\d2ADC",  # independent, not
    "\d261A",  # Index Finger Dingbats, Pointing
    "\d1F446",  # Index Finger Pointing Hand
    "\d261A",  # INDEX, BLACK LEFT POINTING
    "\d261B",  # INDEX, BLACK RIGHT POINTING
    "\d261F",  # INDEX, WHITE DOWN POINTING
    "\d261C",  # INDEX, WHITE LEFT POINTING
    "\d261E",  # INDEX, WHITE RIGHT POINTING
    "\d261D",  # INDEX, WHITE UP POINTING
    "\d20A8",  # indian currency
    "\d20B9",  # INDIAN RUPEE SIGN
    "\dA830",  # Indic Number Forms, Common
    "\d25C5",  # indicator, backward arrow
    "\d25BB",  # indicator, forward arrow
    "\d2243",  # Inequality Signs, Equality and
    "\d22D5",  # Inequality Signs, Equality and
    "\d221E",  # INFINITY
    "\d266F",  # infix bag count
    "\d1F6C8",  # information
    "\d001C",  # INFORMATION SEPARATOR FOUR
    "\d001F",  # INFORMATION SEPARATOR ONE
    "\d001D",  # INFORMATION SEPARATOR THREE
    "\d001E",  # INFORMATION SEPARATOR TWO
    "\d2139",  # INFORMATION SOURCE
    "\d2193",  # ingressive airflow
    "\d2915",  # injection, finite
    "\d2918",  # injection, finite surjective
    "\d2914",  # injection, partial
    "\d2917",  # injection, surjective
    "\d21A3",  # injection, total
    "\d2041",  # INSERTION POINT, CARET
    "\d2380",  # INSERTION SYMBOL
    "\d2124",  # integers
    "\d222B",  # INTEGRAL
    "\d2A16",  # INTEGRAL OPERATOR, QUATERNION
    "\d222B",  # Integral Signs
    "\d2233",  # INTEGRAL, ANTICLOCKWISE CONTOUR
    "\d2321",  # INTEGRAL, BOTTOM HALF
    "\d2231",  # INTEGRAL, CLOCKWISE
    "\d2232",  # INTEGRAL, CLOCKWISE CONTOUR
    "\d222E",  # INTEGRAL, CONTOUR
    "\d2233",  # integral, counterclockwise contour
    "\d222C",  # INTEGRAL, DOUBLE
    "\d2A1C",  # integral, lower
    "\d211B",  # integral, riemann
    "\d222F",  # INTEGRAL, SURFACE
    "\d2320",  # INTEGRAL, TOP HALF
    "\d222D",  # INTEGRAL, TRIPLE
    "\d2A1B",  # integral, upper
    "\d2230",  # INTEGRAL, VOLUME
    "\d2A0A",  # Integrals, Summations and
    "\d2A11",  # INTEGRATION, ANTICLOCKWISE
    "\d2A11",  # integration, counterclockwise
    "\d22BA",  # INTERCALATE
    "\d2318",  # INTEREST SIGN, PLACE OF
    "\d2A3C",  # INTERIOR PRODUCT
    "\d2A3D",  # INTERIOR PRODUCT, RIGHTHAND
    "\d2AF4",  # interleave
    "\dFFF9",  # Interlinear Annotation
    "\dFFF9",  # INTERLINEAR ANNOTATION ANCHOR
    "\dFFFA",  # INTERLINEAR ANNOTATION SEPARATOR
    "\dFFFB",  # INTERLINEAR ANNOTATION TERMINATOR
    "\d203D",  # INTERROBANG
    "\d2E18",  # INTERROBANG, INVERTED
    "\d238A",  # interrupt
    "\d2229",  # INTERSECTION
    "\d22D2",  # INTERSECTION, DOUBLE
    "\d23E7",  # INTERSECTION, ELECTRICAL
    "\d22C2",  # intersection, generalized
    "\d22C2",  # INTERSECTION, N-ARY
    "\d22D4",  # intersection, proper
    "\d2A40",  # Intersections and Unions
    "\d0F0B",  # INTERSYLLABIC TSHEG, TIBETAN MARK
    "\d009B",  # INTRODUCER, CONTROL SEQUENCE
    "\d009A",  # INTRODUCER, SINGLE CHARACTER
    "\d2776",  # Inverse Numbers, Circled
    "\d032F",  # INVERTED BREVE BELOW, COMBINING
    "\d0311",  # INVERTED BREVE, COMBINING
    "\d0361",  # INVERTED BREVE, COMBINING DOUBLE
    "\d033A",  # INVERTED BRIDGE BELOW, COMBINING
    "\d032B",  # INVERTED DOUBLE ARCH BELOW, COMBINING
    "\d00A1",  # INVERTED EXCLAMATION MARK
    "\d0296",  # INVERTED GLOTTAL STOP, LATIN LETTER
    "\d2E18",  # INVERTED INTERROBANG
    "\d223E",  # INVERTED LAZY S
    "\d2127",  # INVERTED OHM SIGN
    "\d00BF",  # INVERTED QUESTION MARK
    "\d0281",  # INVERTED R, LATIN LETTER SMALL CAPITAL
    "\d02B6",  # INVERTED R, MODIFIER LETTER SMALL CAPITAL
    "\d2054",  # INVERTED UNDERTIE
    "\d2063",  # invisible comma
    "\d2064",  # INVISIBLE PLUS
    "\d2063",  # INVISIBLE SEPARATOR
    "\d2062",  # INVISIBLE TIMES
    "\d0345",  # iota below, greek non-spacing
    "\d0345",  # iota subscript, greek
    "\d0196",  # IOTA, LATIN CAPITAL LETTER
    "\d0269",  # IOTA, LATIN SMALL LETTER
    "\d2129",  # IOTA, TURNED GREEK SMALL LETTER
    "\d0250",  # IPA Extensions
    "\d0346",  # IPA, Diacritics for
    "\dFDFC",  # iranian currency
    "\d00A3",  # irish punt
    "\d2068",  # ISOLATE, FIRST STRONG
    "\d2066",  # ISOLATE, LEFT-TO-RIGHT
    "\d2069",  # ISOLATE, POP DIRECTIONAL
    "\d2067",  # ISOLATE, RIGHT-TO-LEFT
    "\d29DC",  # isotech entity &iinfin;
    "\d20AA",  # israeli currency
    "\d09FA",  # ISSHAR, BENGALI
    "\d0B70",  # ISSHAR, ORIYA
    "\d20A4",  # italian currency
    "\d00A3",  # italian lira
    "\d1D6E2",  # Italic Greek Mathematical Symbols
    "\d1D71C",  # Italic Greek Mathematical Symbols, Bold
    "\d1D790",  # Italic Greek Mathematical Symbols, Sans-serif Bold
    "\d1D434",  # Italic Mathematical Symbols
    "\d1D468",  # Italic Mathematical Symbols, Bold
    "\d1D608",  # Italic Mathematical Symbols, Sans-serif
    "\d1D63C",  # Italic Mathematical Symbols, Sans-serif Bold
    "\d10300",  # Italic, Old
    "\d2700",  # ITC Zapf Dingbats Series 100
    "\d309D",  # ITERATION MARK, HIRAGANA
    "\d309E",  # ITERATION MARK, HIRAGANA VOICED
    "\d3005",  # ITERATION MARK, IDEOGRAPHIC
    "\d30FD",  # ITERATION MARK, KATAKANA
    "\d30FE",  # ITERATION MARK, KATAKANA VOICED
    "\d303B",  # ITERATION MARK, VERTICAL IDEOGRAPHIC
    "\d2767",  # ivy leaf
    "\d06C0",  # izafet
    "\d01F0",  # J WITH CARON, LATIN SMALL LETTER
    "\d0135",  # J WITH CIRCUMFLEX, LATIN SMALL LETTER
    "\d029D",  # J WITH CROSSED-TAIL, LATIN SMALL LETTER
    "\d0248",  # J WITH STROKE, LATIN CAPITAL LETTER
    "\d0249",  # J WITH STROKE, LATIN SMALL LETTER
    "\d025F",  # J WITH STROKE, LATIN SMALL LETTER DOTLESS
    "\d2149",  # J, DOUBLE-STRUCK ITALIC SMALL
    "\d1D0A",  # J, LATIN LETTER SMALL CAPITAL
    "\d0237",  # J, LATIN SMALL LETTER DOTLESS
    "\d02B2",  # J, MODIFIER LETTER SMALL
    "\d2749",  # jack
    "\d1100",  # Jamo Combining Alphabet, Korean Hangul
    "\d3130",  # Jamo, Korean Hangul Compatibility
    "\d25C9",  # japanese bullet, tainome
    "\d2616",  # Japanese Chess Symbols
    "\d337B",  # Japanese Era Names
    "\d3040",  # Japanese Hiragana
    "\d337F",  # japanese incorporated
    "\d3004",  # JAPANESE INDUSTRIAL STANDARD SYMBOL
    "\d3190",  # Japanese Kanbun Ideographic Annotation
    "\d30A0",  # Japanese Katakana
    "\dFF61",  # Japanese Katakana Variants, Halfwidth
    "\d3300",  # Japanese Katakana Words, Squared
    "\d32D0",  # Japanese Katakana, Circled
    "\d203B",  # japanese kome
    "\dA980",  # Javanese
    "\d2629",  # JERUSALEM, CROSS OF
    "\d20DD",  # jis composition circle
    "\dFA30",  # JIS X 0213 Compatibility Ideographs
    "\d2A1D",  # JOIN
    "\d034F",  # JOINER, COMBINING GRAPHEME
    "\d2060",  # JOINER, WORD
    "\d200D",  # JOINER, ZERO WIDTH
    "\d2620",  # jolly roger
    "\d2218",  # jot, apl
    "\d2643",  # JUPITER
    "\d2696",  # jurisprudence symbol
    "\d1E31",  # K WITH ACUTE, LATIN SMALL LETTER
    "\d01E9",  # K WITH CARON, LATIN SMALL LETTER
    "\d0137",  # K WITH CEDILLA, LATIN SMALL LETTER
    "\d1E33",  # K WITH DOT BELOW, LATIN SMALL LETTER
    "\d0199",  # K WITH HOOK, LATIN SMALL LETTER
    "\d1E35",  # K WITH LINE BELOW, LATIN SMALL LETTER
    "\d1D0B",  # K, LATIN LETTER SMALL CAPITAL
    "\d029E",  # K, LATIN SMALL LETTER TURNED
    "\d2096",  # K, LATIN SUBSCRIPT SMALL LETTER
    "\d3095",  # KA, HIRAGANA LETTER SMALL
    "\d337F",  # kabusiki-gaisya
    "\d11080",  # Kaithi
    "\d1B100",  # Kana Extended-A
    "\d3031",  # Kana Repeat Marks
    "\d1B000",  # Kana Supplement
    "\d3190",  # Kanbun Ideographic Annotation, Japanese
    "\d2F00",  # Kangxi Radicals, CJK
    "\d0C80",  # Kannada
    "\d0C95",  # Kannada Consonants
    "\d0CBE",  # Kannada Dependent Vowel Signs
    "\d0CE6",  # Kannada Digits
    "\d0C85",  # Kannada Independent Vowels
    "\d0640",  # kashida, arabic
    "\d30A0",  # Katakana
    "\d30FF",  # KATAKANA DIGRAPH KOTO
    "\d31F0",  # Katakana Extensions for Ainu
    "\d30FD",  # KATAKANA ITERATION MARK
    "\d30FB",  # KATAKANA MIDDLE DOT
    "\d31F0",  # Katakana Phonetic Extensions
    "\dFF61",  # Katakana Variants, Halfwidth Japanese
    "\d30FE",  # KATAKANA VOICED ITERATION MARK
    "\d3300",  # Katakana Words, Squared
    "\d32D0",  # Katakana, Circled
    "\d30A0",  # KATAKANA-HIRAGANA DOUBLE HYPHEN
    "\d30FC",  # KATAKANA-HIRAGANA PROLONGED SOUND MARK
    "\dA900",  # Kayah Li
    "\d212A",  # KELVIN SIGN
    "\d27E9",  # ket
    "\d2327",  # key, clear
    "\d2318",  # key, command
    "\d232B",  # key, delete to the left
    "\d2326",  # key, delete to the right
    "\d2324",  # key, enter
    "\d2325",  # KEY, OPTION
    "\d26BF",  # KEY, SQUARED
    "\d2328",  # KEYBOARD
    "\d237D",  # keyboard symbol for no break space
    "\d21E6",  # Keyboard Symbols
    "\d2324",  # Keyboard Symbols
    "\d2380",  # Keyboard Symbols
    "\d2396",  # Keyboard Symbols
    "\d20E3",  # KEYCAP, COMBINING ENCLOSING
    "\d262C",  # khanda, gurmukhi
    "\d10A00",  # Kharoshthi
    "\d10A40",  # Kharoshthi Digits
    "\d1780",  # Khmer
    "\d17C6",  # khmer anusvara
    "\d1780",  # Khmer Consonants
    "\d17DB",  # KHMER CURRENCY SYMBOL RIEL
    "\d17B6",  # Khmer Dependent Vowel Signs
    "\d17E0",  # Khmer Digits
    "\d17A5",  # Khmer Independent Vowels
    "\d17F0",  # Khmer Numeric Symbols for Divination
    "\d17C6",  # KHMER SIGN NIKAHIT
    "\d17C7",  # KHMER SIGN REAHMUK
    "\d17C6",  # Khmer Signs
    "\d17C7",  # khmer srak ah
    "\d17C6",  # khmer srak am
    "\d19E0",  # Khmer Symbols
    "\d17C7",  # khmer visarga
    "\d11200",  # Khojki
    "\d0E5B",  # KHOMUT, THAI CHARACTER
    "\d112B0",  # Khudawadi
    "\d10A0",  # Khutsuri, Georgian
    "\d1D1DE",  # Kievan Musical Symbols
    "\d1039",  # killer, myanmar
    "\d20AD",  # KIP SIGN
    "\d2311",  # kissen
    "\d1F428",  # KOALA
    "\d203B",  # kome, japanese
    "\d0500",  # Komi Letters
    "\d06D6",  # Koranic Annotation Signs, Arabic
    "\d1100",  # Korean Combining Alphabet
    "\d20A9",  # korean currency
    "\d3165",  # Korean Hangul Archaic Letters
    "\d3130",  # Korean Hangul Compatibility Jamo
    "\d1100",  # Korean Hangul Jamo Combining Alphabet
    "\dA960",  # Korean Hangul Jamo Extended-A
    "\dD7B0",  # Korean Hangul Jamo Extended-B
    "\d3260",  # Korean Hangul Letters, Circled
    "\d3200",  # Korean Hangul Letters, Parenthesized
    "\dAC00",  # Korean Hangul Syllables
    "\d326E",  # Korean Hangul Syllables, Circled
    "\d320E",  # Korean Hangul Syllables, Parenthesized
    "\dFFA0",  # Korean Hangul Variants, Halfwidth
    "\d327F",  # KOREAN STANDARD SYMBOL
    "\d0343",  # KORONIS, COMBINING GREEK
    "\d30FF",  # KOTO, KATAKANA DIGRAPH
    "\d0138",  # KRA, LATIN SMALL LETTER
    "\d2114",  # L B BAR SYMBOL
    "\d013A",  # L WITH ACUTE, LATIN SMALL LETTER
    "\d023D",  # L WITH BAR, LATIN CAPITAL LETTER
    "\d019A",  # L WITH BAR, LATIN SMALL LETTER
    "\d026C",  # L WITH BELT, LATIN SMALL LETTER
    "\d013E",  # L WITH CARON, LATIN SMALL LETTER
    "\d013C",  # L WITH CEDILLA, LATIN SMALL LETTER
    "\d1E3D",  # L WITH CIRCUMFLEX BELOW, LATIN SMALL LETTER
    "\d0234",  # L WITH CURL, LATIN SMALL LETTER
    "\d1E37",  # L WITH DOT BELOW, LATIN SMALL LETTER
    "\d1E3B",  # L WITH LINE BELOW, LATIN SMALL LETTER
    "\d0140",  # L WITH MIDDLE DOT, LATIN SMALL LETTER
    "\d026B",  # L WITH MIDDLE TILDE, LATIN SMALL LETTER
    "\d026D",  # L WITH RETROFLEX HOOK, LATIN SMALL LETTER
    "\d1D0C",  # L WITH STROKE, LATIN LETTER SMALL CAPITAL
    "\d0142",  # L WITH STROKE, LATIN SMALL LETTER
    "\d029F",  # L, LATIN LETTER SMALL CAPITAL
    "\d2097",  # L, LATIN SUBSCRIPT SMALL LETTER
    "\d02E1",  # L, MODIFIER LETTER SMALL
    "\d2143",  # L, REVERSED SANS-SERIF CAPITAL
    "\d2112",  # L, SCRIPT CAPITAL
    "\d2113",  # L, SCRIPT SMALL
    "\d2142",  # L, TURNED SANS-SERIF CAPITAL
    "\d1F41E",  # LADY BEETLE
    "\d019B",  # lambda bar, latin letter
    "\dE0001",  # LANGUAGE TAG
    "\d0E80",  # Lao
    "\d0ECC",  # LAO CANCELLATION MARK
    "\d0E81",  # Lao Consonants
    "\d0ED0",  # Lao Digits
    "\d0EAF",  # LAO ELLIPSIS
    "\d0EC8",  # Lao Marks and Signs
    "\d0ECD",  # LAO NIGGAHITA
    "\d0EB0",  # Lao Vowels
    "\d20AD",  # laotian currency
    "\d2206",  # laplace operator
    "\d2112",  # laplace transform
    "\d2A1D",  # large bowtie
    "\d25EF",  # LARGE CIRCLE
    "\d29F8",  # Large Operators
    "\d20BE",  # LARI SIGN
    "\d263E",  # LAST QUARTER MOON
    "\d01C1",  # LATERAL CLICK, LATIN LETTER
    "\d3371",  # Latin Abbreviations, Squared
    "\d3380",  # Latin Abbreviations, Squared
    "\d1F110",  # Latin Capital Letters, Enclosed
    "\d1F110",  # Latin Capital Letters, Parenthesized
    "\d271D",  # LATIN CROSS
    "\d1E00",  # Latin Extended Additional
    "\d0100",  # Latin Extended-A
    "\d0180",  # Latin Extended-B
    "\d2C60",  # Latin Extended-C
    "\dA720",  # Latin Extended-D
    "\dAB30",  # Latin Extended-E
    "\d1D00",  # Latin Extensions
    "\d1D25",  # LATIN LETTER AIN
    "\d01C2",  # LATIN LETTER ALVEOLAR CLICK
    "\d02AD",  # LATIN LETTER BIDENTAL PERCUSSIVE
    "\d0298",  # LATIN LETTER BILABIAL CLICK
    "\d02AC",  # LATIN LETTER BILABIAL PERCUSSIVE
    "\d0298",  # latin letter bullseye
    "\d01C0",  # LATIN LETTER DENTAL CLICK
    "\d01C3",  # latin letter exclamation mark
    "\d0294",  # LATIN LETTER GLOTTAL STOP
    "\d0296",  # LATIN LETTER INVERTED GLOTTAL STOP
    "\d019B",  # latin letter lambda bar
    "\d01C1",  # LATIN LETTER LATERAL CLICK
    "\d0295",  # LATIN LETTER PHARYNGEAL VOICED FRICATIVE
    "\d01C3",  # LATIN LETTER RETROFLEX CLICK
    "\d01AA",  # LATIN LETTER REVERSED ESH LOOP
    "\d0295",  # latin letter reversed glottal stop
    "\d0297",  # LATIN LETTER STRETCHED C
    "\d1D24",  # LATIN LETTER VOICED LARYNGEAL SPIRANT
    "\d01BF",  # LATIN LETTER WYNN
    "\d01A6",  # LATIN LETTER YR
    "\d1F12B",  # Latin Letters, Circled
    "\d24B6",  # Latin Letters, Circled
    "\d1F110",  # Latin Letters, Parenthesized
    "\d249C",  # Latin Letters, Parenthesized
    "\d02B0",  # Latin Letters, Phonetic Modifiers Derived from
    "\d1F131",  # Latin Letters, Squared
    "\dFB00",  # Latin Ligatures
    "\d0061",  # Latin Lowercase Alphabet
    "\d00E6",  # LATIN SMALL LETTER AE
    "\d0251",  # LATIN SMALL LETTER ALPHA
    "\d0264",  # latin small letter baby gamma
    "\d029A",  # latin small letter closed epsilon
    "\d0277",  # LATIN SMALL LETTER CLOSED OMEGA
    "\d025E",  # latin small letter closed reversed epsilon
    "\d0238",  # LATIN SMALL LETTER DB DIGRAPH
    "\d014B",  # LATIN SMALL LETTER ENG
    "\d025B",  # latin small letter epsilon
    "\d0283",  # LATIN SMALL LETTER ESH
    "\d00F0",  # LATIN SMALL LETTER ETH
    "\d0292",  # LATIN SMALL LETTER EZH
    "\d01B9",  # LATIN SMALL LETTER EZH REVERSED
    "\d01EF",  # LATIN SMALL LETTER EZH WITH CARON
    "\d0263",  # LATIN SMALL LETTER GAMMA
    "\d0242",  # LATIN SMALL LETTER GLOTTAL STOP
    "\d0195",  # LATIN SMALL LETTER HV
    "\d0269",  # LATIN SMALL LETTER IOTA
    "\d0138",  # LATIN SMALL LETTER KRA
    "\d026E",  # LATIN SMALL LETTER LEZH
    "\d01A3",  # LATIN SMALL LETTER OI
    "\d0223",  # LATIN SMALL LETTER OU
    "\d0278",  # LATIN SMALL LETTER PHI
    "\d0239",  # LATIN SMALL LETTER QP DIGRAPH
    "\d0264",  # LATIN SMALL LETTER RAMS HORN
    "\d0259",  # LATIN SMALL LETTER SCHWA
    "\d0285",  # LATIN SMALL LETTER SQUAT REVERSED ESH
    "\d00FE",  # LATIN SMALL LETTER THORN
    "\d0185",  # LATIN SMALL LETTER TONE SIX
    "\d1D02",  # LATIN SMALL LETTER TURNED AE
    "\d0252",  # LATIN SMALL LETTER TURNED ALPHA
    "\d018D",  # LATIN SMALL LETTER TURNED DELTA
    "\d1D14",  # LATIN SMALL LETTER TURNED OE
    "\d028A",  # LATIN SMALL LETTER UPSILON
    "\d021D",  # LATIN SMALL LETTER YOGH
    "\d0061",  # Latin Small Letters
    "\d0363",  # Latin Small Letters, Combining
    "\d00E6",  # latin small ligature ae
    "\d0133",  # LATIN SMALL LIGATURE IJ
    "\d0153",  # LATIN SMALL LIGATURE OE
    "\d02B0",  # Latin Superscript Modifier Letters
    "\d0041",  # Latin Uppercase Alphabet
    "\d0000",  # Latin, Basic
    "\d0100",  # Latin, European
    "\d00A0",  # Latin-1 Punctuation and Symbols
    "\d00A0",  # Latin-1 Supplement
    "\d223D",  # lazy s
    "\d223E",  # LAZY S, INVERTED
    "\d2024",  # LEADER, ONE DOT
    "\d2026",  # leader, three dot
    "\d2025",  # LEADER, TWO DOT
    "\d1F650",  # Leaf Ornaments
    "\d2766",  # leaf, aldus
    "\d2767",  # leaf, ivy
    "\d301A",  # left abstract syntax bracket
    "\d031A",  # LEFT ANGLE ABOVE, COMBINING
    "\d0349",  # LEFT ANGLE BELOW, COMBINING
    "\d3008",  # LEFT ANGLE BRACKET
    "\d27E8",  # LEFT ANGLE BRACKET, MATHEMATICAL
    "\d20D6",  # LEFT ARROW ABOVE, COMBINING
    "\d20EE",  # LEFT ARROW BELOW, COMBINING
    "\d0354",  # LEFT ARROWHEAD BELOW, COMBINING
    "\d27E6",  # left bag bracket
    "\d3010",  # LEFT BLACK LENTICULAR BRACKET
    "\d2308",  # LEFT CEILING
    "\d27EA",  # left chevron bracket
    "\d300C",  # LEFT CORNER BRACKET
    "\d007B",  # LEFT CURLY BRACKET
    "\d300A",  # LEFT DOUBLE ANGLE BRACKET
    "\d27EA",  # LEFT DOUBLE ANGLE BRACKET, MATHEMATICAL
    "\d201C",  # LEFT DOUBLE QUOTATION MARK
    "\d230A",  # LEFT FLOOR
    "\d0351",  # LEFT HALF RING ABOVE, COMBINING
    "\d031C",  # LEFT HALF RING BELOW, COMBINING
    "\d0559",  # LEFT HALF RING, ARMENIAN MODIFIER LETTER
    "\d02BF",  # LEFT HALF RING, MODIFIER LETTER
    "\d02D3",  # LEFT HALF RING, MODIFIER LETTER CENTRED
    "\d20D0",  # LEFT HARPOON ABOVE, COMBINING
    "\d019D",  # LEFT HOOK, LATIN CAPITAL LETTER N WITH
    "\d0272",  # LEFT HOOK, LATIN SMALL LETTER N WITH
    "\d232B",  # left key, delete to the
    "\d23B0",  # left moustache
    "\d22C9",  # LEFT NORMAL FACTOR SEMIDIRECT PRODUCT
    "\d0028",  # LEFT PARENTHESIS
    "\dFD3E",  # LEFT PARENTHESIS, ORNATE
    "\d00AB",  # left pointing guillemet
    "\d261A",  # LEFT POINTING INDEX, BLACK
    "\d261C",  # LEFT POINTING INDEX, WHITE
    "\d2039",  # left pointing single guillemet
    "\d20E1",  # LEFT RIGHT ARROW ABOVE, COMBINING
    "\d034D",  # LEFT RIGHT ARROW BELOW, COMBINING
    "\d22CB",  # LEFT SEMIDIRECT PRODUCT
    "\d27E8",  # left sequence bracket
    "\d2018",  # LEFT SINGLE QUOTATION MARK
    "\d005B",  # LEFT SQUARE BRACKET
    "\d2045",  # LEFT SQUARE BRACKET WITH QUILL
    "\d22A3",  # LEFT TACK
    "\d0318",  # LEFT TACK BELOW, COMBINING
    "\d3014",  # LEFT TORTOISE SHELL BRACKET
    "\d300E",  # LEFT WHITE CORNER BRACKET
    "\d2983",  # LEFT WHITE CURLY BRACKET
    "\d3016",  # LEFT WHITE LENTICULAR BRACKET
    "\d2985",  # LEFT WHITE PARENTHESIS
    "\d301A",  # LEFT WHITE SQUARE BRACKET
    "\d3018",  # LEFT WHITE TORTOISE SHELL BRACKET
    "\d232B",  # LEFT, ERASE TO THE
    "\d219E",  # left, fast cursor
    "\d2329",  # LEFT-POINTING ANGLE BRACKET
    "\d2039",  # LEFT-POINTING ANGLE QUOTATION MARK, SINGLE
    "\d00AB",  # LEFT-POINTING DOUBLE ANGLE QUOTATION MARK
    "\d202A",  # LEFT-TO-RIGHT EMBEDDING
    "\d2066",  # LEFT-TO-RIGHT ISOLATE
    "\d200E",  # LEFT-TO-RIGHT MARK
    "\d202D",  # LEFT-TO-RIGHT OVERRIDE
    "\d21E4",  # leftward tab
    "\d2190",  # LEFTWARDS ARROW
    "\d20EA",  # LEFTWARDS ARROW OVERLAY, COMBINING
    "\d204C",  # LEFTWARDS BULLET, BLACK
    "\d20ED",  # LEFTWARDS HARPOON WITH BARB DOWNWARDS, COMBINING
    "\d3010",  # LENTICULAR BRACKET, LEFT BLACK
    "\d3016",  # LENTICULAR BRACKET, LEFT WHITE
    "\d3011",  # LENTICULAR BRACKET, RIGHT BLACK
    "\d3017",  # LENTICULAR BRACKET, RIGHT WHITE
    "\d264C",  # LEO
    "\d1F406",  # LEOPARD
    "\d1C00",  # Lepcha
    "\d2264",  # LESS-THAN OR EQUAL TO
    "\d003C",  # LESS-THAN SIGN
    "\d226A",  # LESS-THAN, MUCH
    "\d22D8",  # LESS-THAN, VERY MUCH
    "\d2135",  # Letterlike Mathematical Symbols, Hebrew
    "\d2100",  # Letterlike Symbols
    "\d21EB",  # level 2 lock
    "\d21E7",  # level 2 select (ISO 9995-7)
    "\d21EF",  # level 3 lock
    "\d21EE",  # level 3 select
    "\d026E",  # LEZH, LATIN SMALL LETTER
    "\d000A",  # lf
    "\d27EE",  # lgroup
    "\d264E",  # LIBRA
    "\d00C6",  # ligature ae, latin capital
    "\d00E6",  # ligature ae, latin small
    "\d0133",  # LIGATURE IJ, LATIN SMALL
    "\d0153",  # LIGATURE OE, LATIN SMALL
    "\d0361",  # ligature tie
    "\d035C",  # ligature tie below
    "\d1F670",  # Ligature-et Ornaments, Ampersand and
    "\dFBEA",  # Ligatures, Arabic
    "\dFB13",  # Ligatures, Armenian
    "\dFB00",  # Ligatures, Latin
    "\d1F4A1",  # LIGHT BULB, ELECTRIC
    "\d26EF",  # LIGHTHOUSE, MAP SYMBOL FOR
    "\d2607",  # LIGHTNING
    "\d26A1",  # lightning
    "\d1F5F2",  # lightning bolt
    "\d1900",  # Limbu
    "\d1946",  # Limbu Digits
    "\d1944",  # LIMBU EXCLAMATION MARK
    "\d1945",  # LIMBU QUESTION MARK
    "\d1939",  # Limbu Signs
    "\d2250",  # LIMIT, APPROACHES THE
    "\d030E",  # LINE ABOVE, COMBINING DOUBLE VERTICAL
    "\d030D",  # LINE ABOVE, COMBINING VERTICAL
    "\d008C",  # LINE BACKWARD, PARTIAL
    "\d0348",  # LINE BELOW, COMBINING DOUBLE VERTICAL
    "\d0329",  # LINE BELOW, COMBINING VERTICAL
    "\d000A",  # LINE FEED
    "\d21B4",  # line feed
    "\d008D",  # LINE FEED, REVERSE
    "\d240A",  # LINE FEED, SYMBOL FOR
    "\d008B",  # LINE FORWARD, PARTIAL
    "\d2319",  # line marker
    "\d2AEE",  # Line Operators, Vertical
    "\d20D2",  # LINE OVERLAY, COMBINING LONG VERTICAL
    "\d20D3",  # LINE OVERLAY, COMBINING SHORT VERTICAL
    "\d2028",  # LINE SEPARATOR
    "\d2104",  # LINE SYMBOL, CENTRE
    "\d000B",  # LINE TABULATION
    "\d008A",  # LINE TABULATION SET
    "\d237F",  # LINE WITH MIDDLE DOT, VERTICAL
    "\d2310",  # line, beginning of
    "\dFE4E",  # LINE, CENTRELINE LOW
    "\d0333",  # LINE, COMBINING DOUBLE LOW
    "\d0332",  # LINE, COMBINING LOW
    "\dFE4D",  # LINE, DASHED LOW
    "\d2017",  # LINE, DOUBLE LOW
    "\d2016",  # LINE, DOUBLE VERTICAL
    "\d000A",  # line, end of
    "\d005F",  # LINE, LOW
    "\d02CC",  # LINE, MODIFIER LETTER LOW VERTICAL
    "\d02C8",  # LINE, MODIFIER LETTER VERTICAL
    "\d000A",  # line, new
    "\d0085",  # LINE, NEXT
    "\d214A",  # LINE, PROPERTY
    "\d007C",  # LINE, VERTICAL
    "\d2307",  # LINE, WAVY
    "\dFE4F",  # LINE, WAVY LOW
    "\d10600",  # Linear A
    "\d10080",  # Linear B Ideograms
    "\d10000",  # Linear B Syllabary
    "\d23BA",  # Lines, Horizontal Scan
    "\d2223",  # Lines, Vertical
    "\d1F981",  # LION FACE
    "\d1F5E2",  # LIPS
    "\d20A4",  # LIRA SIGN
    "\d20BA",  # LIRA SIGN, TURKISH
    "\d00A3",  # lira, italian
    "\dA4D0",  # Lisu
    "\d2113",  # liter
    "\d20B6",  # LIVRE TOURNOIS SIGN
    "\d1F50F",  # Lock Symbols
    "\d21EA",  # lock, caps
    "\d21EC",  # lock, caps
    "\d21ED",  # lock, numerics
    "\d26BF",  # lock, parental
    "\d27D8",  # Logic Operators, Modal
    "\d27E0",  # Logic Operators, Modal
    "\d2227",  # LOGICAL AND
    "\d22CF",  # LOGICAL AND, CURLY
    "\d22C0",  # LOGICAL AND, N-ARY
    "\d2A51",  # Logical Ands and Ors
    "\d2228",  # LOGICAL OR
    "\d22CE",  # LOGICAL OR, CURLY
    "\d22C1",  # LOGICAL OR, N-ARY
    "\d0304",  # long
    "\d27F5",  # Long Arrows
    "\d27CC",  # LONG DIVISION
    "\d20EB",  # long double slash overlay
    "\d017F",  # LONG S, LATIN SMALL LETTER
    "\d0338",  # long slash overlay
    "\d0338",  # LONG SOLIDUS OVERLAY, COMBINING
    "\d0336",  # LONG STROKE OVERLAY, COMBINING
    "\d20D2",  # LONG VERTICAL LINE OVERLAY, COMBINING
    "\d27B0",  # LOOP, CURLY
    "\d27BF",  # LOOP, DOUBLE CURLY
    "\d2628",  # LORRAINE, CROSS OF
    "\d26DF",  # lorry, black
    "\d1F91F",  # love, hand sign
    "\d02CF",  # LOW ACUTE ACCENT, MODIFIER LETTER
    "\d204E",  # LOW ASTERISK
    "\d201E",  # low double comma quotation mark
    "\d301F",  # LOW DOUBLE PRIME QUOTATION MARK
    "\d02CE",  # LOW GRAVE ACCENT, MODIFIER LETTER
    "\d005F",  # LOW LINE
    "\dFE4E",  # LOW LINE, CENTRELINE
    "\d0332",  # LOW LINE, COMBINING
    "\d0333",  # LOW LINE, COMBINING DOUBLE
    "\dFE4D",  # LOW LINE, DASHED
    "\d2017",  # LOW LINE, DOUBLE
    "\dFE4F",  # LOW LINE, WAVY
    "\d02CD",  # LOW MACRON, MODIFIER LETTER
    "\d201A",  # low single comma quotation mark
    "\dDC00",  # Low Surrogates
    "\d02CC",  # LOW VERTICAL LINE, MODIFIER LETTER
    "\d201E",  # LOW-9 QUOTATION MARK, DOUBLE
    "\d201A",  # LOW-9 QUOTATION MARK, SINGLE
    "\d2A1C",  # lower integral
    "\d227A",  # lower rank than
    "\d0061",  # Lowercase Alphabet, Latin
    "\d25CA",  # LOZENGE
    "\d29EB",  # LOZENGE, BLACK
    "\d2311",  # LOZENGE, SQUARE
    "\d1F79D",  # Lozenges
    "\d202A",  # lre
    "\d200E",  # lrm
    "\d202D",  # lro
    "\d03F5",  # LUNATE EPSILON SYMBOL, GREEK
    "\d03F6",  # LUNATE EPSILON SYMBOL, GREEK REVERSED
    "\d03F2",  # LUNATE SIGMA SYMBOL, GREEK
    "\d10280",  # Lycian
    "\d10920",  # Lydian
    "\d1E3F",  # M WITH ACUTE, LATIN SMALL LETTER
    "\d1E41",  # M WITH DOT ABOVE, LATIN SMALL LETTER
    "\d1E43",  # M WITH DOT BELOW, LATIN SMALL LETTER
    "\d0271",  # M WITH HOOK, LATIN SMALL LETTER
    "\d0270",  # M WITH LONG LEG, LATIN SMALL LETTER TURNED
    "\d036B",  # M, COMBINING LATIN SMALL LETTER
    "\d019C",  # M, LATIN CAPITAL LETTER TURNED
    "\d1D0D",  # M, LATIN LETTER SMALL CAPITAL
    "\d1D1F",  # M, LATIN SMALL LETTER SIDEWAYS TURNED
    "\d026F",  # M, LATIN SMALL LETTER TURNED
    "\d2098",  # M, LATIN SUBSCRIPT SMALL LETTER
    "\d2133",  # M, SCRIPT CAPITAL
    "\d2133",  # m-matrix
    "\d0BF4",  # maatham, tamil
    "\d00AF",  # MACRON
    "\d0331",  # MACRON BELOW, COMBINING
    "\d035F",  # MACRON BELOW, COMBINING DOUBLE
    "\dFE24",  # MACRON LEFT HALF, COMBINING
    "\dFE25",  # MACRON RIGHT HALF, COMBINING
    "\d0304",  # MACRON, COMBINING
    "\d035E",  # MACRON, COMBINING DOUBLE
    "\d02C9",  # MACRON, MODIFIER LETTER
    "\d02CD",  # MACRON, MODIFIER LETTER LOW
    "\d00AF",  # macron, spacing
    "\d2446",  # Magnetic Ink Character Recognition, MICR
    "\d1F50D",  # MAGNIFYING GLASS, LEFT-POINTING
    "\d1F50E",  # MAGNIFYING GLASS, RIGHT-POINTING
    "\d11150",  # Mahajani
    "\d1F000",  # Mahjong Tiles
    "\d1F4E4",  # Mail Symbols
    "\d0D00",  # Malayalam
    "\d0D4D",  # malayalam chandrakkala
    "\d0D7A",  # Malayalam Chillu Letters
    "\d0D15",  # Malayalam Consonants
    "\d0D3E",  # Malayalam Dependent Vowel Signs
    "\d0D66",  # Malayalam Digits
    "\d0D05",  # Malayalam Independent Vowels
    "\d0D4D",  # MALAYALAM SIGN VIRAMA
    "\d0D4D",  # malayalam vowel half-u
    "\d2642",  # MALE SIGN
    "\d2720",  # MALTESE CROSS
    "\d1F468",  # MAN
    "\d1F46B",  # MAN AND WOMAN HOLDING HANDS
    "\d1F474",  # MAN, OLDER
    "\d20BC",  # MANAT SIGN
    "\d1808",  # MANCHU COMMA, MONGOLIAN
    "\d1809",  # MANCHU FULL STOP, MONGOLIAN
    "\d0840",  # Mandaic
    "\d02D9",  # mandarin chinese fifth or neutral tone
    "\d02C9",  # mandarin chinese first tone
    "\d02CB",  # mandarin chinese fourth tone
    "\d02CA",  # mandarin chinese second tone
    "\d02C7",  # mandarin chinese third tone
    "\d10AC0",  # Manichaean
    "\d2690",  # Map Symbols, Dictionary and
    "\d21A6",  # maplet
    "\d27FB",  # maps from
    "\d2906",  # maps from
    "\d27FC",  # maps to
    "\d2905",  # maps to
    "\d2907",  # maps to
    "\d11C70",  # Marchen
    "\d26F4",  # marina or yacht harbour
    "\d2133",  # mark pre-wwii, german
    "\d25AE",  # marker, histogram
    "\d2319",  # marker, line
    "\d2686",  # Markers, Go
    "\d0300",  # Marks, Combining Diacritical
    "\dFE20",  # Marks, Combining Half
    "\d1F16A",  # marque de commerce
    "\d1F16B",  # marque deposee
    "\d26AD",  # MARRIAGE SYMBOL
    "\d2642",  # mars
    "\d11D00",  # Masaram Gondi
    "\d00BA",  # MASCULINE ORDINAL INDICATOR
    "\d1F3AD",  # masks of comedy and tragedy
    "\d303C",  # MASU MARK
    "\d1D400",  # Mathematical Alphanumeric Symbols
    "\d27E6",  # Mathematical Brackets
    "\d03C0",  # mathematical constant 3.141592... pi
    "\d1D7CE",  # Mathematical Digits Symbols
    "\d2200",  # Mathematical Operators
    "\d2234",  # Mathematical Operators, Dotted
    "\d2295",  # Mathematical Operators, Enclosed
    "\d2A00",  # Mathematical Operators, Supplemental
    "\d223B",  # Mathematical Operators, Tilde
    "\d205F",  # MATHEMATICAL SPACE, MEDIUM
    "\d27C0",  # Mathematical Symbols
    "\d2980",  # Mathematical Symbols
    "\d1D504",  # Mathematical Symbols, Black-letter
    "\d1D56C",  # Mathematical Symbols, Bold Fraktur
    "\d1D6A8",  # Mathematical Symbols, Bold Greek
    "\d1D468",  # Mathematical Symbols, Bold Italic
    "\d1D71C",  # Mathematical Symbols, Bold Italic Greek
    "\d1D4D0",  # Mathematical Symbols, Bold Script
    "\d1D6A4",  # Mathematical Symbols, Dotless
    "\d1D538",  # Mathematical Symbols, Double-struck
    "\d1D504",  # Mathematical Symbols, Fraktur
    "\d1D6A8",  # Mathematical Symbols, Greek
    "\d2135",  # Mathematical Symbols, Hebrew Letterlike
    "\d1D434",  # Mathematical Symbols, Italic
    "\d1D6E2",  # Mathematical Symbols, Italic Greek
    "\d1D670",  # Mathematical Symbols, Monospace
    "\d1D5A0",  # Mathematical Symbols, Sans-serif
    "\d1D5D4",  # Mathematical Symbols, Sans-serif Bold
    "\d1D756",  # Mathematical Symbols, Sans-serif Bold Greek
    "\d1D63C",  # Mathematical Symbols, Sans-serif Bold Italic
    "\d1D790",  # Mathematical Symbols, Sans-serif Bold Italic Greek
    "\d1D608",  # Mathematical Symbols, Sans-serif Italic
    "\d1D49C",  # Mathematical Symbols, Script
    "\d27C0",  # Mathematical Symbols-A, Miscellaneous
    "\d2980",  # Mathematical Symbols-B, Miscellaneous
    "\d22B9",  # MATRIX, HERMITIAN CONJUGATE
    "\d1F16A",  # MC SIGN, RAISED
    "\d1F16B",  # MD SIGN, RAISED
    "\d2221",  # MEASURED ANGLE
    "\d299B",  # Measured Angles, Angles and
    "\d225E",  # MEASURED BY
    "\d2052",  # med avdrag av
    "\d0363",  # Medieval Superscript Letter Diacritics
    "\d1DD3",  # Medieval Superscript Letter Diacritics, Latin
    "\d2E2A",  # Medievalist Punctuation
    "\d26AB",  # MEDIUM BLACK CIRCLE
    "\d205F",  # MEDIUM MATHEMATICAL SPACE
    "\d25FE",  # MEDIUM SMALL SQUARE, BLACK
    "\d26AC",  # MEDIUM SMALL WHITE CIRCLE
    "\d25FC",  # MEDIUM SQUARE, BLACK
    "\d26AA",  # MEDIUM WHITE CIRCLE
    "\d0019",  # MEDIUM, END OF
    "\d2419",  # MEDIUM, SYMBOL FOR END OF
    "\dABC0",  # Meetei Mayek
    "\dAAE0",  # Meetei Mayek Extensions
    "\d220B",  # MEMBER, CONTAINS AS
    "\d220C",  # MEMBER, DOES NOT CONTAIN AS
    "\d220D",  # MEMBER, SMALL CONTAINS AS
    "\d2208",  # Membership Signs, Set
    "\d22FF",  # MEMBERSHIP, Z NOTATION BAG
    "\d1F46C",  # MEN HOLDING HANDS, TWO
    "\d1E800",  # Mende Kikakui
    "\d263F",  # MERCURY
    "\d2A07",  # merge
    "\d109A0",  # Meroitic Cursive
    "\d10980",  # Meroitic Hieroglyphs
    "\d0BF8",  # merpadi, tamil
    "\d0095",  # MESSAGE WAITING
    "\d009E",  # MESSAGE, PRIVACY
    "\d23D1",  # Metrical Symbols
    "\d2127",  # mho
    "\d16F00",  # Miao
    "\d2446",  # MICR, Magnetic Ink Character Recognition
    "\d00B5",  # MICRO SIGN
    "\d2005",  # mid space
    "\d00B7",  # MIDDLE DOT
    "\d00B7",  # middle dot, greek
    "\d30FB",  # MIDDLE DOT, KATAKANA
    "\d0140",  # MIDDLE DOT, LATIN SMALL LETTER L WITH
    "\d237F",  # MIDDLE DOT, VERTICAL LINE WITH
    "\d2E31",  # MIDDLE DOT, WORD SEPARATOR
    "\d019F",  # MIDDLE TILDE, LATIN CAPITAL LETTER O WITH
    "\d026B",  # MIDDLE TILDE, LATIN SMALL LETTER L WITH
    "\d22EF",  # MIDLINE HORIZONTAL ELLIPSIS
    "\d00B7",  # midpoint
    "\d20A5",  # MILL SIGN
    "\d2030",  # MILLE SIGN, PER
    "\d0024",  # milreis
    "\d1D15E",  # minim
    "\d264F",  # minim
    "\d264D",  # minim alternate glyph
    "\d2692",  # mining symbol
    "\d2212",  # MINUS SIGN
    "\d0320",  # MINUS SIGN BELOW, COMBINING
    "\d2A22",  # Minus Sign Operators, Plus and
    "\d2052",  # MINUS SIGN, COMMERCIAL
    "\d002D",  # minus sign, hyphen or
    "\d02D7",  # MINUS SIGN, MODIFIER LETTER
    "\d2242",  # MINUS TILDE
    "\d2296",  # MINUS, CIRCLED
    "\d2238",  # MINUS, DOT
    "\d2216",  # MINUS, SET
    "\d229F",  # MINUS, SQUARED
    "\d2213",  # MINUS-OR-PLUS SIGN
    "\d2032",  # minutes
    "\d29FF",  # MINY
    "\d2600",  # Miscellaneous Symbols
    "\d1F940",  # Miscellaneous Symbols
    "\d10D0",  # Mkhedruli, Georgian
    "\d205F",  # mmsp
    "\d27E0",  # Modal Logic Operators
    "\d22A7",  # MODELS
    "\d11600",  # Modi
    "\d1D2C",  # Modifier Letter Extensions
    "\d02B0",  # Modifier Letters, Latin Superscript
    "\d02B0",  # Modifier Letters, Spacing
    "\dA700",  # Modifier Tone Letters
    "\d02B0",  # Modifiers Derived from Latin Letters, Phonetic
    "\d02B9",  # Modifiers, Phonetic
    "\d02EF",  # Modifiers, UPA
    "\d1F4B0",  # Money Symbols
    "\d1800",  # Mongolian
    "\d1820",  # Mongolian Basic Letters
    "\d1800",  # MONGOLIAN BIRGA
    "\d1804",  # MONGOLIAN COLON
    "\d1802",  # MONGOLIAN COMMA
    "\d20AE",  # mongolian currency
    "\d1810",  # Mongolian Digits
    "\d1801",  # MONGOLIAN ELLIPSIS
    "\d1843",  # Mongolian Extensions
    "\d180B",  # Mongolian Format Controls
    "\d1805",  # MONGOLIAN FOUR DOTS
    "\d180B",  # MONGOLIAN FREE VARIATION SELECTOR ONE
    "\d180D",  # MONGOLIAN FREE VARIATION SELECTOR THREE
    "\d180C",  # MONGOLIAN FREE VARIATION SELECTOR TWO
    "\d1803",  # MONGOLIAN FULL STOP
    "\d1808",  # MONGOLIAN MANCHU COMMA
    "\d1809",  # MONGOLIAN MANCHU FULL STOP
    "\d180A",  # MONGOLIAN NIRUGU
    "\d1800",  # Mongolian Punctuation
    "\d1807",  # MONGOLIAN SIBE SYLLABLE BOUNDARY MARKER
    "\d11660",  # Mongolian Supplement
    "\d1806",  # MONGOLIAN TODO SOFT HYPHEN
    "\d180E",  # MONGOLIAN VOWEL SEPARATOR
    "\d1F412",  # MONKEY
    "\d1F435",  # MONKEY FACE
    "\d268A",  # Monogram and Digram Symbols, Yijing / I Ching
    "\d1D7F6",  # Monospace Digits
    "\d1D670",  # Monospace Mathematical Symbols
    "\d238D",  # MONOSTABLE SYMBOL
    "\d0BF4",  # MONTH SIGN, TAMIL
    "\d3200",  # Months, Enclosed CJK Letters and
    "\d32C0",  # Months, Ideographic Telegraph Symbols for
    "\d1F319",  # MOON, CRESCENT
    "\d263D",  # MOON, FIRST QUARTER
    "\d263E",  # MOON, LAST QUARTER
    "\d1F311",  # Moon, Sun, and Star Symbols
    "\d1F393",  # mortarboard
    "\d223E",  # most positive
    "\d1F6E3",  # MOTORWAY
    "\d26F0",  # MOUNTAIN
    "\d1F401",  # MOUSE
    "\d1F42D",  # MOUSE FACE
    "\d23B0",  # moustache, left
    "\d23B1",  # moustache, right
    "\d1F444",  # MOUTH
    "\d16A40",  # Mro
    "\d226B",  # MUCH GREATER-THAN
    "\d22D9",  # MUCH GREATER-THAN, VERY
    "\d226A",  # MUCH LESS-THAN
    "\d22D8",  # MUCH LESS-THAN, VERY
    "\d11280",  # Multani
    "\d22B8",  # MULTIMAP
    "\d2A2F",  # Multiplication and Division Sign Operators
    "\d00D7",  # MULTIPLICATION SIGN
    "\d2715",  # MULTIPLICATION X
    "\d2716",  # MULTIPLICATION X, HEAVY
    "\d228D",  # MULTIPLICATION, MULTISET
    "\d228C",  # MULTISET
    "\d228D",  # MULTISET MULTIPLICATION
    "\d228E",  # MULTISET UNION
    "\d2669",  # Music Dingbats
    "\d266D",  # MUSIC FLAT SIGN
    "\d266E",  # MUSIC NATURAL SIGN
    "\d266F",  # MUSIC SHARP SIGN
    "\d1F3B5",  # Music Symbols
    "\d1D200",  # Musical Notation, Ancient Greek
    "\d1F39C",  # MUSICAL NOTES, BEAMED ASCENDING
    "\d1F39D",  # MUSICAL NOTES, BEAMED DESCENDING
    "\d1F3B6",  # MUSICAL NOTES, MULTIPLE
    "\d1D100",  # Musical Symbols
    "\d1B61",  # Musical Symbols, Balinese
    "\d2669",  # Musical Symbols, Basic
    "\d1D000",  # Musical Symbols, Byzantine
    "\d2003",  # mutton
    "\d2001",  # mutton quad
    "\d1000",  # Myanmar
    "\d1000",  # Myanmar Consonants
    "\d102C",  # Myanmar Dependent Vowel Signs
    "\d1040",  # Myanmar Digits
    "\dAA60",  # Myanmar Extended-A
    "\dA9E0",  # Myanmar Extended-B
    "\d1021",  # Myanmar Independent Vowels
    "\d1039",  # myanmar killer
    "\d1039",  # MYANMAR SIGN VIRAMA
    "\d1036",  # Myanmar Signs
    "\d0144",  # N WITH ACUTE, LATIN SMALL LETTER
    "\d0148",  # N WITH CARON, LATIN SMALL LETTER
    "\d0146",  # N WITH CEDILLA, LATIN SMALL LETTER
    "\d1E4B",  # N WITH CIRCUMFLEX BELOW, LATIN SMALL LETTER
    "\d0235",  # N WITH CURL, LATIN SMALL LETTER
    "\d1E45",  # N WITH DOT ABOVE, LATIN SMALL LETTER
    "\d1E47",  # N WITH DOT BELOW, LATIN SMALL LETTER
    "\d01F9",  # N WITH GRAVE, LATIN SMALL LETTER
    "\d019D",  # N WITH LEFT HOOK, LATIN CAPITAL LETTER
    "\d0272",  # N WITH LEFT HOOK, LATIN SMALL LETTER
    "\d1E49",  # N WITH LINE BELOW, LATIN SMALL LETTER
    "\d0220",  # N WITH LONG RIGHT LEG, LATIN CAPITAL LETTER
    "\d019E",  # N WITH LONG RIGHT LEG, LATIN SMALL LETTER
    "\d0273",  # N WITH RETROFLEX HOOK, LATIN SMALL LETTER
    "\d00D1",  # N WITH TILDE, LATIN CAPITAL LETTER
    "\d00F1",  # N WITH TILDE, LATIN SMALL LETTER
    "\d2115",  # N, DOUBLE-STRUCK CAPITAL
    "\d0274",  # N, LATIN LETTER SMALL CAPITAL
    "\d1D0E",  # N, LATIN LETTER SMALL CAPITAL REVERSED
    "\d2099",  # N, LATIN SUBSCRIPT SMALL LETTER
    "\d2210",  # N-ARY COPRODUCT
    "\d2AFF",  # n-ary dijkstra choice
    "\d22C2",  # N-ARY INTERSECTION
    "\d22C0",  # N-ARY LOGICAL AND
    "\d22C1",  # N-ARY LOGICAL OR
    "\d22C0",  # N-ary Operators
    "\d2A00",  # N-ary Operators
    "\d220F",  # N-ARY PRODUCT
    "\d2211",  # N-ARY SUMMATION
    "\d2140",  # N-ARY SUMMATION, DOUBLE-STRUCK
    "\d2A09",  # N-ARY TIMES OPERATOR
    "\d22C3",  # N-ARY UNION
    "\d2AFF",  # N-ARY WHITE VERTICAL BAR
    "\d0BF3",  # naal, tamil
    "\d10880",  # Nabataean
    "\d2207",  # NABLA
    "\d20A6",  # NAIRA SIGN
    "\d22BC",  # NAND
    "\d202F",  # NARROW NO-BREAK SPACE
    "\d0328",  # nasal hook
    "\d212F",  # natural exponent
    "\d2115",  # natural number
    "\d266E",  # NATURAL SIGN, MUSIC
    "\d00A0",  # nbsp
    "\d2252",  # nearly equals
    "\d2AF1",  # necessarily satisfies
    "\d0015",  # NEGATIVE ACKNOWLEDGE
    "\d2415",  # NEGATIVE ACKNOWLEDGE, SYMBOL FOR
    "\d274E",  # NEGATIVE SQUARED CROSS MARK, NEGATIVE SQUARED
    "\d0085",  # nel
    "\d2646",  # NEPTUNE
    "\d26B2",  # NEUTER
    "\d0022",  # neutral quotation mark
    "\d0027",  # neutral single quotation mark
    "\d02D9",  # neutral tone, mandarin chinese fifth or
    "\d000A",  # new line
    "\d20AA",  # NEW SHEQEL SIGN
    "\d1980",  # New Tai Lue
    "\d19D0",  # New Tai Lue Digits
    "\d2E00",  # New Testament Editorial Symbols
    "\d1D510",  # new testament majority text
    "\d11400",  # Newa
    "\d2424",  # NEWLINE, SYMBOL FOR
    "\d0085",  # NEXT LINE
    "\d2398",  # NEXT PAGE
    "\d2712",  # NIB, BLACK
    "\d2711",  # NIB, WHITE
    "\d20A6",  # nigerian currency
    "\d0ECD",  # NIGGAHITA, LAO
    "\d17C6",  # NIKAHIT, KHMER SIGN
    "\d0E4D",  # NIKHAHIT, THAI CHARACTER
    "\d2A27",  # nim-addition
    "\d180A",  # NIRUGU, MONGOLIAN
    "\d07C0",  # NKo
    "\d000A",  # nl
    "\d202F",  # nnbsp
    "\d20E0",  # no
    "\d0083",  # NO BREAK HERE
    "\d237D",  # no break space, keyboard symbol for
    "\d26D4",  # NO ENTRY
    "\d1F6AB",  # NO ENTRY SIGN
    "\d00A0",  # NO-BREAK SPACE
    "\d202F",  # NO-BREAK SPACE, NARROW
    "\dFEFF",  # NO-BREAK SPACE, ZERO WIDTH
    "\d260A",  # NODE, ASCENDING
    "\d260B",  # NODE, DESCENDING
    "\d2011",  # NON-BREAKING HYPHEN
    "\d00A0",  # non-breaking space
    "\d200C",  # NON-JOINER, ZERO WIDTH
    "\d0345",  # non-spacing iota below, greek
    "\d22A3",  # non-theorem
    "\d*FFFE",  # Noncharacters
    "\d*FFFF",  # Noncharacters
    "\dFDD*",  # Noncharacters
    "\dFDE*",  # Noncharacters
    "\d22BD",  # NOR
    "\d22C9",  # NORMAL FACTOR SEMIDIRECT PRODUCT, LEFT
    "\d22CA",  # NORMAL FACTOR SEMIDIRECT PRODUCT, RIGHT
    "\d22B2",  # NORMAL SUBGROUP OF
    "\d22EA",  # Normal Subgroup Signs
    "\d22B3",  # NORMAL SUBGROUP, CONTAINS AS
    "\d1F443",  # NOSE
    "\d223C",  # not
    "\d2284",  # NOT A SUBSET OF
    "\d2285",  # NOT A SUPERSET OF
    "\d2249",  # NOT ALMOST EQUAL TO
    "\d2209",  # NOT AN ELEMENT OF
    "\d2244",  # NOT ASYMPTOTICALLY EQUAL TO
    "\d237B",  # NOT CHECK MARK
    "\d2260",  # NOT EQUAL TO
    "\d2262",  # NOT IDENTICAL TO
    "\d2ADC",  # not independent
    "\d2226",  # NOT PARALLEL TO
    "\d00AC",  # NOT SIGN
    "\d2310",  # NOT SIGN, REVERSED
    "\d2319",  # NOT SIGN, TURNED
    "\d2241",  # NOT TILDE
    "\d034A",  # NOT TILDE ABOVE, COMBINING
    "\d22A3",  # not yield, does
    "\d266A",  # NOTE, EIGHTH
    "\d2669",  # NOTE, QUARTER
    "\d266B",  # NOTES, BEAMED EIGHTH
    "\d266C",  # NOTES, BEAMED SIXTEENTH
    "\d093C",  # NUKTA, DEVANAGARI SIGN
    "\d0000",  # NULL
    "\d2205",  # null set
    "\d2400",  # NULL, SYMBOL FOR
    "\d2150",  # Number Forms
    "\d0023",  # NUMBER SIGN
    "\d0BFA",  # NUMBER SIGN, TAMIL
    "\d210A",  # number symbol, real
    "\d3007",  # NUMBER ZERO, IDEOGRAPHIC
    "\d2115",  # number, natural
    "\d12400",  # Numbers and Punctuation, Cuneiform
    "\d2488",  # Numbers Followed by Period
    "\d10140",  # Numbers, Ancient Greek
    "\d2460",  # Numbers, Circled
    "\d3251",  # Numbers, Circled
    "\d32B1",  # Numbers, Circled
    "\d2776",  # Numbers, Circled Inverse
    "\d2102",  # numbers, complex
    "\d24F5",  # Numbers, Double Circled
    "\d1369",  # Numbers, Ethiopic
    "\d2474",  # Numbers, Parenthesized
    "\d211A",  # numbers, rational
    "\d211D",  # numbers, real
    "\d16EE",  # Numbers, Runic Golden
    "\d0BE7",  # Numbers, Tamil
    "\d24EB",  # Numbers, White on Black Circled
    "\d3021",  # Numerals, Hangzhou
    "\d10320",  # Numerals, Old Italic
    "\d2160",  # Numerals, Roman
    "\d3021",  # Numerals, Suzhou
    "\d215F",  # NUMERATOR ONE, FRACTION
    "\d17F0",  # Numeric Symbols for Divination, Khmer
    "\d21ED",  # numerics lock
    "\d2116",  # NUMERO SIGN
    "\d1B170",  # Nushu
    "\d2002",  # nut
    "\d019F",  # o bar, latin capital letter
    "\d0275",  # o bar, latin small letter
    "\d0153",  # o e, latin small letter
    "\d00D8",  # o slash, latin capital letter
    "\d00F8",  # o slash, latin small letter
    "\d00D3",  # O WITH ACUTE, LATIN CAPITAL LETTER
    "\d00F3",  # O WITH ACUTE, LATIN SMALL LETTER
    "\d014F",  # O WITH BREVE, LATIN SMALL LETTER
    "\d01D2",  # O WITH CARON, LATIN SMALL LETTER
    "\d00D4",  # O WITH CIRCUMFLEX, LATIN CAPITAL LETTER
    "\d00F4",  # O WITH CIRCUMFLEX, LATIN SMALL LETTER
    "\d00D6",  # O WITH DIAERESIS, LATIN CAPITAL LETTER
    "\d00F6",  # O WITH DIAERESIS, LATIN SMALL LETTER
    "\d022F",  # O WITH DOT ABOVE, LATIN SMALL LETTER
    "\d1ECD",  # O WITH DOT BELOW, LATIN SMALL LETTER
    "\d0151",  # O WITH DOUBLE ACUTE, LATIN SMALL LETTER
    "\d020D",  # O WITH DOUBLE GRAVE, LATIN SMALL LETTER
    "\d00D2",  # O WITH GRAVE, LATIN CAPITAL LETTER
    "\d00F2",  # O WITH GRAVE, LATIN SMALL LETTER
    "\d1ECF",  # O WITH HOOK ABOVE, LATIN SMALL LETTER
    "\d01A1",  # O WITH HORN, LATIN SMALL LETTER
    "\d020F",  # O WITH INVERTED BREVE, LATIN SMALL LETTER
    "\d014D",  # O WITH MACRON, LATIN SMALL LETTER
    "\d019F",  # O WITH MIDDLE TILDE, LATIN CAPITAL LETTER
    "\d01EB",  # O WITH OGONEK, LATIN SMALL LETTER
    "\d00D8",  # O WITH STROKE, LATIN CAPITAL LETTER
    "\d00F8",  # O WITH STROKE, LATIN SMALL LETTER
    "\d1D13",  # O WITH STROKE, LATIN SMALL LETTER SIDEWAYS
    "\d00D5",  # O WITH TILDE, LATIN CAPITAL LETTER
    "\d00F5",  # O WITH TILDE, LATIN SMALL LETTER
    "\d0366",  # O, COMBINING LATIN SMALL LETTER
    "\d019F",  # o, latin capital letter barred
    "\d0186",  # O, LATIN CAPITAL LETTER OPEN
    "\d1D0F",  # O, LATIN LETTER SMALL CAPITAL
    "\d1D10",  # O, LATIN LETTER SMALL CAPITAL OPEN
    "\d0275",  # O, LATIN SMALL LETTER BARRED
    "\d1D17",  # O, LATIN SMALL LETTER BOTTOM HALF
    "\d0254",  # O, LATIN SMALL LETTER OPEN
    "\d1D11",  # O, LATIN SMALL LETTER SIDEWAYS
    "\d1D12",  # O, LATIN SMALL LETTER SIDEWAYS OPEN
    "\d1D16",  # O, LATIN SMALL LETTER TOP HALF
    "\d2134",  # O, SCRIPT SMALL
    "\d00F7",  # obelus
    "\dFFFC",  # OBJECT REPLACEMENT CHARACTER
    "\d2440",  # OCR, Optical Character Recognition
    "\d1F419",  # OCTOPUS
    "\d0023",  # octothorpe
    "\d0276",  # OE, LATIN LETTER SMALL CAPITAL
    "\d1D14",  # OE, LATIN SMALL LETTER TURNED
    "\d0153",  # OE, LATIN SMALL LIGATURE
    "\d1F4BA",  # Office Symbols
    "\d1680",  # Ogham
    "\d1695",  # Ogham Forfeda Supplement
    "\d169B",  # Ogham Punctuation
    "\d1680",  # OGHAM SPACE MARK
    "\d1681",  # Ogham Traditional Letters
    "\d02DB",  # OGONEK
    "\d0328",  # OGONEK, COMBINING
    "\d1F479",  # OGRE, JAPANESE
    "\d2126",  # OHM SIGN
    "\d2127",  # OHM SIGN, INVERTED
    "\d01A3",  # OI, LATIN SMALL LETTER
    "\d1F44C",  # OK HAND SIGN
    "\d1C50",  # Ol Chiki
    "\d10C80",  # Old Hungarian
    "\d10300",  # Old Italic
    "\d10350",  # Old Permic
    "\d103A0",  # Old Persian
    "\d1D516",  # old testament, greek
    "\d1F549",  # OM SYMBOL
    "\d0950",  # OM, DEVANAGARI
    "\d0F00",  # OM, TIBETAN SYLLABLE
    "\d03D6",  # omega pi
    "\d0277",  # OMEGA, LATIN SMALL LETTER CLOSED
    "\d2E3A",  # omission dash
    "\d2024",  # ONE DOT LEADER
    "\d00BD",  # ONE HALF, VULGAR FRACTION
    "\d00BC",  # ONE QUARTER, VULGAR FRACTION
    "\d215F",  # ONE, FRACTION NUMERATOR
    "\d00B9",  # ONE, SUPERSCRIPT
    "\d2423",  # OPEN BOX
    "\d237D",  # OPEN BOX, SHOULDERED
    "\d025D",  # OPEN E WITH HOOK, LATIN SMALL LETTER REVERSED
    "\d0190",  # OPEN E, LATIN CAPITAL LETTER
    "\d025B",  # OPEN E, LATIN SMALL LETTER
    "\d029A",  # OPEN E, LATIN SMALL LETTER CLOSED
    "\d025E",  # OPEN E, LATIN SMALL LETTER CLOSED REVERSED
    "\d025C",  # OPEN E, LATIN SMALL LETTER REVERSED
    "\d1D08",  # OPEN E, LATIN SMALL LETTER TURNED
    "\d0186",  # OPEN O, LATIN CAPITAL LETTER
    "\d1D10",  # OPEN O, LATIN LETTER SMALL CAPITAL
    "\d0254",  # OPEN O, LATIN SMALL LETTER
    "\d1D12",  # OPEN O, LATIN SMALL LETTER SIDEWAYS
    "\d007B",  # opening brace
    "\d007B",  # opening curly bracket
    "\d0028",  # opening parenthesis
    "\d005B",  # opening square bracket
    "\d009D",  # OPERATING SYSTEM COMMAND
    "\d2318",  # operating system key (ISO 9995-7)
    "\d2A00",  # Operators Supplement, Mathematical
    "\d27D5",  # Operators, Database Theory
    "\d2234",  # Operators, Dotted Mathematical
    "\d22D0",  # Operators, Double
    "\d2295",  # Operators, Enclosed Mathematical
    "\d2061",  # Operators, Invisible
    "\d29F8",  # Operators, Large
    "\d2200",  # Operators, Mathematical
    "\d27E0",  # Operators, Modal Logic
    "\d2A2F",  # Operators, Multiplication and Division Sign
    "\d22C0",  # Operators, N-ary
    "\d2A00",  # Operators, N-ary
    "\d2A22",  # Operators, Plus and Minus Sign
    "\d29E3",  # Operators, Relational
    "\d29FA",  # Operators, Specialized Plus Sign
    "\d2A00",  # Operators, Supplemental Mathematical
    "\d223B",  # Operators, Tilde Mathematical
    "\d2AEE",  # Operators, Vertical Line
    "\d26CE",  # OPHIUCHUS
    "\d260D",  # OPPOSITION
    "\d2440",  # Optical Character Recognition, OCR
    "\d1F4BF",  # OPTICAL DISC
    "\d2325",  # OPTION KEY
    "\d22CE",  # OR, CURLY LOGICAL
    "\d2A54",  # OR, DOUBLE LOGICAL
    "\d2228",  # OR, LOGICAL
    "\d22C1",  # OR, N-ARY LOGICAL
    "\d2134",  # order
    "\d227A",  # Order Relation Precedence Signs
    "\d22DE",  # Order Relation Precedence Signs
    "\d00AA",  # ORDINAL INDICATOR, FEMININE
    "\d00BA",  # ORDINAL INDICATOR, MASCULINE
    "\d2AE2",  # ordinarily satisfies
    "\d0300",  # Ordinary Diacritics
    "\d2331",  # ORIGIN, DIMENSION
    "\d22B6",  # ORIGINAL OF
    "\d2290",  # ORIGINAL OF, SQUARE
    "\d0B00",  # Oriya
    "\d0B15",  # Oriya Consonants
    "\d0B3E",  # Oriya Dependent Vowel Signs
    "\d0B66",  # Oriya Digits
    "\d0B05",  # Oriya Independent Vowels
    "\d0B70",  # ORIYA ISSHAR
    "\d276E",  # Ornamental Angle Quotation Marks
    "\d2768",  # Ornamental Brackets
    "\d1F650",  # Ornamental Dingbats
    "\d2763",  # Ornaments, Heart
    "\d275B",  # Ornaments, Punctuation Mark
    "\d1F676",  # Ornaments, Punctuation Mark
    "\d275B",  # Ornaments, Quotation Mark
    "\dFD3E",  # ORNATE LEFT PARENTHESIS
    "\dFD3F",  # ORNATE RIGHT PARENTHESIS
    "\d2A51",  # Ors, Logical Ands and
    "\d2626",  # ORTHODOX CROSS
    "\d22A5",  # orthogonal to
    "\d104B0",  # Osage
    "\d10480",  # Osmanya
    "\d104A0",  # Osmanya Digits
    "\d1D15",  # OU, LATIN LETTER SMALL CAPITAL
    "\d0223",  # OU, LATIN SMALL LETTER
    "\d2125",  # OUNCE SIGN
    "\d00AF",  # overbar, apl
    "\d20DA",  # OVERLAY, COMBINING ANTICLOCKWISE RING
    "\d20D9",  # OVERLAY, COMBINING CLOCKWISE RING
    "\d20DA",  # overlay, combining counterclockwise ring
    "\d20E6",  # OVERLAY, COMBINING DOUBLE VERTICAL STROKE
    "\d20EA",  # OVERLAY, COMBINING LEFTWARDS ARROW
    "\d20EB",  # OVERLAY, COMBINING LONG DOUBLE SOLIDUS
    "\d0338",  # OVERLAY, COMBINING LONG SOLIDUS
    "\d0336",  # OVERLAY, COMBINING LONG STROKE
    "\d20D2",  # OVERLAY, COMBINING LONG VERTICAL LINE
    "\d20E5",  # OVERLAY, COMBINING REVERSE SOLIDUS
    "\d20D8",  # OVERLAY, COMBINING RING
    "\d0337",  # OVERLAY, COMBINING SHORT SOLIDUS
    "\d0335",  # OVERLAY, COMBINING SHORT STROKE
    "\d20D3",  # OVERLAY, COMBINING SHORT VERTICAL LINE
    "\d0334",  # OVERLAY, COMBINING TILDE
    "\d20EB",  # overlay, long double slash
    "\d0338",  # overlay, long slash
    "\d0337",  # overlay, short slash
    "\d00AF",  # overline
    "\d203E",  # OVERLINE
    "\dFE4A",  # OVERLINE, CENTRELINE
    "\d0305",  # OVERLINE, COMBINING
    "\d033F",  # OVERLINE, COMBINING DOUBLE
    "\dFE49",  # OVERLINE, DASHED
    "\dFE4C",  # OVERLINE, DOUBLE WAVY
    "\dFE4B",  # OVERLINE, WAVY
    "\d202D",  # OVERRIDE, LEFT-TO-RIGHT
    "\d202E",  # OVERRIDE, RIGHT-TO-LEFT
    "\d0305",  # overscore
    "\d203E",  # overscore, spacing
    "\dFE49",  # Overscores and Underscores
    "\d0334",  # Overstruck Diacritics
    "\d1F402",  # OX
    "\d0301",  # oxia, greek
    "\d1E55",  # P WITH ACUTE, LATIN SMALL LETTER
    "\d1E57",  # P WITH DOT ABOVE, LATIN SMALL LETTER
    "\d01A5",  # P WITH HOOK, LATIN SMALL LETTER
    "\d2119",  # P, DOUBLE-STRUCK CAPITAL
    "\d1D18",  # P, LATIN LETTER SMALL CAPITAL
    "\d209A",  # P, LATIN SUBSCRIPT SMALL LETTER
    "\d2118",  # P, SCRIPT CAPITAL
    "\d1F958",  # paella
    "\d21DF",  # page down
    "\d2B7D",  # page down
    "\d1F4C4",  # PAGE FACING UP
    "\d21DE",  # page up
    "\d2B7B",  # page up
    "\d2398",  # PAGE, NEXT
    "\d2397",  # PAGE, PREVIOUS
    "\d16B00",  # Pahawh Hmong
    "\d10B60",  # Pahlavi
    "\d10B80",  # Pahlavi, Psalter
    "\d2E32",  # Palaeotype Transliteration Symbols
    "\d01AB",  # PALATAL HOOK, LATIN SMALL LETTER T WITH
    "\d0321",  # PALATALIZED HOOK BELOW, COMBINING
    "\d2E19",  # PALM BRANCH
    "\d10860",  # Palmyrene
    "\d0F85",  # PALUTA, TIBETAN MARK
    "\d1734",  # PAMUDPOD, HANUNOO SIGN
    "\d1F43C",  # PANDA FACE
    "\d270B",  # paper in rock, paper, scissors game
    "\d267E",  # PAPER SIGN, PERMANENT
    "\d267D",  # PAPER SYMBOL, PARTIALLY-RECYCLED
    "\d267C",  # PAPER SYMBOL, RECYCLED
    "\d035C",  # papyrological hyphen
    "\d2029",  # PARAGRAPH SEPARATOR
    "\d1368",  # PARAGRAPH SEPARATOR, ETHIOPIC
    "\d10FB",  # PARAGRAPH SEPARATOR, GEORGIAN
    "\d203B",  # paragraph separator, urdu
    "\d00B6",  # paragraph sign
    "\d2761",  # PARAGRAPH SIGN ORNAMENT, CURVED STEM
    "\d00A7",  # paragraph sign, european
    "\d20B2",  # paraguayan currency
    "\d2225",  # PARALLEL TO
    "\d2226",  # PARALLEL TO, NOT
    "\d25B0",  # PARALLELOGRAM, BLACK
    "\d26BF",  # parental lock
    "\d0029",  # parenthesis, closing
    "\d0028",  # PARENTHESIS, LEFT
    "\d2985",  # PARENTHESIS, LEFT WHITE
    "\d0028",  # parenthesis, opening
    "\dFD3E",  # PARENTHESIS, ORNATE LEFT
    "\dFD3F",  # PARENTHESIS, ORNATE RIGHT
    "\d0029",  # PARENTHESIS, RIGHT
    "\d2986",  # PARENTHESIS, RIGHT WHITE
    "\d3220",  # Parenthesized CJK Ideographs
    "\d3200",  # Parenthesized Korean Hangul Letters
    "\d320E",  # Parenthesized Korean Hangul Syllables
    "\d1F110",  # Parenthesized Latin Capital Letters
    "\d1F110",  # Parenthesized Latin Letters
    "\d249C",  # Parenthesized Latin Letters
    "\d2474",  # Parenthesized Numbers
    "\d26F2",  # park
    "\d00A6",  # parted rule
    "\d10B40",  # Parthian, Inscriptional
    "\d2202",  # PARTIAL DIFFERENTIAL
    "\d21F8",  # partial function
    "\d2914",  # partial injection
    "\d008C",  # PARTIAL LINE BACKWARD
    "\d008B",  # PARTIAL LINE FORWARD
    "\d21F9",  # partial relation
    "\d2900",  # partial surjection
    "\d267D",  # PARTIALLY-RECYCLED PAPER SYMBOL
    "\d26C5",  # partly cloudy
    "\d26AF",  # PARTNERSHIP SYMBOL, UNMARRIED
    "\d055F",  # patiw, armenian
    "\d0BF6",  # patru, tamil
    "\d11AC0",  # Pau Cin Hau
    "\d2389",  # pause
    "\d23F8",  # pause play
    "\d1F43E",  # PAW PRINTS
    "\d202C",  # pdf
    "\d262E",  # PEACE SYMBOL
    "\d1F54A",  # PEACE, DOVE OF
    "\d270F",  # PENCIL
    "\d270E",  # Pencil Dingbats
    "\d270E",  # PENCIL, LOWER RIGHT
    "\d2710",  # PENCIL, UPPER RIGHT
    "\d1F427",  # PENGUIN
    "\d1F3F2",  # PENNANT, BLACK
    "\d1F3F1",  # PENNANT, WHITE
    "\d20B0",  # PENNY SIGN, GERMAN
    "\d26E4",  # PENTAGRAM
    "\d26E4",  # pentalpha, pentangle
    "\d2059",  # pentonkion, greek
    "\d1F336",  # PEPPER, HOT
    "\d2030",  # PER MILLE SIGN
    "\d214C",  # PER SIGN
    "\d2031",  # PER TEN THOUSAND SIGN
    "\d2030",  # per thousand
    "\d0025",  # PERCENT SIGN
    "\d02AD",  # PERCUSSIVE, LATIN LETTER BIDENTAL
    "\d02AC",  # PERCUSSIVE, LATIN LETTER BILABIAL
    "\d002E",  # period
    "\d2488",  # Period, Numbers Followed by
    "\d0342",  # PERISPOMENI, COMBINING GREEK
    "\d267E",  # PERMANENT PAPER SIGN
    "\d1F6AC",  # Permission and Prohibition Signs
    "\d22A5",  # perpendicular
    "\d103A0",  # Persian, Old
    "\d1F484",  # Personal Care Symbols
    "\d2306",  # PERSPECTIVE
    "\d20A7",  # PESETA SIGN
    "\d20B1",  # PESO SIGN
    "\d26FD",  # petrol station
    "\dA840",  # Phags-pa
    "\d101D0",  # Phaistos Disc
    "\d0295",  # PHARYNGEAL VOICED FRICATIVE, LATIN LETTER
    "\d03D5",  # PHI SYMBOL, GREEK
    "\d0278",  # PHI, LATIN SMALL LETTER
    "\d1736",  # PHILIPPINE DOUBLE PUNCTUATION
    "\d1735",  # PHILIPPINE SINGLE PUNCTUATION
    "\d20B1",  # phillipine currency
    "\d10900",  # Phoenician
    "\d02A3",  # Phonetic Digraphs
    "\d1D00",  # Phonetic Extensions
    "\d31F0",  # Phonetic Extensions, Katakana
    "\d02B9",  # Phonetic Modifiers
    "\d02B0",  # Phonetic Modifiers Derived from Latin Letters
    "\d2E80",  # Phonetics and Symbols Area, CJK
    "\d2117",  # phonorecord sign
    "\d2055",  # phul
    "\d03D6",  # PI SYMBOL, GREEK
    "\d213F",  # PI, DOUBLE-STRUCK CAPITAL
    "\d213C",  # PI, DOUBLE-STRUCK SMALL
    "\d03C0",  # PI, GREEK SMALL LETTER
    "\d03C0",  # pi, mathematical constant 3.141592...
    "\d26CF",  # PICK
    "\d1F300",  # Pictographs, Miscellaneous Symbols and
    "\d1F900",  # Pictographs, Supplemental Symbols and
    "\d2400",  # Pictures for Control Codes, Graphic
    "\d1F416",  # PIG
    "\d1F437",  # PIG FACE
    "\d1F43D",  # PIG NOSE
    "\d00B6",  # PILCROW SIGN
    "\d204B",  # PILCROW SIGN, REVERSED
    "\d2311",  # pillow
    "\d01C0",  # pipe
    "\d01C1",  # pipe, double
    "\d01C2",  # pipe, double-barred
    "\d2653",  # PISCES
    "\d2052",  # piska
    "\d22D4",  # PITCHFORK
    "\d2318",  # PLACE OF INTEREST SIGN
    "\d226C",  # plaintiff
    "\d210E",  # PLANCK CONSTANT
    "\d210F",  # PLANCK CONSTANT OVER TWO PI
    "\d263F",  # Planet Symbols
    "\d1F330",  # Plant Symbols
    "\d2673",  # Plastics Recycling Symbols
    "\d2660",  # Playing Card Suits
    "\d2660",  # Playing Card Symbols
    "\d1F0A0",  # Playing Cards
    "\d1F4A6",  # plewds
    "\d2A22",  # Plus and Minus Sign Operators
    "\d002B",  # PLUS SIGN
    "\d031F",  # PLUS SIGN BELOW, COMBINING
    "\d29FA",  # Plus Sign Operators, Specialized
    "\d02D6",  # PLUS SIGN, MODIFIER LETTER
    "\d2295",  # PLUS, CIRCLED
    "\d2214",  # PLUS, DOT
    "\d29FA",  # PLUS, DOUBLE
    "\d2064",  # PLUS, INVISIBLE
    "\d229E",  # PLUS, SQUARED
    "\d29FB",  # PLUS, TRIPLE
    "\d00B1",  # PLUS-MINUS SIGN
    "\d2647",  # PLUTO
    "\d002E",  # point, decimal
    "\d2027",  # POINT, HYPHENATION
    "\d25BA",  # Pointers
    "\d1F597",  # Pointing Hand Indexes
    "\d261A",  # Pointing Hand Symbols
    "\d261A",  # Pointing Index Finger Dingbats
    "\d261A",  # POINTING INDEX, BLACK LEFT
    "\d261B",  # POINTING INDEX, BLACK RIGHT
    "\d261F",  # POINTING INDEX, WHITE DOWN
    "\d261C",  # POINTING INDEX, WHITE LEFT
    "\d261E",  # POINTING INDEX, WHITE RIGHT
    "\d261D",  # POINTING INDEX, WHITE UP
    "\d05B0",  # Points and Punctuation, Hebrew
    "\d05B0",  # Points, Hebrew
    "\d0730",  # Points, Syriac
    "\d2620",  # poison
    "\d1F46E",  # POLICE OFFICER
    "\d2626",  # Political Symbols, Religious and
    "\d2B12",  # Polygonal Symbols
    "\d1F00",  # Polytonic Greek, Precomposed
    "\d1F4A9",  # POO, PILE OF
    "\d1F429",  # POODLE
    "\d202C",  # POP DIRECTIONAL FORMATTING
    "\d2069",  # POP DIRECTIONAL ISOLATE
    "\d1F416",  # pork (on menus)
    "\d1F464",  # Portrait and Role Symbols
    "\d1F930",  # Portrait and Role Symbols
    "\d1F9D0",  # Portrait and Role Symbols
    "\d2316",  # POSITION INDICATOR
    "\d2BD0",  # POSITION INDICATOR, SQUARE
    "\d2A24",  # positive difference or sum
    "\d2A26",  # positive difference, sum or
    "\d223E",  # positive, most
    "\d1F4EF",  # POSTAL HORN
    "\d3012",  # POSTAL MARK
    "\d3020",  # POSTAL MARK FACE
    "\d3036",  # POSTAL MARK, CIRCLED
    "\d1F414",  # poultry (on menus)
    "\d0023",  # pound sign
    "\d00A3",  # POUND SIGN
    "\d00A3",  # pound sterling
    "\d2114",  # pounds
    "\d23FB",  # Power On/Off Symbols
    "\d26EE",  # power plant
    "\d1D4AB",  # power set
    "\d227A",  # Precedence Signs, Order Relation
    "\d22DE",  # Precedence Signs, Order Relation
    "\d227A",  # PRECEDES
    "\d22B0",  # PRECEDES UNDER RELATION
    "\d2ABB",  # PRECEDES, DOUBLE
    "\d1F00",  # Precomposed Polytonic Greek
    "\d211E",  # PRESCRIPTION TAKE
    "\dFB00",  # Presentation Forms, Alphabetic
    "\dFB1D",  # Presentation Forms, Hebrew
    "\dFB50",  # Presentation Forms-A, Arabic
    "\dFE70",  # Presentation Forms-B, Arabic
    "\d2397",  # PREVIOUS PAGE
    "\d2032",  # PRIME
    "\d301E",  # PRIME QUOTATION MARK, DOUBLE
    "\d301F",  # PRIME QUOTATION MARK, LOW DOUBLE
    "\d301D",  # PRIME QUOTATION MARK, REVERSED DOUBLE
    "\d2033",  # PRIME, DOUBLE
    "\d02B9",  # PRIME, MODIFIER LETTER
    "\d02BA",  # PRIME, MODIFIER LETTER DOUBLE
    "\d2057",  # PRIME, QUADRUPLE
    "\d2035",  # PRIME, REVERSED
    "\d2036",  # PRIME, REVERSED DOUBLE
    "\d2037",  # PRIME, REVERSED TRIPLE
    "\d2034",  # PRIME, TRIPLE
    "\d1F478",  # PRINCESS
    "\d2399",  # PRINT SCREEN SYMBOL
    "\d009E",  # PRIVACY MESSAGE
    "\dE000",  # Private Use Area
    "\dF0000",  # Private Use Area-A, Supplementary
    "\d100000",  # Private Use Area-B, Supplementary
    "\d0091",  # PRIVATE USE ONE
    "\d0092",  # PRIVATE USE TWO
    "\d220F",  # product sign
    "\d00D7",  # product, cartesian
    "\d2299",  # product, direct
    "\d2A3C",  # PRODUCT, INTERIOR
    "\d22C9",  # PRODUCT, LEFT NORMAL FACTOR SEMIDIRECT
    "\d22CB",  # PRODUCT, LEFT SEMIDIRECT
    "\d220F",  # PRODUCT, N-ARY
    "\d22CA",  # PRODUCT, RIGHT NORMAL FACTOR SEMIDIRECT
    "\d22CC",  # PRODUCT, RIGHT SEMIDIRECT
    "\d2A3D",  # PRODUCT, RIGHTHAND INTERIOR
    "\d29E2",  # PRODUCT, SHUFFLE
    "\d2A33",  # PRODUCT, SMASH
    "\d2297",  # product, tensor
    "\d2A2F",  # PRODUCT, VECTOR OR CROSS
    "\d2240",  # PRODUCT, WREATH
    "\d009F",  # PROGRAM COMMAND, APPLICATION
    "\d1F6C7",  # PROHIBITED SIGN
    "\d20E0",  # prohibition
    "\d1F6AC",  # Prohibition Signs, Permission and
    "\d2305",  # PROJECTIVE
    "\d220E",  # PROOF, END OF
    "\d22D4",  # proper intersection
    "\d214A",  # PROPERTY LINE
    "\d2237",  # PROPORTION
    "\d223A",  # PROPORTION, GEOMETRIC
    "\d221D",  # PROPORTIONAL TO
    "\d223C",  # proportional to
    "\d22A2",  # proves
    "\d0313",  # psili, greek
    "\d2117",  # published
    "\d27D3",  # pullback
    "\d1F44A",  # punch
    "\d0374",  # Punctuation and Signs, Greek
    "\d104A",  # Punctuation and Signs, Myanmar
    "\d0700",  # Punctuation and Signs, Syriac
    "\d0020",  # Punctuation and Symbols, ASCII
    "\d00A0",  # Punctuation and Symbols, Latin-1
    "\d2047",  # Punctuation for Vertical Text, Double
    "\d275B",  # Punctuation Mark Ornaments
    "\d1F676",  # Punctuation Mark Ornaments
    "\d2008",  # PUNCTUATION SPACE
    "\d060C",  # Punctuation, Arabic
    "\d166D",  # Punctuation, Canadian Syllabics
    "\d3000",  # Punctuation, CJK Symbols and
    "\d12400",  # Punctuation, Cuneiform Numbers and
    "\d1361",  # Punctuation, Ethiopic
    "\d2000",  # Punctuation, General
    "\dFF61",  # Punctuation, Halfwidth CJK
    "\d05B0",  # Punctuation, Hebrew Points and
    "\d1800",  # Punctuation, Mongolian
    "\d169B",  # Punctuation, Ogham
    "\d1736",  # PUNCTUATION, PHILIPPINE DOUBLE
    "\d1735",  # PUNCTUATION, PHILIPPINE SINGLE
    "\d16EB",  # Punctuation, Runic
    "\d2E00",  # Punctuation, Supplemental
    "\d00A3",  # punt, irish
    "\d0964",  # purna viram, devanagari
    "\d27D4",  # pushout
    "\d2055",  # puspika
    "\d024A",  # Q WITH HOOK TAIL, LATIN CAPITAL LETTER SMALL
    "\d024B",  # Q WITH HOOK TAIL, LATIN SMALL LETTER
    "\d02A0",  # Q WITH HOOK, LATIN SMALL LETTER
    "\d211A",  # Q, DOUBLE-STRUCK CAPITAL
    "\d213A",  # Q, ROTATED CAPITAL
    "\d220E",  # q.e.d.
    "\d0239",  # QP DIGRAPH, LATIN SMALL LETTER
    "\d2001",  # QUAD, EM
    "\d2000",  # QUAD, EN
    "\d2001",  # quad, mutton
    "\d25F0",  # Quadrant Control Code Graphics
    "\d25A1",  # quadrature
    "\d2057",  # QUADRUPLE PRIME
    "\d226C",  # quantic
    "\d2203",  # quantifier, existential
    "\d2200",  # quantifier, universal
    "\d263D",  # QUARTER MOON, FIRST
    "\d263E",  # QUARTER MOON, LAST
    "\d2669",  # QUARTER NOTE
    "\d00BC",  # QUARTER, VULGAR FRACTION ONE
    "\d00BC",  # Quarters, Fractions
    "\d00BE",  # QUARTERS, VULGAR FRACTION THREE
    "\d2A16",  # QUATERNION INTEGRAL OPERATOR
    "\d1D160",  # quaver
    "\d266A",  # quaver
    "\d266B",  # quavers, beamed
    "\d2048",  # QUESTION EXCLAMATION MARK
    "\d003F",  # QUESTION MARK
    "\d2753",  # QUESTION MARK ORNAMENT, BLACK
    "\d2754",  # QUESTION MARK ORNAMENT, WHITE
    "\d061F",  # QUESTION MARK, ARABIC
    "\d055E",  # QUESTION MARK, ARMENIAN
    "\d2047",  # QUESTION MARK, DOUBLE
    "\d1367",  # QUESTION MARK, ETHIOPIC
    "\d2049",  # QUESTION MARK, EXCLAMATION
    "\d003B",  # question mark, greek
    "\d037E",  # QUESTION MARK, GREEK
    "\d00BF",  # QUESTION MARK, INVERTED
    "\d1945",  # QUESTION MARK, LIMBU
    "\d00BF",  # question mark, turned
    "\d225F",  # QUESTIONED EQUAL TO
    "\d2045",  # QUILL, LEFT SQUARE BRACKET WITH
    "\d2046",  # QUILL, RIGHT SQUARE BRACKET WITH
    "\d1F668",  # Quilt Square Ornaments
    "\d231C",  # Quine Corners
    "\d2015",  # quotation dash
    "\d0022",  # QUOTATION MARK
    "\d275B",  # Quotation Mark Dingbats
    "\d275B",  # Quotation Mark Ornaments
    "\d201D",  # quotation mark, double comma
    "\d201F",  # QUOTATION MARK, DOUBLE HIGH-REVERSED-9
    "\d201E",  # QUOTATION MARK, DOUBLE LOW-9
    "\d2E42",  # QUOTATION MARK, DOUBLE LOW-REVERSED-9
    "\d301E",  # QUOTATION MARK, DOUBLE PRIME
    "\d201F",  # quotation mark, double reversed comma
    "\d201C",  # quotation mark, double turned comma
    "\d201C",  # QUOTATION MARK, LEFT DOUBLE
    "\d2018",  # QUOTATION MARK, LEFT SINGLE
    "\d00AB",  # QUOTATION MARK, LEFT-POINTING DOUBLE ANGLE
    "\d201E",  # quotation mark, low double comma
    "\d301F",  # QUOTATION MARK, LOW DOUBLE PRIME
    "\d201A",  # quotation mark, low single comma
    "\d0022",  # quotation mark, neutral
    "\d0027",  # quotation mark, neutral single
    "\d301D",  # QUOTATION MARK, REVERSED DOUBLE PRIME
    "\d201D",  # QUOTATION MARK, RIGHT DOUBLE
    "\d2019",  # QUOTATION MARK, RIGHT SINGLE
    "\d00BB",  # QUOTATION MARK, RIGHT-POINTING DOUBLE ANGLE
    "\d2019",  # quotation mark, single comma
    "\d201B",  # QUOTATION MARK, SINGLE HIGH-REVERSED-9
    "\d2039",  # QUOTATION MARK, SINGLE LEFT-POINTING ANGLE
    "\d201A",  # QUOTATION MARK, SINGLE LOW-9
    "\d201B",  # quotation mark, single reversed comma
    "\d203A",  # QUOTATION MARK, SINGLE RIGHT-POINTING ANGLE
    "\d2018",  # quotation mark, single turned comma
    "\d2018",  # Quotation Marks
    "\d300C",  # Quotation Marks, CJK
    "\d276E",  # Quotation Marks, Ornamental Angle
    "\d0027",  # quote, apl
    "\d06D6",  # Qur'anic Annotation Signs, Arabic
    "\d0155",  # R WITH ACUTE, LATIN SMALL LETTER
    "\d0159",  # R WITH CARON, LATIN SMALL LETTER
    "\d0157",  # R WITH CEDILLA, LATIN SMALL LETTER
    "\d1E59",  # R WITH DOT ABOVE, LATIN SMALL LETTER
    "\d1E5B",  # R WITH DOT BELOW, LATIN SMALL LETTER
    "\d0211",  # R WITH DOUBLE GRAVE, LATIN SMALL LETTER
    "\d027E",  # R WITH FISHHOOK, LATIN SMALL LETTER
    "\d027F",  # R WITH FISHHOOK, LATIN SMALL LETTER REVERSED
    "\d027B",  # R WITH HOOK, LATIN SMALL LETTER TURNED
    "\d0213",  # R WITH INVERTED BREVE, LATIN SMALL LETTER
    "\d1E5F",  # R WITH LINE BELOW, LATIN SMALL LETTER
    "\d027C",  # R WITH LONG LEG, LATIN SMALL LETTER
    "\d027A",  # R WITH LONG LEG, LATIN SMALL LETTER TURNED
    "\d024C",  # R WITH STROKE, LATIN CAPITAL LETTER
    "\d024D",  # R WITH STROKE, LATIN SMALL LETTER
    "\d027D",  # R WITH TAIL, LATIN SMALL LETTER
    "\d211C",  # R, BLACK-LETTER CAPITAL
    "\d036C",  # R, COMBINING LATIN SMALL LETTER
    "\d211D",  # R, DOUBLE-STRUCK CAPITAL
    "\d0280",  # R, LATIN LETTER SMALL CAPITAL
    "\d0281",  # R, LATIN LETTER SMALL CAPITAL INVERTED
    "\d1D19",  # R, LATIN LETTER SMALL CAPITAL REVERSED
    "\d1D1A",  # R, LATIN LETTER SMALL CAPITAL TURNED
    "\d0279",  # R, LATIN SMALL LETTER TURNED
    "\d1D63",  # R, LATIN SUBSCRIPT SMALL LETTER
    "\d02B3",  # R, MODIFIER LETTER SMALL
    "\d02B6",  # R, MODIFIER LETTER SMALL CAPITAL INVERTED
    "\d02B4",  # R, MODIFIER LETTER SMALL TURNED
    "\d211B",  # R, SCRIPT CAPITAL
    "\d1F407",  # RABBIT
    "\d1F430",  # RABBIT FACE
    "\d27DF",  # radial component
    "\d221A",  # radical sign
    "\d2E80",  # Radicals Supplement, CJK
    "\d2F00",  # Radicals, CJK Kangxi
    "\dA490",  # Radicals, Yi
    "\d2622",  # RADIOACTIVE SIGN
    "\d1F6E4",  # RAILWAY TRACK
    "\d26C6",  # RAIN
    "\d2614",  # RAIN DROPS, UMBRELLA WITH
    "\d1F308",  # RAINBOW
    "\d2602",  # rainy weather
    "\d1F40F",  # RAM
    "\d0264",  # RAMS HORN, LATIN SMALL LETTER
    "\d25B7",  # range restriction
    "\d1F400",  # RAT
    "\d2236",  # RATIO
    "\d211E",  # ratio, cross
    "\d211A",  # rational numbers
    "\d17C7",  # REAHMUK, KHMER SIGN
    "\d210A",  # real number symbol
    "\d211D",  # real numbers
    "\d211C",  # real part
    "\d211E",  # recipe
    "\d23FA",  # record
    "\d001E",  # record separator
    "\d241E",  # RECORD SEPARATOR, SYMBOL FOR
    "\d2315",  # RECORDER, TELEPHONE
    "\d2117",  # RECORDING COPYRIGHT, SOUND
    "\d2327",  # RECTANGLE BOX, X IN A
    "\d25AC",  # Rectangles
    "\d267C",  # RECYCLED PAPER SYMBOL
    "\d267D",  # RECYCLED PAPER SYMBOL, PARTIALLY-
    "\d2672",  # RECYCLING SYMBOL, UNIVERSAL
    "\d2672",  # Recycling Symbols
    "\d2673",  # Recycling Symbols, Plastics
    "\d22A6",  # reduces to
    "\d22A2",  # reducible
    "\d203B",  # REFERENCE MARK
    "\d00AE",  # REGISTERED SIGN
    "\d00AE",  # registered trade mark sign
    "\dA930",  # Rejang
    "\d2194",  # relation
    "\d21FC",  # relation, finite
    "\d21F9",  # relation, partial
    "\d29E3",  # Relational Operators
    "\d2ABD",  # Relations, Subset and Superset
    "\d2626",  # Religious and Political Symbols
    "\d3031",  # Repeat Marks, Kana
    "\dFFFD",  # REPLACEMENT CHARACTER
    "\dFFFC",  # REPLACEMENT CHARACTER, OBJECT
    "\d211F",  # RESPONSE
    "\d1F374",  # restaurant, meal (glyph may vary)
    "\d25C1",  # restriction, domain
    "\d25B7",  # restriction, range
    "\d1F6B9",  # Restroom Symbols
    "\d22A8",  # results in
    "\d01C3",  # RETROFLEX CLICK, LATIN LETTER
    "\d0322",  # RETROFLEX HOOK BELOW, COMBINING
    "\d01AE",  # RETROFLEX HOOK, LATIN CAPITAL LETTER T WITH
    "\d0256",  # retroflex hook, latin small letter d
    "\d026D",  # RETROFLEX HOOK, LATIN SMALL LETTER L WITH
    "\d0273",  # RETROFLEX HOOK, LATIN SMALL LETTER N WITH
    "\d0288",  # RETROFLEX HOOK, LATIN SMALL LETTER T WITH
    "\d0290",  # RETROFLEX HOOK, LATIN SMALL LETTER Z WITH
    "\d23CE",  # RETURN SYMBOL
    "\d000D",  # RETURN, CARRIAGE
    "\d240D",  # RETURN, SYMBOL FOR CARRIAGE
    "\d008D",  # REVERSE LINE FEED
    "\d23F4",  # reverse play
    "\d005C",  # REVERSE SOLIDUS
    "\d29F5",  # REVERSE SOLIDUS OPERATOR
    "\d20E5",  # REVERSE SOLIDUS OVERLAY, COMBINING
    "\d29F9",  # REVERSE SOLIDUS, BIG
    "\d22A3",  # reverse turnstile
    "\d2184",  # REVERSED C, LATIN SMALL LETTER
    "\d0314",  # REVERSED COMMA ABOVE, COMBINING
    "\d201F",  # reversed comma quotation mark, double
    "\d201B",  # reversed comma quotation mark, single
    "\d02BD",  # REVERSED COMMA, MODIFIER LETTER
    "\d2036",  # REVERSED DOUBLE PRIME
    "\d301D",  # REVERSED DOUBLE PRIME QUOTATION MARK
    "\d018E",  # REVERSED E, LATIN CAPITAL LETTER
    "\d0258",  # REVERSED E, LATIN SMALL LETTER
    "\d025E",  # reversed epsilon, latin small letter closed
    "\d01AA",  # REVERSED ESH LOOP, LATIN LETTER
    "\d0285",  # REVERSED ESH, LATIN SMALL LETTER SQUAT
    "\d0295",  # reversed glottal stop, latin letter
    "\d02C1",  # REVERSED GLOTTAL STOP, MODIFIER LETTER
    "\d02E4",  # REVERSED GLOTTAL STOP, MODIFIER LETTER SMALL
    "\d03F6",  # REVERSED LUNATE EPSILON SYMBOL, GREEK
    "\d1D0E",  # REVERSED N, LATIN LETTER SMALL CAPITAL
    "\d2310",  # REVERSED NOT SIGN
    "\d025D",  # REVERSED OPEN E WITH HOOK, LATIN SMALL LETTER
    "\d025C",  # REVERSED OPEN E, LATIN SMALL LETTER
    "\d025E",  # REVERSED OPEN E, LATIN SMALL LETTER CLOSED
    "\d204B",  # REVERSED PILCROW SIGN
    "\d2035",  # REVERSED PRIME
    "\d027F",  # REVERSED R WITH FISHHOOK, LATIN SMALL LETTER
    "\d1D19",  # REVERSED R, LATIN LETTER SMALL CAPITAL
    "\d2619",  # REVERSED ROTATED FLORAL HEART BULLET
    "\d2143",  # REVERSED SANS-SERIF CAPITAL L
    "\d204F",  # REVERSED SEMICOLON
    "\d03F6",  # reversed straight epsilon
    "\d223D",  # REVERSED TILDE
    "\d22CD",  # REVERSED TILDE EQUALS
    "\d2037",  # REVERSED TRIPLE PRIME
    "\d01B9",  # REVERSED, LATIN SMALL LETTER EZH
    "\d23EA",  # rewind, fast
    "\d27EF",  # rgroup
    "\d02DE",  # RHOTIC HOOK, MODIFIER LETTER
    "\dFDFC",  # RIAL SIGN
    "\d1F397",  # RIBBON, REMINDER
    "\d17DB",  # RIEL, KHMER CURRENCY SYMBOL
    "\d211B",  # riemann integral
    "\d301B",  # right abstract syntax bracket
    "\d221F",  # RIGHT ANGLE
    "\d3009",  # RIGHT ANGLE BRACKET
    "\d27E9",  # RIGHT ANGLE BRACKET, MATHEMATICAL
    "\d22BE",  # RIGHT ANGLE WITH ARC
    "\d20D7",  # RIGHT ARROW ABOVE, COMBINING
    "\d20E1",  # RIGHT ARROW ABOVE, COMBINING LEFT
    "\d20EF",  # RIGHT ARROW BELOW, COMBINING
    "\d034D",  # RIGHT ARROW BELOW, COMBINING LEFT
    "\d29F4",  # right arrow, colon
    "\d0350",  # RIGHT ARROWHEAD ABOVE, COMBINING
    "\d0355",  # RIGHT ARROWHEAD BELOW, COMBINING
    "\d27E7",  # right bag bracket
    "\d3011",  # RIGHT BLACK LENTICULAR BRACKET
    "\d2309",  # RIGHT CEILING
    "\d27EB",  # right chevron bracket
    "\d300D",  # RIGHT CORNER BRACKET
    "\d007D",  # RIGHT CURLY BRACKET
    "\d22F1",  # RIGHT DIAGONAL ELLIPSIS, DOWN
    "\d22F0",  # RIGHT DIAGONAL ELLIPSIS, UP
    "\d300B",  # RIGHT DOUBLE ANGLE BRACKET
    "\d27EB",  # RIGHT DOUBLE ANGLE BRACKET, MATHEMATICAL
    "\d201D",  # RIGHT DOUBLE QUOTATION MARK
    "\d230B",  # RIGHT FLOOR
    "\d0357",  # RIGHT HALF RING ABOVE, COMBINING
    "\d0339",  # RIGHT HALF RING BELOW, COMBINING
    "\d055A",  # right half ring, armenian modifier letter
    "\d20D1",  # RIGHT HARPOON ABOVE, COMBINING
    "\d2326",  # right key, delete to the
    "\d23B1",  # right moustache
    "\d22CA",  # RIGHT NORMAL FACTOR SEMIDIRECT PRODUCT
    "\d0029",  # RIGHT PARENTHESIS
    "\dFD3F",  # RIGHT PARENTHESIS, ORNATE
    "\d270E",  # RIGHT PENCIL, LOWER
    "\d2710",  # RIGHT PENCIL, UPPER
    "\d00BB",  # right pointing guillemet
    "\d261B",  # RIGHT POINTING INDEX, BLACK
    "\d261E",  # RIGHT POINTING INDEX, WHITE
    "\d203A",  # right pointing single guillemet
    "\d22CC",  # RIGHT SEMIDIRECT PRODUCT
    "\d27E9",  # right sequence bracket
    "\d2019",  # RIGHT SINGLE QUOTATION MARK
    "\d005D",  # RIGHT SQUARE BRACKET
    "\d2046",  # RIGHT SQUARE BRACKET WITH QUILL
    "\d22A2",  # RIGHT TACK
    "\d0319",  # RIGHT TACK BELOW, COMBINING
    "\d3015",  # RIGHT TORTOISE SHELL BRACKET
    "\d22BF",  # RIGHT TRIANGLE
    "\d300F",  # RIGHT WHITE CORNER BRACKET
    "\d2984",  # RIGHT WHITE CURLY BRACKET
    "\d3017",  # RIGHT WHITE LENTICULAR BRACKET
    "\d2986",  # RIGHT WHITE PARENTHESIS
    "\d301B",  # RIGHT WHITE SQUARE BRACKET
    "\d3019",  # RIGHT WHITE TORTOISE SHELL BRACKET
    "\d0315",  # RIGHT, COMBINING COMMA ABOVE
    "\d0358",  # RIGHT, COMBINING DOT ABOVE
    "\d2326",  # RIGHT, ERASE TO THE
    "\d21A0",  # right, fast cursor
    "\d232A",  # RIGHT-POINTING ANGLE BRACKET
    "\d203A",  # RIGHT-POINTING ANGLE QUOTATION MARK, SINGLE
    "\d00BB",  # RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK
    "\d202B",  # RIGHT-TO-LEFT EMBEDDING
    "\d2067",  # RIGHT-TO-LEFT ISOLATE
    "\d200F",  # RIGHT-TO-LEFT MARK
    "\d202E",  # RIGHT-TO-LEFT OVERRIDE
    "\d2A3D",  # RIGHTHAND INTERIOR PRODUCT
    "\d21E5",  # rightward tab
    "\d2192",  # RIGHTWARDS ARROW
    "\d0362",  # RIGHTWARDS ARROW BELOW, COMBINING DOUBLE
    "\d204D",  # RIGHTWARDS BULLET, BLACK
    "\d20EC",  # RIGHTWARDS HARPOON WITH BARB DOWNWARDS, COMBINING
    "\d02DA",  # RING ABOVE
    "\d030A",  # RING ABOVE, COMBINING
    "\d0351",  # RING ABOVE, COMBINING LEFT HALF
    "\d0357",  # RING ABOVE, COMBINING RIGHT HALF
    "\d00C5",  # RING ABOVE, LATIN CAPITAL LETTER A WITH
    "\d00E5",  # RING ABOVE, LATIN SMALL LETTER A WITH
    "\d0325",  # RING BELOW, COMBINING
    "\d035A",  # RING BELOW, COMBINING DOUBLE
    "\d031C",  # RING BELOW, COMBINING LEFT HALF
    "\d0339",  # RING BELOW, COMBINING RIGHT HALF
    "\d1E01",  # RING BELOW, LATIN SMALL LETTER A WITH
    "\d2257",  # RING EQUAL TO
    "\d2256",  # RING IN EQUAL TO
    "\d2218",  # RING OPERATOR
    "\d229A",  # RING OPERATOR, CIRCLED
    "\d20D8",  # RING OVERLAY, COMBINING
    "\d20DA",  # RING OVERLAY, COMBINING ANTICLOCKWISE
    "\d20D9",  # RING OVERLAY, COMBINING CLOCKWISE
    "\d20DA",  # ring overlay, combining counterclockwise
    "\d0559",  # RING, ARMENIAN MODIFIER LETTER LEFT HALF
    "\d055A",  # ring, armenian modifier letter right half
    "\d232C",  # RING, BENZENE
    "\d02D3",  # RING, MODIFIER LETTER CENTRED LEFT HALF
    "\d02BF",  # RING, MODIFIER LETTER LEFT HALF
    "\d0F7E",  # RJES SU NGA RO, TIBETAN SIGN
    "\d202B",  # rle
    "\d200F",  # rlm
    "\d202E",  # rlo
    "\d0F7F",  # RNAM BCAD, TIBETAN SIGN
    "\d26D2",  # road closed
    "\d270A",  # rock in rock, paper, scissors game
    "\d1F923",  # rofl
    "\d1F481",  # Role Symbols
    "\d1F464",  # Role Symbols, Portrait and
    "\d1F930",  # Role Symbols, Portrait and
    "\d1F9D0",  # Role Symbols, Portrait and
    "\d1F923",  # ROLLING ON THE FLOOR LAUGHING
    "\d2160",  # Roman Numerals
    "\d2185",  # Roman Numerals, Archaic
    "\d10190",  # Roman Symbols
    "\d1F48B",  # Romance Symbols
    "\d1F413",  # ROOSTER
    "\d221B",  # ROOT, CUBE
    "\d221C",  # ROOT, FOURTH
    "\d221A",  # ROOT, SQUARE
    "\d213A",  # ROTATED CAPITAL Q
    "\d0314",  # rough breathing mark, greek
    "\d20BD",  # RUBLE SIGN
    "\d00A6",  # rule, parted
    "\d29F4",  # RULE-DELAYED
    "\d10E60",  # Rumi Numeral Symbols
    "\d16A0",  # Runic
    "\d16EE",  # Runic Golden Numbers
    "\d16EB",  # Runic Punctuation
    "\d2330",  # RUNOUT, TOTAL
    "\d0BF9",  # rupai, tamil
    "\d09F2",  # RUPEE MARK, BENGALI
    "\d20A8",  # RUPEE SIGN
    "\d09F3",  # RUPEE SIGN, BENGALI
    "\d0AF1",  # RUPEE SIGN, GUJARATI
    "\d20B9",  # RUPEE SIGN, INDIAN
    "\d0BF9",  # RUPEE SIGN, TAMIL
    "\d0410",  # Russian Alphabet
    "\d015B",  # S WITH ACUTE, LATIN SMALL LETTER
    "\d0161",  # S WITH CARON, LATIN SMALL LETTER
    "\d015F",  # S WITH CEDILLA, LATIN SMALL LETTER
    "\d015D",  # S WITH CIRCUMFLEX, LATIN SMALL LETTER
    "\d0219",  # S WITH COMMA BELOW, LATIN SMALL LETTER
    "\d1E61",  # S WITH DOT ABOVE, LATIN SMALL LETTER
    "\d1E9B",  # S WITH DOT ABOVE, LATIN SMALL LETTER LONG
    "\d1E63",  # S WITH DOT BELOW, LATIN SMALL LETTER
    "\d0282",  # S WITH HOOK, LATIN SMALL LETTER
    "\d023F",  # S WITH SWASH TAIL, LATIN SMALL LETTER
    "\d223E",  # S, INVERTED LAZY
    "\d017F",  # S, LATIN SMALL LETTER LONG
    "\d00DF",  # S, LATIN SMALL LETTER SHARP
    "\d209B",  # S, LATIN SUBSCRIPT SMALL LETTER
    "\d223D",  # s, lazy
    "\d02E2",  # S, MODIFIER LETTER SMALL
    "\d2650",  # SAGITTARIUS
    "\d26F4",  # SAILBOAT
    "\d2613",  # SALTIRE
    "\d1F7A8",  # Saltires
    "\d070F",  # sam, syriac
    "\d0800",  # Samaritan
    "\d214F",  # SAMARITAN SOURCE, SYMBOL FOR
    "\d1D7EC",  # Sans-serif Bold Digits
    "\d1D756",  # Sans-serif Bold Greek Mathematical Symbols
    "\d1D790",  # Sans-serif Bold Italic Greek Mathematical Symbols
    "\d1D63C",  # Sans-serif Bold Italic Mathematical Symbols
    "\d1D5D4",  # Sans-serif Bold Mathematical Symbols
    "\d2141",  # SANS-SERIF CAPITAL G, TURNED
    "\d2143",  # SANS-SERIF CAPITAL L, REVERSED
    "\d2142",  # SANS-SERIF CAPITAL L, TURNED
    "\d2144",  # SANS-SERIF CAPITAL Y, TURNED
    "\d1D7E2",  # Sans-serif Digits
    "\d1D608",  # Sans-serif Italic Mathematical Symbols
    "\d1D5A0",  # Sans-serif Mathematical Symbols
    "\d1F385",  # santa claus
    "\d22A8",  # satisfies
    "\d2AF1",  # satisfies, necessarily
    "\d2AE2",  # satisfies, ordinarily
    "\d2238",  # saturating subtraction
    "\d2644",  # SATURN
    "\dA880",  # Saurashtra
    "\d2696",  # SCALES
    "\d23BA",  # Scan Lines, Horizontal
    "\d29F9",  # schema hiding
    "\d1F4AE",  # School Grade Symbols, Japanese
    "\d018F",  # SCHWA, LATIN CAPITAL LETTER
    "\d0259",  # SCHWA, LATIN SMALL LETTER
    "\d270C",  # scissors in rock, paper, scissors game
    "\d2702",  # SCISSORS, BLACK
    "\d2701",  # SCISSORS, UPPER BLADE
    "\d2704",  # SCISSORS, WHITE
    "\d1F982",  # SCORPION
    "\d264F",  # SCORPIUS
    "\d239A",  # SCREEN SYMBOL, CLEAR
    "\d2399",  # SCREEN SYMBOL, PRINT
    "\d20E2",  # SCREEN, COMBINING ENCLOSING
    "\d0251",  # script a, latin small letter
    "\d212C",  # SCRIPT CAPITAL B
    "\d2130",  # SCRIPT CAPITAL E
    "\d2131",  # SCRIPT CAPITAL F
    "\d210B",  # SCRIPT CAPITAL H
    "\d2110",  # SCRIPT CAPITAL I
    "\d2112",  # SCRIPT CAPITAL L
    "\d2133",  # SCRIPT CAPITAL M
    "\d2118",  # SCRIPT CAPITAL P
    "\d211B",  # SCRIPT CAPITAL R
    "\d0192",  # script f, latin small letter
    "\d0261",  # SCRIPT G, LATIN SMALL LETTER
    "\d1D49C",  # Script Mathematical Symbols
    "\d1D4D0",  # Script Mathematical Symbols, Bold
    "\d212F",  # SCRIPT SMALL E
    "\d210A",  # SCRIPT SMALL G
    "\d2113",  # SCRIPT SMALL L
    "\d2134",  # SCRIPT SMALL O
    "\d03D1",  # script theta
    "\d01B2",  # script v, latin capital letter
    "\d028B",  # script v, latin small letter
    "\d21F3",  # scrolling
    "\d2108",  # SCRUPLE
    "\d033C",  # SEAGULL BELOW, COMBINING
    "\d1F41A",  # seashell
    "\d02CA",  # second tone, mandarin chinese
    "\d2033",  # seconds
    "\d00A7",  # SECTION SIGN
    "\d00B6",  # section sign, european
    "\d2314",  # SECTOR
    "\d2313",  # SEGMENT
    "\d0087",  # SELECTED AREA, END OF
    "\d0086",  # SELECTED AREA, START OF
    "\dE0100",  # Selectors Supplement, Variation
    "\dFE00",  # Selectors, Variation
    "\d1F933",  # SELFIE
    "\d1D15D",  # semibreve
    "\d003B",  # SEMICOLON
    "\d061B",  # SEMICOLON, ARABIC
    "\d1364",  # SEMICOLON, ETHIOPIC
    "\d204F",  # SEMICOLON, REVERSED
    "\d22CB",  # SEMIDIRECT PRODUCT, LEFT
    "\d22C9",  # SEMIDIRECT PRODUCT, LEFT NORMAL FACTOR
    "\d22CC",  # SEMIDIRECT PRODUCT, RIGHT
    "\d22CA",  # SEMIDIRECT PRODUCT, RIGHT NORMAL FACTOR
    "\d1D161",  # semiquaver
    "\d266C",  # semiquavers, beamed
    "\d10101",  # SEPARATOR DOT, AEGEAN WORD
    "\d2396",  # SEPARATOR KEY SYMBOL, DECIMAL
    "\d10100",  # SEPARATOR LINE, AEGEAN WORD
    "\d2E31",  # SEPARATOR MIDDLE DOT, WORD
    "\d060D",  # SEPARATOR, ARABIC DATE
    "\d066B",  # SEPARATOR, ARABIC DECIMAL
    "\d066C",  # separator, arabic phrase
    "\d066C",  # SEPARATOR, ARABIC THOUSANDS
    "\d002C",  # separator, decimal
    "\d0964",  # separator, devanagari phrase
    "\d1368",  # SEPARATOR, ETHIOPIC PARAGRAPH
    "\d001C",  # separator, file
    "\d10FB",  # SEPARATOR, GEORGIAN PARAGRAPH
    "\d001D",  # separator, group
    "\dFFFA",  # SEPARATOR, INTERLINEAR ANNOTATION
    "\d2063",  # SEPARATOR, INVISIBLE
    "\d2028",  # SEPARATOR, LINE
    "\d180E",  # SEPARATOR, MONGOLIAN VOWEL
    "\d2029",  # SEPARATOR, PARAGRAPH
    "\d001E",  # separator, record
    "\d001F",  # separator, unit
    "\d203B",  # separator, urdu paragraph
    "\d1D516",  # septuagint
    "\d27E8",  # sequence bracket, left
    "\d27E9",  # sequence bracket, right
    "\d2040",  # sequence concatenation
    "\d009B",  # SEQUENCE INTRODUCER, CONTROL
    "\d2120",  # SERVICE MARK
    "\dFE45",  # SESAME DOT
    "\dFE46",  # SESAME DOT, WHITE
    "\d2208",  # Set Membership Signs
    "\d2216",  # SET MINUS
    "\d2102",  # set of complex numbers, the
    "\d2124",  # set of integers, the
    "\d211A",  # set of rational numbers, the
    "\d211D",  # set of real numbers, the
    "\d0093",  # SET TRANSMIT STATE
    "\d2205",  # SET, EMPTY
    "\d2282",  # set, included in
    "\d2283",  # set, includes in
    "\d2205",  # set, null
    "\d1D4AB",  # set, power
    "\d29B0",  # Sets, Empty
    "\d2736",  # sextile
    "\d2591",  # Shade Characters
    "\d274D",  # SHADOWED WHITE CIRCLE
    "\d2618",  # SHAMROCK
    "\d2663",  # shamrock
    "\d25A0",  # Shapes, Geometric
    "\d11180",  # Sharada
    "\d00DF",  # SHARP S, LATIN SMALL LETTER
    "\d266F",  # SHARP SIGN, MUSIC
    "\d10450",  # Shavian
    "\d1F411",  # SHEEP
    "\d1F41A",  # SHELL, SPIRAL
    "\d20AA",  # SHEQEL SIGN, NEW
    "\d055B",  # shesht, armenian
    "\d26E8",  # SHIELD, BLACK CROSS ON
    "\d21E7",  # shift
    "\d000F",  # SHIFT IN
    "\d240F",  # SHIFT IN, SYMBOL FOR
    "\d000E",  # SHIFT OUT
    "\d240E",  # SHIFT OUT, SYMBOL FOR
    "\d26E9",  # SHINTO SHRINE
    "\d2617",  # SHOGI PIECE, BLACK
    "\d26CA",  # SHOGI PIECE, TURNED BLACK
    "\d26C9",  # SHOGI PIECE, TURNED WHITE
    "\d2616",  # SHOGI PIECE, WHITE
    "\d1F320",  # SHOOTING STAR
    "\d1F6D2",  # shopping cart
    "\d0306",  # short
    "\d0337",  # short slash overlay
    "\d0337",  # SHORT SOLIDUS OVERLAY, COMBINING
    "\d0335",  # SHORT STROKE OVERLAY, COMBINING
    "\d20D3",  # SHORT VERTICAL LINE OVERLAY, COMBINING
    "\d1BCA0",  # Shorthand Format Controls
    "\d237D",  # SHOULDERED OPEN BOX
    "\d2614",  # showery weather
    "\d29E2",  # SHUFFLE PRODUCT
    "\d00AD",  # shy
    "\d1807",  # SIBE SYLLABLE BOUNDARY MARKER, MONGOLIAN
    "\d11580",  # Siddham
    "\dFE45",  # Sidelining Emphasis Marks
    "\d1D1E",  # SIDEWAYS DIAERESIZED U, LATIN SMALL LETTER
    "\d1D13",  # SIDEWAYS O WITH STROKE, LATIN SMALL LETTER
    "\d1D11",  # SIDEWAYS O, LATIN SMALL LETTER
    "\d1D12",  # SIDEWAYS OPEN O, LATIN SMALL LETTER
    "\d1D1F",  # SIDEWAYS TURNED M, LATIN SMALL LETTER
    "\d1D1D",  # SIDEWAYS U, LATIN SMALL LETTER
    "\d03F2",  # SIGMA SYMBOL, GREEK LUNATE
    "\d03F2",  # sigma, greek small letter lunate
    "\d1F6A9",  # Signage and Other Symbols
    "\d2620",  # Signs, Warning
    "\d26A0",  # Signs, Warning
    "\d1D800",  # SignWriting, Sutton
    "\d1F948",  # silver medal
    "\d223C",  # similar to
    "\d223F",  # SINE WAVE
    "\d009A",  # SINGLE CHARACTER INTRODUCER
    "\d2019",  # single comma quotation mark
    "\d201A",  # single comma quotation mark, low
    "\d2039",  # single guillemet, left pointing
    "\d203A",  # single guillemet, right pointing
    "\d201B",  # SINGLE HIGH-REVERSED-9 QUOTATION MARK
    "\d2039",  # SINGLE LEFT-POINTING ANGLE QUOTATION MARK
    "\d201A",  # SINGLE LOW-9 QUOTATION MARK
    "\d1735",  # SINGLE PUNCTUATION, PHILIPPINE
    "\d2018",  # SINGLE QUOTATION MARK, LEFT
    "\d0027",  # single quotation mark, neutral
    "\d2019",  # SINGLE QUOTATION MARK, RIGHT
    "\d201B",  # single reversed comma quotation mark
    "\d203A",  # SINGLE RIGHT-POINTING ANGLE QUOTATION MARK
    "\d008F",  # SINGLE SHIFT THREE
    "\d008E",  # SINGLE SHIFT TWO
    "\d2018",  # single turned comma quotation mark
    "\d0D80",  # Sinhala
    "\d111E0",  # Sinhala Archaic Numbers
    "\d0D9A",  # Sinhala Consonants
    "\d0DCF",  # Sinhala Dependent Vowel Signs
    "\d0D85",  # Sinhala Independent Vowels
    "\d0DCA",  # SINHALA SIGN AL-LAKUNA
    "\d0DCA",  # sinhala virama
    "\dA78F",  # SINOLOGICAL DOT, LATIN LETTER
    "\d2E3D",  # SIX DOTS, VERTICAL
    "\d2006",  # SIX-PER-EM SPACE
    "\d266C",  # SIXTEENTH NOTES, BEAMED
    "\d2159",  # Sixths, Fractions
    "\d26F7",  # SKIER
    "\d1F480",  # SKULL
    "\d2620",  # SKULL AND CROSSBONES
    "\d1F571",  # SKULL AND CROSSBONES, BLACK
    "\d002F",  # slash
    "\d0338",  # slash overlay, long
    "\d20EB",  # slash overlay, long double
    "\d0337",  # slash overlay, short
    "\d2298",  # SLASH, CIRCLED DIVISION
    "\d2215",  # SLASH, DIVISION
    "\d2044",  # SLASH, FRACTION
    "\d00D8",  # slash, latin capital letter o
    "\d00F8",  # slash, latin small letter o
    "\d1F4A4",  # SLEEPING SYMBOL
    "\d2333",  # SLOPE
    "\d1D01",  # SMALL CAPITAL AE, LATIN LETTER
    "\d1D06",  # SMALL CAPITAL ETH, LATIN LETTER
    "\d1D23",  # SMALL CAPITAL EZH, LATIN LETTER
    "\d0276",  # SMALL CAPITAL OE, LATIN LETTER
    "\d1D15",  # SMALL CAPITAL OU, LATIN LETTER
    "\d2022",  # small circle, black
    "\d220D",  # SMALL CONTAINS AS MEMBER
    "\d220A",  # SMALL ELEMENT OF
    "\dFE50",  # Small Form Variants
    "\d213D",  # SMALL GAMMA, DOUBLE-STRUCK
    "\d02E0",  # SMALL GAMMA, MODIFIER LETTER
    "\d3095",  # SMALL KA, HIRAGANA LETTER
    "\d3096",  # SMALL KE, HIRAGANA LETTER
    "\d0561",  # Small Letters, Armenian
    "\d0363",  # Small Letters, Combining Latin
    "\d0430",  # Small Letters, Cyrillic
    "\d10D0",  # Small Letters, Georgian
    "\d03B1",  # Small Letters, Greek
    "\d0061",  # Small Letters, Latin
    "\d00E6",  # small ligature ae, latin
    "\d0133",  # SMALL LIGATURE IJ, LATIN
    "\d0153",  # SMALL LIGATURE OE, LATIN
    "\d213C",  # SMALL PI, DOUBLE-STRUCK
    "\d02E4",  # SMALL REVERSED GLOTTAL STOP, MODIFIER LETTER
    "\d25FE",  # SMALL SQUARE, BLACK MEDIUM
    "\d02DC",  # SMALL TILDE
    "\d26AC",  # SMALL WHITE CIRCLE, MEDIUM
    "\d2A33",  # SMASH PRODUCT
    "\d2323",  # SMILE
    "\d263B",  # SMILING FACE, BLACK
    "\d263A",  # SMILING FACE, WHITE
    "\d2368",  # smirk
    "\d0313",  # smooth breathing mark, greek
    "\d1F40C",  # SNAIL
    "\d1F40D",  # SNAKE
    "\d26C7",  # snow, heavy
    "\d26C4",  # snow, light
    "\d2744",  # Snowflake Dingbats
    "\d2721",  # Snowflakes
    "\d2603",  # SNOWMAN
    "\d26C4",  # SNOWMAN WITHOUT SNOW
    "\d26C7",  # SNOWMAN, BLACK
    "\d2603",  # snowy weather
    "\d26BD",  # SOCCER BALL
    "\d00AD",  # SOFT HYPHEN
    "\d1806",  # SOFT HYPHEN, MONGOLIAN TODO
    "\d2394",  # SOFTWARE-FUNCTION SYMBOL
    "\d2588",  # solid
    "\d002F",  # SOLIDUS
    "\d2044",  # solidus
    "\d2AFD",  # SOLIDUS OPERATOR, DOUBLE
    "\d29F5",  # SOLIDUS OPERATOR, REVERSE
    "\d0338",  # SOLIDUS OVERLAY, COMBINING LONG
    "\d20EB",  # SOLIDUS OVERLAY, COMBINING LONG DOUBLE
    "\d20E5",  # SOLIDUS OVERLAY, COMBINING REVERSE
    "\d0337",  # SOLIDUS OVERLAY, COMBINING SHORT
    "\d29F8",  # SOLIDUS, BIG
    "\d29F9",  # SOLIDUS, BIG REVERSE
    "\d005C",  # SOLIDUS, REVERSE
    "\d110D0",  # Sora Sompeng
    "\d1F50A",  # sound
    "\d2117",  # SOUND RECORDING COPYRIGHT
    "\d2139",  # SOURCE, INFORMATION
    "\d11A50",  # Soyombo
    "\d0020",  # SPACE
    "\d1680",  # SPACE MARK, OGHAM
    "\d2003",  # SPACE, EM
    "\d2002",  # SPACE, EN
    "\d2007",  # SPACE, FIGURE
    "\d2005",  # SPACE, FOUR-PER-EM
    "\d2423",  # space, graphic for
    "\d200A",  # SPACE, HAIR
    "\d210C",  # space, hilbert
    "\d3000",  # SPACE, IDEOGRAPHIC
    "\d303F",  # SPACE, IDEOGRAPHIC HALF FILL
    "\d237D",  # space, keyboard symbol for no break
    "\d205F",  # SPACE, MEDIUM MATHEMATICAL
    "\d2005",  # space, mid
    "\d202F",  # SPACE, NARROW NO-BREAK
    "\d00A0",  # SPACE, NO-BREAK
    "\d00A0",  # space, non-breaking
    "\d2008",  # SPACE, PUNCTUATION
    "\d2006",  # SPACE, SIX-PER-EM
    "\d2420",  # SPACE, SYMBOL FOR
    "\d2004",  # space, thick
    "\d2009",  # SPACE, THIN
    "\d2004",  # SPACE, THREE-PER-EM
    "\d200B",  # SPACE, ZERO WIDTH
    "\dFEFF",  # SPACE, ZERO WIDTH NO-BREAK
    "\d2000",  # Spaces
    "\d00B4",  # spacing acute accent
    "\d00B8",  # spacing cedilla
    "\d005E",  # spacing circumflex accent
    "\d02D8",  # Spacing Clones of Diacritics
    "\d00A8",  # spacing diaeresis
    "\d2017",  # spacing double underscore
    "\d0060",  # spacing grave accent
    "\d00AF",  # spacing macron
    "\d02B0",  # Spacing Modifier Letters
    "\d203E",  # spacing overscore
    "\d007E",  # spacing tilde
    "\d005F",  # spacing underscore
    "\d20A7",  # spanish currency
    "\d2747",  # SPARKLE
    "\d2748",  # SPARKLE, HEAVY
    "\d2728",  # SPARKLES
    "\d1F507",  # Speaker Symbols
    "\dFFF0",  # Specials
    "\dF900",  # Specials Area, Compatibility and
    "\d1F5E8",  # Speech and Thought Bubble Symbols
    "\d20B7",  # SPESMILO SIGN
    "\d2222",  # SPHERICAL ANGLE
    "\d1F336",  # spicy
    "\d1F3BD",  # Sport Symbols
    "\d1F3CF",  # Sport Symbols
    "\d033B",  # SQUARE BELOW, COMBINING
    "\d2045",  # SQUARE BRACKET WITH QUILL, LEFT
    "\d2046",  # SQUARE BRACKET WITH QUILL, RIGHT
    "\d005D",  # square bracket, closing
    "\d005B",  # SQUARE BRACKET, LEFT
    "\d301A",  # SQUARE BRACKET, LEFT WHITE
    "\d005B",  # square bracket, opening
    "\d005D",  # SQUARE BRACKET, RIGHT
    "\d301B",  # SQUARE BRACKET, RIGHT WHITE
    "\d2293",  # SQUARE CAP
    "\d2294",  # SQUARE CUP
    "\d23CD",  # SQUARE FOOT
    "\d228F",  # SQUARE IMAGE OF
    "\d2311",  # SQUARE LOZENGE
    "\d2290",  # SQUARE ORIGINAL OF
    "\d221A",  # SQUARE ROOT
    "\d29C4",  # Square Symbols
    "\d25FC",  # SQUARE, BLACK MEDIUM
    "\d25FE",  # SQUARE, BLACK MEDIUM SMALL
    "\d20DE",  # SQUARE, COMBINING ENCLOSING
    "\d2317",  # SQUARE, VIEWDATA
    "\d00B2",  # squared
    "\d22A1",  # SQUARED DOT OPERATOR
    "\d3300",  # Squared Japanese Katakana Words
    "\d3371",  # Squared Latin Abbreviations
    "\d1F131",  # Squared Latin Letters
    "\d229F",  # SQUARED MINUS
    "\d229E",  # SQUARED PLUS
    "\d22A0",  # SQUARED TIMES
    "\d25A0",  # Squares
    "\d2B1A",  # Squares
    "\d0285",  # SQUAT REVERSED ESH, LATIN SMALL LETTER
    "\d1F4AB",  # squeans
    "\d17C7",  # srak ah, khmer
    "\d17C6",  # srak am, khmer
    "\d0F84",  # srog med, tibetan
    "\d2613",  # st. andrew's cross
    "\d2695",  # STAFF OF AESCULAPIUS
    "\d269A",  # STAFF OF HERMES
    "\d002A",  # star
    "\d262A",  # STAR AND CRESCENT
    "\d2726",  # Star Dingbats
    "\d225B",  # STAR EQUALS
    "\d2721",  # STAR OF DAVID
    "\d22C6",  # STAR OPERATOR
    "\d066D",  # STAR, ARABIC FIVE POINTED
    "\d2605",  # STAR, BLACK
    "\d1F320",  # STAR, SHOOTING
    "\d2606",  # STAR, WHITE
    "\d273A",  # starburst
    "\d2721",  # Stars
    "\d1F7C0",  # Stars
    "\d0096",  # START OF GUARDED AREA
    "\d0001",  # START OF HEADING
    "\d2401",  # START OF HEADING, SYMBOL FOR
    "\d0086",  # START OF SELECTED AREA
    "\d0098",  # START OF STRING
    "\d0002",  # START OF TEXT
    "\d2402",  # START OF TEXT, SYMBOL FOR
    "\d22A8",  # statement is true
    "\d2E3C",  # STENOGRAPHIC FULL STOP
    "\d00A3",  # sterling, pound
    "\d2223",  # stile, apl
    "\d23F9",  # stop play
    "\d1F6D1",  # stop sign
    "\d23F1",  # STOPWATCH
    "\d03F5",  # straight epsilon
    "\d03F6",  # straight epsilon, reversed
    "\d23E4",  # STRAIGHTNESS
    "\d0301",  # stress mark
    "\d0297",  # STRETCHED C, LATIN LETTER
    "\d2263",  # STRICTLY EQUIVALENT TO
    "\d009C",  # STRING TERMINATOR
    "\d0090",  # STRING, DEVICE CONTROL
    "\d0098",  # STRING, START OF
    "\d20E6",  # STROKE OVERLAY, COMBINING DOUBLE VERTICAL
    "\d0336",  # STROKE OVERLAY, COMBINING LONG
    "\d0335",  # STROKE OVERLAY, COMBINING SHORT
    "\d00D8",  # STROKE, LATIN CAPITAL LETTER O WITH
    "\d00F8",  # STROKE, LATIN SMALL LETTER O WITH
    "\d31C0",  # Strokes, CJK
    "\d22B2",  # SUBGROUP OF, NORMAL
    "\d22EA",  # Subgroup Signs, Normal
    "\d22B3",  # SUBGROUP, CONTAINS AS NORMAL
    "\d0F90",  # Subjoined Consonants, Tibetan
    "\d2080",  # Subscript Digits
    "\d0345",  # subscript, greek iota
    "\d2080",  # Subscripts
    "\d2ABD",  # Subset and Superset Relations
    "\d2282",  # SUBSET OF
    "\d2284",  # SUBSET OF, NOT A
    "\d2282",  # Subset Signs, Superset and
    "\d22D0",  # SUBSET, DOUBLE
    "\d001A",  # SUBSTITUTE
    "\d2426",  # SUBSTITUTE FORM TWO, SYMBOL FOR
    "\d241A",  # SUBSTITUTE, SYMBOL FOR
    "\d0600",  # Subtending Marks, Arabic
    "\d2A41",  # subtraction, bag
    "\d2238",  # subtraction, saturating
    "\d227B",  # SUCCEEDS
    "\d22B1",  # SUCCEEDS UNDER RELATION
    "\d2ABC",  # SUCCEEDS, DOUBLE
    "\d220B",  # such that
    "\d2223",  # such that
    "\d2660",  # Suits, Playing Card
    "\d2A26",  # sum or positive difference
    "\d2295",  # sum, direct
    "\d2A24",  # sum, positive difference or
    "\d2211",  # summation sign
    "\d23B2",  # Summation Sign Parts
    "\d2140",  # SUMMATION, DOUBLE-STRUCK N-ARY
    "\d2211",  # SUMMATION, N-ARY
    "\d2A0A",  # Summations and Integrals
    "\d2609",  # SUN
    "\d26C5",  # SUN BEHIND CLOUD
    "\d2600",  # SUN WITH RAYS, BLACK
    "\d263C",  # SUN WITH RAYS, WHITE
    "\d1B80",  # Sundanese
    "\d1CC0",  # Sundanese Supplement
    "\d0C02",  # sunna, telugu
    "\d2070",  # Superscript Digits
    "\d1DD3",  # Superscript Letter Diacritics, Latin Medieval
    "\d0363",  # Superscript Letter Diacritics, Medieval
    "\d02B0",  # Superscript Modifier Letters, Latin
    "\d00B9",  # SUPERSCRIPT ONE
    "\d00B3",  # SUPERSCRIPT THREE
    "\d00B2",  # SUPERSCRIPT TWO
    "\d2070",  # SUPERSCRIPT ZERO
    "\d2070",  # Superscripts
    "\d2282",  # Superset and Subset Signs
    "\d2283",  # SUPERSET OF
    "\d2285",  # SUPERSET OF, NOT A
    "\d2ABD",  # Superset Relations, Subset and
    "\d22D1",  # SUPERSET, DOUBLE
    "\d2900",  # Supplemental Arrows-B
    "\d2A00",  # Supplemental Mathematical Operators
    "\d2E00",  # Supplemental Punctuation
    "\d20000",  # Supplementary CJK Ideographs Area
    "\d10000",  # Supplementary General Scripts Area
    "\dF0000",  # Supplementary Private Use Area-A
    "\d100000",  # Supplementary Private Use Area-B
    "\d222F",  # SURFACE INTEGRAL
    "\d2901",  # surjection, finite
    "\d2900",  # surjection, partial
    "\d21A0",  # surjection, total
    "\d2917",  # surjective injection
    "\d2918",  # surjective injection, finite
    "\dD800",  # Surrogates Area
    "\dD800",  # Surrogates, High
    "\dDC00",  # Surrogates, Low
    "\d1D800",  # Sutton SignWriting
    "\d3021",  # Suzhou Numerals
    "\d0FD5",  # Svasti Signs
    "\d023F",  # SWASH TAIL, LATIN SMALL LETTER S WITH
    "\d0240",  # SWASH TAIL, LATIN SMALL LETTER Z WITH
    "\d1F4A6",  # SWEAT SYMBOL, SPLASHING
    "\d02DF",  # swedish grave accent
    "\d2694",  # SWORDS, CROSSED
    "\d2053",  # SWUNG DASH
    "\d10800",  # Syllabary, Cypriot
    "\d10000",  # Syllabary, Linear B
    "\d166E",  # SYLLABICS FULL STOP, CANADIAN
    "\d166D",  # Syllabics Punctuation, Canadian
    "\d1400",  # Syllabics, Unified Canadian Aboriginal
    "\d13A0",  # Syllables, Cherokee
    "\d326E",  # Syllables, Circled Korean Hangul
    "\d1200",  # Syllables, Ethiopic
    "\dAC00",  # Syllables, Korean Hangul
    "\d320E",  # Syllables, Parenthesized Korean Hangul
    "\dA000",  # Syllables, Yi
    "\dA800",  # Syloti Nagri
    "\dFFE0",  # Symbol Variants, Fullwidth
    "\dFFE8",  # Symbol Variants, Halfwidth
    "\d1F300",  # Symbols and Pictographs, Miscellaneous
    "\d1F900",  # Symbols and Pictographs, Supplemental
    "\d3000",  # Symbols and Punctuation, CJK
    "\d2000",  # Symbols Area
    "\d2E80",  # Symbols Area, CJK Phonetics and
    "\d33E0",  # Symbols for Days, Ideographic Telegraph
    "\d17F0",  # Symbols for Divination, Khmer Numeric
    "\d3358",  # Symbols for Hours, Ideographic Telegraph
    "\d32C0",  # Symbols for Months, Ideographic Telegraph
    "\d1F700",  # Symbols, Alchemical
    "\d2E0E",  # Symbols, Ancient Greek Textual
    "\d1F400",  # Symbols, Animal
    "\d1F980",  # Symbols, Animal
    "\d2336",  # Symbols, APL Functional
    "\d1EE00",  # Symbols, Arabic Mathematical Alphabetic
    "\d2000",  # Symbols, Area,
    "\d2E80",  # Symbols, Area, CJK Phonetics and
    "\d0020",  # Symbols, ASCII Punctuation and
    "\d263D",  # Symbols, Astrological
    "\d1F4F7",  # Symbols, Audio and Video
    "\d1B61",  # Symbols, Balinese Musical
    "\d1F5F3",  # Symbols, Ballot
    "\d2669",  # Symbols, Basic Musical
    "\d1F375",  # Symbols, Beverage
    "\d1D504",  # Symbols, Black-letter Mathematical
    "\d1D56C",  # Symbols, Bold Fraktur Mathematical
    "\d1D6A8",  # Symbols, Bold Greek Mathematical
    "\d1D71C",  # Symbols, Bold Italic Greek Mathematical
    "\d1D468",  # Symbols, Bold Italic Mathematical
    "\d1D400",  # Symbols, Bold Mathematical
    "\d1D4D0",  # Symbols, Bold Script Mathematical
    "\d29D1",  # Symbols, Bowtie
    "\d1F3D4",  # Symbols, Building and Map
    "\d1F3E0",  # Symbols, Building and Map
    "\d1D000",  # Symbols, Byzantine Musical
    "\d1F380",  # Symbols, Celebration
    "\d2654",  # Symbols, Chess
    "\d29B5",  # Symbols, Circle
    "\d1F550",  # Symbols, Clock Face
    "\d20D0",  # Symbols, Combining Diacritical Marks for
    "\d1F4A0",  # Symbols, Comic Style
    "\d1F4DD",  # Symbols, Communication
    "\d1F57B",  # Symbols, Communication
    "\d1F5A5",  # Symbols, Computer Component
    "\d1F5FB",  # Symbols, Cultural
    "\d20A0",  # Symbols, Currency
    "\d23BE",  # Symbols, Dentistry Notation
    "\d20D0",  # Symbols, Diacritical Marks for
    "\d2690",  # Symbols, Dictionary and Map
    "\d1D6A4",  # Symbols, Dotless Mathematical
    "\d2145",  # Symbols, Double-struck Italic Mathematical
    "\d1D538",  # Symbols, Double-struck Mathematical
    "\d232D",  # Symbols, Drafting
    "\d238D",  # Symbols, Electrotechnical
    "\d1F3A0",  # Symbols, Entertainment
    "\d29EE",  # Symbols, Error Bar
    "\d1F440",  # Symbols, Facial Parts
    "\d1F478",  # Symbols, Fairy Tale
    "\d1F354",  # Symbols, Food
    "\d1F950",  # Symbols, Food
    "\d1D504",  # Symbols, Fraktur Mathematical
    "\d1F345",  # Symbols, Fruit and Vegetable
    "\d1F3AE",  # Symbols, Game
    "\d26A2",  # Symbols, Gender
    "\d26AD",  # Symbols, Genealogical
    "\d1F645",  # Symbols, Gesture
    "\d1F30D",  # Symbols, Globe
    "\d1D6A8",  # Symbols, Greek Mathematical
    "\d1D1D0",  # Symbols, Gregorian Musical
    "\d1F446",  # Symbols, Hand
    "\d1F58E",  # Symbols, Hand
    "\d1F918",  # Symbols, Hand
    "\d1F493",  # Symbols, Heart
    "\d2135",  # Symbols, Hebrew Letterlike Mathematical
    "\d4DC0",  # Symbols, I Ching / Yijing Hexagram
    "\d268A",  # Symbols, I Ching / Yijing Monogram and Digram
    "\d2630",  # Symbols, I Ching / Yijing Trigram
    "\d1D6E2",  # Symbols, Italic Greek Mathematical
    "\d1D434",  # Symbols, Italic Mathematical
    "\d2616",  # Symbols, Japanese Chess
    "\d21E6",  # Symbols, Keyboard
    "\d2324",  # Symbols, Keyboard
    "\d2380",  # Symbols, Keyboard
    "\d2396",  # Symbols, Keyboard
    "\d19E0",  # Symbols, Khmer
    "\d1D1DE",  # Symbols, Kievan Musical
    "\d00A0",  # Symbols, Latin-1 Punctuation and
    "\d2100",  # Symbols, Letterlike
    "\d1F50F",  # Symbols, Lock
    "\d1F4E4",  # Symbols, Mail
    "\d27C0",  # Symbols, Mathematical
    "\d2980",  # Symbols, Mathematical
    "\d1D400",  # Symbols, Mathematical Alphanumeric
    "\d1D7CE",  # Symbols, Mathematical Digits
    "\d23D1",  # Symbols, Metrical
    "\d2600",  # Symbols, Miscellaneous
    "\d1F940",  # Symbols, Miscellaneous
    "\d1F4B0",  # Symbols, Money
    "\d1D670",  # Symbols, Monospace Mathematical
    "\d1F311",  # Symbols, Moon, Sun, and Star
    "\d1F3B5",  # Symbols, Music
    "\d1D100",  # Symbols, Musical
    "\d2E00",  # Symbols, New Testament Editorial
    "\d1F4BA",  # Symbols, Office
    "\d2E32",  # Symbols, Palaeotype Transliteration
    "\d1F484",  # Symbols, Personal Care
    "\d263F",  # Symbols, Planet
    "\d1F330",  # Symbols, Plant
    "\d2673",  # Symbols, Plastics Recycling
    "\d2660",  # Symbols, Playing Card
    "\d261A",  # Symbols, Pointing Hand
    "\d2B12",  # Symbols, Polygonal
    "\d1F464",  # Symbols, Portrait and Role
    "\d1F930",  # Symbols, Portrait and Role
    "\d23FB",  # Symbols, Power On/Off
    "\d2672",  # Symbols, Recycling
    "\d2626",  # Symbols, Religious and Political
    "\d1F6B9",  # Symbols, Restroom
    "\d1F481",  # Symbols, Role
    "\d10190",  # Symbols, Roman
    "\d1F48B",  # Symbols, Romance
    "\d10E60",  # Symbols, Rumi Numeral
    "\d1D756",  # Symbols, Sans-serif Bold Greek Mathematical
    "\d1D790",  # Symbols, Sans-serif Bold Italic Greek Mathematical
    "\d1D63C",  # Symbols, Sans-serif Bold Italic Mathematical
    "\d1D5D4",  # Symbols, Sans-serif Bold Mathematical
    "\d1D608",  # Symbols, Sans-serif Italic Mathematical
    "\d1D5A0",  # Symbols, Sans-serif Mathematical
    "\d1D49C",  # Symbols, Script Mathematical
    "\d1F6A9",  # Symbols, Signage and Other
    "\d1F507",  # Symbols, Speaker
    "\d1F5E8",  # Symbols, Speech and Thought Bubble
    "\d1F3BD",  # Symbols, Sport
    "\d1F3CF",  # Symbols, Sport
    "\d29C4",  # Symbols, Square
    "\d1D300",  # Symbols, Tai Xuan Jing
    "\d0BF3",  # Symbols, Tamil
    "\d0FC4",  # Symbols, Tibetan
    "\d1F525",  # Symbols, Tool
    "\d1F680",  # Symbols, Transport and Map
    "\d29CA",  # Symbols, Triangle
    "\d1F500",  # Symbols, User Interface
    "\d1F53A",  # Symbols, User Interface
    "\d1F5BF",  # Symbols, User Interface
    "\d1F520",  # Symbols, User Interface Input Status
    "\d1F6E5",  # Symbols, Vehicle
    "\d1F321",  # Symbols, Weather
    "\d2600",  # Symbols, Weather and Astrological
    "\d1F300",  # Symbols, Weather, Landscape, and Sky
    "\d4DC0",  # Symbols, Yijing / I Ching Hexagram
    "\d268A",  # Symbols, Yijing / I Ching Monogram and Digram
    "\d2630",  # Symbols, Yijing / I Ching Trigram
    "\d2648",  # Symbols, Zodiacal
    "\d27C0",  # Symbols-A, Miscellaneous Mathematical
    "\d2980",  # Symbols-B, Miscellaneous Mathematical
    "\d2206",  # symmetric difference
    "\d2238",  # symmetric difference
    "\d2296",  # symmetric difference
    "\d232F",  # SYMMETRY
    "\d0016",  # SYNCHRONOUS IDLE
    "\d2416",  # SYNCHRONOUS IDLE, SYMBOL FOR
    "\d0700",  # Syriac
    "\d2671",  # SYRIAC CROSS, EAST
    "\d2670",  # SYRIAC CROSS, WEST
    "\d0710",  # Syriac Letters
    "\d0700",  # Syriac Punctuation and Signs
    "\d070F",  # syriac sam
    "\d0860",  # Syriac Supplement
    "\d0165",  # T WITH CARON, LATIN SMALL LETTER
    "\d0163",  # T WITH CEDILLA, LATIN SMALL LETTER
    "\d1E71",  # T WITH CIRCUMFLEX BELOW, LATIN SMALL LETTER
    "\d021B",  # T WITH COMMA BELOW, LATIN SMALL LETTER
    "\d0236",  # T WITH CURL, LATIN SMALL LETTER
    "\d1E97",  # T WITH DIAERESIS, LATIN SMALL LETTER
    "\d023E",  # T WITH DIAGONAL STROKE, LATIN CAPITAL LETTER
    "\d1E6B",  # T WITH DOT ABOVE, LATIN SMALL LETTER
    "\d1E6D",  # T WITH DOT BELOW, LATIN SMALL LETTER
    "\d01AD",  # T WITH HOOK, LATIN SMALL LETTER
    "\d1E6F",  # T WITH LINE BELOW, LATIN SMALL LETTER
    "\d01AB",  # T WITH PALATAL HOOK, LATIN SMALL LETTER
    "\d01AE",  # T WITH RETROFLEX HOOK, LATIN CAPITAL LETTER
    "\d0288",  # T WITH RETROFLEX HOOK, LATIN SMALL LETTER
    "\d0167",  # T WITH STROKE, LATIN SMALL LETTER
    "\d036D",  # T, COMBINING LATIN SMALL LETTER
    "\d1D1B",  # T, LATIN LETTER SMALL CAPITAL
    "\d0287",  # T, LATIN SMALL LETTER TURNED
    "\d209C",  # T, LATIN SUBSCRIPT SMALL LETTER
    "\d1F996",  # T-REX
    "\d0009",  # tab
    "\d2B7E",  # TAB KEY, HORIZONTAL
    "\d2B7F",  # TAB KEY, VERTICAL
    "\d21B9",  # tab with shift tab
    "\d2B73",  # tab, down
    "\d2B70",  # tab, left
    "\d21E4",  # tab, leftward
    "\d2B72",  # tab, right
    "\d21E5",  # tab, rightward
    "\d2B71",  # tab, up
    "\d0088",  # TABULATION SET, CHARACTER
    "\d008A",  # TABULATION SET, LINE
    "\d0089",  # TABULATION WITH JUSTIFICATION, CHARACTER
    "\d0009",  # TABULATION, CHARACTER
    "\d0009",  # tabulation, horizontal
    "\d000B",  # TABULATION, LINE
    "\d2409",  # TABULATION, SYMBOL FOR HORIZONTAL
    "\d240B",  # TABULATION, SYMBOL FOR VERTICAL
    "\d000B",  # tabulation, vertical
    "\d031E",  # TACK BELOW, COMBINING DOWN
    "\d0318",  # TACK BELOW, COMBINING LEFT
    "\d0319",  # TACK BELOW, COMBINING RIGHT
    "\d031D",  # TACK BELOW, COMBINING UP
    "\d22A4",  # TACK, DOWN
    "\d22A3",  # TACK, LEFT
    "\d02D4",  # TACK, MODIFIER LETTER UP
    "\d22A2",  # TACK, RIGHT
    "\d22A5",  # TACK, UP
    "\d22A2",  # Tacks and Turnstiles
    "\d27D8",  # Tacks and Turnstiles
    "\d2ADE",  # Tacks and Turnstiles
    "\d1700",  # Tagalog
    "\d1714",  # TAGALOG SIGN VIRAMA
    "\d1760",  # Tagbanwa
    "\dE0000",  # Tags
    "\d1950",  # Tai Le
    "\d19D0",  # Tai Lue Digits, New
    "\d1980",  # Tai Lue, New
    "\d1A20",  # Tai Tham
    "\dAA80",  # Tai Viet
    "\d1D300",  # Tai Xuan Jing Symbols
    "\d297C",  # Tails, Fish
    "\d25C9",  # tainome japanese bullet
    "\d211E",  # TAKE, PRESCRIPTION
    "\d11680",  # Takri
    "\d0B80",  # Tamil
    "\d0BF8",  # TAMIL AS ABOVE SIGN
    "\d0B83",  # tamil aytham
    "\d0B95",  # Tamil Consonants
    "\d0BF7",  # TAMIL CREDIT SIGN
    "\d0BF3",  # TAMIL DAY SIGN
    "\d0BF6",  # TAMIL DEBIT SIGN
    "\d0BBE",  # Tamil Dependent Vowel Signs
    "\d0BE7",  # Tamil Digits
    "\d0BFA",  # tamil enn
    "\d0B85",  # Tamil Independent Vowels
    "\d0BF4",  # tamil maatham
    "\d0BF8",  # tamil merpadi
    "\d0BF4",  # TAMIL MONTH SIGN
    "\d0BF3",  # tamil naal
    "\d0BFA",  # TAMIL NUMBER SIGN
    "\d0BE7",  # Tamil Numbers
    "\d0BF6",  # tamil patru
    "\d0BF9",  # tamil rupai
    "\d0BF9",  # TAMIL RUPEE SIGN
    "\d0B83",  # TAMIL SIGN VISARGA
    "\d0BF3",  # Tamil Symbols
    "\d0BF7",  # tamil varavu
    "\d0BF5",  # tamil varudam
    "\d0BF5",  # TAMIL YEAR SIGN
    "\d17000",  # Tangut
    "\d18800",  # Tangut Components
    "\d2707",  # TAPE DRIVE
    "\d2332",  # TAPER, CONICAL
    "\d1F78B",  # TARGET, ROUND
    "\d1F796",  # TARGET, SQUARE
    "\d0640",  # TATWEEL, ARABIC
    "\d2649",  # TAURUS
    "\d29E6",  # tautological equivalent
    "\d22A8",  # tautology
    "\d2615",  # tea, cup of
    "\d2300",  # Technical, Miscellaneous
    "\d33E0",  # Telegraph Symbols for Days, Ideographic
    "\d3358",  # Telegraph Symbols for Hours, Ideographic
    "\d32C0",  # Telegraph Symbols for Months, Ideographic
    "\d1F57D",  # telephone handset
    "\d2706",  # TELEPHONE LOCATION SIGN
    "\d2315",  # TELEPHONE RECORDER
    "\d2121",  # TELEPHONE SIGN
    "\d260E",  # TELEPHONE, BLACK
    "\d260F",  # TELEPHONE, WHITE
    "\d0C00",  # Telugu
    "\d0C15",  # Telugu Consonants
    "\d0C3E",  # Telugu Dependent Vowel Signs
    "\d0C66",  # Telugu Digits
    "\d0C05",  # Telugu Independent Vowels
    "\d0C02",  # TELUGU SIGN ANUSVARA
    "\d0C02",  # telugu sunna
    "\d2031",  # TEN THOUSAND SIGN, PER
    "\d20B8",  # TENGE SIGN
    "\d2297",  # tensor product
    "\d26FA",  # TENT
    "\d23B7",  # Terminal Graphic Characters
    "\d2596",  # Terminal Graphic Characters
    "\dFFFB",  # TERMINATOR, INTERLINEAR ANNOTATION
    "\d009C",  # TERMINATOR, STRING
    "\d0003",  # TEXT, END OF
    "\d0002",  # TEXT, START OF
    "\d2403",  # TEXT, SYMBOL FOR END OF
    "\d2402",  # TEXT, SYMBOL FOR START OF
    "\d0780",  # Thaana
    "\d0E00",  # Thai
    "\d0E5A",  # THAI CHARACTER ANGKHANKHU
    "\d0E4F",  # THAI CHARACTER FONGMAN
    "\d0E5B",  # THAI CHARACTER KHOMUT
    "\d0E4D",  # THAI CHARACTER NIKHAHIT
    "\d0E4C",  # THAI CHARACTER THANTHAKHAT
    "\d0E4E",  # THAI CHARACTER YAMAKKAN
    "\d0E01",  # Thai Consonants
    "\d0E3F",  # THAI CURRENCY SYMBOL BAHT
    "\d0E50",  # Thai Digits
    "\d0E48",  # Thai Marks and Signs
    "\d0E30",  # Thai Vowels
    "\d0E4C",  # THANTHAKHAT, THAI CHARACTER
    "\d1F3AD",  # theater masks
    "\d2204",  # THERE DOES NOT EXIST
    "\d2203",  # THERE EXISTS
    "\d2234",  # THEREFORE
    "\d29E7",  # THERMODYNAMIC
    "\d1F321",  # THERMOMETER
    "\d03D1",  # THETA SYMBOL, GREEK
    "\d03D1",  # theta, script
    "\d2004",  # thick space
    "\d2009",  # THIN SPACE
    "\d20DB",  # third derivative
    "\d02C7",  # third tone, mandarin chinese
    "\d2153",  # Thirds, Fractions
    "\d00DE",  # THORN, LATIN CAPITAL LETTER
    "\d00FE",  # THORN, LATIN SMALL LETTER
    "\d066C",  # THOUSANDS SEPARATOR, ARABIC
    "\d2026",  # three dot leader
    "\d2056",  # THREE DOT PUNCTUATION
    "\d20DB",  # THREE DOTS ABOVE, COMBINING
    "\d00BE",  # THREE QUARTERS, VULGAR FRACTION
    "\d00B3",  # THREE, SUPERSCRIPT
    "\d2004",  # THREE-PER-EM SPACE
    "\d1F44E",  # THUMBS DOWN SIGN
    "\d1F44D",  # THUMBS UP SIGN
    "\d26A1",  # thunder
    "\d2608",  # THUNDERSTORM
    "\d26C8",  # thunderstorm
    "\d0F00",  # Tibetan
    "\d0F7E",  # tibetan anusvara
    "\d0F15",  # Tibetan Astrological Signs
    "\d0FC0",  # Tibetan Cantillation Signs
    "\d0F40",  # Tibetan Consonants
    "\d0F71",  # Tibetan Dependent Vowel Signs
    "\d0F20",  # Tibetan Digits
    "\d0F2A",  # Tibetan Digits Minus Half
    "\d0F01",  # Tibetan Head Marks
    "\d0FBE",  # TIBETAN KU RU KHA
    "\d0FBF",  # TIBETAN KU RU KHA BZHI MIG CAN
    "\d0F0C",  # TIBETAN MARK DELIMITER TSHEG BSTAR
    "\d0F84",  # TIBETAN MARK HALANTA
    "\d0F0B",  # TIBETAN MARK INTERSYLLABIC TSHEG
    "\d0F85",  # TIBETAN MARK PALUTA
    "\d0F08",  # Tibetan Marks and Signs
    "\d0F34",  # Tibetan Marks and Signs
    "\d0F82",  # Tibetan Marks and Signs
    "\d0FBE",  # Tibetan Marks and Signs
    "\d0F7E",  # TIBETAN SIGN RJES SU NGA RO
    "\d0F7F",  # TIBETAN SIGN RNAM BCAD
    "\d0F84",  # tibetan srog med
    "\d0F90",  # Tibetan Subjoined Consonants
    "\d0F00",  # TIBETAN SYLLABLE OM
    "\d0FC4",  # Tibetan Symbols
    "\d0F7F",  # tibetan visarga
    "\d0F7E",  # Tibetan Vocalic Modification
    "\d035C",  # tie below, ligature
    "\d2040",  # TIE, CHARACTER
    "\d0361",  # tie, ligature
    "\d2D30",  # Tifinagh
    "\d1F405",  # TIGER
    "\d1F42F",  # TIGER FACE
    "\d007E",  # TILDE
    "\d034A",  # TILDE ABOVE, COMBINING NOT
    "\d0330",  # TILDE BELOW, COMBINING
    "\d22CD",  # TILDE EQUALS, REVERSED
    "\d223B",  # Tilde Mathematical Operators
    "\d223C",  # TILDE OPERATOR
    "\d0334",  # TILDE OVERLAY, COMBINING
    "\d223C",  # tilde, apl
    "\d0303",  # TILDE, COMBINING
    "\d0360",  # TILDE, COMBINING DOUBLE
    "\d033E",  # TILDE, COMBINING VERTICAL
    "\d2242",  # TILDE, MINUS
    "\d2241",  # TILDE, NOT
    "\d223D",  # TILDE, REVERSED
    "\d02DC",  # TILDE, SMALL
    "\d007E",  # tilde, spacing
    "\d224B",  # TILDE, TRIPLE
    "\d1F030",  # Tiles, Domino
    "\d1F000",  # Tiles, Mahjong
    "\d23F2",  # TIMER CLOCK
    "\d2A09",  # TIMES OPERATOR, N-ARY
    "\d2297",  # TIMES, CIRCLED
    "\d22C7",  # TIMES, DIVISION
    "\d2062",  # TIMES, INVISIBLE
    "\d22A0",  # TIMES, SQUARED
    "\d29FE",  # TINY
    "\d0A70",  # TIPPI, GURMUKHI
    "\d11480",  # Tirhuta
    "\d204A",  # TIRONIAN SIGN ET
    "\dFE2E",  # TITLO LEFT HALF, COMBINING CYRILLIC
    "\d1806",  # TODO SOFT HYPHEN, MONGOLIAN
    "\d02E5",  # Tone Letters
    "\dA700",  # Tone Letters, Modifier
    "\d0341",  # TONE MARK, COMBINING ACUTE
    "\d0340",  # TONE MARK, COMBINING GRAVE
    "\dA700",  # Tone Marks for Chinese, Corner
    "\d1DCB",  # Tone Marks, Contour
    "\d302A",  # Tone Marks, Ideographic
    "\d02D9",  # tone, mandarin chinese fifth or neutral
    "\d02C9",  # tone, mandarin chinese first
    "\d02CB",  # tone, mandarin chinese fourth
    "\d02CA",  # tone, mandarin chinese second
    "\d02C7",  # tone, mandarin chinese third
    "\d1F445",  # TONGUE
    "\d0344",  # TONOS, COMBINING GREEK DIALYTIKA
    "\d0301",  # tonos, greek
    "\d1F525",  # Tool Symbols
    "\d22A4",  # top
    "\d2320",  # TOP HALF INTEGRAL
    "\d26E9",  # torii
    "\d3014",  # TORTOISE SHELL BRACKET, LEFT
    "\d3018",  # TORTOISE SHELL BRACKET, LEFT WHITE
    "\d3015",  # TORTOISE SHELL BRACKET, RIGHT
    "\d3019",  # TORTOISE SHELL BRACKET, RIGHT WHITE
    "\d2192",  # total function
    "\d21A3",  # total injection
    "\d2330",  # TOTAL RUNOUT
    "\d21A0",  # total surjection
    "\d2122",  # TRADE MARK SIGN
    "\d00AE",  # trade mark sign, registered
    "\d1F6A5",  # Traffic Signs
    "\d2135",  # transfinite cardinal, first
    "\d2138",  # transfinite cardinal, fourth
    "\d2136",  # transfinite cardinal, second
    "\d2137",  # transfinite cardinal, third
    "\d2131",  # transform, fourier
    "\d0017",  # TRANSMISSION BLOCK, END OF
    "\d2417",  # TRANSMISSION BLOCK, SYMBOL FOR END OF
    "\d2301",  # transmission symbol, end of
    "\d0004",  # TRANSMISSION, END OF
    "\d2404",  # TRANSMISSION, SYMBOL FOR END OF
    "\d0093",  # TRANSMIT STATE, SET
    "\d1F680",  # Transport and Map Symbols
    "\d23E2",  # TRAPEZIUM, WHITE
    "\d1F5D1",  # trashcan
    "\d29CA",  # Triangle Symbols
    "\d20E4",  # TRIANGLE, COMBINING ENCLOSING UPWARD POINTING
    "\d22BF",  # TRIANGLE, RIGHT
    "\d25B2",  # Triangles
    "\d23E9",  # Triangles, Double
    "\d2023",  # TRIANGULAR BULLET
    "\d02D0",  # TRIANGULAR COLON, MODIFIER LETTER
    "\d02D1",  # TRIANGULAR COLON, MODIFIER LETTER HALF
    "\d205D",  # TRICOLON
    "\d2630",  # Trigram Symbols, Yijing / I Ching
    "\d25B3",  # trine
    "\d222D",  # TRIPLE INTEGRAL
    "\d29FB",  # TRIPLE PLUS
    "\d2034",  # TRIPLE PRIME
    "\d2037",  # TRIPLE PRIME, REVERSED
    "\d224B",  # TRIPLE TILDE
    "\d20E8",  # TRIPLE UNDERDOT, COMBINING
    "\d26DF",  # TRUCK, BLACK
    "\d22A8",  # TRUE
    "\d0F0C",  # TSHEG BSTAR, TIBETAN MARK DELIMITER
    "\d0F0B",  # TSHEG, TIBETAN MARK INTERSYLLABIC
    "\d20AE",  # TUGRIK SIGN
    "\d1F473",  # TURBAN, MAN WITH
    "\d274B",  # turbofan
    "\d1F983",  # TURKEY
    "\d10C00",  # Turkic, Old
    "\d20BA",  # TURKISH LIRA SIGN
    "\d0250",  # TURNED A, LATIN SMALL LETTER
    "\d1D02",  # TURNED AE, LATIN SMALL LETTER
    "\d0252",  # TURNED ALPHA, LATIN SMALL LETTER
    "\d214B",  # TURNED AMPERSAND
    "\d2132",  # TURNED CAPITAL F
    "\d0312",  # TURNED COMMA ABOVE, COMBINING
    "\d201C",  # turned comma quotation mark, double
    "\d2018",  # turned comma quotation mark, single
    "\d02BB",  # TURNED COMMA, MODIFIER LETTER
    "\d018D",  # TURNED DELTA, LATIN SMALL LETTER
    "\d018E",  # turned e, latin capital letter
    "\d01DD",  # TURNED E, LATIN SMALL LETTER
    "\d2129",  # TURNED GREEK SMALL LETTER IOTA
    "\d02AE",  # TURNED H WITH FISHHOOK, LATIN SMALL LETTER
    "\d0265",  # TURNED H, LATIN SMALL LETTER
    "\d1D09",  # TURNED I, LATIN SMALL LETTER
    "\d029E",  # TURNED K, LATIN SMALL LETTER
    "\d0270",  # TURNED M WITH LONG LEG, LATIN SMALL LETTER
    "\d019C",  # TURNED M, LATIN CAPITAL LETTER
    "\d026F",  # TURNED M, LATIN SMALL LETTER
    "\d1D1F",  # TURNED M, LATIN SMALL LETTER SIDEWAYS
    "\d2319",  # TURNED NOT SIGN
    "\d1D14",  # TURNED OE, LATIN SMALL LETTER
    "\d1D08",  # TURNED OPEN E, LATIN SMALL LETTER
    "\d00BF",  # turned question mark
    "\d027B",  # TURNED R WITH HOOK, LATIN SMALL LETTER
    "\d027A",  # TURNED R WITH LONG LEG, LATIN SMALL LETTER
    "\d1D1A",  # TURNED R, LATIN LETTER SMALL CAPITAL
    "\d0279",  # TURNED R, LATIN SMALL LETTER
    "\d02B4",  # TURNED R, MODIFIER LETTER SMALL
    "\d2141",  # TURNED SANS-SERIF CAPITAL G
    "\d2142",  # TURNED SANS-SERIF CAPITAL L
    "\d2144",  # TURNED SANS-SERIF CAPITAL Y
    "\d214E",  # TURNED SMALL F
    "\d0287",  # TURNED T, LATIN SMALL LETTER
    "\d0245",  # TURNED V, LATIN CAPITAL LETTER
    "\d028C",  # TURNED V, LATIN SMALL LETTER
    "\d028D",  # TURNED W, LATIN SMALL LETTER
    "\d028E",  # TURNED Y, LATIN SMALL LETTER
    "\d22A2",  # turnstile
    "\d22A3",  # turnstile, reverse
    "\d22A2",  # Turnstiles, Tacks and
    "\d27D8",  # Turnstiles, Tacks and
    "\d2ADE",  # Turnstiles, Tacks and
    "\d1F422",  # TURTLE
    "\d2051",  # TWO ASTERISKS ALIGNED VERTICALLY
    "\d2025",  # TWO DOT LEADER
    "\d205A",  # TWO DOT PUNCTUATION
    "\d00B2",  # TWO, SUPERSCRIPT
    "\d2E3A",  # TWO-EM DASH
    "\d2E44",  # Typicon Punctuation
    "\d1F900",  # Typicon Symbols
    "\d1F996",  # tyrannosaurus rex
    "\d0244",  # U BAR, LATIN CAPITAL LETTER
    "\d0289",  # U BAR, LATIN SMALL LETTER
    "\d00DA",  # U WITH ACUTE, LATIN CAPITAL LETTER
    "\d00FA",  # U WITH ACUTE, LATIN SMALL LETTER
    "\d016D",  # U WITH BREVE, LATIN SMALL LETTER
    "\d01D4",  # U WITH CARON, LATIN SMALL LETTER
    "\d1E77",  # U WITH CIRCUMFLEX BELOW, LATIN SMALL LETTER
    "\d00DB",  # U WITH CIRCUMFLEX, LATIN CAPITAL LETTER
    "\d00FB",  # U WITH CIRCUMFLEX, LATIN SMALL LETTER
    "\d1E73",  # U WITH DIAERESIS BELOW, LATIN SMALL LETTER
    "\d00DC",  # U WITH DIAERESIS, LATIN CAPITAL LETTER
    "\d00FC",  # U WITH DIAERESIS, LATIN SMALL LETTER
    "\d1EE5",  # U WITH DOT BELOW, LATIN SMALL LETTER
    "\d0171",  # U WITH DOUBLE ACUTE, LATIN SMALL LETTER
    "\d0215",  # U WITH DOUBLE GRAVE, LATIN SMALL LETTER
    "\d00D9",  # U WITH GRAVE, LATIN CAPITAL LETTER
    "\d00F9",  # U WITH GRAVE, LATIN SMALL LETTER
    "\d1EE7",  # U WITH HOOK ABOVE, LATIN SMALL LETTER
    "\d01B0",  # U WITH HORN, LATIN SMALL LETTER
    "\d0217",  # U WITH INVERTED BREVE, LATIN SMALL LETTER
    "\d016B",  # U WITH MACRON, LATIN SMALL LETTER
    "\d0173",  # U WITH OGONEK, LATIN SMALL LETTER
    "\d016F",  # U WITH RING ABOVE, LATIN SMALL LETTER
    "\d1E75",  # U WITH TILDE BELOW, LATIN SMALL LETTER
    "\d0169",  # U WITH TILDE, LATIN SMALL LETTER
    "\d0367",  # U, COMBINING LATIN SMALL LETTER
    "\d1D1C",  # U, LATIN LETTER SMALL CAPITAL
    "\d1D1D",  # U, LATIN SMALL LETTER SIDEWAYS
    "\d1D1E",  # U, LATIN SMALL LETTER SIDEWAYS DIAERESIZED
    "\d1D64",  # U, LATIN SUBSCRIPT SMALL LETTER
    "\d10380",  # Ugaritic
    "\d20B4",  # ukrainian currency
    "\d2602",  # UMBRELLA
    "\d26F1",  # UMBRELLA ON GROUND
    "\d2614",  # UMBRELLA WITH RAIN DROPS
    "\d0308",  # umlaut
    "\d02ED",  # UNASPIRATED, MODIFIER LETTER
    "\d2BD1",  # UNCERTAINTY SIGN
    "\d20E8",  # UNDERDOT, COMBINING TRIPLE
    "\d0332",  # underline
    "\d2381",  # UNDERLINE SYMBOL, CONTINUOUS
    "\d2382",  # UNDERLINE SYMBOL, DISCONTINUOUS
    "\d0333",  # underline, double
    "\d0332",  # underscore
    "\d0333",  # underscore, double
    "\d005F",  # underscore, spacing
    "\d2017",  # underscore, spacing double
    "\dFE49",  # Underscores, Overscores and
    "\d203F",  # UNDERTIE
    "\d2054",  # UNDERTIE, INVERTED
    "\d238C",  # UNDO SYMBOL
    "\d1F984",  # UNICORN FACE
    "\d1400",  # Unified Canadian Aboriginal Syllabics
    "\d18B0",  # Unified Canadian Aboriginal Syllabics Extended
    "\d3400",  # Unified Ideographs Extension A, CJK
    "\d20000",  # Unified Ideographs Extension B, CJK
    "\d2A700",  # Unified Ideographs Extension C, CJK
    "\d2B740",  # Unified Ideographs Extension D, CJK
    "\d4E00",  # Unified Ideographs, CJK
    "\d222A",  # UNION
    "\d22D3",  # UNION, DOUBLE
    "\d22C3",  # union, generalized
    "\d228E",  # UNION, MULTISET
    "\d22C3",  # UNION, N-ARY
    "\d2A40",  # Unions, Intersections and
    "\d2129",  # unique element
    "\d001F",  # unit separator
    "\d241F",  # UNIT SEPARATOR, SYMBOL FOR
    "\d2200",  # universal quantifier
    "\d2672",  # UNIVERSAL RECYCLING SYMBOL
    "\d26AF",  # UNMARRIED PARTNERSHIP SYMBOL
    "\d2303",  # UP ARROWHEAD
    "\d261D",  # UP POINTING INDEX, WHITE
    "\d22F0",  # UP RIGHT DIAGONAL ELLIPSIS
    "\d22A5",  # UP TACK
    "\d031D",  # UP TACK BELOW, COMBINING
    "\d02D4",  # UP TACK, MODIFIER LETTER
    "\d2050",  # UP, CLOSE
    "\d219F",  # up, fast cursor
    "\d21DE",  # up, page
    "\d02EF",  # UPA Modifiers
    "\d2701",  # UPPER BLADE SCISSORS
    "\d2A1B",  # upper integral
    "\d2710",  # UPPER RIGHT PENCIL
    "\d0041",  # Uppercase Alphabet, Latin
    "\d01B1",  # UPSILON, LATIN CAPITAL LETTER
    "\d028A",  # UPSILON, LATIN SMALL LETTER
    "\d2308",  # upstile, apl
    "\d20E4",  # UPWARD POINTING TRIANGLE, COMBINING ENCLOSING
    "\d2191",  # UPWARDS ARROW
    "\d034E",  # UPWARDS ARROW BELOW, COMBINING
    "\d0350",  # Uralic Phonetic Alphabet, Diacritics for
    "\d2645",  # URANUS
    "\d26E2",  # uranus
    "\d203B",  # urdu paragraph separator
    "\d26B1",  # URN, FUNERAL
    "\d1F520",  # User Interface Input Status Symbols
    "\d1F500",  # User Interface Symbols
    "\d1F53A",  # User Interface Symbols
    "\d1F5BF",  # User Interface Symbols
    "\d030C",  # v above
    "\d1E7F",  # V WITH DOT BELOW, LATIN SMALL LETTER
    "\d01B2",  # V WITH HOOK, LATIN CAPITAL LETTER
    "\d028B",  # V WITH HOOK, LATIN SMALL LETTER
    "\d1E7D",  # V WITH TILDE, LATIN SMALL LETTER
    "\d036E",  # V, COMBINING LATIN SMALL LETTER
    "\d01B2",  # v, latin capital letter script
    "\d0245",  # V, LATIN CAPITAL LETTER TURNED
    "\d1D20",  # V, LATIN LETTER SMALL CAPITAL
    "\d028B",  # v, latin small letter script
    "\d028C",  # V, LATIN SMALL LETTER TURNED
    "\d1D65",  # V, LATIN SUBSCRIPT SMALL LETTER
    "\dA500",  # Vai
    "\d2665",  # valentine
    "\d22A8",  # valid
    "\d1F9DB",  # VAMPIRE
    "\d0BF7",  # varavu, tamil
    "\d0300",  # varia, greek
    "\d303E",  # VARIATION INDICATOR, IDEOGRAPHIC
    "\d180B",  # VARIATION SELECTOR ONE, MONGOLIAN FREE
    "\d180D",  # VARIATION SELECTOR THREE, MONGOLIAN FREE
    "\d180C",  # VARIATION SELECTOR TWO, MONGOLIAN FREE
    "\dFE00",  # VARIATION SELECTOR-1
    "\dFE00",  # Variation Selectors
    "\dE0100",  # Variation Selectors Supplement
    "\d223C",  # varies with
    "\d0BF5",  # varudam, tamil
    "\d20D1",  # vector
    "\d20D7",  # vector
    "\d2A2F",  # VECTOR OR CROSS PRODUCT
    "\d2295",  # vector pointing into page
    "\d2297",  # vector pointing into page
    "\d2299",  # vector pointing out of page
    "\d1CD0",  # Vedic Extensions
    "\d0CF1",  # Vedic Signs
    "\d0951",  # Vedic Tone Marks
    "\d2228",  # vee
    "\d1F345",  # Vegetable Symbols, Fruit and
    "\d1F6E5",  # Vehicle Symbols
    "\d1F680",  # Vehicles
    "\d2640",  # venus
    "\d2123",  # VERSICLE
    "\d007C",  # vertical bar
    "\d2980",  # VERTICAL BAR DELIMITER, TRIPLE
    "\d2758",  # Vertical Bar Dingbats
    "\d00A6",  # vertical bar, broken
    "\d2AFF",  # VERTICAL BAR, N-ARY WHITE
    "\d2AFE",  # VERTICAL BAR, WHITE
    "\d29D6",  # vertical bowtie
    "\d23B4",  # Vertical Brackets
    "\d22EE",  # VERTICAL ELLIPSIS
    "\dFE30",  # Vertical Form Variants
    "\d205E",  # VERTICAL FOUR DOTS
    "\d303B",  # VERTICAL IDEOGRAPHIC ITERATION MARK
    "\d007C",  # VERTICAL LINE
    "\d030D",  # VERTICAL LINE ABOVE, COMBINING
    "\d030E",  # VERTICAL LINE ABOVE, COMBINING DOUBLE
    "\d0329",  # VERTICAL LINE BELOW, COMBINING
    "\d0348",  # VERTICAL LINE BELOW, COMBINING DOUBLE
    "\d2AEE",  # Vertical Line Operators
    "\d20D2",  # VERTICAL LINE OVERLAY, COMBINING LONG
    "\d20D3",  # VERTICAL LINE OVERLAY, COMBINING SHORT
    "\d237F",  # VERTICAL LINE WITH MIDDLE DOT
    "\d2016",  # VERTICAL LINE, DOUBLE
    "\d02C8",  # VERTICAL LINE, MODIFIER LETTER
    "\d02CC",  # VERTICAL LINE, MODIFIER LETTER LOW
    "\d2223",  # Vertical Lines
    "\d20E6",  # VERTICAL STROKE OVERLAY, COMBINING DOUBLE
    "\d000B",  # vertical tabulation
    "\d240B",  # VERTICAL TABULATION, SYMBOL FOR
    "\d23DC",  # Vertical Text, Bracket Variants for
    "\d2047",  # Vertical Text, Double Punctuation for
    "\d033E",  # VERTICAL TILDE, COMBINING
    "\dFE10",  # Vertical Variants, Glyphs for
    "\dFE30",  # Vertical Variants, Glyphs for
    "\d0589",  # vertsaket, armenian
    "\d22D9",  # VERY MUCH GREATER-THAN
    "\d22D8",  # VERY MUCH LESS-THAN
    "\d270C",  # VICTORY HAND
    "\d1F4F7",  # Video Symbols, Audio and
    "\d20AB",  # vietnamese currency
    "\d2317",  # VIEWDATA SQUARE
    "\d0305",  # vinculum
    "\d0965",  # viram, devanagari deergh
    "\d0964",  # viram, devanagari purna
    "\d094D",  # VIRAMA, DEVANAGARI SIGN
    "\d0D4D",  # VIRAMA, MALAYALAM SIGN
    "\d1039",  # VIRAMA, MYANMAR SIGN
    "\d0DCA",  # virama, sinhala
    "\d1714",  # VIRAMA, TAGALOG SIGN
    "\d264D",  # VIRGO
    "\d002F",  # virgule
    "\d0903",  # VISARGA, DEVANAGARI SIGN
    "\d17C7",  # visarga, khmer
    "\d0B83",  # VISARGA, TAMIL SIGN
    "\d0F7F",  # visarga, tibetan
    "\d0295",  # VOICED FRICATIVE, LATIN LETTER PHARYNGEAL
    "\d309E",  # VOICED ITERATION MARK, HIRAGANA
    "\d30FE",  # VOICED ITERATION MARK, KATAKANA
    "\d02EC",  # VOICING, MODIFIER LETTER
    "\d1F30B",  # VOLCANO
    "\d26A1",  # VOLTAGE SIGN, HIGH
    "\d2230",  # VOLUME INTEGRAL
    "\d0306",  # vrachy, greek
    "\dFE00",  # vs1
    "\dE0100",  # vs17
    "\d000B",  # vt
    "\d00BD",  # VULGAR FRACTION ONE HALF
    "\d2151",  # VULGAR FRACTION ONE NINTH
    "\d00BC",  # VULGAR FRACTION ONE QUARTER
    "\d2150",  # VULGAR FRACTION ONE SEVENTH
    "\d2152",  # VULGAR FRACTION ONE TENTH
    "\d00BE",  # VULGAR FRACTION THREE QUARTERS
    "\d2153",  # Vulgar Fractions
    "\d1E83",  # W WITH ACUTE, LATIN SMALL LETTER
    "\d0175",  # W WITH CIRCUMFLEX, LATIN SMALL LETTER
    "\d1E85",  # W WITH DIAERESIS, LATIN SMALL LETTER
    "\d1E87",  # W WITH DOT ABOVE, LATIN SMALL LETTER
    "\d1E89",  # W WITH DOT BELOW, LATIN SMALL LETTER
    "\d1E81",  # W WITH GRAVE, LATIN SMALL LETTER
    "\d1E98",  # W WITH RING ABOVE, LATIN SMALL LETTER
    "\d1D21",  # W, LATIN LETTER SMALL CAPITAL
    "\d028D",  # W, LATIN SMALL LETTER TURNED
    "\d02B7",  # W, MODIFIER LETTER SMALL
    "\d0095",  # WAITING, MESSAGE
    "\d118A0",  # Warang Citi
    "\d26A0",  # WARNING SIGN
    "\d2620",  # Warning Signs
    "\d1F5D1",  # WASTEBASKET
    "\d231A",  # WATCH
    "\d1F403",  # WATER BUFFALO
    "\d301C",  # WAVE DASH
    "\d223F",  # WAVE, SINE
    "\d1F30A",  # WAVE, WATER
    "\d1F44B",  # WAVING HAND SIGN
    "\d3030",  # WAVY DASH
    "\d2307",  # WAVY LINE
    "\dFE4F",  # WAVY LOW LINE
    "\dFE4B",  # WAVY OVERLINE
    "\dFE4C",  # WAVY OVERLINE, DOUBLE
    "\d2600",  # Weather and Astrological Symbols
    "\d1F321",  # Weather Symbols
    "\d2600",  # weather, clear
    "\d2601",  # weather, cloudy
    "\d1F300",  # Weather, Landscape, and Sky Symbols
    "\d2602",  # weather, rainy
    "\d2614",  # weather, showery
    "\d2603",  # weather, snowy
    "\d028C",  # wedge
    "\d2227",  # wedge
    "\d2118",  # weierstrass elliptic function
    "\d2670",  # WEST SYRIAC CROSS
    "\d1F40B",  # WHALE
    "\d1F433",  # WHALE, SPOUTING
    "\d2638",  # WHEEL OF DHARMA
    "\d267F",  # WHEELCHAIR SYMBOL
    "\d25E6",  # WHITE BULLET
    "\d25CB",  # WHITE CIRCLE
    "\d26AA",  # WHITE CIRCLE, MEDIUM
    "\d26AC",  # WHITE CIRCLE, MEDIUM SMALL
    "\d274D",  # WHITE CIRCLE, SHADOWED
    "\d300E",  # WHITE CORNER BRACKET, LEFT
    "\d300F",  # WHITE CORNER BRACKET, RIGHT
    "\d2983",  # WHITE CURLY BRACKET, LEFT
    "\d2984",  # WHITE CURLY BRACKET, RIGHT
    "\d261F",  # WHITE DOWN POINTING INDEX
    "\d2690",  # WHITE FLAG
    "\d29D6",  # white framus
    "\d2639",  # WHITE FROWNING FACE
    "\d261C",  # WHITE LEFT POINTING INDEX
    "\d3016",  # WHITE LENTICULAR BRACKET, LEFT
    "\d3017",  # WHITE LENTICULAR BRACKET, RIGHT
    "\d2711",  # WHITE NIB
    "\d24EB",  # White on Black Circled Numbers
    "\d2985",  # WHITE PARENTHESIS, LEFT
    "\d2986",  # WHITE PARENTHESIS, RIGHT
    "\d261E",  # WHITE RIGHT POINTING INDEX
    "\d2704",  # WHITE SCISSORS
    "\dFE46",  # WHITE SESAME DOT
    "\d2616",  # WHITE SHOGI PIECE
    "\d263A",  # WHITE SMILING FACE
    "\d301A",  # WHITE SQUARE BRACKET, LEFT
    "\d301B",  # WHITE SQUARE BRACKET, RIGHT
    "\d2606",  # WHITE STAR
    "\d263C",  # WHITE SUN WITH RAYS
    "\d260F",  # WHITE TELEPHONE
    "\d3018",  # WHITE TORTOISE SHELL BRACKET, LEFT
    "\d3019",  # WHITE TORTOISE SHELL BRACKET, RIGHT
    "\d23E2",  # WHITE TRAPEZIUM
    "\d261D",  # WHITE UP POINTING INDEX
    "\d2AFE",  # WHITE VERTICAL BAR
    "\d2AFF",  # WHITE VERTICAL BAR, N-ARY
    "\d20E9",  # WIDE BRIDGE ABOVE, COMBINING
    "\d29D8",  # Wiggly Fences
    "\d2E3E",  # WIGGLY VERTICAL LINE
    "\d2060",  # wj
    "\d1F43A",  # WOLF FACE
    "\d1F469",  # WOMAN
    "\d1F46F",  # WOMAN WITH BUNNY EARS
    "\d1F475",  # WOMAN, OLDER
    "\d1F46D",  # WOMEN HOLDING HANDS, TWO
    "\d20A9",  # WON SIGN
    "\d2060",  # WORD JOINER
    "\d2E31",  # WORD SEPARATOR MIDDLE DOT
    "\d10100",  # Word Separators, Aegean
    "\d3300",  # Words, Squared Katakana
    "\d1361",  # WORDSPACE, ETHIOPIC
    "\d2692",  # working day symbol
    "\d2240",  # WREATH PRODUCT
    "\d270D",  # WRITING HAND
    "\d1F58E",  # WRITING HAND, LEFT
    "\d01F7",  # WYNN, LATIN CAPITAL LETTER
    "\d01BF",  # WYNN, LATIN LETTER
    "\d033D",  # X ABOVE, COMBINING
    "\d0353",  # X BELOW, COMBINING
    "\d2327",  # X IN A RECTANGLE BOX
    "\d1E8D",  # X WITH DIAERESIS, LATIN SMALL LETTER
    "\d1E8B",  # X WITH DOT ABOVE, LATIN SMALL LETTER
    "\d2717",  # X, BALLOT
    "\d2612",  # X, BALLOT BOX WITH
    "\d1F5D9",  # X, CANCELLATION
    "\d036F",  # X, COMBINING LATIN SMALL LETTER
    "\d2718",  # X, HEAVY BALLOT
    "\d2716",  # X, HEAVY MULTIPLICATION
    "\d02E3",  # X, MODIFIER LETTER SMALL
    "\d2715",  # X, MULTIPLICATION
    "\d22BB",  # XOR
    "\d00DD",  # Y WITH ACUTE, LATIN CAPITAL LETTER
    "\d00FD",  # Y WITH ACUTE, LATIN SMALL LETTER
    "\d0177",  # Y WITH CIRCUMFLEX, LATIN SMALL LETTER
    "\d0178",  # Y WITH DIAERESIS, LATIN CAPITAL LETTER
    "\d00FF",  # Y WITH DIAERESIS, LATIN SMALL LETTER
    "\d1E8F",  # Y WITH DOT ABOVE, LATIN SMALL LETTER
    "\d1EF5",  # Y WITH DOT BELOW, LATIN SMALL LETTER
    "\d1EF3",  # Y WITH GRAVE, LATIN SMALL LETTER
    "\d1EF7",  # Y WITH HOOK ABOVE, LATIN SMALL LETTER
    "\d01B4",  # Y WITH HOOK, LATIN SMALL LETTER
    "\d0233",  # Y WITH MACRON, LATIN SMALL LETTER
    "\d1E99",  # Y WITH RING ABOVE, LATIN SMALL LETTER
    "\d024E",  # Y WITH STROKE, LATIN CAPITAL LETTER
    "\d024F",  # Y WITH STROKE, LATIN SMALL LETTER
    "\d1EF9",  # Y WITH TILDE, LATIN SMALL LETTER
    "\d028F",  # Y, LATIN LETTER SMALL CAPITAL
    "\d028E",  # Y, LATIN SMALL LETTER TURNED
    "\d02B8",  # Y, MODIFIER LETTER SMALL
    "\d2144",  # Y, TURNED SANS-SERIF CAPITAL
    "\d0E4E",  # YAMAKKAN, THAI CHARACTER
    "\d0BF5",  # YEAR SIGN, TAMIL
    "\d00A5",  # YEN SIGN
    "\d058A",  # yentamna, armenian
    "\dA490",  # Yi Radicals
    "\dA000",  # Yi Syllables
    "\d05F0",  # Yiddish Digraphs
    "\d26DB",  # yield
    "\d22A3",  # yield, does not
    "\d22A2",  # yields
    "\d4DC0",  # Yijing / I Ching Hexagram Symbols
    "\d268A",  # Yijing / I Ching Monogram and Digram Symbols
    "\d2630",  # Yijing / I Ching Trigram Symbols
    "\d262F",  # YIN YANG
    "\d021D",  # YOGH, LATIN SMALL LETTER
    "\d0345",  # YPOGEGRAMMENI, COMBINING GREEK
    "\d01A6",  # YR, LATIN LETTER
    "\d00A5",  # yuan sign
    "\d01B6",  # z bar, latin small letter
    "\d22FF",  # Z NOTATION BAG MEMBERSHIP
    "\d2981",  # Z NOTATION SPOT
    "\d2982",  # Z NOTATION TYPE COLON
    "\d017A",  # Z WITH ACUTE, LATIN SMALL LETTER
    "\d017E",  # Z WITH CARON, LATIN SMALL LETTER
    "\d1E91",  # Z WITH CIRCUMFLEX, LATIN SMALL LETTER
    "\d0291",  # Z WITH CURL, LATIN SMALL LETTER
    "\d017C",  # Z WITH DOT ABOVE, LATIN SMALL LETTER
    "\d1E93",  # Z WITH DOT BELOW, LATIN SMALL LETTER
    "\d0225",  # Z WITH HOOK, LATIN SMALL LETTER
    "\d1E95",  # Z WITH LINE BELOW, LATIN SMALL LETTER
    "\d0290",  # Z WITH RETROFLEX HOOK, LATIN SMALL LETTER
    "\d01B6",  # Z WITH STROKE, LATIN SMALL LETTER
    "\d0240",  # Z WITH SWASH TAIL, LATIN SMALL LETTER
    "\d2128",  # Z, BLACK-LETTER CAPITAL
    "\d2124",  # Z, DOUBLE-STRUCK CAPITAL
    "\d1D22",  # Z, LATIN LETTER SMALL CAPITAL
    "\d11A00",  # Zanabazar Square
    "\d2700",  # Zapf Dingbats Series 100, ITC
    "\d200D",  # ZERO WIDTH JOINER
    "\dFEFF",  # ZERO WIDTH NO-BREAK SPACE
    "\d200C",  # ZERO WIDTH NON-JOINER
    "\d200B",  # ZERO WIDTH SPACE
    "\d24EA",  # ZERO, CIRCLED DIGIT
    "\d3007",  # ZERO, IDEOGRAPHIC NUMBER
    "\d2070",  # ZERO, SUPERSCRIPT
    "\d035B",  # ZIGZAG ABOVE, COMBINING
    "\d1F400",  # Zodiac, Signs of the Asian
    "\d2648",  # Zodiacal Symbols
    "\d1F9DF",  # ZOMBIE
    "\d200D",  # zwj
    "\dFEFF",  # zwnbsp
    "\d200C",  # zwnj
    "\d200B",  # zwsp
    ]
    test_data.each do |string|
      assert @validator.valid_encoding?(string), "U10_Index: #{string}"
      assert string.force_encoding("UTF-8").valid_encoding?, "U10_Index: #{string}" if @vercheck
    end
  end

end

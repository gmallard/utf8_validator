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
    "\u00C1",  # A WITH ACUTE, LATIN CAPITAL LETTER
    "\u00E1",  # A WITH ACUTE, LATIN SMALL LETTER
    "\u0103",  # A WITH BREVE, LATIN SMALL LETTER
    "\u01CE",  # A WITH CARON, LATIN SMALL LETTER
    "\u00C2",  # A WITH CIRCUMFLEX, LATIN CAPITAL LETTER
    "\u00E2",  # A WITH CIRCUMFLEX, LATIN SMALL LETTER
    "\u00C4",  # A WITH DIAERESIS, LATIN CAPITAL LETTER
    "\u00E4",  # A WITH DIAERESIS, LATIN SMALL LETTER
    "\u0227",  # A WITH DOT ABOVE, LATIN SMALL LETTER
    "\u1EA1",  # A WITH DOT BELOW, LATIN SMALL LETTER
    "\u0201",  # A WITH DOUBLE GRAVE, LATIN SMALL LETTER
    "\u00C0",  # A WITH GRAVE, LATIN CAPITAL LETTER
    "\u00E0",  # A WITH GRAVE, LATIN SMALL LETTER
    "\u1EA3",  # A WITH HOOK ABOVE, LATIN SMALL LETTER
    "\u0203",  # A WITH INVERTED BREVE, LATIN SMALL LETTER
    "\u0101",  # A WITH MACRON, LATIN SMALL LETTER
    "\u0105",  # A WITH OGONEK, LATIN SMALL LETTER
    "\u1E9A",  # A WITH RIGHT HALF RING, LATIN SMALL LETTER
    "\u00C5",  # A WITH RING ABOVE, LATIN CAPITAL LETTER
    "\u00E5",  # A WITH RING ABOVE, LATIN SMALL LETTER
    "\u1E01",  # A WITH RING BELOW, LATIN SMALL LETTER
    "\u023A",  # A WITH STROKE, LATIN CAPITAL LETTER
    "\u00C3",  # A WITH TILDE, LATIN CAPITAL LETTER
    "\u00E3",  # A WITH TILDE, LATIN SMALL LETTER
    "\u0363",  # A, COMBINING LATIN SMALL LETTER
    "\u1D00",  # A, LATIN LETTER SMALL CAPITAL
    "\u0251",  # a, latin small letter script
    "\u0250",  # A, LATIN SMALL LETTER TURNED
    "\u055F",  # ABBREVIATION MARK, ARMENIAN
    "\u070F",  # ABBREVIATION MARK, SYRIAC
    "\u0970",  # ABBREVIATION SIGN, DEVANAGARI
    "\u3371",  # Abbreviations, Squared Latin
    "\u18B0",  # Aboriginal Syllabics Extended, Unified Canadian
    "\u1400",  # Aboriginal Syllabics, Unified Canadian
    "\u0315",  # ABOVE RIGHT, COMBINING COMMA
    "\u0358",  # ABOVE RIGHT, COMBINING DOT
    "\u0312",  # above, cedilla
    "\u034C",  # ABOVE, COMBINING ALMOST EQUAL TO
    "\u20D4",  # ABOVE, COMBINING ANTICLOCKWISE ARROW
    "\u20F0",  # ABOVE, COMBINING ASTERISK
    "\u0346",  # ABOVE, COMBINING BRIDGE
    "\u20D5",  # ABOVE, COMBINING CLOCKWISE ARROW
    "\u0313",  # ABOVE, COMBINING COMMA
    "\u20D4",  # above, combining counterclockwise arrow
    "\u0307",  # ABOVE, COMBINING DOT
    "\u030E",  # ABOVE, COMBINING DOUBLE VERTICAL LINE
    "\u20DC",  # ABOVE, COMBINING FOUR DOTS
    "\u034B",  # ABOVE, COMBINING HOMOTHETIC
    "\u0309",  # ABOVE, COMBINING HOOK
    "\u031A",  # ABOVE, COMBINING LEFT ANGLE
    "\u20D6",  # ABOVE, COMBINING LEFT ARROW
    "\u0351",  # ABOVE, COMBINING LEFT HALF RING
    "\u20D0",  # ABOVE, COMBINING LEFT HARPOON
    "\u20E1",  # ABOVE, COMBINING LEFT RIGHT ARROW
    "\u034A",  # ABOVE, COMBINING NOT TILDE
    "\u0314",  # ABOVE, COMBINING REVERSED COMMA
    "\u20D7",  # ABOVE, COMBINING RIGHT ARROW
    "\u0350",  # ABOVE, COMBINING RIGHT ARROWHEAD
    "\u0357",  # ABOVE, COMBINING RIGHT HALF RING
    "\u20D1",  # ABOVE, COMBINING RIGHT HARPOON
    "\u030A",  # ABOVE, COMBINING RING
    "\u20DB",  # ABOVE, COMBINING THREE DOTS
    "\u0312",  # ABOVE, COMBINING TURNED COMMA
    "\u030D",  # ABOVE, COMBINING VERTICAL LINE
    "\u20E9",  # ABOVE, COMBINING WIDE BRIDGE
    "\u033D",  # ABOVE, COMBINING X
    "\u035B",  # ABOVE, COMBINING ZIGZAG
    "\u02D9",  # ABOVE, DOT
    "\u0308",  # above, double dot
    "\u02DA",  # ABOVE, RING
    "\u030C",  # above, v
    "\u2AA1",  # absolute continuity
    "\u007C",  # absolute value
    "\u301A",  # abstract syntax bracket, left
    "\u301B",  # abstract syntax bracket, right
    "\u23E6",  # AC CURRENT
    "\u0317",  # ACCENT BELOW, COMBINING ACUTE
    "\u032D",  # ACCENT BELOW, COMBINING CIRCUMFLEX
    "\u0316",  # ACCENT BELOW, COMBINING GRAVE
    "\u00B4",  # ACCENT, ACUTE
    "\u005E",  # ACCENT, CIRCUMFLEX
    "\u0301",  # ACCENT, COMBINING ACUTE
    "\u0302",  # ACCENT, COMBINING CIRCUMFLEX
    "\u030B",  # ACCENT, COMBINING DOUBLE ACUTE
    "\u030F",  # ACCENT, COMBINING DOUBLE GRAVE
    "\u0300",  # ACCENT, COMBINING GRAVE
    "\u02DD",  # ACCENT, DOUBLE ACUTE
    "\u0060",  # ACCENT, GRAVE
    "\u02CA",  # ACCENT, MODIFIER LETTER ACUTE
    "\u02C6",  # ACCENT, MODIFIER LETTER CIRCUMFLEX
    "\u02DF",  # ACCENT, MODIFIER LETTER CROSS
    "\u02CB",  # ACCENT, MODIFIER LETTER GRAVE
    "\u02CF",  # ACCENT, MODIFIER LETTER LOW ACUTE
    "\u02CE",  # ACCENT, MODIFIER LETTER LOW GRAVE
    "\u00B4",  # accent, spacing acute
    "\u005E",  # accent, spacing circumflex
    "\u0060",  # accent, spacing grave
    "\u02DF",  # accent, swedish grave
    "\u26CC",  # accident
    "\u2100",  # ACCOUNT OF
    "\u1F464",  # account, guest
    "\u1F465",  # accounts
    "\u0006",  # ACKNOWLEDGE
    "\u0015",  # ACKNOWLEDGE, NEGATIVE
    "\u2406",  # ACKNOWLEDGE, SYMBOL FOR
    "\u2415",  # ACKNOWLEDGE, SYMBOL FOR NEGATIVE
    "\u205D",  # acrophonic symbol three, epidaurean
    "\u20E7",  # actuarial bend
    "\u00B4",  # ACUTE ACCENT
    "\u0317",  # ACUTE ACCENT BELOW, COMBINING
    "\u0301",  # ACUTE ACCENT, COMBINING
    "\u030B",  # ACUTE ACCENT, COMBINING DOUBLE
    "\u02DD",  # ACUTE ACCENT, DOUBLE
    "\u02CA",  # ACUTE ACCENT, MODIFIER LETTER
    "\u02CF",  # ACUTE ACCENT, MODIFIER LETTER LOW
    "\u00B4",  # acute accent, spacing
    "\u0341",  # ACUTE TONE MARK, COMBINING
    "\u0A71",  # ADDAK, GURMUKHI
    "\u2101",  # ADDRESSED TO THE SUBJECT
    "\u262C",  # ADI SHAKTI
    "\u1E900",  # Adlam
    "\u00C6",  # AE, LATIN CAPITAL LETTER
    "\u00C6",  # ae, latin capital ligature
    "\u1D01",  # AE, LATIN LETTER SMALL CAPITAL
    "\u00E6",  # AE, LATIN SMALL LETTER
    "\u1D02",  # AE, LATIN SMALL LETTER TURNED
    "\u00E6",  # ae, latin small ligature
    "\u10101",  # AEGEAN WORD SEPARATOR DOT
    "\u10100",  # AEGEAN WORD SEPARATOR LINE
    "\u2695",  # AESCULAPIUS, STAFF OF
    "\u060B",  # AFGHANI SIGN
    "\u01C0",  # African Letters for Clicks
    "\u11700",  # Ahom
    "\u1D25",  # AIN, LATIN LETTER
    "\u31F0",  # Ainu, Katakana Extensions for
    "\u2708",  # AIRPLANE
    "\u214D",  # AKTIESELSKAB
    "\u0DCA",  # AL-LAKUNA, SINHALA SIGN
    "\u23F0",  # ALARM CLOCK
    "\u10530",  # Albanian, Caucasian
    "\u1F700",  # Alchemical Symbols
    "\u2766",  # aldus leaf
    "\u2135",  # ALEF SYMBOL
    "\u2697",  # ALEMBIC
    "\u1F47E",  # ALIEN MONSTER
    "\u1F47D",  # ALIEN, EXTRATERRESTRIAL
    "\u232E",  # ALL AROUND-PROFILE
    "\u224C",  # ALL EQUAL TO
    "\u2200",  # ALL, FOR
    "\u2248",  # ALMOST EQUAL TO
    "\u034C",  # ALMOST EQUAL TO ABOVE, COMBINING
    "\u2249",  # ALMOST EQUAL TO, NOT
    "\u0251",  # ALPHA, LATIN SMALL LETTER
    "\u0252",  # ALPHA, LATIN SMALL LETTER TURNED
    "\uFB00",  # Alphabetic Presentation Forms
    "\u1F100",  # Alphanumeric Supplement, Enclosed
    "\u1D400",  # Alphanumeric Symbols, Mathematical
    "\u2460",  # Alphanumerics, Enclosed
    "\u223F",  # alternating current
    "\u2387",  # ALTERNATIVE KEY SYMBOL
    "\u01C2",  # ALVEOLAR CLICK, LATIN LETTER
    "\u25FB",  # always
    "\u0026",  # AMPERSAND
    "\u1F670",  # Ampersand and Ligature-et Ornaments
    "\u214B",  # AMPERSAND, TURNED
    "\u14400",  # Anatolian Hieroglyphs
    "\u2693",  # ANCHOR
    "\uFFF9",  # ANCHOR, INTERLINEAR ANNOTATION
    "\u2E0E",  # Ancient Greek Textual Symbols
    "\u22CF",  # AND, CURLY LOGICAL
    "\u2227",  # AND, LOGICAL
    "\u22C0",  # AND, N-ARY LOGICAL
    "\u2A51",  # Ands and Ors, Logical
    "\u1F47C",  # ANGEL, BABY
    "\u1F4A2",  # ANGER SYMBOL
    "\u0E5A",  # ANGKHANKHU, THAI CHARACTER
    "\u2220",  # ANGLE
    "\u031A",  # ANGLE ABOVE, COMBINING LEFT
    "\u2222",  # angle arc
    "\u0349",  # ANGLE BELOW, COMBINING LEFT
    "\u3008",  # ANGLE BRACKET, LEFT
    "\u300A",  # ANGLE BRACKET, LEFT DOUBLE
    "\u2329",  # ANGLE BRACKET, LEFT-POINTING
    "\u27E8",  # ANGLE BRACKET, MATHEMATICAL LEFT
    "\u27EA",  # ANGLE BRACKET, MATHEMATICAL LEFT DOUBLE
    "\u27E9",  # ANGLE BRACKET, MATHEMATICAL RIGHT
    "\u27EB",  # ANGLE BRACKET, MATHEMATICAL RIGHT DOUBLE
    "\u3009",  # ANGLE BRACKET, RIGHT
    "\u300B",  # ANGLE BRACKET, RIGHT DOUBLE
    "\u232A",  # ANGLE BRACKET, RIGHT-POINTING
    "\u3008",  # Angle Brackets, CJK
    "\u00AB",  # ANGLE QUOTATION MARK, LEFT-POINTING DOUBLE
    "\u00BB",  # ANGLE QUOTATION MARK, RIGHT-POINTING DOUBLE
    "\u2039",  # ANGLE QUOTATION MARK, SINGLE LEFT-POINTING
    "\u203A",  # ANGLE QUOTATION MARK, SINGLE RIGHT-POINTING
    "\u276E",  # Angle Quotation Marks, Ornamental
    "\u22BE",  # ANGLE WITH ARC, RIGHT
    "\u2221",  # ANGLE, MEASURED
    "\u221F",  # ANGLE, RIGHT
    "\u2222",  # ANGLE, SPHERICAL
    "\u00AC",  # angled dash
    "\u221F",  # Angles
    "\u299B",  # Angles and Measured Angles
    "\u212B",  # ANGSTROM SIGN
    "\u1F42D",  # Animal Faces
    "\u1F400",  # Animal Symbols
    "\u1F980",  # Animal Symbols
    "\u2625",  # ANKH
    "\uFFF9",  # ANNOTATION ANCHOR, INTERLINEAR
    "\uFFFA",  # ANNOTATION SEPARATOR, INTERLINEAR
    "\u06D6",  # Annotation Signs, Arabic Koranic
    "\u06D6",  # Annotation Signs, Arabic Qur'anic
    "\uFFFB",  # ANNOTATION TERMINATOR, INTERLINEAR
    "\uFFF9",  # Annotation, Interlinear
    "\u3190",  # Annotation, Japanese Kanbun Ideographic
    "\u20E7",  # ANNUITY SYMBOL, COMBINING
    "\u00B7",  # ano teleia, greek
    "\u1F41C",  # ANT
    "\u20D4",  # ANTICLOCKWISE ARROW ABOVE, COMBINING
    "\u2233",  # ANTICLOCKWISE CONTOUR INTEGRAL
    "\u2A11",  # ANTICLOCKWISE INTEGRATION
    "\u20DA",  # ANTICLOCKWISE RING OVERLAY, COMBINING
    "\u2183",  # antisigma, claudian
    "\u0901",  # anunasika, devanagari
    "\u0902",  # ANUSVARA, DEVANAGARI SIGN
    "\u17C6",  # anusvara, khmer
    "\u0F7E",  # anusvara, tibetan
    "\u230A",  # apl downstile
    "\u2336",  # APL Functional Symbols
    "\u2218",  # apl jot
    "\u00AF",  # apl overbar
    "\u0027",  # apl quote
    "\u2223",  # apl stile
    "\u223C",  # apl tilde
    "\u2308",  # apl upstile
    "\u0027",  # APOSTROPHE
    "\u2019",  # apostrophe
    "\u055A",  # APOSTROPHE, ARMENIAN
    "\u02BC",  # APOSTROPHE, MODIFIER LETTER
    "\u02EE",  # APOSTROPHE, MODIFIER LETTER DOUBLE
    "\u02BC",  # apostrophe, neutral
    "\u0027",  # apostrophe-quote
    "\u2183",  # apostrophic c
    "\u009F",  # APPLICATION PROGRAM COMMAND
    "\u2061",  # APPLICATION, FUNCTION
    "\u2250",  # APPROACHES THE LIMIT
    "\u2245",  # APPROXIMATELY EQUAL TO
    "\u2257",  # approximately equal to
    "\u2652",  # AQUARIUS
    "\u10A80",  # Arabian, Old North
    "\u10A60",  # Arabian, Old South
    "\u0600",  # Arabic
    "\u0621",  # Arabic Alphabet
    "\u0653",  # Arabic Combining Marks
    "\u060C",  # ARABIC COMMA
    "\uFB50",  # Arabic Contextual Form Glyphs
    "\uFE80",  # Arabic Contextual Form Glyphs
    "\u060D",  # ARABIC DATE SEPARATOR
    "\u066B",  # ARABIC DECIMAL SEPARATOR
    "\u08A0",  # Arabic Extended-A
    "\u0671",  # Arabic Extensions
    "\u06D4",  # ARABIC FULL STOP
    "\u064B",  # Arabic Harakat
    "\u0610",  # Arabic Honorifics
    "\u0640",  # arabic kashida
    "\u06D6",  # Arabic Koranic Annotation Signs
    "\u06C0",  # arabic letter hamzah on ha
    "\u06C0",  # ARABIC LETTER HEH WITH YEH ABOVE
    "\u061C",  # ARABIC LETTER MARK
    "\u0671",  # Arabic Letters, Extended
    "\u0750",  # Arabic Letters, Extended
    "\uFDFD",  # ARABIC LIGATURE BISMILLAH AR-RAHMAN AR-RAHEEM
    "\uFBEA",  # Arabic Ligatures
    "\u1EE00",  # Arabic Mathematical Alphabetic Symbols
    "\u066C",  # arabic phrase separator
    "\uFE70",  # Arabic Points, Glyphs for Spacing Forms of
    "\uFB50",  # Arabic Presentation Forms-A
    "\uFE70",  # Arabic Presentation Forms-B
    "\u060C",  # Arabic Punctuation
    "\u061F",  # ARABIC QUESTION MARK
    "\u06D6",  # Arabic Qur'anic Annotation Signs
    "\u061B",  # ARABIC SEMICOLON
    "\uFBB2",  # Arabic Spacing Diacritics
    "\u0600",  # Arabic Subtending Marks
    "\u0750",  # Arabic Supplement
    "\u0640",  # ARABIC TATWEEL
    "\u066C",  # ARABIC THOUSANDS SEPARATOR
    "\u0660",  # Arabic-Indic Digits
    "\u06F0",  # Arabic-Indic Digits, Eastern
    "\u10840",  # Aramaic, Imperial
    "\u2312",  # ARC
    "\u2222",  # arc, angle
    "\u22BE",  # ARC, RIGHT ANGLE WITH
    "\u032B",  # ARCH BELOW, COMBINING INVERTED DOUBLE
    "\u25DC",  # Arcs
    "\uAC00",  # Area, Asian Scripts
    "\u3400",  # Area, CJK Ideographs
    "\u2E80",  # Area, CJK Phonetics and Symbols
    "\uF900",  # Area, Compatibility and Specials
    "\u0000",  # Area, General Scripts
    "\uAC00",  # Area, Korean Hangul Syllables
    "\uE000",  # Area, Private Use
    "\u20000",  # Area, Supplementary CJK Ideographs
    "\u10000",  # Area, Supplementary General Scripts
    "\u2000",  # Area, Symbols
    "\uFFF80",  # Area-A, Supplementary Private Use
    "\u10FF80",  # Area-B, Supplementary Private Use
    "\u20B3",  # argentinian former currency
    "\u2648",  # ARIES
    "\u055F",  # ARMENIAN ABBREVIATION MARK
    "\u0530",  # Armenian Alphabet
    "\u055A",  # ARMENIAN APOSTROPHE
    "\u055C",  # armenian batsaganchakan nshan
    "\u055D",  # armenian bowt
    "\u0531",  # Armenian Capital Letters
    "\u055D",  # ARMENIAN COMMA
    "\u055B",  # ARMENIAN EMPHASIS MARK
    "\u055C",  # ARMENIAN EXCLAMATION MARK
    "\u0589",  # ARMENIAN FULL STOP
    "\u055E",  # armenian hartsakan nshan
    "\u058A",  # ARMENIAN HYPHEN
    "\uFB13",  # Armenian Ligatures
    "\u055F",  # armenian patiw
    "\u055E",  # ARMENIAN QUESTION MARK
    "\u055B",  # armenian shesht
    "\u0561",  # Armenian Small Letters
    "\u0589",  # armenian vertsaket
    "\u058A",  # armenian yentamna
    "\u20D4",  # ARROW ABOVE, COMBINING ANTICLOCKWISE
    "\u20D5",  # ARROW ABOVE, COMBINING CLOCKWISE
    "\u20D4",  # arrow above, combining counterclockwise
    "\u20D6",  # ARROW ABOVE, COMBINING LEFT
    "\u20E1",  # ARROW ABOVE, COMBINING LEFT RIGHT
    "\u20D7",  # ARROW ABOVE, COMBINING RIGHT
    "\u0362",  # ARROW BELOW, COMBINING DOUBLE RIGHTWARDS
    "\u20EE",  # ARROW BELOW, COMBINING LEFT
    "\u034D",  # ARROW BELOW, COMBINING LEFT RIGHT
    "\u20EF",  # ARROW BELOW, COMBINING RIGHT
    "\u034E",  # ARROW BELOW, COMBINING UPWARDS
    "\u2794",  # Arrow Dingbats
    "\u25C5",  # arrow indicator, backward
    "\u25BB",  # arrow indicator, forward
    "\u20EA",  # ARROW OVERLAY, COMBINING LEFTWARDS
    "\u2193",  # ARROW, DOWNWARDS
    "\u2301",  # ARROW, ELECTRIC
    "\u2190",  # ARROW, LEFTWARDS
    "\u2192",  # ARROW, RIGHTWARDS
    "\u2191",  # ARROW, UPWARDS
    "\u0350",  # ARROWHEAD ABOVE, COMBINING RIGHT
    "\u0354",  # ARROWHEAD BELOW, COMBINING LEFT
    "\u0355",  # ARROWHEAD BELOW, COMBINING RIGHT
    "\u2304",  # ARROWHEAD, DOWN
    "\u2303",  # ARROWHEAD, UP
    "\u02C2",  # Arrowheads, Modifier Letter
    "\u2190",  # Arrows
    "\u2794",  # Arrows, Dingbat
    "\u21CD",  # Arrows, Double
    "\u27F5",  # Arrows, Long
    "\u2B30",  # Arrows, Mathematical
    "\u2B00",  # Arrows, Miscellaneous
    "\u1F500",  # Arrows, User Interface
    "\u1F519",  # Arrows, Words with
    "\u27F0",  # Arrows-A Supplement
    "\u2900",  # Arrows-B, Supplemental
    "\u1F800",  # Arrows-C, Supplemental
    "\u260A",  # ASCENDING NODE
    "\u0000",  # ASCII C0 Control Codes
    "\u0030",  # ASCII Digits
    "\u0020",  # ASCII Punctuation and Symbols
    "\uFF01",  # ASCII Variants, Fullwidth
    "\u00E6",  # ash
    "\uAC00",  # Asian Scripts Area
    "\u22A6",  # ASSERTION
    "\u002A",  # ASTERISK
    "\u20F0",  # ASTERISK ABOVE, COMBINING
    "\u0359",  # ASTERISK BELOW, COMBINING
    "\u2722",  # Asterisk Dingbats
    "\u2217",  # ASTERISK OPERATOR
    "\u229B",  # ASTERISK OPERATOR, CIRCLED
    "\u204E",  # ASTERISK, LOW
    "\u2722",  # Asterisks
    "\u1F7AF",  # Asterisks
    "\u2051",  # ASTERISKS ALIGNED VERTICALLY, TWO
    "\u2042",  # ASTERISM
    "\u26B3",  # Astrological Signs
    "\u0F15",  # Astrological Signs, Tibetan
    "\u263D",  # Astrological Symbols
    "\u2600",  # Astrological Symbols, Weather and
    "\u2248",  # asymptotic to
    "\u2243",  # ASYMPTOTICALLY EQUAL TO
    "\u2244",  # ASYMPTOTICALLY EQUAL TO, NOT
    "\u0040",  # at sign
    "\u0040",  # AT, COMMERCIAL
    "\u269B",  # ATOM SYMBOL
    "\u1F4F7",  # Audio and Video Symbols
    "\u20B3",  # AUSTRAL SIGN
    "\u093D",  # AVAGRAHA, DEVANAGARI SIGN
    "\u10B00",  # Avestan
    "\u0B83",  # aytham, tamil
    "\u1E03",  # B WITH DOT ABOVE, LATIN SMALL LETTER
    "\u1E05",  # B WITH DOT BELOW, LATIN SMALL LETTER
    "\u0181",  # B WITH HOOK, LATIN CAPITAL LETTER
    "\u0253",  # B WITH HOOK, LATIN SMALL LETTER
    "\u1E07",  # B WITH LINE BELOW, LATIN SMALL LETTER
    "\u0243",  # B WITH STROKE, LATIN CAPITAL LETTER
    "\u0180",  # B WITH STROKE, LATIN SMALL LETTER
    "\u0183",  # B WITH TOPBAR, LATIN SMALL LETTER
    "\u0299",  # B, LATIN LETTER SMALL CAPITAL
    "\u1D03",  # B, LATIN LETTER SMALL CAPITAL BARRED
    "\u212C",  # B, SCRIPT CAPITAL
    "\u1F476",  # BABY
    "\u1F47C",  # BABY ANGEL
    "\u0264",  # baby gamma, latin small letter
    "\u005C",  # backslash
    "\u20E0",  # BACKSLASH, COMBINING ENCLOSING CIRCLE
    "\u0008",  # BACKSPACE
    "\u2408",  # BACKSPACE, SYMBOL FOR
    "\u25C5",  # backward arrow indicator
    "\u2207",  # backward difference
    "\u008C",  # BACKWARD, PARTIAL LINE
    "\u228E",  # bag addition
    "\u27E6",  # bag bracket, left
    "\u27E7",  # bag bracket, right
    "\u266F",  # bag count, infix
    "\u22FF",  # BAG MEMBERSHIP, Z NOTATION
    "\u2A41",  # bag subtraction
    "\u0E3F",  # BAHT, THAI CURRENCY SYMBOL
    "\u1B00",  # Balinese
    "\u1B50",  # Balinese Digits
    "\u1B61",  # Balinese Musical Symbols
    "\u2610",  # BALLOT BOX
    "\u2611",  # BALLOT BOX WITH CHECK
    "\u2612",  # BALLOT BOX WITH X
    "\u1F5F3",  # Ballot Symbols
    "\u2717",  # BALLOT X
    "\u2718",  # BALLOT X, HEAVY
    "\uA6A0",  # Bamum
    "\u16800",  # Bamum Supplement
    "\u0021",  # bang
    "\u2758",  # Bar Dingbats, Vertical
    "\u29EE",  # Bar Symbols, Error
    "\u00A6",  # BAR, BROKEN
    "\u2015",  # BAR, HORIZONTAL
    "\u007C",  # bar, vertical
    "\u2AFE",  # BAR, WHITE VERTICAL
    "\u1F488",  # BARBER POLE
    "\u1D03",  # BARRED B, LATIN LETTER SMALL CAPITAL
    "\u019F",  # barred o, latin capital letter
    "\u0275",  # BARRED O, LATIN SMALL LETTER
    "\u22A5",  # base
    "\u26BE",  # BASEBALL
    "\u2669",  # Basic Musical Symbols
    "\u16AD0",  # Bassa Vah
    "\u1F987",  # BAT
    "\u1BC0",  # Batak
    "\u055C",  # batsaganchakan nshan, armenian
    "\u1F50B",  # BATTERY
    "\u2694",  # battleground symbol
    "\u26F1",  # beach, bathing
    "\u266B",  # BEAMED EIGHTH NOTES
    "\u266B",  # beamed quavers
    "\u266C",  # beamed semiquavers
    "\u266C",  # BEAMED SIXTEENTH NOTES
    "\u1F43B",  # BEAR FACE
    "\u2235",  # BECAUSE
    "\u1F404",  # beef (on menus)
    "\u0007",  # BELL
    "\u1F514",  # BELL
    "\u237E",  # BELL SYMBOL
    "\u2407",  # BELL, SYMBOL FOR
    "\u0317",  # BELOW, COMBINING ACUTE ACCENT
    "\u0359",  # BELOW, COMBINING ASTERISK
    "\u032E",  # BELOW, COMBINING BREVE
    "\u032A",  # BELOW, COMBINING BRIDGE
    "\u032C",  # BELOW, COMBINING CARON
    "\u032D",  # BELOW, COMBINING CIRCUMFLEX ACCENT
    "\u0326",  # BELOW, COMBINING COMMA
    "\u0324",  # BELOW, COMBINING DIAERESIS
    "\u0323",  # BELOW, COMBINING DOT
    "\u035C",  # BELOW, COMBINING DOUBLE BREVE
    "\u035F",  # BELOW, COMBINING DOUBLE MACRON
    "\u0362",  # BELOW, COMBINING DOUBLE RIGHTWARDS ARROW
    "\u035A",  # BELOW, COMBINING DOUBLE RING
    "\u0348",  # BELOW, COMBINING DOUBLE VERTICAL LINE
    "\u031E",  # BELOW, COMBINING DOWN TACK
    "\u0347",  # BELOW, COMBINING EQUALS SIGN
    "\u0316",  # BELOW, COMBINING GRAVE ACCENT
    "\u032F",  # BELOW, COMBINING INVERTED BREVE
    "\u033A",  # BELOW, COMBINING INVERTED BRIDGE
    "\u032B",  # BELOW, COMBINING INVERTED DOUBLE ARCH
    "\u0349",  # BELOW, COMBINING LEFT ANGLE
    "\u20EE",  # BELOW, COMBINING LEFT ARROW
    "\u0354",  # BELOW, COMBINING LEFT ARROWHEAD
    "\u031C",  # BELOW, COMBINING LEFT HALF RING
    "\u034D",  # BELOW, COMBINING LEFT RIGHT ARROW
    "\u0318",  # BELOW, COMBINING LEFT TACK
    "\u0331",  # BELOW, COMBINING MACRON
    "\u0320",  # BELOW, COMBINING MINUS SIGN
    "\u0321",  # BELOW, COMBINING PALATALIZED HOOK
    "\u031F",  # BELOW, COMBINING PLUS SIGN
    "\u0322",  # BELOW, COMBINING RETROFLEX HOOK
    "\u20EF",  # BELOW, COMBINING RIGHT ARROW
    "\u0355",  # BELOW, COMBINING RIGHT ARROWHEAD
    "\u0339",  # BELOW, COMBINING RIGHT HALF RING
    "\u0319",  # BELOW, COMBINING RIGHT TACK
    "\u0325",  # BELOW, COMBINING RING
    "\u033C",  # BELOW, COMBINING SEAGULL
    "\u033B",  # BELOW, COMBINING SQUARE
    "\u0330",  # BELOW, COMBINING TILDE
    "\u031D",  # BELOW, COMBINING UP TACK
    "\u034E",  # BELOW, COMBINING UPWARDS ARROW
    "\u0329",  # BELOW, COMBINING VERTICAL LINE
    "\u0353",  # BELOW, COMBINING X
    "\u026C",  # BELT, LATIN SMALL LETTER L WITH
    "\u20E7",  # bend, actuarial
    "\u0980",  # Bengali
    "\u0995",  # Bengali Consonants
    "\u09F2",  # Bengali Currency Signs
    "\u09BE",  # Bengali Dependent Vowel Signs
    "\u09E6",  # Bengali Digits
    "\u09CD",  # bengali hasant
    "\u0985",  # Bengali Independent Vowels
    "\u09FA",  # BENGALI ISSHAR
    "\u09F2",  # BENGALI RUPEE MARK
    "\u09F3",  # BENGALI RUPEE SIGN
    "\u232C",  # BENZENE RING
    "\u212C",  # bernoulli function
    "\u2136",  # BET SYMBOL
    "\u03D0",  # BETA SYMBOL, GREEK
    "\u03D0",  # beta, curled
    "\u226C",  # BETWEEN
    "\u1F375",  # Beverage Symbols
    "\u2615",  # BEVERAGE, HOT
    "\u11C00",  # Bhaiksuki
    "\u202A",  # Bidirectional Format Characters
    "\uFA0C",  # Big 5, Duplicate Characters from
    "\u29F9",  # BIG REVERSE SOLIDUS
    "\u29F8",  # BIG SOLIDUS
    "\u2916",  # bijection
    "\u0298",  # BILABIAL CLICK, LATIN LETTER
    "\u02AC",  # BILABIAL PERCUSSIVE, LATIN LETTER
    "\u0902",  # bindu, devanagari
    "\u2623",  # BIOHAZARD SIGN
    "\u1F426",  # BIRD
    "\u1800",  # BIRGA, MONGOLIAN
    "\uFDFD",  # BISMILLAH AR-RAHMAN AR-RAHEEM, ARABIC LIGATURE
    "\u20BF",  # BITCOIN SIGN
    "\u25CF",  # BLACK CIRCLE
    "\u26AB",  # BLACK CIRCLE, MEDIUM
    "\u2691",  # BLACK FLAG
    "\u1F5A4",  # BLACK HEART
    "\u29D7",  # BLACK HOURGLASS
    "\u261A",  # BLACK LEFT POINTING INDEX
    "\u204C",  # BLACK LEFTWARDS BULLET
    "\u3010",  # BLACK LENTICULAR BRACKET, LEFT
    "\u3011",  # BLACK LENTICULAR BRACKET, RIGHT
    "\u29EB",  # BLACK LOZENGE
    "\u25FE",  # BLACK MEDIUM SMALL SQUARE
    "\u25FC",  # BLACK MEDIUM SQUARE
    "\u2712",  # BLACK NIB
    "\u25B0",  # BLACK PARALLELOGRAM
    "\u261B",  # BLACK RIGHT POINTING INDEX
    "\u204D",  # BLACK RIGHTWARDS BULLET
    "\u2702",  # BLACK SCISSORS
    "\u2617",  # BLACK SHOGI PIECE
    "\u2022",  # black small circle
    "\u263B",  # BLACK SMILING FACE
    "\u2605",  # BLACK STAR
    "\u2600",  # BLACK SUN WITH RAYS
    "\u260E",  # BLACK TELEPHONE
    "\u212D",  # BLACK-LETTER CAPITAL C
    "\u210C",  # BLACK-LETTER CAPITAL H
    "\u2111",  # BLACK-LETTER CAPITAL I
    "\u211C",  # BLACK-LETTER CAPITAL R
    "\u2128",  # BLACK-LETTER CAPITAL Z
    "\u1D504",  # Black-letter Mathematical Symbols
    "\u2422",  # BLANK SYMBOL
    "\u2580",  # Block Elements
    "\u0017",  # BLOCK, END OF TRANSMISSION
    "\u2588",  # BLOCK, FULL
    "\u2417",  # BLOCK, SYMBOL FOR END OF TRANSMISSION
    "\u1F421",  # BLOWFISH
    "\u1F417",  # BOAR
    "\u26F4",  # boat terminal
    "\u2C80",  # Bohairic Coptic
    "\u1D7CE",  # Bold Digits
    "\u1D7EC",  # Bold Digits, Sans-serif
    "\u1D56C",  # Bold Fraktur Mathematical Symbols
    "\u1D6A8",  # Bold Greek Mathematical Symbols
    "\u1D756",  # Bold Greek Mathematical Symbols, Sans-serif
    "\u1D71C",  # Bold Italic Greek Mathematical Symbols
    "\u1D790",  # Bold Italic Greek Mathematical Symbols, Sans-serif
    "\u1D468",  # Bold Italic Mathematical Symbols
    "\u1D63C",  # Bold Italic Mathematical Symbols, Sans-serif
    "\u1D400",  # Bold Mathematical Symbols
    "\u1D5D4",  # Bold Mathematical Symbols, Sans-serif
    "\u1D4D0",  # Bold Script Mathematical Symbols
    "\uFEFF",  # bom
    "\u1F4A3",  # BOMB
    "\u1F56E",  # BOOK
    "\u1F4D5",  # Books
    "\u31A0",  # Bopomofo Extensions, Chinese
    "\u3100",  # Bopomofo, Chinese
    "\u22A5",  # bottom
    "\u055D",  # bowt, armenian
    "\u22C8",  # BOWTIE
    "\u29D1",  # Bowtie Symbols
    "\u2A1D",  # bowtie, large
    "\u29D6",  # bowtie, vertical
    "\u2500",  # Box Drawing
    "\u2611",  # BOX WITH CHECK, BALLOT
    "\u2612",  # BOX WITH X, BALLOT
    "\u2610",  # BOX, BALLOT
    "\u2423",  # BOX, OPEN
    "\u237D",  # BOX, SHOULDERED OPEN
    "\u2327",  # BOX, X IN A RECTANGLE
    "\u1F466",  # BOY
    "\u27E8",  # bra
    "\u007D",  # brace, closing
    "\u007B",  # brace, opening
    "\u239B",  # Bracket Pieces
    "\u23B0",  # Bracket Pieces
    "\u23DC",  # Bracket Variants for Vertical Text
    "\u2045",  # BRACKET WITH QUILL, LEFT SQUARE
    "\u2046",  # BRACKET WITH QUILL, RIGHT SQUARE
    "\u007D",  # bracket, closing curly
    "\u005D",  # bracket, closing square
    "\u301A",  # bracket, left abstract syntax
    "\u3008",  # BRACKET, LEFT ANGLE
    "\u27E6",  # bracket, left bag
    "\u3010",  # BRACKET, LEFT BLACK LENTICULAR
    "\u27EA",  # bracket, left chevron
    "\u300C",  # BRACKET, LEFT CORNER
    "\u007B",  # BRACKET, LEFT CURLY
    "\u300A",  # BRACKET, LEFT DOUBLE ANGLE
    "\u27E8",  # bracket, left sequence
    "\u005B",  # BRACKET, LEFT SQUARE
    "\u3014",  # BRACKET, LEFT TORTOISE SHELL
    "\u300E",  # BRACKET, LEFT WHITE CORNER
    "\u2983",  # BRACKET, LEFT WHITE CURLY
    "\u3016",  # BRACKET, LEFT WHITE LENTICULAR
    "\u301A",  # BRACKET, LEFT WHITE SQUARE
    "\u3018",  # BRACKET, LEFT WHITE TORTOISE SHELL
    "\u2329",  # BRACKET, LEFT-POINTING ANGLE
    "\u27E8",  # BRACKET, MATHEMATICAL LEFT ANGLE
    "\u27EA",  # BRACKET, MATHEMATICAL LEFT DOUBLE ANGLE
    "\u27E9",  # BRACKET, MATHEMATICAL RIGHT ANGLE
    "\u27EB",  # BRACKET, MATHEMATICAL RIGHT DOUBLE ANGLE
    "\u007B",  # bracket, opening curly
    "\u005B",  # bracket, opening square
    "\u301B",  # bracket, right abstract syntax
    "\u3009",  # BRACKET, RIGHT ANGLE
    "\u27E7",  # bracket, right bag
    "\u3011",  # BRACKET, RIGHT BLACK LENTICULAR
    "\u27EB",  # bracket, right chevron
    "\u300D",  # BRACKET, RIGHT CORNER
    "\u007D",  # BRACKET, RIGHT CURLY
    "\u300B",  # BRACKET, RIGHT DOUBLE ANGLE
    "\u27E9",  # bracket, right sequence
    "\u005D",  # BRACKET, RIGHT SQUARE
    "\u3015",  # BRACKET, RIGHT TORTOISE SHELL
    "\u300F",  # BRACKET, RIGHT WHITE CORNER
    "\u2984",  # BRACKET, RIGHT WHITE CURLY
    "\u3017",  # BRACKET, RIGHT WHITE LENTICULAR
    "\u301B",  # BRACKET, RIGHT WHITE SQUARE
    "\u3019",  # BRACKET, RIGHT WHITE TORTOISE SHELL
    "\u232A",  # BRACKET, RIGHT-POINTING ANGLE
    "\u2983",  # Brackets
    "\u3008",  # Brackets, CJK Angle
    "\u300C",  # Brackets, CJK Corner
    "\u2308",  # Brackets, Corner
    "\u27E6",  # Brackets, Mathematical
    "\u2768",  # Brackets, Ornamental
    "\u23B4",  # Brackets, Vertical
    "\u11000",  # Brahmi
    "\u2800",  # Braille Patterns
    "\u20A2",  # brazilian currency
    "\u0083",  # BREAK HERE, NO
    "\u0082",  # BREAK PERMITTED HERE
    "\u0314",  # breathing mark, greek rough
    "\u0313",  # breathing mark, greek smooth
    "\u02D8",  # BREVE
    "\u032E",  # BREVE BELOW, COMBINING
    "\u035C",  # BREVE BELOW, COMBINING DOUBLE
    "\u1DFC",  # BREVE BELOW, COMBINING DOUBLE INVERTED
    "\u032F",  # BREVE BELOW, COMBINING INVERTED
    "\u0306",  # BREVE, COMBINING
    "\u035D",  # BREVE, COMBINING DOUBLE
    "\u0361",  # BREVE, COMBINING DOUBLE INVERTED
    "\u0311",  # BREVE, COMBINING INVERTED
    "\u1F470",  # BRIDE WITH VEIL
    "\u0346",  # BRIDGE ABOVE, COMBINING
    "\u20E9",  # BRIDGE ABOVE, COMBINING WIDE
    "\u032A",  # BRIDGE BELOW, COMBINING
    "\u033A",  # BRIDGE BELOW, COMBINING INVERTED
    "\u1F4A8",  # briffits
    "\u00A6",  # BROKEN BAR
    "\u00A6",  # broken vertical bar
    "\u1F949",  # bronze medal
    "\u1F5E8",  # Bubble Symbols, Speech and Thought
    "\u1F660",  # Bud Ornaments, Pointing
    "\u1F41B",  # BUG
    "\u1A00",  # Buginese
    "\u1740",  # Buhid
    "\u1F3D4",  # Building and Map Symbols
    "\u1F3E0",  # Building and Map Symbols
    "\u2022",  # BULLET
    "\u2219",  # BULLET OPERATOR
    "\u204C",  # BULLET, BLACK LEFTWARDS
    "\u204D",  # BULLET, BLACK RIGHTWARDS
    "\u2043",  # BULLET, HYPHEN
    "\u2619",  # BULLET, REVERSED ROTATED FLORAL HEART
    "\u25C9",  # bullet, tainome japanese
    "\u2023",  # BULLET, TRIANGULAR
    "\u25E6",  # BULLET, WHITE
    "\u25CE",  # BULLSEYE
    "\u1F78B",  # bullseye
    "\u0298",  # bullseye, latin letter
    "\u26B0",  # buried symbol
    "\u1000",  # Burmese
    "\u1F98B",  # BUTTERFLY
    "\u225C",  # by definition, equal to
    "\u225D",  # BY DEFINITION, EQUAL TO
    "\u225E",  # BY, MEASURED
    "\uFEFF",  # byte order mark
    "\u1D000",  # Byzantine Musical Symbols
    "\u0107",  # C WITH ACUTE, LATIN SMALL LETTER
    "\u010D",  # C WITH CARON, LATIN SMALL LETTER
    "\u00C7",  # C WITH CEDILLA, LATIN CAPITAL LETTER
    "\u00E7",  # C WITH CEDILLA, LATIN SMALL LETTER
    "\u0109",  # C WITH CIRCUMFLEX, LATIN SMALL LETTER
    "\u0255",  # C WITH CURL, LATIN SMALL LETTER
    "\u010B",  # C WITH DOT ABOVE, LATIN SMALL LETTER
    "\u0188",  # C WITH HOOK, LATIN SMALL LETTER
    "\u023B",  # C WITH STROKE, LATIN CAPITAL LETTER
    "\u023C",  # C WITH STROKE, LATIN SMALL LETTER
    "\u2183",  # c, apostrophic
    "\u212D",  # C, BLACK-LETTER CAPITAL
    "\u0368",  # C, COMBINING LATIN SMALL LETTER
    "\u2102",  # C, DOUBLE-STRUCK CAPITAL
    "\u1D04",  # C, LATIN LETTER SMALL CAPITAL
    "\u0297",  # C, LATIN LETTER STRETCHED
    "\u2184",  # C, LATIN SMALL LETTER REVERSED
    "\u0000",  # C0 Control Codes, ASCII
    "\u0080",  # C1 Control Codes
    "\u2106",  # CADA UNA
    "\u2624",  # CADUCEUS
    "\u1F919",  # CALL ME HAND
    "\u1780",  # Cambodian
    "\u1F42B",  # CAMEL, BACTRIAN
    "\u1F42A",  # CAMEL, DROMEDARY
    "\u26FA",  # camping site
    "\u18B0",  # Canadian Aboriginal Syllabics Extended, Unified
    "\u1400",  # Canadian Aboriginal Syllabics, Unified
    "\u166E",  # CANADIAN SYLLABICS FULL STOP
    "\u166D",  # Canadian Syllabics Punctuation
    "\u0018",  # CANCEL
    "\u0094",  # CANCEL CHARACTER
    "\uE007F",  # CANCEL TAG
    "\u2418",  # CANCEL, SYMBOL FOR
    "\u0ECC",  # CANCELLATION MARK, LAO
    "\u1F5D9",  # CANCELLATION X
    "\u264B",  # CANCER
    "\u0310",  # CANDRABINDU, COMBINING
    "\u0901",  # CANDRABINDU, DEVANAGARI SIGN
    "\u0591",  # Cantillation Marks, Hebrew
    "\u0FC0",  # Cantillation Signs, Tibetan
    "\u2229",  # cap
    "\u2293",  # CAP, SQUARE
    "\u0531",  # Capital Letters, Armenian
    "\u0400",  # Capital Letters, Cyrillic
    "\u10A0",  # Capital Letters, Georgian
    "\u0391",  # Capital Letters, Greek
    "\u0041",  # Capital Letters, Latin
    "\u2E3F",  # CAPITULUM
    "\u2651",  # CAPRICORN
    "\u21EA",  # caps lock
    "\u21EC",  # caps lock
    "\u2BB8",  # caps lock
    "\u26D0",  # CAR SLIDING
    "\u26CD",  # CAR, DISABLED
    "\u2660",  # Card Suits, Playing
    "\u2135",  # cardinal, first transfinite
    "\u2138",  # cardinal, fourth transfinite
    "\u2136",  # cardinal, second transfinite
    "\u2137",  # cardinal, third transfinite
    "\u1F0A0",  # Cards, Playing
    "\u2105",  # CARE OF
    "\u028C",  # caret
    "\u2038",  # CARET
    "\u2041",  # CARET INSERTION POINT
    "\u102A0",  # Carian
    "\u02C7",  # CARON
    "\u032C",  # CARON BELOW, COMBINING
    "\u030C",  # CARON, COMBINING
    "\u000D",  # CARRIAGE RETURN
    "\u240D",  # CARRIAGE RETURN, SYMBOL FOR
    "\u00D7",  # cartesian product
    "\u26EB",  # CASTLE
    "\u1F408",  # CAT
    "\u1F431",  # CAT FACE
    "\u1F638",  # Cat Faces
    "\u1F6C6",  # caution
    "\u2621",  # CAUTION SIGN
    "\u1F4BF",  # cd
    "\u20B5",  # CEDI SIGN
    "\u00B8",  # CEDILLA
    "\u0312",  # cedilla above
    "\u0327",  # CEDILLA, COMBINING
    "\u00C7",  # CEDILLA, LATIN CAPITAL LETTER C WITH
    "\u00E7",  # CEDILLA, LATIN SMALL LETTER C WITH
    "\u00B8",  # cedilla, spacing
    "\u2308",  # CEILING, LEFT
    "\u2309",  # CEILING, RIGHT
    "\u1F380",  # Celebration Symbols
    "\u2103",  # CELSIUS, DEGREE
    "\u26FC",  # cemetery
    "\u00A2",  # CENT SIGN
    "\u2385",  # center
    "\u2103",  # centigrade, degrees
    "\u2104",  # CENTRE LINE SYMBOL
    "\uFE4E",  # CENTRELINE LOW LINE
    "\uFE4A",  # CENTRELINE OVERLINE
    "\u034F",  # cgj
    "\u26D3",  # CHAINS
    "\u11100",  # Chakma
    "\uAA00",  # Cham
    "\u0D4D",  # chandrakkala, malayalam
    "\u009A",  # CHARACTER INTRODUCER, SINGLE
    "\u0009",  # CHARACTER TABULATION
    "\u0088",  # CHARACTER TABULATION SET
    "\u0089",  # CHARACTER TABULATION WITH JUSTIFICATION
    "\u2040",  # CHARACTER TIE
    "\u2500",  # Chart Components, Form and
    "\u2713",  # CHECK MARK
    "\u2714",  # CHECK MARK, HEAVY
    "\u237B",  # CHECK MARK, NOT
    "\u2611",  # CHECK, BALLOT BOX WITH
    "\u1F67E",  # CHECKER BOARD
    "\u26C0",  # Checkers, Symbols for Draughts and
    "\u1F9C0",  # CHEESE WEDGE
    "\u13A0",  # Cherokee
    "\uAB70",  # Cherokee Supplement
    "\u2654",  # Chess Symbols
    "\u2616",  # Chess Symbols, Japanese
    "\u27EA",  # chevron bracket, left
    "\u27EB",  # chevron bracket, right
    "\u00AB",  # chevrons
    "\u2627",  # CHI RHO
    "\u1F424",  # CHICK, BABY
    "\u1F425",  # CHICK, FRONT-FACING BABY
    "\u1F423",  # CHICK, HATCHING
    "\u1F414",  # CHICKEN
    "\u0D7A",  # Chillu Letters, Malayalam
    "\u3100",  # Chinese Bopomofo
    "\u31A0",  # Chinese Bopomofo Extensions
    "\u02D9",  # chinese fifth or neutral tone, mandarin
    "\u02C9",  # chinese first tone, mandarin
    "\u1F260",  # Chinese Folk Religion Symbols
    "\u02CB",  # chinese fourth tone, mandarin
    "\u02CA",  # chinese second tone, mandarin
    "\u02C7",  # chinese third tone, mandarin
    "\uA700",  # Chinese, Corner Tone Marks for
    "\u1F43F",  # CHIPMUNK
    "\u2AFE",  # choice, dijkstra
    "\u2AFF",  # choice, n-ary dijkstra
    "\u1F384",  # CHRISTMAS TREE
    "\u1F385",  # CHRISTMAS, FATHER
    "\u2627",  # christogram
    "\u26EA",  # CHURCH
    "\u20E0",  # CIRCLE BACKSLASH, COMBINING ENCLOSING
    "\u2B55",  # Circle Signs, Heavy
    "\u29B5",  # Circle Symbols
    "\u25CF",  # CIRCLE, BLACK
    "\u2022",  # circle, black small
    "\u20DD",  # CIRCLE, COMBINING ENCLOSING
    "\u25CC",  # CIRCLE, DOTTED
    "\u20DD",  # circle, jis composition
    "\u25EF",  # CIRCLE, LARGE
    "\u26AB",  # CIRCLE, MEDIUM BLACK
    "\u26AC",  # CIRCLE, MEDIUM SMALL WHITE
    "\u26AA",  # CIRCLE, MEDIUM WHITE
    "\u274D",  # CIRCLE, SHADOWED WHITE
    "\u25CB",  # CIRCLE, WHITE
    "\u229B",  # CIRCLED ASTERISK OPERATOR
    "\u26D2",  # CIRCLED CROSSING LANES
    "\u229D",  # CIRCLED DASH
    "\u24EA",  # CIRCLED DIGIT ZERO
    "\u2776",  # Circled Digits, Dingbat
    "\u2A38",  # CIRCLED DIVISION SIGN
    "\u2298",  # CIRCLED DIVISION SLASH
    "\u2299",  # CIRCLED DOT OPERATOR
    "\u2A00",  # CIRCLED DOT OPERATOR, N-ARY
    "\u229C",  # CIRCLED EQUALS
    "\u3280",  # Circled Ideographs
    "\u2776",  # Circled Inverse Numbers
    "\u32D0",  # Circled Katakana
    "\u3260",  # Circled Korean Hangul Letters
    "\u326E",  # Circled Korean Hangul Syllables
    "\u1F12B",  # Circled Latin Letters
    "\u24B6",  # Circled Latin Letters
    "\u2296",  # CIRCLED MINUS
    "\u2460",  # Circled Numbers
    "\u3251",  # Circled Numbers
    "\u32B1",  # Circled Numbers
    "\u24F5",  # Circled Numbers, Double
    "\u24EB",  # Circled Numbers, White on Black
    "\u2295",  # CIRCLED PLUS
    "\u2A01",  # CIRCLED PLUS OPERATOR, N-ARY
    "\u3036",  # CIRCLED POSTAL MARK
    "\u229A",  # CIRCLED RING OPERATOR
    "\u2297",  # CIRCLED TIMES
    "\u2A02",  # CIRCLED TIMES OPERATOR, N-ARY
    "\u25CB",  # Circles
    "\u005E",  # CIRCUMFLEX ACCENT
    "\u032D",  # CIRCUMFLEX ACCENT BELOW, COMBINING
    "\u0302",  # CIRCUMFLEX ACCENT, COMBINING
    "\u02C6",  # CIRCUMFLEX ACCENT, MODIFIER LETTER
    "\u005E",  # circumflex accent, spacing
    "\u3008",  # CJK Angle Brackets
    "\u3300",  # CJK Compatibility
    "\uFE30",  # CJK Compatibility Forms
    "\uF900",  # CJK Compatibility Ideographs
    "\u2F800",  # CJK Compatibility Ideographs Supplement
    "\u300C",  # CJK Corner Brackets
    "\u302A",  # CJK Diacritics
    "\u2FF0",  # CJK Ideographic Description Characters
    "\u3400",  # CJK Ideographs Area
    "\u20000",  # CJK Ideographs Area, Supplementary
    "\u3220",  # CJK Ideographs, Parenthesized
    "\u2F00",  # CJK Kangxi Radicals
    "\u3200",  # CJK Letters and Months, Enclosed
    "\u2E80",  # CJK Phonetics and Symbols Area
    "\uFF61",  # CJK Punctuation, Halfwidth
    "\u300C",  # CJK Quotation Marks
    "\u2E80",  # CJK Radicals Supplement
    "\u31C0",  # CJK Strokes
    "\u3000",  # CJK Symbols and Punctuation
    "\u4E00",  # CJK Unified Ideographs
    "\u3400",  # CJK Unified Ideographs Extension A
    "\u20000",  # CJK Unified Ideographs Extension B
    "\u2A700",  # CJK Unified Ideographs Extension C
    "\u2B740",  # CJK Unified Ideographs Extension D
    "\u2B820",  # CJK Unified Ideographs Extension E
    "\u2CEB0",  # CJK Unified Ideographs Extension F
    "\u1F44F",  # CLAPPING HANDS SIGN
    "\u2183",  # claudian antisigma
    "\u2132",  # claudian digamma inversum
    "\u2327",  # clear key
    "\u239A",  # CLEAR SCREEN SYMBOL
    "\u2600",  # clear weather
    "\u01C2",  # CLICK, LATIN LETTER ALVEOLAR
    "\u0298",  # CLICK, LATIN LETTER BILABIAL
    "\u01C0",  # CLICK, LATIN LETTER DENTAL
    "\u01C1",  # CLICK, LATIN LETTER LATERAL
    "\u01C3",  # CLICK, LATIN LETTER RETROFLEX
    "\u01C0",  # Clicks, African Letters for
    "\u1F550",  # Clock Face Symbols
    "\u23F0",  # CLOCK, ALARM
    "\u20D5",  # CLOCKWISE ARROW ABOVE, COMBINING
    "\u2232",  # CLOCKWISE CONTOUR INTEGRAL
    "\u2231",  # CLOCKWISE INTEGRAL
    "\u20D9",  # CLOCKWISE RING OVERLAY, COMBINING
    "\u2104",  # clone
    "\u02D8",  # Clones of Diacritics, Spacing
    "\u2050",  # CLOSE UP
    "\u029A",  # closed epsilon, latin small letter
    "\u0277",  # CLOSED OMEGA, LATIN SMALL LETTER
    "\u029A",  # CLOSED OPEN E, LATIN SMALL LETTER
    "\u025E",  # closed reversed epsilon, latin small letter
    "\u025E",  # CLOSED REVERSED OPEN E, LATIN SMALL LETTER
    "\u007D",  # closing brace
    "\u007D",  # closing curly bracket
    "\u3006",  # CLOSING MARK, IDEOGRAPHIC
    "\u0029",  # closing parenthesis
    "\u005D",  # closing square bracket
    "\u1F451",  # Clothing and Accessories
    "\u2601",  # CLOUD
    "\u2601",  # cloudy weather
    "\u26C5",  # cloudy, partly
    "\u2F800",  # CNS 11643-1992, Duplicate Characters from
    "\u2615",  # coffee, cup of
    "\u26B0",  # COFFIN
    "\u1F4A5",  # COLLISION SYMBOL
    "\u003A",  # COLON
    "\u2254",  # COLON EQUALS
    "\u29F4",  # colon right arrow
    "\u20A1",  # COLON SIGN
    "\u2255",  # COLON, EQUALS
    "\u1365",  # COLON, ETHIOPIC
    "\u1366",  # COLON, ETHIOPIC PREFACE
    "\u02D1",  # COLON, MODIFIER LETTER HALF TRIANGULAR
    "\u02D0",  # COLON, MODIFIER LETTER TRIANGULAR
    "\u1804",  # COLON, MONGOLIAN
    "\u2982",  # COLON, Z NOTATION TYPE
    "\u0301",  # COMBINING ACUTE ACCENT
    "\u0317",  # COMBINING ACUTE ACCENT BELOW
    "\u0341",  # COMBINING ACUTE TONE MARK
    "\u034C",  # COMBINING ALMOST EQUAL TO ABOVE
    "\u1100",  # Combining Alphabet, Korean Hangul Jamo
    "\u20E7",  # COMBINING ANNUITY SYMBOL
    "\u20D4",  # COMBINING ANTICLOCKWISE ARROW ABOVE
    "\u20DA",  # COMBINING ANTICLOCKWISE RING OVERLAY
    "\u20F0",  # COMBINING ASTERISK ABOVE
    "\u0359",  # COMBINING ASTERISK BELOW
    "\u0306",  # COMBINING BREVE
    "\u032E",  # COMBINING BREVE BELOW
    "\u0346",  # COMBINING BRIDGE ABOVE
    "\u032A",  # COMBINING BRIDGE BELOW
    "\u0310",  # COMBINING CANDRABINDU
    "\u030C",  # COMBINING CARON
    "\u032C",  # COMBINING CARON BELOW
    "\u0327",  # COMBINING CEDILLA
    "\u0483",  # Combining Characters, Cyrillic
    "\u0302",  # COMBINING CIRCUMFLEX ACCENT
    "\u032D",  # COMBINING CIRCUMFLEX ACCENT BELOW
    "\u20D5",  # COMBINING CLOCKWISE ARROW ABOVE
    "\u20D9",  # COMBINING CLOCKWISE RING OVERLAY
    "\u0313",  # COMBINING COMMA ABOVE
    "\u0315",  # COMBINING COMMA ABOVE RIGHT
    "\u0326",  # COMBINING COMMA BELOW
    "\uFE26",  # COMBINING CONJOINING MACRON
    "\u20D4",  # combining counterclockwise arrow above
    "\u20DA",  # combining counterclockwise ring overlay
    "\u0300",  # Combining Diacritical Marks
    "\u1AB0",  # Combining Diacritical Marks Extended
    "\u20D0",  # Combining Diacritical Marks for Symbols
    "\u0308",  # COMBINING DIAERESIS
    "\u0324",  # COMBINING DIAERESIS BELOW
    "\u0307",  # COMBINING DOT ABOVE
    "\u0358",  # COMBINING DOT ABOVE RIGHT
    "\u0323",  # COMBINING DOT BELOW
    "\u030B",  # COMBINING DOUBLE ACUTE ACCENT
    "\u035D",  # COMBINING DOUBLE BREVE
    "\u035C",  # COMBINING DOUBLE BREVE BELOW
    "\u030F",  # COMBINING DOUBLE GRAVE ACCENT
    "\u0361",  # COMBINING DOUBLE INVERTED BREVE
    "\u1DFC",  # COMBINING DOUBLE INVERTED BREVE BELOW
    "\u0333",  # COMBINING DOUBLE LOW LINE
    "\u035E",  # COMBINING DOUBLE MACRON
    "\u035F",  # COMBINING DOUBLE MACRON BELOW
    "\u033F",  # COMBINING DOUBLE OVERLINE
    "\u0362",  # COMBINING DOUBLE RIGHTWARDS ARROW BELOW
    "\u035A",  # COMBINING DOUBLE RING BELOW
    "\u0360",  # COMBINING DOUBLE TILDE
    "\u030E",  # COMBINING DOUBLE VERTICAL LINE ABOVE
    "\u0348",  # COMBINING DOUBLE VERTICAL LINE BELOW
    "\u20E6",  # COMBINING DOUBLE VERTICAL STROKE OVERLAY
    "\u031E",  # COMBINING DOWN TACK BELOW
    "\u20DD",  # COMBINING ENCLOSING CIRCLE
    "\u20E0",  # COMBINING ENCLOSING CIRCLE BACKSLASH
    "\u20DF",  # COMBINING ENCLOSING DIAMOND
    "\u20E3",  # COMBINING ENCLOSING KEYCAP
    "\u20E2",  # COMBINING ENCLOSING SCREEN
    "\u20DE",  # COMBINING ENCLOSING SQUARE
    "\u20E4",  # COMBINING ENCLOSING UPWARD POINTING TRIANGLE
    "\u0347",  # COMBINING EQUALS SIGN BELOW
    "\u0352",  # COMBINING FERMATA
    "\u20DC",  # COMBINING FOUR DOTS ABOVE
    "\u034F",  # COMBINING GRAPHEME JOINER
    "\u0300",  # COMBINING GRAVE ACCENT
    "\u0316",  # COMBINING GRAVE ACCENT BELOW
    "\u0340",  # COMBINING GRAVE TONE MARK
    "\u0344",  # COMBINING GREEK DIALYTIKA TONOS
    "\u0343",  # COMBINING GREEK KORONIS
    "\u0342",  # COMBINING GREEK PERISPOMENI
    "\u0345",  # COMBINING GREEK YPOGEGRAMMENI
    "\u030C",  # combining hacek
    "\uFE20",  # Combining Half Marks
    "\uFE27",  # Combining Half Marks Below
    "\u034B",  # COMBINING HOMOTHETIC ABOVE
    "\u0309",  # COMBINING HOOK ABOVE
    "\u031B",  # COMBINING HORN
    "\u0311",  # COMBINING INVERTED BREVE
    "\u032F",  # COMBINING INVERTED BREVE BELOW
    "\u033A",  # COMBINING INVERTED BRIDGE BELOW
    "\u032B",  # COMBINING INVERTED DOUBLE ARCH BELOW
    "\u3099",  # combining japanese daku-on
    "\u309A",  # combining japanese han-daku-on
    "\u0363",  # Combining Latin Small Letters
    "\u031A",  # COMBINING LEFT ANGLE ABOVE
    "\u0349",  # COMBINING LEFT ANGLE BELOW
    "\u20D6",  # COMBINING LEFT ARROW ABOVE
    "\u20EE",  # COMBINING LEFT ARROW BELOW
    "\u0354",  # COMBINING LEFT ARROWHEAD BELOW
    "\u0351",  # COMBINING LEFT HALF RING ABOVE
    "\u031C",  # COMBINING LEFT HALF RING BELOW
    "\u20D0",  # COMBINING LEFT HARPOON ABOVE
    "\u20E1",  # COMBINING LEFT RIGHT ARROW ABOVE
    "\u034D",  # COMBINING LEFT RIGHT ARROW BELOW
    "\u0318",  # COMBINING LEFT TACK BELOW
    "\u20EA",  # COMBINING LEFTWARDS ARROW OVERLAY
    "\u20ED",  # COMBINING LEFTWARDS HARPOON WITH BARB DOWNWARDS
    "\u20EB",  # COMBINING LONG DOUBLE SOLIDUS OVERLAY
    "\u0338",  # COMBINING LONG SOLIDUS OVERLAY
    "\u0336",  # COMBINING LONG STROKE OVERLAY
    "\u20D2",  # COMBINING LONG VERTICAL LINE OVERLAY
    "\u0332",  # COMBINING LOW LINE
    "\u0304",  # COMBINING MACRON
    "\u0331",  # COMBINING MACRON BELOW
    "\uFE24",  # COMBINING MACRON LEFT HALF
    "\uFE25",  # COMBINING MACRON RIGHT HALF
    "\u0653",  # Combining Marks, Arabic
    "\u135D",  # Combining Marks, Ethiopic
    "\u0320",  # COMBINING MINUS SIGN BELOW
    "\u034A",  # COMBINING NOT TILDE ABOVE
    "\u0328",  # COMBINING OGONEK
    "\u0305",  # COMBINING OVERLINE
    "\u0321",  # COMBINING PALATALIZED HOOK BELOW
    "\u031F",  # COMBINING PLUS SIGN BELOW
    "\u0322",  # COMBINING RETROFLEX HOOK BELOW
    "\u20E5",  # COMBINING REVERSE SOLIDUS OVERLAY
    "\u0314",  # COMBINING REVERSED COMMA ABOVE
    "\u20D7",  # COMBINING RIGHT ARROW ABOVE
    "\u20EF",  # COMBINING RIGHT ARROW BELOW
    "\u0350",  # COMBINING RIGHT ARROWHEAD ABOVE
    "\u0355",  # COMBINING RIGHT ARROWHEAD BELOW
    "\u0357",  # COMBINING RIGHT HALF RING ABOVE
    "\u0339",  # COMBINING RIGHT HALF RING BELOW
    "\u20D1",  # COMBINING RIGHT HARPOON ABOVE
    "\u0319",  # COMBINING RIGHT TACK BELOW
    "\u20EC",  # COMBINING RIGHTWARDS HARPOON WITH BARB DOWNWARDS
    "\u030A",  # COMBINING RING ABOVE
    "\u0325",  # COMBINING RING BELOW
    "\u20D8",  # COMBINING RING OVERLAY
    "\u033C",  # COMBINING SEAGULL BELOW
    "\u0337",  # COMBINING SHORT SOLIDUS OVERLAY
    "\u0335",  # COMBINING SHORT STROKE OVERLAY
    "\u20D3",  # COMBINING SHORT VERTICAL LINE OVERLAY
    "\u033B",  # COMBINING SQUARE BELOW
    "\u20DB",  # COMBINING THREE DOTS ABOVE
    "\u0303",  # COMBINING TILDE
    "\u0330",  # COMBINING TILDE BELOW
    "\u0334",  # COMBINING TILDE OVERLAY
    "\u20E8",  # COMBINING TRIPLE UNDERDOT
    "\u0312",  # COMBINING TURNED COMMA ABOVE
    "\u031D",  # COMBINING UP TACK BELOW
    "\u034E",  # COMBINING UPWARDS ARROW BELOW
    "\u030D",  # COMBINING VERTICAL LINE ABOVE
    "\u0329",  # COMBINING VERTICAL LINE BELOW
    "\u033E",  # COMBINING VERTICAL TILDE
    "\u20E9",  # COMBINING WIDE BRIDGE ABOVE
    "\u033D",  # COMBINING X ABOVE
    "\u0353",  # COMBINING X BELOW
    "\u035B",  # COMBINING ZIGZAG ABOVE
    "\u1F3AD",  # comedy and tragedy, masks of
    "\u2604",  # COMET
    "\u1F4A0",  # Comic Style Symbols
    "\u002C",  # COMMA
    "\u0315",  # COMMA ABOVE RIGHT, COMBINING
    "\u0313",  # COMMA ABOVE, COMBINING
    "\u0314",  # COMMA ABOVE, COMBINING REVERSED
    "\u0312",  # COMMA ABOVE, COMBINING TURNED
    "\u0326",  # COMMA BELOW, COMBINING
    "\u201D",  # comma quotation mark, double
    "\u201F",  # comma quotation mark, double reversed
    "\u201C",  # comma quotation mark, double turned
    "\u201E",  # comma quotation mark, low double
    "\u201A",  # comma quotation mark, low single
    "\u2019",  # comma quotation mark, single
    "\u201B",  # comma quotation mark, single reversed
    "\u2018",  # comma quotation mark, single turned
    "\u060C",  # COMMA, ARABIC
    "\u055D",  # COMMA, ARMENIAN
    "\u1363",  # COMMA, ETHIOPIC
    "\u00B7",  # comma, georgian
    "\u3001",  # COMMA, IDEOGRAPHIC
    "\u2063",  # comma, invisible
    "\u02BD",  # COMMA, MODIFIER LETTER REVERSED
    "\u02BB",  # COMMA, MODIFIER LETTER TURNED
    "\u1802",  # COMMA, MONGOLIAN
    "\u1808",  # COMMA, MONGOLIAN MANCHU
    "\u2E41",  # COMMA, REVERSED
    "\u2318",  # command key
    "\u009F",  # COMMAND, APPLICATION PROGRAM
    "\u009D",  # COMMAND, OPERATING SYSTEM
    "\u0040",  # COMMERCIAL AT
    "\u2052",  # COMMERCIAL MINUS SIGN
    "\u1F4DD",  # Communication Symbols
    "\u1F57B",  # Communication Symbols
    "\u1F4BF",  # compact disc
    "\u263C",  # compass
    "\uF900",  # Compatibility and Specials Area
    "\uFE30",  # Compatibility Forms, CJK
    "\u2F800",  # Compatibility Ideographs Supplement, CJK
    "\uF900",  # Compatibility Ideographs, CJK
    "\uFA70",  # Compatibility Ideographs, DPRK
    "\uFA30",  # Compatibility Ideographs, JIS X 0213
    "\u3130",  # Compatibility Jamo, Korean Hangul
    "\u3300",  # Compatibility, CJK
    "\u2201",  # COMPLEMENT
    "\u2102",  # complex numbers
    "\u27DF",  # component, radial
    "\u2500",  # Components, Form and Chart
    "\u2218",  # composite function
    "\u20DD",  # composition circle, jis
    "\u2384",  # COMPOSITION SYMBOL
    "\u1F5A5",  # Computer Component Symbols
    "\u2040",  # concatenation, sequence
    "\u2332",  # CONICAL TAPER
    "\uFE26",  # CONJOINING MACRON, COMBINING
    "\u22B9",  # CONJUGATE MATRIX, HERMITIAN
    "\u2227",  # conjunction
    "\u260C",  # CONJUNCTION
    "\u03C0",  # constant pi, mathematical
    "\u2107",  # CONSTANT, EULER
    "\u210E",  # CONSTANT, PLANCK
    "\u2627",  # constantine's cross
    "\u26CF",  # construction
    "\u1F477",  # CONSTRUCTION WORKER
    "\u220B",  # CONTAINS AS MEMBER
    "\u220D",  # CONTAINS AS MEMBER, SMALL
    "\u22B3",  # CONTAINS AS NORMAL SUBGROUP
    "\uFB50",  # Contextual Form Glyphs, Arabic
    "\uFE80",  # Contextual Form Glyphs, Arabic
    "\u2AA1",  # continuity, absolute
    "\u2381",  # CONTINUOUS UNDERLINE SYMBOL
    "\u2136",  # continuum, second transfinite cardinal
    "\u222E",  # CONTOUR INTEGRAL
    "\u2233",  # CONTOUR INTEGRAL, ANTICLOCKWISE
    "\u2232",  # CONTOUR INTEGRAL, CLOCKWISE
    "\u2233",  # contour integral, counterclockwise
    "\u20E9",  # contraction operator
    "\u2388",  # control
    "\u25F0",  # Control Code Graphics, Quadrant
    "\u0000",  # Control Codes, ASCII C0
    "\u0000",  # Control Codes, C0
    "\u0080",  # Control Codes, C1
    "\u2400",  # Control Codes, Graphic Pictures for
    "\u237D",  # Control Codes, Graphics for
    "\u009B",  # CONTROL SEQUENCE INTRODUCER
    "\u202A",  # Controls, Bidirectional Format
    "\u180B",  # Controls, Mongolian Format
    "\u2210",  # coproduct sign
    "\u2210",  # COPRODUCT, N-ARY
    "\u102E0",  # Coptic Epact Numbers
    "\u03E2",  # Coptic Letters Derived from Demotic
    "\u2C80",  # Coptic, Bohairic
    "\uFE24",  # Coptic, Continuous Macrons for
    "\u2CB2",  # Coptic, Extended
    "\u00A9",  # COPYRIGHT SIGN
    "\u2117",  # COPYRIGHT, SOUND RECORDING
    "\u2308",  # Corner Brackets
    "\u300C",  # Corner Brackets, CJK
    "\uA700",  # Corner Tone Marks for Chinese
    "\u231C",  # Corners, Quine
    "\u2258",  # CORRESPONDS TO
    "\u2259",  # corresponds to
    "\u20A1",  # costa rican currency
    "\u2135",  # countable, first transfinite cardinal
    "\u2334",  # COUNTERBORE
    "\u20D4",  # counterclockwise arrow above, combining
    "\u2233",  # counterclockwise contour integral
    "\u2A11",  # counterclockwise integration
    "\u20DA",  # counterclockwise ring overlay, combining
    "\u2335",  # COUNTERSINK
    "\u1F404",  # COW
    "\u1F42E",  # COW FACE
    "\u000D",  # cr
    "\u1F980",  # CRAB
    "\u0BF7",  # CREDIT SIGN, TAMIL
    "\u26B1",  # cremated symbol
    "\u1F319",  # CRESCENT MOON
    "\u262A",  # CRESCENT, STAR AND
    "\u01C4",  # Croatian Digraphs Matching Serbian Cyrillic Letters
    "\u1F40A",  # CROCODILE
    "\u230C",  # Crops
    "\u02DF",  # CROSS ACCENT, MODIFIER LETTER
    "\u2719",  # Cross Dingbats
    "\u274C",  # CROSS MARK
    "\u2629",  # CROSS OF JERUSALEM
    "\u2628",  # CROSS OF LORRAINE
    "\u1F542",  # CROSS POMMEE
    "\u211E",  # cross ratio
    "\u2627",  # cross, constantine's
    "\u205C",  # CROSS, DOTTED
    "\u2671",  # CROSS, EAST SYRIAC
    "\u1F547",  # CROSS, HEAVY LATIN
    "\u271D",  # CROSS, LATIN
    "\u2020",  # cross, long
    "\u2720",  # CROSS, MALTESE
    "\u2626",  # CROSS, ORTHODOX
    "\u2613",  # cross, st. andrew's
    "\u2670",  # CROSS, WEST SYRIAC
    "\u1F546",  # CROSS, WHITE LATIN
    "\u1F91E",  # crossed fingers
    "\u2694",  # CROSSED SWORDS
    "\u2719",  # Crosses
    "\u1F7A1",  # Crosses, Greek
    "\u0023",  # crosshatch
    "\u1D15F",  # crotchet
    "\u2669",  # crotchet
    "\u20A2",  # CRUZEIRO SIGN
    "\u2CEB",  # Cryptogrammic Letters
    "\u221B",  # CUBE ROOT
    "\u00B3",  # cubed
    "\u1F5FB",  # Cultural Symbols
    "\u12000",  # Cuneiform
    "\u12400",  # Cuneiform Numbers and Punctuation
    "\u12480",  # Cuneiform, Early Dynastic
    "\u222A",  # cup
    "\u2615",  # cup of coffee
    "\u2615",  # cup of tea
    "\u26FE",  # CUP ON BLACK SQUARE
    "\u2294",  # CUP, SQUARE
    "\u03D0",  # curled beta
    "\u007D",  # curly bracket, closing
    "\u007B",  # CURLY BRACKET, LEFT
    "\u2983",  # CURLY BRACKET, LEFT WHITE
    "\u007B",  # curly bracket, opening
    "\u007D",  # CURLY BRACKET, RIGHT
    "\u2984",  # CURLY BRACKET, RIGHT WHITE
    "\u22CF",  # CURLY LOGICAL AND
    "\u22CE",  # CURLY LOGICAL OR
    "\u00A4",  # CURRENCY SIGN
    "\u09F2",  # Currency Signs, Bengali
    "\u0E3F",  # CURRENCY SYMBOL BAHT, THAI
    "\u17DB",  # CURRENCY SYMBOL RIEL, KHMER
    "\u0192",  # currency symbol, florin
    "\u20A0",  # Currency Symbols
    "\u20B3",  # currency, argentinian former
    "\u058F",  # currency, armenian
    "\u20BC",  # currency, azerbaijani
    "\u20A2",  # currency, brazilian
    "\u20A1",  # currency, costa rican
    "\u20A1",  # currency, el salvadorian
    "\u20AC",  # currency, euro european
    "\u20A3",  # currency, french
    "\u20BE",  # currency, georgian
    "\u20B5",  # currency, ghana
    "\u20AF",  # currency, greek
    "\u20A8",  # currency, indian
    "\uFDFC",  # currency, iranian
    "\u20AA",  # currency, israeli
    "\u20A4",  # currency, italian
    "\u20A9",  # currency, korean
    "\u20AD",  # currency, laotian
    "\u20AE",  # currency, mongolian
    "\u20A6",  # currency, nigerian
    "\u20B2",  # currency, paraguayan
    "\u20B1",  # currency, phillipine
    "\u20BD",  # currency, russian
    "\u20A7",  # currency, spanish
    "\u20A4",  # currency, turkish
    "\u20B4",  # currency, ukrainian
    "\u20AB",  # currency, vietnamese
    "\u2393",  # CURRENT SYMBOL FORM TWO, DIRECT
    "\u23E6",  # CURRENT, AC
    "\u223F",  # current, alternating
    "\u21A1",  # cursor down, fast
    "\u219E",  # cursor left, fast
    "\u21A0",  # cursor right, fast
    "\u219F",  # cursor up, fast
    "\u223C",  # cycle
    "\u232D",  # CYLINDRICITY
    "\u10800",  # Cypriot Syllabary
    "\u0400",  # Cyrillic
    "\u0400",  # Cyrillic Capital Letters
    "\u0483",  # Cyrillic Combining Characters
    "\u2DE0",  # Cyrillic Extended-A
    "\uA640",  # Cyrillic Extended-B
    "\u1C80",  # Cyrillic Extended-C
    "\u0450",  # Cyrillic Extensions
    "\u048A",  # Cyrillic Extensions
    "\u0460",  # Cyrillic Historic Letters
    "\u0430",  # Cyrillic Small Letters
    "\u0500",  # Cyrillic Supplement
    "\uFE2E",  # CYRILLIC TITLO LEFT HALF, COMBINING
    "\u0256",  # d retroflex hook, latin small letter
    "\u010F",  # D WITH CARON, LATIN SMALL LETTER
    "\u1E11",  # D WITH CEDILLA, LATIN SMALL LETTER
    "\u1E13",  # D WITH CIRCUMFLEX BELOW, LATIN SMALL LETTER
    "\u0221",  # D WITH CURL, LATIN SMALL LETTER
    "\u1E0B",  # D WITH DOT ABOVE, LATIN SMALL LETTER
    "\u1E0D",  # D WITH DOT BELOW, LATIN SMALL LETTER
    "\u018A",  # D WITH HOOK, LATIN CAPITAL LETTER
    "\u0257",  # D WITH HOOK, LATIN SMALL LETTER
    "\u1E0F",  # D WITH LINE BELOW, LATIN SMALL LETTER
    "\u0111",  # D WITH STROKE, LATIN SMALL LETTER
    "\u0256",  # D WITH TAIL, LATIN SMALL LETTER
    "\u018C",  # D WITH TOPBAR, LATIN SMALL LETTER
    "\u29E0",  # d'alembertian
    "\u0369",  # D, COMBINING LATIN SMALL LETTER
    "\u2145",  # D, DOUBLE-STRUCK ITALIC CAPITAL
    "\u2146",  # D, DOUBLE-STRUCK ITALIC SMALL
    "\u0189",  # D, LATIN CAPITAL LETTER AFRICAN
    "\u1D05",  # D, LATIN LETTER SMALL CAPITAL
    "\u2020",  # DAGGER
    "\u2021",  # DAGGER, DOUBLE
    "\u3099",  # daku-on, combining japanese
    "\u309B",  # daku-on, japanese
    "\u2138",  # DALET SYMBOL
    "\u0964",  # DANDA, DEVANAGARI
    "\u0965",  # DANDA, DEVANAGARI DOUBLE
    "\u00AC",  # dash, angled
    "\u229D",  # DASH, CIRCLED
    "\u2014",  # DASH, EM
    "\u2013",  # DASH, EN
    "\u2012",  # DASH, FIGURE
    "\u2E3A",  # dash, omission
    "\u2015",  # dash, quotation
    "\u2053",  # DASH, SWUNG
    "\u2E3A",  # DASH, TWO-EM
    "\u301C",  # DASH, WAVE
    "\u3030",  # DASH, WAVY
    "\uFE4D",  # DASHED LOW LINE
    "\uFE49",  # DASHED OVERLINE
    "\u2010",  # Dashes
    "\u0314",  # dasia, greek
    "\u0010",  # DATA LINK ESCAPE
    "\u2410",  # DATA LINK ESCAPE, SYMBOL FOR
    "\u27D5",  # Database Theory Operators
    "\u2721",  # DAVID, STAR OF
    "\u0BF3",  # DAY SIGN, TAMIL
    "\u33E0",  # Days, Ideographic Telegraph Symbols for
    "\u0238",  # DB DIGRAPH, LATIN SMALL LETTER
    "\u0BF6",  # DEBIT SIGN, TAMIL
    "\u23E8",  # DECIMAL EXPONENT SYMBOL
    "\u002E",  # decimal point
    "\u002C",  # decimal separator
    "\u2396",  # DECIMAL SEPARATOR KEY SYMBOL
    "\u066B",  # DECIMAL SEPARATOR, ARABIC
    "\u23F7",  # decrease
    "\u0965",  # deergh viram, devanagari
    "\u2103",  # DEGREE CELSIUS
    "\u2109",  # DEGREE FAHRENHEIT
    "\u00B0",  # DEGREE SIGN
    "\u2103",  # degrees centigrade
    "\u2207",  # del
    "\u007F",  # DELETE
    "\u2425",  # DELETE FORM TWO, SYMBOL FOR
    "\u232B",  # delete to the left key
    "\u2326",  # delete to the right key
    "\u2421",  # DELETE, SYMBOL FOR
    "\u225C",  # DELTA EQUAL TO
    "\u018D",  # DELTA, LATIN SMALL LETTER TURNED
    "\u03E2",  # Demotic, Coptic Letters Derived from
    "\u01C0",  # DENTAL CLICK, LATIN LETTER
    "\u23BE",  # Dentistry Notation Symbols
    "\u21A7",  # depth symbol
    "\u0307",  # derivative
    "\u0308",  # derivative, double
    "\u20DC",  # derivative, fourth
    "\u20DB",  # derivative, third
    "\u260B",  # DESCENDING NODE
    "\u10400",  # Deseret
    "\u0900",  # Devanagari
    "\u0902",  # devanagari bindu
    "\u0915",  # Devanagari Consonants
    "\u0964",  # DEVANAGARI DANDA
    "\u0965",  # devanagari deergh viram
    "\u093E",  # Devanagari Dependent Vowel Signs
    "\u0966",  # Devanagari Digits
    "\u0965",  # DEVANAGARI DOUBLE DANDA
    "\uA8E0",  # Devanagari Extended
    "\u0951",  # Devanagari Extensions
    "\u0904",  # Devanagari Independent Vowels
    "\u0950",  # DEVANAGARI OM
    "\u0964",  # devanagari purna viram
    "\u0902",  # DEVANAGARI SIGN ANUSVARA
    "\u093D",  # DEVANAGARI SIGN AVAGRAHA
    "\u0901",  # DEVANAGARI SIGN CANDRABINDU
    "\u093C",  # DEVANAGARI SIGN NUKTA
    "\u094D",  # DEVANAGARI SIGN VIRAMA
    "\u0903",  # DEVANAGARI SIGN VISARGA
    "\u0011",  # Device Controls
    "\u2411",  # Device Controls, Symbols for
    "\u2638",  # DHARMA, WHEEL OF
    "\u20E6",  # diacritic, finite function
    "\u20D0",  # Diacritical Marks for Symbols
    "\u20D0",  # Diacritical Marks for Symbols, Combining
    "\u0300",  # Diacritical Marks, Combining
    "\u0342",  # Diacritics for Greek
    "\u0346",  # Diacritics for IPA
    "\u0350",  # Diacritics for Uralic Phonetic Alphabet
    "\u302A",  # Diacritics, CJK
    "\u035C",  # Diacritics, Double
    "\u20DD",  # Diacritics, Enclosing
    "\u0363",  # Diacritics, Medieval Superscript Letter
    "\u0300",  # Diacritics, Ordinary
    "\u0334",  # Diacritics, Overstruck
    "\u02D8",  # Diacritics, Spacing Clones of
    "\u00A8",  # DIAERESIS
    "\u0324",  # DIAERESIS BELOW, COMBINING
    "\u0308",  # DIAERESIS, COMBINING
    "\u00A8",  # diaeresis, spacing
    "\u22F1",  # DIAGONAL ELLIPSIS, DOWN RIGHT
    "\u22F0",  # DIAGONAL ELLIPSIS, UP RIGHT
    "\u0344",  # DIALYTIKA TONOS, COMBINING GREEK
    "\u0308",  # dialytika, greek
    "\u2300",  # DIAMETER SIGN
    "\u22C4",  # DIAMOND OPERATOR
    "\u20DF",  # DIAMOND, COMBINING ENCLOSING
    "\u25C6",  # Diamonds
    "\u1F797",  # Diamonds
    "\u2B25",  # Diamonds and Lozenges
    "\u2680",  # Dice
    "\u2690",  # Dictionary and Map Symbols
    "\u2E1A",  # Dictionary Punctuation
    "\u2021",  # diesis
    "\u223C",  # difference between
    "\u224F",  # DIFFERENCE BETWEEN
    "\u2A24",  # difference or sum, positive
    "\u2207",  # difference, backward
    "\u2206",  # difference, forward
    "\u2A26",  # difference, sum or positive
    "\u2206",  # difference, symmetric
    "\u2238",  # difference, symmetric
    "\u2296",  # difference, symmetric
    "\u2202",  # DIFFERENTIAL, PARTIAL
    "\u2132",  # digamma inversum, claudian
    "\u24EA",  # DIGIT ZERO, CIRCLED
    "\u0F2A",  # Digits Minus Half, Tibetan
    "\u1D7CE",  # Digits Symbols, Mathematical
    "\u0660",  # Digits, Arabic-Indic
    "\u0030",  # Digits, ASCII
    "\u1B50",  # Digits, Balinese
    "\u09E6",  # Digits, Bengali
    "\u1D7CE",  # Digits, Bold
    "\u0966",  # Digits, Devanagari
    "\u2776",  # Digits, Dingbat Circled
    "\u1D7D8",  # Digits, Double-struck
    "\u06F0",  # Digits, Eastern Arabic-Indic
    "\u1369",  # Digits, Ethiopic
    "\u0AE6",  # Digits, Gujarati
    "\u0A66",  # Digits, Gurmukhi
    "\u0CE6",  # Digits, Kannada
    "\u10A40",  # Digits, Kharoshthi
    "\u17E0",  # Digits, Khmer
    "\u0ED0",  # Digits, Lao
    "\u1946",  # Digits, Limbu
    "\u0D66",  # Digits, Malayalam
    "\u1810",  # Digits, Mongolian
    "\u1D7F6",  # Digits, Monospace
    "\u1040",  # Digits, Myanmar
    "\u19D0",  # Digits, New Tai Lue
    "\u0B66",  # Digits, Oriya
    "\u104A0",  # Digits, Osmanya
    "\u1D7E2",  # Digits, Sans-serif
    "\u1D7EC",  # Digits, Sans-serif Bold
    "\u2080",  # Digits, Subscript
    "\u2070",  # Digits, Superscript
    "\u0BE7",  # Digits, Tamil
    "\u0C66",  # Digits, Telugu
    "\u0E50",  # Digits, Thai
    "\u0F20",  # Digits, Tibetan
    "\u268A",  # Digram Symbols, Yijing / I Ching Monogram and
    "\u01C4",  # Digraphs Matching Serbian Cyrillic Letters, Croatian
    "\u02A3",  # Digraphs, Phonetic
    "\u05F0",  # Digraphs, Yiddish
    "\u2AFE",  # dijkstra choice
    "\u2AFF",  # dijkstra choice, n-ary
    "\u2331",  # DIMENSION ORIGIN
    "\u2794",  # Dingbat Arrows
    "\u2776",  # Dingbat Circled Digits
    "\u2700",  # Dingbats
    "\u2700",  # Dingbats Series 100, ITC Zapf
    "\u2794",  # Dingbats, Arrow
    "\u2722",  # Dingbats, Asterisk
    "\u2719",  # Dingbats, Cross
    "\u274D",  # Dingbats, Drop-shadowed
    "\u2620",  # Dingbats, Hazard
    "\u2763",  # Dingbats, Heart
    "\u2600",  # Dingbats, Miscellaneous
    "\u2669",  # Dingbats, Music
    "\u1F650",  # Dingbats, Ornamental
    "\u270E",  # Dingbats, Pencil
    "\u261A",  # Dingbats, Pointing Index Finger
    "\u275B",  # Dingbats, Quotation Mark
    "\u2701",  # Dingbats, Scissors
    "\u2744",  # Dingbats, Snowflake
    "\u2726",  # Dingbats, Star
    "\u2758",  # Dingbats, Vertical Bar
    "\u2620",  # Dingbats, Warning
    "\u2600",  # Dingbats, Weather
    "\u2700",  # Dingbats, Zapf
    "\u1F37D",  # dining available symbol
    "\u2393",  # DIRECT CURRENT SYMBOL FORM TWO
    "\u2299",  # direct product
    "\u2295",  # direct sum
    "\u202A",  # Directional Format Characters
    "\u202C",  # DIRECTIONAL FORMATTING, POP
    "\u2069",  # DIRECTIONAL ISOLATE, POP
    "\u2382",  # DISCONTINUOUS UNDERLINE SYMBOL
    "\u00AD",  # discretionary hyphen
    "\u2228",  # disjunction
    "\u3003",  # DITTO MARK
    "\u2223",  # DIVIDES
    "\u17F0",  # Divination, Khmer Numeric Symbols for
    "\u00F7",  # DIVISION SIGN
    "\u2A2F",  # Division Sign Operators, Multiplication and
    "\u2A38",  # DIVISION SIGN, CIRCLED
    "\u2215",  # DIVISION SLASH
    "\u2298",  # DIVISION SLASH, CIRCLED
    "\u22C7",  # DIVISION TIMES
    "\u27CC",  # DIVISION, LONG
    "\u26AE",  # DIVORCE SYMBOL
    "\u1F4AB",  # DIZZY SYMBOL
    "\u26D4",  # do not enter
    "\u1F5CE",  # DOCUMENT
    "\u1F5CB",  # DOCUMENT, EMPTY
    "\u220C",  # DOES NOT CONTAIN AS MEMBER
    "\u2224",  # DOES NOT DIVIDE
    "\u2204",  # DOES NOT EXIST, THERE
    "\u22A3",  # does not yield
    "\u1F415",  # DOG
    "\u1F436",  # DOG FACE
    "\u0024",  # DOLLAR SIGN
    "\u1F42C",  # DOLPHIN
    "\u25C1",  # domain restriction
    "\u1F030",  # Domino Tiles
    "\u20AB",  # DONG SIGN
    "\u002E",  # dot
    "\u02D9",  # DOT ABOVE
    "\u0358",  # DOT ABOVE RIGHT, COMBINING
    "\u0307",  # DOT ABOVE, COMBINING
    "\u0308",  # dot above, double
    "\u0323",  # DOT BELOW, COMBINING
    "\u1037",  # DOT BELOW, MYANMAR SIGN
    "\u2024",  # DOT LEADER, ONE
    "\u2026",  # dot leader, three
    "\u2025",  # DOT LEADER, TWO
    "\u2238",  # DOT MINUS
    "\u22C5",  # DOT OPERATOR
    "\u2299",  # DOT OPERATOR, CIRCLED
    "\u22A1",  # DOT OPERATOR, SQUARED
    "\u2214",  # DOT PLUS
    "\u2059",  # DOT PUNCTUATION, FIVE
    "\u2058",  # DOT PUNCTUATION, FOUR
    "\u2056",  # DOT PUNCTUATION, THREE
    "\u205A",  # DOT PUNCTUATION, TWO
    "\u00B7",  # dot, greek middle
    "\u30FB",  # DOT, KATAKANA MIDDLE
    "\u0130",  # dot, latin capital letter i
    "\uA78F",  # DOT, LATIN LETTER SINOLOGICAL
    "\u00B7",  # DOT, MIDDLE
    "\uFE45",  # DOT, SESAME
    "\u237F",  # DOT, VERTICAL LINE WITH MIDDLE
    "\uFE46",  # DOT, WHITE SESAME
    "\u0131",  # DOTLESS I, LATIN SMALL LETTER
    "\u025F",  # DOTLESS J WITH STROKE, LATIN SMALL LETTER
    "\u0237",  # DOTLESS J, LATIN SMALL LETTER
    "\u1D6A4",  # Dotless Mathematical Symbols
    "\u20DC",  # DOTS ABOVE, COMBINING FOUR
    "\u20DB",  # DOTS ABOVE, COMBINING THREE
    "\u1805",  # DOTS, MONGOLIAN FOUR
    "\u205E",  # DOTS, VERTICAL FOUR
    "\u25CC",  # DOTTED CIRCLE
    "\u205C",  # DOTTED CROSS
    "\u2999",  # DOTTED FENCE
    "\u2234",  # Dotted Mathematical Operators
    "\u02DD",  # DOUBLE ACUTE ACCENT
    "\u030B",  # DOUBLE ACUTE ACCENT, COMBINING
    "\u300A",  # DOUBLE ANGLE BRACKET, LEFT
    "\u27EA",  # DOUBLE ANGLE BRACKET, MATHEMATICAL LEFT
    "\u27EB",  # DOUBLE ANGLE BRACKET, MATHEMATICAL RIGHT
    "\u300B",  # DOUBLE ANGLE BRACKET, RIGHT
    "\u00AB",  # DOUBLE ANGLE QUOTATION MARK, LEFT-POINTING
    "\u00BB",  # DOUBLE ANGLE QUOTATION MARK, RIGHT-POINTING
    "\u02EE",  # DOUBLE APOSTROPHE, MODIFIER LETTER
    "\u032B",  # DOUBLE ARCH BELOW, COMBINING INVERTED
    "\u21CD",  # Double Arrows
    "\u035C",  # DOUBLE BREVE BELOW, COMBINING
    "\u035D",  # DOUBLE BREVE, COMBINING
    "\u24F5",  # Double Circled Numbers
    "\u201D",  # double comma quotation mark
    "\u201E",  # double comma quotation mark, low
    "\u2021",  # DOUBLE DAGGER
    "\u0965",  # DOUBLE DANDA, DEVANAGARI
    "\u0308",  # double derivative
    "\u035C",  # Double Diacritics
    "\u0308",  # double dot above
    "\u203C",  # DOUBLE EXCLAMATION MARK
    "\u030F",  # DOUBLE GRAVE ACCENT, COMBINING
    "\u201F",  # DOUBLE HIGH-REVERSED-9 QUOTATION MARK
    "\u30A0",  # DOUBLE HYPHEN, KATAKANA-HIRAGANA
    "\u222C",  # DOUBLE INTEGRAL
    "\u22D2",  # DOUBLE INTERSECTION
    "\u0361",  # DOUBLE INVERTED BREVE, COMBINING
    "\u2A53",  # DOUBLE LOGICAL AND
    "\u2A54",  # DOUBLE LOGICAL OR
    "\u2017",  # DOUBLE LOW LINE
    "\u0333",  # DOUBLE LOW LINE, COMBINING
    "\u201E",  # DOUBLE LOW-9 QUOTATION MARK
    "\u035F",  # DOUBLE MACRON BELOW, COMBINING
    "\u035E",  # DOUBLE MACRON, COMBINING
    "\u22D0",  # Double Operators
    "\u033F",  # DOUBLE OVERLINE, COMBINING
    "\u01C1",  # double pipe
    "\u29FA",  # DOUBLE PLUS
    "\u2ABB",  # DOUBLE PRECEDES
    "\u2033",  # DOUBLE PRIME
    "\u301E",  # DOUBLE PRIME QUOTATION MARK
    "\u301F",  # DOUBLE PRIME QUOTATION MARK, LOW
    "\u301D",  # DOUBLE PRIME QUOTATION MARK, REVERSED
    "\u02BA",  # DOUBLE PRIME, MODIFIER LETTER
    "\u2036",  # DOUBLE PRIME, REVERSED
    "\u2047",  # Double Punctuation for Vertical Text
    "\u1736",  # DOUBLE PUNCTUATION, PHILIPPINE
    "\u2047",  # DOUBLE QUESTION MARK
    "\u201C",  # DOUBLE QUOTATION MARK, LEFT
    "\u201D",  # DOUBLE QUOTATION MARK, RIGHT
    "\u201F",  # double reversed comma quotation mark
    "\u0362",  # DOUBLE RIGHTWARDS ARROW BELOW, COMBINING
    "\u035A",  # DOUBLE RING BELOW, COMBINING
    "\u20EB",  # double slash overlay, long
    "\u2AFD",  # DOUBLE SOLIDUS OPERATOR
    "\u20EB",  # DOUBLE SOLIDUS OVERLAY, COMBINING LONG
    "\u22D0",  # DOUBLE SUBSET
    "\u2ABC",  # DOUBLE SUCCEEDS
    "\u22D1",  # DOUBLE SUPERSET
    "\u0360",  # DOUBLE TILDE, COMBINING
    "\u23E9",  # Double Triangles
    "\u201C",  # double turned comma quotation mark
    "\u0333",  # double underline
    "\u0333",  # double underscore
    "\u2017",  # double underscore, spacing
    "\u22D3",  # DOUBLE UNION
    "\u2016",  # DOUBLE VERTICAL LINE
    "\u030E",  # DOUBLE VERTICAL LINE ABOVE, COMBINING
    "\u0348",  # DOUBLE VERTICAL LINE BELOW, COMBINING
    "\u20E6",  # DOUBLE VERTICAL STROKE OVERLAY, COMBINING
    "\uFE4C",  # DOUBLE WAVY OVERLINE
    "\u01C2",  # double-barred pipe
    "\u1D7D8",  # Double-struck Digits
    "\u213C",  # Double-struck Greek Letters
    "\u213D",  # Double-struck Greek Letters
    "\u2145",  # Double-struck Italic Mathematical Symbols
    "\u1D538",  # Double-struck Mathematical Symbols
    "\u1F54A",  # DOVE OF PEACE
    "\u2304",  # DOWN ARROWHEAD
    "\u261F",  # DOWN POINTING INDEX, WHITE
    "\u22F1",  # DOWN RIGHT DIAGONAL ELLIPSIS
    "\u22A4",  # DOWN TACK
    "\u031E",  # DOWN TACK BELOW, COMBINING
    "\u21DF",  # down, page
    "\u230A",  # downstile, apl
    "\u2193",  # DOWNWARDS ARROW
    "\uFA70",  # DPRK Compatibility Ideographs
    "\u20AF",  # DRACHMA SIGN
    "\u232D",  # Drafting Symbols
    "\u1F409",  # DRAGON
    "\u1F432",  # DRAGON FACE
    "\u0292",  # dram
    "\u058F",  # DRAM SIGN, ARMENIAN
    "\u26C0",  # Draughts and Checkers, Symbols for
    "\u26DA",  # DRIVE SLOW SIGN
    "\u26FE",  # drive-in restaurant
    "\u264F",  # drop
    "\u274D",  # Drop-shadowed Dingbats
    "\u1F4A7",  # DROPLET
    "\u1F322",  # DROPLET, BLACK
    "\uFA0C",  # Duplicate Characters from Big 5
    "\u2F800",  # Duplicate Characters from CNS 11643-1992
    "\u1BC00",  # Duployan
    "\u1F4C0",  # DVD
    "\u00C9",  # E WITH ACUTE, LATIN CAPITAL LETTER
    "\u00E9",  # E WITH ACUTE, LATIN SMALL LETTER
    "\u0115",  # E WITH BREVE, LATIN SMALL LETTER
    "\u011B",  # E WITH CARON, LATIN SMALL LETTER
    "\u0229",  # E WITH CEDILLA, LATIN SMALL LETTER
    "\u1E19",  # E WITH CIRCUMFLEX BELOW, LATIN SMALL LETTER
    "\u00CA",  # E WITH CIRCUMFLEX, LATIN CAPITAL LETTER
    "\u00EA",  # E WITH CIRCUMFLEX, LATIN SMALL LETTER
    "\u00CB",  # E WITH DIAERESIS, LATIN CAPITAL LETTER
    "\u00EB",  # E WITH DIAERESIS, LATIN SMALL LETTER
    "\u0117",  # E WITH DOT ABOVE, LATIN SMALL LETTER
    "\u1EB9",  # E WITH DOT BELOW, LATIN SMALL LETTER
    "\u0205",  # E WITH DOUBLE GRAVE, LATIN SMALL LETTER
    "\u00C8",  # E WITH GRAVE, LATIN CAPITAL LETTER
    "\u00E8",  # E WITH GRAVE, LATIN SMALL LETTER
    "\u1EBB",  # E WITH HOOK ABOVE, LATIN SMALL LETTER
    "\u025D",  # E WITH HOOK, LATIN SMALL LETTER REVERSED OPEN
    "\u0207",  # E WITH INVERTED BREVE, LATIN SMALL LETTER
    "\u0113",  # E WITH MACRON, LATIN SMALL LETTER
    "\u0119",  # E WITH OGONEK, LATIN SMALL LETTER
    "\u0246",  # E WITH STROKE, LATIN CAPITAL LETTER
    "\u0247",  # E WITH STROKE, LATIN SMALL LETTER
    "\u1E1B",  # E WITH TILDE BELOW, LATIN SMALL LETTER
    "\u1EBD",  # E WITH TILDE, LATIN SMALL LETTER
    "\u0364",  # E, COMBINING LATIN SMALL LETTER
    "\u2147",  # E, DOUBLE-STRUCK ITALIC SMALL
    "\u0190",  # E, LATIN CAPITAL LETTER OPEN
    "\u018E",  # E, LATIN CAPITAL LETTER REVERSED
    "\u018E",  # e, latin capital letter turned
    "\u1D07",  # E, LATIN LETTER SMALL CAPITAL
    "\u029A",  # E, LATIN SMALL LETTER CLOSED OPEN
    "\u025E",  # E, LATIN SMALL LETTER CLOSED REVERSED OPEN
    "\u0153",  # e, latin small letter o
    "\u025B",  # E, LATIN SMALL LETTER OPEN
    "\u0258",  # E, LATIN SMALL LETTER REVERSED
    "\u025C",  # E, LATIN SMALL LETTER REVERSED OPEN
    "\u01DD",  # E, LATIN SMALL LETTER TURNED
    "\u1D08",  # E, LATIN SMALL LETTER TURNED OPEN
    "\u2130",  # E, SCRIPT CAPITAL
    "\u212F",  # E, SCRIPT SMALL
    "\u1F985",  # EAGLE
    "\u1F442",  # EAR
    "\u2641",  # EARTH
    "\u23DA",  # EARTH GROUND
    "\u2671",  # EAST SYRIAC CROSS
    "\u06F0",  # Eastern Arabic-Indic Digits
    "\u2E00",  # Editorial Symbols, New Testament
    "\u2191",  # egressive airflow
    "\u13000",  # Egyptian Hieroglyphs
    "\u266A",  # EIGHTH NOTE
    "\u266B",  # EIGHTH NOTES, BEAMED
    "\u215B",  # Eighths, Fractions
    "\u23CF",  # eject media
    "\u0A74",  # EK ONKAR, GURMUKHI
    "\u20A1",  # el salvadorian currency
    "\u10500",  # Elbasan
    "\u2301",  # ELECTRIC ARROW
    "\u1F50C",  # ELECTRIC PLUG
    "\u23E7",  # ELECTRICAL INTERSECTION
    "\u21AF",  # electrolysis
    "\u2130",  # electromotive force
    "\u238D",  # Electrotechnical Symbols
    "\u2208",  # ELEMENT OF
    "\u2209",  # ELEMENT OF, NOT AN
    "\u220A",  # ELEMENT OF, SMALL
    "\u2129",  # element, unique
    "\u1F418",  # ELEPHANT
    "\u2B2C",  # Ellipses
    "\u22F1",  # ELLIPSIS, DOWN RIGHT DIAGONAL
    "\u2026",  # ELLIPSIS, HORIZONTAL
    "\u0EAF",  # ELLIPSIS, LAO
    "\u22EF",  # ELLIPSIS, MIDLINE HORIZONTAL
    "\u1801",  # ELLIPSIS, MONGOLIAN
    "\u22F0",  # ELLIPSIS, UP RIGHT DIAGONAL
    "\u22EE",  # ELLIPSIS, VERTICAL
    "\u2118",  # elliptic function, weierstrass
    "\u2014",  # EM DASH
    "\u2001",  # EM QUAD
    "\u2003",  # EM SPACE
    "\u202A",  # EMBEDDING, LEFT-TO-RIGHT
    "\u202B",  # EMBEDDING, RIGHT-TO-LEFT
    "\u2130",  # emf
    "\u1F3FB",  # Emoji Modifiers
    "\u1F910",  # Emoticon Faces
    "\u1F600",  # Emoticons
    "\u055B",  # EMPHASIS MARK, ARMENIAN
    "\uFE45",  # Emphasis Marks, Sidelining
    "\u2383",  # EMPHASIS SYMBOL
    "\u2205",  # EMPTY SET
    "\u29B0",  # Empty Sets
    "\u2013",  # EN DASH
    "\u2000",  # EN QUAD
    "\u2002",  # EN SPACE
    "\u1F100",  # Enclosed Alphanumeric Supplement
    "\u2460",  # Enclosed Alphanumerics
    "\u3200",  # Enclosed CJK Letters and Months
    "\u1F200",  # Enclosed Ideographic Supplement
    "\u1F110",  # Enclosed Latin Capital Letters
    "\u2295",  # Enclosed Mathematical Operators
    "\u20E0",  # ENCLOSING CIRCLE BACKSLASH, COMBINING
    "\u20DD",  # ENCLOSING CIRCLE, COMBINING
    "\u20DD",  # Enclosing Diacritics
    "\u20DF",  # ENCLOSING DIAMOND, COMBINING
    "\u20E3",  # ENCLOSING KEYCAP, COMBINING
    "\u20E2",  # ENCLOSING SCREEN, COMBINING
    "\u20DE",  # ENCLOSING SQUARE, COMBINING
    "\u20E4",  # ENCLOSING UPWARD POINTING TRIANGLE, COMBINING
    "\u21F2",  # end
    "\u0097",  # END OF GUARDED AREA
    "\u000A",  # end of line
    "\u0019",  # END OF MEDIUM
    "\u237F",  # end of medium, symbol for
    "\u2419",  # END OF MEDIUM, SYMBOL FOR
    "\u220E",  # END OF PROOF
    "\u0087",  # END OF SELECTED AREA
    "\u0003",  # END OF TEXT
    "\u2403",  # END OF TEXT, SYMBOL FOR
    "\u0004",  # END OF TRANSMISSION
    "\u0017",  # END OF TRANSMISSION BLOCK
    "\u2417",  # END OF TRANSMISSION BLOCK, SYMBOL FOR
    "\u2301",  # end of transmission symbol
    "\u2404",  # END OF TRANSMISSION, SYMBOL FOR
    "\u014B",  # ENG, LATIN SMALL LETTER
    "\u0BFA",  # enn, tamil
    "\u203F",  # enotikon, greek
    "\u0005",  # ENQUIRY
    "\u2405",  # ENQUIRY, SYMBOL FOR
    "\u2324",  # enter key
    "\u2386",  # ENTER SYMBOL
    "\u1F3A0",  # Entertainment Symbols
    "\u29DC",  # entity &iinfin;, isotech
    "\u2709",  # ENVELOPE
    "\u1F582",  # ENVELOPE, BACK OF
    "\u1F583",  # ENVELOPE, STAMPED
    "\u000A",  # eol
    "\u205D",  # epidaurean acrophonic symbol three
    "\u03F5",  # EPSILON SYMBOL, GREEK LUNATE
    "\u03F6",  # EPSILON SYMBOL, GREEK REVERSED LUNATE
    "\u0190",  # epsilon, latin capital letter
    "\u025B",  # epsilon, latin small letter
    "\u029A",  # epsilon, latin small letter closed
    "\u025E",  # epsilon, latin small letter closed reversed
    "\u03F6",  # epsilon, reversed straight
    "\u220D",  # epsilon, reversed straight
    "\u03F5",  # epsilon, straight
    "\u034C",  # EQUAL TO ABOVE, COMBINING ALMOST
    "\u225C",  # equal to by definition
    "\u225D",  # EQUAL TO BY DEFINITION
    "\u224C",  # EQUAL TO, ALL
    "\u2248",  # EQUAL TO, ALMOST
    "\u2245",  # EQUAL TO, APPROXIMATELY
    "\u2257",  # equal to, approximately
    "\u2243",  # EQUAL TO, ASYMPTOTICALLY
    "\u225C",  # EQUAL TO, DELTA
    "\u2251",  # EQUAL TO, GEOMETRICALLY
    "\u2265",  # EQUAL TO, GREATER-THAN OR
    "\u2264",  # EQUAL TO, LESS-THAN OR
    "\u2260",  # EQUAL TO, NOT
    "\u225F",  # EQUAL TO, QUESTIONED
    "\u2257",  # EQUAL TO, RING
    "\u2256",  # EQUAL TO, RING IN
    "\u2243",  # Equality and Inequality Signs
    "\u22D5",  # Equality and Inequality Signs
    "\u2255",  # EQUALS COLON
    "\u003D",  # EQUALS SIGN
    "\u0347",  # EQUALS SIGN BELOW, COMBINING
    "\u229C",  # EQUALS, CIRCLED
    "\u2254",  # EQUALS, COLON
    "\u2252",  # equals, nearly
    "\u22CD",  # EQUALS, REVERSED TILDE
    "\u225B",  # EQUALS, STAR
    "\u225C",  # equiangular
    "\u225A",  # EQUIANGULAR TO
    "\u224D",  # EQUIVALENT TO
    "\u224E",  # EQUIVALENT TO, GEOMETRICALLY
    "\u2263",  # EQUIVALENT TO, STRICTLY
    "\u29E6",  # equivalent, tautological
    "\u337B",  # Era Names, Japanese
    "\u232B",  # ERASE TO THE LEFT
    "\u2326",  # ERASE TO THE RIGHT
    "\u212F",  # error
    "\u29EE",  # Error Bar Symbols
    "\u001B",  # ESCAPE
    "\u238B",  # escape
    "\u2BB9",  # escape
    "\u0010",  # ESCAPE, DATA LINK
    "\u241B",  # ESCAPE, SYMBOL FOR
    "\u2410",  # ESCAPE, SYMBOL FOR DATA LINK
    "\u0024",  # escudo
    "\u01AA",  # ESH LOOP, LATIN LETTER REVERSED
    "\u01A9",  # ESH, LATIN CAPITAL LETTER
    "\u0283",  # ESH, LATIN SMALL LETTER
    "\u0285",  # ESH, LATIN SMALL LETTER SQUAT REVERSED
    "\u212E",  # ESTIMATED SYMBOL
    "\u2259",  # ESTIMATES
    "\u00DF",  # eszett
    "\u204A",  # ET, TIRONIAN SIGN
    "\u00D0",  # ETH, LATIN CAPITAL LETTER
    "\u1D06",  # ETH, LATIN LETTER SMALL CAPITAL
    "\u00F0",  # ETH, LATIN SMALL LETTER
    "\u0153",  # ethel
    "\u1365",  # ETHIOPIC COLON
    "\u135D",  # Ethiopic Combining Marks
    "\u1363",  # ETHIOPIC COMMA
    "\u1369",  # Ethiopic Digits
    "\u2D80",  # Ethiopic Extended
    "\uAB00",  # Ethiopic Extended-A
    "\u1362",  # ETHIOPIC FULL STOP
    "\u1369",  # Ethiopic Numbers
    "\u1368",  # ETHIOPIC PARAGRAPH SEPARATOR
    "\u1366",  # ETHIOPIC PREFACE COLON
    "\u1361",  # Ethiopic Punctuation
    "\u1367",  # ETHIOPIC QUESTION MARK
    "\u1364",  # ETHIOPIC SEMICOLON
    "\u1380",  # Ethiopic Supplement
    "\u1200",  # Ethiopic Syllables
    "\u1361",  # ETHIOPIC WORDSPACE
    "\u2107",  # EULER CONSTANT
    "\u20AC",  # euro european currency
    "\u20AC",  # EURO SIGN
    "\u0100",  # European Latin
    "\u00A7",  # european paragraph sign
    "\u00B6",  # european section sign
    "\u2239",  # EXCESS
    "\u0021",  # EXCLAMATION MARK
    "\u2762",  # EXCLAMATION MARK ORNAMENT, HEAVY
    "\u2755",  # EXCLAMATION MARK ORNAMENT, WHITE
    "\u055C",  # EXCLAMATION MARK, ARMENIAN
    "\u203C",  # EXCLAMATION MARK, DOUBLE
    "\u00A1",  # EXCLAMATION MARK, INVERTED
    "\u01C3",  # exclamation mark, latin letter
    "\u1944",  # EXCLAMATION MARK, LIMBU
    "\u2048",  # EXCLAMATION MARK, QUESTION
    "\u2049",  # EXCLAMATION QUESTION MARK
    "\u2204",  # EXIST, THERE DOES NOT
    "\u2203",  # existential quantifier
    "\u2203",  # EXISTS, THERE
    "\u212F",  # exponent, natural
    "\u31F0",  # Extensions for Ainu, Katakana
    "\u1F47D",  # EXTRATERRESTRIAL ALIEN
    "\u1F441",  # EYE
    "\u1F440",  # EYES
    "\u01B9",  # EZH REVERSED, LATIN SMALL LETTER
    "\u01EF",  # EZH WITH CARON, LATIN SMALL LETTER
    "\u01B7",  # EZH, LATIN CAPITAL LETTER
    "\u1D23",  # EZH, LATIN LETTER SMALL CAPITAL
    "\u0292",  # EZH, LATIN SMALL LETTER
    "\u1E1F",  # F WITH DOT ABOVE, LATIN SMALL LETTER
    "\u0192",  # F WITH HOOK, LATIN SMALL LETTER
    "\u0192",  # f, latin small letter script
    "\u2131",  # F, SCRIPT CAPITAL
    "\u2132",  # F, TURNED CAPITAL
    "\u214E",  # F, TURNED SMALL
    "\u1F926",  # FACE PALM
    "\u263B",  # FACE, BLACK SMILING
    "\u3020",  # FACE, POSTAL MARK
    "\u2639",  # FACE, WHITE FROWNING
    "\u263A",  # FACE, WHITE SMILING
    "\u1F600",  # Faces
    "\u1F920",  # Faces
    "\u1F440",  # Facial Parts Symbols
    "\u213B",  # FACSIMILE SIGN
    "\u0021",  # factorial
    "\u26ED",  # factory
    "\u2109",  # FAHRENHEIT, DEGREE
    "\u1F478",  # Fairy Tale Symbols
    "\u1F46A",  # FAMILY
    "\u21A1",  # fast cursor down
    "\u219E",  # fast cursor left
    "\u21A0",  # fast cursor right
    "\u219F",  # fast cursor up
    "\u23E9",  # fast forward
    "\u23EA",  # fast rewind
    "\u1F385",  # FATHER CHRISTMAS
    "\u2032",  # feet
    "\u2640",  # FEMALE SIGN
    "\u00AA",  # FEMININE ORDINAL INDICATOR
    "\u2999",  # FENCE, DOTTED
    "\u2999",  # Fences
    "\u29D8",  # Fences, Wiggly
    "\u0352",  # FERMATA, COMBINING
    "\u26F4",  # FERRY
    "\u000C",  # ff
    "\u2155",  # Fifths, Fractions
    "\u2012",  # FIGURE DASH
    "\u2007",  # FIGURE SPACE
    "\u1F4C1",  # FILE FOLDER
    "\u1F4C2",  # FILE FOLDER, OPEN
    "\u001C",  # file separator
    "\u241C",  # FILE SEPARATOR, SYMBOL FOR
    "\u303F",  # FILL SPACE, IDEOGRAPHIC HALF
    "\u3164",  # FILLER, HANGUL
    "\u1F39E",  # FILM FRAMES
    "\u261A",  # Finger Dingbats, Pointing Index
    "\u1F91E",  # fingers crossed
    "\u21FB",  # finite function
    "\u20E6",  # finite function diacritic
    "\u2915",  # finite injection
    "\u21FC",  # finite relation
    "\u2901",  # finite surjection
    "\u2918",  # finite surjective injection
    "\u1F525",  # FIRE
    "\u1F6F1",  # FIRE ENGINE, ONCOMING
    "\u263D",  # FIRST QUARTER MOON
    "\u2068",  # FIRST STRONG ISOLATE
    "\u1F41F",  # FISH
    "\u297C",  # Fish Tails
    "\u1F420",  # FISH, TROPICAL
    "\u25C9",  # FISHEYE
    "\u261E",  # fist
    "\u270A",  # FIST, RAISED
    "\u1F44A",  # FISTED HAND SIGN
    "\u2059",  # FIVE DOT PUNCTUATION
    "\u26F3",  # FLAG IN HOLE
    "\u2691",  # FLAG, BLACK
    "\u1F3F4",  # FLAG, WAVING BLACK
    "\u1F3F3",  # FLAG, WAVING WHITE
    "\u2690",  # FLAG, WHITE
    "\u266D",  # FLAT SIGN, MUSIC
    "\u23E5",  # FLATNESS
    "\u269C",  # FLEUR-DE-LIS
    "\u230A",  # FLOOR, LEFT
    "\u230B",  # FLOOR, RIGHT
    "\u1F4BE",  # FLOPPY DISK
    "\u2619",  # FLORAL HEART BULLET, REVERSED ROTATED
    "\u0192",  # florin currency symbol
    "\u1F6F8",  # FLYING SAUCER
    "\u0192",  # folder
    "\u0E4F",  # FONGMAN, THAI CHARACTER
    "\u1F37D",  # food available symbol
    "\u1F354",  # Food Symbols
    "\u1F950",  # Food Symbols
    "\u1F463",  # FOOTPRINTS
    "\u2200",  # FOR ALL
    "\u22A9",  # FORCES
    "\u1695",  # Forfeda Supplement, Ogham
    "\u1F37D",  # FORK AND KNIFE WITH PLATE
    "\u2AD9",  # Forks
    "\u2500",  # Form and Chart Components
    "\u000C",  # FORM FEED
    "\u21A1",  # form feed
    "\u240C",  # FORM FEED, SYMBOL FOR
    "\u200C",  # Format Characters
    "\u202A",  # Format Characters, Directional
    "\u180B",  # Format Controls, Mongolian
    "\u202C",  # FORMATTING, POP DIRECTIONAL
    "\u25BB",  # forward arrow indicator
    "\u2206",  # forward difference
    "\u23F5",  # forward play
    "\u23E9",  # forward, fast
    "\u26F2",  # FOUNTAIN
    "\u26F6",  # FOUR CORNERS, SQUARE
    "\u205B",  # FOUR DOT MARK
    "\u2058",  # FOUR DOT PUNCTUATION
    "\u20DC",  # FOUR DOTS ABOVE, COMBINING
    "\u1805",  # FOUR DOTS, MONGOLIAN
    "\u205E",  # FOUR DOTS, VERTICAL
    "\u2005",  # FOUR-PER-EM SPACE
    "\u2131",  # fourier transform
    "\u20DC",  # fourth derivative
    "\u221C",  # FOURTH ROOT
    "\u02CB",  # fourth tone, mandarin chinese
    "\u00BC",  # Fourths, Fractions
    "\u215F",  # FRACTION NUMERATOR ONE
    "\u00BD",  # FRACTION ONE HALF, VULGAR
    "\u2151",  # FRACTION ONE NINTH, VULGAR
    "\u00BC",  # FRACTION ONE QUARTER, VULGAR
    "\u2150",  # FRACTION ONE SEVENTH, VULGAR
    "\u2152",  # FRACTION ONE TENTH, VULGAR
    "\u2044",  # FRACTION SLASH
    "\u00BE",  # FRACTION THREE QUARTERS, VULGAR
    "\u215B",  # Fractions Eighths
    "\u2155",  # Fractions Fifths
    "\u00BC",  # Fractions Fourths
    "\u00BC",  # Fractions Quarters
    "\u2159",  # Fractions Sixths
    "\u2153",  # Fractions Thirds
    "\u2153",  # Fractions, Vulgar
    "\u1D504",  # Fraktur Mathematical Symbols
    "\u1D56C",  # Fraktur Mathematical Symbols, Bold
    "\u29D6",  # framus, white
    "\u20A3",  # FRANC SIGN, FRENCH
    "\u0295",  # FRICATIVE, LATIN LETTER PHARYNGEAL VOICED
    "\u1F438",  # FROG FACE
    "\u2322",  # FROWN
    "\u2639",  # FROWNING FACE, WHITE
    "\u1F345",  # Fruit and Vegetable Symbols
    "\u26FD",  # FUEL PUMP
    "\u2588",  # FULL BLOCK
    "\u002E",  # FULL STOP
    "\u06D4",  # FULL STOP, ARABIC
    "\u0589",  # FULL STOP, ARMENIAN
    "\u166E",  # FULL STOP, CANADIAN SYLLABICS
    "\u1362",  # FULL STOP, ETHIOPIC
    "\u0589",  # full stop, georgian
    "\u3002",  # FULL STOP, IDEOGRAPHIC
    "\u1803",  # FULL STOP, MONGOLIAN
    "\u1809",  # FULL STOP, MONGOLIAN MANCHU
    "\uFF01",  # Fullwidth ASCII Variants
    "\uFF00",  # Fullwidth Forms, Halfwidth and
    "\uFFE0",  # Fullwidth Symbol Variants
    "\u2061",  # FUNCTION APPLICATION
    "\u0192",  # function symbol
    "\u212C",  # function, bernoulli
    "\u2218",  # function, composite
    "\u21FB",  # function, finite
    "\u0393",  # function, gamma
    "\u21F8",  # function, partial
    "\u2192",  # function, total
    "\u2118",  # function, weierstrass elliptic
    "\u2336",  # Functional Symbols, APL
    "\u26B1",  # FUNERAL URN
    "\u23DB",  # FUSE
    "\u180B",  # fvs1
    "\u01F5",  # G WITH ACUTE, LATIN SMALL LETTER
    "\u011F",  # G WITH BREVE, LATIN SMALL LETTER
    "\u01E7",  # G WITH CARON, LATIN SMALL LETTER
    "\u0123",  # G WITH CEDILLA, LATIN SMALL LETTER
    "\u011D",  # G WITH CIRCUMFLEX, LATIN SMALL LETTER
    "\u0121",  # G WITH DOT ABOVE, LATIN SMALL LETTER
    "\u0193",  # G WITH HOOK, LATIN CAPITAL LETTER
    "\u029B",  # G WITH HOOK, LATIN LETTER SMALL CAPITAL
    "\u0260",  # G WITH HOOK, LATIN SMALL LETTER
    "\u1E21",  # G WITH MACRON, LATIN SMALL LETTER
    "\u01E5",  # G WITH STROKE, LATIN SMALL LETTER
    "\u0262",  # G, LATIN LETTER SMALL CAPITAL
    "\u0261",  # G, LATIN SMALL LETTER SCRIPT
    "\u210A",  # G, SCRIPT SMALL
    "\u2141",  # G, TURNED SANS-SERIF CAPITAL
    "\u2141",  # game
    "\u1F3AE",  # Game Symbols
    "\u0393",  # gamma function
    "\u213E",  # GAMMA, DOUBLE-STRUCK CAPITAL
    "\u213D",  # GAMMA, DOUBLE-STRUCK SMALL
    "\u0194",  # GAMMA, LATIN CAPITAL LETTER
    "\u0263",  # GAMMA, LATIN SMALL LETTER
    "\u0264",  # gamma, latin small letter baby
    "\u02E0",  # GAMMA, MODIFIER LETTER SMALL
    "\u26FD",  # gas station
    "\u2699",  # GEAR
    "\u264A",  # GEMINI
    "\u26A2",  # Gender Symbols
    "\u26AD",  # Genealogical Symbols
    "\u2000",  # General Punctuation
    "\u0000",  # General Scripts Area
    "\u10000",  # General Scripts Area, Supplementary
    "\u22C2",  # generalized intersection
    "\u22C3",  # generalized union
    "\u223A",  # GEOMETRIC PROPORTION
    "\u1F532",  # Geometric Shapes
    "\u25A0",  # Geometric Shapes
    "\u1F780",  # Geometric Shapes Extended
    "\u2251",  # GEOMETRICALLY EQUAL TO
    "\u224E",  # GEOMETRICALLY EQUIVALENT TO
    "\u10A0",  # Georgian
    "\u10D0",  # Georgian Alphabet
    "\u10A0",  # Georgian Capital Letters
    "\u00B7",  # georgian comma
    "\u20BE",  # georgian currency
    "\u10F1",  # Georgian Extensions
    "\u0589",  # georgian full stop
    "\u10A0",  # Georgian Khutsuri
    "\u10D0",  # Georgian Mkhedruli
    "\u10FB",  # GEORGIAN PARAGRAPH SEPARATOR
    "\u10D0",  # Georgian Small Letters
    "\u2D00",  # Georgian Supplement
    "\u2133",  # german mark pre-wwii
    "\u20B0",  # GERMAN PENNY SIGN
    "\u1F645",  # Gesture Symbols
    "\u3013",  # GETA MARK
    "\u20B5",  # ghana currency
    "\u1F47B",  # GHOST
    "\u2137",  # GIMEL SYMBOL
    "\u1F467",  # GIRL
    "\u2C00",  # Glagolitic
    "\u1E000",  # Glagolitic Supplement
    "\u29E6",  # GLEICH STARK
    "\u1F30D",  # Globe Symbols
    "\u1F310",  # GLOBE WITH MERIDIANS
    "\u02BC",  # glottal stop
    "\u0241",  # GLOTTAL STOP, LATIN CAPITAL LETTER
    "\u0294",  # GLOTTAL STOP, LATIN LETTER
    "\u0296",  # GLOTTAL STOP, LATIN LETTER INVERTED
    "\u0295",  # glottal stop, latin letter reversed
    "\u0242",  # GLOTTAL STOP, LATIN SMALL LETTER
    "\u02C0",  # GLOTTAL STOP, MODIFIER LETTER
    "\u02C1",  # GLOTTAL STOP, MODIFIER LETTER REVERSED
    "\u02E4",  # GLOTTAL STOP, MODIFIER LETTER SMALL REVERSED
    "\u2E18",  # gnaborretni
    "\u2686",  # Go Markers
    "\u1F410",  # GOAT
    "\u1F47A",  # GOBLIN, JAPANESE
    "\u1F947",  # gold medal
    "\u16EE",  # Golden Numbers, Runic
    "\u26F3",  # golf course
    "\u10330",  # Gothic
    "\u11300",  # Grantha
    "\u034F",  # GRAPHEME JOINER, COMBINING
    "\u23B7",  # Graphic Characters, Terminal
    "\u2596",  # Graphic Characters, Terminal
    "\u2400",  # Graphic Pictures for Control Codes
    "\u237D",  # Graphics for Control Codes
    "\u25F0",  # Graphics, Quadrant Control Code
    "\u0060",  # GRAVE ACCENT
    "\u0316",  # GRAVE ACCENT BELOW, COMBINING
    "\u0300",  # GRAVE ACCENT, COMBINING
    "\u030F",  # GRAVE ACCENT, COMBINING DOUBLE
    "\u02CB",  # GRAVE ACCENT, MODIFIER LETTER
    "\u02CE",  # GRAVE ACCENT, MODIFIER LETTER LOW
    "\u0060",  # grave accent, spacing
    "\u02DF",  # grave accent, swedish
    "\u0340",  # GRAVE TONE MARK, COMBINING
    "\u26FC",  # graveyard
    "\u2265",  # GREATER-THAN OR EQUAL TO
    "\u003E",  # GREATER-THAN SIGN
    "\u226B",  # GREATER-THAN, MUCH
    "\u22D9",  # GREATER-THAN, VERY MUCH
    "\u0370",  # Greek
    "\u0391",  # Greek Alphabet
    "\u00B7",  # greek ano teleia
    "\u03D8",  # Greek Archaic Letters
    "\u03D0",  # GREEK BETA SYMBOL
    "\u0391",  # Greek Capital Letters
    "\u1F7A1",  # Greek Crosses
    "\u20AF",  # greek currency
    "\u0314",  # greek dasia
    "\u0308",  # greek dialytika
    "\u0344",  # GREEK DIALYTIKA TONOS, COMBINING
    "\u203F",  # greek enotikon
    "\u1F00",  # Greek Extended
    "\u0345",  # greek iota subscript
    "\u0343",  # GREEK KORONIS, COMBINING
    "\u213C",  # Greek Letters, Double-struck
    "\u03F5",  # GREEK LUNATE EPSILON SYMBOL
    "\u03F2",  # GREEK LUNATE SIGMA SYMBOL
    "\u1D6A8",  # Greek Mathematical Symbols
    "\u1D6A8",  # Greek Mathematical Symbols, Bold
    "\u1D71C",  # Greek Mathematical Symbols, Bold Italic
    "\u1D6E2",  # Greek Mathematical Symbols, Italic
    "\u1D756",  # Greek Mathematical Symbols, Sans-serif Bold
    "\u1D790",  # Greek Mathematical Symbols, Sans-serif Bold Italic
    "\u00B7",  # greek middle dot
    "\u1D200",  # Greek Musical Notation, Ancient
    "\u0345",  # greek non-spacing iota below
    "\u10140",  # Greek Numbers, Ancient
    "\u1D516",  # greek old testament
    "\u0301",  # greek oxia
    "\u2059",  # greek pentonkion
    "\u0342",  # GREEK PERISPOMENI, COMBINING
    "\u03D5",  # GREEK PHI SYMBOL
    "\u03D6",  # GREEK PI SYMBOL
    "\u0313",  # greek psili
    "\u0374",  # Greek Punctuation and Signs
    "\u003B",  # greek question mark
    "\u037E",  # GREEK QUESTION MARK
    "\u03F6",  # GREEK REVERSED LUNATE EPSILON SYMBOL
    "\u0314",  # greek rough breathing mark
    "\u2129",  # GREEK SMALL LETTER IOTA, TURNED
    "\u03F2",  # greek small letter lunate sigma
    "\u03C0",  # GREEK SMALL LETTER PI
    "\u03B1",  # Greek Small Letters
    "\u0313",  # greek smooth breathing mark
    "\u2E0E",  # Greek Textual Symbols, Ancient
    "\u03D1",  # GREEK THETA SYMBOL
    "\u0301",  # greek tonos
    "\u0300",  # greek varia
    "\u03D0",  # Greek Variant Letterforms
    "\u0306",  # greek vrachy
    "\u0345",  # GREEK YPOGEGRAMMENI, COMBINING
    "\u0342",  # Greek, Diacritics for
    "\u1F00",  # Greek, Precomposed Polytonic
    "\u1D1D0",  # Gregorian Musical Symbols
    "\u23DA",  # GROUND, EARTH
    "\u21F0",  # group lock
    "\u21E8",  # group select (ISO 9995-7)
    "\u001D",  # group separator
    "\u241D",  # GROUP SEPARATOR, SYMBOL FOR
    "\u20B2",  # GUARANI SIGN
    "\u0097",  # GUARDED AREA, END OF
    "\u0096",  # GUARDED AREA, START OF
    "\u00AB",  # guillemet, left pointing
    "\u2039",  # guillemet, left pointing single
    "\u00BB",  # guillemet, right pointing
    "\u203A",  # guillemet, right pointing single
    "\u0A80",  # Gujarati
    "\u0A95",  # Gujarati Consonants
    "\u0ABE",  # Gujarati Dependent Vowel Signs
    "\u0AE6",  # Gujarati Digits
    "\u0A85",  # Gujarati Independent Vowels
    "\u0AF1",  # GUJARATI RUPEE SIGN
    "\u0A00",  # Gurmukhi
    "\u0A71",  # GURMUKHI ADDAK
    "\u0A15",  # Gurmukhi Consonants
    "\u0A3E",  # Gurmukhi Dependent Vowel Signs
    "\u0A66",  # Gurmukhi Digits
    "\u0A74",  # GURMUKHI EK ONKAR
    "\u0A05",  # Gurmukhi Independent Vowels
    "\u262C",  # gurmukhi khanda
    "\u0A70",  # GURMUKHI TIPPI
    "\u1E2B",  # H WITH BREVE BELOW, LATIN SMALL LETTER
    "\u021F",  # H WITH CARON, LATIN SMALL LETTER
    "\u1E29",  # H WITH CEDILLA, LATIN SMALL LETTER
    "\u0125",  # H WITH CIRCUMFLEX, LATIN SMALL LETTER
    "\u1E27",  # H WITH DIAERESIS, LATIN SMALL LETTER
    "\u1E23",  # H WITH DOT ABOVE, LATIN SMALL LETTER
    "\u1E25",  # H WITH DOT BELOW, LATIN SMALL LETTER
    "\u02AE",  # H WITH FISHHOOK, LATIN SMALL LETTER TURNED
    "\u0266",  # H WITH HOOK, LATIN SMALL LETTER
    "\u1E96",  # H WITH LINE BELOW, LATIN SMALL LETTER
    "\u0127",  # H WITH STROKE, LATIN SMALL LETTER
    "\u210C",  # H, BLACK-LETTER CAPITAL
    "\u036A",  # H, COMBINING LATIN SMALL LETTER
    "\u210D",  # H, DOUBLE-STRUCK CAPITAL
    "\u029C",  # H, LATIN LETTER SMALL CAPITAL
    "\u0265",  # H, LATIN SMALL LETTER TURNED
    "\u2095",  # H, LATIN SUBSCRIPT SMALL LETTER
    "\u02B0",  # H, MODIFIER LETTER SMALL
    "\u210B",  # H, SCRIPT CAPITAL
    "\u030C",  # hacek, combining
    "\u02C7",  # hacek, modifier letter
    "\u200A",  # HAIR SPACE
    "\u094D",  # halant
    "\u0F84",  # HALANTA, TIBETAN MARK
    "\u303F",  # HALF FILL SPACE, IDEOGRAPHIC
    "\u2321",  # HALF INTEGRAL, BOTTOM
    "\u2320",  # HALF INTEGRAL, TOP
    "\uFE20",  # Half Marks, Combining
    "\u0351",  # HALF RING ABOVE, COMBINING LEFT
    "\u0357",  # HALF RING ABOVE, COMBINING RIGHT
    "\u031C",  # HALF RING BELOW, COMBINING LEFT
    "\u0339",  # HALF RING BELOW, COMBINING RIGHT
    "\u0559",  # HALF RING, ARMENIAN MODIFIER LETTER LEFT
    "\u055A",  # half ring, armenian modifier letter right
    "\u02D3",  # HALF RING, MODIFIER LETTER CENTRED LEFT
    "\u02BF",  # HALF RING, MODIFIER LETTER LEFT
    "\u02D1",  # HALF TRIANGULAR COLON, MODIFIER LETTER
    "\u00BD",  # HALF, VULGAR FRACTION ONE
    "\uFF00",  # Halfwidth and Fullwidth Forms
    "\uFF61",  # Halfwidth CJK Punctuation
    "\uFF61",  # Halfwidth Japanese Katakana Variants
    "\uFFA0",  # Halfwidth Korean Hangul Variants
    "\uFFE8",  # Halfwidth Symbol Variants
    "\u25BD",  # hamilton operator
    "\u2692",  # HAMMER AND PICK
    "\u262D",  # HAMMER AND SICKLE
    "\u1F439",  # HAMSTER FACE
    "\u06C0",  # hamzah on ha, arabic letter
    "\u4E00",  # Han Ideographs
    "\u309A",  # han-daku-on, combining japanese
    "\u309C",  # han-daku-on, japanese
    "\u1F446",  # Hand Symbols
    "\u1F58E",  # Hand Symbols
    "\u1F918",  # Hand Symbols
    "\u261A",  # Hand Symbols, Pointing
    "\u1F446",  # Hand, Index Finger Pointing
    "\u270B",  # HAND, RAISED
    "\u1F91A",  # HAND, RAISED BACK OF
    "\u270C",  # HAND, VICTORY
    "\u270D",  # HAND, WRITING
    "\u1F91D",  # HANDSHAKE
    "\u3165",  # Hangul Archaic Letters, Korean
    "\u115F",  # HANGUL CHOSEONG FILLER
    "\u3130",  # Hangul Compatibility Jamo, Korean
    "\u3164",  # HANGUL FILLER
    "\u1100",  # Hangul Jamo Combining Alphabet, Korean
    "\uA960",  # Hangul Jamo Extended-A, Korean
    "\uD7B0",  # Hangul Jamo Extended-B, Korean
    "\u1160",  # HANGUL JUNGSEONG FILLER
    "\u3260",  # Hangul Letters, Circled Korean
    "\u3200",  # Hangul Letters, Parenthesized Korean
    "\uAC00",  # Hangul Syllables Area, Korean
    "\u326E",  # Hangul Syllables, Circled Korean
    "\u320E",  # Hangul Syllables, Parenthesized Korean
    "\uFFA0",  # Hangul Variants, Halfwidth Korean
    "\u3021",  # Hangzhou Numerals
    "\u1720",  # Hanunoo
    "\u064B",  # Harakat, Arabic
    "\u2693",  # harbor symbol
    "\u1F477",  # hardhat
    "\u20D0",  # HARPOON ABOVE, COMBINING LEFT
    "\u20D1",  # HARPOON ABOVE, COMBINING RIGHT
    "\u20ED",  # HARPOON WITH BARB DOWNWARDS, COMBINING LEFTWARDS
    "\u20EC",  # HARPOON WITH BARB DOWNWARDS, COMBINING RIGHTWARDS
    "\u21BC",  # Harpoons
    "\u294A",  # Harpoons, Miscellaneous
    "\u055E",  # hartsakan nshan, armenian
    "\u09CD",  # hasant, bengali
    "\uA806",  # HASANTA, SYLOTI NAGRI SIGN
    "\u0023",  # hash
    "\u0302",  # hat
    "\u2229",  # hat
    "\u108E0",  # Hatran
    "\u263A",  # have a nice day!
    "\u2620",  # Hazard Dingbats
    "\u0F01",  # Head Marks, Tibetan
    "\u0001",  # HEADING, START OF
    "\u2401",  # HEADING, SYMBOL FOR START OF
    "\u1F3A7",  # HEADPHONE
    "\u26FC",  # HEADSTONE GRAVEYARD SYMBOL
    "\u2619",  # HEART BULLET, REVERSED ROTATED FLORAL
    "\u2763",  # Heart Dingbats
    "\u2763",  # Heart Ornaments
    "\u1F493",  # Heart Symbols
    "\u1F5A4",  # HEART, BLACK
    "\u2718",  # HEAVY BALLOT X
    "\u2714",  # HEAVY CHECK MARK
    "\u2762",  # HEAVY EXCLAMATION MARK ORNAMENT
    "\u2716",  # HEAVY MULTIPLICATION X
    "\u2748",  # HEAVY SPARKLE
    "\u0590",  # Hebrew
    "\u05D0",  # Hebrew Alphabet
    "\u0591",  # Hebrew Cantillation Marks
    "\u2135",  # Hebrew Letterlike Mathematical Symbols
    "\u05B0",  # Hebrew Points and Punctuation
    "\uFB1D",  # Hebrew Presentation Forms
    "\u2767",  # hedera
    "\u06C0",  # HEH WITH YEH ABOVE, ARABIC LETTER
    "\u2388",  # HELM SYMBOL
    "\u26D1",  # HELMET WITH WHITE CROSS
    "\u1B002",  # Hentaigana
    "\u1B100",  # Hentaigana
    "\u269A",  # HERMES, STAFF OF
    "\u22B9",  # HERMITIAN CONJUGATE MATRIX
    "\u4DC0",  # Hexagram Symbols, Yijing / I Ching
    "\u14400",  # Hieroglyphs, Anatolian
    "\u13000",  # Hieroglyphs, Egyptian
    "\u26A1",  # HIGH VOLTAGE SIGN
    "\u201F",  # HIGH-REVERSED-9 QUOTATION MARK, DOUBLE
    "\u201B",  # HIGH-REVERSED-9 QUOTATION MARK, SINGLE
    "\u227B",  # higher rank than
    "\u210C",  # hilbert space
    "\u3040",  # Hiragana
    "\u309D",  # HIRAGANA ITERATION MARK
    "\u3095",  # HIRAGANA LETTER SMALL KA
    "\u3096",  # HIRAGANA LETTER SMALL KE
    "\u3095",  # Hiragana Supplement
    "\u309E",  # HIRAGANA VOICED ITERATION MARK
    "\u25AE",  # histogram marker
    "\u26EC",  # HISTORIC SITE
    "\u2365",  # holler
    "\u21B8",  # home
    "\u21F1",  # home
    "\u223B",  # HOMOTHETIC
    "\u034B",  # HOMOTHETIC ABOVE, COMBINING
    "\u1F41D",  # HONEYBEE
    "\u0610",  # Honorifics, Arabic
    "\u0309",  # HOOK ABOVE, COMBINING
    "\u0321",  # HOOK BELOW, COMBINING PALATALIZED
    "\u0322",  # HOOK BELOW, COMBINING RETROFLEX
    "\u02DE",  # HOOK, MODIFIER LETTER RHOTIC
    "\u0328",  # hook, nasal
    "\u2364",  # hoot
    "\u2015",  # HORIZONTAL BAR
    "\u2026",  # HORIZONTAL ELLIPSIS
    "\u22EF",  # HORIZONTAL ELLIPSIS, MIDLINE
    "\u23BA",  # Horizontal Scan Lines
    "\u0009",  # horizontal tabulation
    "\u2409",  # HORIZONTAL TABULATION, SYMBOL FOR
    "\u031B",  # HORN, COMBINING
    "\u1F40E",  # HORSE
    "\u1F434",  # HORSE FACE
    "\u26E8",  # hospital
    "\u2615",  # HOT BEVERAGE
    "\u1F32D",  # HOT DOG
    "\u2668",  # HOT SPRINGS
    "\u231B",  # HOURGLASS
    "\u23F3",  # HOURGLASS WITH FLOWING SAND
    "\u29D7",  # HOURGLASS, BLACK
    "\u3358",  # Hours, Ideographic Telegraph Symbols for
    "\u2302",  # HOUSE
    "\u20B4",  # HRYVNIA SIGN
    "\u0009",  # ht
    "\u10C80",  # Hungarian, Old
    "\u0195",  # HV, LATIN SMALL LETTER
    "\u01F6",  # HWAIR, LATIN CAPITAL LETTER
    "\u2010",  # HYPHEN
    "\u2043",  # HYPHEN BULLET
    "\u002D",  # hyphen or minus sign
    "\u058A",  # HYPHEN, ARMENIAN
    "\u00AD",  # hyphen, discretionary
    "\u2E40",  # HYPHEN, DOUBLE
    "\u30A0",  # HYPHEN, KATAKANA-HIRAGANA DOUBLE
    "\u1806",  # HYPHEN, MONGOLIAN TODO SOFT
    "\u2011",  # HYPHEN, NON-BREAKING
    "\u035C",  # hyphen, papyrological
    "\u00AD",  # HYPHEN, SOFT
    "\u002D",  # HYPHEN-MINUS
    "\u2027",  # HYPHENATION POINT
    "\u002D",  # hyphus
    "\u238E",  # HYSTERESIS SYMBOL
    "\u0197",  # i bar, latin capital letter
    "\u4DC0",  # I Ching / Yijing Hexagram Symbols
    "\u268A",  # I Ching / Yijing Monogram and Digram Symbols
    "\u2630",  # I Ching / Yijing Trigram Symbols
    "\u0130",  # i dot, latin capital letter
    "\u1F91F",  # I LOVE YOU HAND SIGN
    "\u00CD",  # I WITH ACUTE, LATIN CAPITAL LETTER
    "\u00ED",  # I WITH ACUTE, LATIN SMALL LETTER
    "\u012D",  # I WITH BREVE, LATIN SMALL LETTER
    "\u01D0",  # I WITH CARON, LATIN SMALL LETTER
    "\u00CE",  # I WITH CIRCUMFLEX, LATIN CAPITAL LETTER
    "\u00EE",  # I WITH CIRCUMFLEX, LATIN SMALL LETTER
    "\u00CF",  # I WITH DIAERESIS, LATIN CAPITAL LETTER
    "\u00EF",  # I WITH DIAERESIS, LATIN SMALL LETTER
    "\u0130",  # I WITH DOT ABOVE, LATIN CAPITAL LETTER
    "\u1ECB",  # I WITH DOT BELOW, LATIN SMALL LETTER
    "\u0209",  # I WITH DOUBLE GRAVE, LATIN SMALL LETTER
    "\u00CC",  # I WITH GRAVE, LATIN CAPITAL LETTER
    "\u00EC",  # I WITH GRAVE, LATIN SMALL LETTER
    "\u1EC9",  # I WITH HOOK ABOVE, LATIN SMALL LETTER
    "\u020B",  # I WITH INVERTED BREVE, LATIN SMALL LETTER
    "\u012B",  # I WITH MACRON, LATIN SMALL LETTER
    "\u012F",  # I WITH OGONEK, LATIN SMALL LETTER
    "\u0197",  # I WITH STROKE, LATIN CAPITAL LETTER
    "\u0268",  # I WITH STROKE, LATIN SMALL LETTER
    "\u1E2D",  # I WITH TILDE BELOW, LATIN SMALL LETTER
    "\u0129",  # I WITH TILDE, LATIN SMALL LETTER
    "\u2111",  # I, BLACK-LETTER CAPITAL
    "\u0365",  # I, COMBINING LATIN SMALL LETTER
    "\u2148",  # I, DOUBLE-STRUCK ITALIC SMALL
    "\u026A",  # I, LATIN LETTER SMALL CAPITAL
    "\u0131",  # I, LATIN SMALL LETTER DOTLESS
    "\u1D09",  # I, LATIN SMALL LETTER TURNED
    "\u1D62",  # I, LATIN SUBSCRIPT SMALL LETTER
    "\u2110",  # I, SCRIPT CAPITAL
    "\u2071",  # I, SUPERSCRIPT LATIN SMALL LETTER
    "\u26F8",  # ICE SKATE
    "\u26D0",  # icy road
    "\u1F4A1",  # idea
    "\u2261",  # IDENTICAL TO
    "\u2262",  # IDENTICAL TO, NOT
    "\u10080",  # Ideograms, Linear B
    "\u3190",  # Ideographic Annotation, Japanese Kanbun
    "\u3006",  # IDEOGRAPHIC CLOSING MARK
    "\u3001",  # IDEOGRAPHIC COMMA
    "\u2FF0",  # Ideographic Description Characters, CJK
    "\u3002",  # IDEOGRAPHIC FULL STOP
    "\u303F",  # IDEOGRAPHIC HALF FILL SPACE
    "\u3005",  # IDEOGRAPHIC ITERATION MARK
    "\u303B",  # IDEOGRAPHIC ITERATION MARK, VERTICAL
    "\u3007",  # IDEOGRAPHIC NUMBER ZERO
    "\u3000",  # IDEOGRAPHIC SPACE
    "\u1F200",  # Ideographic Supplement, Enclosed
    "\u16FE0",  # Ideographic Symbols and Punctuation
    "\u33E0",  # Ideographic Telegraph Symbols for Days
    "\u3358",  # Ideographic Telegraph Symbols for Hours
    "\u32C0",  # Ideographic Telegraph Symbols for Months
    "\u302A",  # Ideographic Tone Marks
    "\u303E",  # IDEOGRAPHIC VARIATION INDICATOR
    "\u3400",  # Ideographs Area, CJK
    "\u20000",  # Ideographs Area, Supplementary CJK
    "\u3400",  # Ideographs Extension A, CJK Unified
    "\u20000",  # Ideographs Extension B, CJK Unified
    "\u2A700",  # Ideographs Extension C, CJK Unified
    "\u2B740",  # Ideographs Extension D, CJK Unified
    "\u2F800",  # Ideographs Supplement, CJK Compatibility
    "\u3280",  # Ideographs, Circled
    "\uF900",  # Ideographs, CJK Compatibility
    "\u4E00",  # Ideographs, CJK Unified
    "\uFA70",  # Ideographs, DPRK Compatibility
    "\u4E00",  # Ideographs, Han
    "\uFA30",  # Ideographs, JIS X 0213 Compatibility
    "\u3220",  # Ideographs, Parenthesized CJK
    "\u2416",  # IDLE, SYMBOL FOR SYNCHRONOUS
    "\u0016",  # IDLE, SYNCHRONOUS
    "\u0133",  # IJ, LATIN SMALL LIGATURE
    "\u22B7",  # IMAGE OF
    "\u228F",  # IMAGE OF, SQUARE
    "\u2111",  # imaginary part
    "\u1F47F",  # IMP
    "\u10840",  # Imperial Aramaic
    "\u22A2",  # implies
    "\u2033",  # inches
    "\u2282",  # included in set
    "\u2283",  # includes in set
    "\u337F",  # incorporated, japanese
    "\u23F6",  # increase
    "\u2206",  # INCREMENT
    "\u2AEB",  # independence
    "\u2ADD",  # independent
    "\u2ADC",  # independent, not
    "\u261A",  # Index Finger Dingbats, Pointing
    "\u1F446",  # Index Finger Pointing Hand
    "\u261A",  # INDEX, BLACK LEFT POINTING
    "\u261B",  # INDEX, BLACK RIGHT POINTING
    "\u261F",  # INDEX, WHITE DOWN POINTING
    "\u261C",  # INDEX, WHITE LEFT POINTING
    "\u261E",  # INDEX, WHITE RIGHT POINTING
    "\u261D",  # INDEX, WHITE UP POINTING
    "\u20A8",  # indian currency
    "\u20B9",  # INDIAN RUPEE SIGN
    "\uA830",  # Indic Number Forms, Common
    "\u25C5",  # indicator, backward arrow
    "\u25BB",  # indicator, forward arrow
    "\u2243",  # Inequality Signs, Equality and
    "\u22D5",  # Inequality Signs, Equality and
    "\u221E",  # INFINITY
    "\u266F",  # infix bag count
    "\u1F6C8",  # information
    "\u001C",  # INFORMATION SEPARATOR FOUR
    "\u001F",  # INFORMATION SEPARATOR ONE
    "\u001D",  # INFORMATION SEPARATOR THREE
    "\u001E",  # INFORMATION SEPARATOR TWO
    "\u2139",  # INFORMATION SOURCE
    "\u2193",  # ingressive airflow
    "\u2915",  # injection, finite
    "\u2918",  # injection, finite surjective
    "\u2914",  # injection, partial
    "\u2917",  # injection, surjective
    "\u21A3",  # injection, total
    "\u2041",  # INSERTION POINT, CARET
    "\u2380",  # INSERTION SYMBOL
    "\u2124",  # integers
    "\u222B",  # INTEGRAL
    "\u2A16",  # INTEGRAL OPERATOR, QUATERNION
    "\u222B",  # Integral Signs
    "\u2233",  # INTEGRAL, ANTICLOCKWISE CONTOUR
    "\u2321",  # INTEGRAL, BOTTOM HALF
    "\u2231",  # INTEGRAL, CLOCKWISE
    "\u2232",  # INTEGRAL, CLOCKWISE CONTOUR
    "\u222E",  # INTEGRAL, CONTOUR
    "\u2233",  # integral, counterclockwise contour
    "\u222C",  # INTEGRAL, DOUBLE
    "\u2A1C",  # integral, lower
    "\u211B",  # integral, riemann
    "\u222F",  # INTEGRAL, SURFACE
    "\u2320",  # INTEGRAL, TOP HALF
    "\u222D",  # INTEGRAL, TRIPLE
    "\u2A1B",  # integral, upper
    "\u2230",  # INTEGRAL, VOLUME
    "\u2A0A",  # Integrals, Summations and
    "\u2A11",  # INTEGRATION, ANTICLOCKWISE
    "\u2A11",  # integration, counterclockwise
    "\u22BA",  # INTERCALATE
    "\u2318",  # INTEREST SIGN, PLACE OF
    "\u2A3C",  # INTERIOR PRODUCT
    "\u2A3D",  # INTERIOR PRODUCT, RIGHTHAND
    "\u2AF4",  # interleave
    "\uFFF9",  # Interlinear Annotation
    "\uFFF9",  # INTERLINEAR ANNOTATION ANCHOR
    "\uFFFA",  # INTERLINEAR ANNOTATION SEPARATOR
    "\uFFFB",  # INTERLINEAR ANNOTATION TERMINATOR
    "\u203D",  # INTERROBANG
    "\u2E18",  # INTERROBANG, INVERTED
    "\u238A",  # interrupt
    "\u2229",  # INTERSECTION
    "\u22D2",  # INTERSECTION, DOUBLE
    "\u23E7",  # INTERSECTION, ELECTRICAL
    "\u22C2",  # intersection, generalized
    "\u22C2",  # INTERSECTION, N-ARY
    "\u22D4",  # intersection, proper
    "\u2A40",  # Intersections and Unions
    "\u0F0B",  # INTERSYLLABIC TSHEG, TIBETAN MARK
    "\u009B",  # INTRODUCER, CONTROL SEQUENCE
    "\u009A",  # INTRODUCER, SINGLE CHARACTER
    "\u2776",  # Inverse Numbers, Circled
    "\u032F",  # INVERTED BREVE BELOW, COMBINING
    "\u0311",  # INVERTED BREVE, COMBINING
    "\u0361",  # INVERTED BREVE, COMBINING DOUBLE
    "\u033A",  # INVERTED BRIDGE BELOW, COMBINING
    "\u032B",  # INVERTED DOUBLE ARCH BELOW, COMBINING
    "\u00A1",  # INVERTED EXCLAMATION MARK
    "\u0296",  # INVERTED GLOTTAL STOP, LATIN LETTER
    "\u2E18",  # INVERTED INTERROBANG
    "\u223E",  # INVERTED LAZY S
    "\u2127",  # INVERTED OHM SIGN
    "\u00BF",  # INVERTED QUESTION MARK
    "\u0281",  # INVERTED R, LATIN LETTER SMALL CAPITAL
    "\u02B6",  # INVERTED R, MODIFIER LETTER SMALL CAPITAL
    "\u2054",  # INVERTED UNDERTIE
    "\u2063",  # invisible comma
    "\u2064",  # INVISIBLE PLUS
    "\u2063",  # INVISIBLE SEPARATOR
    "\u2062",  # INVISIBLE TIMES
    "\u0345",  # iota below, greek non-spacing
    "\u0345",  # iota subscript, greek
    "\u0196",  # IOTA, LATIN CAPITAL LETTER
    "\u0269",  # IOTA, LATIN SMALL LETTER
    "\u2129",  # IOTA, TURNED GREEK SMALL LETTER
    "\u0250",  # IPA Extensions
    "\u0346",  # IPA, Diacritics for
    "\uFDFC",  # iranian currency
    "\u00A3",  # irish punt
    "\u2068",  # ISOLATE, FIRST STRONG
    "\u2066",  # ISOLATE, LEFT-TO-RIGHT
    "\u2069",  # ISOLATE, POP DIRECTIONAL
    "\u2067",  # ISOLATE, RIGHT-TO-LEFT
    "\u29DC",  # isotech entity &iinfin;
    "\u20AA",  # israeli currency
    "\u09FA",  # ISSHAR, BENGALI
    "\u0B70",  # ISSHAR, ORIYA
    "\u20A4",  # italian currency
    "\u00A3",  # italian lira
    "\u1D6E2",  # Italic Greek Mathematical Symbols
    "\u1D71C",  # Italic Greek Mathematical Symbols, Bold
    "\u1D790",  # Italic Greek Mathematical Symbols, Sans-serif Bold
    "\u1D434",  # Italic Mathematical Symbols
    "\u1D468",  # Italic Mathematical Symbols, Bold
    "\u1D608",  # Italic Mathematical Symbols, Sans-serif
    "\u1D63C",  # Italic Mathematical Symbols, Sans-serif Bold
    "\u10300",  # Italic, Old
    "\u2700",  # ITC Zapf Dingbats Series 100
    "\u309D",  # ITERATION MARK, HIRAGANA
    "\u309E",  # ITERATION MARK, HIRAGANA VOICED
    "\u3005",  # ITERATION MARK, IDEOGRAPHIC
    "\u30FD",  # ITERATION MARK, KATAKANA
    "\u30FE",  # ITERATION MARK, KATAKANA VOICED
    "\u303B",  # ITERATION MARK, VERTICAL IDEOGRAPHIC
    "\u2767",  # ivy leaf
    "\u06C0",  # izafet
    "\u01F0",  # J WITH CARON, LATIN SMALL LETTER
    "\u0135",  # J WITH CIRCUMFLEX, LATIN SMALL LETTER
    "\u029D",  # J WITH CROSSED-TAIL, LATIN SMALL LETTER
    "\u0248",  # J WITH STROKE, LATIN CAPITAL LETTER
    "\u0249",  # J WITH STROKE, LATIN SMALL LETTER
    "\u025F",  # J WITH STROKE, LATIN SMALL LETTER DOTLESS
    "\u2149",  # J, DOUBLE-STRUCK ITALIC SMALL
    "\u1D0A",  # J, LATIN LETTER SMALL CAPITAL
    "\u0237",  # J, LATIN SMALL LETTER DOTLESS
    "\u02B2",  # J, MODIFIER LETTER SMALL
    "\u2749",  # jack
    "\u1100",  # Jamo Combining Alphabet, Korean Hangul
    "\u3130",  # Jamo, Korean Hangul Compatibility
    "\u25C9",  # japanese bullet, tainome
    "\u2616",  # Japanese Chess Symbols
    "\u337B",  # Japanese Era Names
    "\u3040",  # Japanese Hiragana
    "\u337F",  # japanese incorporated
    "\u3004",  # JAPANESE INDUSTRIAL STANDARD SYMBOL
    "\u3190",  # Japanese Kanbun Ideographic Annotation
    "\u30A0",  # Japanese Katakana
    "\uFF61",  # Japanese Katakana Variants, Halfwidth
    "\u3300",  # Japanese Katakana Words, Squared
    "\u32D0",  # Japanese Katakana, Circled
    "\u203B",  # japanese kome
    "\uA980",  # Javanese
    "\u2629",  # JERUSALEM, CROSS OF
    "\u20DD",  # jis composition circle
    "\uFA30",  # JIS X 0213 Compatibility Ideographs
    "\u2A1D",  # JOIN
    "\u034F",  # JOINER, COMBINING GRAPHEME
    "\u2060",  # JOINER, WORD
    "\u200D",  # JOINER, ZERO WIDTH
    "\u2620",  # jolly roger
    "\u2218",  # jot, apl
    "\u2643",  # JUPITER
    "\u2696",  # jurisprudence symbol
    "\u1E31",  # K WITH ACUTE, LATIN SMALL LETTER
    "\u01E9",  # K WITH CARON, LATIN SMALL LETTER
    "\u0137",  # K WITH CEDILLA, LATIN SMALL LETTER
    "\u1E33",  # K WITH DOT BELOW, LATIN SMALL LETTER
    "\u0199",  # K WITH HOOK, LATIN SMALL LETTER
    "\u1E35",  # K WITH LINE BELOW, LATIN SMALL LETTER
    "\u1D0B",  # K, LATIN LETTER SMALL CAPITAL
    "\u029E",  # K, LATIN SMALL LETTER TURNED
    "\u2096",  # K, LATIN SUBSCRIPT SMALL LETTER
    "\u3095",  # KA, HIRAGANA LETTER SMALL
    "\u337F",  # kabusiki-gaisya
    "\u11080",  # Kaithi
    "\u1B100",  # Kana Extended-A
    "\u3031",  # Kana Repeat Marks
    "\u1B000",  # Kana Supplement
    "\u3190",  # Kanbun Ideographic Annotation, Japanese
    "\u2F00",  # Kangxi Radicals, CJK
    "\u0C80",  # Kannada
    "\u0C95",  # Kannada Consonants
    "\u0CBE",  # Kannada Dependent Vowel Signs
    "\u0CE6",  # Kannada Digits
    "\u0C85",  # Kannada Independent Vowels
    "\u0640",  # kashida, arabic
    "\u30A0",  # Katakana
    "\u30FF",  # KATAKANA DIGRAPH KOTO
    "\u31F0",  # Katakana Extensions for Ainu
    "\u30FD",  # KATAKANA ITERATION MARK
    "\u30FB",  # KATAKANA MIDDLE DOT
    "\u31F0",  # Katakana Phonetic Extensions
    "\uFF61",  # Katakana Variants, Halfwidth Japanese
    "\u30FE",  # KATAKANA VOICED ITERATION MARK
    "\u3300",  # Katakana Words, Squared
    "\u32D0",  # Katakana, Circled
    "\u30A0",  # KATAKANA-HIRAGANA DOUBLE HYPHEN
    "\u30FC",  # KATAKANA-HIRAGANA PROLONGED SOUND MARK
    "\uA900",  # Kayah Li
    "\u212A",  # KELVIN SIGN
    "\u27E9",  # ket
    "\u2327",  # key, clear
    "\u2318",  # key, command
    "\u232B",  # key, delete to the left
    "\u2326",  # key, delete to the right
    "\u2324",  # key, enter
    "\u2325",  # KEY, OPTION
    "\u26BF",  # KEY, SQUARED
    "\u2328",  # KEYBOARD
    "\u237D",  # keyboard symbol for no break space
    "\u21E6",  # Keyboard Symbols
    "\u2324",  # Keyboard Symbols
    "\u2380",  # Keyboard Symbols
    "\u2396",  # Keyboard Symbols
    "\u20E3",  # KEYCAP, COMBINING ENCLOSING
    "\u262C",  # khanda, gurmukhi
    "\u10A00",  # Kharoshthi
    "\u10A40",  # Kharoshthi Digits
    "\u1780",  # Khmer
    "\u17C6",  # khmer anusvara
    "\u1780",  # Khmer Consonants
    "\u17DB",  # KHMER CURRENCY SYMBOL RIEL
    "\u17B6",  # Khmer Dependent Vowel Signs
    "\u17E0",  # Khmer Digits
    "\u17A5",  # Khmer Independent Vowels
    "\u17F0",  # Khmer Numeric Symbols for Divination
    "\u17C6",  # KHMER SIGN NIKAHIT
    "\u17C7",  # KHMER SIGN REAHMUK
    "\u17C6",  # Khmer Signs
    "\u17C7",  # khmer srak ah
    "\u17C6",  # khmer srak am
    "\u19E0",  # Khmer Symbols
    "\u17C7",  # khmer visarga
    "\u11200",  # Khojki
    "\u0E5B",  # KHOMUT, THAI CHARACTER
    "\u112B0",  # Khudawadi
    "\u10A0",  # Khutsuri, Georgian
    "\u1D1DE",  # Kievan Musical Symbols
    "\u1039",  # killer, myanmar
    "\u20AD",  # KIP SIGN
    "\u2311",  # kissen
    "\u1F428",  # KOALA
    "\u203B",  # kome, japanese
    "\u0500",  # Komi Letters
    "\u06D6",  # Koranic Annotation Signs, Arabic
    "\u1100",  # Korean Combining Alphabet
    "\u20A9",  # korean currency
    "\u3165",  # Korean Hangul Archaic Letters
    "\u3130",  # Korean Hangul Compatibility Jamo
    "\u1100",  # Korean Hangul Jamo Combining Alphabet
    "\uA960",  # Korean Hangul Jamo Extended-A
    "\uD7B0",  # Korean Hangul Jamo Extended-B
    "\u3260",  # Korean Hangul Letters, Circled
    "\u3200",  # Korean Hangul Letters, Parenthesized
    "\uAC00",  # Korean Hangul Syllables
    "\u326E",  # Korean Hangul Syllables, Circled
    "\u320E",  # Korean Hangul Syllables, Parenthesized
    "\uFFA0",  # Korean Hangul Variants, Halfwidth
    "\u327F",  # KOREAN STANDARD SYMBOL
    "\u0343",  # KORONIS, COMBINING GREEK
    "\u30FF",  # KOTO, KATAKANA DIGRAPH
    "\u0138",  # KRA, LATIN SMALL LETTER
    "\u2114",  # L B BAR SYMBOL
    "\u013A",  # L WITH ACUTE, LATIN SMALL LETTER
    "\u023D",  # L WITH BAR, LATIN CAPITAL LETTER
    "\u019A",  # L WITH BAR, LATIN SMALL LETTER
    "\u026C",  # L WITH BELT, LATIN SMALL LETTER
    "\u013E",  # L WITH CARON, LATIN SMALL LETTER
    "\u013C",  # L WITH CEDILLA, LATIN SMALL LETTER
    "\u1E3D",  # L WITH CIRCUMFLEX BELOW, LATIN SMALL LETTER
    "\u0234",  # L WITH CURL, LATIN SMALL LETTER
    "\u1E37",  # L WITH DOT BELOW, LATIN SMALL LETTER
    "\u1E3B",  # L WITH LINE BELOW, LATIN SMALL LETTER
    "\u0140",  # L WITH MIDDLE DOT, LATIN SMALL LETTER
    "\u026B",  # L WITH MIDDLE TILDE, LATIN SMALL LETTER
    "\u026D",  # L WITH RETROFLEX HOOK, LATIN SMALL LETTER
    "\u1D0C",  # L WITH STROKE, LATIN LETTER SMALL CAPITAL
    "\u0142",  # L WITH STROKE, LATIN SMALL LETTER
    "\u029F",  # L, LATIN LETTER SMALL CAPITAL
    "\u2097",  # L, LATIN SUBSCRIPT SMALL LETTER
    "\u02E1",  # L, MODIFIER LETTER SMALL
    "\u2143",  # L, REVERSED SANS-SERIF CAPITAL
    "\u2112",  # L, SCRIPT CAPITAL
    "\u2113",  # L, SCRIPT SMALL
    "\u2142",  # L, TURNED SANS-SERIF CAPITAL
    "\u1F41E",  # LADY BEETLE
    "\u019B",  # lambda bar, latin letter
    "\uE0001",  # LANGUAGE TAG
    "\u0E80",  # Lao
    "\u0ECC",  # LAO CANCELLATION MARK
    "\u0E81",  # Lao Consonants
    "\u0ED0",  # Lao Digits
    "\u0EAF",  # LAO ELLIPSIS
    "\u0EC8",  # Lao Marks and Signs
    "\u0ECD",  # LAO NIGGAHITA
    "\u0EB0",  # Lao Vowels
    "\u20AD",  # laotian currency
    "\u2206",  # laplace operator
    "\u2112",  # laplace transform
    "\u2A1D",  # large bowtie
    "\u25EF",  # LARGE CIRCLE
    "\u29F8",  # Large Operators
    "\u20BE",  # LARI SIGN
    "\u263E",  # LAST QUARTER MOON
    "\u01C1",  # LATERAL CLICK, LATIN LETTER
    "\u3371",  # Latin Abbreviations, Squared
    "\u3380",  # Latin Abbreviations, Squared
    "\u1F110",  # Latin Capital Letters, Enclosed
    "\u1F110",  # Latin Capital Letters, Parenthesized
    "\u271D",  # LATIN CROSS
    "\u1E00",  # Latin Extended Additional
    "\u0100",  # Latin Extended-A
    "\u0180",  # Latin Extended-B
    "\u2C60",  # Latin Extended-C
    "\uA720",  # Latin Extended-D
    "\uAB30",  # Latin Extended-E
    "\u1D00",  # Latin Extensions
    "\u1D25",  # LATIN LETTER AIN
    "\u01C2",  # LATIN LETTER ALVEOLAR CLICK
    "\u02AD",  # LATIN LETTER BIDENTAL PERCUSSIVE
    "\u0298",  # LATIN LETTER BILABIAL CLICK
    "\u02AC",  # LATIN LETTER BILABIAL PERCUSSIVE
    "\u0298",  # latin letter bullseye
    "\u01C0",  # LATIN LETTER DENTAL CLICK
    "\u01C3",  # latin letter exclamation mark
    "\u0294",  # LATIN LETTER GLOTTAL STOP
    "\u0296",  # LATIN LETTER INVERTED GLOTTAL STOP
    "\u019B",  # latin letter lambda bar
    "\u01C1",  # LATIN LETTER LATERAL CLICK
    "\u0295",  # LATIN LETTER PHARYNGEAL VOICED FRICATIVE
    "\u01C3",  # LATIN LETTER RETROFLEX CLICK
    "\u01AA",  # LATIN LETTER REVERSED ESH LOOP
    "\u0295",  # latin letter reversed glottal stop
    "\u0297",  # LATIN LETTER STRETCHED C
    "\u1D24",  # LATIN LETTER VOICED LARYNGEAL SPIRANT
    "\u01BF",  # LATIN LETTER WYNN
    "\u01A6",  # LATIN LETTER YR
    "\u1F12B",  # Latin Letters, Circled
    "\u24B6",  # Latin Letters, Circled
    "\u1F110",  # Latin Letters, Parenthesized
    "\u249C",  # Latin Letters, Parenthesized
    "\u02B0",  # Latin Letters, Phonetic Modifiers Derived from
    "\u1F131",  # Latin Letters, Squared
    "\uFB00",  # Latin Ligatures
    "\u0061",  # Latin Lowercase Alphabet
    "\u00E6",  # LATIN SMALL LETTER AE
    "\u0251",  # LATIN SMALL LETTER ALPHA
    "\u0264",  # latin small letter baby gamma
    "\u029A",  # latin small letter closed epsilon
    "\u0277",  # LATIN SMALL LETTER CLOSED OMEGA
    "\u025E",  # latin small letter closed reversed epsilon
    "\u0238",  # LATIN SMALL LETTER DB DIGRAPH
    "\u014B",  # LATIN SMALL LETTER ENG
    "\u025B",  # latin small letter epsilon
    "\u0283",  # LATIN SMALL LETTER ESH
    "\u00F0",  # LATIN SMALL LETTER ETH
    "\u0292",  # LATIN SMALL LETTER EZH
    "\u01B9",  # LATIN SMALL LETTER EZH REVERSED
    "\u01EF",  # LATIN SMALL LETTER EZH WITH CARON
    "\u0263",  # LATIN SMALL LETTER GAMMA
    "\u0242",  # LATIN SMALL LETTER GLOTTAL STOP
    "\u0195",  # LATIN SMALL LETTER HV
    "\u0269",  # LATIN SMALL LETTER IOTA
    "\u0138",  # LATIN SMALL LETTER KRA
    "\u026E",  # LATIN SMALL LETTER LEZH
    "\u01A3",  # LATIN SMALL LETTER OI
    "\u0223",  # LATIN SMALL LETTER OU
    "\u0278",  # LATIN SMALL LETTER PHI
    "\u0239",  # LATIN SMALL LETTER QP DIGRAPH
    "\u0264",  # LATIN SMALL LETTER RAMS HORN
    "\u0259",  # LATIN SMALL LETTER SCHWA
    "\u0285",  # LATIN SMALL LETTER SQUAT REVERSED ESH
    "\u00FE",  # LATIN SMALL LETTER THORN
    "\u0185",  # LATIN SMALL LETTER TONE SIX
    "\u1D02",  # LATIN SMALL LETTER TURNED AE
    "\u0252",  # LATIN SMALL LETTER TURNED ALPHA
    "\u018D",  # LATIN SMALL LETTER TURNED DELTA
    "\u1D14",  # LATIN SMALL LETTER TURNED OE
    "\u028A",  # LATIN SMALL LETTER UPSILON
    "\u021D",  # LATIN SMALL LETTER YOGH
    "\u0061",  # Latin Small Letters
    "\u0363",  # Latin Small Letters, Combining
    "\u00E6",  # latin small ligature ae
    "\u0133",  # LATIN SMALL LIGATURE IJ
    "\u0153",  # LATIN SMALL LIGATURE OE
    "\u02B0",  # Latin Superscript Modifier Letters
    "\u0041",  # Latin Uppercase Alphabet
    "\u0000",  # Latin, Basic
    "\u0100",  # Latin, European
    "\u00A0",  # Latin-1 Punctuation and Symbols
    "\u00A0",  # Latin-1 Supplement
    "\u223D",  # lazy s
    "\u223E",  # LAZY S, INVERTED
    "\u2024",  # LEADER, ONE DOT
    "\u2026",  # leader, three dot
    "\u2025",  # LEADER, TWO DOT
    "\u1F650",  # Leaf Ornaments
    "\u2766",  # leaf, aldus
    "\u2767",  # leaf, ivy
    "\u301A",  # left abstract syntax bracket
    "\u031A",  # LEFT ANGLE ABOVE, COMBINING
    "\u0349",  # LEFT ANGLE BELOW, COMBINING
    "\u3008",  # LEFT ANGLE BRACKET
    "\u27E8",  # LEFT ANGLE BRACKET, MATHEMATICAL
    "\u20D6",  # LEFT ARROW ABOVE, COMBINING
    "\u20EE",  # LEFT ARROW BELOW, COMBINING
    "\u0354",  # LEFT ARROWHEAD BELOW, COMBINING
    "\u27E6",  # left bag bracket
    "\u3010",  # LEFT BLACK LENTICULAR BRACKET
    "\u2308",  # LEFT CEILING
    "\u27EA",  # left chevron bracket
    "\u300C",  # LEFT CORNER BRACKET
    "\u007B",  # LEFT CURLY BRACKET
    "\u300A",  # LEFT DOUBLE ANGLE BRACKET
    "\u27EA",  # LEFT DOUBLE ANGLE BRACKET, MATHEMATICAL
    "\u201C",  # LEFT DOUBLE QUOTATION MARK
    "\u230A",  # LEFT FLOOR
    "\u0351",  # LEFT HALF RING ABOVE, COMBINING
    "\u031C",  # LEFT HALF RING BELOW, COMBINING
    "\u0559",  # LEFT HALF RING, ARMENIAN MODIFIER LETTER
    "\u02BF",  # LEFT HALF RING, MODIFIER LETTER
    "\u02D3",  # LEFT HALF RING, MODIFIER LETTER CENTRED
    "\u20D0",  # LEFT HARPOON ABOVE, COMBINING
    "\u019D",  # LEFT HOOK, LATIN CAPITAL LETTER N WITH
    "\u0272",  # LEFT HOOK, LATIN SMALL LETTER N WITH
    "\u232B",  # left key, delete to the
    "\u23B0",  # left moustache
    "\u22C9",  # LEFT NORMAL FACTOR SEMIDIRECT PRODUCT
    "\u0028",  # LEFT PARENTHESIS
    "\uFD3E",  # LEFT PARENTHESIS, ORNATE
    "\u00AB",  # left pointing guillemet
    "\u261A",  # LEFT POINTING INDEX, BLACK
    "\u261C",  # LEFT POINTING INDEX, WHITE
    "\u2039",  # left pointing single guillemet
    "\u20E1",  # LEFT RIGHT ARROW ABOVE, COMBINING
    "\u034D",  # LEFT RIGHT ARROW BELOW, COMBINING
    "\u22CB",  # LEFT SEMIDIRECT PRODUCT
    "\u27E8",  # left sequence bracket
    "\u2018",  # LEFT SINGLE QUOTATION MARK
    "\u005B",  # LEFT SQUARE BRACKET
    "\u2045",  # LEFT SQUARE BRACKET WITH QUILL
    "\u22A3",  # LEFT TACK
    "\u0318",  # LEFT TACK BELOW, COMBINING
    "\u3014",  # LEFT TORTOISE SHELL BRACKET
    "\u300E",  # LEFT WHITE CORNER BRACKET
    "\u2983",  # LEFT WHITE CURLY BRACKET
    "\u3016",  # LEFT WHITE LENTICULAR BRACKET
    "\u2985",  # LEFT WHITE PARENTHESIS
    "\u301A",  # LEFT WHITE SQUARE BRACKET
    "\u3018",  # LEFT WHITE TORTOISE SHELL BRACKET
    "\u232B",  # LEFT, ERASE TO THE
    "\u219E",  # left, fast cursor
    "\u2329",  # LEFT-POINTING ANGLE BRACKET
    "\u2039",  # LEFT-POINTING ANGLE QUOTATION MARK, SINGLE
    "\u00AB",  # LEFT-POINTING DOUBLE ANGLE QUOTATION MARK
    "\u202A",  # LEFT-TO-RIGHT EMBEDDING
    "\u2066",  # LEFT-TO-RIGHT ISOLATE
    "\u200E",  # LEFT-TO-RIGHT MARK
    "\u202D",  # LEFT-TO-RIGHT OVERRIDE
    "\u21E4",  # leftward tab
    "\u2190",  # LEFTWARDS ARROW
    "\u20EA",  # LEFTWARDS ARROW OVERLAY, COMBINING
    "\u204C",  # LEFTWARDS BULLET, BLACK
    "\u20ED",  # LEFTWARDS HARPOON WITH BARB DOWNWARDS, COMBINING
    "\u3010",  # LENTICULAR BRACKET, LEFT BLACK
    "\u3016",  # LENTICULAR BRACKET, LEFT WHITE
    "\u3011",  # LENTICULAR BRACKET, RIGHT BLACK
    "\u3017",  # LENTICULAR BRACKET, RIGHT WHITE
    "\u264C",  # LEO
    "\u1F406",  # LEOPARD
    "\u1C00",  # Lepcha
    "\u2264",  # LESS-THAN OR EQUAL TO
    "\u003C",  # LESS-THAN SIGN
    "\u226A",  # LESS-THAN, MUCH
    "\u22D8",  # LESS-THAN, VERY MUCH
    "\u2135",  # Letterlike Mathematical Symbols, Hebrew
    "\u2100",  # Letterlike Symbols
    "\u21EB",  # level 2 lock
    "\u21E7",  # level 2 select (ISO 9995-7)
    "\u21EF",  # level 3 lock
    "\u21EE",  # level 3 select
    "\u026E",  # LEZH, LATIN SMALL LETTER
    "\u000A",  # lf
    "\u27EE",  # lgroup
    "\u264E",  # LIBRA
    "\u00C6",  # ligature ae, latin capital
    "\u00E6",  # ligature ae, latin small
    "\u0133",  # LIGATURE IJ, LATIN SMALL
    "\u0153",  # LIGATURE OE, LATIN SMALL
    "\u0361",  # ligature tie
    "\u035C",  # ligature tie below
    "\u1F670",  # Ligature-et Ornaments, Ampersand and
    "\uFBEA",  # Ligatures, Arabic
    "\uFB13",  # Ligatures, Armenian
    "\uFB00",  # Ligatures, Latin
    "\u1F4A1",  # LIGHT BULB, ELECTRIC
    "\u26EF",  # LIGHTHOUSE, MAP SYMBOL FOR
    "\u2607",  # LIGHTNING
    "\u26A1",  # lightning
    "\u1F5F2",  # lightning bolt
    "\u1900",  # Limbu
    "\u1946",  # Limbu Digits
    "\u1944",  # LIMBU EXCLAMATION MARK
    "\u1945",  # LIMBU QUESTION MARK
    "\u1939",  # Limbu Signs
    "\u2250",  # LIMIT, APPROACHES THE
    "\u030E",  # LINE ABOVE, COMBINING DOUBLE VERTICAL
    "\u030D",  # LINE ABOVE, COMBINING VERTICAL
    "\u008C",  # LINE BACKWARD, PARTIAL
    "\u0348",  # LINE BELOW, COMBINING DOUBLE VERTICAL
    "\u0329",  # LINE BELOW, COMBINING VERTICAL
    "\u000A",  # LINE FEED
    "\u21B4",  # line feed
    "\u008D",  # LINE FEED, REVERSE
    "\u240A",  # LINE FEED, SYMBOL FOR
    "\u008B",  # LINE FORWARD, PARTIAL
    "\u2319",  # line marker
    "\u2AEE",  # Line Operators, Vertical
    "\u20D2",  # LINE OVERLAY, COMBINING LONG VERTICAL
    "\u20D3",  # LINE OVERLAY, COMBINING SHORT VERTICAL
    "\u2028",  # LINE SEPARATOR
    "\u2104",  # LINE SYMBOL, CENTRE
    "\u000B",  # LINE TABULATION
    "\u008A",  # LINE TABULATION SET
    "\u237F",  # LINE WITH MIDDLE DOT, VERTICAL
    "\u2310",  # line, beginning of
    "\uFE4E",  # LINE, CENTRELINE LOW
    "\u0333",  # LINE, COMBINING DOUBLE LOW
    "\u0332",  # LINE, COMBINING LOW
    "\uFE4D",  # LINE, DASHED LOW
    "\u2017",  # LINE, DOUBLE LOW
    "\u2016",  # LINE, DOUBLE VERTICAL
    "\u000A",  # line, end of
    "\u005F",  # LINE, LOW
    "\u02CC",  # LINE, MODIFIER LETTER LOW VERTICAL
    "\u02C8",  # LINE, MODIFIER LETTER VERTICAL
    "\u000A",  # line, new
    "\u0085",  # LINE, NEXT
    "\u214A",  # LINE, PROPERTY
    "\u007C",  # LINE, VERTICAL
    "\u2307",  # LINE, WAVY
    "\uFE4F",  # LINE, WAVY LOW
    "\u10600",  # Linear A
    "\u10080",  # Linear B Ideograms
    "\u10000",  # Linear B Syllabary
    "\u23BA",  # Lines, Horizontal Scan
    "\u2223",  # Lines, Vertical
    "\u1F981",  # LION FACE
    "\u1F5E2",  # LIPS
    "\u20A4",  # LIRA SIGN
    "\u20BA",  # LIRA SIGN, TURKISH
    "\u00A3",  # lira, italian
    "\uA4D0",  # Lisu
    "\u2113",  # liter
    "\u20B6",  # LIVRE TOURNOIS SIGN
    "\u1F50F",  # Lock Symbols
    "\u21EA",  # lock, caps
    "\u21EC",  # lock, caps
    "\u21ED",  # lock, numerics
    "\u26BF",  # lock, parental
    "\u27D8",  # Logic Operators, Modal
    "\u27E0",  # Logic Operators, Modal
    "\u2227",  # LOGICAL AND
    "\u22CF",  # LOGICAL AND, CURLY
    "\u22C0",  # LOGICAL AND, N-ARY
    "\u2A51",  # Logical Ands and Ors
    "\u2228",  # LOGICAL OR
    "\u22CE",  # LOGICAL OR, CURLY
    "\u22C1",  # LOGICAL OR, N-ARY
    "\u0304",  # long
    "\u27F5",  # Long Arrows
    "\u27CC",  # LONG DIVISION
    "\u20EB",  # long double slash overlay
    "\u017F",  # LONG S, LATIN SMALL LETTER
    "\u0338",  # long slash overlay
    "\u0338",  # LONG SOLIDUS OVERLAY, COMBINING
    "\u0336",  # LONG STROKE OVERLAY, COMBINING
    "\u20D2",  # LONG VERTICAL LINE OVERLAY, COMBINING
    "\u27B0",  # LOOP, CURLY
    "\u27BF",  # LOOP, DOUBLE CURLY
    "\u2628",  # LORRAINE, CROSS OF
    "\u26DF",  # lorry, black
    "\u1F91F",  # love, hand sign
    "\u02CF",  # LOW ACUTE ACCENT, MODIFIER LETTER
    "\u204E",  # LOW ASTERISK
    "\u201E",  # low double comma quotation mark
    "\u301F",  # LOW DOUBLE PRIME QUOTATION MARK
    "\u02CE",  # LOW GRAVE ACCENT, MODIFIER LETTER
    "\u005F",  # LOW LINE
    "\uFE4E",  # LOW LINE, CENTRELINE
    "\u0332",  # LOW LINE, COMBINING
    "\u0333",  # LOW LINE, COMBINING DOUBLE
    "\uFE4D",  # LOW LINE, DASHED
    "\u2017",  # LOW LINE, DOUBLE
    "\uFE4F",  # LOW LINE, WAVY
    "\u02CD",  # LOW MACRON, MODIFIER LETTER
    "\u201A",  # low single comma quotation mark
    "\u02CC",  # LOW VERTICAL LINE, MODIFIER LETTER
    "\u201E",  # LOW-9 QUOTATION MARK, DOUBLE
    "\u201A",  # LOW-9 QUOTATION MARK, SINGLE
    "\u2A1C",  # lower integral
    "\u227A",  # lower rank than
    "\u0061",  # Lowercase Alphabet, Latin
    "\u25CA",  # LOZENGE
    "\u29EB",  # LOZENGE, BLACK
    "\u2311",  # LOZENGE, SQUARE
    "\u1F79D",  # Lozenges
    "\u202A",  # lre
    "\u200E",  # lrm
    "\u202D",  # lro
    "\u03F5",  # LUNATE EPSILON SYMBOL, GREEK
    "\u03F6",  # LUNATE EPSILON SYMBOL, GREEK REVERSED
    "\u03F2",  # LUNATE SIGMA SYMBOL, GREEK
    "\u10280",  # Lycian
    "\u10920",  # Lydian
    "\u1E3F",  # M WITH ACUTE, LATIN SMALL LETTER
    "\u1E41",  # M WITH DOT ABOVE, LATIN SMALL LETTER
    "\u1E43",  # M WITH DOT BELOW, LATIN SMALL LETTER
    "\u0271",  # M WITH HOOK, LATIN SMALL LETTER
    "\u0270",  # M WITH LONG LEG, LATIN SMALL LETTER TURNED
    "\u036B",  # M, COMBINING LATIN SMALL LETTER
    "\u019C",  # M, LATIN CAPITAL LETTER TURNED
    "\u1D0D",  # M, LATIN LETTER SMALL CAPITAL
    "\u1D1F",  # M, LATIN SMALL LETTER SIDEWAYS TURNED
    "\u026F",  # M, LATIN SMALL LETTER TURNED
    "\u2098",  # M, LATIN SUBSCRIPT SMALL LETTER
    "\u2133",  # M, SCRIPT CAPITAL
    "\u2133",  # m-matrix
    "\u0BF4",  # maatham, tamil
    "\u00AF",  # MACRON
    "\u0331",  # MACRON BELOW, COMBINING
    "\u035F",  # MACRON BELOW, COMBINING DOUBLE
    "\uFE24",  # MACRON LEFT HALF, COMBINING
    "\uFE25",  # MACRON RIGHT HALF, COMBINING
    "\u0304",  # MACRON, COMBINING
    "\u035E",  # MACRON, COMBINING DOUBLE
    "\u02C9",  # MACRON, MODIFIER LETTER
    "\u02CD",  # MACRON, MODIFIER LETTER LOW
    "\u00AF",  # macron, spacing
    "\u2446",  # Magnetic Ink Character Recognition, MICR
    "\u1F50D",  # MAGNIFYING GLASS, LEFT-POINTING
    "\u1F50E",  # MAGNIFYING GLASS, RIGHT-POINTING
    "\u11150",  # Mahajani
    "\u1F000",  # Mahjong Tiles
    "\u1F4E4",  # Mail Symbols
    "\u0D00",  # Malayalam
    "\u0D4D",  # malayalam chandrakkala
    "\u0D7A",  # Malayalam Chillu Letters
    "\u0D15",  # Malayalam Consonants
    "\u0D3E",  # Malayalam Dependent Vowel Signs
    "\u0D66",  # Malayalam Digits
    "\u0D05",  # Malayalam Independent Vowels
    "\u0D4D",  # MALAYALAM SIGN VIRAMA
    "\u0D4D",  # malayalam vowel half-u
    "\u2642",  # MALE SIGN
    "\u2720",  # MALTESE CROSS
    "\u1F468",  # MAN
    "\u1F46B",  # MAN AND WOMAN HOLDING HANDS
    "\u1F474",  # MAN, OLDER
    "\u20BC",  # MANAT SIGN
    "\u1808",  # MANCHU COMMA, MONGOLIAN
    "\u1809",  # MANCHU FULL STOP, MONGOLIAN
    "\u0840",  # Mandaic
    "\u02D9",  # mandarin chinese fifth or neutral tone
    "\u02C9",  # mandarin chinese first tone
    "\u02CB",  # mandarin chinese fourth tone
    "\u02CA",  # mandarin chinese second tone
    "\u02C7",  # mandarin chinese third tone
    "\u10AC0",  # Manichaean
    "\u2690",  # Map Symbols, Dictionary and
    "\u21A6",  # maplet
    "\u27FB",  # maps from
    "\u2906",  # maps from
    "\u27FC",  # maps to
    "\u2905",  # maps to
    "\u2907",  # maps to
    "\u11C70",  # Marchen
    "\u26F4",  # marina or yacht harbour
    "\u2133",  # mark pre-wwii, german
    "\u25AE",  # marker, histogram
    "\u2319",  # marker, line
    "\u2686",  # Markers, Go
    "\u0300",  # Marks, Combining Diacritical
    "\uFE20",  # Marks, Combining Half
    "\u1F16A",  # marque de commerce
    "\u1F16B",  # marque deposee
    "\u26AD",  # MARRIAGE SYMBOL
    "\u2642",  # mars
    "\u11D00",  # Masaram Gondi
    "\u00BA",  # MASCULINE ORDINAL INDICATOR
    "\u1F3AD",  # masks of comedy and tragedy
    "\u303C",  # MASU MARK
    "\u1D400",  # Mathematical Alphanumeric Symbols
    "\u27E6",  # Mathematical Brackets
    "\u03C0",  # mathematical constant 3.141592... pi
    "\u1D7CE",  # Mathematical Digits Symbols
    "\u2200",  # Mathematical Operators
    "\u2234",  # Mathematical Operators, Dotted
    "\u2295",  # Mathematical Operators, Enclosed
    "\u2A00",  # Mathematical Operators, Supplemental
    "\u223B",  # Mathematical Operators, Tilde
    "\u205F",  # MATHEMATICAL SPACE, MEDIUM
    "\u27C0",  # Mathematical Symbols
    "\u2980",  # Mathematical Symbols
    "\u1D504",  # Mathematical Symbols, Black-letter
    "\u1D56C",  # Mathematical Symbols, Bold Fraktur
    "\u1D6A8",  # Mathematical Symbols, Bold Greek
    "\u1D468",  # Mathematical Symbols, Bold Italic
    "\u1D71C",  # Mathematical Symbols, Bold Italic Greek
    "\u1D4D0",  # Mathematical Symbols, Bold Script
    "\u1D6A4",  # Mathematical Symbols, Dotless
    "\u1D538",  # Mathematical Symbols, Double-struck
    "\u1D504",  # Mathematical Symbols, Fraktur
    "\u1D6A8",  # Mathematical Symbols, Greek
    "\u2135",  # Mathematical Symbols, Hebrew Letterlike
    "\u1D434",  # Mathematical Symbols, Italic
    "\u1D6E2",  # Mathematical Symbols, Italic Greek
    "\u1D670",  # Mathematical Symbols, Monospace
    "\u1D5A0",  # Mathematical Symbols, Sans-serif
    "\u1D5D4",  # Mathematical Symbols, Sans-serif Bold
    "\u1D756",  # Mathematical Symbols, Sans-serif Bold Greek
    "\u1D63C",  # Mathematical Symbols, Sans-serif Bold Italic
    "\u1D790",  # Mathematical Symbols, Sans-serif Bold Italic Greek
    "\u1D608",  # Mathematical Symbols, Sans-serif Italic
    "\u1D49C",  # Mathematical Symbols, Script
    "\u27C0",  # Mathematical Symbols-A, Miscellaneous
    "\u2980",  # Mathematical Symbols-B, Miscellaneous
    "\u22B9",  # MATRIX, HERMITIAN CONJUGATE
    "\u1F16A",  # MC SIGN, RAISED
    "\u1F16B",  # MD SIGN, RAISED
    "\u2221",  # MEASURED ANGLE
    "\u299B",  # Measured Angles, Angles and
    "\u225E",  # MEASURED BY
    "\u2052",  # med avdrag av
    "\u0363",  # Medieval Superscript Letter Diacritics
    "\u1DD3",  # Medieval Superscript Letter Diacritics, Latin
    "\u2E2A",  # Medievalist Punctuation
    "\u26AB",  # MEDIUM BLACK CIRCLE
    "\u205F",  # MEDIUM MATHEMATICAL SPACE
    "\u25FE",  # MEDIUM SMALL SQUARE, BLACK
    "\u26AC",  # MEDIUM SMALL WHITE CIRCLE
    "\u25FC",  # MEDIUM SQUARE, BLACK
    "\u26AA",  # MEDIUM WHITE CIRCLE
    "\u0019",  # MEDIUM, END OF
    "\u2419",  # MEDIUM, SYMBOL FOR END OF
    "\uABC0",  # Meetei Mayek
    "\uAAE0",  # Meetei Mayek Extensions
    "\u220B",  # MEMBER, CONTAINS AS
    "\u220C",  # MEMBER, DOES NOT CONTAIN AS
    "\u220D",  # MEMBER, SMALL CONTAINS AS
    "\u2208",  # Membership Signs, Set
    "\u22FF",  # MEMBERSHIP, Z NOTATION BAG
    "\u1F46C",  # MEN HOLDING HANDS, TWO
    "\u1E800",  # Mende Kikakui
    "\u263F",  # MERCURY
    "\u2A07",  # merge
    "\u109A0",  # Meroitic Cursive
    "\u10980",  # Meroitic Hieroglyphs
    "\u0BF8",  # merpadi, tamil
    "\u0095",  # MESSAGE WAITING
    "\u009E",  # MESSAGE, PRIVACY
    "\u23D1",  # Metrical Symbols
    "\u2127",  # mho
    "\u16F00",  # Miao
    "\u2446",  # MICR, Magnetic Ink Character Recognition
    "\u00B5",  # MICRO SIGN
    "\u2005",  # mid space
    "\u00B7",  # MIDDLE DOT
    "\u00B7",  # middle dot, greek
    "\u30FB",  # MIDDLE DOT, KATAKANA
    "\u0140",  # MIDDLE DOT, LATIN SMALL LETTER L WITH
    "\u237F",  # MIDDLE DOT, VERTICAL LINE WITH
    "\u2E31",  # MIDDLE DOT, WORD SEPARATOR
    "\u019F",  # MIDDLE TILDE, LATIN CAPITAL LETTER O WITH
    "\u026B",  # MIDDLE TILDE, LATIN SMALL LETTER L WITH
    "\u22EF",  # MIDLINE HORIZONTAL ELLIPSIS
    "\u00B7",  # midpoint
    "\u20A5",  # MILL SIGN
    "\u2030",  # MILLE SIGN, PER
    "\u0024",  # milreis
    "\u1D15E",  # minim
    "\u264F",  # minim
    "\u264D",  # minim alternate glyph
    "\u2692",  # mining symbol
    "\u2212",  # MINUS SIGN
    "\u0320",  # MINUS SIGN BELOW, COMBINING
    "\u2A22",  # Minus Sign Operators, Plus and
    "\u2052",  # MINUS SIGN, COMMERCIAL
    "\u002D",  # minus sign, hyphen or
    "\u02D7",  # MINUS SIGN, MODIFIER LETTER
    "\u2242",  # MINUS TILDE
    "\u2296",  # MINUS, CIRCLED
    "\u2238",  # MINUS, DOT
    "\u2216",  # MINUS, SET
    "\u229F",  # MINUS, SQUARED
    "\u2213",  # MINUS-OR-PLUS SIGN
    "\u2032",  # minutes
    "\u29FF",  # MINY
    "\u2600",  # Miscellaneous Symbols
    "\u1F940",  # Miscellaneous Symbols
    "\u10D0",  # Mkhedruli, Georgian
    "\u205F",  # mmsp
    "\u27E0",  # Modal Logic Operators
    "\u22A7",  # MODELS
    "\u11600",  # Modi
    "\u1D2C",  # Modifier Letter Extensions
    "\u02B0",  # Modifier Letters, Latin Superscript
    "\u02B0",  # Modifier Letters, Spacing
    "\uA700",  # Modifier Tone Letters
    "\u02B0",  # Modifiers Derived from Latin Letters, Phonetic
    "\u02B9",  # Modifiers, Phonetic
    "\u02EF",  # Modifiers, UPA
    "\u1F4B0",  # Money Symbols
    "\u1800",  # Mongolian
    "\u1820",  # Mongolian Basic Letters
    "\u1800",  # MONGOLIAN BIRGA
    "\u1804",  # MONGOLIAN COLON
    "\u1802",  # MONGOLIAN COMMA
    "\u20AE",  # mongolian currency
    "\u1810",  # Mongolian Digits
    "\u1801",  # MONGOLIAN ELLIPSIS
    "\u1843",  # Mongolian Extensions
    "\u180B",  # Mongolian Format Controls
    "\u1805",  # MONGOLIAN FOUR DOTS
    "\u180B",  # MONGOLIAN FREE VARIATION SELECTOR ONE
    "\u180D",  # MONGOLIAN FREE VARIATION SELECTOR THREE
    "\u180C",  # MONGOLIAN FREE VARIATION SELECTOR TWO
    "\u1803",  # MONGOLIAN FULL STOP
    "\u1808",  # MONGOLIAN MANCHU COMMA
    "\u1809",  # MONGOLIAN MANCHU FULL STOP
    "\u180A",  # MONGOLIAN NIRUGU
    "\u1800",  # Mongolian Punctuation
    "\u1807",  # MONGOLIAN SIBE SYLLABLE BOUNDARY MARKER
    "\u11660",  # Mongolian Supplement
    "\u1806",  # MONGOLIAN TODO SOFT HYPHEN
    "\u180E",  # MONGOLIAN VOWEL SEPARATOR
    "\u1F412",  # MONKEY
    "\u1F435",  # MONKEY FACE
    "\u268A",  # Monogram and Digram Symbols, Yijing / I Ching
    "\u1D7F6",  # Monospace Digits
    "\u1D670",  # Monospace Mathematical Symbols
    "\u238D",  # MONOSTABLE SYMBOL
    "\u0BF4",  # MONTH SIGN, TAMIL
    "\u3200",  # Months, Enclosed CJK Letters and
    "\u32C0",  # Months, Ideographic Telegraph Symbols for
    "\u1F319",  # MOON, CRESCENT
    "\u263D",  # MOON, FIRST QUARTER
    "\u263E",  # MOON, LAST QUARTER
    "\u1F311",  # Moon, Sun, and Star Symbols
    "\u1F393",  # mortarboard
    "\u223E",  # most positive
    "\u1F6E3",  # MOTORWAY
    "\u26F0",  # MOUNTAIN
    "\u1F401",  # MOUSE
    "\u1F42D",  # MOUSE FACE
    "\u23B0",  # moustache, left
    "\u23B1",  # moustache, right
    "\u1F444",  # MOUTH
    "\u16A40",  # Mro
    "\u226B",  # MUCH GREATER-THAN
    "\u22D9",  # MUCH GREATER-THAN, VERY
    "\u226A",  # MUCH LESS-THAN
    "\u22D8",  # MUCH LESS-THAN, VERY
    "\u11280",  # Multani
    "\u22B8",  # MULTIMAP
    "\u2A2F",  # Multiplication and Division Sign Operators
    "\u00D7",  # MULTIPLICATION SIGN
    "\u2715",  # MULTIPLICATION X
    "\u2716",  # MULTIPLICATION X, HEAVY
    "\u228D",  # MULTIPLICATION, MULTISET
    "\u228C",  # MULTISET
    "\u228D",  # MULTISET MULTIPLICATION
    "\u228E",  # MULTISET UNION
    "\u2669",  # Music Dingbats
    "\u266D",  # MUSIC FLAT SIGN
    "\u266E",  # MUSIC NATURAL SIGN
    "\u266F",  # MUSIC SHARP SIGN
    "\u1F3B5",  # Music Symbols
    "\u1D200",  # Musical Notation, Ancient Greek
    "\u1F39C",  # MUSICAL NOTES, BEAMED ASCENDING
    "\u1F39D",  # MUSICAL NOTES, BEAMED DESCENDING
    "\u1F3B6",  # MUSICAL NOTES, MULTIPLE
    "\u1D100",  # Musical Symbols
    "\u1B61",  # Musical Symbols, Balinese
    "\u2669",  # Musical Symbols, Basic
    "\u1D000",  # Musical Symbols, Byzantine
    "\u2003",  # mutton
    "\u2001",  # mutton quad
    "\u1000",  # Myanmar
    "\u1000",  # Myanmar Consonants
    "\u102C",  # Myanmar Dependent Vowel Signs
    "\u1040",  # Myanmar Digits
    "\uAA60",  # Myanmar Extended-A
    "\uA9E0",  # Myanmar Extended-B
    "\u1021",  # Myanmar Independent Vowels
    "\u1039",  # myanmar killer
    "\u1039",  # MYANMAR SIGN VIRAMA
    "\u1036",  # Myanmar Signs
    "\u0144",  # N WITH ACUTE, LATIN SMALL LETTER
    "\u0148",  # N WITH CARON, LATIN SMALL LETTER
    "\u0146",  # N WITH CEDILLA, LATIN SMALL LETTER
    "\u1E4B",  # N WITH CIRCUMFLEX BELOW, LATIN SMALL LETTER
    "\u0235",  # N WITH CURL, LATIN SMALL LETTER
    "\u1E45",  # N WITH DOT ABOVE, LATIN SMALL LETTER
    "\u1E47",  # N WITH DOT BELOW, LATIN SMALL LETTER
    "\u01F9",  # N WITH GRAVE, LATIN SMALL LETTER
    "\u019D",  # N WITH LEFT HOOK, LATIN CAPITAL LETTER
    "\u0272",  # N WITH LEFT HOOK, LATIN SMALL LETTER
    "\u1E49",  # N WITH LINE BELOW, LATIN SMALL LETTER
    "\u0220",  # N WITH LONG RIGHT LEG, LATIN CAPITAL LETTER
    "\u019E",  # N WITH LONG RIGHT LEG, LATIN SMALL LETTER
    "\u0273",  # N WITH RETROFLEX HOOK, LATIN SMALL LETTER
    "\u00D1",  # N WITH TILDE, LATIN CAPITAL LETTER
    "\u00F1",  # N WITH TILDE, LATIN SMALL LETTER
    "\u2115",  # N, DOUBLE-STRUCK CAPITAL
    "\u0274",  # N, LATIN LETTER SMALL CAPITAL
    "\u1D0E",  # N, LATIN LETTER SMALL CAPITAL REVERSED
    "\u2099",  # N, LATIN SUBSCRIPT SMALL LETTER
    "\u2210",  # N-ARY COPRODUCT
    "\u2AFF",  # n-ary dijkstra choice
    "\u22C2",  # N-ARY INTERSECTION
    "\u22C0",  # N-ARY LOGICAL AND
    "\u22C1",  # N-ARY LOGICAL OR
    "\u22C0",  # N-ary Operators
    "\u2A00",  # N-ary Operators
    "\u220F",  # N-ARY PRODUCT
    "\u2211",  # N-ARY SUMMATION
    "\u2140",  # N-ARY SUMMATION, DOUBLE-STRUCK
    "\u2A09",  # N-ARY TIMES OPERATOR
    "\u22C3",  # N-ARY UNION
    "\u2AFF",  # N-ARY WHITE VERTICAL BAR
    "\u0BF3",  # naal, tamil
    "\u10880",  # Nabataean
    "\u2207",  # NABLA
    "\u20A6",  # NAIRA SIGN
    "\u22BC",  # NAND
    "\u202F",  # NARROW NO-BREAK SPACE
    "\u0328",  # nasal hook
    "\u212F",  # natural exponent
    "\u2115",  # natural number
    "\u266E",  # NATURAL SIGN, MUSIC
    "\u00A0",  # nbsp
    "\u2252",  # nearly equals
    "\u2AF1",  # necessarily satisfies
    "\u0015",  # NEGATIVE ACKNOWLEDGE
    "\u2415",  # NEGATIVE ACKNOWLEDGE, SYMBOL FOR
    "\u274E",  # NEGATIVE SQUARED CROSS MARK, NEGATIVE SQUARED
    "\u0085",  # nel
    "\u2646",  # NEPTUNE
    "\u26B2",  # NEUTER
    "\u0022",  # neutral quotation mark
    "\u0027",  # neutral single quotation mark
    "\u02D9",  # neutral tone, mandarin chinese fifth or
    "\u000A",  # new line
    "\u20AA",  # NEW SHEQEL SIGN
    "\u1980",  # New Tai Lue
    "\u19D0",  # New Tai Lue Digits
    "\u2E00",  # New Testament Editorial Symbols
    "\u1D510",  # new testament majority text
    "\u11400",  # Newa
    "\u2424",  # NEWLINE, SYMBOL FOR
    "\u0085",  # NEXT LINE
    "\u2398",  # NEXT PAGE
    "\u2712",  # NIB, BLACK
    "\u2711",  # NIB, WHITE
    "\u20A6",  # nigerian currency
    "\u0ECD",  # NIGGAHITA, LAO
    "\u17C6",  # NIKAHIT, KHMER SIGN
    "\u0E4D",  # NIKHAHIT, THAI CHARACTER
    "\u2A27",  # nim-addition
    "\u180A",  # NIRUGU, MONGOLIAN
    "\u07C0",  # NKo
    "\u000A",  # nl
    "\u202F",  # nnbsp
    "\u20E0",  # no
    "\u0083",  # NO BREAK HERE
    "\u237D",  # no break space, keyboard symbol for
    "\u26D4",  # NO ENTRY
    "\u1F6AB",  # NO ENTRY SIGN
    "\u00A0",  # NO-BREAK SPACE
    "\u202F",  # NO-BREAK SPACE, NARROW
    "\uFEFF",  # NO-BREAK SPACE, ZERO WIDTH
    "\u260A",  # NODE, ASCENDING
    "\u260B",  # NODE, DESCENDING
    "\u2011",  # NON-BREAKING HYPHEN
    "\u00A0",  # non-breaking space
    "\u200C",  # NON-JOINER, ZERO WIDTH
    "\u0345",  # non-spacing iota below, greek
    "\u22A3",  # non-theorem
    "\u22BD",  # NOR
    "\u22C9",  # NORMAL FACTOR SEMIDIRECT PRODUCT, LEFT
    "\u22CA",  # NORMAL FACTOR SEMIDIRECT PRODUCT, RIGHT
    "\u22B2",  # NORMAL SUBGROUP OF
    "\u22EA",  # Normal Subgroup Signs
    "\u22B3",  # NORMAL SUBGROUP, CONTAINS AS
    "\u1F443",  # NOSE
    "\u223C",  # not
    "\u2284",  # NOT A SUBSET OF
    "\u2285",  # NOT A SUPERSET OF
    "\u2249",  # NOT ALMOST EQUAL TO
    "\u2209",  # NOT AN ELEMENT OF
    "\u2244",  # NOT ASYMPTOTICALLY EQUAL TO
    "\u237B",  # NOT CHECK MARK
    "\u2260",  # NOT EQUAL TO
    "\u2262",  # NOT IDENTICAL TO
    "\u2ADC",  # not independent
    "\u2226",  # NOT PARALLEL TO
    "\u00AC",  # NOT SIGN
    "\u2310",  # NOT SIGN, REVERSED
    "\u2319",  # NOT SIGN, TURNED
    "\u2241",  # NOT TILDE
    "\u034A",  # NOT TILDE ABOVE, COMBINING
    "\u22A3",  # not yield, does
    "\u266A",  # NOTE, EIGHTH
    "\u2669",  # NOTE, QUARTER
    "\u266B",  # NOTES, BEAMED EIGHTH
    "\u266C",  # NOTES, BEAMED SIXTEENTH
    "\u093C",  # NUKTA, DEVANAGARI SIGN
    "\u0000",  # NULL
    "\u2205",  # null set
    "\u2400",  # NULL, SYMBOL FOR
    "\u2150",  # Number Forms
    "\u0023",  # NUMBER SIGN
    "\u0BFA",  # NUMBER SIGN, TAMIL
    "\u210A",  # number symbol, real
    "\u3007",  # NUMBER ZERO, IDEOGRAPHIC
    "\u2115",  # number, natural
    "\u12400",  # Numbers and Punctuation, Cuneiform
    "\u2488",  # Numbers Followed by Period
    "\u10140",  # Numbers, Ancient Greek
    "\u2460",  # Numbers, Circled
    "\u3251",  # Numbers, Circled
    "\u32B1",  # Numbers, Circled
    "\u2776",  # Numbers, Circled Inverse
    "\u2102",  # numbers, complex
    "\u24F5",  # Numbers, Double Circled
    "\u1369",  # Numbers, Ethiopic
    "\u2474",  # Numbers, Parenthesized
    "\u211A",  # numbers, rational
    "\u211D",  # numbers, real
    "\u16EE",  # Numbers, Runic Golden
    "\u0BE7",  # Numbers, Tamil
    "\u24EB",  # Numbers, White on Black Circled
    "\u3021",  # Numerals, Hangzhou
    "\u10320",  # Numerals, Old Italic
    "\u2160",  # Numerals, Roman
    "\u3021",  # Numerals, Suzhou
    "\u215F",  # NUMERATOR ONE, FRACTION
    "\u17F0",  # Numeric Symbols for Divination, Khmer
    "\u21ED",  # numerics lock
    "\u2116",  # NUMERO SIGN
    "\u1B170",  # Nushu
    "\u2002",  # nut
    "\u019F",  # o bar, latin capital letter
    "\u0275",  # o bar, latin small letter
    "\u0153",  # o e, latin small letter
    "\u00D8",  # o slash, latin capital letter
    "\u00F8",  # o slash, latin small letter
    "\u00D3",  # O WITH ACUTE, LATIN CAPITAL LETTER
    "\u00F3",  # O WITH ACUTE, LATIN SMALL LETTER
    "\u014F",  # O WITH BREVE, LATIN SMALL LETTER
    "\u01D2",  # O WITH CARON, LATIN SMALL LETTER
    "\u00D4",  # O WITH CIRCUMFLEX, LATIN CAPITAL LETTER
    "\u00F4",  # O WITH CIRCUMFLEX, LATIN SMALL LETTER
    "\u00D6",  # O WITH DIAERESIS, LATIN CAPITAL LETTER
    "\u00F6",  # O WITH DIAERESIS, LATIN SMALL LETTER
    "\u022F",  # O WITH DOT ABOVE, LATIN SMALL LETTER
    "\u1ECD",  # O WITH DOT BELOW, LATIN SMALL LETTER
    "\u0151",  # O WITH DOUBLE ACUTE, LATIN SMALL LETTER
    "\u020D",  # O WITH DOUBLE GRAVE, LATIN SMALL LETTER
    "\u00D2",  # O WITH GRAVE, LATIN CAPITAL LETTER
    "\u00F2",  # O WITH GRAVE, LATIN SMALL LETTER
    "\u1ECF",  # O WITH HOOK ABOVE, LATIN SMALL LETTER
    "\u01A1",  # O WITH HORN, LATIN SMALL LETTER
    "\u020F",  # O WITH INVERTED BREVE, LATIN SMALL LETTER
    "\u014D",  # O WITH MACRON, LATIN SMALL LETTER
    "\u019F",  # O WITH MIDDLE TILDE, LATIN CAPITAL LETTER
    "\u01EB",  # O WITH OGONEK, LATIN SMALL LETTER
    "\u00D8",  # O WITH STROKE, LATIN CAPITAL LETTER
    "\u00F8",  # O WITH STROKE, LATIN SMALL LETTER
    "\u1D13",  # O WITH STROKE, LATIN SMALL LETTER SIDEWAYS
    "\u00D5",  # O WITH TILDE, LATIN CAPITAL LETTER
    "\u00F5",  # O WITH TILDE, LATIN SMALL LETTER
    "\u0366",  # O, COMBINING LATIN SMALL LETTER
    "\u019F",  # o, latin capital letter barred
    "\u0186",  # O, LATIN CAPITAL LETTER OPEN
    "\u1D0F",  # O, LATIN LETTER SMALL CAPITAL
    "\u1D10",  # O, LATIN LETTER SMALL CAPITAL OPEN
    "\u0275",  # O, LATIN SMALL LETTER BARRED
    "\u1D17",  # O, LATIN SMALL LETTER BOTTOM HALF
    "\u0254",  # O, LATIN SMALL LETTER OPEN
    "\u1D11",  # O, LATIN SMALL LETTER SIDEWAYS
    "\u1D12",  # O, LATIN SMALL LETTER SIDEWAYS OPEN
    "\u1D16",  # O, LATIN SMALL LETTER TOP HALF
    "\u2134",  # O, SCRIPT SMALL
    "\u00F7",  # obelus
    "\uFFFC",  # OBJECT REPLACEMENT CHARACTER
    "\u2440",  # OCR, Optical Character Recognition
    "\u1F419",  # OCTOPUS
    "\u0023",  # octothorpe
    "\u0276",  # OE, LATIN LETTER SMALL CAPITAL
    "\u1D14",  # OE, LATIN SMALL LETTER TURNED
    "\u0153",  # OE, LATIN SMALL LIGATURE
    "\u1F4BA",  # Office Symbols
    "\u1680",  # Ogham
    "\u1695",  # Ogham Forfeda Supplement
    "\u169B",  # Ogham Punctuation
    "\u1680",  # OGHAM SPACE MARK
    "\u1681",  # Ogham Traditional Letters
    "\u02DB",  # OGONEK
    "\u0328",  # OGONEK, COMBINING
    "\u1F479",  # OGRE, JAPANESE
    "\u2126",  # OHM SIGN
    "\u2127",  # OHM SIGN, INVERTED
    "\u01A3",  # OI, LATIN SMALL LETTER
    "\u1F44C",  # OK HAND SIGN
    "\u1C50",  # Ol Chiki
    "\u10C80",  # Old Hungarian
    "\u10300",  # Old Italic
    "\u10350",  # Old Permic
    "\u103A0",  # Old Persian
    "\u1D516",  # old testament, greek
    "\u1F549",  # OM SYMBOL
    "\u0950",  # OM, DEVANAGARI
    "\u0F00",  # OM, TIBETAN SYLLABLE
    "\u03D6",  # omega pi
    "\u0277",  # OMEGA, LATIN SMALL LETTER CLOSED
    "\u2E3A",  # omission dash
    "\u2024",  # ONE DOT LEADER
    "\u00BD",  # ONE HALF, VULGAR FRACTION
    "\u00BC",  # ONE QUARTER, VULGAR FRACTION
    "\u215F",  # ONE, FRACTION NUMERATOR
    "\u00B9",  # ONE, SUPERSCRIPT
    "\u2423",  # OPEN BOX
    "\u237D",  # OPEN BOX, SHOULDERED
    "\u025D",  # OPEN E WITH HOOK, LATIN SMALL LETTER REVERSED
    "\u0190",  # OPEN E, LATIN CAPITAL LETTER
    "\u025B",  # OPEN E, LATIN SMALL LETTER
    "\u029A",  # OPEN E, LATIN SMALL LETTER CLOSED
    "\u025E",  # OPEN E, LATIN SMALL LETTER CLOSED REVERSED
    "\u025C",  # OPEN E, LATIN SMALL LETTER REVERSED
    "\u1D08",  # OPEN E, LATIN SMALL LETTER TURNED
    "\u0186",  # OPEN O, LATIN CAPITAL LETTER
    "\u1D10",  # OPEN O, LATIN LETTER SMALL CAPITAL
    "\u0254",  # OPEN O, LATIN SMALL LETTER
    "\u1D12",  # OPEN O, LATIN SMALL LETTER SIDEWAYS
    "\u007B",  # opening brace
    "\u007B",  # opening curly bracket
    "\u0028",  # opening parenthesis
    "\u005B",  # opening square bracket
    "\u009D",  # OPERATING SYSTEM COMMAND
    "\u2318",  # operating system key (ISO 9995-7)
    "\u2A00",  # Operators Supplement, Mathematical
    "\u27D5",  # Operators, Database Theory
    "\u2234",  # Operators, Dotted Mathematical
    "\u22D0",  # Operators, Double
    "\u2295",  # Operators, Enclosed Mathematical
    "\u2061",  # Operators, Invisible
    "\u29F8",  # Operators, Large
    "\u2200",  # Operators, Mathematical
    "\u27E0",  # Operators, Modal Logic
    "\u2A2F",  # Operators, Multiplication and Division Sign
    "\u22C0",  # Operators, N-ary
    "\u2A00",  # Operators, N-ary
    "\u2A22",  # Operators, Plus and Minus Sign
    "\u29E3",  # Operators, Relational
    "\u29FA",  # Operators, Specialized Plus Sign
    "\u2A00",  # Operators, Supplemental Mathematical
    "\u223B",  # Operators, Tilde Mathematical
    "\u2AEE",  # Operators, Vertical Line
    "\u26CE",  # OPHIUCHUS
    "\u260D",  # OPPOSITION
    "\u2440",  # Optical Character Recognition, OCR
    "\u1F4BF",  # OPTICAL DISC
    "\u2325",  # OPTION KEY
    "\u22CE",  # OR, CURLY LOGICAL
    "\u2A54",  # OR, DOUBLE LOGICAL
    "\u2228",  # OR, LOGICAL
    "\u22C1",  # OR, N-ARY LOGICAL
    "\u2134",  # order
    "\u227A",  # Order Relation Precedence Signs
    "\u22DE",  # Order Relation Precedence Signs
    "\u00AA",  # ORDINAL INDICATOR, FEMININE
    "\u00BA",  # ORDINAL INDICATOR, MASCULINE
    "\u2AE2",  # ordinarily satisfies
    "\u0300",  # Ordinary Diacritics
    "\u2331",  # ORIGIN, DIMENSION
    "\u22B6",  # ORIGINAL OF
    "\u2290",  # ORIGINAL OF, SQUARE
    "\u0B00",  # Oriya
    "\u0B15",  # Oriya Consonants
    "\u0B3E",  # Oriya Dependent Vowel Signs
    "\u0B66",  # Oriya Digits
    "\u0B05",  # Oriya Independent Vowels
    "\u0B70",  # ORIYA ISSHAR
    "\u276E",  # Ornamental Angle Quotation Marks
    "\u2768",  # Ornamental Brackets
    "\u1F650",  # Ornamental Dingbats
    "\u2763",  # Ornaments, Heart
    "\u275B",  # Ornaments, Punctuation Mark
    "\u1F676",  # Ornaments, Punctuation Mark
    "\u275B",  # Ornaments, Quotation Mark
    "\uFD3E",  # ORNATE LEFT PARENTHESIS
    "\uFD3F",  # ORNATE RIGHT PARENTHESIS
    "\u2A51",  # Ors, Logical Ands and
    "\u2626",  # ORTHODOX CROSS
    "\u22A5",  # orthogonal to
    "\u104B0",  # Osage
    "\u10480",  # Osmanya
    "\u104A0",  # Osmanya Digits
    "\u1D15",  # OU, LATIN LETTER SMALL CAPITAL
    "\u0223",  # OU, LATIN SMALL LETTER
    "\u2125",  # OUNCE SIGN
    "\u00AF",  # overbar, apl
    "\u20DA",  # OVERLAY, COMBINING ANTICLOCKWISE RING
    "\u20D9",  # OVERLAY, COMBINING CLOCKWISE RING
    "\u20DA",  # overlay, combining counterclockwise ring
    "\u20E6",  # OVERLAY, COMBINING DOUBLE VERTICAL STROKE
    "\u20EA",  # OVERLAY, COMBINING LEFTWARDS ARROW
    "\u20EB",  # OVERLAY, COMBINING LONG DOUBLE SOLIDUS
    "\u0338",  # OVERLAY, COMBINING LONG SOLIDUS
    "\u0336",  # OVERLAY, COMBINING LONG STROKE
    "\u20D2",  # OVERLAY, COMBINING LONG VERTICAL LINE
    "\u20E5",  # OVERLAY, COMBINING REVERSE SOLIDUS
    "\u20D8",  # OVERLAY, COMBINING RING
    "\u0337",  # OVERLAY, COMBINING SHORT SOLIDUS
    "\u0335",  # OVERLAY, COMBINING SHORT STROKE
    "\u20D3",  # OVERLAY, COMBINING SHORT VERTICAL LINE
    "\u0334",  # OVERLAY, COMBINING TILDE
    "\u20EB",  # overlay, long double slash
    "\u0338",  # overlay, long slash
    "\u0337",  # overlay, short slash
    "\u00AF",  # overline
    "\u203E",  # OVERLINE
    "\uFE4A",  # OVERLINE, CENTRELINE
    "\u0305",  # OVERLINE, COMBINING
    "\u033F",  # OVERLINE, COMBINING DOUBLE
    "\uFE49",  # OVERLINE, DASHED
    "\uFE4C",  # OVERLINE, DOUBLE WAVY
    "\uFE4B",  # OVERLINE, WAVY
    "\u202D",  # OVERRIDE, LEFT-TO-RIGHT
    "\u202E",  # OVERRIDE, RIGHT-TO-LEFT
    "\u0305",  # overscore
    "\u203E",  # overscore, spacing
    "\uFE49",  # Overscores and Underscores
    "\u0334",  # Overstruck Diacritics
    "\u1F402",  # OX
    "\u0301",  # oxia, greek
    "\u1E55",  # P WITH ACUTE, LATIN SMALL LETTER
    "\u1E57",  # P WITH DOT ABOVE, LATIN SMALL LETTER
    "\u01A5",  # P WITH HOOK, LATIN SMALL LETTER
    "\u2119",  # P, DOUBLE-STRUCK CAPITAL
    "\u1D18",  # P, LATIN LETTER SMALL CAPITAL
    "\u209A",  # P, LATIN SUBSCRIPT SMALL LETTER
    "\u2118",  # P, SCRIPT CAPITAL
    "\u1F958",  # paella
    "\u21DF",  # page down
    "\u2B7D",  # page down
    "\u1F4C4",  # PAGE FACING UP
    "\u21DE",  # page up
    "\u2B7B",  # page up
    "\u2398",  # PAGE, NEXT
    "\u2397",  # PAGE, PREVIOUS
    "\u16B00",  # Pahawh Hmong
    "\u10B60",  # Pahlavi
    "\u10B80",  # Pahlavi, Psalter
    "\u2E32",  # Palaeotype Transliteration Symbols
    "\u01AB",  # PALATAL HOOK, LATIN SMALL LETTER T WITH
    "\u0321",  # PALATALIZED HOOK BELOW, COMBINING
    "\u2E19",  # PALM BRANCH
    "\u10860",  # Palmyrene
    "\u0F85",  # PALUTA, TIBETAN MARK
    "\u1734",  # PAMUDPOD, HANUNOO SIGN
    "\u1F43C",  # PANDA FACE
    "\u270B",  # paper in rock, paper, scissors game
    "\u267E",  # PAPER SIGN, PERMANENT
    "\u267D",  # PAPER SYMBOL, PARTIALLY-RECYCLED
    "\u267C",  # PAPER SYMBOL, RECYCLED
    "\u035C",  # papyrological hyphen
    "\u2029",  # PARAGRAPH SEPARATOR
    "\u1368",  # PARAGRAPH SEPARATOR, ETHIOPIC
    "\u10FB",  # PARAGRAPH SEPARATOR, GEORGIAN
    "\u203B",  # paragraph separator, urdu
    "\u00B6",  # paragraph sign
    "\u2761",  # PARAGRAPH SIGN ORNAMENT, CURVED STEM
    "\u00A7",  # paragraph sign, european
    "\u20B2",  # paraguayan currency
    "\u2225",  # PARALLEL TO
    "\u2226",  # PARALLEL TO, NOT
    "\u25B0",  # PARALLELOGRAM, BLACK
    "\u26BF",  # parental lock
    "\u0029",  # parenthesis, closing
    "\u0028",  # PARENTHESIS, LEFT
    "\u2985",  # PARENTHESIS, LEFT WHITE
    "\u0028",  # parenthesis, opening
    "\uFD3E",  # PARENTHESIS, ORNATE LEFT
    "\uFD3F",  # PARENTHESIS, ORNATE RIGHT
    "\u0029",  # PARENTHESIS, RIGHT
    "\u2986",  # PARENTHESIS, RIGHT WHITE
    "\u3220",  # Parenthesized CJK Ideographs
    "\u3200",  # Parenthesized Korean Hangul Letters
    "\u320E",  # Parenthesized Korean Hangul Syllables
    "\u1F110",  # Parenthesized Latin Capital Letters
    "\u1F110",  # Parenthesized Latin Letters
    "\u249C",  # Parenthesized Latin Letters
    "\u2474",  # Parenthesized Numbers
    "\u26F2",  # park
    "\u00A6",  # parted rule
    "\u10B40",  # Parthian, Inscriptional
    "\u2202",  # PARTIAL DIFFERENTIAL
    "\u21F8",  # partial function
    "\u2914",  # partial injection
    "\u008C",  # PARTIAL LINE BACKWARD
    "\u008B",  # PARTIAL LINE FORWARD
    "\u21F9",  # partial relation
    "\u2900",  # partial surjection
    "\u267D",  # PARTIALLY-RECYCLED PAPER SYMBOL
    "\u26C5",  # partly cloudy
    "\u26AF",  # PARTNERSHIP SYMBOL, UNMARRIED
    "\u055F",  # patiw, armenian
    "\u0BF6",  # patru, tamil
    "\u11AC0",  # Pau Cin Hau
    "\u2389",  # pause
    "\u23F8",  # pause play
    "\u1F43E",  # PAW PRINTS
    "\u202C",  # pdf
    "\u262E",  # PEACE SYMBOL
    "\u1F54A",  # PEACE, DOVE OF
    "\u270F",  # PENCIL
    "\u270E",  # Pencil Dingbats
    "\u270E",  # PENCIL, LOWER RIGHT
    "\u2710",  # PENCIL, UPPER RIGHT
    "\u1F427",  # PENGUIN
    "\u1F3F2",  # PENNANT, BLACK
    "\u1F3F1",  # PENNANT, WHITE
    "\u20B0",  # PENNY SIGN, GERMAN
    "\u26E4",  # PENTAGRAM
    "\u26E4",  # pentalpha, pentangle
    "\u2059",  # pentonkion, greek
    "\u1F336",  # PEPPER, HOT
    "\u2030",  # PER MILLE SIGN
    "\u214C",  # PER SIGN
    "\u2031",  # PER TEN THOUSAND SIGN
    "\u2030",  # per thousand
    "\u0025",  # PERCENT SIGN
    "\u02AD",  # PERCUSSIVE, LATIN LETTER BIDENTAL
    "\u02AC",  # PERCUSSIVE, LATIN LETTER BILABIAL
    "\u002E",  # period
    "\u2488",  # Period, Numbers Followed by
    "\u0342",  # PERISPOMENI, COMBINING GREEK
    "\u267E",  # PERMANENT PAPER SIGN
    "\u1F6AC",  # Permission and Prohibition Signs
    "\u22A5",  # perpendicular
    "\u103A0",  # Persian, Old
    "\u1F484",  # Personal Care Symbols
    "\u2306",  # PERSPECTIVE
    "\u20A7",  # PESETA SIGN
    "\u20B1",  # PESO SIGN
    "\u26FD",  # petrol station
    "\uA840",  # Phags-pa
    "\u101D0",  # Phaistos Disc
    "\u0295",  # PHARYNGEAL VOICED FRICATIVE, LATIN LETTER
    "\u03D5",  # PHI SYMBOL, GREEK
    "\u0278",  # PHI, LATIN SMALL LETTER
    "\u1736",  # PHILIPPINE DOUBLE PUNCTUATION
    "\u1735",  # PHILIPPINE SINGLE PUNCTUATION
    "\u20B1",  # phillipine currency
    "\u10900",  # Phoenician
    "\u02A3",  # Phonetic Digraphs
    "\u1D00",  # Phonetic Extensions
    "\u31F0",  # Phonetic Extensions, Katakana
    "\u02B9",  # Phonetic Modifiers
    "\u02B0",  # Phonetic Modifiers Derived from Latin Letters
    "\u2E80",  # Phonetics and Symbols Area, CJK
    "\u2117",  # phonorecord sign
    "\u2055",  # phul
    "\u03D6",  # PI SYMBOL, GREEK
    "\u213F",  # PI, DOUBLE-STRUCK CAPITAL
    "\u213C",  # PI, DOUBLE-STRUCK SMALL
    "\u03C0",  # PI, GREEK SMALL LETTER
    "\u03C0",  # pi, mathematical constant 3.141592...
    "\u26CF",  # PICK
    "\u1F300",  # Pictographs, Miscellaneous Symbols and
    "\u1F900",  # Pictographs, Supplemental Symbols and
    "\u2400",  # Pictures for Control Codes, Graphic
    "\u1F416",  # PIG
    "\u1F437",  # PIG FACE
    "\u1F43D",  # PIG NOSE
    "\u00B6",  # PILCROW SIGN
    "\u204B",  # PILCROW SIGN, REVERSED
    "\u2311",  # pillow
    "\u01C0",  # pipe
    "\u01C1",  # pipe, double
    "\u01C2",  # pipe, double-barred
    "\u2653",  # PISCES
    "\u2052",  # piska
    "\u22D4",  # PITCHFORK
    "\u2318",  # PLACE OF INTEREST SIGN
    "\u226C",  # plaintiff
    "\u210E",  # PLANCK CONSTANT
    "\u210F",  # PLANCK CONSTANT OVER TWO PI
    "\u263F",  # Planet Symbols
    "\u1F330",  # Plant Symbols
    "\u2673",  # Plastics Recycling Symbols
    "\u2660",  # Playing Card Suits
    "\u2660",  # Playing Card Symbols
    "\u1F0A0",  # Playing Cards
    "\u1F4A6",  # plewds
    "\u2A22",  # Plus and Minus Sign Operators
    "\u002B",  # PLUS SIGN
    "\u031F",  # PLUS SIGN BELOW, COMBINING
    "\u29FA",  # Plus Sign Operators, Specialized
    "\u02D6",  # PLUS SIGN, MODIFIER LETTER
    "\u2295",  # PLUS, CIRCLED
    "\u2214",  # PLUS, DOT
    "\u29FA",  # PLUS, DOUBLE
    "\u2064",  # PLUS, INVISIBLE
    "\u229E",  # PLUS, SQUARED
    "\u29FB",  # PLUS, TRIPLE
    "\u00B1",  # PLUS-MINUS SIGN
    "\u2647",  # PLUTO
    "\u002E",  # point, decimal
    "\u2027",  # POINT, HYPHENATION
    "\u25BA",  # Pointers
    "\u1F597",  # Pointing Hand Indexes
    "\u261A",  # Pointing Hand Symbols
    "\u261A",  # Pointing Index Finger Dingbats
    "\u261A",  # POINTING INDEX, BLACK LEFT
    "\u261B",  # POINTING INDEX, BLACK RIGHT
    "\u261F",  # POINTING INDEX, WHITE DOWN
    "\u261C",  # POINTING INDEX, WHITE LEFT
    "\u261E",  # POINTING INDEX, WHITE RIGHT
    "\u261D",  # POINTING INDEX, WHITE UP
    "\u05B0",  # Points and Punctuation, Hebrew
    "\u05B0",  # Points, Hebrew
    "\u0730",  # Points, Syriac
    "\u2620",  # poison
    "\u1F46E",  # POLICE OFFICER
    "\u2626",  # Political Symbols, Religious and
    "\u2B12",  # Polygonal Symbols
    "\u1F00",  # Polytonic Greek, Precomposed
    "\u1F4A9",  # POO, PILE OF
    "\u1F429",  # POODLE
    "\u202C",  # POP DIRECTIONAL FORMATTING
    "\u2069",  # POP DIRECTIONAL ISOLATE
    "\u1F416",  # pork (on menus)
    "\u1F464",  # Portrait and Role Symbols
    "\u1F930",  # Portrait and Role Symbols
    "\u1F9D0",  # Portrait and Role Symbols
    "\u2316",  # POSITION INDICATOR
    "\u2BD0",  # POSITION INDICATOR, SQUARE
    "\u2A24",  # positive difference or sum
    "\u2A26",  # positive difference, sum or
    "\u223E",  # positive, most
    "\u1F4EF",  # POSTAL HORN
    "\u3012",  # POSTAL MARK
    "\u3020",  # POSTAL MARK FACE
    "\u3036",  # POSTAL MARK, CIRCLED
    "\u1F414",  # poultry (on menus)
    "\u0023",  # pound sign
    "\u00A3",  # POUND SIGN
    "\u00A3",  # pound sterling
    "\u2114",  # pounds
    "\u23FB",  # Power On/Off Symbols
    "\u26EE",  # power plant
    "\u1D4AB",  # power set
    "\u227A",  # Precedence Signs, Order Relation
    "\u22DE",  # Precedence Signs, Order Relation
    "\u227A",  # PRECEDES
    "\u22B0",  # PRECEDES UNDER RELATION
    "\u2ABB",  # PRECEDES, DOUBLE
    "\u1F00",  # Precomposed Polytonic Greek
    "\u211E",  # PRESCRIPTION TAKE
    "\uFB00",  # Presentation Forms, Alphabetic
    "\uFB1D",  # Presentation Forms, Hebrew
    "\uFB50",  # Presentation Forms-A, Arabic
    "\uFE70",  # Presentation Forms-B, Arabic
    "\u2397",  # PREVIOUS PAGE
    "\u2032",  # PRIME
    "\u301E",  # PRIME QUOTATION MARK, DOUBLE
    "\u301F",  # PRIME QUOTATION MARK, LOW DOUBLE
    "\u301D",  # PRIME QUOTATION MARK, REVERSED DOUBLE
    "\u2033",  # PRIME, DOUBLE
    "\u02B9",  # PRIME, MODIFIER LETTER
    "\u02BA",  # PRIME, MODIFIER LETTER DOUBLE
    "\u2057",  # PRIME, QUADRUPLE
    "\u2035",  # PRIME, REVERSED
    "\u2036",  # PRIME, REVERSED DOUBLE
    "\u2037",  # PRIME, REVERSED TRIPLE
    "\u2034",  # PRIME, TRIPLE
    "\u1F478",  # PRINCESS
    "\u2399",  # PRINT SCREEN SYMBOL
    "\u009E",  # PRIVACY MESSAGE
    "\uE000",  # Private Use Area
    "\uF0000",  # Private Use Area-A, Supplementary
    "\u100000",  # Private Use Area-B, Supplementary
    "\u0091",  # PRIVATE USE ONE
    "\u0092",  # PRIVATE USE TWO
    "\u220F",  # product sign
    "\u00D7",  # product, cartesian
    "\u2299",  # product, direct
    "\u2A3C",  # PRODUCT, INTERIOR
    "\u22C9",  # PRODUCT, LEFT NORMAL FACTOR SEMIDIRECT
    "\u22CB",  # PRODUCT, LEFT SEMIDIRECT
    "\u220F",  # PRODUCT, N-ARY
    "\u22CA",  # PRODUCT, RIGHT NORMAL FACTOR SEMIDIRECT
    "\u22CC",  # PRODUCT, RIGHT SEMIDIRECT
    "\u2A3D",  # PRODUCT, RIGHTHAND INTERIOR
    "\u29E2",  # PRODUCT, SHUFFLE
    "\u2A33",  # PRODUCT, SMASH
    "\u2297",  # product, tensor
    "\u2A2F",  # PRODUCT, VECTOR OR CROSS
    "\u2240",  # PRODUCT, WREATH
    "\u009F",  # PROGRAM COMMAND, APPLICATION
    "\u1F6C7",  # PROHIBITED SIGN
    "\u20E0",  # prohibition
    "\u1F6AC",  # Prohibition Signs, Permission and
    "\u2305",  # PROJECTIVE
    "\u220E",  # PROOF, END OF
    "\u22D4",  # proper intersection
    "\u214A",  # PROPERTY LINE
    "\u2237",  # PROPORTION
    "\u223A",  # PROPORTION, GEOMETRIC
    "\u221D",  # PROPORTIONAL TO
    "\u223C",  # proportional to
    "\u22A2",  # proves
    "\u0313",  # psili, greek
    "\u2117",  # published
    "\u27D3",  # pullback
    "\u1F44A",  # punch
    "\u0374",  # Punctuation and Signs, Greek
    "\u104A",  # Punctuation and Signs, Myanmar
    "\u0700",  # Punctuation and Signs, Syriac
    "\u0020",  # Punctuation and Symbols, ASCII
    "\u00A0",  # Punctuation and Symbols, Latin-1
    "\u2047",  # Punctuation for Vertical Text, Double
    "\u275B",  # Punctuation Mark Ornaments
    "\u1F676",  # Punctuation Mark Ornaments
    "\u2008",  # PUNCTUATION SPACE
    "\u060C",  # Punctuation, Arabic
    "\u166D",  # Punctuation, Canadian Syllabics
    "\u3000",  # Punctuation, CJK Symbols and
    "\u12400",  # Punctuation, Cuneiform Numbers and
    "\u1361",  # Punctuation, Ethiopic
    "\u2000",  # Punctuation, General
    "\uFF61",  # Punctuation, Halfwidth CJK
    "\u05B0",  # Punctuation, Hebrew Points and
    "\u1800",  # Punctuation, Mongolian
    "\u169B",  # Punctuation, Ogham
    "\u1736",  # PUNCTUATION, PHILIPPINE DOUBLE
    "\u1735",  # PUNCTUATION, PHILIPPINE SINGLE
    "\u16EB",  # Punctuation, Runic
    "\u2E00",  # Punctuation, Supplemental
    "\u00A3",  # punt, irish
    "\u0964",  # purna viram, devanagari
    "\u27D4",  # pushout
    "\u2055",  # puspika
    "\u024A",  # Q WITH HOOK TAIL, LATIN CAPITAL LETTER SMALL
    "\u024B",  # Q WITH HOOK TAIL, LATIN SMALL LETTER
    "\u02A0",  # Q WITH HOOK, LATIN SMALL LETTER
    "\u211A",  # Q, DOUBLE-STRUCK CAPITAL
    "\u213A",  # Q, ROTATED CAPITAL
    "\u220E",  # q.e.d.
    "\u0239",  # QP DIGRAPH, LATIN SMALL LETTER
    "\u2001",  # QUAD, EM
    "\u2000",  # QUAD, EN
    "\u2001",  # quad, mutton
    "\u25F0",  # Quadrant Control Code Graphics
    "\u25A1",  # quadrature
    "\u2057",  # QUADRUPLE PRIME
    "\u226C",  # quantic
    "\u2203",  # quantifier, existential
    "\u2200",  # quantifier, universal
    "\u263D",  # QUARTER MOON, FIRST
    "\u263E",  # QUARTER MOON, LAST
    "\u2669",  # QUARTER NOTE
    "\u00BC",  # QUARTER, VULGAR FRACTION ONE
    "\u00BC",  # Quarters, Fractions
    "\u00BE",  # QUARTERS, VULGAR FRACTION THREE
    "\u2A16",  # QUATERNION INTEGRAL OPERATOR
    "\u1D160",  # quaver
    "\u266A",  # quaver
    "\u266B",  # quavers, beamed
    "\u2048",  # QUESTION EXCLAMATION MARK
    "\u003F",  # QUESTION MARK
    "\u2753",  # QUESTION MARK ORNAMENT, BLACK
    "\u2754",  # QUESTION MARK ORNAMENT, WHITE
    "\u061F",  # QUESTION MARK, ARABIC
    "\u055E",  # QUESTION MARK, ARMENIAN
    "\u2047",  # QUESTION MARK, DOUBLE
    "\u1367",  # QUESTION MARK, ETHIOPIC
    "\u2049",  # QUESTION MARK, EXCLAMATION
    "\u003B",  # question mark, greek
    "\u037E",  # QUESTION MARK, GREEK
    "\u00BF",  # QUESTION MARK, INVERTED
    "\u1945",  # QUESTION MARK, LIMBU
    "\u00BF",  # question mark, turned
    "\u225F",  # QUESTIONED EQUAL TO
    "\u2045",  # QUILL, LEFT SQUARE BRACKET WITH
    "\u2046",  # QUILL, RIGHT SQUARE BRACKET WITH
    "\u1F668",  # Quilt Square Ornaments
    "\u231C",  # Quine Corners
    "\u2015",  # quotation dash
    "\u0022",  # QUOTATION MARK
    "\u275B",  # Quotation Mark Dingbats
    "\u275B",  # Quotation Mark Ornaments
    "\u201D",  # quotation mark, double comma
    "\u201F",  # QUOTATION MARK, DOUBLE HIGH-REVERSED-9
    "\u201E",  # QUOTATION MARK, DOUBLE LOW-9
    "\u2E42",  # QUOTATION MARK, DOUBLE LOW-REVERSED-9
    "\u301E",  # QUOTATION MARK, DOUBLE PRIME
    "\u201F",  # quotation mark, double reversed comma
    "\u201C",  # quotation mark, double turned comma
    "\u201C",  # QUOTATION MARK, LEFT DOUBLE
    "\u2018",  # QUOTATION MARK, LEFT SINGLE
    "\u00AB",  # QUOTATION MARK, LEFT-POINTING DOUBLE ANGLE
    "\u201E",  # quotation mark, low double comma
    "\u301F",  # QUOTATION MARK, LOW DOUBLE PRIME
    "\u201A",  # quotation mark, low single comma
    "\u0022",  # quotation mark, neutral
    "\u0027",  # quotation mark, neutral single
    "\u301D",  # QUOTATION MARK, REVERSED DOUBLE PRIME
    "\u201D",  # QUOTATION MARK, RIGHT DOUBLE
    "\u2019",  # QUOTATION MARK, RIGHT SINGLE
    "\u00BB",  # QUOTATION MARK, RIGHT-POINTING DOUBLE ANGLE
    "\u2019",  # quotation mark, single comma
    "\u201B",  # QUOTATION MARK, SINGLE HIGH-REVERSED-9
    "\u2039",  # QUOTATION MARK, SINGLE LEFT-POINTING ANGLE
    "\u201A",  # QUOTATION MARK, SINGLE LOW-9
    "\u201B",  # quotation mark, single reversed comma
    "\u203A",  # QUOTATION MARK, SINGLE RIGHT-POINTING ANGLE
    "\u2018",  # quotation mark, single turned comma
    "\u2018",  # Quotation Marks
    "\u300C",  # Quotation Marks, CJK
    "\u276E",  # Quotation Marks, Ornamental Angle
    "\u0027",  # quote, apl
    "\u06D6",  # Qur'anic Annotation Signs, Arabic
    "\u0155",  # R WITH ACUTE, LATIN SMALL LETTER
    "\u0159",  # R WITH CARON, LATIN SMALL LETTER
    "\u0157",  # R WITH CEDILLA, LATIN SMALL LETTER
    "\u1E59",  # R WITH DOT ABOVE, LATIN SMALL LETTER
    "\u1E5B",  # R WITH DOT BELOW, LATIN SMALL LETTER
    "\u0211",  # R WITH DOUBLE GRAVE, LATIN SMALL LETTER
    "\u027E",  # R WITH FISHHOOK, LATIN SMALL LETTER
    "\u027F",  # R WITH FISHHOOK, LATIN SMALL LETTER REVERSED
    "\u027B",  # R WITH HOOK, LATIN SMALL LETTER TURNED
    "\u0213",  # R WITH INVERTED BREVE, LATIN SMALL LETTER
    "\u1E5F",  # R WITH LINE BELOW, LATIN SMALL LETTER
    "\u027C",  # R WITH LONG LEG, LATIN SMALL LETTER
    "\u027A",  # R WITH LONG LEG, LATIN SMALL LETTER TURNED
    "\u024C",  # R WITH STROKE, LATIN CAPITAL LETTER
    "\u024D",  # R WITH STROKE, LATIN SMALL LETTER
    "\u027D",  # R WITH TAIL, LATIN SMALL LETTER
    "\u211C",  # R, BLACK-LETTER CAPITAL
    "\u036C",  # R, COMBINING LATIN SMALL LETTER
    "\u211D",  # R, DOUBLE-STRUCK CAPITAL
    "\u0280",  # R, LATIN LETTER SMALL CAPITAL
    "\u0281",  # R, LATIN LETTER SMALL CAPITAL INVERTED
    "\u1D19",  # R, LATIN LETTER SMALL CAPITAL REVERSED
    "\u1D1A",  # R, LATIN LETTER SMALL CAPITAL TURNED
    "\u0279",  # R, LATIN SMALL LETTER TURNED
    "\u1D63",  # R, LATIN SUBSCRIPT SMALL LETTER
    "\u02B3",  # R, MODIFIER LETTER SMALL
    "\u02B6",  # R, MODIFIER LETTER SMALL CAPITAL INVERTED
    "\u02B4",  # R, MODIFIER LETTER SMALL TURNED
    "\u211B",  # R, SCRIPT CAPITAL
    "\u1F407",  # RABBIT
    "\u1F430",  # RABBIT FACE
    "\u27DF",  # radial component
    "\u221A",  # radical sign
    "\u2E80",  # Radicals Supplement, CJK
    "\u2F00",  # Radicals, CJK Kangxi
    "\uA490",  # Radicals, Yi
    "\u2622",  # RADIOACTIVE SIGN
    "\u1F6E4",  # RAILWAY TRACK
    "\u26C6",  # RAIN
    "\u2614",  # RAIN DROPS, UMBRELLA WITH
    "\u1F308",  # RAINBOW
    "\u2602",  # rainy weather
    "\u1F40F",  # RAM
    "\u0264",  # RAMS HORN, LATIN SMALL LETTER
    "\u25B7",  # range restriction
    "\u1F400",  # RAT
    "\u2236",  # RATIO
    "\u211E",  # ratio, cross
    "\u211A",  # rational numbers
    "\u17C7",  # REAHMUK, KHMER SIGN
    "\u210A",  # real number symbol
    "\u211D",  # real numbers
    "\u211C",  # real part
    "\u211E",  # recipe
    "\u23FA",  # record
    "\u001E",  # record separator
    "\u241E",  # RECORD SEPARATOR, SYMBOL FOR
    "\u2315",  # RECORDER, TELEPHONE
    "\u2117",  # RECORDING COPYRIGHT, SOUND
    "\u2327",  # RECTANGLE BOX, X IN A
    "\u25AC",  # Rectangles
    "\u267C",  # RECYCLED PAPER SYMBOL
    "\u267D",  # RECYCLED PAPER SYMBOL, PARTIALLY-
    "\u2672",  # RECYCLING SYMBOL, UNIVERSAL
    "\u2672",  # Recycling Symbols
    "\u2673",  # Recycling Symbols, Plastics
    "\u22A6",  # reduces to
    "\u22A2",  # reducible
    "\u203B",  # REFERENCE MARK
    "\u00AE",  # REGISTERED SIGN
    "\u00AE",  # registered trade mark sign
    "\uA930",  # Rejang
    "\u2194",  # relation
    "\u21FC",  # relation, finite
    "\u21F9",  # relation, partial
    "\u29E3",  # Relational Operators
    "\u2ABD",  # Relations, Subset and Superset
    "\u2626",  # Religious and Political Symbols
    "\u3031",  # Repeat Marks, Kana
    "\uFFFD",  # REPLACEMENT CHARACTER
    "\uFFFC",  # REPLACEMENT CHARACTER, OBJECT
    "\u211F",  # RESPONSE
    "\u1F374",  # restaurant, meal (glyph may vary)
    "\u25C1",  # restriction, domain
    "\u25B7",  # restriction, range
    "\u1F6B9",  # Restroom Symbols
    "\u22A8",  # results in
    "\u01C3",  # RETROFLEX CLICK, LATIN LETTER
    "\u0322",  # RETROFLEX HOOK BELOW, COMBINING
    "\u01AE",  # RETROFLEX HOOK, LATIN CAPITAL LETTER T WITH
    "\u0256",  # retroflex hook, latin small letter d
    "\u026D",  # RETROFLEX HOOK, LATIN SMALL LETTER L WITH
    "\u0273",  # RETROFLEX HOOK, LATIN SMALL LETTER N WITH
    "\u0288",  # RETROFLEX HOOK, LATIN SMALL LETTER T WITH
    "\u0290",  # RETROFLEX HOOK, LATIN SMALL LETTER Z WITH
    "\u23CE",  # RETURN SYMBOL
    "\u000D",  # RETURN, CARRIAGE
    "\u240D",  # RETURN, SYMBOL FOR CARRIAGE
    "\u008D",  # REVERSE LINE FEED
    "\u23F4",  # reverse play
    "\u005C",  # REVERSE SOLIDUS
    "\u29F5",  # REVERSE SOLIDUS OPERATOR
    "\u20E5",  # REVERSE SOLIDUS OVERLAY, COMBINING
    "\u29F9",  # REVERSE SOLIDUS, BIG
    "\u22A3",  # reverse turnstile
    "\u2184",  # REVERSED C, LATIN SMALL LETTER
    "\u0314",  # REVERSED COMMA ABOVE, COMBINING
    "\u201F",  # reversed comma quotation mark, double
    "\u201B",  # reversed comma quotation mark, single
    "\u02BD",  # REVERSED COMMA, MODIFIER LETTER
    "\u2036",  # REVERSED DOUBLE PRIME
    "\u301D",  # REVERSED DOUBLE PRIME QUOTATION MARK
    "\u018E",  # REVERSED E, LATIN CAPITAL LETTER
    "\u0258",  # REVERSED E, LATIN SMALL LETTER
    "\u025E",  # reversed epsilon, latin small letter closed
    "\u01AA",  # REVERSED ESH LOOP, LATIN LETTER
    "\u0285",  # REVERSED ESH, LATIN SMALL LETTER SQUAT
    "\u0295",  # reversed glottal stop, latin letter
    "\u02C1",  # REVERSED GLOTTAL STOP, MODIFIER LETTER
    "\u02E4",  # REVERSED GLOTTAL STOP, MODIFIER LETTER SMALL
    "\u03F6",  # REVERSED LUNATE EPSILON SYMBOL, GREEK
    "\u1D0E",  # REVERSED N, LATIN LETTER SMALL CAPITAL
    "\u2310",  # REVERSED NOT SIGN
    "\u025D",  # REVERSED OPEN E WITH HOOK, LATIN SMALL LETTER
    "\u025C",  # REVERSED OPEN E, LATIN SMALL LETTER
    "\u025E",  # REVERSED OPEN E, LATIN SMALL LETTER CLOSED
    "\u204B",  # REVERSED PILCROW SIGN
    "\u2035",  # REVERSED PRIME
    "\u027F",  # REVERSED R WITH FISHHOOK, LATIN SMALL LETTER
    "\u1D19",  # REVERSED R, LATIN LETTER SMALL CAPITAL
    "\u2619",  # REVERSED ROTATED FLORAL HEART BULLET
    "\u2143",  # REVERSED SANS-SERIF CAPITAL L
    "\u204F",  # REVERSED SEMICOLON
    "\u03F6",  # reversed straight epsilon
    "\u223D",  # REVERSED TILDE
    "\u22CD",  # REVERSED TILDE EQUALS
    "\u2037",  # REVERSED TRIPLE PRIME
    "\u01B9",  # REVERSED, LATIN SMALL LETTER EZH
    "\u23EA",  # rewind, fast
    "\u27EF",  # rgroup
    "\u02DE",  # RHOTIC HOOK, MODIFIER LETTER
    "\uFDFC",  # RIAL SIGN
    "\u1F397",  # RIBBON, REMINDER
    "\u17DB",  # RIEL, KHMER CURRENCY SYMBOL
    "\u211B",  # riemann integral
    "\u301B",  # right abstract syntax bracket
    "\u221F",  # RIGHT ANGLE
    "\u3009",  # RIGHT ANGLE BRACKET
    "\u27E9",  # RIGHT ANGLE BRACKET, MATHEMATICAL
    "\u22BE",  # RIGHT ANGLE WITH ARC
    "\u20D7",  # RIGHT ARROW ABOVE, COMBINING
    "\u20E1",  # RIGHT ARROW ABOVE, COMBINING LEFT
    "\u20EF",  # RIGHT ARROW BELOW, COMBINING
    "\u034D",  # RIGHT ARROW BELOW, COMBINING LEFT
    "\u29F4",  # right arrow, colon
    "\u0350",  # RIGHT ARROWHEAD ABOVE, COMBINING
    "\u0355",  # RIGHT ARROWHEAD BELOW, COMBINING
    "\u27E7",  # right bag bracket
    "\u3011",  # RIGHT BLACK LENTICULAR BRACKET
    "\u2309",  # RIGHT CEILING
    "\u27EB",  # right chevron bracket
    "\u300D",  # RIGHT CORNER BRACKET
    "\u007D",  # RIGHT CURLY BRACKET
    "\u22F1",  # RIGHT DIAGONAL ELLIPSIS, DOWN
    "\u22F0",  # RIGHT DIAGONAL ELLIPSIS, UP
    "\u300B",  # RIGHT DOUBLE ANGLE BRACKET
    "\u27EB",  # RIGHT DOUBLE ANGLE BRACKET, MATHEMATICAL
    "\u201D",  # RIGHT DOUBLE QUOTATION MARK
    "\u230B",  # RIGHT FLOOR
    "\u0357",  # RIGHT HALF RING ABOVE, COMBINING
    "\u0339",  # RIGHT HALF RING BELOW, COMBINING
    "\u055A",  # right half ring, armenian modifier letter
    "\u20D1",  # RIGHT HARPOON ABOVE, COMBINING
    "\u2326",  # right key, delete to the
    "\u23B1",  # right moustache
    "\u22CA",  # RIGHT NORMAL FACTOR SEMIDIRECT PRODUCT
    "\u0029",  # RIGHT PARENTHESIS
    "\uFD3F",  # RIGHT PARENTHESIS, ORNATE
    "\u270E",  # RIGHT PENCIL, LOWER
    "\u2710",  # RIGHT PENCIL, UPPER
    "\u00BB",  # right pointing guillemet
    "\u261B",  # RIGHT POINTING INDEX, BLACK
    "\u261E",  # RIGHT POINTING INDEX, WHITE
    "\u203A",  # right pointing single guillemet
    "\u22CC",  # RIGHT SEMIDIRECT PRODUCT
    "\u27E9",  # right sequence bracket
    "\u2019",  # RIGHT SINGLE QUOTATION MARK
    "\u005D",  # RIGHT SQUARE BRACKET
    "\u2046",  # RIGHT SQUARE BRACKET WITH QUILL
    "\u22A2",  # RIGHT TACK
    "\u0319",  # RIGHT TACK BELOW, COMBINING
    "\u3015",  # RIGHT TORTOISE SHELL BRACKET
    "\u22BF",  # RIGHT TRIANGLE
    "\u300F",  # RIGHT WHITE CORNER BRACKET
    "\u2984",  # RIGHT WHITE CURLY BRACKET
    "\u3017",  # RIGHT WHITE LENTICULAR BRACKET
    "\u2986",  # RIGHT WHITE PARENTHESIS
    "\u301B",  # RIGHT WHITE SQUARE BRACKET
    "\u3019",  # RIGHT WHITE TORTOISE SHELL BRACKET
    "\u0315",  # RIGHT, COMBINING COMMA ABOVE
    "\u0358",  # RIGHT, COMBINING DOT ABOVE
    "\u2326",  # RIGHT, ERASE TO THE
    "\u21A0",  # right, fast cursor
    "\u232A",  # RIGHT-POINTING ANGLE BRACKET
    "\u203A",  # RIGHT-POINTING ANGLE QUOTATION MARK, SINGLE
    "\u00BB",  # RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK
    "\u202B",  # RIGHT-TO-LEFT EMBEDDING
    "\u2067",  # RIGHT-TO-LEFT ISOLATE
    "\u200F",  # RIGHT-TO-LEFT MARK
    "\u202E",  # RIGHT-TO-LEFT OVERRIDE
    "\u2A3D",  # RIGHTHAND INTERIOR PRODUCT
    "\u21E5",  # rightward tab
    "\u2192",  # RIGHTWARDS ARROW
    "\u0362",  # RIGHTWARDS ARROW BELOW, COMBINING DOUBLE
    "\u204D",  # RIGHTWARDS BULLET, BLACK
    "\u20EC",  # RIGHTWARDS HARPOON WITH BARB DOWNWARDS, COMBINING
    "\u02DA",  # RING ABOVE
    "\u030A",  # RING ABOVE, COMBINING
    "\u0351",  # RING ABOVE, COMBINING LEFT HALF
    "\u0357",  # RING ABOVE, COMBINING RIGHT HALF
    "\u00C5",  # RING ABOVE, LATIN CAPITAL LETTER A WITH
    "\u00E5",  # RING ABOVE, LATIN SMALL LETTER A WITH
    "\u0325",  # RING BELOW, COMBINING
    "\u035A",  # RING BELOW, COMBINING DOUBLE
    "\u031C",  # RING BELOW, COMBINING LEFT HALF
    "\u0339",  # RING BELOW, COMBINING RIGHT HALF
    "\u1E01",  # RING BELOW, LATIN SMALL LETTER A WITH
    "\u2257",  # RING EQUAL TO
    "\u2256",  # RING IN EQUAL TO
    "\u2218",  # RING OPERATOR
    "\u229A",  # RING OPERATOR, CIRCLED
    "\u20D8",  # RING OVERLAY, COMBINING
    "\u20DA",  # RING OVERLAY, COMBINING ANTICLOCKWISE
    "\u20D9",  # RING OVERLAY, COMBINING CLOCKWISE
    "\u20DA",  # ring overlay, combining counterclockwise
    "\u0559",  # RING, ARMENIAN MODIFIER LETTER LEFT HALF
    "\u055A",  # ring, armenian modifier letter right half
    "\u232C",  # RING, BENZENE
    "\u02D3",  # RING, MODIFIER LETTER CENTRED LEFT HALF
    "\u02BF",  # RING, MODIFIER LETTER LEFT HALF
    "\u0F7E",  # RJES SU NGA RO, TIBETAN SIGN
    "\u202B",  # rle
    "\u200F",  # rlm
    "\u202E",  # rlo
    "\u0F7F",  # RNAM BCAD, TIBETAN SIGN
    "\u26D2",  # road closed
    "\u270A",  # rock in rock, paper, scissors game
    "\u1F923",  # rofl
    "\u1F481",  # Role Symbols
    "\u1F464",  # Role Symbols, Portrait and
    "\u1F930",  # Role Symbols, Portrait and
    "\u1F9D0",  # Role Symbols, Portrait and
    "\u1F923",  # ROLLING ON THE FLOOR LAUGHING
    "\u2160",  # Roman Numerals
    "\u2185",  # Roman Numerals, Archaic
    "\u10190",  # Roman Symbols
    "\u1F48B",  # Romance Symbols
    "\u1F413",  # ROOSTER
    "\u221B",  # ROOT, CUBE
    "\u221C",  # ROOT, FOURTH
    "\u221A",  # ROOT, SQUARE
    "\u213A",  # ROTATED CAPITAL Q
    "\u0314",  # rough breathing mark, greek
    "\u20BD",  # RUBLE SIGN
    "\u00A6",  # rule, parted
    "\u29F4",  # RULE-DELAYED
    "\u10E60",  # Rumi Numeral Symbols
    "\u16A0",  # Runic
    "\u16EE",  # Runic Golden Numbers
    "\u16EB",  # Runic Punctuation
    "\u2330",  # RUNOUT, TOTAL
    "\u0BF9",  # rupai, tamil
    "\u09F2",  # RUPEE MARK, BENGALI
    "\u20A8",  # RUPEE SIGN
    "\u09F3",  # RUPEE SIGN, BENGALI
    "\u0AF1",  # RUPEE SIGN, GUJARATI
    "\u20B9",  # RUPEE SIGN, INDIAN
    "\u0BF9",  # RUPEE SIGN, TAMIL
    "\u0410",  # Russian Alphabet
    "\u015B",  # S WITH ACUTE, LATIN SMALL LETTER
    "\u0161",  # S WITH CARON, LATIN SMALL LETTER
    "\u015F",  # S WITH CEDILLA, LATIN SMALL LETTER
    "\u015D",  # S WITH CIRCUMFLEX, LATIN SMALL LETTER
    "\u0219",  # S WITH COMMA BELOW, LATIN SMALL LETTER
    "\u1E61",  # S WITH DOT ABOVE, LATIN SMALL LETTER
    "\u1E9B",  # S WITH DOT ABOVE, LATIN SMALL LETTER LONG
    "\u1E63",  # S WITH DOT BELOW, LATIN SMALL LETTER
    "\u0282",  # S WITH HOOK, LATIN SMALL LETTER
    "\u023F",  # S WITH SWASH TAIL, LATIN SMALL LETTER
    "\u223E",  # S, INVERTED LAZY
    "\u017F",  # S, LATIN SMALL LETTER LONG
    "\u00DF",  # S, LATIN SMALL LETTER SHARP
    "\u209B",  # S, LATIN SUBSCRIPT SMALL LETTER
    "\u223D",  # s, lazy
    "\u02E2",  # S, MODIFIER LETTER SMALL
    "\u2650",  # SAGITTARIUS
    "\u26F4",  # SAILBOAT
    "\u2613",  # SALTIRE
    "\u1F7A8",  # Saltires
    "\u070F",  # sam, syriac
    "\u0800",  # Samaritan
    "\u214F",  # SAMARITAN SOURCE, SYMBOL FOR
    "\u1D7EC",  # Sans-serif Bold Digits
    "\u1D756",  # Sans-serif Bold Greek Mathematical Symbols
    "\u1D790",  # Sans-serif Bold Italic Greek Mathematical Symbols
    "\u1D63C",  # Sans-serif Bold Italic Mathematical Symbols
    "\u1D5D4",  # Sans-serif Bold Mathematical Symbols
    "\u2141",  # SANS-SERIF CAPITAL G, TURNED
    "\u2143",  # SANS-SERIF CAPITAL L, REVERSED
    "\u2142",  # SANS-SERIF CAPITAL L, TURNED
    "\u2144",  # SANS-SERIF CAPITAL Y, TURNED
    "\u1D7E2",  # Sans-serif Digits
    "\u1D608",  # Sans-serif Italic Mathematical Symbols
    "\u1D5A0",  # Sans-serif Mathematical Symbols
    "\u1F385",  # santa claus
    "\u22A8",  # satisfies
    "\u2AF1",  # satisfies, necessarily
    "\u2AE2",  # satisfies, ordinarily
    "\u2238",  # saturating subtraction
    "\u2644",  # SATURN
    "\uA880",  # Saurashtra
    "\u2696",  # SCALES
    "\u23BA",  # Scan Lines, Horizontal
    "\u29F9",  # schema hiding
    "\u1F4AE",  # School Grade Symbols, Japanese
    "\u018F",  # SCHWA, LATIN CAPITAL LETTER
    "\u0259",  # SCHWA, LATIN SMALL LETTER
    "\u270C",  # scissors in rock, paper, scissors game
    "\u2702",  # SCISSORS, BLACK
    "\u2701",  # SCISSORS, UPPER BLADE
    "\u2704",  # SCISSORS, WHITE
    "\u1F982",  # SCORPION
    "\u264F",  # SCORPIUS
    "\u239A",  # SCREEN SYMBOL, CLEAR
    "\u2399",  # SCREEN SYMBOL, PRINT
    "\u20E2",  # SCREEN, COMBINING ENCLOSING
    "\u0251",  # script a, latin small letter
    "\u212C",  # SCRIPT CAPITAL B
    "\u2130",  # SCRIPT CAPITAL E
    "\u2131",  # SCRIPT CAPITAL F
    "\u210B",  # SCRIPT CAPITAL H
    "\u2110",  # SCRIPT CAPITAL I
    "\u2112",  # SCRIPT CAPITAL L
    "\u2133",  # SCRIPT CAPITAL M
    "\u2118",  # SCRIPT CAPITAL P
    "\u211B",  # SCRIPT CAPITAL R
    "\u0192",  # script f, latin small letter
    "\u0261",  # SCRIPT G, LATIN SMALL LETTER
    "\u1D49C",  # Script Mathematical Symbols
    "\u1D4D0",  # Script Mathematical Symbols, Bold
    "\u212F",  # SCRIPT SMALL E
    "\u210A",  # SCRIPT SMALL G
    "\u2113",  # SCRIPT SMALL L
    "\u2134",  # SCRIPT SMALL O
    "\u03D1",  # script theta
    "\u01B2",  # script v, latin capital letter
    "\u028B",  # script v, latin small letter
    "\u21F3",  # scrolling
    "\u2108",  # SCRUPLE
    "\u033C",  # SEAGULL BELOW, COMBINING
    "\u1F41A",  # seashell
    "\u02CA",  # second tone, mandarin chinese
    "\u2033",  # seconds
    "\u00A7",  # SECTION SIGN
    "\u00B6",  # section sign, european
    "\u2314",  # SECTOR
    "\u2313",  # SEGMENT
    "\u0087",  # SELECTED AREA, END OF
    "\u0086",  # SELECTED AREA, START OF
    "\uE0100",  # Selectors Supplement, Variation
    "\uFE00",  # Selectors, Variation
    "\u1F933",  # SELFIE
    "\u1D15D",  # semibreve
    "\u003B",  # SEMICOLON
    "\u061B",  # SEMICOLON, ARABIC
    "\u1364",  # SEMICOLON, ETHIOPIC
    "\u204F",  # SEMICOLON, REVERSED
    "\u22CB",  # SEMIDIRECT PRODUCT, LEFT
    "\u22C9",  # SEMIDIRECT PRODUCT, LEFT NORMAL FACTOR
    "\u22CC",  # SEMIDIRECT PRODUCT, RIGHT
    "\u22CA",  # SEMIDIRECT PRODUCT, RIGHT NORMAL FACTOR
    "\u1D161",  # semiquaver
    "\u266C",  # semiquavers, beamed
    "\u10101",  # SEPARATOR DOT, AEGEAN WORD
    "\u2396",  # SEPARATOR KEY SYMBOL, DECIMAL
    "\u10100",  # SEPARATOR LINE, AEGEAN WORD
    "\u2E31",  # SEPARATOR MIDDLE DOT, WORD
    "\u060D",  # SEPARATOR, ARABIC DATE
    "\u066B",  # SEPARATOR, ARABIC DECIMAL
    "\u066C",  # separator, arabic phrase
    "\u066C",  # SEPARATOR, ARABIC THOUSANDS
    "\u002C",  # separator, decimal
    "\u0964",  # separator, devanagari phrase
    "\u1368",  # SEPARATOR, ETHIOPIC PARAGRAPH
    "\u001C",  # separator, file
    "\u10FB",  # SEPARATOR, GEORGIAN PARAGRAPH
    "\u001D",  # separator, group
    "\uFFFA",  # SEPARATOR, INTERLINEAR ANNOTATION
    "\u2063",  # SEPARATOR, INVISIBLE
    "\u2028",  # SEPARATOR, LINE
    "\u180E",  # SEPARATOR, MONGOLIAN VOWEL
    "\u2029",  # SEPARATOR, PARAGRAPH
    "\u001E",  # separator, record
    "\u001F",  # separator, unit
    "\u203B",  # separator, urdu paragraph
    "\u1D516",  # septuagint
    "\u27E8",  # sequence bracket, left
    "\u27E9",  # sequence bracket, right
    "\u2040",  # sequence concatenation
    "\u009B",  # SEQUENCE INTRODUCER, CONTROL
    "\u2120",  # SERVICE MARK
    "\uFE45",  # SESAME DOT
    "\uFE46",  # SESAME DOT, WHITE
    "\u2208",  # Set Membership Signs
    "\u2216",  # SET MINUS
    "\u2102",  # set of complex numbers, the
    "\u2124",  # set of integers, the
    "\u211A",  # set of rational numbers, the
    "\u211D",  # set of real numbers, the
    "\u0093",  # SET TRANSMIT STATE
    "\u2205",  # SET, EMPTY
    "\u2282",  # set, included in
    "\u2283",  # set, includes in
    "\u2205",  # set, null
    "\u1D4AB",  # set, power
    "\u29B0",  # Sets, Empty
    "\u2736",  # sextile
    "\u2591",  # Shade Characters
    "\u274D",  # SHADOWED WHITE CIRCLE
    "\u2618",  # SHAMROCK
    "\u2663",  # shamrock
    "\u25A0",  # Shapes, Geometric
    "\u11180",  # Sharada
    "\u00DF",  # SHARP S, LATIN SMALL LETTER
    "\u266F",  # SHARP SIGN, MUSIC
    "\u10450",  # Shavian
    "\u1F411",  # SHEEP
    "\u1F41A",  # SHELL, SPIRAL
    "\u20AA",  # SHEQEL SIGN, NEW
    "\u055B",  # shesht, armenian
    "\u26E8",  # SHIELD, BLACK CROSS ON
    "\u21E7",  # shift
    "\u000F",  # SHIFT IN
    "\u240F",  # SHIFT IN, SYMBOL FOR
    "\u000E",  # SHIFT OUT
    "\u240E",  # SHIFT OUT, SYMBOL FOR
    "\u26E9",  # SHINTO SHRINE
    "\u2617",  # SHOGI PIECE, BLACK
    "\u26CA",  # SHOGI PIECE, TURNED BLACK
    "\u26C9",  # SHOGI PIECE, TURNED WHITE
    "\u2616",  # SHOGI PIECE, WHITE
    "\u1F320",  # SHOOTING STAR
    "\u1F6D2",  # shopping cart
    "\u0306",  # short
    "\u0337",  # short slash overlay
    "\u0337",  # SHORT SOLIDUS OVERLAY, COMBINING
    "\u0335",  # SHORT STROKE OVERLAY, COMBINING
    "\u20D3",  # SHORT VERTICAL LINE OVERLAY, COMBINING
    "\u1BCA0",  # Shorthand Format Controls
    "\u237D",  # SHOULDERED OPEN BOX
    "\u2614",  # showery weather
    "\u29E2",  # SHUFFLE PRODUCT
    "\u00AD",  # shy
    "\u1807",  # SIBE SYLLABLE BOUNDARY MARKER, MONGOLIAN
    "\u11580",  # Siddham
    "\uFE45",  # Sidelining Emphasis Marks
    "\u1D1E",  # SIDEWAYS DIAERESIZED U, LATIN SMALL LETTER
    "\u1D13",  # SIDEWAYS O WITH STROKE, LATIN SMALL LETTER
    "\u1D11",  # SIDEWAYS O, LATIN SMALL LETTER
    "\u1D12",  # SIDEWAYS OPEN O, LATIN SMALL LETTER
    "\u1D1F",  # SIDEWAYS TURNED M, LATIN SMALL LETTER
    "\u1D1D",  # SIDEWAYS U, LATIN SMALL LETTER
    "\u03F2",  # SIGMA SYMBOL, GREEK LUNATE
    "\u03F2",  # sigma, greek small letter lunate
    "\u1F6A9",  # Signage and Other Symbols
    "\u2620",  # Signs, Warning
    "\u26A0",  # Signs, Warning
    "\u1D800",  # SignWriting, Sutton
    "\u1F948",  # silver medal
    "\u223C",  # similar to
    "\u223F",  # SINE WAVE
    "\u009A",  # SINGLE CHARACTER INTRODUCER
    "\u2019",  # single comma quotation mark
    "\u201A",  # single comma quotation mark, low
    "\u2039",  # single guillemet, left pointing
    "\u203A",  # single guillemet, right pointing
    "\u201B",  # SINGLE HIGH-REVERSED-9 QUOTATION MARK
    "\u2039",  # SINGLE LEFT-POINTING ANGLE QUOTATION MARK
    "\u201A",  # SINGLE LOW-9 QUOTATION MARK
    "\u1735",  # SINGLE PUNCTUATION, PHILIPPINE
    "\u2018",  # SINGLE QUOTATION MARK, LEFT
    "\u0027",  # single quotation mark, neutral
    "\u2019",  # SINGLE QUOTATION MARK, RIGHT
    "\u201B",  # single reversed comma quotation mark
    "\u203A",  # SINGLE RIGHT-POINTING ANGLE QUOTATION MARK
    "\u008F",  # SINGLE SHIFT THREE
    "\u008E",  # SINGLE SHIFT TWO
    "\u2018",  # single turned comma quotation mark
    "\u0D80",  # Sinhala
    "\u111E0",  # Sinhala Archaic Numbers
    "\u0D9A",  # Sinhala Consonants
    "\u0DCF",  # Sinhala Dependent Vowel Signs
    "\u0D85",  # Sinhala Independent Vowels
    "\u0DCA",  # SINHALA SIGN AL-LAKUNA
    "\u0DCA",  # sinhala virama
    "\uA78F",  # SINOLOGICAL DOT, LATIN LETTER
    "\u2E3D",  # SIX DOTS, VERTICAL
    "\u2006",  # SIX-PER-EM SPACE
    "\u266C",  # SIXTEENTH NOTES, BEAMED
    "\u2159",  # Sixths, Fractions
    "\u26F7",  # SKIER
    "\u1F480",  # SKULL
    "\u2620",  # SKULL AND CROSSBONES
    "\u1F571",  # SKULL AND CROSSBONES, BLACK
    "\u002F",  # slash
    "\u0338",  # slash overlay, long
    "\u20EB",  # slash overlay, long double
    "\u0337",  # slash overlay, short
    "\u2298",  # SLASH, CIRCLED DIVISION
    "\u2215",  # SLASH, DIVISION
    "\u2044",  # SLASH, FRACTION
    "\u00D8",  # slash, latin capital letter o
    "\u00F8",  # slash, latin small letter o
    "\u1F4A4",  # SLEEPING SYMBOL
    "\u2333",  # SLOPE
    "\u1D01",  # SMALL CAPITAL AE, LATIN LETTER
    "\u1D06",  # SMALL CAPITAL ETH, LATIN LETTER
    "\u1D23",  # SMALL CAPITAL EZH, LATIN LETTER
    "\u0276",  # SMALL CAPITAL OE, LATIN LETTER
    "\u1D15",  # SMALL CAPITAL OU, LATIN LETTER
    "\u2022",  # small circle, black
    "\u220D",  # SMALL CONTAINS AS MEMBER
    "\u220A",  # SMALL ELEMENT OF
    "\uFE50",  # Small Form Variants
    "\u213D",  # SMALL GAMMA, DOUBLE-STRUCK
    "\u02E0",  # SMALL GAMMA, MODIFIER LETTER
    "\u3095",  # SMALL KA, HIRAGANA LETTER
    "\u3096",  # SMALL KE, HIRAGANA LETTER
    "\u0561",  # Small Letters, Armenian
    "\u0363",  # Small Letters, Combining Latin
    "\u0430",  # Small Letters, Cyrillic
    "\u10D0",  # Small Letters, Georgian
    "\u03B1",  # Small Letters, Greek
    "\u0061",  # Small Letters, Latin
    "\u00E6",  # small ligature ae, latin
    "\u0133",  # SMALL LIGATURE IJ, LATIN
    "\u0153",  # SMALL LIGATURE OE, LATIN
    "\u213C",  # SMALL PI, DOUBLE-STRUCK
    "\u02E4",  # SMALL REVERSED GLOTTAL STOP, MODIFIER LETTER
    "\u25FE",  # SMALL SQUARE, BLACK MEDIUM
    "\u02DC",  # SMALL TILDE
    "\u26AC",  # SMALL WHITE CIRCLE, MEDIUM
    "\u2A33",  # SMASH PRODUCT
    "\u2323",  # SMILE
    "\u263B",  # SMILING FACE, BLACK
    "\u263A",  # SMILING FACE, WHITE
    "\u2368",  # smirk
    "\u0313",  # smooth breathing mark, greek
    "\u1F40C",  # SNAIL
    "\u1F40D",  # SNAKE
    "\u26C7",  # snow, heavy
    "\u26C4",  # snow, light
    "\u2744",  # Snowflake Dingbats
    "\u2721",  # Snowflakes
    "\u2603",  # SNOWMAN
    "\u26C4",  # SNOWMAN WITHOUT SNOW
    "\u26C7",  # SNOWMAN, BLACK
    "\u2603",  # snowy weather
    "\u26BD",  # SOCCER BALL
    "\u00AD",  # SOFT HYPHEN
    "\u1806",  # SOFT HYPHEN, MONGOLIAN TODO
    "\u2394",  # SOFTWARE-FUNCTION SYMBOL
    "\u2588",  # solid
    "\u002F",  # SOLIDUS
    "\u2044",  # solidus
    "\u2AFD",  # SOLIDUS OPERATOR, DOUBLE
    "\u29F5",  # SOLIDUS OPERATOR, REVERSE
    "\u0338",  # SOLIDUS OVERLAY, COMBINING LONG
    "\u20EB",  # SOLIDUS OVERLAY, COMBINING LONG DOUBLE
    "\u20E5",  # SOLIDUS OVERLAY, COMBINING REVERSE
    "\u0337",  # SOLIDUS OVERLAY, COMBINING SHORT
    "\u29F8",  # SOLIDUS, BIG
    "\u29F9",  # SOLIDUS, BIG REVERSE
    "\u005C",  # SOLIDUS, REVERSE
    "\u110D0",  # Sora Sompeng
    "\u1F50A",  # sound
    "\u2117",  # SOUND RECORDING COPYRIGHT
    "\u2139",  # SOURCE, INFORMATION
    "\u11A50",  # Soyombo
    "\u0020",  # SPACE
    "\u1680",  # SPACE MARK, OGHAM
    "\u2003",  # SPACE, EM
    "\u2002",  # SPACE, EN
    "\u2007",  # SPACE, FIGURE
    "\u2005",  # SPACE, FOUR-PER-EM
    "\u2423",  # space, graphic for
    "\u200A",  # SPACE, HAIR
    "\u210C",  # space, hilbert
    "\u3000",  # SPACE, IDEOGRAPHIC
    "\u303F",  # SPACE, IDEOGRAPHIC HALF FILL
    "\u237D",  # space, keyboard symbol for no break
    "\u205F",  # SPACE, MEDIUM MATHEMATICAL
    "\u2005",  # space, mid
    "\u202F",  # SPACE, NARROW NO-BREAK
    "\u00A0",  # SPACE, NO-BREAK
    "\u00A0",  # space, non-breaking
    "\u2008",  # SPACE, PUNCTUATION
    "\u2006",  # SPACE, SIX-PER-EM
    "\u2420",  # SPACE, SYMBOL FOR
    "\u2004",  # space, thick
    "\u2009",  # SPACE, THIN
    "\u2004",  # SPACE, THREE-PER-EM
    "\u200B",  # SPACE, ZERO WIDTH
    "\uFEFF",  # SPACE, ZERO WIDTH NO-BREAK
    "\u2000",  # Spaces
    "\u00B4",  # spacing acute accent
    "\u00B8",  # spacing cedilla
    "\u005E",  # spacing circumflex accent
    "\u02D8",  # Spacing Clones of Diacritics
    "\u00A8",  # spacing diaeresis
    "\u2017",  # spacing double underscore
    "\u0060",  # spacing grave accent
    "\u00AF",  # spacing macron
    "\u02B0",  # Spacing Modifier Letters
    "\u203E",  # spacing overscore
    "\u007E",  # spacing tilde
    "\u005F",  # spacing underscore
    "\u20A7",  # spanish currency
    "\u2747",  # SPARKLE
    "\u2748",  # SPARKLE, HEAVY
    "\u2728",  # SPARKLES
    "\u1F507",  # Speaker Symbols
    "\uFFF0",  # Specials
    "\uF900",  # Specials Area, Compatibility and
    "\u1F5E8",  # Speech and Thought Bubble Symbols
    "\u20B7",  # SPESMILO SIGN
    "\u2222",  # SPHERICAL ANGLE
    "\u1F336",  # spicy
    "\u1F3BD",  # Sport Symbols
    "\u1F3CF",  # Sport Symbols
    "\u033B",  # SQUARE BELOW, COMBINING
    "\u2045",  # SQUARE BRACKET WITH QUILL, LEFT
    "\u2046",  # SQUARE BRACKET WITH QUILL, RIGHT
    "\u005D",  # square bracket, closing
    "\u005B",  # SQUARE BRACKET, LEFT
    "\u301A",  # SQUARE BRACKET, LEFT WHITE
    "\u005B",  # square bracket, opening
    "\u005D",  # SQUARE BRACKET, RIGHT
    "\u301B",  # SQUARE BRACKET, RIGHT WHITE
    "\u2293",  # SQUARE CAP
    "\u2294",  # SQUARE CUP
    "\u23CD",  # SQUARE FOOT
    "\u228F",  # SQUARE IMAGE OF
    "\u2311",  # SQUARE LOZENGE
    "\u2290",  # SQUARE ORIGINAL OF
    "\u221A",  # SQUARE ROOT
    "\u29C4",  # Square Symbols
    "\u25FC",  # SQUARE, BLACK MEDIUM
    "\u25FE",  # SQUARE, BLACK MEDIUM SMALL
    "\u20DE",  # SQUARE, COMBINING ENCLOSING
    "\u2317",  # SQUARE, VIEWDATA
    "\u00B2",  # squared
    "\u22A1",  # SQUARED DOT OPERATOR
    "\u3300",  # Squared Japanese Katakana Words
    "\u3371",  # Squared Latin Abbreviations
    "\u1F131",  # Squared Latin Letters
    "\u229F",  # SQUARED MINUS
    "\u229E",  # SQUARED PLUS
    "\u22A0",  # SQUARED TIMES
    "\u25A0",  # Squares
    "\u2B1A",  # Squares
    "\u0285",  # SQUAT REVERSED ESH, LATIN SMALL LETTER
    "\u1F4AB",  # squeans
    "\u17C7",  # srak ah, khmer
    "\u17C6",  # srak am, khmer
    "\u0F84",  # srog med, tibetan
    "\u2613",  # st. andrew's cross
    "\u2695",  # STAFF OF AESCULAPIUS
    "\u269A",  # STAFF OF HERMES
    "\u002A",  # star
    "\u262A",  # STAR AND CRESCENT
    "\u2726",  # Star Dingbats
    "\u225B",  # STAR EQUALS
    "\u2721",  # STAR OF DAVID
    "\u22C6",  # STAR OPERATOR
    "\u066D",  # STAR, ARABIC FIVE POINTED
    "\u2605",  # STAR, BLACK
    "\u1F320",  # STAR, SHOOTING
    "\u2606",  # STAR, WHITE
    "\u273A",  # starburst
    "\u2721",  # Stars
    "\u1F7C0",  # Stars
    "\u0096",  # START OF GUARDED AREA
    "\u0001",  # START OF HEADING
    "\u2401",  # START OF HEADING, SYMBOL FOR
    "\u0086",  # START OF SELECTED AREA
    "\u0098",  # START OF STRING
    "\u0002",  # START OF TEXT
    "\u2402",  # START OF TEXT, SYMBOL FOR
    "\u22A8",  # statement is true
    "\u2E3C",  # STENOGRAPHIC FULL STOP
    "\u00A3",  # sterling, pound
    "\u2223",  # stile, apl
    "\u23F9",  # stop play
    "\u1F6D1",  # stop sign
    "\u23F1",  # STOPWATCH
    "\u03F5",  # straight epsilon
    "\u03F6",  # straight epsilon, reversed
    "\u23E4",  # STRAIGHTNESS
    "\u0301",  # stress mark
    "\u0297",  # STRETCHED C, LATIN LETTER
    "\u2263",  # STRICTLY EQUIVALENT TO
    "\u009C",  # STRING TERMINATOR
    "\u0090",  # STRING, DEVICE CONTROL
    "\u0098",  # STRING, START OF
    "\u20E6",  # STROKE OVERLAY, COMBINING DOUBLE VERTICAL
    "\u0336",  # STROKE OVERLAY, COMBINING LONG
    "\u0335",  # STROKE OVERLAY, COMBINING SHORT
    "\u00D8",  # STROKE, LATIN CAPITAL LETTER O WITH
    "\u00F8",  # STROKE, LATIN SMALL LETTER O WITH
    "\u31C0",  # Strokes, CJK
    "\u22B2",  # SUBGROUP OF, NORMAL
    "\u22EA",  # Subgroup Signs, Normal
    "\u22B3",  # SUBGROUP, CONTAINS AS NORMAL
    "\u0F90",  # Subjoined Consonants, Tibetan
    "\u2080",  # Subscript Digits
    "\u0345",  # subscript, greek iota
    "\u2080",  # Subscripts
    "\u2ABD",  # Subset and Superset Relations
    "\u2282",  # SUBSET OF
    "\u2284",  # SUBSET OF, NOT A
    "\u2282",  # Subset Signs, Superset and
    "\u22D0",  # SUBSET, DOUBLE
    "\u001A",  # SUBSTITUTE
    "\u2426",  # SUBSTITUTE FORM TWO, SYMBOL FOR
    "\u241A",  # SUBSTITUTE, SYMBOL FOR
    "\u0600",  # Subtending Marks, Arabic
    "\u2A41",  # subtraction, bag
    "\u2238",  # subtraction, saturating
    "\u227B",  # SUCCEEDS
    "\u22B1",  # SUCCEEDS UNDER RELATION
    "\u2ABC",  # SUCCEEDS, DOUBLE
    "\u220B",  # such that
    "\u2223",  # such that
    "\u2660",  # Suits, Playing Card
    "\u2A26",  # sum or positive difference
    "\u2295",  # sum, direct
    "\u2A24",  # sum, positive difference or
    "\u2211",  # summation sign
    "\u23B2",  # Summation Sign Parts
    "\u2140",  # SUMMATION, DOUBLE-STRUCK N-ARY
    "\u2211",  # SUMMATION, N-ARY
    "\u2A0A",  # Summations and Integrals
    "\u2609",  # SUN
    "\u26C5",  # SUN BEHIND CLOUD
    "\u2600",  # SUN WITH RAYS, BLACK
    "\u263C",  # SUN WITH RAYS, WHITE
    "\u1B80",  # Sundanese
    "\u1CC0",  # Sundanese Supplement
    "\u0C02",  # sunna, telugu
    "\u2070",  # Superscript Digits
    "\u1DD3",  # Superscript Letter Diacritics, Latin Medieval
    "\u0363",  # Superscript Letter Diacritics, Medieval
    "\u02B0",  # Superscript Modifier Letters, Latin
    "\u00B9",  # SUPERSCRIPT ONE
    "\u00B3",  # SUPERSCRIPT THREE
    "\u00B2",  # SUPERSCRIPT TWO
    "\u2070",  # SUPERSCRIPT ZERO
    "\u2070",  # Superscripts
    "\u2282",  # Superset and Subset Signs
    "\u2283",  # SUPERSET OF
    "\u2285",  # SUPERSET OF, NOT A
    "\u2ABD",  # Superset Relations, Subset and
    "\u22D1",  # SUPERSET, DOUBLE
    "\u2900",  # Supplemental Arrows-B
    "\u2A00",  # Supplemental Mathematical Operators
    "\u2E00",  # Supplemental Punctuation
    "\u20000",  # Supplementary CJK Ideographs Area
    "\u10000",  # Supplementary General Scripts Area
    "\uF0000",  # Supplementary Private Use Area-A
    "\u100000",  # Supplementary Private Use Area-B
    "\u222F",  # SURFACE INTEGRAL
    "\u2901",  # surjection, finite
    "\u2900",  # surjection, partial
    "\u21A0",  # surjection, total
    "\u2917",  # surjective injection
    "\u2918",  # surjective injection, finite
    "\u1D800",  # Sutton SignWriting
    "\u3021",  # Suzhou Numerals
    "\u0FD5",  # Svasti Signs
    "\u023F",  # SWASH TAIL, LATIN SMALL LETTER S WITH
    "\u0240",  # SWASH TAIL, LATIN SMALL LETTER Z WITH
    "\u1F4A6",  # SWEAT SYMBOL, SPLASHING
    "\u02DF",  # swedish grave accent
    "\u2694",  # SWORDS, CROSSED
    "\u2053",  # SWUNG DASH
    "\u10800",  # Syllabary, Cypriot
    "\u10000",  # Syllabary, Linear B
    "\u166E",  # SYLLABICS FULL STOP, CANADIAN
    "\u166D",  # Syllabics Punctuation, Canadian
    "\u1400",  # Syllabics, Unified Canadian Aboriginal
    "\u13A0",  # Syllables, Cherokee
    "\u326E",  # Syllables, Circled Korean Hangul
    "\u1200",  # Syllables, Ethiopic
    "\uAC00",  # Syllables, Korean Hangul
    "\u320E",  # Syllables, Parenthesized Korean Hangul
    "\uA000",  # Syllables, Yi
    "\uA800",  # Syloti Nagri
    "\uFFE0",  # Symbol Variants, Fullwidth
    "\uFFE8",  # Symbol Variants, Halfwidth
    "\u1F300",  # Symbols and Pictographs, Miscellaneous
    "\u1F900",  # Symbols and Pictographs, Supplemental
    "\u3000",  # Symbols and Punctuation, CJK
    "\u2000",  # Symbols Area
    "\u2E80",  # Symbols Area, CJK Phonetics and
    "\u33E0",  # Symbols for Days, Ideographic Telegraph
    "\u17F0",  # Symbols for Divination, Khmer Numeric
    "\u3358",  # Symbols for Hours, Ideographic Telegraph
    "\u32C0",  # Symbols for Months, Ideographic Telegraph
    "\u1F700",  # Symbols, Alchemical
    "\u2E0E",  # Symbols, Ancient Greek Textual
    "\u1F400",  # Symbols, Animal
    "\u1F980",  # Symbols, Animal
    "\u2336",  # Symbols, APL Functional
    "\u1EE00",  # Symbols, Arabic Mathematical Alphabetic
    "\u2000",  # Symbols, Area,
    "\u2E80",  # Symbols, Area, CJK Phonetics and
    "\u0020",  # Symbols, ASCII Punctuation and
    "\u263D",  # Symbols, Astrological
    "\u1F4F7",  # Symbols, Audio and Video
    "\u1B61",  # Symbols, Balinese Musical
    "\u1F5F3",  # Symbols, Ballot
    "\u2669",  # Symbols, Basic Musical
    "\u1F375",  # Symbols, Beverage
    "\u1D504",  # Symbols, Black-letter Mathematical
    "\u1D56C",  # Symbols, Bold Fraktur Mathematical
    "\u1D6A8",  # Symbols, Bold Greek Mathematical
    "\u1D71C",  # Symbols, Bold Italic Greek Mathematical
    "\u1D468",  # Symbols, Bold Italic Mathematical
    "\u1D400",  # Symbols, Bold Mathematical
    "\u1D4D0",  # Symbols, Bold Script Mathematical
    "\u29D1",  # Symbols, Bowtie
    "\u1F3D4",  # Symbols, Building and Map
    "\u1F3E0",  # Symbols, Building and Map
    "\u1D000",  # Symbols, Byzantine Musical
    "\u1F380",  # Symbols, Celebration
    "\u2654",  # Symbols, Chess
    "\u29B5",  # Symbols, Circle
    "\u1F550",  # Symbols, Clock Face
    "\u20D0",  # Symbols, Combining Diacritical Marks for
    "\u1F4A0",  # Symbols, Comic Style
    "\u1F4DD",  # Symbols, Communication
    "\u1F57B",  # Symbols, Communication
    "\u1F5A5",  # Symbols, Computer Component
    "\u1F5FB",  # Symbols, Cultural
    "\u20A0",  # Symbols, Currency
    "\u23BE",  # Symbols, Dentistry Notation
    "\u20D0",  # Symbols, Diacritical Marks for
    "\u2690",  # Symbols, Dictionary and Map
    "\u1D6A4",  # Symbols, Dotless Mathematical
    "\u2145",  # Symbols, Double-struck Italic Mathematical
    "\u1D538",  # Symbols, Double-struck Mathematical
    "\u232D",  # Symbols, Drafting
    "\u238D",  # Symbols, Electrotechnical
    "\u1F3A0",  # Symbols, Entertainment
    "\u29EE",  # Symbols, Error Bar
    "\u1F440",  # Symbols, Facial Parts
    "\u1F478",  # Symbols, Fairy Tale
    "\u1F354",  # Symbols, Food
    "\u1F950",  # Symbols, Food
    "\u1D504",  # Symbols, Fraktur Mathematical
    "\u1F345",  # Symbols, Fruit and Vegetable
    "\u1F3AE",  # Symbols, Game
    "\u26A2",  # Symbols, Gender
    "\u26AD",  # Symbols, Genealogical
    "\u1F645",  # Symbols, Gesture
    "\u1F30D",  # Symbols, Globe
    "\u1D6A8",  # Symbols, Greek Mathematical
    "\u1D1D0",  # Symbols, Gregorian Musical
    "\u1F446",  # Symbols, Hand
    "\u1F58E",  # Symbols, Hand
    "\u1F918",  # Symbols, Hand
    "\u1F493",  # Symbols, Heart
    "\u2135",  # Symbols, Hebrew Letterlike Mathematical
    "\u4DC0",  # Symbols, I Ching / Yijing Hexagram
    "\u268A",  # Symbols, I Ching / Yijing Monogram and Digram
    "\u2630",  # Symbols, I Ching / Yijing Trigram
    "\u1D6E2",  # Symbols, Italic Greek Mathematical
    "\u1D434",  # Symbols, Italic Mathematical
    "\u2616",  # Symbols, Japanese Chess
    "\u21E6",  # Symbols, Keyboard
    "\u2324",  # Symbols, Keyboard
    "\u2380",  # Symbols, Keyboard
    "\u2396",  # Symbols, Keyboard
    "\u19E0",  # Symbols, Khmer
    "\u1D1DE",  # Symbols, Kievan Musical
    "\u00A0",  # Symbols, Latin-1 Punctuation and
    "\u2100",  # Symbols, Letterlike
    "\u1F50F",  # Symbols, Lock
    "\u1F4E4",  # Symbols, Mail
    "\u27C0",  # Symbols, Mathematical
    "\u2980",  # Symbols, Mathematical
    "\u1D400",  # Symbols, Mathematical Alphanumeric
    "\u1D7CE",  # Symbols, Mathematical Digits
    "\u23D1",  # Symbols, Metrical
    "\u2600",  # Symbols, Miscellaneous
    "\u1F940",  # Symbols, Miscellaneous
    "\u1F4B0",  # Symbols, Money
    "\u1D670",  # Symbols, Monospace Mathematical
    "\u1F311",  # Symbols, Moon, Sun, and Star
    "\u1F3B5",  # Symbols, Music
    "\u1D100",  # Symbols, Musical
    "\u2E00",  # Symbols, New Testament Editorial
    "\u1F4BA",  # Symbols, Office
    "\u2E32",  # Symbols, Palaeotype Transliteration
    "\u1F484",  # Symbols, Personal Care
    "\u263F",  # Symbols, Planet
    "\u1F330",  # Symbols, Plant
    "\u2673",  # Symbols, Plastics Recycling
    "\u2660",  # Symbols, Playing Card
    "\u261A",  # Symbols, Pointing Hand
    "\u2B12",  # Symbols, Polygonal
    "\u1F464",  # Symbols, Portrait and Role
    "\u1F930",  # Symbols, Portrait and Role
    "\u23FB",  # Symbols, Power On/Off
    "\u2672",  # Symbols, Recycling
    "\u2626",  # Symbols, Religious and Political
    "\u1F6B9",  # Symbols, Restroom
    "\u1F481",  # Symbols, Role
    "\u10190",  # Symbols, Roman
    "\u1F48B",  # Symbols, Romance
    "\u10E60",  # Symbols, Rumi Numeral
    "\u1D756",  # Symbols, Sans-serif Bold Greek Mathematical
    "\u1D790",  # Symbols, Sans-serif Bold Italic Greek Mathematical
    "\u1D63C",  # Symbols, Sans-serif Bold Italic Mathematical
    "\u1D5D4",  # Symbols, Sans-serif Bold Mathematical
    "\u1D608",  # Symbols, Sans-serif Italic Mathematical
    "\u1D5A0",  # Symbols, Sans-serif Mathematical
    "\u1D49C",  # Symbols, Script Mathematical
    "\u1F6A9",  # Symbols, Signage and Other
    "\u1F507",  # Symbols, Speaker
    "\u1F5E8",  # Symbols, Speech and Thought Bubble
    "\u1F3BD",  # Symbols, Sport
    "\u1F3CF",  # Symbols, Sport
    "\u29C4",  # Symbols, Square
    "\u1D300",  # Symbols, Tai Xuan Jing
    "\u0BF3",  # Symbols, Tamil
    "\u0FC4",  # Symbols, Tibetan
    "\u1F525",  # Symbols, Tool
    "\u1F680",  # Symbols, Transport and Map
    "\u29CA",  # Symbols, Triangle
    "\u1F500",  # Symbols, User Interface
    "\u1F53A",  # Symbols, User Interface
    "\u1F5BF",  # Symbols, User Interface
    "\u1F520",  # Symbols, User Interface Input Status
    "\u1F6E5",  # Symbols, Vehicle
    "\u1F321",  # Symbols, Weather
    "\u2600",  # Symbols, Weather and Astrological
    "\u1F300",  # Symbols, Weather, Landscape, and Sky
    "\u4DC0",  # Symbols, Yijing / I Ching Hexagram
    "\u268A",  # Symbols, Yijing / I Ching Monogram and Digram
    "\u2630",  # Symbols, Yijing / I Ching Trigram
    "\u2648",  # Symbols, Zodiacal
    "\u27C0",  # Symbols-A, Miscellaneous Mathematical
    "\u2980",  # Symbols-B, Miscellaneous Mathematical
    "\u2206",  # symmetric difference
    "\u2238",  # symmetric difference
    "\u2296",  # symmetric difference
    "\u232F",  # SYMMETRY
    "\u0016",  # SYNCHRONOUS IDLE
    "\u2416",  # SYNCHRONOUS IDLE, SYMBOL FOR
    "\u0700",  # Syriac
    "\u2671",  # SYRIAC CROSS, EAST
    "\u2670",  # SYRIAC CROSS, WEST
    "\u0710",  # Syriac Letters
    "\u0700",  # Syriac Punctuation and Signs
    "\u070F",  # syriac sam
    "\u0860",  # Syriac Supplement
    "\u0165",  # T WITH CARON, LATIN SMALL LETTER
    "\u0163",  # T WITH CEDILLA, LATIN SMALL LETTER
    "\u1E71",  # T WITH CIRCUMFLEX BELOW, LATIN SMALL LETTER
    "\u021B",  # T WITH COMMA BELOW, LATIN SMALL LETTER
    "\u0236",  # T WITH CURL, LATIN SMALL LETTER
    "\u1E97",  # T WITH DIAERESIS, LATIN SMALL LETTER
    "\u023E",  # T WITH DIAGONAL STROKE, LATIN CAPITAL LETTER
    "\u1E6B",  # T WITH DOT ABOVE, LATIN SMALL LETTER
    "\u1E6D",  # T WITH DOT BELOW, LATIN SMALL LETTER
    "\u01AD",  # T WITH HOOK, LATIN SMALL LETTER
    "\u1E6F",  # T WITH LINE BELOW, LATIN SMALL LETTER
    "\u01AB",  # T WITH PALATAL HOOK, LATIN SMALL LETTER
    "\u01AE",  # T WITH RETROFLEX HOOK, LATIN CAPITAL LETTER
    "\u0288",  # T WITH RETROFLEX HOOK, LATIN SMALL LETTER
    "\u0167",  # T WITH STROKE, LATIN SMALL LETTER
    "\u036D",  # T, COMBINING LATIN SMALL LETTER
    "\u1D1B",  # T, LATIN LETTER SMALL CAPITAL
    "\u0287",  # T, LATIN SMALL LETTER TURNED
    "\u209C",  # T, LATIN SUBSCRIPT SMALL LETTER
    "\u1F996",  # T-REX
    "\u0009",  # tab
    "\u2B7E",  # TAB KEY, HORIZONTAL
    "\u2B7F",  # TAB KEY, VERTICAL
    "\u21B9",  # tab with shift tab
    "\u2B73",  # tab, down
    "\u2B70",  # tab, left
    "\u21E4",  # tab, leftward
    "\u2B72",  # tab, right
    "\u21E5",  # tab, rightward
    "\u2B71",  # tab, up
    "\u0088",  # TABULATION SET, CHARACTER
    "\u008A",  # TABULATION SET, LINE
    "\u0089",  # TABULATION WITH JUSTIFICATION, CHARACTER
    "\u0009",  # TABULATION, CHARACTER
    "\u0009",  # tabulation, horizontal
    "\u000B",  # TABULATION, LINE
    "\u2409",  # TABULATION, SYMBOL FOR HORIZONTAL
    "\u240B",  # TABULATION, SYMBOL FOR VERTICAL
    "\u000B",  # tabulation, vertical
    "\u031E",  # TACK BELOW, COMBINING DOWN
    "\u0318",  # TACK BELOW, COMBINING LEFT
    "\u0319",  # TACK BELOW, COMBINING RIGHT
    "\u031D",  # TACK BELOW, COMBINING UP
    "\u22A4",  # TACK, DOWN
    "\u22A3",  # TACK, LEFT
    "\u02D4",  # TACK, MODIFIER LETTER UP
    "\u22A2",  # TACK, RIGHT
    "\u22A5",  # TACK, UP
    "\u22A2",  # Tacks and Turnstiles
    "\u27D8",  # Tacks and Turnstiles
    "\u2ADE",  # Tacks and Turnstiles
    "\u1700",  # Tagalog
    "\u1714",  # TAGALOG SIGN VIRAMA
    "\u1760",  # Tagbanwa
    "\uE0000",  # Tags
    "\u1950",  # Tai Le
    "\u19D0",  # Tai Lue Digits, New
    "\u1980",  # Tai Lue, New
    "\u1A20",  # Tai Tham
    "\uAA80",  # Tai Viet
    "\u1D300",  # Tai Xuan Jing Symbols
    "\u297C",  # Tails, Fish
    "\u25C9",  # tainome japanese bullet
    "\u211E",  # TAKE, PRESCRIPTION
    "\u11680",  # Takri
    "\u0B80",  # Tamil
    "\u0BF8",  # TAMIL AS ABOVE SIGN
    "\u0B83",  # tamil aytham
    "\u0B95",  # Tamil Consonants
    "\u0BF7",  # TAMIL CREDIT SIGN
    "\u0BF3",  # TAMIL DAY SIGN
    "\u0BF6",  # TAMIL DEBIT SIGN
    "\u0BBE",  # Tamil Dependent Vowel Signs
    "\u0BE7",  # Tamil Digits
    "\u0BFA",  # tamil enn
    "\u0B85",  # Tamil Independent Vowels
    "\u0BF4",  # tamil maatham
    "\u0BF8",  # tamil merpadi
    "\u0BF4",  # TAMIL MONTH SIGN
    "\u0BF3",  # tamil naal
    "\u0BFA",  # TAMIL NUMBER SIGN
    "\u0BE7",  # Tamil Numbers
    "\u0BF6",  # tamil patru
    "\u0BF9",  # tamil rupai
    "\u0BF9",  # TAMIL RUPEE SIGN
    "\u0B83",  # TAMIL SIGN VISARGA
    "\u0BF3",  # Tamil Symbols
    "\u0BF7",  # tamil varavu
    "\u0BF5",  # tamil varudam
    "\u0BF5",  # TAMIL YEAR SIGN
    "\u17000",  # Tangut
    "\u18800",  # Tangut Components
    "\u2707",  # TAPE DRIVE
    "\u2332",  # TAPER, CONICAL
    "\u1F78B",  # TARGET, ROUND
    "\u1F796",  # TARGET, SQUARE
    "\u0640",  # TATWEEL, ARABIC
    "\u2649",  # TAURUS
    "\u29E6",  # tautological equivalent
    "\u22A8",  # tautology
    "\u2615",  # tea, cup of
    "\u2300",  # Technical, Miscellaneous
    "\u33E0",  # Telegraph Symbols for Days, Ideographic
    "\u3358",  # Telegraph Symbols for Hours, Ideographic
    "\u32C0",  # Telegraph Symbols for Months, Ideographic
    "\u1F57D",  # telephone handset
    "\u2706",  # TELEPHONE LOCATION SIGN
    "\u2315",  # TELEPHONE RECORDER
    "\u2121",  # TELEPHONE SIGN
    "\u260E",  # TELEPHONE, BLACK
    "\u260F",  # TELEPHONE, WHITE
    "\u0C00",  # Telugu
    "\u0C15",  # Telugu Consonants
    "\u0C3E",  # Telugu Dependent Vowel Signs
    "\u0C66",  # Telugu Digits
    "\u0C05",  # Telugu Independent Vowels
    "\u0C02",  # TELUGU SIGN ANUSVARA
    "\u0C02",  # telugu sunna
    "\u2031",  # TEN THOUSAND SIGN, PER
    "\u20B8",  # TENGE SIGN
    "\u2297",  # tensor product
    "\u26FA",  # TENT
    "\u23B7",  # Terminal Graphic Characters
    "\u2596",  # Terminal Graphic Characters
    "\uFFFB",  # TERMINATOR, INTERLINEAR ANNOTATION
    "\u009C",  # TERMINATOR, STRING
    "\u0003",  # TEXT, END OF
    "\u0002",  # TEXT, START OF
    "\u2403",  # TEXT, SYMBOL FOR END OF
    "\u2402",  # TEXT, SYMBOL FOR START OF
    "\u0780",  # Thaana
    "\u0E00",  # Thai
    "\u0E5A",  # THAI CHARACTER ANGKHANKHU
    "\u0E4F",  # THAI CHARACTER FONGMAN
    "\u0E5B",  # THAI CHARACTER KHOMUT
    "\u0E4D",  # THAI CHARACTER NIKHAHIT
    "\u0E4C",  # THAI CHARACTER THANTHAKHAT
    "\u0E4E",  # THAI CHARACTER YAMAKKAN
    "\u0E01",  # Thai Consonants
    "\u0E3F",  # THAI CURRENCY SYMBOL BAHT
    "\u0E50",  # Thai Digits
    "\u0E48",  # Thai Marks and Signs
    "\u0E30",  # Thai Vowels
    "\u0E4C",  # THANTHAKHAT, THAI CHARACTER
    "\u1F3AD",  # theater masks
    "\u2204",  # THERE DOES NOT EXIST
    "\u2203",  # THERE EXISTS
    "\u2234",  # THEREFORE
    "\u29E7",  # THERMODYNAMIC
    "\u1F321",  # THERMOMETER
    "\u03D1",  # THETA SYMBOL, GREEK
    "\u03D1",  # theta, script
    "\u2004",  # thick space
    "\u2009",  # THIN SPACE
    "\u20DB",  # third derivative
    "\u02C7",  # third tone, mandarin chinese
    "\u2153",  # Thirds, Fractions
    "\u00DE",  # THORN, LATIN CAPITAL LETTER
    "\u00FE",  # THORN, LATIN SMALL LETTER
    "\u066C",  # THOUSANDS SEPARATOR, ARABIC
    "\u2026",  # three dot leader
    "\u2056",  # THREE DOT PUNCTUATION
    "\u20DB",  # THREE DOTS ABOVE, COMBINING
    "\u00BE",  # THREE QUARTERS, VULGAR FRACTION
    "\u00B3",  # THREE, SUPERSCRIPT
    "\u2004",  # THREE-PER-EM SPACE
    "\u1F44E",  # THUMBS DOWN SIGN
    "\u1F44D",  # THUMBS UP SIGN
    "\u26A1",  # thunder
    "\u2608",  # THUNDERSTORM
    "\u26C8",  # thunderstorm
    "\u0F00",  # Tibetan
    "\u0F7E",  # tibetan anusvara
    "\u0F15",  # Tibetan Astrological Signs
    "\u0FC0",  # Tibetan Cantillation Signs
    "\u0F40",  # Tibetan Consonants
    "\u0F71",  # Tibetan Dependent Vowel Signs
    "\u0F20",  # Tibetan Digits
    "\u0F2A",  # Tibetan Digits Minus Half
    "\u0F01",  # Tibetan Head Marks
    "\u0FBE",  # TIBETAN KU RU KHA
    "\u0FBF",  # TIBETAN KU RU KHA BZHI MIG CAN
    "\u0F0C",  # TIBETAN MARK DELIMITER TSHEG BSTAR
    "\u0F84",  # TIBETAN MARK HALANTA
    "\u0F0B",  # TIBETAN MARK INTERSYLLABIC TSHEG
    "\u0F85",  # TIBETAN MARK PALUTA
    "\u0F08",  # Tibetan Marks and Signs
    "\u0F34",  # Tibetan Marks and Signs
    "\u0F82",  # Tibetan Marks and Signs
    "\u0FBE",  # Tibetan Marks and Signs
    "\u0F7E",  # TIBETAN SIGN RJES SU NGA RO
    "\u0F7F",  # TIBETAN SIGN RNAM BCAD
    "\u0F84",  # tibetan srog med
    "\u0F90",  # Tibetan Subjoined Consonants
    "\u0F00",  # TIBETAN SYLLABLE OM
    "\u0FC4",  # Tibetan Symbols
    "\u0F7F",  # tibetan visarga
    "\u0F7E",  # Tibetan Vocalic Modification
    "\u035C",  # tie below, ligature
    "\u2040",  # TIE, CHARACTER
    "\u0361",  # tie, ligature
    "\u2D30",  # Tifinagh
    "\u1F405",  # TIGER
    "\u1F42F",  # TIGER FACE
    "\u007E",  # TILDE
    "\u034A",  # TILDE ABOVE, COMBINING NOT
    "\u0330",  # TILDE BELOW, COMBINING
    "\u22CD",  # TILDE EQUALS, REVERSED
    "\u223B",  # Tilde Mathematical Operators
    "\u223C",  # TILDE OPERATOR
    "\u0334",  # TILDE OVERLAY, COMBINING
    "\u223C",  # tilde, apl
    "\u0303",  # TILDE, COMBINING
    "\u0360",  # TILDE, COMBINING DOUBLE
    "\u033E",  # TILDE, COMBINING VERTICAL
    "\u2242",  # TILDE, MINUS
    "\u2241",  # TILDE, NOT
    "\u223D",  # TILDE, REVERSED
    "\u02DC",  # TILDE, SMALL
    "\u007E",  # tilde, spacing
    "\u224B",  # TILDE, TRIPLE
    "\u1F030",  # Tiles, Domino
    "\u1F000",  # Tiles, Mahjong
    "\u23F2",  # TIMER CLOCK
    "\u2A09",  # TIMES OPERATOR, N-ARY
    "\u2297",  # TIMES, CIRCLED
    "\u22C7",  # TIMES, DIVISION
    "\u2062",  # TIMES, INVISIBLE
    "\u22A0",  # TIMES, SQUARED
    "\u29FE",  # TINY
    "\u0A70",  # TIPPI, GURMUKHI
    "\u11480",  # Tirhuta
    "\u204A",  # TIRONIAN SIGN ET
    "\uFE2E",  # TITLO LEFT HALF, COMBINING CYRILLIC
    "\u1806",  # TODO SOFT HYPHEN, MONGOLIAN
    "\u02E5",  # Tone Letters
    "\uA700",  # Tone Letters, Modifier
    "\u0341",  # TONE MARK, COMBINING ACUTE
    "\u0340",  # TONE MARK, COMBINING GRAVE
    "\uA700",  # Tone Marks for Chinese, Corner
    "\u1DCB",  # Tone Marks, Contour
    "\u302A",  # Tone Marks, Ideographic
    "\u02D9",  # tone, mandarin chinese fifth or neutral
    "\u02C9",  # tone, mandarin chinese first
    "\u02CB",  # tone, mandarin chinese fourth
    "\u02CA",  # tone, mandarin chinese second
    "\u02C7",  # tone, mandarin chinese third
    "\u1F445",  # TONGUE
    "\u0344",  # TONOS, COMBINING GREEK DIALYTIKA
    "\u0301",  # tonos, greek
    "\u1F525",  # Tool Symbols
    "\u22A4",  # top
    "\u2320",  # TOP HALF INTEGRAL
    "\u26E9",  # torii
    "\u3014",  # TORTOISE SHELL BRACKET, LEFT
    "\u3018",  # TORTOISE SHELL BRACKET, LEFT WHITE
    "\u3015",  # TORTOISE SHELL BRACKET, RIGHT
    "\u3019",  # TORTOISE SHELL BRACKET, RIGHT WHITE
    "\u2192",  # total function
    "\u21A3",  # total injection
    "\u2330",  # TOTAL RUNOUT
    "\u21A0",  # total surjection
    "\u2122",  # TRADE MARK SIGN
    "\u00AE",  # trade mark sign, registered
    "\u1F6A5",  # Traffic Signs
    "\u2135",  # transfinite cardinal, first
    "\u2138",  # transfinite cardinal, fourth
    "\u2136",  # transfinite cardinal, second
    "\u2137",  # transfinite cardinal, third
    "\u2131",  # transform, fourier
    "\u0017",  # TRANSMISSION BLOCK, END OF
    "\u2417",  # TRANSMISSION BLOCK, SYMBOL FOR END OF
    "\u2301",  # transmission symbol, end of
    "\u0004",  # TRANSMISSION, END OF
    "\u2404",  # TRANSMISSION, SYMBOL FOR END OF
    "\u0093",  # TRANSMIT STATE, SET
    "\u1F680",  # Transport and Map Symbols
    "\u23E2",  # TRAPEZIUM, WHITE
    "\u1F5D1",  # trashcan
    "\u29CA",  # Triangle Symbols
    "\u20E4",  # TRIANGLE, COMBINING ENCLOSING UPWARD POINTING
    "\u22BF",  # TRIANGLE, RIGHT
    "\u25B2",  # Triangles
    "\u23E9",  # Triangles, Double
    "\u2023",  # TRIANGULAR BULLET
    "\u02D0",  # TRIANGULAR COLON, MODIFIER LETTER
    "\u02D1",  # TRIANGULAR COLON, MODIFIER LETTER HALF
    "\u205D",  # TRICOLON
    "\u2630",  # Trigram Symbols, Yijing / I Ching
    "\u25B3",  # trine
    "\u222D",  # TRIPLE INTEGRAL
    "\u29FB",  # TRIPLE PLUS
    "\u2034",  # TRIPLE PRIME
    "\u2037",  # TRIPLE PRIME, REVERSED
    "\u224B",  # TRIPLE TILDE
    "\u20E8",  # TRIPLE UNDERDOT, COMBINING
    "\u26DF",  # TRUCK, BLACK
    "\u22A8",  # TRUE
    "\u0F0C",  # TSHEG BSTAR, TIBETAN MARK DELIMITER
    "\u0F0B",  # TSHEG, TIBETAN MARK INTERSYLLABIC
    "\u20AE",  # TUGRIK SIGN
    "\u1F473",  # TURBAN, MAN WITH
    "\u274B",  # turbofan
    "\u1F983",  # TURKEY
    "\u10C00",  # Turkic, Old
    "\u20BA",  # TURKISH LIRA SIGN
    "\u0250",  # TURNED A, LATIN SMALL LETTER
    "\u1D02",  # TURNED AE, LATIN SMALL LETTER
    "\u0252",  # TURNED ALPHA, LATIN SMALL LETTER
    "\u214B",  # TURNED AMPERSAND
    "\u2132",  # TURNED CAPITAL F
    "\u0312",  # TURNED COMMA ABOVE, COMBINING
    "\u201C",  # turned comma quotation mark, double
    "\u2018",  # turned comma quotation mark, single
    "\u02BB",  # TURNED COMMA, MODIFIER LETTER
    "\u018D",  # TURNED DELTA, LATIN SMALL LETTER
    "\u018E",  # turned e, latin capital letter
    "\u01DD",  # TURNED E, LATIN SMALL LETTER
    "\u2129",  # TURNED GREEK SMALL LETTER IOTA
    "\u02AE",  # TURNED H WITH FISHHOOK, LATIN SMALL LETTER
    "\u0265",  # TURNED H, LATIN SMALL LETTER
    "\u1D09",  # TURNED I, LATIN SMALL LETTER
    "\u029E",  # TURNED K, LATIN SMALL LETTER
    "\u0270",  # TURNED M WITH LONG LEG, LATIN SMALL LETTER
    "\u019C",  # TURNED M, LATIN CAPITAL LETTER
    "\u026F",  # TURNED M, LATIN SMALL LETTER
    "\u1D1F",  # TURNED M, LATIN SMALL LETTER SIDEWAYS
    "\u2319",  # TURNED NOT SIGN
    "\u1D14",  # TURNED OE, LATIN SMALL LETTER
    "\u1D08",  # TURNED OPEN E, LATIN SMALL LETTER
    "\u00BF",  # turned question mark
    "\u027B",  # TURNED R WITH HOOK, LATIN SMALL LETTER
    "\u027A",  # TURNED R WITH LONG LEG, LATIN SMALL LETTER
    "\u1D1A",  # TURNED R, LATIN LETTER SMALL CAPITAL
    "\u0279",  # TURNED R, LATIN SMALL LETTER
    "\u02B4",  # TURNED R, MODIFIER LETTER SMALL
    "\u2141",  # TURNED SANS-SERIF CAPITAL G
    "\u2142",  # TURNED SANS-SERIF CAPITAL L
    "\u2144",  # TURNED SANS-SERIF CAPITAL Y
    "\u214E",  # TURNED SMALL F
    "\u0287",  # TURNED T, LATIN SMALL LETTER
    "\u0245",  # TURNED V, LATIN CAPITAL LETTER
    "\u028C",  # TURNED V, LATIN SMALL LETTER
    "\u028D",  # TURNED W, LATIN SMALL LETTER
    "\u028E",  # TURNED Y, LATIN SMALL LETTER
    "\u22A2",  # turnstile
    "\u22A3",  # turnstile, reverse
    "\u22A2",  # Turnstiles, Tacks and
    "\u27D8",  # Turnstiles, Tacks and
    "\u2ADE",  # Turnstiles, Tacks and
    "\u1F422",  # TURTLE
    "\u2051",  # TWO ASTERISKS ALIGNED VERTICALLY
    "\u2025",  # TWO DOT LEADER
    "\u205A",  # TWO DOT PUNCTUATION
    "\u00B2",  # TWO, SUPERSCRIPT
    "\u2E3A",  # TWO-EM DASH
    "\u2E44",  # Typicon Punctuation
    "\u1F900",  # Typicon Symbols
    "\u1F996",  # tyrannosaurus rex
    "\u0244",  # U BAR, LATIN CAPITAL LETTER
    "\u0289",  # U BAR, LATIN SMALL LETTER
    "\u00DA",  # U WITH ACUTE, LATIN CAPITAL LETTER
    "\u00FA",  # U WITH ACUTE, LATIN SMALL LETTER
    "\u016D",  # U WITH BREVE, LATIN SMALL LETTER
    "\u01D4",  # U WITH CARON, LATIN SMALL LETTER
    "\u1E77",  # U WITH CIRCUMFLEX BELOW, LATIN SMALL LETTER
    "\u00DB",  # U WITH CIRCUMFLEX, LATIN CAPITAL LETTER
    "\u00FB",  # U WITH CIRCUMFLEX, LATIN SMALL LETTER
    "\u1E73",  # U WITH DIAERESIS BELOW, LATIN SMALL LETTER
    "\u00DC",  # U WITH DIAERESIS, LATIN CAPITAL LETTER
    "\u00FC",  # U WITH DIAERESIS, LATIN SMALL LETTER
    "\u1EE5",  # U WITH DOT BELOW, LATIN SMALL LETTER
    "\u0171",  # U WITH DOUBLE ACUTE, LATIN SMALL LETTER
    "\u0215",  # U WITH DOUBLE GRAVE, LATIN SMALL LETTER
    "\u00D9",  # U WITH GRAVE, LATIN CAPITAL LETTER
    "\u00F9",  # U WITH GRAVE, LATIN SMALL LETTER
    "\u1EE7",  # U WITH HOOK ABOVE, LATIN SMALL LETTER
    "\u01B0",  # U WITH HORN, LATIN SMALL LETTER
    "\u0217",  # U WITH INVERTED BREVE, LATIN SMALL LETTER
    "\u016B",  # U WITH MACRON, LATIN SMALL LETTER
    "\u0173",  # U WITH OGONEK, LATIN SMALL LETTER
    "\u016F",  # U WITH RING ABOVE, LATIN SMALL LETTER
    "\u1E75",  # U WITH TILDE BELOW, LATIN SMALL LETTER
    "\u0169",  # U WITH TILDE, LATIN SMALL LETTER
    "\u0367",  # U, COMBINING LATIN SMALL LETTER
    "\u1D1C",  # U, LATIN LETTER SMALL CAPITAL
    "\u1D1D",  # U, LATIN SMALL LETTER SIDEWAYS
    "\u1D1E",  # U, LATIN SMALL LETTER SIDEWAYS DIAERESIZED
    "\u1D64",  # U, LATIN SUBSCRIPT SMALL LETTER
    "\u10380",  # Ugaritic
    "\u20B4",  # ukrainian currency
    "\u2602",  # UMBRELLA
    "\u26F1",  # UMBRELLA ON GROUND
    "\u2614",  # UMBRELLA WITH RAIN DROPS
    "\u0308",  # umlaut
    "\u02ED",  # UNASPIRATED, MODIFIER LETTER
    "\u2BD1",  # UNCERTAINTY SIGN
    "\u20E8",  # UNDERDOT, COMBINING TRIPLE
    "\u0332",  # underline
    "\u2381",  # UNDERLINE SYMBOL, CONTINUOUS
    "\u2382",  # UNDERLINE SYMBOL, DISCONTINUOUS
    "\u0333",  # underline, double
    "\u0332",  # underscore
    "\u0333",  # underscore, double
    "\u005F",  # underscore, spacing
    "\u2017",  # underscore, spacing double
    "\uFE49",  # Underscores, Overscores and
    "\u203F",  # UNDERTIE
    "\u2054",  # UNDERTIE, INVERTED
    "\u238C",  # UNDO SYMBOL
    "\u1F984",  # UNICORN FACE
    "\u1400",  # Unified Canadian Aboriginal Syllabics
    "\u18B0",  # Unified Canadian Aboriginal Syllabics Extended
    "\u3400",  # Unified Ideographs Extension A, CJK
    "\u20000",  # Unified Ideographs Extension B, CJK
    "\u2A700",  # Unified Ideographs Extension C, CJK
    "\u2B740",  # Unified Ideographs Extension D, CJK
    "\u4E00",  # Unified Ideographs, CJK
    "\u222A",  # UNION
    "\u22D3",  # UNION, DOUBLE
    "\u22C3",  # union, generalized
    "\u228E",  # UNION, MULTISET
    "\u22C3",  # UNION, N-ARY
    "\u2A40",  # Unions, Intersections and
    "\u2129",  # unique element
    "\u001F",  # unit separator
    "\u241F",  # UNIT SEPARATOR, SYMBOL FOR
    "\u2200",  # universal quantifier
    "\u2672",  # UNIVERSAL RECYCLING SYMBOL
    "\u26AF",  # UNMARRIED PARTNERSHIP SYMBOL
    "\u2303",  # UP ARROWHEAD
    "\u261D",  # UP POINTING INDEX, WHITE
    "\u22F0",  # UP RIGHT DIAGONAL ELLIPSIS
    "\u22A5",  # UP TACK
    "\u031D",  # UP TACK BELOW, COMBINING
    "\u02D4",  # UP TACK, MODIFIER LETTER
    "\u2050",  # UP, CLOSE
    "\u219F",  # up, fast cursor
    "\u21DE",  # up, page
    "\u02EF",  # UPA Modifiers
    "\u2701",  # UPPER BLADE SCISSORS
    "\u2A1B",  # upper integral
    "\u2710",  # UPPER RIGHT PENCIL
    "\u0041",  # Uppercase Alphabet, Latin
    "\u01B1",  # UPSILON, LATIN CAPITAL LETTER
    "\u028A",  # UPSILON, LATIN SMALL LETTER
    "\u2308",  # upstile, apl
    "\u20E4",  # UPWARD POINTING TRIANGLE, COMBINING ENCLOSING
    "\u2191",  # UPWARDS ARROW
    "\u034E",  # UPWARDS ARROW BELOW, COMBINING
    "\u0350",  # Uralic Phonetic Alphabet, Diacritics for
    "\u2645",  # URANUS
    "\u26E2",  # uranus
    "\u203B",  # urdu paragraph separator
    "\u26B1",  # URN, FUNERAL
    "\u1F520",  # User Interface Input Status Symbols
    "\u1F500",  # User Interface Symbols
    "\u1F53A",  # User Interface Symbols
    "\u1F5BF",  # User Interface Symbols
    "\u030C",  # v above
    "\u1E7F",  # V WITH DOT BELOW, LATIN SMALL LETTER
    "\u01B2",  # V WITH HOOK, LATIN CAPITAL LETTER
    "\u028B",  # V WITH HOOK, LATIN SMALL LETTER
    "\u1E7D",  # V WITH TILDE, LATIN SMALL LETTER
    "\u036E",  # V, COMBINING LATIN SMALL LETTER
    "\u01B2",  # v, latin capital letter script
    "\u0245",  # V, LATIN CAPITAL LETTER TURNED
    "\u1D20",  # V, LATIN LETTER SMALL CAPITAL
    "\u028B",  # v, latin small letter script
    "\u028C",  # V, LATIN SMALL LETTER TURNED
    "\u1D65",  # V, LATIN SUBSCRIPT SMALL LETTER
    "\uA500",  # Vai
    "\u2665",  # valentine
    "\u22A8",  # valid
    "\u1F9DB",  # VAMPIRE
    "\u0BF7",  # varavu, tamil
    "\u0300",  # varia, greek
    "\u303E",  # VARIATION INDICATOR, IDEOGRAPHIC
    "\u180B",  # VARIATION SELECTOR ONE, MONGOLIAN FREE
    "\u180D",  # VARIATION SELECTOR THREE, MONGOLIAN FREE
    "\u180C",  # VARIATION SELECTOR TWO, MONGOLIAN FREE
    "\uFE00",  # VARIATION SELECTOR-1
    "\uFE00",  # Variation Selectors
    "\uE0100",  # Variation Selectors Supplement
    "\u223C",  # varies with
    "\u0BF5",  # varudam, tamil
    "\u20D1",  # vector
    "\u20D7",  # vector
    "\u2A2F",  # VECTOR OR CROSS PRODUCT
    "\u2295",  # vector pointing into page
    "\u2297",  # vector pointing into page
    "\u2299",  # vector pointing out of page
    "\u1CD0",  # Vedic Extensions
    "\u0CF1",  # Vedic Signs
    "\u0951",  # Vedic Tone Marks
    "\u2228",  # vee
    "\u1F345",  # Vegetable Symbols, Fruit and
    "\u1F6E5",  # Vehicle Symbols
    "\u1F680",  # Vehicles
    "\u2640",  # venus
    "\u2123",  # VERSICLE
    "\u007C",  # vertical bar
    "\u2980",  # VERTICAL BAR DELIMITER, TRIPLE
    "\u2758",  # Vertical Bar Dingbats
    "\u00A6",  # vertical bar, broken
    "\u2AFF",  # VERTICAL BAR, N-ARY WHITE
    "\u2AFE",  # VERTICAL BAR, WHITE
    "\u29D6",  # vertical bowtie
    "\u23B4",  # Vertical Brackets
    "\u22EE",  # VERTICAL ELLIPSIS
    "\uFE30",  # Vertical Form Variants
    "\u205E",  # VERTICAL FOUR DOTS
    "\u303B",  # VERTICAL IDEOGRAPHIC ITERATION MARK
    "\u007C",  # VERTICAL LINE
    "\u030D",  # VERTICAL LINE ABOVE, COMBINING
    "\u030E",  # VERTICAL LINE ABOVE, COMBINING DOUBLE
    "\u0329",  # VERTICAL LINE BELOW, COMBINING
    "\u0348",  # VERTICAL LINE BELOW, COMBINING DOUBLE
    "\u2AEE",  # Vertical Line Operators
    "\u20D2",  # VERTICAL LINE OVERLAY, COMBINING LONG
    "\u20D3",  # VERTICAL LINE OVERLAY, COMBINING SHORT
    "\u237F",  # VERTICAL LINE WITH MIDDLE DOT
    "\u2016",  # VERTICAL LINE, DOUBLE
    "\u02C8",  # VERTICAL LINE, MODIFIER LETTER
    "\u02CC",  # VERTICAL LINE, MODIFIER LETTER LOW
    "\u2223",  # Vertical Lines
    "\u20E6",  # VERTICAL STROKE OVERLAY, COMBINING DOUBLE
    "\u000B",  # vertical tabulation
    "\u240B",  # VERTICAL TABULATION, SYMBOL FOR
    "\u23DC",  # Vertical Text, Bracket Variants for
    "\u2047",  # Vertical Text, Double Punctuation for
    "\u033E",  # VERTICAL TILDE, COMBINING
    "\uFE10",  # Vertical Variants, Glyphs for
    "\uFE30",  # Vertical Variants, Glyphs for
    "\u0589",  # vertsaket, armenian
    "\u22D9",  # VERY MUCH GREATER-THAN
    "\u22D8",  # VERY MUCH LESS-THAN
    "\u270C",  # VICTORY HAND
    "\u1F4F7",  # Video Symbols, Audio and
    "\u20AB",  # vietnamese currency
    "\u2317",  # VIEWDATA SQUARE
    "\u0305",  # vinculum
    "\u0965",  # viram, devanagari deergh
    "\u0964",  # viram, devanagari purna
    "\u094D",  # VIRAMA, DEVANAGARI SIGN
    "\u0D4D",  # VIRAMA, MALAYALAM SIGN
    "\u1039",  # VIRAMA, MYANMAR SIGN
    "\u0DCA",  # virama, sinhala
    "\u1714",  # VIRAMA, TAGALOG SIGN
    "\u264D",  # VIRGO
    "\u002F",  # virgule
    "\u0903",  # VISARGA, DEVANAGARI SIGN
    "\u17C7",  # visarga, khmer
    "\u0B83",  # VISARGA, TAMIL SIGN
    "\u0F7F",  # visarga, tibetan
    "\u0295",  # VOICED FRICATIVE, LATIN LETTER PHARYNGEAL
    "\u309E",  # VOICED ITERATION MARK, HIRAGANA
    "\u30FE",  # VOICED ITERATION MARK, KATAKANA
    "\u02EC",  # VOICING, MODIFIER LETTER
    "\u1F30B",  # VOLCANO
    "\u26A1",  # VOLTAGE SIGN, HIGH
    "\u2230",  # VOLUME INTEGRAL
    "\u0306",  # vrachy, greek
    "\uFE00",  # vs1
    "\uE0100",  # vs17
    "\u000B",  # vt
    "\u00BD",  # VULGAR FRACTION ONE HALF
    "\u2151",  # VULGAR FRACTION ONE NINTH
    "\u00BC",  # VULGAR FRACTION ONE QUARTER
    "\u2150",  # VULGAR FRACTION ONE SEVENTH
    "\u2152",  # VULGAR FRACTION ONE TENTH
    "\u00BE",  # VULGAR FRACTION THREE QUARTERS
    "\u2153",  # Vulgar Fractions
    "\u1E83",  # W WITH ACUTE, LATIN SMALL LETTER
    "\u0175",  # W WITH CIRCUMFLEX, LATIN SMALL LETTER
    "\u1E85",  # W WITH DIAERESIS, LATIN SMALL LETTER
    "\u1E87",  # W WITH DOT ABOVE, LATIN SMALL LETTER
    "\u1E89",  # W WITH DOT BELOW, LATIN SMALL LETTER
    "\u1E81",  # W WITH GRAVE, LATIN SMALL LETTER
    "\u1E98",  # W WITH RING ABOVE, LATIN SMALL LETTER
    "\u1D21",  # W, LATIN LETTER SMALL CAPITAL
    "\u028D",  # W, LATIN SMALL LETTER TURNED
    "\u02B7",  # W, MODIFIER LETTER SMALL
    "\u0095",  # WAITING, MESSAGE
    "\u118A0",  # Warang Citi
    "\u26A0",  # WARNING SIGN
    "\u2620",  # Warning Signs
    "\u1F5D1",  # WASTEBASKET
    "\u231A",  # WATCH
    "\u1F403",  # WATER BUFFALO
    "\u301C",  # WAVE DASH
    "\u223F",  # WAVE, SINE
    "\u1F30A",  # WAVE, WATER
    "\u1F44B",  # WAVING HAND SIGN
    "\u3030",  # WAVY DASH
    "\u2307",  # WAVY LINE
    "\uFE4F",  # WAVY LOW LINE
    "\uFE4B",  # WAVY OVERLINE
    "\uFE4C",  # WAVY OVERLINE, DOUBLE
    "\u2600",  # Weather and Astrological Symbols
    "\u1F321",  # Weather Symbols
    "\u2600",  # weather, clear
    "\u2601",  # weather, cloudy
    "\u1F300",  # Weather, Landscape, and Sky Symbols
    "\u2602",  # weather, rainy
    "\u2614",  # weather, showery
    "\u2603",  # weather, snowy
    "\u028C",  # wedge
    "\u2227",  # wedge
    "\u2118",  # weierstrass elliptic function
    "\u2670",  # WEST SYRIAC CROSS
    "\u1F40B",  # WHALE
    "\u1F433",  # WHALE, SPOUTING
    "\u2638",  # WHEEL OF DHARMA
    "\u267F",  # WHEELCHAIR SYMBOL
    "\u25E6",  # WHITE BULLET
    "\u25CB",  # WHITE CIRCLE
    "\u26AA",  # WHITE CIRCLE, MEDIUM
    "\u26AC",  # WHITE CIRCLE, MEDIUM SMALL
    "\u274D",  # WHITE CIRCLE, SHADOWED
    "\u300E",  # WHITE CORNER BRACKET, LEFT
    "\u300F",  # WHITE CORNER BRACKET, RIGHT
    "\u2983",  # WHITE CURLY BRACKET, LEFT
    "\u2984",  # WHITE CURLY BRACKET, RIGHT
    "\u261F",  # WHITE DOWN POINTING INDEX
    "\u2690",  # WHITE FLAG
    "\u29D6",  # white framus
    "\u2639",  # WHITE FROWNING FACE
    "\u261C",  # WHITE LEFT POINTING INDEX
    "\u3016",  # WHITE LENTICULAR BRACKET, LEFT
    "\u3017",  # WHITE LENTICULAR BRACKET, RIGHT
    "\u2711",  # WHITE NIB
    "\u24EB",  # White on Black Circled Numbers
    "\u2985",  # WHITE PARENTHESIS, LEFT
    "\u2986",  # WHITE PARENTHESIS, RIGHT
    "\u261E",  # WHITE RIGHT POINTING INDEX
    "\u2704",  # WHITE SCISSORS
    "\uFE46",  # WHITE SESAME DOT
    "\u2616",  # WHITE SHOGI PIECE
    "\u263A",  # WHITE SMILING FACE
    "\u301A",  # WHITE SQUARE BRACKET, LEFT
    "\u301B",  # WHITE SQUARE BRACKET, RIGHT
    "\u2606",  # WHITE STAR
    "\u263C",  # WHITE SUN WITH RAYS
    "\u260F",  # WHITE TELEPHONE
    "\u3018",  # WHITE TORTOISE SHELL BRACKET, LEFT
    "\u3019",  # WHITE TORTOISE SHELL BRACKET, RIGHT
    "\u23E2",  # WHITE TRAPEZIUM
    "\u261D",  # WHITE UP POINTING INDEX
    "\u2AFE",  # WHITE VERTICAL BAR
    "\u2AFF",  # WHITE VERTICAL BAR, N-ARY
    "\u20E9",  # WIDE BRIDGE ABOVE, COMBINING
    "\u29D8",  # Wiggly Fences
    "\u2E3E",  # WIGGLY VERTICAL LINE
    "\u2060",  # wj
    "\u1F43A",  # WOLF FACE
    "\u1F469",  # WOMAN
    "\u1F46F",  # WOMAN WITH BUNNY EARS
    "\u1F475",  # WOMAN, OLDER
    "\u1F46D",  # WOMEN HOLDING HANDS, TWO
    "\u20A9",  # WON SIGN
    "\u2060",  # WORD JOINER
    "\u2E31",  # WORD SEPARATOR MIDDLE DOT
    "\u10100",  # Word Separators, Aegean
    "\u3300",  # Words, Squared Katakana
    "\u1361",  # WORDSPACE, ETHIOPIC
    "\u2692",  # working day symbol
    "\u2240",  # WREATH PRODUCT
    "\u270D",  # WRITING HAND
    "\u1F58E",  # WRITING HAND, LEFT
    "\u01F7",  # WYNN, LATIN CAPITAL LETTER
    "\u01BF",  # WYNN, LATIN LETTER
    "\u033D",  # X ABOVE, COMBINING
    "\u0353",  # X BELOW, COMBINING
    "\u2327",  # X IN A RECTANGLE BOX
    "\u1E8D",  # X WITH DIAERESIS, LATIN SMALL LETTER
    "\u1E8B",  # X WITH DOT ABOVE, LATIN SMALL LETTER
    "\u2717",  # X, BALLOT
    "\u2612",  # X, BALLOT BOX WITH
    "\u1F5D9",  # X, CANCELLATION
    "\u036F",  # X, COMBINING LATIN SMALL LETTER
    "\u2718",  # X, HEAVY BALLOT
    "\u2716",  # X, HEAVY MULTIPLICATION
    "\u02E3",  # X, MODIFIER LETTER SMALL
    "\u2715",  # X, MULTIPLICATION
    "\u22BB",  # XOR
    "\u00DD",  # Y WITH ACUTE, LATIN CAPITAL LETTER
    "\u00FD",  # Y WITH ACUTE, LATIN SMALL LETTER
    "\u0177",  # Y WITH CIRCUMFLEX, LATIN SMALL LETTER
    "\u0178",  # Y WITH DIAERESIS, LATIN CAPITAL LETTER
    "\u00FF",  # Y WITH DIAERESIS, LATIN SMALL LETTER
    "\u1E8F",  # Y WITH DOT ABOVE, LATIN SMALL LETTER
    "\u1EF5",  # Y WITH DOT BELOW, LATIN SMALL LETTER
    "\u1EF3",  # Y WITH GRAVE, LATIN SMALL LETTER
    "\u1EF7",  # Y WITH HOOK ABOVE, LATIN SMALL LETTER
    "\u01B4",  # Y WITH HOOK, LATIN SMALL LETTER
    "\u0233",  # Y WITH MACRON, LATIN SMALL LETTER
    "\u1E99",  # Y WITH RING ABOVE, LATIN SMALL LETTER
    "\u024E",  # Y WITH STROKE, LATIN CAPITAL LETTER
    "\u024F",  # Y WITH STROKE, LATIN SMALL LETTER
    "\u1EF9",  # Y WITH TILDE, LATIN SMALL LETTER
    "\u028F",  # Y, LATIN LETTER SMALL CAPITAL
    "\u028E",  # Y, LATIN SMALL LETTER TURNED
    "\u02B8",  # Y, MODIFIER LETTER SMALL
    "\u2144",  # Y, TURNED SANS-SERIF CAPITAL
    "\u0E4E",  # YAMAKKAN, THAI CHARACTER
    "\u0BF5",  # YEAR SIGN, TAMIL
    "\u00A5",  # YEN SIGN
    "\u058A",  # yentamna, armenian
    "\uA490",  # Yi Radicals
    "\uA000",  # Yi Syllables
    "\u05F0",  # Yiddish Digraphs
    "\u26DB",  # yield
    "\u22A3",  # yield, does not
    "\u22A2",  # yields
    "\u4DC0",  # Yijing / I Ching Hexagram Symbols
    "\u268A",  # Yijing / I Ching Monogram and Digram Symbols
    "\u2630",  # Yijing / I Ching Trigram Symbols
    "\u262F",  # YIN YANG
    "\u021D",  # YOGH, LATIN SMALL LETTER
    "\u0345",  # YPOGEGRAMMENI, COMBINING GREEK
    "\u01A6",  # YR, LATIN LETTER
    "\u00A5",  # yuan sign
    "\u01B6",  # z bar, latin small letter
    "\u22FF",  # Z NOTATION BAG MEMBERSHIP
    "\u2981",  # Z NOTATION SPOT
    "\u2982",  # Z NOTATION TYPE COLON
    "\u017A",  # Z WITH ACUTE, LATIN SMALL LETTER
    "\u017E",  # Z WITH CARON, LATIN SMALL LETTER
    "\u1E91",  # Z WITH CIRCUMFLEX, LATIN SMALL LETTER
    "\u0291",  # Z WITH CURL, LATIN SMALL LETTER
    "\u017C",  # Z WITH DOT ABOVE, LATIN SMALL LETTER
    "\u1E93",  # Z WITH DOT BELOW, LATIN SMALL LETTER
    "\u0225",  # Z WITH HOOK, LATIN SMALL LETTER
    "\u1E95",  # Z WITH LINE BELOW, LATIN SMALL LETTER
    "\u0290",  # Z WITH RETROFLEX HOOK, LATIN SMALL LETTER
    "\u01B6",  # Z WITH STROKE, LATIN SMALL LETTER
    "\u0240",  # Z WITH SWASH TAIL, LATIN SMALL LETTER
    "\u2128",  # Z, BLACK-LETTER CAPITAL
    "\u2124",  # Z, DOUBLE-STRUCK CAPITAL
    "\u1D22",  # Z, LATIN LETTER SMALL CAPITAL
    "\u11A00",  # Zanabazar Square
    "\u2700",  # Zapf Dingbats Series 100, ITC
    "\u200D",  # ZERO WIDTH JOINER
    "\uFEFF",  # ZERO WIDTH NO-BREAK SPACE
    "\u200C",  # ZERO WIDTH NON-JOINER
    "\u200B",  # ZERO WIDTH SPACE
    "\u24EA",  # ZERO, CIRCLED DIGIT
    "\u3007",  # ZERO, IDEOGRAPHIC NUMBER
    "\u2070",  # ZERO, SUPERSCRIPT
    "\u035B",  # ZIGZAG ABOVE, COMBINING
    "\u1F400",  # Zodiac, Signs of the Asian
    "\u2648",  # Zodiacal Symbols
    "\u1F9DF",  # ZOMBIE
    "\u200D",  # zwj
    "\uFEFF",  # zwnbsp
    "\u200C",  # zwnj
    "\u200B",  # zwsp
    ]
    test_data.each do |string|
      assert @validator.valid_encoding?(string), "U10_Index: #{string}"
      assert string.force_encoding("UTF-8").valid_encoding?, "U10_Index: #{string}" if @vercheck
    end
  end

end

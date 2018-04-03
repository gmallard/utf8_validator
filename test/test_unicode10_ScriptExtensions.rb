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
class TestUnicode10ScriptExtensions < Test::Unit::TestCase
  #
  def setup
    @validator = UTF8::Validator.new
    @vercheck = ((RUBY_VERSION =~ /1.9/) or (RUBY_VERSION =~ /2./)) ? true : false
  end

  #
  def teardown
    @validator = nil
  end

  def test_unicode10_ScriptExtensions
    test_data = [
        "\u1CF7",  # ; Beng # Mc       VEDIC SIGN ATIKRAMA
        "\u1CD1",  # ; Deva # Mn       VEDIC TONE SHARA
        "\u1cd4","\u1cd5","\u1cd6",  # ; Deva # Mn   [3] VEDIC SIGN YAJURVEDIC MIDLINE SVARITA..VEDIC TONE YAJURVEDIC INDEPENDENT SVARITA
        "\u1CD8",  # ; Deva # Mn       VEDIC TONE CANDRA BELOW
        "\u1CDB",  # ; Deva # Mn       VEDIC TONE TRIPLE SVARITA
        "\u1cde","\u1cdf",  # ; Deva # Mn   [2] VEDIC TONE TWO DOTS BELOW..VEDIC TONE THREE DOTS BELOW
        "\u1CE1",  # ; Deva # Mc       VEDIC TONE ATHARVAVEDIC INDEPENDENT SVARITA
        "\u1ce2","\u1ce3","\u1ce4","\u1ce5","\u1ce6","\u1ce7","\u1ce8",  # ; Deva # Mn   [7] VEDIC SIGN VISARGA SVARITA..VEDIC SIGN VISARGA ANUDATTA WITH TAIL
        "\u1ce9","\u1cea","\u1ceb","\u1cec",  # ; Deva # Lo   [4] VEDIC SIGN ANUSVARA ANTARGOMUKHA..VEDIC SIGN ANUSVARA VAMAGOMUKHA WITH TAIL
        "\u1CED",  # ; Deva # Mn       VEDIC SIGN TIRYAK
        "\u1cee","\u1cef","\u1cf0","\u1cf1",  # ; Deva # Lo   [4] VEDIC SIGN HEXIFORM LONG ANUSVARA..VEDIC SIGN ANUSVARA UBHAYATO MUKHA
        "\u1CF6",  # ; Deva # Lo       VEDIC SIGN UPADHMANIYA
        "\u1bca0","\u1bca1","\u1bca2","\u1bca3",  # ; Dupl # Cf   [4] SHORTHAND FORMAT LETTER OVERLAP..SHORTHAND FORMAT UP STEP
        "\u0342",  # ; Grek # Mn       COMBINING GREEK PERISPOMENI
        "\u0345",  # ; Grek # Mn       COMBINING GREEK YPOGEGRAMMENI
        "\u1dc0","\u1dc1",  # ; Grek # Mn   [2] COMBINING DOTTED GRAVE ACCENT..COMBINING DOTTED ACUTE ACCENT
        "\u3006",  # ; Hani # Lo       IDEOGRAPHIC CLOSING MARK
        "\u303e","\u303f",  # ; Hani # So   [2] IDEOGRAPHIC VARIATION INDICATOR..IDEOGRAPHIC HALF FILL SPACE
        "\u3190","\u3191",  # ; Hani # So   [2] IDEOGRAPHIC ANNOTATION LINKING MARK..IDEOGRAPHIC ANNOTATION REVERSE MARK
        "\u3192","\u3193","\u3194","\u3195",  # ; Hani # No   [4] IDEOGRAPHIC ANNOTATION ONE MARK..IDEOGRAPHIC ANNOTATION FOUR MARK
        "\u3196","\u3197","\u3198","\u3199","\u319a","\u319b","\u319c","\u319d","\u319e","\u319f",  # ; Hani # So  [10] IDEOGRAPHIC ANNOTATION TOP MARK..IDEOGRAPHIC ANNOTATION MAN MARK
        "\u31c0","\u31c1","\u31c2","\u31c3","\u31c4","\u31c5","\u31c6","\u31c7","\u31c8","\u31c9","\u31ca","\u31cb","\u31cc","\u31cd","\u31ce","\u31cf","\u31d0","\u31d1","\u31d2","\u31d3","\u31d4","\u31d5","\u31d6","\u31d7","\u31d8","\u31d9","\u31da","\u31db","\u31dc","\u31dd","\u31de","\u31df","\u31e0","\u31e1","\u31e2","\u31e3",  # ; Hani # So  [36] CJK STROKE T..CJK STROKE Q
        "\u3220","\u3221","\u3222","\u3223","\u3224","\u3225","\u3226","\u3227","\u3228","\u3229",  # ; Hani # No  [10] PARENTHESIZED IDEOGRAPH ONE..PARENTHESIZED IDEOGRAPH TEN
        "\u322a","\u322b","\u322c","\u322d","\u322e","\u322f","\u3230","\u3231","\u3232","\u3233","\u3234","\u3235","\u3236","\u3237","\u3238","\u3239","\u323a","\u323b","\u323c","\u323d","\u323e","\u323f","\u3240","\u3241","\u3242","\u3243","\u3244","\u3245","\u3246","\u3247",  # ; Hani # So  [30] PARENTHESIZED IDEOGRAPH MOON..CIRCLED IDEOGRAPH KOTO
        "\u3280","\u3281","\u3282","\u3283","\u3284","\u3285","\u3286","\u3287","\u3288","\u3289",  # ; Hani # No  [10] CIRCLED IDEOGRAPH ONE..CIRCLED IDEOGRAPH TEN
        "\u328a","\u328b","\u328c","\u328d","\u328e","\u328f","\u3290","\u3291","\u3292","\u3293","\u3294","\u3295","\u3296","\u3297","\u3298","\u3299","\u329a","\u329b","\u329c","\u329d","\u329e","\u329f","\u32a0","\u32a1","\u32a2","\u32a3","\u32a4","\u32a5","\u32a6","\u32a7","\u32a8","\u32a9","\u32aa","\u32ab","\u32ac","\u32ad","\u32ae","\u32af","\u32b0",  # ; Hani # So  [39] CIRCLED IDEOGRAPH MOON..CIRCLED IDEOGRAPH NIGHT
        "\u32c0","\u32c1","\u32c2","\u32c3","\u32c4","\u32c5","\u32c6","\u32c7","\u32c8","\u32c9","\u32ca","\u32cb",  # ; Hani # So  [12] IDEOGRAPHIC TELEGRAPH SYMBOL FOR JANUARY..IDEOGRAPHIC TELEGRAPH SYMBOL FOR DECEMBER
        "\u3358","\u3359","\u335a","\u335b","\u335c","\u335d","\u335e","\u335f","\u3360","\u3361","\u3362","\u3363","\u3364","\u3365","\u3366","\u3367","\u3368","\u3369","\u336a","\u336b","\u336c","\u336d","\u336e","\u336f","\u3370",  # ; Hani # So  [25] IDEOGRAPHIC TELEGRAPH SYMBOL FOR HOUR ZERO..IDEOGRAPHIC TELEGRAPH SYMBOL FOR HOUR TWENTY-FOUR
        "\u337b","\u337c","\u337d","\u337e","\u337f",  # ; Hani # So   [5] SQUARE ERA NAME HEISEI..SQUARE CORPORATION
        "\u33e0","\u33e1","\u33e2","\u33e3","\u33e4","\u33e5","\u33e6","\u33e7","\u33e8","\u33e9","\u33ea","\u33eb","\u33ec","\u33ed","\u33ee","\u33ef","\u33f0","\u33f1","\u33f2","\u33f3","\u33f4","\u33f5","\u33f6","\u33f7","\u33f8","\u33f9","\u33fa","\u33fb","\u33fc","\u33fd","\u33fe",  # ; Hani # So  [31] IDEOGRAPHIC TELEGRAPH SYMBOL FOR DAY ONE..IDEOGRAPHIC TELEGRAPH SYMBOL FOR DAY THIRTY-ONE
        "\u1d360","\u1d361","\u1d362","\u1d363","\u1d364","\u1d365","\u1d366","\u1d367","\u1d368","\u1d369","\u1d36a","\u1d36b","\u1d36c","\u1d36d","\u1d36e","\u1d36f","\u1d370","\u1d371",  # ; Hani # No  [18] COUNTING ROD UNIT DIGIT ONE..COUNTING ROD TENS DIGIT NINE
        "\u1f250","\u1f251",  # ; Hani # So   [2] CIRCLED IDEOGRAPH ADVANTAGE..CIRCLED IDEOGRAPH ACCEPT
        "\u0363","\u0364","\u0365","\u0366","\u0367","\u0368","\u0369","\u036a","\u036b","\u036c","\u036d","\u036e","\u036f",  # ; Latn # Mn  [13] COMBINING LATIN SMALL LETTER A..COMBINING LATIN SMALL LETTER X
        "\u102E0",  # ; Arab Copt # Mn       COPTIC EPACT THOUSANDS MARK
        "\u102e1","\u102e2","\u102e3","\u102e4","\u102e5","\u102e6","\u102e7","\u102e8","\u102e9","\u102ea","\u102eb","\u102ec","\u102ed","\u102ee","\u102ef","\u102f0","\u102f1","\u102f2","\u102f3","\u102f4","\u102f5","\u102f6","\u102f7","\u102f8","\u102f9","\u102fa","\u102fb",  # ; Arab Copt # No  [27] COPTIC EPACT DIGIT ONE..COPTIC EPACT NUMBER NINE HUNDRED
        "\u064b","\u064c","\u064d","\u064e","\u064f","\u0650","\u0651","\u0652","\u0653","\u0654","\u0655",  # ; Arab Syrc # Mn  [11] ARABIC FATHATAN..ARABIC HAMZA BELOW
        "\u0670",  # ; Arab Syrc # Mn       ARABIC LETTER SUPERSCRIPT ALEF
        "\u0660","\u0661","\u0662","\u0663","\u0664","\u0665","\u0666","\u0667","\u0668","\u0669",  # ; Arab Thaa # Nd  [10] ARABIC-INDIC DIGIT ZERO..ARABIC-INDIC DIGIT NINE
        "\uFDF2",  # ; Arab Thaa # Lo       ARABIC LIGATURE ALLAH ISOLATED FORM
        "\uFDFD",  # ; Arab Thaa # So       ARABIC LIGATURE BISMILLAH AR-RAHMAN AR-RAHEEM
        "\u0589",  # ; Armn Geor # Po       ARMENIAN FULL STOP
        "\uA8F1",  # ; Beng Deva # Mn       COMBINING DEVANAGARI SIGN AVAGRAHA
        "\u302a","\u302b","\u302c","\u302d",  # ; Bopo Hani # Mn   [4] IDEOGRAPHIC LEVEL TONE MARK..IDEOGRAPHIC ENTERING TONE MARK
        "\uA9CF",  # ; Bugi Java # Lm       JAVANESE PANGRANGKEP
        "\u10100","\u10101","\u10102",  # ; Cprt Linb # Po   [3] AEGEAN WORD SEPARATOR LINE..AEGEAN CHECK MARK
        "\u10137","\u10138","\u10139","\u1013a","\u1013b","\u1013c","\u1013d","\u1013e","\u1013f",  # ; Cprt Linb # So   [9] AEGEAN WEIGHT BASE UNIT..AEGEAN MEASURE THIRD SUBUNIT
        "\u0484",  # ; Cyrl Glag # Mn       COMBINING CYRILLIC PALATALIZATION
        "\u0487",  # ; Cyrl Glag # Mn       COMBINING CYRILLIC POKRYTIE
        "\u2E43",  # ; Cyrl Glag # Po       DASH WITH LEFT UPTURN
        "\uA66F",  # ; Cyrl Glag # Mn       COMBINING CYRILLIC VZMET
        "\u0485","\u0486",  # ; Cyrl Latn # Mn   [2] COMBINING CYRILLIC DASIA PNEUMATA..COMBINING CYRILLIC PSILI PNEUMATA
        "\u0483",  # ; Cyrl Perm # Mn       COMBINING CYRILLIC TITLO
        "\u1CD0",  # ; Deva Gran # Mn       VEDIC TONE KARSHANA
        "\u1CD2",  # ; Deva Gran # Mn       VEDIC TONE PRENKHA
        "\u1CD3",  # ; Deva Gran # Po       VEDIC SIGN NIHSHVASA
        "\u1cf2","\u1cf3",  # ; Deva Gran # Mc   [2] VEDIC SIGN ARDHAVISARGA..VEDIC SIGN ROTATED ARDHAVISARGA
        "\u1CF4",  # ; Deva Gran # Mn       VEDIC TONE CANDRA ABOVE
        "\u1cf8","\u1cf9",  # ; Deva Gran # Mn   [2] VEDIC TONE RING ABOVE..VEDIC TONE DOUBLE RING ABOVE
        "\u1CF5",  # ; Deva Knda # Lo       VEDIC SIGN JIHVAMULIYA
        "\u1CD7",  # ; Deva Shrd # Mn       VEDIC TONE YAJURVEDIC KATHAKA INDEPENDENT SVARITA
        "\u1CD9",  # ; Deva Shrd # Mn       VEDIC TONE YAJURVEDIC KATHAKA INDEPENDENT SVARITA SCHROEDER
        "\u1cdc","\u1cdd",  # ; Deva Shrd # Mn   [2] VEDIC TONE KATHAKA ANUDATTA..VEDIC TONE DOT BELOW
        "\u1CE0",  # ; Deva Shrd # Mn       VEDIC TONE RIGVEDIC KASHMIRI INDEPENDENT SVARITA
        "\uA8F3",  # ; Deva Taml # Lo       DEVANAGARI SIGN CANDRABINDU VIRAMA
        "\u10FB",  # ; Geor Latn # Po       GEORGIAN PARAGRAPH SEPARATOR
        "\u0BAA",  # ; Gran Taml # Lo       TAMIL LETTER PA
        "\u0BB5",  # ; Gran Taml # Lo       TAMIL LETTER VA
        "\u0be6","\u0be7","\u0be8","\u0be9","\u0bea","\u0beb","\u0bec","\u0bed","\u0bee","\u0bef",  # ; Gran Taml # Nd  [10] TAMIL DIGIT ZERO..TAMIL DIGIT NINE
        "\u0bf0","\u0bf1","\u0bf2",  # ; Gran Taml # No   [3] TAMIL NUMBER TEN..TAMIL NUMBER ONE THOUSAND
        "\u11301",  # ; Gran Taml # Mn       GRANTHA SIGN CANDRABINDU
        "\u11303",  # ; Gran Taml # Mc       GRANTHA SIGN VISARGA
        "\u1133C",  # ; Gran Taml # Mn       GRANTHA SIGN NUKTA
        "\u0ae6","\u0ae7","\u0ae8","\u0ae9","\u0aea","\u0aeb","\u0aec","\u0aed","\u0aee","\u0aef",  # ; Gujr Khoj # Nd  [10] GUJARATI DIGIT ZERO..GUJARATI DIGIT NINE
        "\u0a66","\u0a67","\u0a68","\u0a69","\u0a6a","\u0a6b","\u0a6c","\u0a6d","\u0a6e","\u0a6f",  # ; Guru Mult # Nd  [10] GURMUKHI DIGIT ZERO..GURMUKHI DIGIT NINE
        "\u3031","\u3032","\u3033","\u3034","\u3035",  # ; Hira Kana # Lm   [5] VERTICAL KANA REPEAT MARK..VERTICAL KANA REPEAT MARK LOWER HALF
        "\u3099","\u309a",  # ; Hira Kana # Mn   [2] COMBINING KATAKANA-HIRAGANA VOICED SOUND MARK..COMBINING KATAKANA-HIRAGANA SEMI-VOICED SOUND MARK
        "\u309b","\u309c",  # ; Hira Kana # Sk   [2] KATAKANA-HIRAGANA VOICED SOUND MARK..KATAKANA-HIRAGANA SEMI-VOICED SOUND MARK
        "\u30A0",  # ; Hira Kana # Pd       KATAKANA-HIRAGANA DOUBLE HYPHEN
        "\u30FC",  # ; Hira Kana # Lm       KATAKANA-HIRAGANA PROLONGED SOUND MARK
        "\uFF70",  # ; Hira Kana # Lm       HALFWIDTH KATAKANA-HIRAGANA PROLONGED SOUND MARK
        "\uff9e","\uff9f",  # ; Hira Kana # Lm   [2] HALFWIDTH KATAKANA VOICED SOUND MARK..HALFWIDTH KATAKANA SEMI-VOICED SOUND MARK
        "\u1802","\u1803",  # ; Mong Phag # Po   [2] MONGOLIAN COMMA..MONGOLIAN FULL STOP
        "\u1805",  # ; Mong Phag # Po       MONGOLIAN FOUR DOTS
        "\u060C",  # ; Arab Syrc Thaa # Po       ARABIC COMMA
        "\u061B",  # ; Arab Syrc Thaa # Po       ARABIC SEMICOLON
        "\u061C",  # ; Arab Syrc Thaa # Cf       ARABIC LETTER MARK
        "\u061F",  # ; Arab Syrc Thaa # Po       ARABIC QUESTION MARK
        "\u09e6","\u09e7","\u09e8","\u09e9","\u09ea","\u09eb","\u09ec","\u09ed","\u09ee","\u09ef",  # ; Beng Cakm Sylo # Nd  [10] BENGALI DIGIT ZERO..BENGALI DIGIT NINE
        "\u1040","\u1041","\u1042","\u1043","\u1044","\u1045","\u1046","\u1047","\u1048","\u1049",  # ; Cakm Mymr Tale # Nd  [10] MYANMAR DIGIT ZERO..MYANMAR DIGIT NINE
        "\u10107","\u10108","\u10109","\u1010a","\u1010b","\u1010c","\u1010d","\u1010e","\u1010f","\u10110","\u10111","\u10112","\u10113","\u10114","\u10115","\u10116","\u10117","\u10118","\u10119","\u1011a","\u1011b","\u1011c","\u1011d","\u1011e","\u1011f","\u10120","\u10121","\u10122","\u10123","\u10124","\u10125","\u10126","\u10127","\u10128","\u10129","\u1012a","\u1012b","\u1012c","\u1012d","\u1012e","\u1012f","\u10130","\u10131","\u10132","\u10133",  # ; Cprt Lina Linb # No  [45] AEGEAN NUMBER ONE..AEGEAN NUMBER NINETY THOUSAND
        "\u20F0",  # ; Deva Gran Latn # Mn       COMBINING ASTERISK ABOVE
        "\u0966","\u0967","\u0968","\u0969","\u096a","\u096b","\u096c","\u096d","\u096e","\u096f",  # ; Deva Kthi Mahj # Nd  [10] DEVANAGARI DIGIT ZERO..DEVANAGARI DIGIT NINE
        "\u303C",  # ; Hani Hira Kana # Lo       MASU MARK
        "\u303D",  # ; Hani Hira Kana # Po       PART ALTERNATION MARK
        "\uA92E",  # ; Kali Latn Mymr # Po       KAYAH LI SIGN CWI
        "\u1735","\u1736",  # ; Buhd Hano Tagb Tglg # Po   [2] PHILIPPINE SINGLE PUNCTUATION..PHILIPPINE DOUBLE PUNCTUATION
        "\u3003",  # ; Bopo Hang Hani Hira Kana # Po       DITTO MARK
        "\u3013",  # ; Bopo Hang Hani Hira Kana # So       GETA MARK
        "\u301C",  # ; Bopo Hang Hani Hira Kana # Pd       WAVE DASH
        "\u301D",  # ; Bopo Hang Hani Hira Kana # Ps       REVERSED DOUBLE PRIME QUOTATION MARK
        "\u301e","\u301f",  # ; Bopo Hang Hani Hira Kana # Pe   [2] DOUBLE PRIME QUOTATION MARK..LOW DOUBLE PRIME QUOTATION MARK
        "\u3030",  # ; Bopo Hang Hani Hira Kana # Pd       WAVY DASH
        "\u3037",  # ; Bopo Hang Hani Hira Kana # So       IDEOGRAPHIC TELEGRAPH LINE FEED SEPARATOR SYMBOL
        "\ufe45","\ufe46",  # ; Bopo Hang Hani Hira Kana # Po   [2] SESAME DOT..WHITE SESAME DOT
        "\u1CDA",  # ; Deva Knda Mlym Taml Telu # Mn       VEDIC TONE DOUBLE SVARITA
        "\u0640",  # ; Adlm Arab Mand Mani Phlp Syrc # Lm       ARABIC TATWEEL
        "\u3001","\u3002",  # ; Bopo Hang Hani Hira Kana Yiii # Po   [2] IDEOGRAPHIC COMMA..IDEOGRAPHIC FULL STOP
        "\u3008",  # ; Bopo Hang Hani Hira Kana Yiii # Ps       LEFT ANGLE BRACKET
        "\u3009",  # ; Bopo Hang Hani Hira Kana Yiii # Pe       RIGHT ANGLE BRACKET
        "\u300A",  # ; Bopo Hang Hani Hira Kana Yiii # Ps       LEFT DOUBLE ANGLE BRACKET
        "\u300B",  # ; Bopo Hang Hani Hira Kana Yiii # Pe       RIGHT DOUBLE ANGLE BRACKET
        "\u300C",  # ; Bopo Hang Hani Hira Kana Yiii # Ps       LEFT CORNER BRACKET
        "\u300D",  # ; Bopo Hang Hani Hira Kana Yiii # Pe       RIGHT CORNER BRACKET
        "\u300E",  # ; Bopo Hang Hani Hira Kana Yiii # Ps       LEFT WHITE CORNER BRACKET
        "\u300F",  # ; Bopo Hang Hani Hira Kana Yiii # Pe       RIGHT WHITE CORNER BRACKET
        "\u3010",  # ; Bopo Hang Hani Hira Kana Yiii # Ps       LEFT BLACK LENTICULAR BRACKET
        "\u3011",  # ; Bopo Hang Hani Hira Kana Yiii # Pe       RIGHT BLACK LENTICULAR BRACKET
        "\u3014",  # ; Bopo Hang Hani Hira Kana Yiii # Ps       LEFT TORTOISE SHELL BRACKET
        "\u3015",  # ; Bopo Hang Hani Hira Kana Yiii # Pe       RIGHT TORTOISE SHELL BRACKET
        "\u3016",  # ; Bopo Hang Hani Hira Kana Yiii # Ps       LEFT WHITE LENTICULAR BRACKET
        "\u3017",  # ; Bopo Hang Hani Hira Kana Yiii # Pe       RIGHT WHITE LENTICULAR BRACKET
        "\u3018",  # ; Bopo Hang Hani Hira Kana Yiii # Ps       LEFT WHITE TORTOISE SHELL BRACKET
        "\u3019",  # ; Bopo Hang Hani Hira Kana Yiii # Pe       RIGHT WHITE TORTOISE SHELL BRACKET
        "\u301A",  # ; Bopo Hang Hani Hira Kana Yiii # Ps       LEFT WHITE SQUARE BRACKET
        "\u301B",  # ; Bopo Hang Hani Hira Kana Yiii # Pe       RIGHT WHITE SQUARE BRACKET
        "\u30FB",  # ; Bopo Hang Hani Hira Kana Yiii # Po       KATAKANA MIDDLE DOT
        "\uFF61",  # ; Bopo Hang Hani Hira Kana Yiii # Po       HALFWIDTH IDEOGRAPHIC FULL STOP
        "\uFF62",  # ; Bopo Hang Hani Hira Kana Yiii # Ps       HALFWIDTH LEFT CORNER BRACKET
        "\uFF63",  # ; Bopo Hang Hani Hira Kana Yiii # Pe       HALFWIDTH RIGHT CORNER BRACKET
        "\uff64","\uff65",  # ; Bopo Hang Hani Hira Kana Yiii # Po   [2] HALFWIDTH IDEOGRAPHIC COMMA..HALFWIDTH KATAKANA MIDDLE DOT
        "\ua836","\ua837",  # ; Deva Gujr Guru Kthi Mahj Modi Sind Takr Tirh # So   [2] NORTH INDIC QUARTER MARK..NORTH INDIC PLACEHOLDER MARK
        "\uA838",  # ; Deva Gujr Guru Kthi Mahj Modi Sind Takr Tirh # Sc       NORTH INDIC RUPEE MARK
        "\uA839",  # ; Deva Gujr Guru Kthi Mahj Modi Sind Takr Tirh # So       NORTH INDIC QUANTITY MARK
        "\ua830","\ua831","\ua832","\ua833","\ua834","\ua835",  # ; Deva Gujr Guru Knda Kthi Mahj Modi Sind Takr Tirh # No   [6] NORTH INDIC FRACTION ONE QUARTER..NORTH INDIC FRACTION THREE SIXTEENTHS
        "\u0952",  # ; Beng Deva Gran Gujr Guru Knda Latn Mlym Orya Taml Telu # Mn       DEVANAGARI STRESS SIGN ANUDATTA
        "\u0951",  # ; Beng Deva Gran Gujr Guru Knda Latn Mlym Orya Shrd Taml Telu # Mn       DEVANAGARI STRESS SIGN UDATTA
        "\u0964",  # ; Beng Deva Gran Gujr Guru Knda Mahj Mlym Orya Sind Sinh Sylo Takr Taml Telu Tirh # Po       DEVANAGARI DANDA
        "\u0965",  # ; Beng Deva Gran Gujr Guru Knda Limb Mahj Mlym Orya Sind Sinh Sylo Takr Taml Telu Tirh # Po       DEVANAGARI DOUBLE DANDA
    ]
    test_data.each do |string|
      assert @validator.valid_encoding?(string), "U10_ScriptExtensions: #{string}"
      assert string.force_encoding("UTF-8").valid_encoding?, "U10_ScriptExtensions: #{string}" if @vercheck
    end
  end

end

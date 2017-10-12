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
        "\d1CF7",  # ; Beng # Mc       VEDIC SIGN ATIKRAMA
        "\d1CD1",  # ; Deva # Mn       VEDIC TONE SHARA
        "\d1cd4","\d1cd5","\d1cd6",  # ; Deva # Mn   [3] VEDIC SIGN YAJURVEDIC MIDLINE SVARITA..VEDIC TONE YAJURVEDIC INDEPENDENT SVARITA
        "\d1CD8",  # ; Deva # Mn       VEDIC TONE CANDRA BELOW
        "\d1CDB",  # ; Deva # Mn       VEDIC TONE TRIPLE SVARITA
        "\d1cde","\d1cdf",  # ; Deva # Mn   [2] VEDIC TONE TWO DOTS BELOW..VEDIC TONE THREE DOTS BELOW
        "\d1CE1",  # ; Deva # Mc       VEDIC TONE ATHARVAVEDIC INDEPENDENT SVARITA
        "\d1ce2","\d1ce3","\d1ce4","\d1ce5","\d1ce6","\d1ce7","\d1ce8",  # ; Deva # Mn   [7] VEDIC SIGN VISARGA SVARITA..VEDIC SIGN VISARGA ANUDATTA WITH TAIL
        "\d1ce9","\d1cea","\d1ceb","\d1cec",  # ; Deva # Lo   [4] VEDIC SIGN ANUSVARA ANTARGOMUKHA..VEDIC SIGN ANUSVARA VAMAGOMUKHA WITH TAIL
        "\d1CED",  # ; Deva # Mn       VEDIC SIGN TIRYAK
        "\d1cee","\d1cef","\d1cf0","\d1cf1",  # ; Deva # Lo   [4] VEDIC SIGN HEXIFORM LONG ANUSVARA..VEDIC SIGN ANUSVARA UBHAYATO MUKHA
        "\d1CF6",  # ; Deva # Lo       VEDIC SIGN UPADHMANIYA
        "\d1bca0","\d1bca1","\d1bca2","\d1bca3",  # ; Dupl # Cf   [4] SHORTHAND FORMAT LETTER OVERLAP..SHORTHAND FORMAT UP STEP
        "\d0342",  # ; Grek # Mn       COMBINING GREEK PERISPOMENI
        "\d0345",  # ; Grek # Mn       COMBINING GREEK YPOGEGRAMMENI
        "\d1dc0","\d1dc1",  # ; Grek # Mn   [2] COMBINING DOTTED GRAVE ACCENT..COMBINING DOTTED ACUTE ACCENT
        "\d3006",  # ; Hani # Lo       IDEOGRAPHIC CLOSING MARK
        "\d303e","\d303f",  # ; Hani # So   [2] IDEOGRAPHIC VARIATION INDICATOR..IDEOGRAPHIC HALF FILL SPACE
        "\d3190","\d3191",  # ; Hani # So   [2] IDEOGRAPHIC ANNOTATION LINKING MARK..IDEOGRAPHIC ANNOTATION REVERSE MARK
        "\d3192","\d3193","\d3194","\d3195",  # ; Hani # No   [4] IDEOGRAPHIC ANNOTATION ONE MARK..IDEOGRAPHIC ANNOTATION FOUR MARK
        "\d3196","\d3197","\d3198","\d3199","\d319a","\d319b","\d319c","\d319d","\d319e","\d319f",  # ; Hani # So  [10] IDEOGRAPHIC ANNOTATION TOP MARK..IDEOGRAPHIC ANNOTATION MAN MARK
        "\d31c0","\d31c1","\d31c2","\d31c3","\d31c4","\d31c5","\d31c6","\d31c7","\d31c8","\d31c9","\d31ca","\d31cb","\d31cc","\d31cd","\d31ce","\d31cf","\d31d0","\d31d1","\d31d2","\d31d3","\d31d4","\d31d5","\d31d6","\d31d7","\d31d8","\d31d9","\d31da","\d31db","\d31dc","\d31dd","\d31de","\d31df","\d31e0","\d31e1","\d31e2","\d31e3",  # ; Hani # So  [36] CJK STROKE T..CJK STROKE Q
        "\d3220","\d3221","\d3222","\d3223","\d3224","\d3225","\d3226","\d3227","\d3228","\d3229",  # ; Hani # No  [10] PARENTHESIZED IDEOGRAPH ONE..PARENTHESIZED IDEOGRAPH TEN
        "\d322a","\d322b","\d322c","\d322d","\d322e","\d322f","\d3230","\d3231","\d3232","\d3233","\d3234","\d3235","\d3236","\d3237","\d3238","\d3239","\d323a","\d323b","\d323c","\d323d","\d323e","\d323f","\d3240","\d3241","\d3242","\d3243","\d3244","\d3245","\d3246","\d3247",  # ; Hani # So  [30] PARENTHESIZED IDEOGRAPH MOON..CIRCLED IDEOGRAPH KOTO
        "\d3280","\d3281","\d3282","\d3283","\d3284","\d3285","\d3286","\d3287","\d3288","\d3289",  # ; Hani # No  [10] CIRCLED IDEOGRAPH ONE..CIRCLED IDEOGRAPH TEN
        "\d328a","\d328b","\d328c","\d328d","\d328e","\d328f","\d3290","\d3291","\d3292","\d3293","\d3294","\d3295","\d3296","\d3297","\d3298","\d3299","\d329a","\d329b","\d329c","\d329d","\d329e","\d329f","\d32a0","\d32a1","\d32a2","\d32a3","\d32a4","\d32a5","\d32a6","\d32a7","\d32a8","\d32a9","\d32aa","\d32ab","\d32ac","\d32ad","\d32ae","\d32af","\d32b0",  # ; Hani # So  [39] CIRCLED IDEOGRAPH MOON..CIRCLED IDEOGRAPH NIGHT
        "\d32c0","\d32c1","\d32c2","\d32c3","\d32c4","\d32c5","\d32c6","\d32c7","\d32c8","\d32c9","\d32ca","\d32cb",  # ; Hani # So  [12] IDEOGRAPHIC TELEGRAPH SYMBOL FOR JANUARY..IDEOGRAPHIC TELEGRAPH SYMBOL FOR DECEMBER
        "\d3358","\d3359","\d335a","\d335b","\d335c","\d335d","\d335e","\d335f","\d3360","\d3361","\d3362","\d3363","\d3364","\d3365","\d3366","\d3367","\d3368","\d3369","\d336a","\d336b","\d336c","\d336d","\d336e","\d336f","\d3370",  # ; Hani # So  [25] IDEOGRAPHIC TELEGRAPH SYMBOL FOR HOUR ZERO..IDEOGRAPHIC TELEGRAPH SYMBOL FOR HOUR TWENTY-FOUR
        "\d337b","\d337c","\d337d","\d337e","\d337f",  # ; Hani # So   [5] SQUARE ERA NAME HEISEI..SQUARE CORPORATION
        "\d33e0","\d33e1","\d33e2","\d33e3","\d33e4","\d33e5","\d33e6","\d33e7","\d33e8","\d33e9","\d33ea","\d33eb","\d33ec","\d33ed","\d33ee","\d33ef","\d33f0","\d33f1","\d33f2","\d33f3","\d33f4","\d33f5","\d33f6","\d33f7","\d33f8","\d33f9","\d33fa","\d33fb","\d33fc","\d33fd","\d33fe",  # ; Hani # So  [31] IDEOGRAPHIC TELEGRAPH SYMBOL FOR DAY ONE..IDEOGRAPHIC TELEGRAPH SYMBOL FOR DAY THIRTY-ONE
        "\d1d360","\d1d361","\d1d362","\d1d363","\d1d364","\d1d365","\d1d366","\d1d367","\d1d368","\d1d369","\d1d36a","\d1d36b","\d1d36c","\d1d36d","\d1d36e","\d1d36f","\d1d370","\d1d371",  # ; Hani # No  [18] COUNTING ROD UNIT DIGIT ONE..COUNTING ROD TENS DIGIT NINE
        "\d1f250","\d1f251",  # ; Hani # So   [2] CIRCLED IDEOGRAPH ADVANTAGE..CIRCLED IDEOGRAPH ACCEPT
        "\d0363","\d0364","\d0365","\d0366","\d0367","\d0368","\d0369","\d036a","\d036b","\d036c","\d036d","\d036e","\d036f",  # ; Latn # Mn  [13] COMBINING LATIN SMALL LETTER A..COMBINING LATIN SMALL LETTER X
        "\d102E0",  # ; Arab Copt # Mn       COPTIC EPACT THOUSANDS MARK
        "\d102e1","\d102e2","\d102e3","\d102e4","\d102e5","\d102e6","\d102e7","\d102e8","\d102e9","\d102ea","\d102eb","\d102ec","\d102ed","\d102ee","\d102ef","\d102f0","\d102f1","\d102f2","\d102f3","\d102f4","\d102f5","\d102f6","\d102f7","\d102f8","\d102f9","\d102fa","\d102fb",  # ; Arab Copt # No  [27] COPTIC EPACT DIGIT ONE..COPTIC EPACT NUMBER NINE HUNDRED
        "\d064b","\d064c","\d064d","\d064e","\d064f","\d0650","\d0651","\d0652","\d0653","\d0654","\d0655",  # ; Arab Syrc # Mn  [11] ARABIC FATHATAN..ARABIC HAMZA BELOW
        "\d0670",  # ; Arab Syrc # Mn       ARABIC LETTER SUPERSCRIPT ALEF
        "\d0660","\d0661","\d0662","\d0663","\d0664","\d0665","\d0666","\d0667","\d0668","\d0669",  # ; Arab Thaa # Nd  [10] ARABIC-INDIC DIGIT ZERO..ARABIC-INDIC DIGIT NINE
        "\dFDF2",  # ; Arab Thaa # Lo       ARABIC LIGATURE ALLAH ISOLATED FORM
        "\dFDFD",  # ; Arab Thaa # So       ARABIC LIGATURE BISMILLAH AR-RAHMAN AR-RAHEEM
        "\d0589",  # ; Armn Geor # Po       ARMENIAN FULL STOP
        "\dA8F1",  # ; Beng Deva # Mn       COMBINING DEVANAGARI SIGN AVAGRAHA
        "\d302a","\d302b","\d302c","\d302d",  # ; Bopo Hani # Mn   [4] IDEOGRAPHIC LEVEL TONE MARK..IDEOGRAPHIC ENTERING TONE MARK
        "\dA9CF",  # ; Bugi Java # Lm       JAVANESE PANGRANGKEP
        "\d10100","\d10101","\d10102",  # ; Cprt Linb # Po   [3] AEGEAN WORD SEPARATOR LINE..AEGEAN CHECK MARK
        "\d10137","\d10138","\d10139","\d1013a","\d1013b","\d1013c","\d1013d","\d1013e","\d1013f",  # ; Cprt Linb # So   [9] AEGEAN WEIGHT BASE UNIT..AEGEAN MEASURE THIRD SUBUNIT
        "\d0484",  # ; Cyrl Glag # Mn       COMBINING CYRILLIC PALATALIZATION
        "\d0487",  # ; Cyrl Glag # Mn       COMBINING CYRILLIC POKRYTIE
        "\d2E43",  # ; Cyrl Glag # Po       DASH WITH LEFT UPTURN
        "\dA66F",  # ; Cyrl Glag # Mn       COMBINING CYRILLIC VZMET
        "\d0485","\d0486",  # ; Cyrl Latn # Mn   [2] COMBINING CYRILLIC DASIA PNEUMATA..COMBINING CYRILLIC PSILI PNEUMATA
        "\d0483",  # ; Cyrl Perm # Mn       COMBINING CYRILLIC TITLO
        "\d1CD0",  # ; Deva Gran # Mn       VEDIC TONE KARSHANA
        "\d1CD2",  # ; Deva Gran # Mn       VEDIC TONE PRENKHA
        "\d1CD3",  # ; Deva Gran # Po       VEDIC SIGN NIHSHVASA
        "\d1cf2","\d1cf3",  # ; Deva Gran # Mc   [2] VEDIC SIGN ARDHAVISARGA..VEDIC SIGN ROTATED ARDHAVISARGA
        "\d1CF4",  # ; Deva Gran # Mn       VEDIC TONE CANDRA ABOVE
        "\d1cf8","\d1cf9",  # ; Deva Gran # Mn   [2] VEDIC TONE RING ABOVE..VEDIC TONE DOUBLE RING ABOVE
        "\d1CF5",  # ; Deva Knda # Lo       VEDIC SIGN JIHVAMULIYA
        "\d1CD7",  # ; Deva Shrd # Mn       VEDIC TONE YAJURVEDIC KATHAKA INDEPENDENT SVARITA
        "\d1CD9",  # ; Deva Shrd # Mn       VEDIC TONE YAJURVEDIC KATHAKA INDEPENDENT SVARITA SCHROEDER
        "\d1cdc","\d1cdd",  # ; Deva Shrd # Mn   [2] VEDIC TONE KATHAKA ANUDATTA..VEDIC TONE DOT BELOW
        "\d1CE0",  # ; Deva Shrd # Mn       VEDIC TONE RIGVEDIC KASHMIRI INDEPENDENT SVARITA
        "\dA8F3",  # ; Deva Taml # Lo       DEVANAGARI SIGN CANDRABINDU VIRAMA
        "\d10FB",  # ; Geor Latn # Po       GEORGIAN PARAGRAPH SEPARATOR
        "\d0BAA",  # ; Gran Taml # Lo       TAMIL LETTER PA
        "\d0BB5",  # ; Gran Taml # Lo       TAMIL LETTER VA
        "\d0be6","\d0be7","\d0be8","\d0be9","\d0bea","\d0beb","\d0bec","\d0bed","\d0bee","\d0bef",  # ; Gran Taml # Nd  [10] TAMIL DIGIT ZERO..TAMIL DIGIT NINE
        "\d0bf0","\d0bf1","\d0bf2",  # ; Gran Taml # No   [3] TAMIL NUMBER TEN..TAMIL NUMBER ONE THOUSAND
        "\d11301",  # ; Gran Taml # Mn       GRANTHA SIGN CANDRABINDU
        "\d11303",  # ; Gran Taml # Mc       GRANTHA SIGN VISARGA
        "\d1133C",  # ; Gran Taml # Mn       GRANTHA SIGN NUKTA
        "\d0ae6","\d0ae7","\d0ae8","\d0ae9","\d0aea","\d0aeb","\d0aec","\d0aed","\d0aee","\d0aef",  # ; Gujr Khoj # Nd  [10] GUJARATI DIGIT ZERO..GUJARATI DIGIT NINE
        "\d0a66","\d0a67","\d0a68","\d0a69","\d0a6a","\d0a6b","\d0a6c","\d0a6d","\d0a6e","\d0a6f",  # ; Guru Mult # Nd  [10] GURMUKHI DIGIT ZERO..GURMUKHI DIGIT NINE
        "\d3031","\d3032","\d3033","\d3034","\d3035",  # ; Hira Kana # Lm   [5] VERTICAL KANA REPEAT MARK..VERTICAL KANA REPEAT MARK LOWER HALF
        "\d3099","\d309a",  # ; Hira Kana # Mn   [2] COMBINING KATAKANA-HIRAGANA VOICED SOUND MARK..COMBINING KATAKANA-HIRAGANA SEMI-VOICED SOUND MARK
        "\d309b","\d309c",  # ; Hira Kana # Sk   [2] KATAKANA-HIRAGANA VOICED SOUND MARK..KATAKANA-HIRAGANA SEMI-VOICED SOUND MARK
        "\d30A0",  # ; Hira Kana # Pd       KATAKANA-HIRAGANA DOUBLE HYPHEN
        "\d30FC",  # ; Hira Kana # Lm       KATAKANA-HIRAGANA PROLONGED SOUND MARK
        "\dFF70",  # ; Hira Kana # Lm       HALFWIDTH KATAKANA-HIRAGANA PROLONGED SOUND MARK
        "\dff9e","\dff9f",  # ; Hira Kana # Lm   [2] HALFWIDTH KATAKANA VOICED SOUND MARK..HALFWIDTH KATAKANA SEMI-VOICED SOUND MARK
        "\d1802","\d1803",  # ; Mong Phag # Po   [2] MONGOLIAN COMMA..MONGOLIAN FULL STOP
        "\d1805",  # ; Mong Phag # Po       MONGOLIAN FOUR DOTS
        "\d060C",  # ; Arab Syrc Thaa # Po       ARABIC COMMA
        "\d061B",  # ; Arab Syrc Thaa # Po       ARABIC SEMICOLON
        "\d061C",  # ; Arab Syrc Thaa # Cf       ARABIC LETTER MARK
        "\d061F",  # ; Arab Syrc Thaa # Po       ARABIC QUESTION MARK
        "\d09e6","\d09e7","\d09e8","\d09e9","\d09ea","\d09eb","\d09ec","\d09ed","\d09ee","\d09ef",  # ; Beng Cakm Sylo # Nd  [10] BENGALI DIGIT ZERO..BENGALI DIGIT NINE
        "\d1040","\d1041","\d1042","\d1043","\d1044","\d1045","\d1046","\d1047","\d1048","\d1049",  # ; Cakm Mymr Tale # Nd  [10] MYANMAR DIGIT ZERO..MYANMAR DIGIT NINE
        "\d10107","\d10108","\d10109","\d1010a","\d1010b","\d1010c","\d1010d","\d1010e","\d1010f","\d10110","\d10111","\d10112","\d10113","\d10114","\d10115","\d10116","\d10117","\d10118","\d10119","\d1011a","\d1011b","\d1011c","\d1011d","\d1011e","\d1011f","\d10120","\d10121","\d10122","\d10123","\d10124","\d10125","\d10126","\d10127","\d10128","\d10129","\d1012a","\d1012b","\d1012c","\d1012d","\d1012e","\d1012f","\d10130","\d10131","\d10132","\d10133",  # ; Cprt Lina Linb # No  [45] AEGEAN NUMBER ONE..AEGEAN NUMBER NINETY THOUSAND
        "\d20F0",  # ; Deva Gran Latn # Mn       COMBINING ASTERISK ABOVE
        "\d0966","\d0967","\d0968","\d0969","\d096a","\d096b","\d096c","\d096d","\d096e","\d096f",  # ; Deva Kthi Mahj # Nd  [10] DEVANAGARI DIGIT ZERO..DEVANAGARI DIGIT NINE
        "\d303C",  # ; Hani Hira Kana # Lo       MASU MARK
        "\d303D",  # ; Hani Hira Kana # Po       PART ALTERNATION MARK
        "\dA92E",  # ; Kali Latn Mymr # Po       KAYAH LI SIGN CWI
        "\d1735","\d1736",  # ; Buhd Hano Tagb Tglg # Po   [2] PHILIPPINE SINGLE PUNCTUATION..PHILIPPINE DOUBLE PUNCTUATION
        "\d3003",  # ; Bopo Hang Hani Hira Kana # Po       DITTO MARK
        "\d3013",  # ; Bopo Hang Hani Hira Kana # So       GETA MARK
        "\d301C",  # ; Bopo Hang Hani Hira Kana # Pd       WAVE DASH
        "\d301D",  # ; Bopo Hang Hani Hira Kana # Ps       REVERSED DOUBLE PRIME QUOTATION MARK
        "\d301e","\d301f",  # ; Bopo Hang Hani Hira Kana # Pe   [2] DOUBLE PRIME QUOTATION MARK..LOW DOUBLE PRIME QUOTATION MARK
        "\d3030",  # ; Bopo Hang Hani Hira Kana # Pd       WAVY DASH
        "\d3037",  # ; Bopo Hang Hani Hira Kana # So       IDEOGRAPHIC TELEGRAPH LINE FEED SEPARATOR SYMBOL
        "\dfe45","\dfe46",  # ; Bopo Hang Hani Hira Kana # Po   [2] SESAME DOT..WHITE SESAME DOT
        "\d1CDA",  # ; Deva Knda Mlym Taml Telu # Mn       VEDIC TONE DOUBLE SVARITA
        "\d0640",  # ; Adlm Arab Mand Mani Phlp Syrc # Lm       ARABIC TATWEEL
        "\d3001","\d3002",  # ; Bopo Hang Hani Hira Kana Yiii # Po   [2] IDEOGRAPHIC COMMA..IDEOGRAPHIC FULL STOP
        "\d3008",  # ; Bopo Hang Hani Hira Kana Yiii # Ps       LEFT ANGLE BRACKET
        "\d3009",  # ; Bopo Hang Hani Hira Kana Yiii # Pe       RIGHT ANGLE BRACKET
        "\d300A",  # ; Bopo Hang Hani Hira Kana Yiii # Ps       LEFT DOUBLE ANGLE BRACKET
        "\d300B",  # ; Bopo Hang Hani Hira Kana Yiii # Pe       RIGHT DOUBLE ANGLE BRACKET
        "\d300C",  # ; Bopo Hang Hani Hira Kana Yiii # Ps       LEFT CORNER BRACKET
        "\d300D",  # ; Bopo Hang Hani Hira Kana Yiii # Pe       RIGHT CORNER BRACKET
        "\d300E",  # ; Bopo Hang Hani Hira Kana Yiii # Ps       LEFT WHITE CORNER BRACKET
        "\d300F",  # ; Bopo Hang Hani Hira Kana Yiii # Pe       RIGHT WHITE CORNER BRACKET
        "\d3010",  # ; Bopo Hang Hani Hira Kana Yiii # Ps       LEFT BLACK LENTICULAR BRACKET
        "\d3011",  # ; Bopo Hang Hani Hira Kana Yiii # Pe       RIGHT BLACK LENTICULAR BRACKET
        "\d3014",  # ; Bopo Hang Hani Hira Kana Yiii # Ps       LEFT TORTOISE SHELL BRACKET
        "\d3015",  # ; Bopo Hang Hani Hira Kana Yiii # Pe       RIGHT TORTOISE SHELL BRACKET
        "\d3016",  # ; Bopo Hang Hani Hira Kana Yiii # Ps       LEFT WHITE LENTICULAR BRACKET
        "\d3017",  # ; Bopo Hang Hani Hira Kana Yiii # Pe       RIGHT WHITE LENTICULAR BRACKET
        "\d3018",  # ; Bopo Hang Hani Hira Kana Yiii # Ps       LEFT WHITE TORTOISE SHELL BRACKET
        "\d3019",  # ; Bopo Hang Hani Hira Kana Yiii # Pe       RIGHT WHITE TORTOISE SHELL BRACKET
        "\d301A",  # ; Bopo Hang Hani Hira Kana Yiii # Ps       LEFT WHITE SQUARE BRACKET
        "\d301B",  # ; Bopo Hang Hani Hira Kana Yiii # Pe       RIGHT WHITE SQUARE BRACKET
        "\d30FB",  # ; Bopo Hang Hani Hira Kana Yiii # Po       KATAKANA MIDDLE DOT
        "\dFF61",  # ; Bopo Hang Hani Hira Kana Yiii # Po       HALFWIDTH IDEOGRAPHIC FULL STOP
        "\dFF62",  # ; Bopo Hang Hani Hira Kana Yiii # Ps       HALFWIDTH LEFT CORNER BRACKET
        "\dFF63",  # ; Bopo Hang Hani Hira Kana Yiii # Pe       HALFWIDTH RIGHT CORNER BRACKET
        "\dff64","\dff65",  # ; Bopo Hang Hani Hira Kana Yiii # Po   [2] HALFWIDTH IDEOGRAPHIC COMMA..HALFWIDTH KATAKANA MIDDLE DOT
        "\da836","\da837",  # ; Deva Gujr Guru Kthi Mahj Modi Sind Takr Tirh # So   [2] NORTH INDIC QUARTER MARK..NORTH INDIC PLACEHOLDER MARK
        "\dA838",  # ; Deva Gujr Guru Kthi Mahj Modi Sind Takr Tirh # Sc       NORTH INDIC RUPEE MARK
        "\dA839",  # ; Deva Gujr Guru Kthi Mahj Modi Sind Takr Tirh # So       NORTH INDIC QUANTITY MARK
        "\da830","\da831","\da832","\da833","\da834","\da835",  # ; Deva Gujr Guru Knda Kthi Mahj Modi Sind Takr Tirh # No   [6] NORTH INDIC FRACTION ONE QUARTER..NORTH INDIC FRACTION THREE SIXTEENTHS
        "\d0952",  # ; Beng Deva Gran Gujr Guru Knda Latn Mlym Orya Taml Telu # Mn       DEVANAGARI STRESS SIGN ANUDATTA
        "\d0951",  # ; Beng Deva Gran Gujr Guru Knda Latn Mlym Orya Shrd Taml Telu # Mn       DEVANAGARI STRESS SIGN UDATTA
        "\d0964",  # ; Beng Deva Gran Gujr Guru Knda Mahj Mlym Orya Sind Sinh Sylo Takr Taml Telu Tirh # Po       DEVANAGARI DANDA
        "\d0965",  # ; Beng Deva Gran Gujr Guru Knda Limb Mahj Mlym Orya Sind Sinh Sylo Takr Taml Telu Tirh # Po       DEVANAGARI DOUBLE DANDA
    ]
    test_data.each do |string|
      assert @validator.valid_encoding?(string), "U10_ScriptExtensions: #{string}"
      assert string.force_encoding("UTF-8").valid_encoding?, "U10_ScriptExtensions: #{string}" if @vercheck
    end
  end

end

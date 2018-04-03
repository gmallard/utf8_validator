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
class TestUnicode10DerivedNumericType < Test::Unit::TestCase
  #
  def setup
    @validator = UTF8::Validator.new
    @vercheck = ((RUBY_VERSION =~ /1.9/) or (RUBY_VERSION =~ /2./)) ? true : false
  end

  #
  def teardown
    @validator = nil
  end

  def test_unicode10_DerivedNumericType
    test_data = [
        "\u00bc","\u00bd","\u00be",  # ; Numeric # No   [3] VULGAR FRACTION ONE QUARTER..VULGAR FRACTION THREE QUARTERS
        "\u09f4","\u09f5","\u09f6","\u09f7","\u09f8","\u09f9",  # ; Numeric # No   [6] BENGALI CURRENCY NUMERATOR ONE..BENGALI CURRENCY DENOMINATOR SIXTEEN
        "\u0b72","\u0b73","\u0b74","\u0b75","\u0b76","\u0b77",  # ; Numeric # No   [6] ORIYA FRACTION ONE QUARTER..ORIYA FRACTION THREE SIXTEENTHS
        "\u0bf0","\u0bf1","\u0bf2",  # ; Numeric # No   [3] TAMIL NUMBER TEN..TAMIL NUMBER ONE THOUSAND
        "\u0c78","\u0c79","\u0c7a","\u0c7b","\u0c7c","\u0c7d","\u0c7e",  # ; Numeric # No   [7] TELUGU FRACTION DIGIT ZERO FOR ODD POWERS OF FOUR..TELUGU FRACTION DIGIT THREE FOR EVEN POWERS OF FOUR
        "\u0d58","\u0d59","\u0d5a","\u0d5b","\u0d5c","\u0d5d","\u0d5e",  # ; Numeric # No   [7] MALAYALAM FRACTION ONE ONE-HUNDRED-AND-SIXTIETH..MALAYALAM FRACTION ONE FIFTH
        "\u0d70","\u0d71","\u0d72","\u0d73","\u0d74","\u0d75","\u0d76","\u0d77","\u0d78",  # ; Numeric # No   [9] MALAYALAM NUMBER TEN..MALAYALAM FRACTION THREE SIXTEENTHS
        "\u0f2a","\u0f2b","\u0f2c","\u0f2d","\u0f2e","\u0f2f","\u0f30","\u0f31","\u0f32","\u0f33",  # ; Numeric # No  [10] TIBETAN DIGIT HALF ONE..TIBETAN DIGIT HALF ZERO
        "\u1372","\u1373","\u1374","\u1375","\u1376","\u1377","\u1378","\u1379","\u137a","\u137b","\u137c",  # ; Numeric # No  [11] ETHIOPIC NUMBER TEN..ETHIOPIC NUMBER TEN THOUSAND
        "\u16ee","\u16ef","\u16f0",  # ; Numeric # Nl   [3] RUNIC ARLAUG SYMBOL..RUNIC BELGTHOR SYMBOL
        "\u17f0","\u17f1","\u17f2","\u17f3","\u17f4","\u17f5","\u17f6","\u17f7","\u17f8","\u17f9",  # ; Numeric # No  [10] KHMER SYMBOL LEK ATTAK SON..KHMER SYMBOL LEK ATTAK PRAM-BUON
        "\u2150","\u2151","\u2152","\u2153","\u2154","\u2155","\u2156","\u2157","\u2158","\u2159","\u215a","\u215b","\u215c","\u215d","\u215e","\u215f",  # ; Numeric # No  [16] VULGAR FRACTION ONE SEVENTH..FRACTION NUMERATOR ONE
        "\u2160","\u2161","\u2162","\u2163","\u2164","\u2165","\u2166","\u2167","\u2168","\u2169","\u216a","\u216b","\u216c","\u216d","\u216e","\u216f","\u2170","\u2171","\u2172","\u2173","\u2174","\u2175","\u2176","\u2177","\u2178","\u2179","\u217a","\u217b","\u217c","\u217d","\u217e","\u217f","\u2180","\u2181","\u2182",  # ; Numeric # Nl  [35] ROMAN NUMERAL ONE..ROMAN NUMERAL TEN THOUSAND
        "\u2185","\u2186","\u2187","\u2188",  # ; Numeric # Nl   [4] ROMAN NUMERAL SIX LATE FORM..ROMAN NUMERAL ONE HUNDRED THOUSAND
        "\u2189",  # ; Numeric # No       VULGAR FRACTION ZERO THIRDS
        "\u2469","\u246a","\u246b","\u246c","\u246d","\u246e","\u246f","\u2470","\u2471","\u2472","\u2473",  # ; Numeric # No  [11] CIRCLED NUMBER TEN..CIRCLED NUMBER TWENTY
        "\u247d","\u247e","\u247f","\u2480","\u2481","\u2482","\u2483","\u2484","\u2485","\u2486","\u2487",  # ; Numeric # No  [11] PARENTHESIZED NUMBER TEN..PARENTHESIZED NUMBER TWENTY
        "\u2491","\u2492","\u2493","\u2494","\u2495","\u2496","\u2497","\u2498","\u2499","\u249a","\u249b",  # ; Numeric # No  [11] NUMBER TEN FULL STOP..NUMBER TWENTY FULL STOP
        "\u24eb","\u24ec","\u24ed","\u24ee","\u24ef","\u24f0","\u24f1","\u24f2","\u24f3","\u24f4",  # ; Numeric # No  [10] NEGATIVE CIRCLED NUMBER ELEVEN..NEGATIVE CIRCLED NUMBER TWENTY
        "\u24FE",  # ; Numeric # No       DOUBLE CIRCLED NUMBER TEN
        "\u277F",  # ; Numeric # No       DINGBAT NEGATIVE CIRCLED NUMBER TEN
        "\u2789",  # ; Numeric # No       DINGBAT CIRCLED SANS-SERIF NUMBER TEN
        "\u2793",  # ; Numeric # No       DINGBAT NEGATIVE CIRCLED SANS-SERIF NUMBER TEN
        "\u2CFD",  # ; Numeric # No       COPTIC FRACTION ONE HALF
        "\u3007",  # ; Numeric # Nl       IDEOGRAPHIC NUMBER ZERO
        "\u3021","\u3022","\u3023","\u3024","\u3025","\u3026","\u3027","\u3028","\u3029",  # ; Numeric # Nl   [9] HANGZHOU NUMERAL ONE..HANGZHOU NUMERAL NINE
        "\u3038","\u3039","\u303a",  # ; Numeric # Nl   [3] HANGZHOU NUMERAL TEN..HANGZHOU NUMERAL THIRTY
        "\u3192","\u3193","\u3194","\u3195",  # ; Numeric # No   [4] IDEOGRAPHIC ANNOTATION ONE MARK..IDEOGRAPHIC ANNOTATION FOUR MARK
        "\u3220","\u3221","\u3222","\u3223","\u3224","\u3225","\u3226","\u3227","\u3228","\u3229",  # ; Numeric # No  [10] PARENTHESIZED IDEOGRAPH ONE..PARENTHESIZED IDEOGRAPH TEN
        "\u3248","\u3249","\u324a","\u324b","\u324c","\u324d","\u324e","\u324f",  # ; Numeric # No   [8] CIRCLED NUMBER TEN ON BLACK SQUARE..CIRCLED NUMBER EIGHTY ON BLACK SQUARE
        "\u3251","\u3252","\u3253","\u3254","\u3255","\u3256","\u3257","\u3258","\u3259","\u325a","\u325b","\u325c","\u325d","\u325e","\u325f",  # ; Numeric # No  [15] CIRCLED NUMBER TWENTY ONE..CIRCLED NUMBER THIRTY FIVE
        "\u3280","\u3281","\u3282","\u3283","\u3284","\u3285","\u3286","\u3287","\u3288","\u3289",  # ; Numeric # No  [10] CIRCLED IDEOGRAPH ONE..CIRCLED IDEOGRAPH TEN
        "\u32b1","\u32b2","\u32b3","\u32b4","\u32b5","\u32b6","\u32b7","\u32b8","\u32b9","\u32ba","\u32bb","\u32bc","\u32bd","\u32be","\u32bf",  # ; Numeric # No  [15] CIRCLED NUMBER THIRTY SIX..CIRCLED NUMBER FIFTY
        "\u3405",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-3405
        "\u3483",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-3483
        "\u382A",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-382A
        "\u3B4D",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-3B4D
        "\u4E00",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-4E00
        "\u4E03",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-4E03
        "\u4E07",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-4E07
        "\u4E09",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-4E09
        "\u4E5D",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-4E5D
        "\u4E8C",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-4E8C
        "\u4E94",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-4E94
        "\u4E96",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-4E96
        "\u4ebf","\u4ec0",  # ; Numeric # Lo   [2] CJK UNIFIED IDEOGRAPH-4EBF..CJK UNIFIED IDEOGRAPH-4EC0
        "\u4EDF",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-4EDF
        "\u4EE8",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-4EE8
        "\u4F0D",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-4F0D
        "\u4F70",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-4F70
        "\u5104",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-5104
        "\u5146",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-5146
        "\u5169",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-5169
        "\u516B",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-516B
        "\u516D",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-516D
        "\u5341",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-5341
        "\u5343","\u5344","\u5345",  # ; Numeric # Lo   [3] CJK UNIFIED IDEOGRAPH-5343..CJK UNIFIED IDEOGRAPH-5345
        "\u534C",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-534C
        "\u53c1","\u53c2","\u53c3","\u53c4",  # ; Numeric # Lo   [4] CJK UNIFIED IDEOGRAPH-53C1..CJK UNIFIED IDEOGRAPH-53C4
        "\u56DB",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-56DB
        "\u58F1",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-58F1
        "\u58F9",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-58F9
        "\u5E7A",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-5E7A
        "\u5efe","\u5eff",  # ; Numeric # Lo   [2] CJK UNIFIED IDEOGRAPH-5EFE..CJK UNIFIED IDEOGRAPH-5EFF
        "\u5f0c","\u5f0d","\u5f0e",  # ; Numeric # Lo   [3] CJK UNIFIED IDEOGRAPH-5F0C..CJK UNIFIED IDEOGRAPH-5F0E
        "\u5F10",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-5F10
        "\u62FE",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-62FE
        "\u634C",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-634C
        "\u67D2",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-67D2
        "\u6F06",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-6F06
        "\u7396",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-7396
        "\u767E",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-767E
        "\u8086",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-8086
        "\u842C",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-842C
        "\u8CAE",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-8CAE
        "\u8CB3",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-8CB3
        "\u8D30",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-8D30
        "\u9621",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-9621
        "\u9646",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-9646
        "\u964C",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-964C
        "\u9678",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-9678
        "\u96F6",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-96F6
        "\ua6e6","\ua6e7","\ua6e8","\ua6e9","\ua6ea","\ua6eb","\ua6ec","\ua6ed","\ua6ee","\ua6ef",  # ; Numeric # Nl  [10] BAMUM LETTER MO..BAMUM LETTER KOGHOM
        "\ua830","\ua831","\ua832","\ua833","\ua834","\ua835",  # ; Numeric # No   [6] NORTH INDIC FRACTION ONE QUARTER..NORTH INDIC FRACTION THREE SIXTEENTHS
        "\uF96B",  # ; Numeric # Lo       CJK COMPATIBILITY IDEOGRAPH-F96B
        "\uF973",  # ; Numeric # Lo       CJK COMPATIBILITY IDEOGRAPH-F973
        "\uF978",  # ; Numeric # Lo       CJK COMPATIBILITY IDEOGRAPH-F978
        "\uF9B2",  # ; Numeric # Lo       CJK COMPATIBILITY IDEOGRAPH-F9B2
        "\uF9D1",  # ; Numeric # Lo       CJK COMPATIBILITY IDEOGRAPH-F9D1
        "\uF9D3",  # ; Numeric # Lo       CJK COMPATIBILITY IDEOGRAPH-F9D3
        "\uF9FD",  # ; Numeric # Lo       CJK COMPATIBILITY IDEOGRAPH-F9FD
        "\u10107","\u10108","\u10109","\u1010a","\u1010b","\u1010c","\u1010d","\u1010e","\u1010f","\u10110","\u10111","\u10112","\u10113","\u10114","\u10115","\u10116","\u10117","\u10118","\u10119","\u1011a","\u1011b","\u1011c","\u1011d","\u1011e","\u1011f","\u10120","\u10121","\u10122","\u10123","\u10124","\u10125","\u10126","\u10127","\u10128","\u10129","\u1012a","\u1012b","\u1012c","\u1012d","\u1012e","\u1012f","\u10130","\u10131","\u10132","\u10133",  # ; Numeric # No  [45] AEGEAN NUMBER ONE..AEGEAN NUMBER NINETY THOUSAND
        "\u10140","\u10141","\u10142","\u10143","\u10144","\u10145","\u10146","\u10147","\u10148","\u10149","\u1014a","\u1014b","\u1014c","\u1014d","\u1014e","\u1014f","\u10150","\u10151","\u10152","\u10153","\u10154","\u10155","\u10156","\u10157","\u10158","\u10159","\u1015a","\u1015b","\u1015c","\u1015d","\u1015e","\u1015f","\u10160","\u10161","\u10162","\u10163","\u10164","\u10165","\u10166","\u10167","\u10168","\u10169","\u1016a","\u1016b","\u1016c","\u1016d","\u1016e","\u1016f","\u10170","\u10171","\u10172","\u10173","\u10174",  # ; Numeric # Nl  [53] GREEK ACROPHONIC ATTIC ONE QUARTER..GREEK ACROPHONIC STRATIAN FIFTY MNAS
        "\u10175","\u10176","\u10177","\u10178",  # ; Numeric # No   [4] GREEK ONE HALF SIGN..GREEK THREE QUARTERS SIGN
        "\u1018a","\u1018b",  # ; Numeric # No   [2] GREEK ZERO SIGN..GREEK ONE QUARTER SIGN
        "\u102e1","\u102e2","\u102e3","\u102e4","\u102e5","\u102e6","\u102e7","\u102e8","\u102e9","\u102ea","\u102eb","\u102ec","\u102ed","\u102ee","\u102ef","\u102f0","\u102f1","\u102f2","\u102f3","\u102f4","\u102f5","\u102f6","\u102f7","\u102f8","\u102f9","\u102fa","\u102fb",  # ; Numeric # No  [27] COPTIC EPACT DIGIT ONE..COPTIC EPACT NUMBER NINE HUNDRED
        "\u10320","\u10321","\u10322","\u10323",  # ; Numeric # No   [4] OLD ITALIC NUMERAL ONE..OLD ITALIC NUMERAL FIFTY
        "\u10341",  # ; Numeric # Nl       GOTHIC LETTER NINETY
        "\u1034A",  # ; Numeric # Nl       GOTHIC LETTER NINE HUNDRED
        "\u103d1","\u103d2","\u103d3","\u103d4","\u103d5",  # ; Numeric # Nl   [5] OLD PERSIAN NUMBER ONE..OLD PERSIAN NUMBER HUNDRED
        "\u10858","\u10859","\u1085a","\u1085b","\u1085c","\u1085d","\u1085e","\u1085f",  # ; Numeric # No   [8] IMPERIAL ARAMAIC NUMBER ONE..IMPERIAL ARAMAIC NUMBER TEN THOUSAND
        "\u10879","\u1087a","\u1087b","\u1087c","\u1087d","\u1087e","\u1087f",  # ; Numeric # No   [7] PALMYRENE NUMBER ONE..PALMYRENE NUMBER TWENTY
        "\u108a7","\u108a8","\u108a9","\u108aa","\u108ab","\u108ac","\u108ad","\u108ae","\u108af",  # ; Numeric # No   [9] NABATAEAN NUMBER ONE..NABATAEAN NUMBER ONE HUNDRED
        "\u108fb","\u108fc","\u108fd","\u108fe","\u108ff",  # ; Numeric # No   [5] HATRAN NUMBER ONE..HATRAN NUMBER ONE HUNDRED
        "\u10916","\u10917","\u10918","\u10919","\u1091a","\u1091b",  # ; Numeric # No   [6] PHOENICIAN NUMBER ONE..PHOENICIAN NUMBER THREE
        "\u109bc","\u109bd",  # ; Numeric # No   [2] MEROITIC CURSIVE FRACTION ELEVEN TWELFTHS..MEROITIC CURSIVE FRACTION ONE HALF
        "\u109c0","\u109c1","\u109c2","\u109c3","\u109c4","\u109c5","\u109c6","\u109c7","\u109c8","\u109c9","\u109ca","\u109cb","\u109cc","\u109cd","\u109ce","\u109cf",  # ; Numeric # No  [16] MEROITIC CURSIVE NUMBER ONE..MEROITIC CURSIVE NUMBER SEVENTY
        "\u109d2","\u109d3","\u109d4","\u109d5","\u109d6","\u109d7","\u109d8","\u109d9","\u109da","\u109db","\u109dc","\u109dd","\u109de","\u109df","\u109e0","\u109e1","\u109e2","\u109e3","\u109e4","\u109e5","\u109e6","\u109e7","\u109e8","\u109e9","\u109ea","\u109eb","\u109ec","\u109ed","\u109ee","\u109ef","\u109f0","\u109f1","\u109f2","\u109f3","\u109f4","\u109f5","\u109f6","\u109f7","\u109f8","\u109f9","\u109fa","\u109fb","\u109fc","\u109fd","\u109fe","\u109ff",  # ; Numeric # No  [46] MEROITIC CURSIVE NUMBER ONE HUNDRED..MEROITIC CURSIVE FRACTION TEN TWELFTHS
        "\u10a44","\u10a45","\u10a46","\u10a47",  # ; Numeric # No   [4] KHAROSHTHI NUMBER TEN..KHAROSHTHI NUMBER ONE THOUSAND
        "\u10a7d","\u10a7e",  # ; Numeric # No   [2] OLD SOUTH ARABIAN NUMBER ONE..OLD SOUTH ARABIAN NUMBER FIFTY
        "\u10a9d","\u10a9e","\u10a9f",  # ; Numeric # No   [3] OLD NORTH ARABIAN NUMBER ONE..OLD NORTH ARABIAN NUMBER TWENTY
        "\u10aeb","\u10aec","\u10aed","\u10aee","\u10aef",  # ; Numeric # No   [5] MANICHAEAN NUMBER ONE..MANICHAEAN NUMBER ONE HUNDRED
        "\u10b58","\u10b59","\u10b5a","\u10b5b","\u10b5c","\u10b5d","\u10b5e","\u10b5f",  # ; Numeric # No   [8] INSCRIPTIONAL PARTHIAN NUMBER ONE..INSCRIPTIONAL PARTHIAN NUMBER ONE THOUSAND
        "\u10b78","\u10b79","\u10b7a","\u10b7b","\u10b7c","\u10b7d","\u10b7e","\u10b7f",  # ; Numeric # No   [8] INSCRIPTIONAL PAHLAVI NUMBER ONE..INSCRIPTIONAL PAHLAVI NUMBER ONE THOUSAND
        "\u10ba9","\u10baa","\u10bab","\u10bac","\u10bad","\u10bae","\u10baf",  # ; Numeric # No   [7] PSALTER PAHLAVI NUMBER ONE..PSALTER PAHLAVI NUMBER ONE HUNDRED
        "\u10cfa","\u10cfb","\u10cfc","\u10cfd","\u10cfe","\u10cff",  # ; Numeric # No   [6] OLD HUNGARIAN NUMBER ONE..OLD HUNGARIAN NUMBER ONE THOUSAND
        "\u10e69","\u10e6a","\u10e6b","\u10e6c","\u10e6d","\u10e6e","\u10e6f","\u10e70","\u10e71","\u10e72","\u10e73","\u10e74","\u10e75","\u10e76","\u10e77","\u10e78","\u10e79","\u10e7a","\u10e7b","\u10e7c","\u10e7d","\u10e7e",  # ; Numeric # No  [22] RUMI NUMBER TEN..RUMI FRACTION TWO THIRDS
        "\u1105b","\u1105c","\u1105d","\u1105e","\u1105f","\u11060","\u11061","\u11062","\u11063","\u11064","\u11065",  # ; Numeric # No  [11] BRAHMI NUMBER TEN..BRAHMI NUMBER ONE THOUSAND
        "\u111e1","\u111e2","\u111e3","\u111e4","\u111e5","\u111e6","\u111e7","\u111e8","\u111e9","\u111ea","\u111eb","\u111ec","\u111ed","\u111ee","\u111ef","\u111f0","\u111f1","\u111f2","\u111f3","\u111f4",  # ; Numeric # No  [20] SINHALA ARCHAIC DIGIT ONE..SINHALA ARCHAIC NUMBER ONE THOUSAND
        "\u1173a","\u1173b",  # ; Numeric # No   [2] AHOM NUMBER TEN..AHOM NUMBER TWENTY
        "\u118ea","\u118eb","\u118ec","\u118ed","\u118ee","\u118ef","\u118f0","\u118f1","\u118f2",  # ; Numeric # No   [9] WARANG CITI NUMBER TEN..WARANG CITI NUMBER NINETY
        "\u11c5a","\u11c5b","\u11c5c","\u11c5d","\u11c5e","\u11c5f","\u11c60","\u11c61","\u11c62","\u11c63","\u11c64","\u11c65","\u11c66","\u11c67","\u11c68","\u11c69","\u11c6a","\u11c6b","\u11c6c",  # ; Numeric # No  [19] BHAIKSUKI NUMBER ONE..BHAIKSUKI HUNDREDS UNIT MARK
        "\u12400","\u12401","\u12402","\u12403","\u12404","\u12405","\u12406","\u12407","\u12408","\u12409","\u1240a","\u1240b","\u1240c","\u1240d","\u1240e","\u1240f","\u12410","\u12411","\u12412","\u12413","\u12414","\u12415","\u12416","\u12417","\u12418","\u12419","\u1241a","\u1241b","\u1241c","\u1241d","\u1241e","\u1241f","\u12420","\u12421","\u12422","\u12423","\u12424","\u12425","\u12426","\u12427","\u12428","\u12429","\u1242a","\u1242b","\u1242c","\u1242d","\u1242e","\u1242f","\u12430","\u12431","\u12432","\u12433","\u12434","\u12435","\u12436","\u12437","\u12438","\u12439","\u1243a","\u1243b","\u1243c","\u1243d","\u1243e","\u1243f","\u12440","\u12441","\u12442","\u12443","\u12444","\u12445","\u12446","\u12447","\u12448","\u12449","\u1244a","\u1244b","\u1244c","\u1244d","\u1244e","\u1244f","\u12450","\u12451","\u12452","\u12453","\u12454","\u12455","\u12456","\u12457","\u12458","\u12459","\u1245a","\u1245b","\u1245c","\u1245d","\u1245e","\u1245f","\u12460","\u12461","\u12462","\u12463","\u12464","\u12465","\u12466","\u12467","\u12468","\u12469","\u1246a","\u1246b","\u1246c","\u1246d","\u1246e",  # ; Numeric # Nl [111] CUNEIFORM NUMERIC SIGN TWO ASH..CUNEIFORM NUMERIC SIGN NINE U VARIANT FORM
        "\u16b5b","\u16b5c","\u16b5d","\u16b5e","\u16b5f","\u16b60","\u16b61",  # ; Numeric # No   [7] PAHAWH HMONG NUMBER TENS..PAHAWH HMONG NUMBER TRILLIONS
        "\u1d360","\u1d361","\u1d362","\u1d363","\u1d364","\u1d365","\u1d366","\u1d367","\u1d368","\u1d369","\u1d36a","\u1d36b","\u1d36c","\u1d36d","\u1d36e","\u1d36f","\u1d370","\u1d371",  # ; Numeric # No  [18] COUNTING ROD UNIT DIGIT ONE..COUNTING ROD TENS DIGIT NINE
        "\u1e8c7","\u1e8c8","\u1e8c9","\u1e8ca","\u1e8cb","\u1e8cc","\u1e8cd","\u1e8ce","\u1e8cf",  # ; Numeric # No   [9] MENDE KIKAKUI DIGIT ONE..MENDE KIKAKUI DIGIT NINE
        "\u1f10b","\u1f10c",  # ; Numeric # No   [2] DINGBAT CIRCLED SANS-SERIF DIGIT ZERO..DINGBAT NEGATIVE CIRCLED SANS-SERIF DIGIT ZERO
        "\u20001",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-20001
        "\u20064",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-20064
        "\u200E2",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-200E2
        "\u20121",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-20121
        "\u2092A",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-2092A
        "\u20983",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-20983
        "\u2098C",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-2098C
        "\u2099C",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-2099C
        "\u20AEA",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-20AEA
        "\u20AFD",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-20AFD
        "\u20B19",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-20B19
        "\u22390",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-22390
        "\u22998",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-22998
        "\u23B1B",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-23B1B
        "\u2626D",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-2626D
        "\u2F890",  # ; Numeric # Lo       CJK COMPATIBILITY IDEOGRAPH-2F890
        "\u00b2","\u00b3",  # ; Digit # No   [2] SUPERSCRIPT TWO..SUPERSCRIPT THREE
        "\u00B9",  # ; Digit # No       SUPERSCRIPT ONE
        "\u1369","\u136a","\u136b","\u136c","\u136d","\u136e","\u136f","\u1370","\u1371",  # ; Digit # No   [9] ETHIOPIC DIGIT ONE..ETHIOPIC DIGIT NINE
        "\u19DA",  # ; Digit # No       NEW TAI LUE THAM DIGIT ONE
        "\u2070",  # ; Digit # No       SUPERSCRIPT ZERO
        "\u2074","\u2075","\u2076","\u2077","\u2078","\u2079",  # ; Digit # No   [6] SUPERSCRIPT FOUR..SUPERSCRIPT NINE
        "\u2080","\u2081","\u2082","\u2083","\u2084","\u2085","\u2086","\u2087","\u2088","\u2089",  # ; Digit # No  [10] SUBSCRIPT ZERO..SUBSCRIPT NINE
        "\u2460","\u2461","\u2462","\u2463","\u2464","\u2465","\u2466","\u2467","\u2468",  # ; Digit # No   [9] CIRCLED DIGIT ONE..CIRCLED DIGIT NINE
        "\u2474","\u2475","\u2476","\u2477","\u2478","\u2479","\u247a","\u247b","\u247c",  # ; Digit # No   [9] PARENTHESIZED DIGIT ONE..PARENTHESIZED DIGIT NINE
        "\u2488","\u2489","\u248a","\u248b","\u248c","\u248d","\u248e","\u248f","\u2490",  # ; Digit # No   [9] DIGIT ONE FULL STOP..DIGIT NINE FULL STOP
        "\u24EA",  # ; Digit # No       CIRCLED DIGIT ZERO
        "\u24f5","\u24f6","\u24f7","\u24f8","\u24f9","\u24fa","\u24fb","\u24fc","\u24fd",  # ; Digit # No   [9] DOUBLE CIRCLED DIGIT ONE..DOUBLE CIRCLED DIGIT NINE
        "\u24FF",  # ; Digit # No       NEGATIVE CIRCLED DIGIT ZERO
        "\u2776","\u2777","\u2778","\u2779","\u277a","\u277b","\u277c","\u277d","\u277e",  # ; Digit # No   [9] DINGBAT NEGATIVE CIRCLED DIGIT ONE..DINGBAT NEGATIVE CIRCLED DIGIT NINE
        "\u2780","\u2781","\u2782","\u2783","\u2784","\u2785","\u2786","\u2787","\u2788",  # ; Digit # No   [9] DINGBAT CIRCLED SANS-SERIF DIGIT ONE..DINGBAT CIRCLED SANS-SERIF DIGIT NINE
        "\u278a","\u278b","\u278c","\u278d","\u278e","\u278f","\u2790","\u2791","\u2792",  # ; Digit # No   [9] DINGBAT NEGATIVE CIRCLED SANS-SERIF DIGIT ONE..DINGBAT NEGATIVE CIRCLED SANS-SERIF DIGIT NINE
        "\u10a40","\u10a41","\u10a42","\u10a43",  # ; Digit # No   [4] KHAROSHTHI DIGIT ONE..KHAROSHTHI DIGIT FOUR
        "\u10e60","\u10e61","\u10e62","\u10e63","\u10e64","\u10e65","\u10e66","\u10e67","\u10e68",  # ; Digit # No   [9] RUMI DIGIT ONE..RUMI DIGIT NINE
        "\u11052","\u11053","\u11054","\u11055","\u11056","\u11057","\u11058","\u11059","\u1105a",  # ; Digit # No   [9] BRAHMI NUMBER ONE..BRAHMI NUMBER NINE
        "\u1f100","\u1f101","\u1f102","\u1f103","\u1f104","\u1f105","\u1f106","\u1f107","\u1f108","\u1f109","\u1f10a",  # ; Digit # No  [11] DIGIT ZERO FULL STOP..DIGIT NINE COMMA
        "\u0030","\u0031","\u0032","\u0033","\u0034","\u0035","\u0036","\u0037","\u0038","\u0039",  # ; Decimal # Nd  [10] DIGIT ZERO..DIGIT NINE
        "\u0660","\u0661","\u0662","\u0663","\u0664","\u0665","\u0666","\u0667","\u0668","\u0669",  # ; Decimal # Nd  [10] ARABIC-INDIC DIGIT ZERO..ARABIC-INDIC DIGIT NINE
        "\u06f0","\u06f1","\u06f2","\u06f3","\u06f4","\u06f5","\u06f6","\u06f7","\u06f8","\u06f9",  # ; Decimal # Nd  [10] EXTENDED ARABIC-INDIC DIGIT ZERO..EXTENDED ARABIC-INDIC DIGIT NINE
        "\u07c0","\u07c1","\u07c2","\u07c3","\u07c4","\u07c5","\u07c6","\u07c7","\u07c8","\u07c9",  # ; Decimal # Nd  [10] NKO DIGIT ZERO..NKO DIGIT NINE
        "\u0966","\u0967","\u0968","\u0969","\u096a","\u096b","\u096c","\u096d","\u096e","\u096f",  # ; Decimal # Nd  [10] DEVANAGARI DIGIT ZERO..DEVANAGARI DIGIT NINE
        "\u09e6","\u09e7","\u09e8","\u09e9","\u09ea","\u09eb","\u09ec","\u09ed","\u09ee","\u09ef",  # ; Decimal # Nd  [10] BENGALI DIGIT ZERO..BENGALI DIGIT NINE
        "\u0a66","\u0a67","\u0a68","\u0a69","\u0a6a","\u0a6b","\u0a6c","\u0a6d","\u0a6e","\u0a6f",  # ; Decimal # Nd  [10] GURMUKHI DIGIT ZERO..GURMUKHI DIGIT NINE
        "\u0ae6","\u0ae7","\u0ae8","\u0ae9","\u0aea","\u0aeb","\u0aec","\u0aed","\u0aee","\u0aef",  # ; Decimal # Nd  [10] GUJARATI DIGIT ZERO..GUJARATI DIGIT NINE
        "\u0b66","\u0b67","\u0b68","\u0b69","\u0b6a","\u0b6b","\u0b6c","\u0b6d","\u0b6e","\u0b6f",  # ; Decimal # Nd  [10] ORIYA DIGIT ZERO..ORIYA DIGIT NINE
        "\u0be6","\u0be7","\u0be8","\u0be9","\u0bea","\u0beb","\u0bec","\u0bed","\u0bee","\u0bef",  # ; Decimal # Nd  [10] TAMIL DIGIT ZERO..TAMIL DIGIT NINE
        "\u0c66","\u0c67","\u0c68","\u0c69","\u0c6a","\u0c6b","\u0c6c","\u0c6d","\u0c6e","\u0c6f",  # ; Decimal # Nd  [10] TELUGU DIGIT ZERO..TELUGU DIGIT NINE
        "\u0ce6","\u0ce7","\u0ce8","\u0ce9","\u0cea","\u0ceb","\u0cec","\u0ced","\u0cee","\u0cef",  # ; Decimal # Nd  [10] KANNADA DIGIT ZERO..KANNADA DIGIT NINE
        "\u0d66","\u0d67","\u0d68","\u0d69","\u0d6a","\u0d6b","\u0d6c","\u0d6d","\u0d6e","\u0d6f",  # ; Decimal # Nd  [10] MALAYALAM DIGIT ZERO..MALAYALAM DIGIT NINE
        "\u0de6","\u0de7","\u0de8","\u0de9","\u0dea","\u0deb","\u0dec","\u0ded","\u0dee","\u0def",  # ; Decimal # Nd  [10] SINHALA LITH DIGIT ZERO..SINHALA LITH DIGIT NINE
        "\u0e50","\u0e51","\u0e52","\u0e53","\u0e54","\u0e55","\u0e56","\u0e57","\u0e58","\u0e59",  # ; Decimal # Nd  [10] THAI DIGIT ZERO..THAI DIGIT NINE
        "\u0ed0","\u0ed1","\u0ed2","\u0ed3","\u0ed4","\u0ed5","\u0ed6","\u0ed7","\u0ed8","\u0ed9",  # ; Decimal # Nd  [10] LAO DIGIT ZERO..LAO DIGIT NINE
        "\u0f20","\u0f21","\u0f22","\u0f23","\u0f24","\u0f25","\u0f26","\u0f27","\u0f28","\u0f29",  # ; Decimal # Nd  [10] TIBETAN DIGIT ZERO..TIBETAN DIGIT NINE
        "\u1040","\u1041","\u1042","\u1043","\u1044","\u1045","\u1046","\u1047","\u1048","\u1049",  # ; Decimal # Nd  [10] MYANMAR DIGIT ZERO..MYANMAR DIGIT NINE
        "\u1090","\u1091","\u1092","\u1093","\u1094","\u1095","\u1096","\u1097","\u1098","\u1099",  # ; Decimal # Nd  [10] MYANMAR SHAN DIGIT ZERO..MYANMAR SHAN DIGIT NINE
        "\u17e0","\u17e1","\u17e2","\u17e3","\u17e4","\u17e5","\u17e6","\u17e7","\u17e8","\u17e9",  # ; Decimal # Nd  [10] KHMER DIGIT ZERO..KHMER DIGIT NINE
        "\u1810","\u1811","\u1812","\u1813","\u1814","\u1815","\u1816","\u1817","\u1818","\u1819",  # ; Decimal # Nd  [10] MONGOLIAN DIGIT ZERO..MONGOLIAN DIGIT NINE
        "\u1946","\u1947","\u1948","\u1949","\u194a","\u194b","\u194c","\u194d","\u194e","\u194f",  # ; Decimal # Nd  [10] LIMBU DIGIT ZERO..LIMBU DIGIT NINE
        "\u19d0","\u19d1","\u19d2","\u19d3","\u19d4","\u19d5","\u19d6","\u19d7","\u19d8","\u19d9",  # ; Decimal # Nd  [10] NEW TAI LUE DIGIT ZERO..NEW TAI LUE DIGIT NINE
        "\u1a80","\u1a81","\u1a82","\u1a83","\u1a84","\u1a85","\u1a86","\u1a87","\u1a88","\u1a89",  # ; Decimal # Nd  [10] TAI THAM HORA DIGIT ZERO..TAI THAM HORA DIGIT NINE
        "\u1a90","\u1a91","\u1a92","\u1a93","\u1a94","\u1a95","\u1a96","\u1a97","\u1a98","\u1a99",  # ; Decimal # Nd  [10] TAI THAM THAM DIGIT ZERO..TAI THAM THAM DIGIT NINE
        "\u1b50","\u1b51","\u1b52","\u1b53","\u1b54","\u1b55","\u1b56","\u1b57","\u1b58","\u1b59",  # ; Decimal # Nd  [10] BALINESE DIGIT ZERO..BALINESE DIGIT NINE
        "\u1bb0","\u1bb1","\u1bb2","\u1bb3","\u1bb4","\u1bb5","\u1bb6","\u1bb7","\u1bb8","\u1bb9",  # ; Decimal # Nd  [10] SUNDANESE DIGIT ZERO..SUNDANESE DIGIT NINE
        "\u1c40","\u1c41","\u1c42","\u1c43","\u1c44","\u1c45","\u1c46","\u1c47","\u1c48","\u1c49",  # ; Decimal # Nd  [10] LEPCHA DIGIT ZERO..LEPCHA DIGIT NINE
        "\u1c50","\u1c51","\u1c52","\u1c53","\u1c54","\u1c55","\u1c56","\u1c57","\u1c58","\u1c59",  # ; Decimal # Nd  [10] OL CHIKI DIGIT ZERO..OL CHIKI DIGIT NINE
        "\ua620","\ua621","\ua622","\ua623","\ua624","\ua625","\ua626","\ua627","\ua628","\ua629",  # ; Decimal # Nd  [10] VAI DIGIT ZERO..VAI DIGIT NINE
        "\ua8d0","\ua8d1","\ua8d2","\ua8d3","\ua8d4","\ua8d5","\ua8d6","\ua8d7","\ua8d8","\ua8d9",  # ; Decimal # Nd  [10] SAURASHTRA DIGIT ZERO..SAURASHTRA DIGIT NINE
        "\ua900","\ua901","\ua902","\ua903","\ua904","\ua905","\ua906","\ua907","\ua908","\ua909",  # ; Decimal # Nd  [10] KAYAH LI DIGIT ZERO..KAYAH LI DIGIT NINE
        "\ua9d0","\ua9d1","\ua9d2","\ua9d3","\ua9d4","\ua9d5","\ua9d6","\ua9d7","\ua9d8","\ua9d9",  # ; Decimal # Nd  [10] JAVANESE DIGIT ZERO..JAVANESE DIGIT NINE
        "\ua9f0","\ua9f1","\ua9f2","\ua9f3","\ua9f4","\ua9f5","\ua9f6","\ua9f7","\ua9f8","\ua9f9",  # ; Decimal # Nd  [10] MYANMAR TAI LAING DIGIT ZERO..MYANMAR TAI LAING DIGIT NINE
        "\uaa50","\uaa51","\uaa52","\uaa53","\uaa54","\uaa55","\uaa56","\uaa57","\uaa58","\uaa59",  # ; Decimal # Nd  [10] CHAM DIGIT ZERO..CHAM DIGIT NINE
        "\uabf0","\uabf1","\uabf2","\uabf3","\uabf4","\uabf5","\uabf6","\uabf7","\uabf8","\uabf9",  # ; Decimal # Nd  [10] MEETEI MAYEK DIGIT ZERO..MEETEI MAYEK DIGIT NINE
        "\uff10","\uff11","\uff12","\uff13","\uff14","\uff15","\uff16","\uff17","\uff18","\uff19",  # ; Decimal # Nd  [10] FULLWIDTH DIGIT ZERO..FULLWIDTH DIGIT NINE
        "\u104a0","\u104a1","\u104a2","\u104a3","\u104a4","\u104a5","\u104a6","\u104a7","\u104a8","\u104a9",  # ; Decimal # Nd  [10] OSMANYA DIGIT ZERO..OSMANYA DIGIT NINE
        "\u11066","\u11067","\u11068","\u11069","\u1106a","\u1106b","\u1106c","\u1106d","\u1106e","\u1106f",  # ; Decimal # Nd  [10] BRAHMI DIGIT ZERO..BRAHMI DIGIT NINE
        "\u110f0","\u110f1","\u110f2","\u110f3","\u110f4","\u110f5","\u110f6","\u110f7","\u110f8","\u110f9",  # ; Decimal # Nd  [10] SORA SOMPENG DIGIT ZERO..SORA SOMPENG DIGIT NINE
        "\u11136","\u11137","\u11138","\u11139","\u1113a","\u1113b","\u1113c","\u1113d","\u1113e","\u1113f",  # ; Decimal # Nd  [10] CHAKMA DIGIT ZERO..CHAKMA DIGIT NINE
        "\u111d0","\u111d1","\u111d2","\u111d3","\u111d4","\u111d5","\u111d6","\u111d7","\u111d8","\u111d9",  # ; Decimal # Nd  [10] SHARADA DIGIT ZERO..SHARADA DIGIT NINE
        "\u112f0","\u112f1","\u112f2","\u112f3","\u112f4","\u112f5","\u112f6","\u112f7","\u112f8","\u112f9",  # ; Decimal # Nd  [10] KHUDAWADI DIGIT ZERO..KHUDAWADI DIGIT NINE
        "\u11450","\u11451","\u11452","\u11453","\u11454","\u11455","\u11456","\u11457","\u11458","\u11459",  # ; Decimal # Nd  [10] NEWA DIGIT ZERO..NEWA DIGIT NINE
        "\u114d0","\u114d1","\u114d2","\u114d3","\u114d4","\u114d5","\u114d6","\u114d7","\u114d8","\u114d9",  # ; Decimal # Nd  [10] TIRHUTA DIGIT ZERO..TIRHUTA DIGIT NINE
        "\u11650","\u11651","\u11652","\u11653","\u11654","\u11655","\u11656","\u11657","\u11658","\u11659",  # ; Decimal # Nd  [10] MODI DIGIT ZERO..MODI DIGIT NINE
        "\u116c0","\u116c1","\u116c2","\u116c3","\u116c4","\u116c5","\u116c6","\u116c7","\u116c8","\u116c9",  # ; Decimal # Nd  [10] TAKRI DIGIT ZERO..TAKRI DIGIT NINE
        "\u11730","\u11731","\u11732","\u11733","\u11734","\u11735","\u11736","\u11737","\u11738","\u11739",  # ; Decimal # Nd  [10] AHOM DIGIT ZERO..AHOM DIGIT NINE
        "\u118e0","\u118e1","\u118e2","\u118e3","\u118e4","\u118e5","\u118e6","\u118e7","\u118e8","\u118e9",  # ; Decimal # Nd  [10] WARANG CITI DIGIT ZERO..WARANG CITI DIGIT NINE
        "\u11c50","\u11c51","\u11c52","\u11c53","\u11c54","\u11c55","\u11c56","\u11c57","\u11c58","\u11c59",  # ; Decimal # Nd  [10] BHAIKSUKI DIGIT ZERO..BHAIKSUKI DIGIT NINE
        "\u11d50","\u11d51","\u11d52","\u11d53","\u11d54","\u11d55","\u11d56","\u11d57","\u11d58","\u11d59",  # ; Decimal # Nd  [10] MASARAM GONDI DIGIT ZERO..MASARAM GONDI DIGIT NINE
        "\u16a60","\u16a61","\u16a62","\u16a63","\u16a64","\u16a65","\u16a66","\u16a67","\u16a68","\u16a69",  # ; Decimal # Nd  [10] MRO DIGIT ZERO..MRO DIGIT NINE
        "\u16b50","\u16b51","\u16b52","\u16b53","\u16b54","\u16b55","\u16b56","\u16b57","\u16b58","\u16b59",  # ; Decimal # Nd  [10] PAHAWH HMONG DIGIT ZERO..PAHAWH HMONG DIGIT NINE
        "\u1d7ce","\u1d7cf","\u1d7d0","\u1d7d1","\u1d7d2","\u1d7d3","\u1d7d4","\u1d7d5","\u1d7d6","\u1d7d7","\u1d7d8","\u1d7d9","\u1d7da","\u1d7db","\u1d7dc","\u1d7dd","\u1d7de","\u1d7df","\u1d7e0","\u1d7e1","\u1d7e2","\u1d7e3","\u1d7e4","\u1d7e5","\u1d7e6","\u1d7e7","\u1d7e8","\u1d7e9","\u1d7ea","\u1d7eb","\u1d7ec","\u1d7ed","\u1d7ee","\u1d7ef","\u1d7f0","\u1d7f1","\u1d7f2","\u1d7f3","\u1d7f4","\u1d7f5","\u1d7f6","\u1d7f7","\u1d7f8","\u1d7f9","\u1d7fa","\u1d7fb","\u1d7fc","\u1d7fd","\u1d7fe","\u1d7ff",  # ; Decimal # Nd  [50] MATHEMATICAL BOLD DIGIT ZERO..MATHEMATICAL MONOSPACE DIGIT NINE
        "\u1e950","\u1e951","\u1e952","\u1e953","\u1e954","\u1e955","\u1e956","\u1e957","\u1e958","\u1e959",  # ; Decimal # Nd  [10] ADLAM DIGIT ZERO..ADLAM DIGIT NINE
    ]
    test_data.each do |string|
      assert @validator.valid_encoding?(string), "U10_DerivedNumericType: #{string}"
      assert string.force_encoding("UTF-8").valid_encoding?, "U10_DerivedNumericType: #{string}" if @vercheck
    end
  end

end

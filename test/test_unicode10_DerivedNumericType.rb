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
        "\d00bc","\d00bd","\d00be",  # ; Numeric # No   [3] VULGAR FRACTION ONE QUARTER..VULGAR FRACTION THREE QUARTERS
        "\d09f4","\d09f5","\d09f6","\d09f7","\d09f8","\d09f9",  # ; Numeric # No   [6] BENGALI CURRENCY NUMERATOR ONE..BENGALI CURRENCY DENOMINATOR SIXTEEN
        "\d0b72","\d0b73","\d0b74","\d0b75","\d0b76","\d0b77",  # ; Numeric # No   [6] ORIYA FRACTION ONE QUARTER..ORIYA FRACTION THREE SIXTEENTHS
        "\d0bf0","\d0bf1","\d0bf2",  # ; Numeric # No   [3] TAMIL NUMBER TEN..TAMIL NUMBER ONE THOUSAND
        "\d0c78","\d0c79","\d0c7a","\d0c7b","\d0c7c","\d0c7d","\d0c7e",  # ; Numeric # No   [7] TELUGU FRACTION DIGIT ZERO FOR ODD POWERS OF FOUR..TELUGU FRACTION DIGIT THREE FOR EVEN POWERS OF FOUR
        "\d0d58","\d0d59","\d0d5a","\d0d5b","\d0d5c","\d0d5d","\d0d5e",  # ; Numeric # No   [7] MALAYALAM FRACTION ONE ONE-HUNDRED-AND-SIXTIETH..MALAYALAM FRACTION ONE FIFTH
        "\d0d70","\d0d71","\d0d72","\d0d73","\d0d74","\d0d75","\d0d76","\d0d77","\d0d78",  # ; Numeric # No   [9] MALAYALAM NUMBER TEN..MALAYALAM FRACTION THREE SIXTEENTHS
        "\d0f2a","\d0f2b","\d0f2c","\d0f2d","\d0f2e","\d0f2f","\d0f30","\d0f31","\d0f32","\d0f33",  # ; Numeric # No  [10] TIBETAN DIGIT HALF ONE..TIBETAN DIGIT HALF ZERO
        "\d1372","\d1373","\d1374","\d1375","\d1376","\d1377","\d1378","\d1379","\d137a","\d137b","\d137c",  # ; Numeric # No  [11] ETHIOPIC NUMBER TEN..ETHIOPIC NUMBER TEN THOUSAND
        "\d16ee","\d16ef","\d16f0",  # ; Numeric # Nl   [3] RUNIC ARLAUG SYMBOL..RUNIC BELGTHOR SYMBOL
        "\d17f0","\d17f1","\d17f2","\d17f3","\d17f4","\d17f5","\d17f6","\d17f7","\d17f8","\d17f9",  # ; Numeric # No  [10] KHMER SYMBOL LEK ATTAK SON..KHMER SYMBOL LEK ATTAK PRAM-BUON
        "\d2150","\d2151","\d2152","\d2153","\d2154","\d2155","\d2156","\d2157","\d2158","\d2159","\d215a","\d215b","\d215c","\d215d","\d215e","\d215f",  # ; Numeric # No  [16] VULGAR FRACTION ONE SEVENTH..FRACTION NUMERATOR ONE
        "\d2160","\d2161","\d2162","\d2163","\d2164","\d2165","\d2166","\d2167","\d2168","\d2169","\d216a","\d216b","\d216c","\d216d","\d216e","\d216f","\d2170","\d2171","\d2172","\d2173","\d2174","\d2175","\d2176","\d2177","\d2178","\d2179","\d217a","\d217b","\d217c","\d217d","\d217e","\d217f","\d2180","\d2181","\d2182",  # ; Numeric # Nl  [35] ROMAN NUMERAL ONE..ROMAN NUMERAL TEN THOUSAND
        "\d2185","\d2186","\d2187","\d2188",  # ; Numeric # Nl   [4] ROMAN NUMERAL SIX LATE FORM..ROMAN NUMERAL ONE HUNDRED THOUSAND
        "\d2189",  # ; Numeric # No       VULGAR FRACTION ZERO THIRDS
        "\d2469","\d246a","\d246b","\d246c","\d246d","\d246e","\d246f","\d2470","\d2471","\d2472","\d2473",  # ; Numeric # No  [11] CIRCLED NUMBER TEN..CIRCLED NUMBER TWENTY
        "\d247d","\d247e","\d247f","\d2480","\d2481","\d2482","\d2483","\d2484","\d2485","\d2486","\d2487",  # ; Numeric # No  [11] PARENTHESIZED NUMBER TEN..PARENTHESIZED NUMBER TWENTY
        "\d2491","\d2492","\d2493","\d2494","\d2495","\d2496","\d2497","\d2498","\d2499","\d249a","\d249b",  # ; Numeric # No  [11] NUMBER TEN FULL STOP..NUMBER TWENTY FULL STOP
        "\d24eb","\d24ec","\d24ed","\d24ee","\d24ef","\d24f0","\d24f1","\d24f2","\d24f3","\d24f4",  # ; Numeric # No  [10] NEGATIVE CIRCLED NUMBER ELEVEN..NEGATIVE CIRCLED NUMBER TWENTY
        "\d24FE",  # ; Numeric # No       DOUBLE CIRCLED NUMBER TEN
        "\d277F",  # ; Numeric # No       DINGBAT NEGATIVE CIRCLED NUMBER TEN
        "\d2789",  # ; Numeric # No       DINGBAT CIRCLED SANS-SERIF NUMBER TEN
        "\d2793",  # ; Numeric # No       DINGBAT NEGATIVE CIRCLED SANS-SERIF NUMBER TEN
        "\d2CFD",  # ; Numeric # No       COPTIC FRACTION ONE HALF
        "\d3007",  # ; Numeric # Nl       IDEOGRAPHIC NUMBER ZERO
        "\d3021","\d3022","\d3023","\d3024","\d3025","\d3026","\d3027","\d3028","\d3029",  # ; Numeric # Nl   [9] HANGZHOU NUMERAL ONE..HANGZHOU NUMERAL NINE
        "\d3038","\d3039","\d303a",  # ; Numeric # Nl   [3] HANGZHOU NUMERAL TEN..HANGZHOU NUMERAL THIRTY
        "\d3192","\d3193","\d3194","\d3195",  # ; Numeric # No   [4] IDEOGRAPHIC ANNOTATION ONE MARK..IDEOGRAPHIC ANNOTATION FOUR MARK
        "\d3220","\d3221","\d3222","\d3223","\d3224","\d3225","\d3226","\d3227","\d3228","\d3229",  # ; Numeric # No  [10] PARENTHESIZED IDEOGRAPH ONE..PARENTHESIZED IDEOGRAPH TEN
        "\d3248","\d3249","\d324a","\d324b","\d324c","\d324d","\d324e","\d324f",  # ; Numeric # No   [8] CIRCLED NUMBER TEN ON BLACK SQUARE..CIRCLED NUMBER EIGHTY ON BLACK SQUARE
        "\d3251","\d3252","\d3253","\d3254","\d3255","\d3256","\d3257","\d3258","\d3259","\d325a","\d325b","\d325c","\d325d","\d325e","\d325f",  # ; Numeric # No  [15] CIRCLED NUMBER TWENTY ONE..CIRCLED NUMBER THIRTY FIVE
        "\d3280","\d3281","\d3282","\d3283","\d3284","\d3285","\d3286","\d3287","\d3288","\d3289",  # ; Numeric # No  [10] CIRCLED IDEOGRAPH ONE..CIRCLED IDEOGRAPH TEN
        "\d32b1","\d32b2","\d32b3","\d32b4","\d32b5","\d32b6","\d32b7","\d32b8","\d32b9","\d32ba","\d32bb","\d32bc","\d32bd","\d32be","\d32bf",  # ; Numeric # No  [15] CIRCLED NUMBER THIRTY SIX..CIRCLED NUMBER FIFTY
        "\d3405",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-3405
        "\d3483",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-3483
        "\d382A",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-382A
        "\d3B4D",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-3B4D
        "\d4E00",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-4E00
        "\d4E03",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-4E03
        "\d4E07",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-4E07
        "\d4E09",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-4E09
        "\d4E5D",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-4E5D
        "\d4E8C",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-4E8C
        "\d4E94",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-4E94
        "\d4E96",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-4E96
        "\d4ebf","\d4ec0",  # ; Numeric # Lo   [2] CJK UNIFIED IDEOGRAPH-4EBF..CJK UNIFIED IDEOGRAPH-4EC0
        "\d4EDF",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-4EDF
        "\d4EE8",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-4EE8
        "\d4F0D",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-4F0D
        "\d4F70",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-4F70
        "\d5104",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-5104
        "\d5146",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-5146
        "\d5169",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-5169
        "\d516B",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-516B
        "\d516D",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-516D
        "\d5341",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-5341
        "\d5343","\d5344","\d5345",  # ; Numeric # Lo   [3] CJK UNIFIED IDEOGRAPH-5343..CJK UNIFIED IDEOGRAPH-5345
        "\d534C",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-534C
        "\d53c1","\d53c2","\d53c3","\d53c4",  # ; Numeric # Lo   [4] CJK UNIFIED IDEOGRAPH-53C1..CJK UNIFIED IDEOGRAPH-53C4
        "\d56DB",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-56DB
        "\d58F1",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-58F1
        "\d58F9",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-58F9
        "\d5E7A",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-5E7A
        "\d5efe","\d5eff",  # ; Numeric # Lo   [2] CJK UNIFIED IDEOGRAPH-5EFE..CJK UNIFIED IDEOGRAPH-5EFF
        "\d5f0c","\d5f0d","\d5f0e",  # ; Numeric # Lo   [3] CJK UNIFIED IDEOGRAPH-5F0C..CJK UNIFIED IDEOGRAPH-5F0E
        "\d5F10",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-5F10
        "\d62FE",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-62FE
        "\d634C",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-634C
        "\d67D2",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-67D2
        "\d6F06",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-6F06
        "\d7396",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-7396
        "\d767E",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-767E
        "\d8086",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-8086
        "\d842C",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-842C
        "\d8CAE",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-8CAE
        "\d8CB3",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-8CB3
        "\d8D30",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-8D30
        "\d9621",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-9621
        "\d9646",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-9646
        "\d964C",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-964C
        "\d9678",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-9678
        "\d96F6",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-96F6
        "\da6e6","\da6e7","\da6e8","\da6e9","\da6ea","\da6eb","\da6ec","\da6ed","\da6ee","\da6ef",  # ; Numeric # Nl  [10] BAMUM LETTER MO..BAMUM LETTER KOGHOM
        "\da830","\da831","\da832","\da833","\da834","\da835",  # ; Numeric # No   [6] NORTH INDIC FRACTION ONE QUARTER..NORTH INDIC FRACTION THREE SIXTEENTHS
        "\dF96B",  # ; Numeric # Lo       CJK COMPATIBILITY IDEOGRAPH-F96B
        "\dF973",  # ; Numeric # Lo       CJK COMPATIBILITY IDEOGRAPH-F973
        "\dF978",  # ; Numeric # Lo       CJK COMPATIBILITY IDEOGRAPH-F978
        "\dF9B2",  # ; Numeric # Lo       CJK COMPATIBILITY IDEOGRAPH-F9B2
        "\dF9D1",  # ; Numeric # Lo       CJK COMPATIBILITY IDEOGRAPH-F9D1
        "\dF9D3",  # ; Numeric # Lo       CJK COMPATIBILITY IDEOGRAPH-F9D3
        "\dF9FD",  # ; Numeric # Lo       CJK COMPATIBILITY IDEOGRAPH-F9FD
        "\d10107","\d10108","\d10109","\d1010a","\d1010b","\d1010c","\d1010d","\d1010e","\d1010f","\d10110","\d10111","\d10112","\d10113","\d10114","\d10115","\d10116","\d10117","\d10118","\d10119","\d1011a","\d1011b","\d1011c","\d1011d","\d1011e","\d1011f","\d10120","\d10121","\d10122","\d10123","\d10124","\d10125","\d10126","\d10127","\d10128","\d10129","\d1012a","\d1012b","\d1012c","\d1012d","\d1012e","\d1012f","\d10130","\d10131","\d10132","\d10133",  # ; Numeric # No  [45] AEGEAN NUMBER ONE..AEGEAN NUMBER NINETY THOUSAND
        "\d10140","\d10141","\d10142","\d10143","\d10144","\d10145","\d10146","\d10147","\d10148","\d10149","\d1014a","\d1014b","\d1014c","\d1014d","\d1014e","\d1014f","\d10150","\d10151","\d10152","\d10153","\d10154","\d10155","\d10156","\d10157","\d10158","\d10159","\d1015a","\d1015b","\d1015c","\d1015d","\d1015e","\d1015f","\d10160","\d10161","\d10162","\d10163","\d10164","\d10165","\d10166","\d10167","\d10168","\d10169","\d1016a","\d1016b","\d1016c","\d1016d","\d1016e","\d1016f","\d10170","\d10171","\d10172","\d10173","\d10174",  # ; Numeric # Nl  [53] GREEK ACROPHONIC ATTIC ONE QUARTER..GREEK ACROPHONIC STRATIAN FIFTY MNAS
        "\d10175","\d10176","\d10177","\d10178",  # ; Numeric # No   [4] GREEK ONE HALF SIGN..GREEK THREE QUARTERS SIGN
        "\d1018a","\d1018b",  # ; Numeric # No   [2] GREEK ZERO SIGN..GREEK ONE QUARTER SIGN
        "\d102e1","\d102e2","\d102e3","\d102e4","\d102e5","\d102e6","\d102e7","\d102e8","\d102e9","\d102ea","\d102eb","\d102ec","\d102ed","\d102ee","\d102ef","\d102f0","\d102f1","\d102f2","\d102f3","\d102f4","\d102f5","\d102f6","\d102f7","\d102f8","\d102f9","\d102fa","\d102fb",  # ; Numeric # No  [27] COPTIC EPACT DIGIT ONE..COPTIC EPACT NUMBER NINE HUNDRED
        "\d10320","\d10321","\d10322","\d10323",  # ; Numeric # No   [4] OLD ITALIC NUMERAL ONE..OLD ITALIC NUMERAL FIFTY
        "\d10341",  # ; Numeric # Nl       GOTHIC LETTER NINETY
        "\d1034A",  # ; Numeric # Nl       GOTHIC LETTER NINE HUNDRED
        "\d103d1","\d103d2","\d103d3","\d103d4","\d103d5",  # ; Numeric # Nl   [5] OLD PERSIAN NUMBER ONE..OLD PERSIAN NUMBER HUNDRED
        "\d10858","\d10859","\d1085a","\d1085b","\d1085c","\d1085d","\d1085e","\d1085f",  # ; Numeric # No   [8] IMPERIAL ARAMAIC NUMBER ONE..IMPERIAL ARAMAIC NUMBER TEN THOUSAND
        "\d10879","\d1087a","\d1087b","\d1087c","\d1087d","\d1087e","\d1087f",  # ; Numeric # No   [7] PALMYRENE NUMBER ONE..PALMYRENE NUMBER TWENTY
        "\d108a7","\d108a8","\d108a9","\d108aa","\d108ab","\d108ac","\d108ad","\d108ae","\d108af",  # ; Numeric # No   [9] NABATAEAN NUMBER ONE..NABATAEAN NUMBER ONE HUNDRED
        "\d108fb","\d108fc","\d108fd","\d108fe","\d108ff",  # ; Numeric # No   [5] HATRAN NUMBER ONE..HATRAN NUMBER ONE HUNDRED
        "\d10916","\d10917","\d10918","\d10919","\d1091a","\d1091b",  # ; Numeric # No   [6] PHOENICIAN NUMBER ONE..PHOENICIAN NUMBER THREE
        "\d109bc","\d109bd",  # ; Numeric # No   [2] MEROITIC CURSIVE FRACTION ELEVEN TWELFTHS..MEROITIC CURSIVE FRACTION ONE HALF
        "\d109c0","\d109c1","\d109c2","\d109c3","\d109c4","\d109c5","\d109c6","\d109c7","\d109c8","\d109c9","\d109ca","\d109cb","\d109cc","\d109cd","\d109ce","\d109cf",  # ; Numeric # No  [16] MEROITIC CURSIVE NUMBER ONE..MEROITIC CURSIVE NUMBER SEVENTY
        "\d109d2","\d109d3","\d109d4","\d109d5","\d109d6","\d109d7","\d109d8","\d109d9","\d109da","\d109db","\d109dc","\d109dd","\d109de","\d109df","\d109e0","\d109e1","\d109e2","\d109e3","\d109e4","\d109e5","\d109e6","\d109e7","\d109e8","\d109e9","\d109ea","\d109eb","\d109ec","\d109ed","\d109ee","\d109ef","\d109f0","\d109f1","\d109f2","\d109f3","\d109f4","\d109f5","\d109f6","\d109f7","\d109f8","\d109f9","\d109fa","\d109fb","\d109fc","\d109fd","\d109fe","\d109ff",  # ; Numeric # No  [46] MEROITIC CURSIVE NUMBER ONE HUNDRED..MEROITIC CURSIVE FRACTION TEN TWELFTHS
        "\d10a44","\d10a45","\d10a46","\d10a47",  # ; Numeric # No   [4] KHAROSHTHI NUMBER TEN..KHAROSHTHI NUMBER ONE THOUSAND
        "\d10a7d","\d10a7e",  # ; Numeric # No   [2] OLD SOUTH ARABIAN NUMBER ONE..OLD SOUTH ARABIAN NUMBER FIFTY
        "\d10a9d","\d10a9e","\d10a9f",  # ; Numeric # No   [3] OLD NORTH ARABIAN NUMBER ONE..OLD NORTH ARABIAN NUMBER TWENTY
        "\d10aeb","\d10aec","\d10aed","\d10aee","\d10aef",  # ; Numeric # No   [5] MANICHAEAN NUMBER ONE..MANICHAEAN NUMBER ONE HUNDRED
        "\d10b58","\d10b59","\d10b5a","\d10b5b","\d10b5c","\d10b5d","\d10b5e","\d10b5f",  # ; Numeric # No   [8] INSCRIPTIONAL PARTHIAN NUMBER ONE..INSCRIPTIONAL PARTHIAN NUMBER ONE THOUSAND
        "\d10b78","\d10b79","\d10b7a","\d10b7b","\d10b7c","\d10b7d","\d10b7e","\d10b7f",  # ; Numeric # No   [8] INSCRIPTIONAL PAHLAVI NUMBER ONE..INSCRIPTIONAL PAHLAVI NUMBER ONE THOUSAND
        "\d10ba9","\d10baa","\d10bab","\d10bac","\d10bad","\d10bae","\d10baf",  # ; Numeric # No   [7] PSALTER PAHLAVI NUMBER ONE..PSALTER PAHLAVI NUMBER ONE HUNDRED
        "\d10cfa","\d10cfb","\d10cfc","\d10cfd","\d10cfe","\d10cff",  # ; Numeric # No   [6] OLD HUNGARIAN NUMBER ONE..OLD HUNGARIAN NUMBER ONE THOUSAND
        "\d10e69","\d10e6a","\d10e6b","\d10e6c","\d10e6d","\d10e6e","\d10e6f","\d10e70","\d10e71","\d10e72","\d10e73","\d10e74","\d10e75","\d10e76","\d10e77","\d10e78","\d10e79","\d10e7a","\d10e7b","\d10e7c","\d10e7d","\d10e7e",  # ; Numeric # No  [22] RUMI NUMBER TEN..RUMI FRACTION TWO THIRDS
        "\d1105b","\d1105c","\d1105d","\d1105e","\d1105f","\d11060","\d11061","\d11062","\d11063","\d11064","\d11065",  # ; Numeric # No  [11] BRAHMI NUMBER TEN..BRAHMI NUMBER ONE THOUSAND
        "\d111e1","\d111e2","\d111e3","\d111e4","\d111e5","\d111e6","\d111e7","\d111e8","\d111e9","\d111ea","\d111eb","\d111ec","\d111ed","\d111ee","\d111ef","\d111f0","\d111f1","\d111f2","\d111f3","\d111f4",  # ; Numeric # No  [20] SINHALA ARCHAIC DIGIT ONE..SINHALA ARCHAIC NUMBER ONE THOUSAND
        "\d1173a","\d1173b",  # ; Numeric # No   [2] AHOM NUMBER TEN..AHOM NUMBER TWENTY
        "\d118ea","\d118eb","\d118ec","\d118ed","\d118ee","\d118ef","\d118f0","\d118f1","\d118f2",  # ; Numeric # No   [9] WARANG CITI NUMBER TEN..WARANG CITI NUMBER NINETY
        "\d11c5a","\d11c5b","\d11c5c","\d11c5d","\d11c5e","\d11c5f","\d11c60","\d11c61","\d11c62","\d11c63","\d11c64","\d11c65","\d11c66","\d11c67","\d11c68","\d11c69","\d11c6a","\d11c6b","\d11c6c",  # ; Numeric # No  [19] BHAIKSUKI NUMBER ONE..BHAIKSUKI HUNDREDS UNIT MARK
        "\d12400","\d12401","\d12402","\d12403","\d12404","\d12405","\d12406","\d12407","\d12408","\d12409","\d1240a","\d1240b","\d1240c","\d1240d","\d1240e","\d1240f","\d12410","\d12411","\d12412","\d12413","\d12414","\d12415","\d12416","\d12417","\d12418","\d12419","\d1241a","\d1241b","\d1241c","\d1241d","\d1241e","\d1241f","\d12420","\d12421","\d12422","\d12423","\d12424","\d12425","\d12426","\d12427","\d12428","\d12429","\d1242a","\d1242b","\d1242c","\d1242d","\d1242e","\d1242f","\d12430","\d12431","\d12432","\d12433","\d12434","\d12435","\d12436","\d12437","\d12438","\d12439","\d1243a","\d1243b","\d1243c","\d1243d","\d1243e","\d1243f","\d12440","\d12441","\d12442","\d12443","\d12444","\d12445","\d12446","\d12447","\d12448","\d12449","\d1244a","\d1244b","\d1244c","\d1244d","\d1244e","\d1244f","\d12450","\d12451","\d12452","\d12453","\d12454","\d12455","\d12456","\d12457","\d12458","\d12459","\d1245a","\d1245b","\d1245c","\d1245d","\d1245e","\d1245f","\d12460","\d12461","\d12462","\d12463","\d12464","\d12465","\d12466","\d12467","\d12468","\d12469","\d1246a","\d1246b","\d1246c","\d1246d","\d1246e",  # ; Numeric # Nl [111] CUNEIFORM NUMERIC SIGN TWO ASH..CUNEIFORM NUMERIC SIGN NINE U VARIANT FORM
        "\d16b5b","\d16b5c","\d16b5d","\d16b5e","\d16b5f","\d16b60","\d16b61",  # ; Numeric # No   [7] PAHAWH HMONG NUMBER TENS..PAHAWH HMONG NUMBER TRILLIONS
        "\d1d360","\d1d361","\d1d362","\d1d363","\d1d364","\d1d365","\d1d366","\d1d367","\d1d368","\d1d369","\d1d36a","\d1d36b","\d1d36c","\d1d36d","\d1d36e","\d1d36f","\d1d370","\d1d371",  # ; Numeric # No  [18] COUNTING ROD UNIT DIGIT ONE..COUNTING ROD TENS DIGIT NINE
        "\d1e8c7","\d1e8c8","\d1e8c9","\d1e8ca","\d1e8cb","\d1e8cc","\d1e8cd","\d1e8ce","\d1e8cf",  # ; Numeric # No   [9] MENDE KIKAKUI DIGIT ONE..MENDE KIKAKUI DIGIT NINE
        "\d1f10b","\d1f10c",  # ; Numeric # No   [2] DINGBAT CIRCLED SANS-SERIF DIGIT ZERO..DINGBAT NEGATIVE CIRCLED SANS-SERIF DIGIT ZERO
        "\d20001",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-20001
        "\d20064",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-20064
        "\d200E2",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-200E2
        "\d20121",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-20121
        "\d2092A",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-2092A
        "\d20983",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-20983
        "\d2098C",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-2098C
        "\d2099C",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-2099C
        "\d20AEA",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-20AEA
        "\d20AFD",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-20AFD
        "\d20B19",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-20B19
        "\d22390",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-22390
        "\d22998",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-22998
        "\d23B1B",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-23B1B
        "\d2626D",  # ; Numeric # Lo       CJK UNIFIED IDEOGRAPH-2626D
        "\d2F890",  # ; Numeric # Lo       CJK COMPATIBILITY IDEOGRAPH-2F890
        "\d00b2","\d00b3",  # ; Digit # No   [2] SUPERSCRIPT TWO..SUPERSCRIPT THREE
        "\d00B9",  # ; Digit # No       SUPERSCRIPT ONE
        "\d1369","\d136a","\d136b","\d136c","\d136d","\d136e","\d136f","\d1370","\d1371",  # ; Digit # No   [9] ETHIOPIC DIGIT ONE..ETHIOPIC DIGIT NINE
        "\d19DA",  # ; Digit # No       NEW TAI LUE THAM DIGIT ONE
        "\d2070",  # ; Digit # No       SUPERSCRIPT ZERO
        "\d2074","\d2075","\d2076","\d2077","\d2078","\d2079",  # ; Digit # No   [6] SUPERSCRIPT FOUR..SUPERSCRIPT NINE
        "\d2080","\d2081","\d2082","\d2083","\d2084","\d2085","\d2086","\d2087","\d2088","\d2089",  # ; Digit # No  [10] SUBSCRIPT ZERO..SUBSCRIPT NINE
        "\d2460","\d2461","\d2462","\d2463","\d2464","\d2465","\d2466","\d2467","\d2468",  # ; Digit # No   [9] CIRCLED DIGIT ONE..CIRCLED DIGIT NINE
        "\d2474","\d2475","\d2476","\d2477","\d2478","\d2479","\d247a","\d247b","\d247c",  # ; Digit # No   [9] PARENTHESIZED DIGIT ONE..PARENTHESIZED DIGIT NINE
        "\d2488","\d2489","\d248a","\d248b","\d248c","\d248d","\d248e","\d248f","\d2490",  # ; Digit # No   [9] DIGIT ONE FULL STOP..DIGIT NINE FULL STOP
        "\d24EA",  # ; Digit # No       CIRCLED DIGIT ZERO
        "\d24f5","\d24f6","\d24f7","\d24f8","\d24f9","\d24fa","\d24fb","\d24fc","\d24fd",  # ; Digit # No   [9] DOUBLE CIRCLED DIGIT ONE..DOUBLE CIRCLED DIGIT NINE
        "\d24FF",  # ; Digit # No       NEGATIVE CIRCLED DIGIT ZERO
        "\d2776","\d2777","\d2778","\d2779","\d277a","\d277b","\d277c","\d277d","\d277e",  # ; Digit # No   [9] DINGBAT NEGATIVE CIRCLED DIGIT ONE..DINGBAT NEGATIVE CIRCLED DIGIT NINE
        "\d2780","\d2781","\d2782","\d2783","\d2784","\d2785","\d2786","\d2787","\d2788",  # ; Digit # No   [9] DINGBAT CIRCLED SANS-SERIF DIGIT ONE..DINGBAT CIRCLED SANS-SERIF DIGIT NINE
        "\d278a","\d278b","\d278c","\d278d","\d278e","\d278f","\d2790","\d2791","\d2792",  # ; Digit # No   [9] DINGBAT NEGATIVE CIRCLED SANS-SERIF DIGIT ONE..DINGBAT NEGATIVE CIRCLED SANS-SERIF DIGIT NINE
        "\d10a40","\d10a41","\d10a42","\d10a43",  # ; Digit # No   [4] KHAROSHTHI DIGIT ONE..KHAROSHTHI DIGIT FOUR
        "\d10e60","\d10e61","\d10e62","\d10e63","\d10e64","\d10e65","\d10e66","\d10e67","\d10e68",  # ; Digit # No   [9] RUMI DIGIT ONE..RUMI DIGIT NINE
        "\d11052","\d11053","\d11054","\d11055","\d11056","\d11057","\d11058","\d11059","\d1105a",  # ; Digit # No   [9] BRAHMI NUMBER ONE..BRAHMI NUMBER NINE
        "\d1f100","\d1f101","\d1f102","\d1f103","\d1f104","\d1f105","\d1f106","\d1f107","\d1f108","\d1f109","\d1f10a",  # ; Digit # No  [11] DIGIT ZERO FULL STOP..DIGIT NINE COMMA
        "\d0030","\d0031","\d0032","\d0033","\d0034","\d0035","\d0036","\d0037","\d0038","\d0039",  # ; Decimal # Nd  [10] DIGIT ZERO..DIGIT NINE
        "\d0660","\d0661","\d0662","\d0663","\d0664","\d0665","\d0666","\d0667","\d0668","\d0669",  # ; Decimal # Nd  [10] ARABIC-INDIC DIGIT ZERO..ARABIC-INDIC DIGIT NINE
        "\d06f0","\d06f1","\d06f2","\d06f3","\d06f4","\d06f5","\d06f6","\d06f7","\d06f8","\d06f9",  # ; Decimal # Nd  [10] EXTENDED ARABIC-INDIC DIGIT ZERO..EXTENDED ARABIC-INDIC DIGIT NINE
        "\d07c0","\d07c1","\d07c2","\d07c3","\d07c4","\d07c5","\d07c6","\d07c7","\d07c8","\d07c9",  # ; Decimal # Nd  [10] NKO DIGIT ZERO..NKO DIGIT NINE
        "\d0966","\d0967","\d0968","\d0969","\d096a","\d096b","\d096c","\d096d","\d096e","\d096f",  # ; Decimal # Nd  [10] DEVANAGARI DIGIT ZERO..DEVANAGARI DIGIT NINE
        "\d09e6","\d09e7","\d09e8","\d09e9","\d09ea","\d09eb","\d09ec","\d09ed","\d09ee","\d09ef",  # ; Decimal # Nd  [10] BENGALI DIGIT ZERO..BENGALI DIGIT NINE
        "\d0a66","\d0a67","\d0a68","\d0a69","\d0a6a","\d0a6b","\d0a6c","\d0a6d","\d0a6e","\d0a6f",  # ; Decimal # Nd  [10] GURMUKHI DIGIT ZERO..GURMUKHI DIGIT NINE
        "\d0ae6","\d0ae7","\d0ae8","\d0ae9","\d0aea","\d0aeb","\d0aec","\d0aed","\d0aee","\d0aef",  # ; Decimal # Nd  [10] GUJARATI DIGIT ZERO..GUJARATI DIGIT NINE
        "\d0b66","\d0b67","\d0b68","\d0b69","\d0b6a","\d0b6b","\d0b6c","\d0b6d","\d0b6e","\d0b6f",  # ; Decimal # Nd  [10] ORIYA DIGIT ZERO..ORIYA DIGIT NINE
        "\d0be6","\d0be7","\d0be8","\d0be9","\d0bea","\d0beb","\d0bec","\d0bed","\d0bee","\d0bef",  # ; Decimal # Nd  [10] TAMIL DIGIT ZERO..TAMIL DIGIT NINE
        "\d0c66","\d0c67","\d0c68","\d0c69","\d0c6a","\d0c6b","\d0c6c","\d0c6d","\d0c6e","\d0c6f",  # ; Decimal # Nd  [10] TELUGU DIGIT ZERO..TELUGU DIGIT NINE
        "\d0ce6","\d0ce7","\d0ce8","\d0ce9","\d0cea","\d0ceb","\d0cec","\d0ced","\d0cee","\d0cef",  # ; Decimal # Nd  [10] KANNADA DIGIT ZERO..KANNADA DIGIT NINE
        "\d0d66","\d0d67","\d0d68","\d0d69","\d0d6a","\d0d6b","\d0d6c","\d0d6d","\d0d6e","\d0d6f",  # ; Decimal # Nd  [10] MALAYALAM DIGIT ZERO..MALAYALAM DIGIT NINE
        "\d0de6","\d0de7","\d0de8","\d0de9","\d0dea","\d0deb","\d0dec","\d0ded","\d0dee","\d0def",  # ; Decimal # Nd  [10] SINHALA LITH DIGIT ZERO..SINHALA LITH DIGIT NINE
        "\d0e50","\d0e51","\d0e52","\d0e53","\d0e54","\d0e55","\d0e56","\d0e57","\d0e58","\d0e59",  # ; Decimal # Nd  [10] THAI DIGIT ZERO..THAI DIGIT NINE
        "\d0ed0","\d0ed1","\d0ed2","\d0ed3","\d0ed4","\d0ed5","\d0ed6","\d0ed7","\d0ed8","\d0ed9",  # ; Decimal # Nd  [10] LAO DIGIT ZERO..LAO DIGIT NINE
        "\d0f20","\d0f21","\d0f22","\d0f23","\d0f24","\d0f25","\d0f26","\d0f27","\d0f28","\d0f29",  # ; Decimal # Nd  [10] TIBETAN DIGIT ZERO..TIBETAN DIGIT NINE
        "\d1040","\d1041","\d1042","\d1043","\d1044","\d1045","\d1046","\d1047","\d1048","\d1049",  # ; Decimal # Nd  [10] MYANMAR DIGIT ZERO..MYANMAR DIGIT NINE
        "\d1090","\d1091","\d1092","\d1093","\d1094","\d1095","\d1096","\d1097","\d1098","\d1099",  # ; Decimal # Nd  [10] MYANMAR SHAN DIGIT ZERO..MYANMAR SHAN DIGIT NINE
        "\d17e0","\d17e1","\d17e2","\d17e3","\d17e4","\d17e5","\d17e6","\d17e7","\d17e8","\d17e9",  # ; Decimal # Nd  [10] KHMER DIGIT ZERO..KHMER DIGIT NINE
        "\d1810","\d1811","\d1812","\d1813","\d1814","\d1815","\d1816","\d1817","\d1818","\d1819",  # ; Decimal # Nd  [10] MONGOLIAN DIGIT ZERO..MONGOLIAN DIGIT NINE
        "\d1946","\d1947","\d1948","\d1949","\d194a","\d194b","\d194c","\d194d","\d194e","\d194f",  # ; Decimal # Nd  [10] LIMBU DIGIT ZERO..LIMBU DIGIT NINE
        "\d19d0","\d19d1","\d19d2","\d19d3","\d19d4","\d19d5","\d19d6","\d19d7","\d19d8","\d19d9",  # ; Decimal # Nd  [10] NEW TAI LUE DIGIT ZERO..NEW TAI LUE DIGIT NINE
        "\d1a80","\d1a81","\d1a82","\d1a83","\d1a84","\d1a85","\d1a86","\d1a87","\d1a88","\d1a89",  # ; Decimal # Nd  [10] TAI THAM HORA DIGIT ZERO..TAI THAM HORA DIGIT NINE
        "\d1a90","\d1a91","\d1a92","\d1a93","\d1a94","\d1a95","\d1a96","\d1a97","\d1a98","\d1a99",  # ; Decimal # Nd  [10] TAI THAM THAM DIGIT ZERO..TAI THAM THAM DIGIT NINE
        "\d1b50","\d1b51","\d1b52","\d1b53","\d1b54","\d1b55","\d1b56","\d1b57","\d1b58","\d1b59",  # ; Decimal # Nd  [10] BALINESE DIGIT ZERO..BALINESE DIGIT NINE
        "\d1bb0","\d1bb1","\d1bb2","\d1bb3","\d1bb4","\d1bb5","\d1bb6","\d1bb7","\d1bb8","\d1bb9",  # ; Decimal # Nd  [10] SUNDANESE DIGIT ZERO..SUNDANESE DIGIT NINE
        "\d1c40","\d1c41","\d1c42","\d1c43","\d1c44","\d1c45","\d1c46","\d1c47","\d1c48","\d1c49",  # ; Decimal # Nd  [10] LEPCHA DIGIT ZERO..LEPCHA DIGIT NINE
        "\d1c50","\d1c51","\d1c52","\d1c53","\d1c54","\d1c55","\d1c56","\d1c57","\d1c58","\d1c59",  # ; Decimal # Nd  [10] OL CHIKI DIGIT ZERO..OL CHIKI DIGIT NINE
        "\da620","\da621","\da622","\da623","\da624","\da625","\da626","\da627","\da628","\da629",  # ; Decimal # Nd  [10] VAI DIGIT ZERO..VAI DIGIT NINE
        "\da8d0","\da8d1","\da8d2","\da8d3","\da8d4","\da8d5","\da8d6","\da8d7","\da8d8","\da8d9",  # ; Decimal # Nd  [10] SAURASHTRA DIGIT ZERO..SAURASHTRA DIGIT NINE
        "\da900","\da901","\da902","\da903","\da904","\da905","\da906","\da907","\da908","\da909",  # ; Decimal # Nd  [10] KAYAH LI DIGIT ZERO..KAYAH LI DIGIT NINE
        "\da9d0","\da9d1","\da9d2","\da9d3","\da9d4","\da9d5","\da9d6","\da9d7","\da9d8","\da9d9",  # ; Decimal # Nd  [10] JAVANESE DIGIT ZERO..JAVANESE DIGIT NINE
        "\da9f0","\da9f1","\da9f2","\da9f3","\da9f4","\da9f5","\da9f6","\da9f7","\da9f8","\da9f9",  # ; Decimal # Nd  [10] MYANMAR TAI LAING DIGIT ZERO..MYANMAR TAI LAING DIGIT NINE
        "\daa50","\daa51","\daa52","\daa53","\daa54","\daa55","\daa56","\daa57","\daa58","\daa59",  # ; Decimal # Nd  [10] CHAM DIGIT ZERO..CHAM DIGIT NINE
        "\dabf0","\dabf1","\dabf2","\dabf3","\dabf4","\dabf5","\dabf6","\dabf7","\dabf8","\dabf9",  # ; Decimal # Nd  [10] MEETEI MAYEK DIGIT ZERO..MEETEI MAYEK DIGIT NINE
        "\dff10","\dff11","\dff12","\dff13","\dff14","\dff15","\dff16","\dff17","\dff18","\dff19",  # ; Decimal # Nd  [10] FULLWIDTH DIGIT ZERO..FULLWIDTH DIGIT NINE
        "\d104a0","\d104a1","\d104a2","\d104a3","\d104a4","\d104a5","\d104a6","\d104a7","\d104a8","\d104a9",  # ; Decimal # Nd  [10] OSMANYA DIGIT ZERO..OSMANYA DIGIT NINE
        "\d11066","\d11067","\d11068","\d11069","\d1106a","\d1106b","\d1106c","\d1106d","\d1106e","\d1106f",  # ; Decimal # Nd  [10] BRAHMI DIGIT ZERO..BRAHMI DIGIT NINE
        "\d110f0","\d110f1","\d110f2","\d110f3","\d110f4","\d110f5","\d110f6","\d110f7","\d110f8","\d110f9",  # ; Decimal # Nd  [10] SORA SOMPENG DIGIT ZERO..SORA SOMPENG DIGIT NINE
        "\d11136","\d11137","\d11138","\d11139","\d1113a","\d1113b","\d1113c","\d1113d","\d1113e","\d1113f",  # ; Decimal # Nd  [10] CHAKMA DIGIT ZERO..CHAKMA DIGIT NINE
        "\d111d0","\d111d1","\d111d2","\d111d3","\d111d4","\d111d5","\d111d6","\d111d7","\d111d8","\d111d9",  # ; Decimal # Nd  [10] SHARADA DIGIT ZERO..SHARADA DIGIT NINE
        "\d112f0","\d112f1","\d112f2","\d112f3","\d112f4","\d112f5","\d112f6","\d112f7","\d112f8","\d112f9",  # ; Decimal # Nd  [10] KHUDAWADI DIGIT ZERO..KHUDAWADI DIGIT NINE
        "\d11450","\d11451","\d11452","\d11453","\d11454","\d11455","\d11456","\d11457","\d11458","\d11459",  # ; Decimal # Nd  [10] NEWA DIGIT ZERO..NEWA DIGIT NINE
        "\d114d0","\d114d1","\d114d2","\d114d3","\d114d4","\d114d5","\d114d6","\d114d7","\d114d8","\d114d9",  # ; Decimal # Nd  [10] TIRHUTA DIGIT ZERO..TIRHUTA DIGIT NINE
        "\d11650","\d11651","\d11652","\d11653","\d11654","\d11655","\d11656","\d11657","\d11658","\d11659",  # ; Decimal # Nd  [10] MODI DIGIT ZERO..MODI DIGIT NINE
        "\d116c0","\d116c1","\d116c2","\d116c3","\d116c4","\d116c5","\d116c6","\d116c7","\d116c8","\d116c9",  # ; Decimal # Nd  [10] TAKRI DIGIT ZERO..TAKRI DIGIT NINE
        "\d11730","\d11731","\d11732","\d11733","\d11734","\d11735","\d11736","\d11737","\d11738","\d11739",  # ; Decimal # Nd  [10] AHOM DIGIT ZERO..AHOM DIGIT NINE
        "\d118e0","\d118e1","\d118e2","\d118e3","\d118e4","\d118e5","\d118e6","\d118e7","\d118e8","\d118e9",  # ; Decimal # Nd  [10] WARANG CITI DIGIT ZERO..WARANG CITI DIGIT NINE
        "\d11c50","\d11c51","\d11c52","\d11c53","\d11c54","\d11c55","\d11c56","\d11c57","\d11c58","\d11c59",  # ; Decimal # Nd  [10] BHAIKSUKI DIGIT ZERO..BHAIKSUKI DIGIT NINE
        "\d11d50","\d11d51","\d11d52","\d11d53","\d11d54","\d11d55","\d11d56","\d11d57","\d11d58","\d11d59",  # ; Decimal # Nd  [10] MASARAM GONDI DIGIT ZERO..MASARAM GONDI DIGIT NINE
        "\d16a60","\d16a61","\d16a62","\d16a63","\d16a64","\d16a65","\d16a66","\d16a67","\d16a68","\d16a69",  # ; Decimal # Nd  [10] MRO DIGIT ZERO..MRO DIGIT NINE
        "\d16b50","\d16b51","\d16b52","\d16b53","\d16b54","\d16b55","\d16b56","\d16b57","\d16b58","\d16b59",  # ; Decimal # Nd  [10] PAHAWH HMONG DIGIT ZERO..PAHAWH HMONG DIGIT NINE
        "\d1d7ce","\d1d7cf","\d1d7d0","\d1d7d1","\d1d7d2","\d1d7d3","\d1d7d4","\d1d7d5","\d1d7d6","\d1d7d7","\d1d7d8","\d1d7d9","\d1d7da","\d1d7db","\d1d7dc","\d1d7dd","\d1d7de","\d1d7df","\d1d7e0","\d1d7e1","\d1d7e2","\d1d7e3","\d1d7e4","\d1d7e5","\d1d7e6","\d1d7e7","\d1d7e8","\d1d7e9","\d1d7ea","\d1d7eb","\d1d7ec","\d1d7ed","\d1d7ee","\d1d7ef","\d1d7f0","\d1d7f1","\d1d7f2","\d1d7f3","\d1d7f4","\d1d7f5","\d1d7f6","\d1d7f7","\d1d7f8","\d1d7f9","\d1d7fa","\d1d7fb","\d1d7fc","\d1d7fd","\d1d7fe","\d1d7ff",  # ; Decimal # Nd  [50] MATHEMATICAL BOLD DIGIT ZERO..MATHEMATICAL MONOSPACE DIGIT NINE
        "\d1e950","\d1e951","\d1e952","\d1e953","\d1e954","\d1e955","\d1e956","\d1e957","\d1e958","\d1e959",  # ; Decimal # Nd  [10] ADLAM DIGIT ZERO..ADLAM DIGIT NINE
    ]
    test_data.each do |string|
      assert @validator.valid_encoding?(string), "U10_DerivedNumericType: #{string}"
      assert string.force_encoding("UTF-8").valid_encoding?, "U10_DerivedNumericType: #{string}" if @vercheck
    end
  end

end

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
class TestUnicode10DerivedJoiningType < Test::Unit::TestCase
  #
  def setup
    @validator = UTF8::Validator.new
    @vercheck = ((RUBY_VERSION =~ /1.9/) or (RUBY_VERSION =~ /2./)) ? true : false
  end

  #
  def teardown
    @validator = nil
  end

  def test_unicode10_DerivedJoiningType
    test_data = [
        "\u0640",  # ; C # Lm       ARABIC TATWEEL
        "\u07FA",  # ; C # Lm       NKO LAJANYALAN
        "\u180A",  # ; C # Po       MONGOLIAN NIRUGU
        "\u200D",  # ; C # Cf       ZERO WIDTH JOINER
        "\u0620",  # ; D # Lo       ARABIC LETTER KASHMIRI YEH
        "\u0626",  # ; D # Lo       ARABIC LETTER YEH WITH HAMZA ABOVE
        "\u0628",  # ; D # Lo       ARABIC LETTER BEH
        "\u062a","\u062b","\u062c","\u062d","\u062e",  # ; D # Lo   [5] ARABIC LETTER TEH..ARABIC LETTER KHAH
        "\u0633","\u0634","\u0635","\u0636","\u0637","\u0638","\u0639","\u063a","\u063b","\u063c","\u063d","\u063e","\u063f",  # ; D # Lo  [13] ARABIC LETTER SEEN..ARABIC LETTER FARSI YEH WITH THREE DOTS ABOVE
        "\u0641","\u0642","\u0643","\u0644","\u0645","\u0646","\u0647",  # ; D # Lo   [7] ARABIC LETTER FEH..ARABIC LETTER HEH
        "\u0649","\u064a",  # ; D # Lo   [2] ARABIC LETTER ALEF MAKSURA..ARABIC LETTER YEH
        "\u066e","\u066f",  # ; D # Lo   [2] ARABIC LETTER DOTLESS BEH..ARABIC LETTER DOTLESS QAF
        "\u0678","\u0679","\u067a","\u067b","\u067c","\u067d","\u067e","\u067f","\u0680","\u0681","\u0682","\u0683","\u0684","\u0685","\u0686","\u0687",  # ; D # Lo  [16] ARABIC LETTER HIGH HAMZA YEH..ARABIC LETTER TCHEHEH
        "\u069a","\u069b","\u069c","\u069d","\u069e","\u069f","\u06a0","\u06a1","\u06a2","\u06a3","\u06a4","\u06a5","\u06a6","\u06a7","\u06a8","\u06a9","\u06aa","\u06ab","\u06ac","\u06ad","\u06ae","\u06af","\u06b0","\u06b1","\u06b2","\u06b3","\u06b4","\u06b5","\u06b6","\u06b7","\u06b8","\u06b9","\u06ba","\u06bb","\u06bc","\u06bd","\u06be","\u06bf",  # ; D # Lo  [38] ARABIC LETTER SEEN WITH DOT BELOW AND DOT ABOVE..ARABIC LETTER TCHEH WITH DOT ABOVE
        "\u06c1","\u06c2",  # ; D # Lo   [2] ARABIC LETTER HEH GOAL..ARABIC LETTER HEH GOAL WITH HAMZA ABOVE
        "\u06CC",  # ; D # Lo       ARABIC LETTER FARSI YEH
        "\u06CE",  # ; D # Lo       ARABIC LETTER YEH WITH SMALL V
        "\u06d0","\u06d1",  # ; D # Lo   [2] ARABIC LETTER E..ARABIC LETTER YEH WITH THREE DOTS BELOW
        "\u06fa","\u06fb","\u06fc",  # ; D # Lo   [3] ARABIC LETTER SHEEN WITH DOT BELOW..ARABIC LETTER GHAIN WITH DOT BELOW
        "\u06FF",  # ; D # Lo       ARABIC LETTER HEH WITH INVERTED V
        "\u0712","\u0713","\u0714",  # ; D # Lo   [3] SYRIAC LETTER BETH..SYRIAC LETTER GAMAL GARSHUNI
        "\u071a","\u071b","\u071c","\u071d",  # ; D # Lo   [4] SYRIAC LETTER HETH..SYRIAC LETTER YUDH
        "\u071f","\u0720","\u0721","\u0722","\u0723","\u0724","\u0725","\u0726","\u0727",  # ; D # Lo   [9] SYRIAC LETTER KAPH..SYRIAC LETTER REVERSED PE
        "\u0729",  # ; D # Lo       SYRIAC LETTER QAPH
        "\u072B",  # ; D # Lo       SYRIAC LETTER SHIN
        "\u072d","\u072e",  # ; D # Lo   [2] SYRIAC LETTER PERSIAN BHETH..SYRIAC LETTER PERSIAN GHAMAL
        "\u074e","\u074f","\u0750","\u0751","\u0752","\u0753","\u0754","\u0755","\u0756","\u0757","\u0758",  # ; D # Lo  [11] SYRIAC LETTER SOGDIAN KHAPH..ARABIC LETTER HAH WITH THREE DOTS POINTING UPWARDS BELOW
        "\u075c","\u075d","\u075e","\u075f","\u0760","\u0761","\u0762","\u0763","\u0764","\u0765","\u0766","\u0767","\u0768","\u0769","\u076a",  # ; D # Lo  [15] ARABIC LETTER SEEN WITH FOUR DOTS ABOVE..ARABIC LETTER LAM WITH BAR
        "\u076d","\u076e","\u076f","\u0770",  # ; D # Lo   [4] ARABIC LETTER SEEN WITH TWO DOTS VERTICALLY ABOVE..ARABIC LETTER SEEN WITH SMALL ARABIC LETTER TAH AND TWO DOTS
        "\u0772",  # ; D # Lo       ARABIC LETTER HAH WITH SMALL ARABIC LETTER TAH ABOVE
        "\u0775","\u0776","\u0777",  # ; D # Lo   [3] ARABIC LETTER FARSI YEH WITH EXTENDED ARABIC-INDIC DIGIT TWO ABOVE..ARABIC LETTER FARSI YEH WITH EXTENDED ARABIC-INDIC DIGIT FOUR BELOW
        "\u077a","\u077b","\u077c","\u077d","\u077e","\u077f",  # ; D # Lo   [6] ARABIC LETTER YEH BARREE WITH EXTENDED ARABIC-INDIC DIGIT TWO ABOVE..ARABIC LETTER KAF WITH TWO DOTS ABOVE
        "\u07ca","\u07cb","\u07cc","\u07cd","\u07ce","\u07cf","\u07d0","\u07d1","\u07d2","\u07d3","\u07d4","\u07d5","\u07d6","\u07d7","\u07d8","\u07d9","\u07da","\u07db","\u07dc","\u07dd","\u07de","\u07df","\u07e0","\u07e1","\u07e2","\u07e3","\u07e4","\u07e5","\u07e6","\u07e7","\u07e8","\u07e9","\u07ea",  # ; D # Lo  [33] NKO LETTER A..NKO LETTER JONA RA
        "\u0841","\u0842","\u0843","\u0844","\u0845",  # ; D # Lo   [5] MANDAIC LETTER AB..MANDAIC LETTER USHENNA
        "\u0848",  # ; D # Lo       MANDAIC LETTER ATT
        "\u084a","\u084b","\u084c","\u084d","\u084e","\u084f","\u0850","\u0851","\u0852","\u0853",  # ; D # Lo  [10] MANDAIC LETTER AK..MANDAIC LETTER AR
        "\u0855",  # ; D # Lo       MANDAIC LETTER AT
        "\u0860",  # ; D # Lo       SYRIAC LETTER MALAYALAM NGA
        "\u0862","\u0863","\u0864","\u0865",  # ; D # Lo   [4] SYRIAC LETTER MALAYALAM NYA..SYRIAC LETTER MALAYALAM NNNA
        "\u0868",  # ; D # Lo       SYRIAC LETTER MALAYALAM LLA
        "\u08a0","\u08a1","\u08a2","\u08a3","\u08a4","\u08a5","\u08a6","\u08a7","\u08a8","\u08a9",  # ; D # Lo  [10] ARABIC LETTER BEH WITH SMALL V BELOW..ARABIC LETTER YEH WITH TWO DOTS BELOW AND DOT ABOVE
        "\u08af","\u08b0",  # ; D # Lo   [2] ARABIC LETTER SAD WITH THREE DOTS BELOW..ARABIC LETTER GAF WITH INVERTED STROKE
        "\u08b3","\u08b4",  # ; D # Lo   [2] ARABIC LETTER AIN WITH THREE DOTS BELOW..ARABIC LETTER KAF WITH DOT BELOW
        "\u08b6","\u08b7","\u08b8",  # ; D # Lo   [3] ARABIC LETTER BEH WITH SMALL MEEM ABOVE..ARABIC LETTER TEH WITH SMALL TEH ABOVE
        "\u08ba","\u08bb","\u08bc","\u08bd",  # ; D # Lo   [4] ARABIC LETTER YEH WITH TWO DOTS BELOW AND SMALL NOON ABOVE..ARABIC LETTER AFRICAN NOON
        "\u1807",  # ; D # Po       MONGOLIAN SIBE SYLLABLE BOUNDARY MARKER
        "\u1820","\u1821","\u1822","\u1823","\u1824","\u1825","\u1826","\u1827","\u1828","\u1829","\u182a","\u182b","\u182c","\u182d","\u182e","\u182f","\u1830","\u1831","\u1832","\u1833","\u1834","\u1835","\u1836","\u1837","\u1838","\u1839","\u183a","\u183b","\u183c","\u183d","\u183e","\u183f","\u1840","\u1841","\u1842",  # ; D # Lo  [35] MONGOLIAN LETTER A..MONGOLIAN LETTER CHI
        "\u1843",  # ; D # Lm       MONGOLIAN LETTER TODO LONG VOWEL SIGN
        "\u1844","\u1845","\u1846","\u1847","\u1848","\u1849","\u184a","\u184b","\u184c","\u184d","\u184e","\u184f","\u1850","\u1851","\u1852","\u1853","\u1854","\u1855","\u1856","\u1857","\u1858","\u1859","\u185a","\u185b","\u185c","\u185d","\u185e","\u185f","\u1860","\u1861","\u1862","\u1863","\u1864","\u1865","\u1866","\u1867","\u1868","\u1869","\u186a","\u186b","\u186c","\u186d","\u186e","\u186f","\u1870","\u1871","\u1872","\u1873","\u1874","\u1875","\u1876","\u1877",  # ; D # Lo  [52] MONGOLIAN LETTER TODO E..MONGOLIAN LETTER MANCHU ZHA
        "\u1887","\u1888","\u1889","\u188a","\u188b","\u188c","\u188d","\u188e","\u188f","\u1890","\u1891","\u1892","\u1893","\u1894","\u1895","\u1896","\u1897","\u1898","\u1899","\u189a","\u189b","\u189c","\u189d","\u189e","\u189f","\u18a0","\u18a1","\u18a2","\u18a3","\u18a4","\u18a5","\u18a6","\u18a7","\u18a8",  # ; D # Lo  [34] MONGOLIAN LETTER ALI GALI A..MONGOLIAN LETTER MANCHU ALI GALI BHA
        "\u18AA",  # ; D # Lo       MONGOLIAN LETTER MANCHU ALI GALI LHA
        "\ua840","\ua841","\ua842","\ua843","\ua844","\ua845","\ua846","\ua847","\ua848","\ua849","\ua84a","\ua84b","\ua84c","\ua84d","\ua84e","\ua84f","\ua850","\ua851","\ua852","\ua853","\ua854","\ua855","\ua856","\ua857","\ua858","\ua859","\ua85a","\ua85b","\ua85c","\ua85d","\ua85e","\ua85f","\ua860","\ua861","\ua862","\ua863","\ua864","\ua865","\ua866","\ua867","\ua868","\ua869","\ua86a","\ua86b","\ua86c","\ua86d","\ua86e","\ua86f","\ua870","\ua871",  # ; D # Lo  [50] PHAGS-PA LETTER KA..PHAGS-PA SUBJOINED LETTER RA
        "\u10ac0","\u10ac1","\u10ac2","\u10ac3","\u10ac4",  # ; D # Lo   [5] MANICHAEAN LETTER ALEPH..MANICHAEAN LETTER GHIMEL
        "\u10ad3","\u10ad4","\u10ad5","\u10ad6",  # ; D # Lo   [4] MANICHAEAN LETTER LAMEDH..MANICHAEAN LETTER MEM
        "\u10ad8","\u10ad9","\u10ada","\u10adb","\u10adc",  # ; D # Lo   [5] MANICHAEAN LETTER SAMEKH..MANICHAEAN LETTER FE
        "\u10ade","\u10adf","\u10ae0",  # ; D # Lo   [3] MANICHAEAN LETTER QOPH..MANICHAEAN LETTER QHOPH
        "\u10aeb","\u10aec","\u10aed","\u10aee",  # ; D # No   [4] MANICHAEAN NUMBER ONE..MANICHAEAN NUMBER TWENTY
        "\u10B80",  # ; D # Lo       PSALTER PAHLAVI LETTER ALEPH
        "\u10B82",  # ; D # Lo       PSALTER PAHLAVI LETTER GIMEL
        "\u10b86","\u10b87","\u10b88",  # ; D # Lo   [3] PSALTER PAHLAVI LETTER ZAYIN..PSALTER PAHLAVI LETTER YODH
        "\u10b8a","\u10b8b",  # ; D # Lo   [2] PSALTER PAHLAVI LETTER LAMEDH..PSALTER PAHLAVI LETTER MEM-QOPH
        "\u10B8D",  # ; D # Lo       PSALTER PAHLAVI LETTER SAMEKH
        "\u10B90",  # ; D # Lo       PSALTER PAHLAVI LETTER SHIN
        "\u10bad","\u10bae",  # ; D # No   [2] PSALTER PAHLAVI NUMBER TEN..PSALTER PAHLAVI NUMBER TWENTY
        "\u1e900","\u1e901","\u1e902","\u1e903","\u1e904","\u1e905","\u1e906","\u1e907","\u1e908","\u1e909","\u1e90a","\u1e90b","\u1e90c","\u1e90d","\u1e90e","\u1e90f","\u1e910","\u1e911","\u1e912","\u1e913","\u1e914","\u1e915","\u1e916","\u1e917","\u1e918","\u1e919","\u1e91a","\u1e91b","\u1e91c","\u1e91d","\u1e91e","\u1e91f","\u1e920","\u1e921","\u1e922","\u1e923","\u1e924","\u1e925","\u1e926","\u1e927","\u1e928","\u1e929","\u1e92a","\u1e92b","\u1e92c","\u1e92d","\u1e92e","\u1e92f","\u1e930","\u1e931","\u1e932","\u1e933","\u1e934","\u1e935","\u1e936","\u1e937","\u1e938","\u1e939","\u1e93a","\u1e93b","\u1e93c","\u1e93d","\u1e93e","\u1e93f","\u1e940","\u1e941","\u1e942","\u1e943",  # ; D # L&  [68] ADLAM CAPITAL LETTER ALIF..ADLAM SMALL LETTER SHA
        "\u0622","\u0623","\u0624","\u0625",  # ; R # Lo   [4] ARABIC LETTER ALEF WITH MADDA ABOVE..ARABIC LETTER ALEF WITH HAMZA BELOW
        "\u0627",  # ; R # Lo       ARABIC LETTER ALEF
        "\u0629",  # ; R # Lo       ARABIC LETTER TEH MARBUTA
        "\u062f","\u0630","\u0631","\u0632",  # ; R # Lo   [4] ARABIC LETTER DAL..ARABIC LETTER ZAIN
        "\u0648",  # ; R # Lo       ARABIC LETTER WAW
        "\u0671","\u0672","\u0673",  # ; R # Lo   [3] ARABIC LETTER ALEF WASLA..ARABIC LETTER ALEF WITH WAVY HAMZA BELOW
        "\u0675","\u0676","\u0677",  # ; R # Lo   [3] ARABIC LETTER HIGH HAMZA ALEF..ARABIC LETTER U WITH HAMZA ABOVE
        "\u0688","\u0689","\u068a","\u068b","\u068c","\u068d","\u068e","\u068f","\u0690","\u0691","\u0692","\u0693","\u0694","\u0695","\u0696","\u0697","\u0698","\u0699",  # ; R # Lo  [18] ARABIC LETTER DDAL..ARABIC LETTER REH WITH FOUR DOTS ABOVE
        "\u06C0",  # ; R # Lo       ARABIC LETTER HEH WITH YEH ABOVE
        "\u06c3","\u06c4","\u06c5","\u06c6","\u06c7","\u06c8","\u06c9","\u06ca","\u06cb",  # ; R # Lo   [9] ARABIC LETTER TEH MARBUTA GOAL..ARABIC LETTER VE
        "\u06CD",  # ; R # Lo       ARABIC LETTER YEH WITH TAIL
        "\u06CF",  # ; R # Lo       ARABIC LETTER WAW WITH DOT ABOVE
        "\u06d2","\u06d3",  # ; R # Lo   [2] ARABIC LETTER YEH BARREE..ARABIC LETTER YEH BARREE WITH HAMZA ABOVE
        "\u06D5",  # ; R # Lo       ARABIC LETTER AE
        "\u06ee","\u06ef",  # ; R # Lo   [2] ARABIC LETTER DAL WITH INVERTED V..ARABIC LETTER REH WITH INVERTED V
        "\u0710",  # ; R # Lo       SYRIAC LETTER ALAPH
        "\u0715","\u0716","\u0717","\u0718","\u0719",  # ; R # Lo   [5] SYRIAC LETTER DALATH..SYRIAC LETTER ZAIN
        "\u071E",  # ; R # Lo       SYRIAC LETTER YUDH HE
        "\u0728",  # ; R # Lo       SYRIAC LETTER SADHE
        "\u072A",  # ; R # Lo       SYRIAC LETTER RISH
        "\u072C",  # ; R # Lo       SYRIAC LETTER TAW
        "\u072F",  # ; R # Lo       SYRIAC LETTER PERSIAN DHALATH
        "\u074D",  # ; R # Lo       SYRIAC LETTER SOGDIAN ZHAIN
        "\u0759","\u075a","\u075b",  # ; R # Lo   [3] ARABIC LETTER DAL WITH TWO DOTS VERTICALLY BELOW AND SMALL TAH..ARABIC LETTER REH WITH STROKE
        "\u076b","\u076c",  # ; R # Lo   [2] ARABIC LETTER REH WITH TWO DOTS VERTICALLY ABOVE..ARABIC LETTER REH WITH HAMZA ABOVE
        "\u0771",  # ; R # Lo       ARABIC LETTER REH WITH SMALL ARABIC LETTER TAH AND TWO DOTS
        "\u0773","\u0774",  # ; R # Lo   [2] ARABIC LETTER ALEF WITH EXTENDED ARABIC-INDIC DIGIT TWO ABOVE..ARABIC LETTER ALEF WITH EXTENDED ARABIC-INDIC DIGIT THREE ABOVE
        "\u0778","\u0779",  # ; R # Lo   [2] ARABIC LETTER WAW WITH EXTENDED ARABIC-INDIC DIGIT TWO ABOVE..ARABIC LETTER WAW WITH EXTENDED ARABIC-INDIC DIGIT THREE ABOVE
        "\u0840",  # ; R # Lo       MANDAIC LETTER HALQA
        "\u0846","\u0847",  # ; R # Lo   [2] MANDAIC LETTER AZ..MANDAIC LETTER IT
        "\u0849",  # ; R # Lo       MANDAIC LETTER AKSA
        "\u0854",  # ; R # Lo       MANDAIC LETTER ASH
        "\u0867",  # ; R # Lo       SYRIAC LETTER MALAYALAM RA
        "\u0869","\u086a",  # ; R # Lo   [2] SYRIAC LETTER MALAYALAM LLLA..SYRIAC LETTER MALAYALAM SSA
        "\u08aa","\u08ab","\u08ac",  # ; R # Lo   [3] ARABIC LETTER REH WITH LOOP..ARABIC LETTER ROHINGYA YEH
        "\u08AE",  # ; R # Lo       ARABIC LETTER DAL WITH THREE DOTS BELOW
        "\u08b1","\u08b2",  # ; R # Lo   [2] ARABIC LETTER STRAIGHT WAW..ARABIC LETTER ZAIN WITH INVERTED V ABOVE
        "\u08B9",  # ; R # Lo       ARABIC LETTER REH WITH SMALL NOON ABOVE
        "\u10AC5",  # ; R # Lo       MANICHAEAN LETTER DALETH
        "\u10AC7",  # ; R # Lo       MANICHAEAN LETTER WAW
        "\u10ac9","\u10aca",  # ; R # Lo   [2] MANICHAEAN LETTER ZAYIN..MANICHAEAN LETTER ZHAYIN
        "\u10ace","\u10acf","\u10ad0","\u10ad1","\u10ad2",  # ; R # Lo   [5] MANICHAEAN LETTER TETH..MANICHAEAN LETTER KHAPH
        "\u10ADD",  # ; R # Lo       MANICHAEAN LETTER SADHE
        "\u10AE1",  # ; R # Lo       MANICHAEAN LETTER RESH
        "\u10AE4",  # ; R # Lo       MANICHAEAN LETTER TAW
        "\u10AEF",  # ; R # No       MANICHAEAN NUMBER ONE HUNDRED
        "\u10B81",  # ; R # Lo       PSALTER PAHLAVI LETTER BETH
        "\u10b83","\u10b84","\u10b85",  # ; R # Lo   [3] PSALTER PAHLAVI LETTER DALETH..PSALTER PAHLAVI LETTER WAW-AYIN-RESH
        "\u10B89",  # ; R # Lo       PSALTER PAHLAVI LETTER KAPH
        "\u10B8C",  # ; R # Lo       PSALTER PAHLAVI LETTER NUN
        "\u10b8e","\u10b8f",  # ; R # Lo   [2] PSALTER PAHLAVI LETTER PE..PSALTER PAHLAVI LETTER SADHE
        "\u10B91",  # ; R # Lo       PSALTER PAHLAVI LETTER TAW
        "\u10ba9","\u10baa","\u10bab","\u10bac",  # ; R # No   [4] PSALTER PAHLAVI NUMBER ONE..PSALTER PAHLAVI NUMBER FOUR
        "\uA872",  # ; L # Lo       PHAGS-PA SUPERFIXED LETTER RA
        "\u10ACD",  # ; L # Lo       MANICHAEAN LETTER HETH
        "\u10AD7",  # ; L # Lo       MANICHAEAN LETTER NUN
        "\u00AD",  # ; T # Cf       SOFT HYPHEN
        "\u0300","\u0301","\u0302","\u0303","\u0304","\u0305","\u0306","\u0307","\u0308","\u0309","\u030a","\u030b","\u030c","\u030d","\u030e","\u030f","\u0310","\u0311","\u0312","\u0313","\u0314","\u0315","\u0316","\u0317","\u0318","\u0319","\u031a","\u031b","\u031c","\u031d","\u031e","\u031f","\u0320","\u0321","\u0322","\u0323","\u0324","\u0325","\u0326","\u0327","\u0328","\u0329","\u032a","\u032b","\u032c","\u032d","\u032e","\u032f","\u0330","\u0331","\u0332","\u0333","\u0334","\u0335","\u0336","\u0337","\u0338","\u0339","\u033a","\u033b","\u033c","\u033d","\u033e","\u033f","\u0340","\u0341","\u0342","\u0343","\u0344","\u0345","\u0346","\u0347","\u0348","\u0349","\u034a","\u034b","\u034c","\u034d","\u034e","\u034f","\u0350","\u0351","\u0352","\u0353","\u0354","\u0355","\u0356","\u0357","\u0358","\u0359","\u035a","\u035b","\u035c","\u035d","\u035e","\u035f","\u0360","\u0361","\u0362","\u0363","\u0364","\u0365","\u0366","\u0367","\u0368","\u0369","\u036a","\u036b","\u036c","\u036d","\u036e","\u036f",  # ; T # Mn [112] COMBINING GRAVE ACCENT..COMBINING LATIN SMALL LETTER X
        "\u0483","\u0484","\u0485","\u0486","\u0487",  # ; T # Mn   [5] COMBINING CYRILLIC TITLO..COMBINING CYRILLIC POKRYTIE
        "\u0488","\u0489",  # ; T # Me   [2] COMBINING CYRILLIC HUNDRED THOUSANDS SIGN..COMBINING CYRILLIC MILLIONS SIGN
        "\u0591","\u0592","\u0593","\u0594","\u0595","\u0596","\u0597","\u0598","\u0599","\u059a","\u059b","\u059c","\u059d","\u059e","\u059f","\u05a0","\u05a1","\u05a2","\u05a3","\u05a4","\u05a5","\u05a6","\u05a7","\u05a8","\u05a9","\u05aa","\u05ab","\u05ac","\u05ad","\u05ae","\u05af","\u05b0","\u05b1","\u05b2","\u05b3","\u05b4","\u05b5","\u05b6","\u05b7","\u05b8","\u05b9","\u05ba","\u05bb","\u05bc","\u05bd",  # ; T # Mn  [45] HEBREW ACCENT ETNAHTA..HEBREW POINT METEG
        "\u05BF",  # ; T # Mn       HEBREW POINT RAFE
        "\u05c1","\u05c2",  # ; T # Mn   [2] HEBREW POINT SHIN DOT..HEBREW POINT SIN DOT
        "\u05c4","\u05c5",  # ; T # Mn   [2] HEBREW MARK UPPER DOT..HEBREW MARK LOWER DOT
        "\u05C7",  # ; T # Mn       HEBREW POINT QAMATS QATAN
        "\u0610","\u0611","\u0612","\u0613","\u0614","\u0615","\u0616","\u0617","\u0618","\u0619","\u061a",  # ; T # Mn  [11] ARABIC SIGN SALLALLAHOU ALAYHE WASSALLAM..ARABIC SMALL KASRA
        "\u061C",  # ; T # Cf       ARABIC LETTER MARK
        "\u064b","\u064c","\u064d","\u064e","\u064f","\u0650","\u0651","\u0652","\u0653","\u0654","\u0655","\u0656","\u0657","\u0658","\u0659","\u065a","\u065b","\u065c","\u065d","\u065e","\u065f",  # ; T # Mn  [21] ARABIC FATHATAN..ARABIC WAVY HAMZA BELOW
        "\u0670",  # ; T # Mn       ARABIC LETTER SUPERSCRIPT ALEF
        "\u06d6","\u06d7","\u06d8","\u06d9","\u06da","\u06db","\u06dc",  # ; T # Mn   [7] ARABIC SMALL HIGH LIGATURE SAD WITH LAM WITH ALEF MAKSURA..ARABIC SMALL HIGH SEEN
        "\u06df","\u06e0","\u06e1","\u06e2","\u06e3","\u06e4",  # ; T # Mn   [6] ARABIC SMALL HIGH ROUNDED ZERO..ARABIC SMALL HIGH MADDA
        "\u06e7","\u06e8",  # ; T # Mn   [2] ARABIC SMALL HIGH YEH..ARABIC SMALL HIGH NOON
        "\u06ea","\u06eb","\u06ec","\u06ed",  # ; T # Mn   [4] ARABIC EMPTY CENTRE LOW STOP..ARABIC SMALL LOW MEEM
        "\u070F",  # ; T # Cf       SYRIAC ABBREVIATION MARK
        "\u0711",  # ; T # Mn       SYRIAC LETTER SUPERSCRIPT ALAPH
        "\u0730","\u0731","\u0732","\u0733","\u0734","\u0735","\u0736","\u0737","\u0738","\u0739","\u073a","\u073b","\u073c","\u073d","\u073e","\u073f","\u0740","\u0741","\u0742","\u0743","\u0744","\u0745","\u0746","\u0747","\u0748","\u0749","\u074a",  # ; T # Mn  [27] SYRIAC PTHAHA ABOVE..SYRIAC BARREKH
        "\u07a6","\u07a7","\u07a8","\u07a9","\u07aa","\u07ab","\u07ac","\u07ad","\u07ae","\u07af","\u07b0",  # ; T # Mn  [11] THAANA ABAFILI..THAANA SUKUN
        "\u07eb","\u07ec","\u07ed","\u07ee","\u07ef","\u07f0","\u07f1","\u07f2","\u07f3",  # ; T # Mn   [9] NKO COMBINING SHORT HIGH TONE..NKO COMBINING DOUBLE DOT ABOVE
        "\u0816","\u0817","\u0818","\u0819",  # ; T # Mn   [4] SAMARITAN MARK IN..SAMARITAN MARK DAGESH
        "\u081b","\u081c","\u081d","\u081e","\u081f","\u0820","\u0821","\u0822","\u0823",  # ; T # Mn   [9] SAMARITAN MARK EPENTHETIC YUT..SAMARITAN VOWEL SIGN A
        "\u0825","\u0826","\u0827",  # ; T # Mn   [3] SAMARITAN VOWEL SIGN SHORT A..SAMARITAN VOWEL SIGN U
        "\u0829","\u082a","\u082b","\u082c","\u082d",  # ; T # Mn   [5] SAMARITAN VOWEL SIGN LONG I..SAMARITAN MARK NEQUDAA
        "\u0859","\u085a","\u085b",  # ; T # Mn   [3] MANDAIC AFFRICATION MARK..MANDAIC GEMINATION MARK
        "\u08d4","\u08d5","\u08d6","\u08d7","\u08d8","\u08d9","\u08da","\u08db","\u08dc","\u08dd","\u08de","\u08df","\u08e0","\u08e1",  # ; T # Mn  [14] ARABIC SMALL HIGH WORD AR-RUB..ARABIC SMALL HIGH SIGN SAFHA
        "\u08e3","\u08e4","\u08e5","\u08e6","\u08e7","\u08e8","\u08e9","\u08ea","\u08eb","\u08ec","\u08ed","\u08ee","\u08ef","\u08f0","\u08f1","\u08f2","\u08f3","\u08f4","\u08f5","\u08f6","\u08f7","\u08f8","\u08f9","\u08fa","\u08fb","\u08fc","\u08fd","\u08fe","\u08ff","\u0900","\u0901","\u0902",  # ; T # Mn  [32] ARABIC TURNED DAMMA BELOW..DEVANAGARI SIGN ANUSVARA
        "\u093A",  # ; T # Mn       DEVANAGARI VOWEL SIGN OE
        "\u093C",  # ; T # Mn       DEVANAGARI SIGN NUKTA
        "\u0941","\u0942","\u0943","\u0944","\u0945","\u0946","\u0947","\u0948",  # ; T # Mn   [8] DEVANAGARI VOWEL SIGN U..DEVANAGARI VOWEL SIGN AI
        "\u094D",  # ; T # Mn       DEVANAGARI SIGN VIRAMA
        "\u0951","\u0952","\u0953","\u0954","\u0955","\u0956","\u0957",  # ; T # Mn   [7] DEVANAGARI STRESS SIGN UDATTA..DEVANAGARI VOWEL SIGN UUE
        "\u0962","\u0963",  # ; T # Mn   [2] DEVANAGARI VOWEL SIGN VOCALIC L..DEVANAGARI VOWEL SIGN VOCALIC LL
        "\u0981",  # ; T # Mn       BENGALI SIGN CANDRABINDU
        "\u09BC",  # ; T # Mn       BENGALI SIGN NUKTA
        "\u09c1","\u09c2","\u09c3","\u09c4",  # ; T # Mn   [4] BENGALI VOWEL SIGN U..BENGALI VOWEL SIGN VOCALIC RR
        "\u09CD",  # ; T # Mn       BENGALI SIGN VIRAMA
        "\u09e2","\u09e3",  # ; T # Mn   [2] BENGALI VOWEL SIGN VOCALIC L..BENGALI VOWEL SIGN VOCALIC LL
        "\u0a01","\u0a02",  # ; T # Mn   [2] GURMUKHI SIGN ADAK BINDI..GURMUKHI SIGN BINDI
        "\u0A3C",  # ; T # Mn       GURMUKHI SIGN NUKTA
        "\u0a41","\u0a42",  # ; T # Mn   [2] GURMUKHI VOWEL SIGN U..GURMUKHI VOWEL SIGN UU
        "\u0a47","\u0a48",  # ; T # Mn   [2] GURMUKHI VOWEL SIGN EE..GURMUKHI VOWEL SIGN AI
        "\u0a4b","\u0a4c","\u0a4d",  # ; T # Mn   [3] GURMUKHI VOWEL SIGN OO..GURMUKHI SIGN VIRAMA
        "\u0A51",  # ; T # Mn       GURMUKHI SIGN UDAAT
        "\u0a70","\u0a71",  # ; T # Mn   [2] GURMUKHI TIPPI..GURMUKHI ADDAK
        "\u0A75",  # ; T # Mn       GURMUKHI SIGN YAKASH
        "\u0a81","\u0a82",  # ; T # Mn   [2] GUJARATI SIGN CANDRABINDU..GUJARATI SIGN ANUSVARA
        "\u0ABC",  # ; T # Mn       GUJARATI SIGN NUKTA
        "\u0ac1","\u0ac2","\u0ac3","\u0ac4","\u0ac5",  # ; T # Mn   [5] GUJARATI VOWEL SIGN U..GUJARATI VOWEL SIGN CANDRA E
        "\u0ac7","\u0ac8",  # ; T # Mn   [2] GUJARATI VOWEL SIGN E..GUJARATI VOWEL SIGN AI
        "\u0ACD",  # ; T # Mn       GUJARATI SIGN VIRAMA
        "\u0ae2","\u0ae3",  # ; T # Mn   [2] GUJARATI VOWEL SIGN VOCALIC L..GUJARATI VOWEL SIGN VOCALIC LL
        "\u0afa","\u0afb","\u0afc","\u0afd","\u0afe","\u0aff",  # ; T # Mn   [6] GUJARATI SIGN SUKUN..GUJARATI SIGN TWO-CIRCLE NUKTA ABOVE
        "\u0B01",  # ; T # Mn       ORIYA SIGN CANDRABINDU
        "\u0B3C",  # ; T # Mn       ORIYA SIGN NUKTA
        "\u0B3F",  # ; T # Mn       ORIYA VOWEL SIGN I
        "\u0b41","\u0b42","\u0b43","\u0b44",  # ; T # Mn   [4] ORIYA VOWEL SIGN U..ORIYA VOWEL SIGN VOCALIC RR
        "\u0B4D",  # ; T # Mn       ORIYA SIGN VIRAMA
        "\u0B56",  # ; T # Mn       ORIYA AI LENGTH MARK
        "\u0b62","\u0b63",  # ; T # Mn   [2] ORIYA VOWEL SIGN VOCALIC L..ORIYA VOWEL SIGN VOCALIC LL
        "\u0B82",  # ; T # Mn       TAMIL SIGN ANUSVARA
        "\u0BC0",  # ; T # Mn       TAMIL VOWEL SIGN II
        "\u0BCD",  # ; T # Mn       TAMIL SIGN VIRAMA
        "\u0C00",  # ; T # Mn       TELUGU SIGN COMBINING CANDRABINDU ABOVE
        "\u0c3e","\u0c3f","\u0c40",  # ; T # Mn   [3] TELUGU VOWEL SIGN AA..TELUGU VOWEL SIGN II
        "\u0c46","\u0c47","\u0c48",  # ; T # Mn   [3] TELUGU VOWEL SIGN E..TELUGU VOWEL SIGN AI
        "\u0c4a","\u0c4b","\u0c4c","\u0c4d",  # ; T # Mn   [4] TELUGU VOWEL SIGN O..TELUGU SIGN VIRAMA
        "\u0c55","\u0c56",  # ; T # Mn   [2] TELUGU LENGTH MARK..TELUGU AI LENGTH MARK
        "\u0c62","\u0c63",  # ; T # Mn   [2] TELUGU VOWEL SIGN VOCALIC L..TELUGU VOWEL SIGN VOCALIC LL
        "\u0C81",  # ; T # Mn       KANNADA SIGN CANDRABINDU
        "\u0CBC",  # ; T # Mn       KANNADA SIGN NUKTA
        "\u0CBF",  # ; T # Mn       KANNADA VOWEL SIGN I
        "\u0CC6",  # ; T # Mn       KANNADA VOWEL SIGN E
        "\u0ccc","\u0ccd",  # ; T # Mn   [2] KANNADA VOWEL SIGN AU..KANNADA SIGN VIRAMA
        "\u0ce2","\u0ce3",  # ; T # Mn   [2] KANNADA VOWEL SIGN VOCALIC L..KANNADA VOWEL SIGN VOCALIC LL
        "\u0d00","\u0d01",  # ; T # Mn   [2] MALAYALAM SIGN COMBINING ANUSVARA ABOVE..MALAYALAM SIGN CANDRABINDU
        "\u0d3b","\u0d3c",  # ; T # Mn   [2] MALAYALAM SIGN VERTICAL BAR VIRAMA..MALAYALAM SIGN CIRCULAR VIRAMA
        "\u0d41","\u0d42","\u0d43","\u0d44",  # ; T # Mn   [4] MALAYALAM VOWEL SIGN U..MALAYALAM VOWEL SIGN VOCALIC RR
        "\u0D4D",  # ; T # Mn       MALAYALAM SIGN VIRAMA
        "\u0d62","\u0d63",  # ; T # Mn   [2] MALAYALAM VOWEL SIGN VOCALIC L..MALAYALAM VOWEL SIGN VOCALIC LL
        "\u0DCA",  # ; T # Mn       SINHALA SIGN AL-LAKUNA
        "\u0dd2","\u0dd3","\u0dd4",  # ; T # Mn   [3] SINHALA VOWEL SIGN KETTI IS-PILLA..SINHALA VOWEL SIGN KETTI PAA-PILLA
        "\u0DD6",  # ; T # Mn       SINHALA VOWEL SIGN DIGA PAA-PILLA
        "\u0E31",  # ; T # Mn       THAI CHARACTER MAI HAN-AKAT
        "\u0e34","\u0e35","\u0e36","\u0e37","\u0e38","\u0e39","\u0e3a",  # ; T # Mn   [7] THAI CHARACTER SARA I..THAI CHARACTER PHINTHU
        "\u0e47","\u0e48","\u0e49","\u0e4a","\u0e4b","\u0e4c","\u0e4d","\u0e4e",  # ; T # Mn   [8] THAI CHARACTER MAITAIKHU..THAI CHARACTER YAMAKKAN
        "\u0EB1",  # ; T # Mn       LAO VOWEL SIGN MAI KAN
        "\u0eb4","\u0eb5","\u0eb6","\u0eb7","\u0eb8","\u0eb9",  # ; T # Mn   [6] LAO VOWEL SIGN I..LAO VOWEL SIGN UU
        "\u0ebb","\u0ebc",  # ; T # Mn   [2] LAO VOWEL SIGN MAI KON..LAO SEMIVOWEL SIGN LO
        "\u0ec8","\u0ec9","\u0eca","\u0ecb","\u0ecc","\u0ecd",  # ; T # Mn   [6] LAO TONE MAI EK..LAO NIGGAHITA
        "\u0f18","\u0f19",  # ; T # Mn   [2] TIBETAN ASTROLOGICAL SIGN -KHYUD PA..TIBETAN ASTROLOGICAL SIGN SDONG TSHUGS
        "\u0F35",  # ; T # Mn       TIBETAN MARK NGAS BZUNG NYI ZLA
        "\u0F37",  # ; T # Mn       TIBETAN MARK NGAS BZUNG SGOR RTAGS
        "\u0F39",  # ; T # Mn       TIBETAN MARK TSA -PHRU
        "\u0f71","\u0f72","\u0f73","\u0f74","\u0f75","\u0f76","\u0f77","\u0f78","\u0f79","\u0f7a","\u0f7b","\u0f7c","\u0f7d","\u0f7e",  # ; T # Mn  [14] TIBETAN VOWEL SIGN AA..TIBETAN SIGN RJES SU NGA RO
        "\u0f80","\u0f81","\u0f82","\u0f83","\u0f84",  # ; T # Mn   [5] TIBETAN VOWEL SIGN REVERSED I..TIBETAN MARK HALANTA
        "\u0f86","\u0f87",  # ; T # Mn   [2] TIBETAN SIGN LCI RTAGS..TIBETAN SIGN YANG RTAGS
        "\u0f8d","\u0f8e","\u0f8f","\u0f90","\u0f91","\u0f92","\u0f93","\u0f94","\u0f95","\u0f96","\u0f97",  # ; T # Mn  [11] TIBETAN SUBJOINED SIGN LCE TSA CAN..TIBETAN SUBJOINED LETTER JA
        "\u0f99","\u0f9a","\u0f9b","\u0f9c","\u0f9d","\u0f9e","\u0f9f","\u0fa0","\u0fa1","\u0fa2","\u0fa3","\u0fa4","\u0fa5","\u0fa6","\u0fa7","\u0fa8","\u0fa9","\u0faa","\u0fab","\u0fac","\u0fad","\u0fae","\u0faf","\u0fb0","\u0fb1","\u0fb2","\u0fb3","\u0fb4","\u0fb5","\u0fb6","\u0fb7","\u0fb8","\u0fb9","\u0fba","\u0fbb","\u0fbc",  # ; T # Mn  [36] TIBETAN SUBJOINED LETTER NYA..TIBETAN SUBJOINED LETTER FIXED-FORM RA
        "\u0FC6",  # ; T # Mn       TIBETAN SYMBOL PADMA GDAN
        "\u102d","\u102e","\u102f","\u1030",  # ; T # Mn   [4] MYANMAR VOWEL SIGN I..MYANMAR VOWEL SIGN UU
        "\u1032","\u1033","\u1034","\u1035","\u1036","\u1037",  # ; T # Mn   [6] MYANMAR VOWEL SIGN AI..MYANMAR SIGN DOT BELOW
        "\u1039","\u103a",  # ; T # Mn   [2] MYANMAR SIGN VIRAMA..MYANMAR SIGN ASAT
        "\u103d","\u103e",  # ; T # Mn   [2] MYANMAR CONSONANT SIGN MEDIAL WA..MYANMAR CONSONANT SIGN MEDIAL HA
        "\u1058","\u1059",  # ; T # Mn   [2] MYANMAR VOWEL SIGN VOCALIC L..MYANMAR VOWEL SIGN VOCALIC LL
        "\u105e","\u105f","\u1060",  # ; T # Mn   [3] MYANMAR CONSONANT SIGN MON MEDIAL NA..MYANMAR CONSONANT SIGN MON MEDIAL LA
        "\u1071","\u1072","\u1073","\u1074",  # ; T # Mn   [4] MYANMAR VOWEL SIGN GEBA KAREN I..MYANMAR VOWEL SIGN KAYAH EE
        "\u1082",  # ; T # Mn       MYANMAR CONSONANT SIGN SHAN MEDIAL WA
        "\u1085","\u1086",  # ; T # Mn   [2] MYANMAR VOWEL SIGN SHAN E ABOVE..MYANMAR VOWEL SIGN SHAN FINAL Y
        "\u108D",  # ; T # Mn       MYANMAR SIGN SHAN COUNCIL EMPHATIC TONE
        "\u109D",  # ; T # Mn       MYANMAR VOWEL SIGN AITON AI
        "\u135d","\u135e","\u135f",  # ; T # Mn   [3] ETHIOPIC COMBINING GEMINATION AND VOWEL LENGTH MARK..ETHIOPIC COMBINING GEMINATION MARK
        "\u1712","\u1713","\u1714",  # ; T # Mn   [3] TAGALOG VOWEL SIGN I..TAGALOG SIGN VIRAMA
        "\u1732","\u1733","\u1734",  # ; T # Mn   [3] HANUNOO VOWEL SIGN I..HANUNOO SIGN PAMUDPOD
        "\u1752","\u1753",  # ; T # Mn   [2] BUHID VOWEL SIGN I..BUHID VOWEL SIGN U
        "\u1772","\u1773",  # ; T # Mn   [2] TAGBANWA VOWEL SIGN I..TAGBANWA VOWEL SIGN U
        "\u17b4","\u17b5",  # ; T # Mn   [2] KHMER VOWEL INHERENT AQ..KHMER VOWEL INHERENT AA
        "\u17b7","\u17b8","\u17b9","\u17ba","\u17bb","\u17bc","\u17bd",  # ; T # Mn   [7] KHMER VOWEL SIGN I..KHMER VOWEL SIGN UA
        "\u17C6",  # ; T # Mn       KHMER SIGN NIKAHIT
        "\u17c9","\u17ca","\u17cb","\u17cc","\u17cd","\u17ce","\u17cf","\u17d0","\u17d1","\u17d2","\u17d3",  # ; T # Mn  [11] KHMER SIGN MUUSIKATOAN..KHMER SIGN BATHAMASAT
        "\u17DD",  # ; T # Mn       KHMER SIGN ATTHACAN
        "\u180b","\u180c","\u180d",  # ; T # Mn   [3] MONGOLIAN FREE VARIATION SELECTOR ONE..MONGOLIAN FREE VARIATION SELECTOR THREE
        "\u1885","\u1886",  # ; T # Mn   [2] MONGOLIAN LETTER ALI GALI BALUDA..MONGOLIAN LETTER ALI GALI THREE BALUDA
        "\u18A9",  # ; T # Mn       MONGOLIAN LETTER ALI GALI DAGALGA
        "\u1920","\u1921","\u1922",  # ; T # Mn   [3] LIMBU VOWEL SIGN A..LIMBU VOWEL SIGN U
        "\u1927","\u1928",  # ; T # Mn   [2] LIMBU VOWEL SIGN E..LIMBU VOWEL SIGN O
        "\u1932",  # ; T # Mn       LIMBU SMALL LETTER ANUSVARA
        "\u1939","\u193a","\u193b",  # ; T # Mn   [3] LIMBU SIGN MUKPHRENG..LIMBU SIGN SA-I
        "\u1a17","\u1a18",  # ; T # Mn   [2] BUGINESE VOWEL SIGN I..BUGINESE VOWEL SIGN U
        "\u1A1B",  # ; T # Mn       BUGINESE VOWEL SIGN AE
        "\u1A56",  # ; T # Mn       TAI THAM CONSONANT SIGN MEDIAL LA
        "\u1a58","\u1a59","\u1a5a","\u1a5b","\u1a5c","\u1a5d","\u1a5e",  # ; T # Mn   [7] TAI THAM SIGN MAI KANG LAI..TAI THAM CONSONANT SIGN SA
        "\u1A60",  # ; T # Mn       TAI THAM SIGN SAKOT
        "\u1A62",  # ; T # Mn       TAI THAM VOWEL SIGN MAI SAT
        "\u1a65","\u1a66","\u1a67","\u1a68","\u1a69","\u1a6a","\u1a6b","\u1a6c",  # ; T # Mn   [8] TAI THAM VOWEL SIGN I..TAI THAM VOWEL SIGN OA BELOW
        "\u1a73","\u1a74","\u1a75","\u1a76","\u1a77","\u1a78","\u1a79","\u1a7a","\u1a7b","\u1a7c",  # ; T # Mn  [10] TAI THAM VOWEL SIGN OA ABOVE..TAI THAM SIGN KHUEN-LUE KARAN
        "\u1A7F",  # ; T # Mn       TAI THAM COMBINING CRYPTOGRAMMIC DOT
        "\u1ab0","\u1ab1","\u1ab2","\u1ab3","\u1ab4","\u1ab5","\u1ab6","\u1ab7","\u1ab8","\u1ab9","\u1aba","\u1abb","\u1abc","\u1abd",  # ; T # Mn  [14] COMBINING DOUBLED CIRCUMFLEX ACCENT..COMBINING PARENTHESES BELOW
        "\u1ABE",  # ; T # Me       COMBINING PARENTHESES OVERLAY
        "\u1b00","\u1b01","\u1b02","\u1b03",  # ; T # Mn   [4] BALINESE SIGN ULU RICEM..BALINESE SIGN SURANG
        "\u1B34",  # ; T # Mn       BALINESE SIGN REREKAN
        "\u1b36","\u1b37","\u1b38","\u1b39","\u1b3a",  # ; T # Mn   [5] BALINESE VOWEL SIGN ULU..BALINESE VOWEL SIGN RA REPA
        "\u1B3C",  # ; T # Mn       BALINESE VOWEL SIGN LA LENGA
        "\u1B42",  # ; T # Mn       BALINESE VOWEL SIGN PEPET
        "\u1b6b","\u1b6c","\u1b6d","\u1b6e","\u1b6f","\u1b70","\u1b71","\u1b72","\u1b73",  # ; T # Mn   [9] BALINESE MUSICAL SYMBOL COMBINING TEGEH..BALINESE MUSICAL SYMBOL COMBINING GONG
        "\u1b80","\u1b81",  # ; T # Mn   [2] SUNDANESE SIGN PANYECEK..SUNDANESE SIGN PANGLAYAR
        "\u1ba2","\u1ba3","\u1ba4","\u1ba5",  # ; T # Mn   [4] SUNDANESE CONSONANT SIGN PANYAKRA..SUNDANESE VOWEL SIGN PANYUKU
        "\u1ba8","\u1ba9",  # ; T # Mn   [2] SUNDANESE VOWEL SIGN PAMEPET..SUNDANESE VOWEL SIGN PANEULEUNG
        "\u1bab","\u1bac","\u1bad",  # ; T # Mn   [3] SUNDANESE SIGN VIRAMA..SUNDANESE CONSONANT SIGN PASANGAN WA
        "\u1BE6",  # ; T # Mn       BATAK SIGN TOMPI
        "\u1be8","\u1be9",  # ; T # Mn   [2] BATAK VOWEL SIGN PAKPAK E..BATAK VOWEL SIGN EE
        "\u1BED",  # ; T # Mn       BATAK VOWEL SIGN KARO O
        "\u1bef","\u1bf0","\u1bf1",  # ; T # Mn   [3] BATAK VOWEL SIGN U FOR SIMALUNGUN SA..BATAK CONSONANT SIGN H
        "\u1c2c","\u1c2d","\u1c2e","\u1c2f","\u1c30","\u1c31","\u1c32","\u1c33",  # ; T # Mn   [8] LEPCHA VOWEL SIGN E..LEPCHA CONSONANT SIGN T
        "\u1c36","\u1c37",  # ; T # Mn   [2] LEPCHA SIGN RAN..LEPCHA SIGN NUKTA
        "\u1cd0","\u1cd1","\u1cd2",  # ; T # Mn   [3] VEDIC TONE KARSHANA..VEDIC TONE PRENKHA
        "\u1cd4","\u1cd5","\u1cd6","\u1cd7","\u1cd8","\u1cd9","\u1cda","\u1cdb","\u1cdc","\u1cdd","\u1cde","\u1cdf","\u1ce0",  # ; T # Mn  [13] VEDIC SIGN YAJURVEDIC MIDLINE SVARITA..VEDIC TONE RIGVEDIC KASHMIRI INDEPENDENT SVARITA
        "\u1ce2","\u1ce3","\u1ce4","\u1ce5","\u1ce6","\u1ce7","\u1ce8",  # ; T # Mn   [7] VEDIC SIGN VISARGA SVARITA..VEDIC SIGN VISARGA ANUDATTA WITH TAIL
        "\u1CED",  # ; T # Mn       VEDIC SIGN TIRYAK
        "\u1CF4",  # ; T # Mn       VEDIC TONE CANDRA ABOVE
        "\u1cf8","\u1cf9",  # ; T # Mn   [2] VEDIC TONE RING ABOVE..VEDIC TONE DOUBLE RING ABOVE
        "\u1dc0","\u1dc1","\u1dc2","\u1dc3","\u1dc4","\u1dc5","\u1dc6","\u1dc7","\u1dc8","\u1dc9","\u1dca","\u1dcb","\u1dcc","\u1dcd","\u1dce","\u1dcf","\u1dd0","\u1dd1","\u1dd2","\u1dd3","\u1dd4","\u1dd5","\u1dd6","\u1dd7","\u1dd8","\u1dd9","\u1dda","\u1ddb","\u1ddc","\u1ddd","\u1dde","\u1ddf","\u1de0","\u1de1","\u1de2","\u1de3","\u1de4","\u1de5","\u1de6","\u1de7","\u1de8","\u1de9","\u1dea","\u1deb","\u1dec","\u1ded","\u1dee","\u1def","\u1df0","\u1df1","\u1df2","\u1df3","\u1df4","\u1df5","\u1df6","\u1df7","\u1df8","\u1df9",  # ; T # Mn  [58] COMBINING DOTTED GRAVE ACCENT..COMBINING WIDE INVERTED BRIDGE BELOW
        "\u1dfb","\u1dfc","\u1dfd","\u1dfe","\u1dff",  # ; T # Mn   [5] COMBINING DELETION MARK..COMBINING RIGHT ARROWHEAD AND DOWN ARROWHEAD BELOW
        "\u200B",  # ; T # Cf       ZERO WIDTH SPACE
        "\u200e","\u200f",  # ; T # Cf   [2] LEFT-TO-RIGHT MARK..RIGHT-TO-LEFT MARK
        "\u202a","\u202b","\u202c","\u202d","\u202e",  # ; T # Cf   [5] LEFT-TO-RIGHT EMBEDDING..RIGHT-TO-LEFT OVERRIDE
        "\u2060","\u2061","\u2062","\u2063","\u2064",  # ; T # Cf   [5] WORD JOINER..INVISIBLE PLUS
        "\u206a","\u206b","\u206c","\u206d","\u206e","\u206f",  # ; T # Cf   [6] INHIBIT SYMMETRIC SWAPPING..NOMINAL DIGIT SHAPES
        "\u20d0","\u20d1","\u20d2","\u20d3","\u20d4","\u20d5","\u20d6","\u20d7","\u20d8","\u20d9","\u20da","\u20db","\u20dc",  # ; T # Mn  [13] COMBINING LEFT HARPOON ABOVE..COMBINING FOUR DOTS ABOVE
        "\u20dd","\u20de","\u20df","\u20e0",  # ; T # Me   [4] COMBINING ENCLOSING CIRCLE..COMBINING ENCLOSING CIRCLE BACKSLASH
        "\u20E1",  # ; T # Mn       COMBINING LEFT RIGHT ARROW ABOVE
        "\u20e2","\u20e3","\u20e4",  # ; T # Me   [3] COMBINING ENCLOSING SCREEN..COMBINING ENCLOSING UPWARD POINTING TRIANGLE
        "\u20e5","\u20e6","\u20e7","\u20e8","\u20e9","\u20ea","\u20eb","\u20ec","\u20ed","\u20ee","\u20ef","\u20f0",  # ; T # Mn  [12] COMBINING REVERSE SOLIDUS OVERLAY..COMBINING ASTERISK ABOVE
        "\u2cef","\u2cf0","\u2cf1",  # ; T # Mn   [3] COPTIC COMBINING NI ABOVE..COPTIC COMBINING SPIRITUS LENIS
        "\u2D7F",  # ; T # Mn       TIFINAGH CONSONANT JOINER
        "\u2de0","\u2de1","\u2de2","\u2de3","\u2de4","\u2de5","\u2de6","\u2de7","\u2de8","\u2de9","\u2dea","\u2deb","\u2dec","\u2ded","\u2dee","\u2def","\u2df0","\u2df1","\u2df2","\u2df3","\u2df4","\u2df5","\u2df6","\u2df7","\u2df8","\u2df9","\u2dfa","\u2dfb","\u2dfc","\u2dfd","\u2dfe","\u2dff",  # ; T # Mn  [32] COMBINING CYRILLIC LETTER BE..COMBINING CYRILLIC LETTER IOTIFIED BIG YUS
        "\u302a","\u302b","\u302c","\u302d",  # ; T # Mn   [4] IDEOGRAPHIC LEVEL TONE MARK..IDEOGRAPHIC ENTERING TONE MARK
        "\u3099","\u309a",  # ; T # Mn   [2] COMBINING KATAKANA-HIRAGANA VOICED SOUND MARK..COMBINING KATAKANA-HIRAGANA SEMI-VOICED SOUND MARK
        "\uA66F",  # ; T # Mn       COMBINING CYRILLIC VZMET
        "\ua670","\ua671","\ua672",  # ; T # Me   [3] COMBINING CYRILLIC TEN MILLIONS SIGN..COMBINING CYRILLIC THOUSAND MILLIONS SIGN
        "\ua674","\ua675","\ua676","\ua677","\ua678","\ua679","\ua67a","\ua67b","\ua67c","\ua67d",  # ; T # Mn  [10] COMBINING CYRILLIC LETTER UKRAINIAN IE..COMBINING CYRILLIC PAYEROK
        "\ua69e","\ua69f",  # ; T # Mn   [2] COMBINING CYRILLIC LETTER EF..COMBINING CYRILLIC LETTER IOTIFIED E
        "\ua6f0","\ua6f1",  # ; T # Mn   [2] BAMUM COMBINING MARK KOQNDON..BAMUM COMBINING MARK TUKWENTIS
        "\uA802",  # ; T # Mn       SYLOTI NAGRI SIGN DVISVARA
        "\uA806",  # ; T # Mn       SYLOTI NAGRI SIGN HASANTA
        "\uA80B",  # ; T # Mn       SYLOTI NAGRI SIGN ANUSVARA
        "\ua825","\ua826",  # ; T # Mn   [2] SYLOTI NAGRI VOWEL SIGN U..SYLOTI NAGRI VOWEL SIGN E
        "\ua8c4","\ua8c5",  # ; T # Mn   [2] SAURASHTRA SIGN VIRAMA..SAURASHTRA SIGN CANDRABINDU
        "\ua8e0","\ua8e1","\ua8e2","\ua8e3","\ua8e4","\ua8e5","\ua8e6","\ua8e7","\ua8e8","\ua8e9","\ua8ea","\ua8eb","\ua8ec","\ua8ed","\ua8ee","\ua8ef","\ua8f0","\ua8f1",  # ; T # Mn  [18] COMBINING DEVANAGARI DIGIT ZERO..COMBINING DEVANAGARI SIGN AVAGRAHA
        "\ua926","\ua927","\ua928","\ua929","\ua92a","\ua92b","\ua92c","\ua92d",  # ; T # Mn   [8] KAYAH LI VOWEL UE..KAYAH LI TONE CALYA PLOPHU
        "\ua947","\ua948","\ua949","\ua94a","\ua94b","\ua94c","\ua94d","\ua94e","\ua94f","\ua950","\ua951",  # ; T # Mn  [11] REJANG VOWEL SIGN I..REJANG CONSONANT SIGN R
        "\ua980","\ua981","\ua982",  # ; T # Mn   [3] JAVANESE SIGN PANYANGGA..JAVANESE SIGN LAYAR
        "\uA9B3",  # ; T # Mn       JAVANESE SIGN CECAK TELU
        "\ua9b6","\ua9b7","\ua9b8","\ua9b9",  # ; T # Mn   [4] JAVANESE VOWEL SIGN WULU..JAVANESE VOWEL SIGN SUKU MENDUT
        "\uA9BC",  # ; T # Mn       JAVANESE VOWEL SIGN PEPET
        "\uA9E5",  # ; T # Mn       MYANMAR SIGN SHAN SAW
        "\uaa29","\uaa2a","\uaa2b","\uaa2c","\uaa2d","\uaa2e",  # ; T # Mn   [6] CHAM VOWEL SIGN AA..CHAM VOWEL SIGN OE
        "\uaa31","\uaa32",  # ; T # Mn   [2] CHAM VOWEL SIGN AU..CHAM VOWEL SIGN UE
        "\uaa35","\uaa36",  # ; T # Mn   [2] CHAM CONSONANT SIGN LA..CHAM CONSONANT SIGN WA
        "\uAA43",  # ; T # Mn       CHAM CONSONANT SIGN FINAL NG
        "\uAA4C",  # ; T # Mn       CHAM CONSONANT SIGN FINAL M
        "\uAA7C",  # ; T # Mn       MYANMAR SIGN TAI LAING TONE-2
        "\uAAB0",  # ; T # Mn       TAI VIET MAI KANG
        "\uaab2","\uaab3","\uaab4",  # ; T # Mn   [3] TAI VIET VOWEL I..TAI VIET VOWEL U
        "\uaab7","\uaab8",  # ; T # Mn   [2] TAI VIET MAI KHIT..TAI VIET VOWEL IA
        "\uaabe","\uaabf",  # ; T # Mn   [2] TAI VIET VOWEL AM..TAI VIET TONE MAI EK
        "\uAAC1",  # ; T # Mn       TAI VIET TONE MAI THO
        "\uaaec","\uaaed",  # ; T # Mn   [2] MEETEI MAYEK VOWEL SIGN UU..MEETEI MAYEK VOWEL SIGN AAI
        "\uAAF6",  # ; T # Mn       MEETEI MAYEK VIRAMA
        "\uABE5",  # ; T # Mn       MEETEI MAYEK VOWEL SIGN ANAP
        "\uABE8",  # ; T # Mn       MEETEI MAYEK VOWEL SIGN UNAP
        "\uABED",  # ; T # Mn       MEETEI MAYEK APUN IYEK
        "\uFB1E",  # ; T # Mn       HEBREW POINT JUDEO-SPANISH VARIKA
        "\ufe00","\ufe01","\ufe02","\ufe03","\ufe04","\ufe05","\ufe06","\ufe07","\ufe08","\ufe09","\ufe0a","\ufe0b","\ufe0c","\ufe0d","\ufe0e","\ufe0f",  # ; T # Mn  [16] VARIATION SELECTOR-1..VARIATION SELECTOR-16
        "\ufe20","\ufe21","\ufe22","\ufe23","\ufe24","\ufe25","\ufe26","\ufe27","\ufe28","\ufe29","\ufe2a","\ufe2b","\ufe2c","\ufe2d","\ufe2e","\ufe2f",  # ; T # Mn  [16] COMBINING LIGATURE LEFT HALF..COMBINING CYRILLIC TITLO RIGHT HALF
        "\uFEFF",  # ; T # Cf       ZERO WIDTH NO-BREAK SPACE
        "\ufff9","\ufffa","\ufffb",  # ; T # Cf   [3] INTERLINEAR ANNOTATION ANCHOR..INTERLINEAR ANNOTATION TERMINATOR
        "\u101FD",  # ; T # Mn       PHAISTOS DISC SIGN COMBINING OBLIQUE STROKE
        "\u102E0",  # ; T # Mn       COPTIC EPACT THOUSANDS MARK
        "\u10376","\u10377","\u10378","\u10379","\u1037a",  # ; T # Mn   [5] COMBINING OLD PERMIC LETTER AN..COMBINING OLD PERMIC LETTER SII
        "\u10a01","\u10a02","\u10a03",  # ; T # Mn   [3] KHAROSHTHI VOWEL SIGN I..KHAROSHTHI VOWEL SIGN VOCALIC R
        "\u10a05","\u10a06",  # ; T # Mn   [2] KHAROSHTHI VOWEL SIGN E..KHAROSHTHI VOWEL SIGN O
        "\u10a0c","\u10a0d","\u10a0e","\u10a0f",  # ; T # Mn   [4] KHAROSHTHI VOWEL LENGTH MARK..KHAROSHTHI SIGN VISARGA
        "\u10a38","\u10a39","\u10a3a",  # ; T # Mn   [3] KHAROSHTHI SIGN BAR ABOVE..KHAROSHTHI SIGN DOT BELOW
        "\u10A3F",  # ; T # Mn       KHAROSHTHI VIRAMA
        "\u10ae5","\u10ae6",  # ; T # Mn   [2] MANICHAEAN ABBREVIATION MARK ABOVE..MANICHAEAN ABBREVIATION MARK BELOW
        "\u11001",  # ; T # Mn       BRAHMI SIGN ANUSVARA
        "\u11038","\u11039","\u1103a","\u1103b","\u1103c","\u1103d","\u1103e","\u1103f","\u11040","\u11041","\u11042","\u11043","\u11044","\u11045","\u11046",  # ; T # Mn  [15] BRAHMI VOWEL SIGN AA..BRAHMI VIRAMA
        "\u1107f","\u11080","\u11081",  # ; T # Mn   [3] BRAHMI NUMBER JOINER..KAITHI SIGN ANUSVARA
        "\u110b3","\u110b4","\u110b5","\u110b6",  # ; T # Mn   [4] KAITHI VOWEL SIGN U..KAITHI VOWEL SIGN AI
        "\u110b9","\u110ba",  # ; T # Mn   [2] KAITHI SIGN VIRAMA..KAITHI SIGN NUKTA
        "\u110BD",  # ; T # Cf       KAITHI NUMBER SIGN
        "\u11100","\u11101","\u11102",  # ; T # Mn   [3] CHAKMA SIGN CANDRABINDU..CHAKMA SIGN VISARGA
        "\u11127","\u11128","\u11129","\u1112a","\u1112b",  # ; T # Mn   [5] CHAKMA VOWEL SIGN A..CHAKMA VOWEL SIGN UU
        "\u1112d","\u1112e","\u1112f","\u11130","\u11131","\u11132","\u11133","\u11134",  # ; T # Mn   [8] CHAKMA VOWEL SIGN AI..CHAKMA MAAYYAA
        "\u11173",  # ; T # Mn       MAHAJANI SIGN NUKTA
        "\u11180","\u11181",  # ; T # Mn   [2] SHARADA SIGN CANDRABINDU..SHARADA SIGN ANUSVARA
        "\u111b6","\u111b7","\u111b8","\u111b9","\u111ba","\u111bb","\u111bc","\u111bd","\u111be",  # ; T # Mn   [9] SHARADA VOWEL SIGN U..SHARADA VOWEL SIGN O
        "\u111ca","\u111cb","\u111cc",  # ; T # Mn   [3] SHARADA SIGN NUKTA..SHARADA EXTRA SHORT VOWEL MARK
        "\u1122f","\u11230","\u11231",  # ; T # Mn   [3] KHOJKI VOWEL SIGN U..KHOJKI VOWEL SIGN AI
        "\u11234",  # ; T # Mn       KHOJKI SIGN ANUSVARA
        "\u11236","\u11237",  # ; T # Mn   [2] KHOJKI SIGN NUKTA..KHOJKI SIGN SHADDA
        "\u1123E",  # ; T # Mn       KHOJKI SIGN SUKUN
        "\u112DF",  # ; T # Mn       KHUDAWADI SIGN ANUSVARA
        "\u112e3","\u112e4","\u112e5","\u112e6","\u112e7","\u112e8","\u112e9","\u112ea",  # ; T # Mn   [8] KHUDAWADI VOWEL SIGN U..KHUDAWADI SIGN VIRAMA
        "\u11300","\u11301",  # ; T # Mn   [2] GRANTHA SIGN COMBINING ANUSVARA ABOVE..GRANTHA SIGN CANDRABINDU
        "\u1133C",  # ; T # Mn       GRANTHA SIGN NUKTA
        "\u11340",  # ; T # Mn       GRANTHA VOWEL SIGN II
        "\u11366","\u11367","\u11368","\u11369","\u1136a","\u1136b","\u1136c",  # ; T # Mn   [7] COMBINING GRANTHA DIGIT ZERO..COMBINING GRANTHA DIGIT SIX
        "\u11370","\u11371","\u11372","\u11373","\u11374",  # ; T # Mn   [5] COMBINING GRANTHA LETTER A..COMBINING GRANTHA LETTER PA
        "\u11438","\u11439","\u1143a","\u1143b","\u1143c","\u1143d","\u1143e","\u1143f",  # ; T # Mn   [8] NEWA VOWEL SIGN U..NEWA VOWEL SIGN AI
        "\u11442","\u11443","\u11444",  # ; T # Mn   [3] NEWA SIGN VIRAMA..NEWA SIGN ANUSVARA
        "\u11446",  # ; T # Mn       NEWA SIGN NUKTA
        "\u114b3","\u114b4","\u114b5","\u114b6","\u114b7","\u114b8",  # ; T # Mn   [6] TIRHUTA VOWEL SIGN U..TIRHUTA VOWEL SIGN VOCALIC LL
        "\u114BA",  # ; T # Mn       TIRHUTA VOWEL SIGN SHORT E
        "\u114bf","\u114c0",  # ; T # Mn   [2] TIRHUTA SIGN CANDRABINDU..TIRHUTA SIGN ANUSVARA
        "\u114c2","\u114c3",  # ; T # Mn   [2] TIRHUTA SIGN VIRAMA..TIRHUTA SIGN NUKTA
        "\u115b2","\u115b3","\u115b4","\u115b5",  # ; T # Mn   [4] SIDDHAM VOWEL SIGN U..SIDDHAM VOWEL SIGN VOCALIC RR
        "\u115bc","\u115bd",  # ; T # Mn   [2] SIDDHAM SIGN CANDRABINDU..SIDDHAM SIGN ANUSVARA
        "\u115bf","\u115c0",  # ; T # Mn   [2] SIDDHAM SIGN VIRAMA..SIDDHAM SIGN NUKTA
        "\u115dc","\u115dd",  # ; T # Mn   [2] SIDDHAM VOWEL SIGN ALTERNATE U..SIDDHAM VOWEL SIGN ALTERNATE UU
        "\u11633","\u11634","\u11635","\u11636","\u11637","\u11638","\u11639","\u1163a",  # ; T # Mn   [8] MODI VOWEL SIGN U..MODI VOWEL SIGN AI
        "\u1163D",  # ; T # Mn       MODI SIGN ANUSVARA
        "\u1163f","\u11640",  # ; T # Mn   [2] MODI SIGN VIRAMA..MODI SIGN ARDHACANDRA
        "\u116AB",  # ; T # Mn       TAKRI SIGN ANUSVARA
        "\u116AD",  # ; T # Mn       TAKRI VOWEL SIGN AA
        "\u116b0","\u116b1","\u116b2","\u116b3","\u116b4","\u116b5",  # ; T # Mn   [6] TAKRI VOWEL SIGN U..TAKRI VOWEL SIGN AU
        "\u116B7",  # ; T # Mn       TAKRI SIGN NUKTA
        "\u1171d","\u1171e","\u1171f",  # ; T # Mn   [3] AHOM CONSONANT SIGN MEDIAL LA..AHOM CONSONANT SIGN MEDIAL LIGATING RA
        "\u11722","\u11723","\u11724","\u11725",  # ; T # Mn   [4] AHOM VOWEL SIGN I..AHOM VOWEL SIGN UU
        "\u11727","\u11728","\u11729","\u1172a","\u1172b",  # ; T # Mn   [5] AHOM VOWEL SIGN AW..AHOM SIGN KILLER
        "\u11a01","\u11a02","\u11a03","\u11a04","\u11a05","\u11a06",  # ; T # Mn   [6] ZANABAZAR SQUARE VOWEL SIGN I..ZANABAZAR SQUARE VOWEL SIGN O
        "\u11a09","\u11a0a",  # ; T # Mn   [2] ZANABAZAR SQUARE VOWEL SIGN REVERSED I..ZANABAZAR SQUARE VOWEL LENGTH MARK
        "\u11a33","\u11a34","\u11a35","\u11a36","\u11a37","\u11a38",  # ; T # Mn   [6] ZANABAZAR SQUARE FINAL CONSONANT MARK..ZANABAZAR SQUARE SIGN ANUSVARA
        "\u11a3b","\u11a3c","\u11a3d","\u11a3e",  # ; T # Mn   [4] ZANABAZAR SQUARE CLUSTER-FINAL LETTER YA..ZANABAZAR SQUARE CLUSTER-FINAL LETTER VA
        "\u11A47",  # ; T # Mn       ZANABAZAR SQUARE SUBJOINER
        "\u11a51","\u11a52","\u11a53","\u11a54","\u11a55","\u11a56",  # ; T # Mn   [6] SOYOMBO VOWEL SIGN I..SOYOMBO VOWEL SIGN OE
        "\u11a59","\u11a5a","\u11a5b",  # ; T # Mn   [3] SOYOMBO VOWEL SIGN VOCALIC R..SOYOMBO VOWEL LENGTH MARK
        "\u11a8a","\u11a8b","\u11a8c","\u11a8d","\u11a8e","\u11a8f","\u11a90","\u11a91","\u11a92","\u11a93","\u11a94","\u11a95","\u11a96",  # ; T # Mn  [13] SOYOMBO FINAL CONSONANT SIGN G..SOYOMBO SIGN ANUSVARA
        "\u11a98","\u11a99",  # ; T # Mn   [2] SOYOMBO GEMINATION MARK..SOYOMBO SUBJOINER
        "\u11c30","\u11c31","\u11c32","\u11c33","\u11c34","\u11c35","\u11c36",  # ; T # Mn   [7] BHAIKSUKI VOWEL SIGN I..BHAIKSUKI VOWEL SIGN VOCALIC L
        "\u11c38","\u11c39","\u11c3a","\u11c3b","\u11c3c","\u11c3d",  # ; T # Mn   [6] BHAIKSUKI VOWEL SIGN E..BHAIKSUKI SIGN ANUSVARA
        "\u11C3F",  # ; T # Mn       BHAIKSUKI SIGN VIRAMA
        "\u11c92","\u11c93","\u11c94","\u11c95","\u11c96","\u11c97","\u11c98","\u11c99","\u11c9a","\u11c9b","\u11c9c","\u11c9d","\u11c9e","\u11c9f","\u11ca0","\u11ca1","\u11ca2","\u11ca3","\u11ca4","\u11ca5","\u11ca6","\u11ca7",  # ; T # Mn  [22] MARCHEN SUBJOINED LETTER KA..MARCHEN SUBJOINED LETTER ZA
        "\u11caa","\u11cab","\u11cac","\u11cad","\u11cae","\u11caf","\u11cb0",  # ; T # Mn   [7] MARCHEN SUBJOINED LETTER RA..MARCHEN VOWEL SIGN AA
        "\u11cb2","\u11cb3",  # ; T # Mn   [2] MARCHEN VOWEL SIGN U..MARCHEN VOWEL SIGN E
        "\u11cb5","\u11cb6",  # ; T # Mn   [2] MARCHEN SIGN ANUSVARA..MARCHEN SIGN CANDRABINDU
        "\u11d31","\u11d32","\u11d33","\u11d34","\u11d35","\u11d36",  # ; T # Mn   [6] MASARAM GONDI VOWEL SIGN AA..MASARAM GONDI VOWEL SIGN VOCALIC R
        "\u11D3A",  # ; T # Mn       MASARAM GONDI VOWEL SIGN E
        "\u11d3c","\u11d3d",  # ; T # Mn   [2] MASARAM GONDI VOWEL SIGN AI..MASARAM GONDI VOWEL SIGN O
        "\u11d3f","\u11d40","\u11d41","\u11d42","\u11d43","\u11d44","\u11d45",  # ; T # Mn   [7] MASARAM GONDI VOWEL SIGN AU..MASARAM GONDI VIRAMA
        "\u11D47",  # ; T # Mn       MASARAM GONDI RA-KARA
        "\u16af0","\u16af1","\u16af2","\u16af3","\u16af4",  # ; T # Mn   [5] BASSA VAH COMBINING HIGH TONE..BASSA VAH COMBINING HIGH-LOW TONE
        "\u16b30","\u16b31","\u16b32","\u16b33","\u16b34","\u16b35","\u16b36",  # ; T # Mn   [7] PAHAWH HMONG MARK CIM TUB..PAHAWH HMONG MARK CIM TAUM
        "\u16f8f","\u16f90","\u16f91","\u16f92",  # ; T # Mn   [4] MIAO TONE RIGHT..MIAO TONE BELOW
        "\u1bc9d","\u1bc9e",  # ; T # Mn   [2] DUPLOYAN THICK LETTER SELECTOR..DUPLOYAN DOUBLE MARK
        "\u1bca0","\u1bca1","\u1bca2","\u1bca3",  # ; T # Cf   [4] SHORTHAND FORMAT LETTER OVERLAP..SHORTHAND FORMAT UP STEP
        "\u1d167","\u1d168","\u1d169",  # ; T # Mn   [3] MUSICAL SYMBOL COMBINING TREMOLO-1..MUSICAL SYMBOL COMBINING TREMOLO-3
        "\u1d173","\u1d174","\u1d175","\u1d176","\u1d177","\u1d178","\u1d179","\u1d17a",  # ; T # Cf   [8] MUSICAL SYMBOL BEGIN BEAM..MUSICAL SYMBOL END PHRASE
        "\u1d17b","\u1d17c","\u1d17d","\u1d17e","\u1d17f","\u1d180","\u1d181","\u1d182",  # ; T # Mn   [8] MUSICAL SYMBOL COMBINING ACCENT..MUSICAL SYMBOL COMBINING LOURE
        "\u1d185","\u1d186","\u1d187","\u1d188","\u1d189","\u1d18a","\u1d18b",  # ; T # Mn   [7] MUSICAL SYMBOL COMBINING DOIT..MUSICAL SYMBOL COMBINING TRIPLE TONGUE
        "\u1d1aa","\u1d1ab","\u1d1ac","\u1d1ad",  # ; T # Mn   [4] MUSICAL SYMBOL COMBINING DOWN BOW..MUSICAL SYMBOL COMBINING SNAP PIZZICATO
        "\u1d242","\u1d243","\u1d244",  # ; T # Mn   [3] COMBINING GREEK MUSICAL TRISEME..COMBINING GREEK MUSICAL PENTASEME
        "\u1da00","\u1da01","\u1da02","\u1da03","\u1da04","\u1da05","\u1da06","\u1da07","\u1da08","\u1da09","\u1da0a","\u1da0b","\u1da0c","\u1da0d","\u1da0e","\u1da0f","\u1da10","\u1da11","\u1da12","\u1da13","\u1da14","\u1da15","\u1da16","\u1da17","\u1da18","\u1da19","\u1da1a","\u1da1b","\u1da1c","\u1da1d","\u1da1e","\u1da1f","\u1da20","\u1da21","\u1da22","\u1da23","\u1da24","\u1da25","\u1da26","\u1da27","\u1da28","\u1da29","\u1da2a","\u1da2b","\u1da2c","\u1da2d","\u1da2e","\u1da2f","\u1da30","\u1da31","\u1da32","\u1da33","\u1da34","\u1da35","\u1da36",  # ; T # Mn  [55] SIGNWRITING HEAD RIM..SIGNWRITING AIR SUCKING IN
        "\u1da3b","\u1da3c","\u1da3d","\u1da3e","\u1da3f","\u1da40","\u1da41","\u1da42","\u1da43","\u1da44","\u1da45","\u1da46","\u1da47","\u1da48","\u1da49","\u1da4a","\u1da4b","\u1da4c","\u1da4d","\u1da4e","\u1da4f","\u1da50","\u1da51","\u1da52","\u1da53","\u1da54","\u1da55","\u1da56","\u1da57","\u1da58","\u1da59","\u1da5a","\u1da5b","\u1da5c","\u1da5d","\u1da5e","\u1da5f","\u1da60","\u1da61","\u1da62","\u1da63","\u1da64","\u1da65","\u1da66","\u1da67","\u1da68","\u1da69","\u1da6a","\u1da6b","\u1da6c",  # ; T # Mn  [50] SIGNWRITING MOUTH CLOSED NEUTRAL..SIGNWRITING EXCITEMENT
        "\u1DA75",  # ; T # Mn       SIGNWRITING UPPER BODY TILTING FROM HIP JOINTS
        "\u1DA84",  # ; T # Mn       SIGNWRITING LOCATION HEAD NECK
        "\u1da9b","\u1da9c","\u1da9d","\u1da9e","\u1da9f",  # ; T # Mn   [5] SIGNWRITING FILL MODIFIER-2..SIGNWRITING FILL MODIFIER-6
        "\u1daa1","\u1daa2","\u1daa3","\u1daa4","\u1daa5","\u1daa6","\u1daa7","\u1daa8","\u1daa9","\u1daaa","\u1daab","\u1daac","\u1daad","\u1daae","\u1daaf",  # ; T # Mn  [15] SIGNWRITING ROTATION MODIFIER-2..SIGNWRITING ROTATION MODIFIER-16
        "\u1e000","\u1e001","\u1e002","\u1e003","\u1e004","\u1e005","\u1e006",  # ; T # Mn   [7] COMBINING GLAGOLITIC LETTER AZU..COMBINING GLAGOLITIC LETTER ZHIVETE
        "\u1e008","\u1e009","\u1e00a","\u1e00b","\u1e00c","\u1e00d","\u1e00e","\u1e00f","\u1e010","\u1e011","\u1e012","\u1e013","\u1e014","\u1e015","\u1e016","\u1e017","\u1e018",  # ; T # Mn  [17] COMBINING GLAGOLITIC LETTER ZEMLJA..COMBINING GLAGOLITIC LETTER HERU
        "\u1e01b","\u1e01c","\u1e01d","\u1e01e","\u1e01f","\u1e020","\u1e021",  # ; T # Mn   [7] COMBINING GLAGOLITIC LETTER SHTA..COMBINING GLAGOLITIC LETTER YATI
        "\u1e023","\u1e024",  # ; T # Mn   [2] COMBINING GLAGOLITIC LETTER YU..COMBINING GLAGOLITIC LETTER SMALL YUS
        "\u1e026","\u1e027","\u1e028","\u1e029","\u1e02a",  # ; T # Mn   [5] COMBINING GLAGOLITIC LETTER YO..COMBINING GLAGOLITIC LETTER FITA
        "\u1e8d0","\u1e8d1","\u1e8d2","\u1e8d3","\u1e8d4","\u1e8d5","\u1e8d6",  # ; T # Mn   [7] MENDE KIKAKUI COMBINING NUMBER TEENS..MENDE KIKAKUI COMBINING NUMBER MILLIONS
        "\u1e944","\u1e945","\u1e946","\u1e947","\u1e948","\u1e949","\u1e94a",  # ; T # Mn   [7] ADLAM ALIF LENGTHENER..ADLAM NUKTA
        "\uE0001",  # ; T # Cf       LANGUAGE TAG
        "\ue0020","\ue0021","\ue0022","\ue0023","\ue0024","\ue0025","\ue0026","\ue0027","\ue0028","\ue0029","\ue002a","\ue002b","\ue002c","\ue002d","\ue002e","\ue002f","\ue0030","\ue0031","\ue0032","\ue0033","\ue0034","\ue0035","\ue0036","\ue0037","\ue0038","\ue0039","\ue003a","\ue003b","\ue003c","\ue003d","\ue003e","\ue003f","\ue0040","\ue0041","\ue0042","\ue0043","\ue0044","\ue0045","\ue0046","\ue0047","\ue0048","\ue0049","\ue004a","\ue004b","\ue004c","\ue004d","\ue004e","\ue004f","\ue0050","\ue0051","\ue0052","\ue0053","\ue0054","\ue0055","\ue0056","\ue0057","\ue0058","\ue0059","\ue005a","\ue005b","\ue005c","\ue005d","\ue005e","\ue005f","\ue0060","\ue0061","\ue0062","\ue0063","\ue0064","\ue0065","\ue0066","\ue0067","\ue0068","\ue0069","\ue006a","\ue006b","\ue006c","\ue006d","\ue006e","\ue006f","\ue0070","\ue0071","\ue0072","\ue0073","\ue0074","\ue0075","\ue0076","\ue0077","\ue0078","\ue0079","\ue007a","\ue007b","\ue007c","\ue007d","\ue007e","\ue007f",  # ; T # Cf  [96] TAG SPACE..CANCEL TAG
        "\ue0100","\ue0101","\ue0102","\ue0103","\ue0104","\ue0105","\ue0106","\ue0107","\ue0108","\ue0109","\ue010a","\ue010b","\ue010c","\ue010d","\ue010e","\ue010f","\ue0110","\ue0111","\ue0112","\ue0113","\ue0114","\ue0115","\ue0116","\ue0117","\ue0118","\ue0119","\ue011a","\ue011b","\ue011c","\ue011d","\ue011e","\ue011f","\ue0120","\ue0121","\ue0122","\ue0123","\ue0124","\ue0125","\ue0126","\ue0127","\ue0128","\ue0129","\ue012a","\ue012b","\ue012c","\ue012d","\ue012e","\ue012f","\ue0130","\ue0131","\ue0132","\ue0133","\ue0134","\ue0135","\ue0136","\ue0137","\ue0138","\ue0139","\ue013a","\ue013b","\ue013c","\ue013d","\ue013e","\ue013f","\ue0140","\ue0141","\ue0142","\ue0143","\ue0144","\ue0145","\ue0146","\ue0147","\ue0148","\ue0149","\ue014a","\ue014b","\ue014c","\ue014d","\ue014e","\ue014f","\ue0150","\ue0151","\ue0152","\ue0153","\ue0154","\ue0155","\ue0156","\ue0157","\ue0158","\ue0159","\ue015a","\ue015b","\ue015c","\ue015d","\ue015e","\ue015f","\ue0160","\ue0161","\ue0162","\ue0163","\ue0164","\ue0165","\ue0166","\ue0167","\ue0168","\ue0169","\ue016a","\ue016b","\ue016c","\ue016d","\ue016e","\ue016f","\ue0170","\ue0171","\ue0172","\ue0173","\ue0174","\ue0175","\ue0176","\ue0177","\ue0178","\ue0179","\ue017a","\ue017b","\ue017c","\ue017d","\ue017e","\ue017f","\ue0180","\ue0181","\ue0182","\ue0183","\ue0184","\ue0185","\ue0186","\ue0187","\ue0188","\ue0189","\ue018a","\ue018b","\ue018c","\ue018d","\ue018e","\ue018f","\ue0190","\ue0191","\ue0192","\ue0193","\ue0194","\ue0195","\ue0196","\ue0197","\ue0198","\ue0199","\ue019a","\ue019b","\ue019c","\ue019d","\ue019e","\ue019f","\ue01a0","\ue01a1","\ue01a2","\ue01a3","\ue01a4","\ue01a5","\ue01a6","\ue01a7","\ue01a8","\ue01a9","\ue01aa","\ue01ab","\ue01ac","\ue01ad","\ue01ae","\ue01af","\ue01b0","\ue01b1","\ue01b2","\ue01b3","\ue01b4","\ue01b5","\ue01b6","\ue01b7","\ue01b8","\ue01b9","\ue01ba","\ue01bb","\ue01bc","\ue01bd","\ue01be","\ue01bf","\ue01c0","\ue01c1","\ue01c2","\ue01c3","\ue01c4","\ue01c5","\ue01c6","\ue01c7","\ue01c8","\ue01c9","\ue01ca","\ue01cb","\ue01cc","\ue01cd","\ue01ce","\ue01cf","\ue01d0","\ue01d1","\ue01d2","\ue01d3","\ue01d4","\ue01d5","\ue01d6","\ue01d7","\ue01d8","\ue01d9","\ue01da","\ue01db","\ue01dc","\ue01dd","\ue01de","\ue01df","\ue01e0","\ue01e1","\ue01e2","\ue01e3","\ue01e4","\ue01e5","\ue01e6","\ue01e7","\ue01e8","\ue01e9","\ue01ea","\ue01eb","\ue01ec","\ue01ed","\ue01ee","\ue01ef",  # ; T # Mn [240] VARIATION SELECTOR-17..VARIATION SELECTOR-256
    ]
    test_data.each do |string|
      assert @validator.valid_encoding?(string), "U10_DerivedJoiningType: #{string}"
      assert string.force_encoding("UTF-8").valid_encoding?, "U10_DerivedJoiningType: #{string}" if @vercheck
    end
  end

end

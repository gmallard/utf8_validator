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
        "\d0640",  # ; C # Lm       ARABIC TATWEEL
        "\d07FA",  # ; C # Lm       NKO LAJANYALAN
        "\d180A",  # ; C # Po       MONGOLIAN NIRUGU
        "\d200D",  # ; C # Cf       ZERO WIDTH JOINER
        "\d0620",  # ; D # Lo       ARABIC LETTER KASHMIRI YEH
        "\d0626",  # ; D # Lo       ARABIC LETTER YEH WITH HAMZA ABOVE
        "\d0628",  # ; D # Lo       ARABIC LETTER BEH
        "\d062a","\d062b","\d062c","\d062d","\d062e",  # ; D # Lo   [5] ARABIC LETTER TEH..ARABIC LETTER KHAH
        "\d0633","\d0634","\d0635","\d0636","\d0637","\d0638","\d0639","\d063a","\d063b","\d063c","\d063d","\d063e","\d063f",  # ; D # Lo  [13] ARABIC LETTER SEEN..ARABIC LETTER FARSI YEH WITH THREE DOTS ABOVE
        "\d0641","\d0642","\d0643","\d0644","\d0645","\d0646","\d0647",  # ; D # Lo   [7] ARABIC LETTER FEH..ARABIC LETTER HEH
        "\d0649","\d064a",  # ; D # Lo   [2] ARABIC LETTER ALEF MAKSURA..ARABIC LETTER YEH
        "\d066e","\d066f",  # ; D # Lo   [2] ARABIC LETTER DOTLESS BEH..ARABIC LETTER DOTLESS QAF
        "\d0678","\d0679","\d067a","\d067b","\d067c","\d067d","\d067e","\d067f","\d0680","\d0681","\d0682","\d0683","\d0684","\d0685","\d0686","\d0687",  # ; D # Lo  [16] ARABIC LETTER HIGH HAMZA YEH..ARABIC LETTER TCHEHEH
        "\d069a","\d069b","\d069c","\d069d","\d069e","\d069f","\d06a0","\d06a1","\d06a2","\d06a3","\d06a4","\d06a5","\d06a6","\d06a7","\d06a8","\d06a9","\d06aa","\d06ab","\d06ac","\d06ad","\d06ae","\d06af","\d06b0","\d06b1","\d06b2","\d06b3","\d06b4","\d06b5","\d06b6","\d06b7","\d06b8","\d06b9","\d06ba","\d06bb","\d06bc","\d06bd","\d06be","\d06bf",  # ; D # Lo  [38] ARABIC LETTER SEEN WITH DOT BELOW AND DOT ABOVE..ARABIC LETTER TCHEH WITH DOT ABOVE
        "\d06c1","\d06c2",  # ; D # Lo   [2] ARABIC LETTER HEH GOAL..ARABIC LETTER HEH GOAL WITH HAMZA ABOVE
        "\d06CC",  # ; D # Lo       ARABIC LETTER FARSI YEH
        "\d06CE",  # ; D # Lo       ARABIC LETTER YEH WITH SMALL V
        "\d06d0","\d06d1",  # ; D # Lo   [2] ARABIC LETTER E..ARABIC LETTER YEH WITH THREE DOTS BELOW
        "\d06fa","\d06fb","\d06fc",  # ; D # Lo   [3] ARABIC LETTER SHEEN WITH DOT BELOW..ARABIC LETTER GHAIN WITH DOT BELOW
        "\d06FF",  # ; D # Lo       ARABIC LETTER HEH WITH INVERTED V
        "\d0712","\d0713","\d0714",  # ; D # Lo   [3] SYRIAC LETTER BETH..SYRIAC LETTER GAMAL GARSHUNI
        "\d071a","\d071b","\d071c","\d071d",  # ; D # Lo   [4] SYRIAC LETTER HETH..SYRIAC LETTER YUDH
        "\d071f","\d0720","\d0721","\d0722","\d0723","\d0724","\d0725","\d0726","\d0727",  # ; D # Lo   [9] SYRIAC LETTER KAPH..SYRIAC LETTER REVERSED PE
        "\d0729",  # ; D # Lo       SYRIAC LETTER QAPH
        "\d072B",  # ; D # Lo       SYRIAC LETTER SHIN
        "\d072d","\d072e",  # ; D # Lo   [2] SYRIAC LETTER PERSIAN BHETH..SYRIAC LETTER PERSIAN GHAMAL
        "\d074e","\d074f","\d0750","\d0751","\d0752","\d0753","\d0754","\d0755","\d0756","\d0757","\d0758",  # ; D # Lo  [11] SYRIAC LETTER SOGDIAN KHAPH..ARABIC LETTER HAH WITH THREE DOTS POINTING UPWARDS BELOW
        "\d075c","\d075d","\d075e","\d075f","\d0760","\d0761","\d0762","\d0763","\d0764","\d0765","\d0766","\d0767","\d0768","\d0769","\d076a",  # ; D # Lo  [15] ARABIC LETTER SEEN WITH FOUR DOTS ABOVE..ARABIC LETTER LAM WITH BAR
        "\d076d","\d076e","\d076f","\d0770",  # ; D # Lo   [4] ARABIC LETTER SEEN WITH TWO DOTS VERTICALLY ABOVE..ARABIC LETTER SEEN WITH SMALL ARABIC LETTER TAH AND TWO DOTS
        "\d0772",  # ; D # Lo       ARABIC LETTER HAH WITH SMALL ARABIC LETTER TAH ABOVE
        "\d0775","\d0776","\d0777",  # ; D # Lo   [3] ARABIC LETTER FARSI YEH WITH EXTENDED ARABIC-INDIC DIGIT TWO ABOVE..ARABIC LETTER FARSI YEH WITH EXTENDED ARABIC-INDIC DIGIT FOUR BELOW
        "\d077a","\d077b","\d077c","\d077d","\d077e","\d077f",  # ; D # Lo   [6] ARABIC LETTER YEH BARREE WITH EXTENDED ARABIC-INDIC DIGIT TWO ABOVE..ARABIC LETTER KAF WITH TWO DOTS ABOVE
        "\d07ca","\d07cb","\d07cc","\d07cd","\d07ce","\d07cf","\d07d0","\d07d1","\d07d2","\d07d3","\d07d4","\d07d5","\d07d6","\d07d7","\d07d8","\d07d9","\d07da","\d07db","\d07dc","\d07dd","\d07de","\d07df","\d07e0","\d07e1","\d07e2","\d07e3","\d07e4","\d07e5","\d07e6","\d07e7","\d07e8","\d07e9","\d07ea",  # ; D # Lo  [33] NKO LETTER A..NKO LETTER JONA RA
        "\d0841","\d0842","\d0843","\d0844","\d0845",  # ; D # Lo   [5] MANDAIC LETTER AB..MANDAIC LETTER USHENNA
        "\d0848",  # ; D # Lo       MANDAIC LETTER ATT
        "\d084a","\d084b","\d084c","\d084d","\d084e","\d084f","\d0850","\d0851","\d0852","\d0853",  # ; D # Lo  [10] MANDAIC LETTER AK..MANDAIC LETTER AR
        "\d0855",  # ; D # Lo       MANDAIC LETTER AT
        "\d0860",  # ; D # Lo       SYRIAC LETTER MALAYALAM NGA
        "\d0862","\d0863","\d0864","\d0865",  # ; D # Lo   [4] SYRIAC LETTER MALAYALAM NYA..SYRIAC LETTER MALAYALAM NNNA
        "\d0868",  # ; D # Lo       SYRIAC LETTER MALAYALAM LLA
        "\d08a0","\d08a1","\d08a2","\d08a3","\d08a4","\d08a5","\d08a6","\d08a7","\d08a8","\d08a9",  # ; D # Lo  [10] ARABIC LETTER BEH WITH SMALL V BELOW..ARABIC LETTER YEH WITH TWO DOTS BELOW AND DOT ABOVE
        "\d08af","\d08b0",  # ; D # Lo   [2] ARABIC LETTER SAD WITH THREE DOTS BELOW..ARABIC LETTER GAF WITH INVERTED STROKE
        "\d08b3","\d08b4",  # ; D # Lo   [2] ARABIC LETTER AIN WITH THREE DOTS BELOW..ARABIC LETTER KAF WITH DOT BELOW
        "\d08b6","\d08b7","\d08b8",  # ; D # Lo   [3] ARABIC LETTER BEH WITH SMALL MEEM ABOVE..ARABIC LETTER TEH WITH SMALL TEH ABOVE
        "\d08ba","\d08bb","\d08bc","\d08bd",  # ; D # Lo   [4] ARABIC LETTER YEH WITH TWO DOTS BELOW AND SMALL NOON ABOVE..ARABIC LETTER AFRICAN NOON
        "\d1807",  # ; D # Po       MONGOLIAN SIBE SYLLABLE BOUNDARY MARKER
        "\d1820","\d1821","\d1822","\d1823","\d1824","\d1825","\d1826","\d1827","\d1828","\d1829","\d182a","\d182b","\d182c","\d182d","\d182e","\d182f","\d1830","\d1831","\d1832","\d1833","\d1834","\d1835","\d1836","\d1837","\d1838","\d1839","\d183a","\d183b","\d183c","\d183d","\d183e","\d183f","\d1840","\d1841","\d1842",  # ; D # Lo  [35] MONGOLIAN LETTER A..MONGOLIAN LETTER CHI
        "\d1843",  # ; D # Lm       MONGOLIAN LETTER TODO LONG VOWEL SIGN
        "\d1844","\d1845","\d1846","\d1847","\d1848","\d1849","\d184a","\d184b","\d184c","\d184d","\d184e","\d184f","\d1850","\d1851","\d1852","\d1853","\d1854","\d1855","\d1856","\d1857","\d1858","\d1859","\d185a","\d185b","\d185c","\d185d","\d185e","\d185f","\d1860","\d1861","\d1862","\d1863","\d1864","\d1865","\d1866","\d1867","\d1868","\d1869","\d186a","\d186b","\d186c","\d186d","\d186e","\d186f","\d1870","\d1871","\d1872","\d1873","\d1874","\d1875","\d1876","\d1877",  # ; D # Lo  [52] MONGOLIAN LETTER TODO E..MONGOLIAN LETTER MANCHU ZHA
        "\d1887","\d1888","\d1889","\d188a","\d188b","\d188c","\d188d","\d188e","\d188f","\d1890","\d1891","\d1892","\d1893","\d1894","\d1895","\d1896","\d1897","\d1898","\d1899","\d189a","\d189b","\d189c","\d189d","\d189e","\d189f","\d18a0","\d18a1","\d18a2","\d18a3","\d18a4","\d18a5","\d18a6","\d18a7","\d18a8",  # ; D # Lo  [34] MONGOLIAN LETTER ALI GALI A..MONGOLIAN LETTER MANCHU ALI GALI BHA
        "\d18AA",  # ; D # Lo       MONGOLIAN LETTER MANCHU ALI GALI LHA
        "\da840","\da841","\da842","\da843","\da844","\da845","\da846","\da847","\da848","\da849","\da84a","\da84b","\da84c","\da84d","\da84e","\da84f","\da850","\da851","\da852","\da853","\da854","\da855","\da856","\da857","\da858","\da859","\da85a","\da85b","\da85c","\da85d","\da85e","\da85f","\da860","\da861","\da862","\da863","\da864","\da865","\da866","\da867","\da868","\da869","\da86a","\da86b","\da86c","\da86d","\da86e","\da86f","\da870","\da871",  # ; D # Lo  [50] PHAGS-PA LETTER KA..PHAGS-PA SUBJOINED LETTER RA
        "\d10ac0","\d10ac1","\d10ac2","\d10ac3","\d10ac4",  # ; D # Lo   [5] MANICHAEAN LETTER ALEPH..MANICHAEAN LETTER GHIMEL
        "\d10ad3","\d10ad4","\d10ad5","\d10ad6",  # ; D # Lo   [4] MANICHAEAN LETTER LAMEDH..MANICHAEAN LETTER MEM
        "\d10ad8","\d10ad9","\d10ada","\d10adb","\d10adc",  # ; D # Lo   [5] MANICHAEAN LETTER SAMEKH..MANICHAEAN LETTER FE
        "\d10ade","\d10adf","\d10ae0",  # ; D # Lo   [3] MANICHAEAN LETTER QOPH..MANICHAEAN LETTER QHOPH
        "\d10aeb","\d10aec","\d10aed","\d10aee",  # ; D # No   [4] MANICHAEAN NUMBER ONE..MANICHAEAN NUMBER TWENTY
        "\d10B80",  # ; D # Lo       PSALTER PAHLAVI LETTER ALEPH
        "\d10B82",  # ; D # Lo       PSALTER PAHLAVI LETTER GIMEL
        "\d10b86","\d10b87","\d10b88",  # ; D # Lo   [3] PSALTER PAHLAVI LETTER ZAYIN..PSALTER PAHLAVI LETTER YODH
        "\d10b8a","\d10b8b",  # ; D # Lo   [2] PSALTER PAHLAVI LETTER LAMEDH..PSALTER PAHLAVI LETTER MEM-QOPH
        "\d10B8D",  # ; D # Lo       PSALTER PAHLAVI LETTER SAMEKH
        "\d10B90",  # ; D # Lo       PSALTER PAHLAVI LETTER SHIN
        "\d10bad","\d10bae",  # ; D # No   [2] PSALTER PAHLAVI NUMBER TEN..PSALTER PAHLAVI NUMBER TWENTY
        "\d1e900","\d1e901","\d1e902","\d1e903","\d1e904","\d1e905","\d1e906","\d1e907","\d1e908","\d1e909","\d1e90a","\d1e90b","\d1e90c","\d1e90d","\d1e90e","\d1e90f","\d1e910","\d1e911","\d1e912","\d1e913","\d1e914","\d1e915","\d1e916","\d1e917","\d1e918","\d1e919","\d1e91a","\d1e91b","\d1e91c","\d1e91d","\d1e91e","\d1e91f","\d1e920","\d1e921","\d1e922","\d1e923","\d1e924","\d1e925","\d1e926","\d1e927","\d1e928","\d1e929","\d1e92a","\d1e92b","\d1e92c","\d1e92d","\d1e92e","\d1e92f","\d1e930","\d1e931","\d1e932","\d1e933","\d1e934","\d1e935","\d1e936","\d1e937","\d1e938","\d1e939","\d1e93a","\d1e93b","\d1e93c","\d1e93d","\d1e93e","\d1e93f","\d1e940","\d1e941","\d1e942","\d1e943",  # ; D # L&  [68] ADLAM CAPITAL LETTER ALIF..ADLAM SMALL LETTER SHA
        "\d0622","\d0623","\d0624","\d0625",  # ; R # Lo   [4] ARABIC LETTER ALEF WITH MADDA ABOVE..ARABIC LETTER ALEF WITH HAMZA BELOW
        "\d0627",  # ; R # Lo       ARABIC LETTER ALEF
        "\d0629",  # ; R # Lo       ARABIC LETTER TEH MARBUTA
        "\d062f","\d0630","\d0631","\d0632",  # ; R # Lo   [4] ARABIC LETTER DAL..ARABIC LETTER ZAIN
        "\d0648",  # ; R # Lo       ARABIC LETTER WAW
        "\d0671","\d0672","\d0673",  # ; R # Lo   [3] ARABIC LETTER ALEF WASLA..ARABIC LETTER ALEF WITH WAVY HAMZA BELOW
        "\d0675","\d0676","\d0677",  # ; R # Lo   [3] ARABIC LETTER HIGH HAMZA ALEF..ARABIC LETTER U WITH HAMZA ABOVE
        "\d0688","\d0689","\d068a","\d068b","\d068c","\d068d","\d068e","\d068f","\d0690","\d0691","\d0692","\d0693","\d0694","\d0695","\d0696","\d0697","\d0698","\d0699",  # ; R # Lo  [18] ARABIC LETTER DDAL..ARABIC LETTER REH WITH FOUR DOTS ABOVE
        "\d06C0",  # ; R # Lo       ARABIC LETTER HEH WITH YEH ABOVE
        "\d06c3","\d06c4","\d06c5","\d06c6","\d06c7","\d06c8","\d06c9","\d06ca","\d06cb",  # ; R # Lo   [9] ARABIC LETTER TEH MARBUTA GOAL..ARABIC LETTER VE
        "\d06CD",  # ; R # Lo       ARABIC LETTER YEH WITH TAIL
        "\d06CF",  # ; R # Lo       ARABIC LETTER WAW WITH DOT ABOVE
        "\d06d2","\d06d3",  # ; R # Lo   [2] ARABIC LETTER YEH BARREE..ARABIC LETTER YEH BARREE WITH HAMZA ABOVE
        "\d06D5",  # ; R # Lo       ARABIC LETTER AE
        "\d06ee","\d06ef",  # ; R # Lo   [2] ARABIC LETTER DAL WITH INVERTED V..ARABIC LETTER REH WITH INVERTED V
        "\d0710",  # ; R # Lo       SYRIAC LETTER ALAPH
        "\d0715","\d0716","\d0717","\d0718","\d0719",  # ; R # Lo   [5] SYRIAC LETTER DALATH..SYRIAC LETTER ZAIN
        "\d071E",  # ; R # Lo       SYRIAC LETTER YUDH HE
        "\d0728",  # ; R # Lo       SYRIAC LETTER SADHE
        "\d072A",  # ; R # Lo       SYRIAC LETTER RISH
        "\d072C",  # ; R # Lo       SYRIAC LETTER TAW
        "\d072F",  # ; R # Lo       SYRIAC LETTER PERSIAN DHALATH
        "\d074D",  # ; R # Lo       SYRIAC LETTER SOGDIAN ZHAIN
        "\d0759","\d075a","\d075b",  # ; R # Lo   [3] ARABIC LETTER DAL WITH TWO DOTS VERTICALLY BELOW AND SMALL TAH..ARABIC LETTER REH WITH STROKE
        "\d076b","\d076c",  # ; R # Lo   [2] ARABIC LETTER REH WITH TWO DOTS VERTICALLY ABOVE..ARABIC LETTER REH WITH HAMZA ABOVE
        "\d0771",  # ; R # Lo       ARABIC LETTER REH WITH SMALL ARABIC LETTER TAH AND TWO DOTS
        "\d0773","\d0774",  # ; R # Lo   [2] ARABIC LETTER ALEF WITH EXTENDED ARABIC-INDIC DIGIT TWO ABOVE..ARABIC LETTER ALEF WITH EXTENDED ARABIC-INDIC DIGIT THREE ABOVE
        "\d0778","\d0779",  # ; R # Lo   [2] ARABIC LETTER WAW WITH EXTENDED ARABIC-INDIC DIGIT TWO ABOVE..ARABIC LETTER WAW WITH EXTENDED ARABIC-INDIC DIGIT THREE ABOVE
        "\d0840",  # ; R # Lo       MANDAIC LETTER HALQA
        "\d0846","\d0847",  # ; R # Lo   [2] MANDAIC LETTER AZ..MANDAIC LETTER IT
        "\d0849",  # ; R # Lo       MANDAIC LETTER AKSA
        "\d0854",  # ; R # Lo       MANDAIC LETTER ASH
        "\d0867",  # ; R # Lo       SYRIAC LETTER MALAYALAM RA
        "\d0869","\d086a",  # ; R # Lo   [2] SYRIAC LETTER MALAYALAM LLLA..SYRIAC LETTER MALAYALAM SSA
        "\d08aa","\d08ab","\d08ac",  # ; R # Lo   [3] ARABIC LETTER REH WITH LOOP..ARABIC LETTER ROHINGYA YEH
        "\d08AE",  # ; R # Lo       ARABIC LETTER DAL WITH THREE DOTS BELOW
        "\d08b1","\d08b2",  # ; R # Lo   [2] ARABIC LETTER STRAIGHT WAW..ARABIC LETTER ZAIN WITH INVERTED V ABOVE
        "\d08B9",  # ; R # Lo       ARABIC LETTER REH WITH SMALL NOON ABOVE
        "\d10AC5",  # ; R # Lo       MANICHAEAN LETTER DALETH
        "\d10AC7",  # ; R # Lo       MANICHAEAN LETTER WAW
        "\d10ac9","\d10aca",  # ; R # Lo   [2] MANICHAEAN LETTER ZAYIN..MANICHAEAN LETTER ZHAYIN
        "\d10ace","\d10acf","\d10ad0","\d10ad1","\d10ad2",  # ; R # Lo   [5] MANICHAEAN LETTER TETH..MANICHAEAN LETTER KHAPH
        "\d10ADD",  # ; R # Lo       MANICHAEAN LETTER SADHE
        "\d10AE1",  # ; R # Lo       MANICHAEAN LETTER RESH
        "\d10AE4",  # ; R # Lo       MANICHAEAN LETTER TAW
        "\d10AEF",  # ; R # No       MANICHAEAN NUMBER ONE HUNDRED
        "\d10B81",  # ; R # Lo       PSALTER PAHLAVI LETTER BETH
        "\d10b83","\d10b84","\d10b85",  # ; R # Lo   [3] PSALTER PAHLAVI LETTER DALETH..PSALTER PAHLAVI LETTER WAW-AYIN-RESH
        "\d10B89",  # ; R # Lo       PSALTER PAHLAVI LETTER KAPH
        "\d10B8C",  # ; R # Lo       PSALTER PAHLAVI LETTER NUN
        "\d10b8e","\d10b8f",  # ; R # Lo   [2] PSALTER PAHLAVI LETTER PE..PSALTER PAHLAVI LETTER SADHE
        "\d10B91",  # ; R # Lo       PSALTER PAHLAVI LETTER TAW
        "\d10ba9","\d10baa","\d10bab","\d10bac",  # ; R # No   [4] PSALTER PAHLAVI NUMBER ONE..PSALTER PAHLAVI NUMBER FOUR
        "\dA872",  # ; L # Lo       PHAGS-PA SUPERFIXED LETTER RA
        "\d10ACD",  # ; L # Lo       MANICHAEAN LETTER HETH
        "\d10AD7",  # ; L # Lo       MANICHAEAN LETTER NUN
        "\d00AD",  # ; T # Cf       SOFT HYPHEN
        "\d0300","\d0301","\d0302","\d0303","\d0304","\d0305","\d0306","\d0307","\d0308","\d0309","\d030a","\d030b","\d030c","\d030d","\d030e","\d030f","\d0310","\d0311","\d0312","\d0313","\d0314","\d0315","\d0316","\d0317","\d0318","\d0319","\d031a","\d031b","\d031c","\d031d","\d031e","\d031f","\d0320","\d0321","\d0322","\d0323","\d0324","\d0325","\d0326","\d0327","\d0328","\d0329","\d032a","\d032b","\d032c","\d032d","\d032e","\d032f","\d0330","\d0331","\d0332","\d0333","\d0334","\d0335","\d0336","\d0337","\d0338","\d0339","\d033a","\d033b","\d033c","\d033d","\d033e","\d033f","\d0340","\d0341","\d0342","\d0343","\d0344","\d0345","\d0346","\d0347","\d0348","\d0349","\d034a","\d034b","\d034c","\d034d","\d034e","\d034f","\d0350","\d0351","\d0352","\d0353","\d0354","\d0355","\d0356","\d0357","\d0358","\d0359","\d035a","\d035b","\d035c","\d035d","\d035e","\d035f","\d0360","\d0361","\d0362","\d0363","\d0364","\d0365","\d0366","\d0367","\d0368","\d0369","\d036a","\d036b","\d036c","\d036d","\d036e","\d036f",  # ; T # Mn [112] COMBINING GRAVE ACCENT..COMBINING LATIN SMALL LETTER X
        "\d0483","\d0484","\d0485","\d0486","\d0487",  # ; T # Mn   [5] COMBINING CYRILLIC TITLO..COMBINING CYRILLIC POKRYTIE
        "\d0488","\d0489",  # ; T # Me   [2] COMBINING CYRILLIC HUNDRED THOUSANDS SIGN..COMBINING CYRILLIC MILLIONS SIGN
        "\d0591","\d0592","\d0593","\d0594","\d0595","\d0596","\d0597","\d0598","\d0599","\d059a","\d059b","\d059c","\d059d","\d059e","\d059f","\d05a0","\d05a1","\d05a2","\d05a3","\d05a4","\d05a5","\d05a6","\d05a7","\d05a8","\d05a9","\d05aa","\d05ab","\d05ac","\d05ad","\d05ae","\d05af","\d05b0","\d05b1","\d05b2","\d05b3","\d05b4","\d05b5","\d05b6","\d05b7","\d05b8","\d05b9","\d05ba","\d05bb","\d05bc","\d05bd",  # ; T # Mn  [45] HEBREW ACCENT ETNAHTA..HEBREW POINT METEG
        "\d05BF",  # ; T # Mn       HEBREW POINT RAFE
        "\d05c1","\d05c2",  # ; T # Mn   [2] HEBREW POINT SHIN DOT..HEBREW POINT SIN DOT
        "\d05c4","\d05c5",  # ; T # Mn   [2] HEBREW MARK UPPER DOT..HEBREW MARK LOWER DOT
        "\d05C7",  # ; T # Mn       HEBREW POINT QAMATS QATAN
        "\d0610","\d0611","\d0612","\d0613","\d0614","\d0615","\d0616","\d0617","\d0618","\d0619","\d061a",  # ; T # Mn  [11] ARABIC SIGN SALLALLAHOU ALAYHE WASSALLAM..ARABIC SMALL KASRA
        "\d061C",  # ; T # Cf       ARABIC LETTER MARK
        "\d064b","\d064c","\d064d","\d064e","\d064f","\d0650","\d0651","\d0652","\d0653","\d0654","\d0655","\d0656","\d0657","\d0658","\d0659","\d065a","\d065b","\d065c","\d065d","\d065e","\d065f",  # ; T # Mn  [21] ARABIC FATHATAN..ARABIC WAVY HAMZA BELOW
        "\d0670",  # ; T # Mn       ARABIC LETTER SUPERSCRIPT ALEF
        "\d06d6","\d06d7","\d06d8","\d06d9","\d06da","\d06db","\d06dc",  # ; T # Mn   [7] ARABIC SMALL HIGH LIGATURE SAD WITH LAM WITH ALEF MAKSURA..ARABIC SMALL HIGH SEEN
        "\d06df","\d06e0","\d06e1","\d06e2","\d06e3","\d06e4",  # ; T # Mn   [6] ARABIC SMALL HIGH ROUNDED ZERO..ARABIC SMALL HIGH MADDA
        "\d06e7","\d06e8",  # ; T # Mn   [2] ARABIC SMALL HIGH YEH..ARABIC SMALL HIGH NOON
        "\d06ea","\d06eb","\d06ec","\d06ed",  # ; T # Mn   [4] ARABIC EMPTY CENTRE LOW STOP..ARABIC SMALL LOW MEEM
        "\d070F",  # ; T # Cf       SYRIAC ABBREVIATION MARK
        "\d0711",  # ; T # Mn       SYRIAC LETTER SUPERSCRIPT ALAPH
        "\d0730","\d0731","\d0732","\d0733","\d0734","\d0735","\d0736","\d0737","\d0738","\d0739","\d073a","\d073b","\d073c","\d073d","\d073e","\d073f","\d0740","\d0741","\d0742","\d0743","\d0744","\d0745","\d0746","\d0747","\d0748","\d0749","\d074a",  # ; T # Mn  [27] SYRIAC PTHAHA ABOVE..SYRIAC BARREKH
        "\d07a6","\d07a7","\d07a8","\d07a9","\d07aa","\d07ab","\d07ac","\d07ad","\d07ae","\d07af","\d07b0",  # ; T # Mn  [11] THAANA ABAFILI..THAANA SUKUN
        "\d07eb","\d07ec","\d07ed","\d07ee","\d07ef","\d07f0","\d07f1","\d07f2","\d07f3",  # ; T # Mn   [9] NKO COMBINING SHORT HIGH TONE..NKO COMBINING DOUBLE DOT ABOVE
        "\d0816","\d0817","\d0818","\d0819",  # ; T # Mn   [4] SAMARITAN MARK IN..SAMARITAN MARK DAGESH
        "\d081b","\d081c","\d081d","\d081e","\d081f","\d0820","\d0821","\d0822","\d0823",  # ; T # Mn   [9] SAMARITAN MARK EPENTHETIC YUT..SAMARITAN VOWEL SIGN A
        "\d0825","\d0826","\d0827",  # ; T # Mn   [3] SAMARITAN VOWEL SIGN SHORT A..SAMARITAN VOWEL SIGN U
        "\d0829","\d082a","\d082b","\d082c","\d082d",  # ; T # Mn   [5] SAMARITAN VOWEL SIGN LONG I..SAMARITAN MARK NEQUDAA
        "\d0859","\d085a","\d085b",  # ; T # Mn   [3] MANDAIC AFFRICATION MARK..MANDAIC GEMINATION MARK
        "\d08d4","\d08d5","\d08d6","\d08d7","\d08d8","\d08d9","\d08da","\d08db","\d08dc","\d08dd","\d08de","\d08df","\d08e0","\d08e1",  # ; T # Mn  [14] ARABIC SMALL HIGH WORD AR-RUB..ARABIC SMALL HIGH SIGN SAFHA
        "\d08e3","\d08e4","\d08e5","\d08e6","\d08e7","\d08e8","\d08e9","\d08ea","\d08eb","\d08ec","\d08ed","\d08ee","\d08ef","\d08f0","\d08f1","\d08f2","\d08f3","\d08f4","\d08f5","\d08f6","\d08f7","\d08f8","\d08f9","\d08fa","\d08fb","\d08fc","\d08fd","\d08fe","\d08ff","\d0900","\d0901","\d0902",  # ; T # Mn  [32] ARABIC TURNED DAMMA BELOW..DEVANAGARI SIGN ANUSVARA
        "\d093A",  # ; T # Mn       DEVANAGARI VOWEL SIGN OE
        "\d093C",  # ; T # Mn       DEVANAGARI SIGN NUKTA
        "\d0941","\d0942","\d0943","\d0944","\d0945","\d0946","\d0947","\d0948",  # ; T # Mn   [8] DEVANAGARI VOWEL SIGN U..DEVANAGARI VOWEL SIGN AI
        "\d094D",  # ; T # Mn       DEVANAGARI SIGN VIRAMA
        "\d0951","\d0952","\d0953","\d0954","\d0955","\d0956","\d0957",  # ; T # Mn   [7] DEVANAGARI STRESS SIGN UDATTA..DEVANAGARI VOWEL SIGN UUE
        "\d0962","\d0963",  # ; T # Mn   [2] DEVANAGARI VOWEL SIGN VOCALIC L..DEVANAGARI VOWEL SIGN VOCALIC LL
        "\d0981",  # ; T # Mn       BENGALI SIGN CANDRABINDU
        "\d09BC",  # ; T # Mn       BENGALI SIGN NUKTA
        "\d09c1","\d09c2","\d09c3","\d09c4",  # ; T # Mn   [4] BENGALI VOWEL SIGN U..BENGALI VOWEL SIGN VOCALIC RR
        "\d09CD",  # ; T # Mn       BENGALI SIGN VIRAMA
        "\d09e2","\d09e3",  # ; T # Mn   [2] BENGALI VOWEL SIGN VOCALIC L..BENGALI VOWEL SIGN VOCALIC LL
        "\d0a01","\d0a02",  # ; T # Mn   [2] GURMUKHI SIGN ADAK BINDI..GURMUKHI SIGN BINDI
        "\d0A3C",  # ; T # Mn       GURMUKHI SIGN NUKTA
        "\d0a41","\d0a42",  # ; T # Mn   [2] GURMUKHI VOWEL SIGN U..GURMUKHI VOWEL SIGN UU
        "\d0a47","\d0a48",  # ; T # Mn   [2] GURMUKHI VOWEL SIGN EE..GURMUKHI VOWEL SIGN AI
        "\d0a4b","\d0a4c","\d0a4d",  # ; T # Mn   [3] GURMUKHI VOWEL SIGN OO..GURMUKHI SIGN VIRAMA
        "\d0A51",  # ; T # Mn       GURMUKHI SIGN UDAAT
        "\d0a70","\d0a71",  # ; T # Mn   [2] GURMUKHI TIPPI..GURMUKHI ADDAK
        "\d0A75",  # ; T # Mn       GURMUKHI SIGN YAKASH
        "\d0a81","\d0a82",  # ; T # Mn   [2] GUJARATI SIGN CANDRABINDU..GUJARATI SIGN ANUSVARA
        "\d0ABC",  # ; T # Mn       GUJARATI SIGN NUKTA
        "\d0ac1","\d0ac2","\d0ac3","\d0ac4","\d0ac5",  # ; T # Mn   [5] GUJARATI VOWEL SIGN U..GUJARATI VOWEL SIGN CANDRA E
        "\d0ac7","\d0ac8",  # ; T # Mn   [2] GUJARATI VOWEL SIGN E..GUJARATI VOWEL SIGN AI
        "\d0ACD",  # ; T # Mn       GUJARATI SIGN VIRAMA
        "\d0ae2","\d0ae3",  # ; T # Mn   [2] GUJARATI VOWEL SIGN VOCALIC L..GUJARATI VOWEL SIGN VOCALIC LL
        "\d0afa","\d0afb","\d0afc","\d0afd","\d0afe","\d0aff",  # ; T # Mn   [6] GUJARATI SIGN SUKUN..GUJARATI SIGN TWO-CIRCLE NUKTA ABOVE
        "\d0B01",  # ; T # Mn       ORIYA SIGN CANDRABINDU
        "\d0B3C",  # ; T # Mn       ORIYA SIGN NUKTA
        "\d0B3F",  # ; T # Mn       ORIYA VOWEL SIGN I
        "\d0b41","\d0b42","\d0b43","\d0b44",  # ; T # Mn   [4] ORIYA VOWEL SIGN U..ORIYA VOWEL SIGN VOCALIC RR
        "\d0B4D",  # ; T # Mn       ORIYA SIGN VIRAMA
        "\d0B56",  # ; T # Mn       ORIYA AI LENGTH MARK
        "\d0b62","\d0b63",  # ; T # Mn   [2] ORIYA VOWEL SIGN VOCALIC L..ORIYA VOWEL SIGN VOCALIC LL
        "\d0B82",  # ; T # Mn       TAMIL SIGN ANUSVARA
        "\d0BC0",  # ; T # Mn       TAMIL VOWEL SIGN II
        "\d0BCD",  # ; T # Mn       TAMIL SIGN VIRAMA
        "\d0C00",  # ; T # Mn       TELUGU SIGN COMBINING CANDRABINDU ABOVE
        "\d0c3e","\d0c3f","\d0c40",  # ; T # Mn   [3] TELUGU VOWEL SIGN AA..TELUGU VOWEL SIGN II
        "\d0c46","\d0c47","\d0c48",  # ; T # Mn   [3] TELUGU VOWEL SIGN E..TELUGU VOWEL SIGN AI
        "\d0c4a","\d0c4b","\d0c4c","\d0c4d",  # ; T # Mn   [4] TELUGU VOWEL SIGN O..TELUGU SIGN VIRAMA
        "\d0c55","\d0c56",  # ; T # Mn   [2] TELUGU LENGTH MARK..TELUGU AI LENGTH MARK
        "\d0c62","\d0c63",  # ; T # Mn   [2] TELUGU VOWEL SIGN VOCALIC L..TELUGU VOWEL SIGN VOCALIC LL
        "\d0C81",  # ; T # Mn       KANNADA SIGN CANDRABINDU
        "\d0CBC",  # ; T # Mn       KANNADA SIGN NUKTA
        "\d0CBF",  # ; T # Mn       KANNADA VOWEL SIGN I
        "\d0CC6",  # ; T # Mn       KANNADA VOWEL SIGN E
        "\d0ccc","\d0ccd",  # ; T # Mn   [2] KANNADA VOWEL SIGN AU..KANNADA SIGN VIRAMA
        "\d0ce2","\d0ce3",  # ; T # Mn   [2] KANNADA VOWEL SIGN VOCALIC L..KANNADA VOWEL SIGN VOCALIC LL
        "\d0d00","\d0d01",  # ; T # Mn   [2] MALAYALAM SIGN COMBINING ANUSVARA ABOVE..MALAYALAM SIGN CANDRABINDU
        "\d0d3b","\d0d3c",  # ; T # Mn   [2] MALAYALAM SIGN VERTICAL BAR VIRAMA..MALAYALAM SIGN CIRCULAR VIRAMA
        "\d0d41","\d0d42","\d0d43","\d0d44",  # ; T # Mn   [4] MALAYALAM VOWEL SIGN U..MALAYALAM VOWEL SIGN VOCALIC RR
        "\d0D4D",  # ; T # Mn       MALAYALAM SIGN VIRAMA
        "\d0d62","\d0d63",  # ; T # Mn   [2] MALAYALAM VOWEL SIGN VOCALIC L..MALAYALAM VOWEL SIGN VOCALIC LL
        "\d0DCA",  # ; T # Mn       SINHALA SIGN AL-LAKUNA
        "\d0dd2","\d0dd3","\d0dd4",  # ; T # Mn   [3] SINHALA VOWEL SIGN KETTI IS-PILLA..SINHALA VOWEL SIGN KETTI PAA-PILLA
        "\d0DD6",  # ; T # Mn       SINHALA VOWEL SIGN DIGA PAA-PILLA
        "\d0E31",  # ; T # Mn       THAI CHARACTER MAI HAN-AKAT
        "\d0e34","\d0e35","\d0e36","\d0e37","\d0e38","\d0e39","\d0e3a",  # ; T # Mn   [7] THAI CHARACTER SARA I..THAI CHARACTER PHINTHU
        "\d0e47","\d0e48","\d0e49","\d0e4a","\d0e4b","\d0e4c","\d0e4d","\d0e4e",  # ; T # Mn   [8] THAI CHARACTER MAITAIKHU..THAI CHARACTER YAMAKKAN
        "\d0EB1",  # ; T # Mn       LAO VOWEL SIGN MAI KAN
        "\d0eb4","\d0eb5","\d0eb6","\d0eb7","\d0eb8","\d0eb9",  # ; T # Mn   [6] LAO VOWEL SIGN I..LAO VOWEL SIGN UU
        "\d0ebb","\d0ebc",  # ; T # Mn   [2] LAO VOWEL SIGN MAI KON..LAO SEMIVOWEL SIGN LO
        "\d0ec8","\d0ec9","\d0eca","\d0ecb","\d0ecc","\d0ecd",  # ; T # Mn   [6] LAO TONE MAI EK..LAO NIGGAHITA
        "\d0f18","\d0f19",  # ; T # Mn   [2] TIBETAN ASTROLOGICAL SIGN -KHYUD PA..TIBETAN ASTROLOGICAL SIGN SDONG TSHUGS
        "\d0F35",  # ; T # Mn       TIBETAN MARK NGAS BZUNG NYI ZLA
        "\d0F37",  # ; T # Mn       TIBETAN MARK NGAS BZUNG SGOR RTAGS
        "\d0F39",  # ; T # Mn       TIBETAN MARK TSA -PHRU
        "\d0f71","\d0f72","\d0f73","\d0f74","\d0f75","\d0f76","\d0f77","\d0f78","\d0f79","\d0f7a","\d0f7b","\d0f7c","\d0f7d","\d0f7e",  # ; T # Mn  [14] TIBETAN VOWEL SIGN AA..TIBETAN SIGN RJES SU NGA RO
        "\d0f80","\d0f81","\d0f82","\d0f83","\d0f84",  # ; T # Mn   [5] TIBETAN VOWEL SIGN REVERSED I..TIBETAN MARK HALANTA
        "\d0f86","\d0f87",  # ; T # Mn   [2] TIBETAN SIGN LCI RTAGS..TIBETAN SIGN YANG RTAGS
        "\d0f8d","\d0f8e","\d0f8f","\d0f90","\d0f91","\d0f92","\d0f93","\d0f94","\d0f95","\d0f96","\d0f97",  # ; T # Mn  [11] TIBETAN SUBJOINED SIGN LCE TSA CAN..TIBETAN SUBJOINED LETTER JA
        "\d0f99","\d0f9a","\d0f9b","\d0f9c","\d0f9d","\d0f9e","\d0f9f","\d0fa0","\d0fa1","\d0fa2","\d0fa3","\d0fa4","\d0fa5","\d0fa6","\d0fa7","\d0fa8","\d0fa9","\d0faa","\d0fab","\d0fac","\d0fad","\d0fae","\d0faf","\d0fb0","\d0fb1","\d0fb2","\d0fb3","\d0fb4","\d0fb5","\d0fb6","\d0fb7","\d0fb8","\d0fb9","\d0fba","\d0fbb","\d0fbc",  # ; T # Mn  [36] TIBETAN SUBJOINED LETTER NYA..TIBETAN SUBJOINED LETTER FIXED-FORM RA
        "\d0FC6",  # ; T # Mn       TIBETAN SYMBOL PADMA GDAN
        "\d102d","\d102e","\d102f","\d1030",  # ; T # Mn   [4] MYANMAR VOWEL SIGN I..MYANMAR VOWEL SIGN UU
        "\d1032","\d1033","\d1034","\d1035","\d1036","\d1037",  # ; T # Mn   [6] MYANMAR VOWEL SIGN AI..MYANMAR SIGN DOT BELOW
        "\d1039","\d103a",  # ; T # Mn   [2] MYANMAR SIGN VIRAMA..MYANMAR SIGN ASAT
        "\d103d","\d103e",  # ; T # Mn   [2] MYANMAR CONSONANT SIGN MEDIAL WA..MYANMAR CONSONANT SIGN MEDIAL HA
        "\d1058","\d1059",  # ; T # Mn   [2] MYANMAR VOWEL SIGN VOCALIC L..MYANMAR VOWEL SIGN VOCALIC LL
        "\d105e","\d105f","\d1060",  # ; T # Mn   [3] MYANMAR CONSONANT SIGN MON MEDIAL NA..MYANMAR CONSONANT SIGN MON MEDIAL LA
        "\d1071","\d1072","\d1073","\d1074",  # ; T # Mn   [4] MYANMAR VOWEL SIGN GEBA KAREN I..MYANMAR VOWEL SIGN KAYAH EE
        "\d1082",  # ; T # Mn       MYANMAR CONSONANT SIGN SHAN MEDIAL WA
        "\d1085","\d1086",  # ; T # Mn   [2] MYANMAR VOWEL SIGN SHAN E ABOVE..MYANMAR VOWEL SIGN SHAN FINAL Y
        "\d108D",  # ; T # Mn       MYANMAR SIGN SHAN COUNCIL EMPHATIC TONE
        "\d109D",  # ; T # Mn       MYANMAR VOWEL SIGN AITON AI
        "\d135d","\d135e","\d135f",  # ; T # Mn   [3] ETHIOPIC COMBINING GEMINATION AND VOWEL LENGTH MARK..ETHIOPIC COMBINING GEMINATION MARK
        "\d1712","\d1713","\d1714",  # ; T # Mn   [3] TAGALOG VOWEL SIGN I..TAGALOG SIGN VIRAMA
        "\d1732","\d1733","\d1734",  # ; T # Mn   [3] HANUNOO VOWEL SIGN I..HANUNOO SIGN PAMUDPOD
        "\d1752","\d1753",  # ; T # Mn   [2] BUHID VOWEL SIGN I..BUHID VOWEL SIGN U
        "\d1772","\d1773",  # ; T # Mn   [2] TAGBANWA VOWEL SIGN I..TAGBANWA VOWEL SIGN U
        "\d17b4","\d17b5",  # ; T # Mn   [2] KHMER VOWEL INHERENT AQ..KHMER VOWEL INHERENT AA
        "\d17b7","\d17b8","\d17b9","\d17ba","\d17bb","\d17bc","\d17bd",  # ; T # Mn   [7] KHMER VOWEL SIGN I..KHMER VOWEL SIGN UA
        "\d17C6",  # ; T # Mn       KHMER SIGN NIKAHIT
        "\d17c9","\d17ca","\d17cb","\d17cc","\d17cd","\d17ce","\d17cf","\d17d0","\d17d1","\d17d2","\d17d3",  # ; T # Mn  [11] KHMER SIGN MUUSIKATOAN..KHMER SIGN BATHAMASAT
        "\d17DD",  # ; T # Mn       KHMER SIGN ATTHACAN
        "\d180b","\d180c","\d180d",  # ; T # Mn   [3] MONGOLIAN FREE VARIATION SELECTOR ONE..MONGOLIAN FREE VARIATION SELECTOR THREE
        "\d1885","\d1886",  # ; T # Mn   [2] MONGOLIAN LETTER ALI GALI BALUDA..MONGOLIAN LETTER ALI GALI THREE BALUDA
        "\d18A9",  # ; T # Mn       MONGOLIAN LETTER ALI GALI DAGALGA
        "\d1920","\d1921","\d1922",  # ; T # Mn   [3] LIMBU VOWEL SIGN A..LIMBU VOWEL SIGN U
        "\d1927","\d1928",  # ; T # Mn   [2] LIMBU VOWEL SIGN E..LIMBU VOWEL SIGN O
        "\d1932",  # ; T # Mn       LIMBU SMALL LETTER ANUSVARA
        "\d1939","\d193a","\d193b",  # ; T # Mn   [3] LIMBU SIGN MUKPHRENG..LIMBU SIGN SA-I
        "\d1a17","\d1a18",  # ; T # Mn   [2] BUGINESE VOWEL SIGN I..BUGINESE VOWEL SIGN U
        "\d1A1B",  # ; T # Mn       BUGINESE VOWEL SIGN AE
        "\d1A56",  # ; T # Mn       TAI THAM CONSONANT SIGN MEDIAL LA
        "\d1a58","\d1a59","\d1a5a","\d1a5b","\d1a5c","\d1a5d","\d1a5e",  # ; T # Mn   [7] TAI THAM SIGN MAI KANG LAI..TAI THAM CONSONANT SIGN SA
        "\d1A60",  # ; T # Mn       TAI THAM SIGN SAKOT
        "\d1A62",  # ; T # Mn       TAI THAM VOWEL SIGN MAI SAT
        "\d1a65","\d1a66","\d1a67","\d1a68","\d1a69","\d1a6a","\d1a6b","\d1a6c",  # ; T # Mn   [8] TAI THAM VOWEL SIGN I..TAI THAM VOWEL SIGN OA BELOW
        "\d1a73","\d1a74","\d1a75","\d1a76","\d1a77","\d1a78","\d1a79","\d1a7a","\d1a7b","\d1a7c",  # ; T # Mn  [10] TAI THAM VOWEL SIGN OA ABOVE..TAI THAM SIGN KHUEN-LUE KARAN
        "\d1A7F",  # ; T # Mn       TAI THAM COMBINING CRYPTOGRAMMIC DOT
        "\d1ab0","\d1ab1","\d1ab2","\d1ab3","\d1ab4","\d1ab5","\d1ab6","\d1ab7","\d1ab8","\d1ab9","\d1aba","\d1abb","\d1abc","\d1abd",  # ; T # Mn  [14] COMBINING DOUBLED CIRCUMFLEX ACCENT..COMBINING PARENTHESES BELOW
        "\d1ABE",  # ; T # Me       COMBINING PARENTHESES OVERLAY
        "\d1b00","\d1b01","\d1b02","\d1b03",  # ; T # Mn   [4] BALINESE SIGN ULU RICEM..BALINESE SIGN SURANG
        "\d1B34",  # ; T # Mn       BALINESE SIGN REREKAN
        "\d1b36","\d1b37","\d1b38","\d1b39","\d1b3a",  # ; T # Mn   [5] BALINESE VOWEL SIGN ULU..BALINESE VOWEL SIGN RA REPA
        "\d1B3C",  # ; T # Mn       BALINESE VOWEL SIGN LA LENGA
        "\d1B42",  # ; T # Mn       BALINESE VOWEL SIGN PEPET
        "\d1b6b","\d1b6c","\d1b6d","\d1b6e","\d1b6f","\d1b70","\d1b71","\d1b72","\d1b73",  # ; T # Mn   [9] BALINESE MUSICAL SYMBOL COMBINING TEGEH..BALINESE MUSICAL SYMBOL COMBINING GONG
        "\d1b80","\d1b81",  # ; T # Mn   [2] SUNDANESE SIGN PANYECEK..SUNDANESE SIGN PANGLAYAR
        "\d1ba2","\d1ba3","\d1ba4","\d1ba5",  # ; T # Mn   [4] SUNDANESE CONSONANT SIGN PANYAKRA..SUNDANESE VOWEL SIGN PANYUKU
        "\d1ba8","\d1ba9",  # ; T # Mn   [2] SUNDANESE VOWEL SIGN PAMEPET..SUNDANESE VOWEL SIGN PANEULEUNG
        "\d1bab","\d1bac","\d1bad",  # ; T # Mn   [3] SUNDANESE SIGN VIRAMA..SUNDANESE CONSONANT SIGN PASANGAN WA
        "\d1BE6",  # ; T # Mn       BATAK SIGN TOMPI
        "\d1be8","\d1be9",  # ; T # Mn   [2] BATAK VOWEL SIGN PAKPAK E..BATAK VOWEL SIGN EE
        "\d1BED",  # ; T # Mn       BATAK VOWEL SIGN KARO O
        "\d1bef","\d1bf0","\d1bf1",  # ; T # Mn   [3] BATAK VOWEL SIGN U FOR SIMALUNGUN SA..BATAK CONSONANT SIGN H
        "\d1c2c","\d1c2d","\d1c2e","\d1c2f","\d1c30","\d1c31","\d1c32","\d1c33",  # ; T # Mn   [8] LEPCHA VOWEL SIGN E..LEPCHA CONSONANT SIGN T
        "\d1c36","\d1c37",  # ; T # Mn   [2] LEPCHA SIGN RAN..LEPCHA SIGN NUKTA
        "\d1cd0","\d1cd1","\d1cd2",  # ; T # Mn   [3] VEDIC TONE KARSHANA..VEDIC TONE PRENKHA
        "\d1cd4","\d1cd5","\d1cd6","\d1cd7","\d1cd8","\d1cd9","\d1cda","\d1cdb","\d1cdc","\d1cdd","\d1cde","\d1cdf","\d1ce0",  # ; T # Mn  [13] VEDIC SIGN YAJURVEDIC MIDLINE SVARITA..VEDIC TONE RIGVEDIC KASHMIRI INDEPENDENT SVARITA
        "\d1ce2","\d1ce3","\d1ce4","\d1ce5","\d1ce6","\d1ce7","\d1ce8",  # ; T # Mn   [7] VEDIC SIGN VISARGA SVARITA..VEDIC SIGN VISARGA ANUDATTA WITH TAIL
        "\d1CED",  # ; T # Mn       VEDIC SIGN TIRYAK
        "\d1CF4",  # ; T # Mn       VEDIC TONE CANDRA ABOVE
        "\d1cf8","\d1cf9",  # ; T # Mn   [2] VEDIC TONE RING ABOVE..VEDIC TONE DOUBLE RING ABOVE
        "\d1dc0","\d1dc1","\d1dc2","\d1dc3","\d1dc4","\d1dc5","\d1dc6","\d1dc7","\d1dc8","\d1dc9","\d1dca","\d1dcb","\d1dcc","\d1dcd","\d1dce","\d1dcf","\d1dd0","\d1dd1","\d1dd2","\d1dd3","\d1dd4","\d1dd5","\d1dd6","\d1dd7","\d1dd8","\d1dd9","\d1dda","\d1ddb","\d1ddc","\d1ddd","\d1dde","\d1ddf","\d1de0","\d1de1","\d1de2","\d1de3","\d1de4","\d1de5","\d1de6","\d1de7","\d1de8","\d1de9","\d1dea","\d1deb","\d1dec","\d1ded","\d1dee","\d1def","\d1df0","\d1df1","\d1df2","\d1df3","\d1df4","\d1df5","\d1df6","\d1df7","\d1df8","\d1df9",  # ; T # Mn  [58] COMBINING DOTTED GRAVE ACCENT..COMBINING WIDE INVERTED BRIDGE BELOW
        "\d1dfb","\d1dfc","\d1dfd","\d1dfe","\d1dff",  # ; T # Mn   [5] COMBINING DELETION MARK..COMBINING RIGHT ARROWHEAD AND DOWN ARROWHEAD BELOW
        "\d200B",  # ; T # Cf       ZERO WIDTH SPACE
        "\d200e","\d200f",  # ; T # Cf   [2] LEFT-TO-RIGHT MARK..RIGHT-TO-LEFT MARK
        "\d202a","\d202b","\d202c","\d202d","\d202e",  # ; T # Cf   [5] LEFT-TO-RIGHT EMBEDDING..RIGHT-TO-LEFT OVERRIDE
        "\d2060","\d2061","\d2062","\d2063","\d2064",  # ; T # Cf   [5] WORD JOINER..INVISIBLE PLUS
        "\d206a","\d206b","\d206c","\d206d","\d206e","\d206f",  # ; T # Cf   [6] INHIBIT SYMMETRIC SWAPPING..NOMINAL DIGIT SHAPES
        "\d20d0","\d20d1","\d20d2","\d20d3","\d20d4","\d20d5","\d20d6","\d20d7","\d20d8","\d20d9","\d20da","\d20db","\d20dc",  # ; T # Mn  [13] COMBINING LEFT HARPOON ABOVE..COMBINING FOUR DOTS ABOVE
        "\d20dd","\d20de","\d20df","\d20e0",  # ; T # Me   [4] COMBINING ENCLOSING CIRCLE..COMBINING ENCLOSING CIRCLE BACKSLASH
        "\d20E1",  # ; T # Mn       COMBINING LEFT RIGHT ARROW ABOVE
        "\d20e2","\d20e3","\d20e4",  # ; T # Me   [3] COMBINING ENCLOSING SCREEN..COMBINING ENCLOSING UPWARD POINTING TRIANGLE
        "\d20e5","\d20e6","\d20e7","\d20e8","\d20e9","\d20ea","\d20eb","\d20ec","\d20ed","\d20ee","\d20ef","\d20f0",  # ; T # Mn  [12] COMBINING REVERSE SOLIDUS OVERLAY..COMBINING ASTERISK ABOVE
        "\d2cef","\d2cf0","\d2cf1",  # ; T # Mn   [3] COPTIC COMBINING NI ABOVE..COPTIC COMBINING SPIRITUS LENIS
        "\d2D7F",  # ; T # Mn       TIFINAGH CONSONANT JOINER
        "\d2de0","\d2de1","\d2de2","\d2de3","\d2de4","\d2de5","\d2de6","\d2de7","\d2de8","\d2de9","\d2dea","\d2deb","\d2dec","\d2ded","\d2dee","\d2def","\d2df0","\d2df1","\d2df2","\d2df3","\d2df4","\d2df5","\d2df6","\d2df7","\d2df8","\d2df9","\d2dfa","\d2dfb","\d2dfc","\d2dfd","\d2dfe","\d2dff",  # ; T # Mn  [32] COMBINING CYRILLIC LETTER BE..COMBINING CYRILLIC LETTER IOTIFIED BIG YUS
        "\d302a","\d302b","\d302c","\d302d",  # ; T # Mn   [4] IDEOGRAPHIC LEVEL TONE MARK..IDEOGRAPHIC ENTERING TONE MARK
        "\d3099","\d309a",  # ; T # Mn   [2] COMBINING KATAKANA-HIRAGANA VOICED SOUND MARK..COMBINING KATAKANA-HIRAGANA SEMI-VOICED SOUND MARK
        "\dA66F",  # ; T # Mn       COMBINING CYRILLIC VZMET
        "\da670","\da671","\da672",  # ; T # Me   [3] COMBINING CYRILLIC TEN MILLIONS SIGN..COMBINING CYRILLIC THOUSAND MILLIONS SIGN
        "\da674","\da675","\da676","\da677","\da678","\da679","\da67a","\da67b","\da67c","\da67d",  # ; T # Mn  [10] COMBINING CYRILLIC LETTER UKRAINIAN IE..COMBINING CYRILLIC PAYEROK
        "\da69e","\da69f",  # ; T # Mn   [2] COMBINING CYRILLIC LETTER EF..COMBINING CYRILLIC LETTER IOTIFIED E
        "\da6f0","\da6f1",  # ; T # Mn   [2] BAMUM COMBINING MARK KOQNDON..BAMUM COMBINING MARK TUKWENTIS
        "\dA802",  # ; T # Mn       SYLOTI NAGRI SIGN DVISVARA
        "\dA806",  # ; T # Mn       SYLOTI NAGRI SIGN HASANTA
        "\dA80B",  # ; T # Mn       SYLOTI NAGRI SIGN ANUSVARA
        "\da825","\da826",  # ; T # Mn   [2] SYLOTI NAGRI VOWEL SIGN U..SYLOTI NAGRI VOWEL SIGN E
        "\da8c4","\da8c5",  # ; T # Mn   [2] SAURASHTRA SIGN VIRAMA..SAURASHTRA SIGN CANDRABINDU
        "\da8e0","\da8e1","\da8e2","\da8e3","\da8e4","\da8e5","\da8e6","\da8e7","\da8e8","\da8e9","\da8ea","\da8eb","\da8ec","\da8ed","\da8ee","\da8ef","\da8f0","\da8f1",  # ; T # Mn  [18] COMBINING DEVANAGARI DIGIT ZERO..COMBINING DEVANAGARI SIGN AVAGRAHA
        "\da926","\da927","\da928","\da929","\da92a","\da92b","\da92c","\da92d",  # ; T # Mn   [8] KAYAH LI VOWEL UE..KAYAH LI TONE CALYA PLOPHU
        "\da947","\da948","\da949","\da94a","\da94b","\da94c","\da94d","\da94e","\da94f","\da950","\da951",  # ; T # Mn  [11] REJANG VOWEL SIGN I..REJANG CONSONANT SIGN R
        "\da980","\da981","\da982",  # ; T # Mn   [3] JAVANESE SIGN PANYANGGA..JAVANESE SIGN LAYAR
        "\dA9B3",  # ; T # Mn       JAVANESE SIGN CECAK TELU
        "\da9b6","\da9b7","\da9b8","\da9b9",  # ; T # Mn   [4] JAVANESE VOWEL SIGN WULU..JAVANESE VOWEL SIGN SUKU MENDUT
        "\dA9BC",  # ; T # Mn       JAVANESE VOWEL SIGN PEPET
        "\dA9E5",  # ; T # Mn       MYANMAR SIGN SHAN SAW
        "\daa29","\daa2a","\daa2b","\daa2c","\daa2d","\daa2e",  # ; T # Mn   [6] CHAM VOWEL SIGN AA..CHAM VOWEL SIGN OE
        "\daa31","\daa32",  # ; T # Mn   [2] CHAM VOWEL SIGN AU..CHAM VOWEL SIGN UE
        "\daa35","\daa36",  # ; T # Mn   [2] CHAM CONSONANT SIGN LA..CHAM CONSONANT SIGN WA
        "\dAA43",  # ; T # Mn       CHAM CONSONANT SIGN FINAL NG
        "\dAA4C",  # ; T # Mn       CHAM CONSONANT SIGN FINAL M
        "\dAA7C",  # ; T # Mn       MYANMAR SIGN TAI LAING TONE-2
        "\dAAB0",  # ; T # Mn       TAI VIET MAI KANG
        "\daab2","\daab3","\daab4",  # ; T # Mn   [3] TAI VIET VOWEL I..TAI VIET VOWEL U
        "\daab7","\daab8",  # ; T # Mn   [2] TAI VIET MAI KHIT..TAI VIET VOWEL IA
        "\daabe","\daabf",  # ; T # Mn   [2] TAI VIET VOWEL AM..TAI VIET TONE MAI EK
        "\dAAC1",  # ; T # Mn       TAI VIET TONE MAI THO
        "\daaec","\daaed",  # ; T # Mn   [2] MEETEI MAYEK VOWEL SIGN UU..MEETEI MAYEK VOWEL SIGN AAI
        "\dAAF6",  # ; T # Mn       MEETEI MAYEK VIRAMA
        "\dABE5",  # ; T # Mn       MEETEI MAYEK VOWEL SIGN ANAP
        "\dABE8",  # ; T # Mn       MEETEI MAYEK VOWEL SIGN UNAP
        "\dABED",  # ; T # Mn       MEETEI MAYEK APUN IYEK
        "\dFB1E",  # ; T # Mn       HEBREW POINT JUDEO-SPANISH VARIKA
        "\dfe00","\dfe01","\dfe02","\dfe03","\dfe04","\dfe05","\dfe06","\dfe07","\dfe08","\dfe09","\dfe0a","\dfe0b","\dfe0c","\dfe0d","\dfe0e","\dfe0f",  # ; T # Mn  [16] VARIATION SELECTOR-1..VARIATION SELECTOR-16
        "\dfe20","\dfe21","\dfe22","\dfe23","\dfe24","\dfe25","\dfe26","\dfe27","\dfe28","\dfe29","\dfe2a","\dfe2b","\dfe2c","\dfe2d","\dfe2e","\dfe2f",  # ; T # Mn  [16] COMBINING LIGATURE LEFT HALF..COMBINING CYRILLIC TITLO RIGHT HALF
        "\dFEFF",  # ; T # Cf       ZERO WIDTH NO-BREAK SPACE
        "\dfff9","\dfffa","\dfffb",  # ; T # Cf   [3] INTERLINEAR ANNOTATION ANCHOR..INTERLINEAR ANNOTATION TERMINATOR
        "\d101FD",  # ; T # Mn       PHAISTOS DISC SIGN COMBINING OBLIQUE STROKE
        "\d102E0",  # ; T # Mn       COPTIC EPACT THOUSANDS MARK
        "\d10376","\d10377","\d10378","\d10379","\d1037a",  # ; T # Mn   [5] COMBINING OLD PERMIC LETTER AN..COMBINING OLD PERMIC LETTER SII
        "\d10a01","\d10a02","\d10a03",  # ; T # Mn   [3] KHAROSHTHI VOWEL SIGN I..KHAROSHTHI VOWEL SIGN VOCALIC R
        "\d10a05","\d10a06",  # ; T # Mn   [2] KHAROSHTHI VOWEL SIGN E..KHAROSHTHI VOWEL SIGN O
        "\d10a0c","\d10a0d","\d10a0e","\d10a0f",  # ; T # Mn   [4] KHAROSHTHI VOWEL LENGTH MARK..KHAROSHTHI SIGN VISARGA
        "\d10a38","\d10a39","\d10a3a",  # ; T # Mn   [3] KHAROSHTHI SIGN BAR ABOVE..KHAROSHTHI SIGN DOT BELOW
        "\d10A3F",  # ; T # Mn       KHAROSHTHI VIRAMA
        "\d10ae5","\d10ae6",  # ; T # Mn   [2] MANICHAEAN ABBREVIATION MARK ABOVE..MANICHAEAN ABBREVIATION MARK BELOW
        "\d11001",  # ; T # Mn       BRAHMI SIGN ANUSVARA
        "\d11038","\d11039","\d1103a","\d1103b","\d1103c","\d1103d","\d1103e","\d1103f","\d11040","\d11041","\d11042","\d11043","\d11044","\d11045","\d11046",  # ; T # Mn  [15] BRAHMI VOWEL SIGN AA..BRAHMI VIRAMA
        "\d1107f","\d11080","\d11081",  # ; T # Mn   [3] BRAHMI NUMBER JOINER..KAITHI SIGN ANUSVARA
        "\d110b3","\d110b4","\d110b5","\d110b6",  # ; T # Mn   [4] KAITHI VOWEL SIGN U..KAITHI VOWEL SIGN AI
        "\d110b9","\d110ba",  # ; T # Mn   [2] KAITHI SIGN VIRAMA..KAITHI SIGN NUKTA
        "\d110BD",  # ; T # Cf       KAITHI NUMBER SIGN
        "\d11100","\d11101","\d11102",  # ; T # Mn   [3] CHAKMA SIGN CANDRABINDU..CHAKMA SIGN VISARGA
        "\d11127","\d11128","\d11129","\d1112a","\d1112b",  # ; T # Mn   [5] CHAKMA VOWEL SIGN A..CHAKMA VOWEL SIGN UU
        "\d1112d","\d1112e","\d1112f","\d11130","\d11131","\d11132","\d11133","\d11134",  # ; T # Mn   [8] CHAKMA VOWEL SIGN AI..CHAKMA MAAYYAA
        "\d11173",  # ; T # Mn       MAHAJANI SIGN NUKTA
        "\d11180","\d11181",  # ; T # Mn   [2] SHARADA SIGN CANDRABINDU..SHARADA SIGN ANUSVARA
        "\d111b6","\d111b7","\d111b8","\d111b9","\d111ba","\d111bb","\d111bc","\d111bd","\d111be",  # ; T # Mn   [9] SHARADA VOWEL SIGN U..SHARADA VOWEL SIGN O
        "\d111ca","\d111cb","\d111cc",  # ; T # Mn   [3] SHARADA SIGN NUKTA..SHARADA EXTRA SHORT VOWEL MARK
        "\d1122f","\d11230","\d11231",  # ; T # Mn   [3] KHOJKI VOWEL SIGN U..KHOJKI VOWEL SIGN AI
        "\d11234",  # ; T # Mn       KHOJKI SIGN ANUSVARA
        "\d11236","\d11237",  # ; T # Mn   [2] KHOJKI SIGN NUKTA..KHOJKI SIGN SHADDA
        "\d1123E",  # ; T # Mn       KHOJKI SIGN SUKUN
        "\d112DF",  # ; T # Mn       KHUDAWADI SIGN ANUSVARA
        "\d112e3","\d112e4","\d112e5","\d112e6","\d112e7","\d112e8","\d112e9","\d112ea",  # ; T # Mn   [8] KHUDAWADI VOWEL SIGN U..KHUDAWADI SIGN VIRAMA
        "\d11300","\d11301",  # ; T # Mn   [2] GRANTHA SIGN COMBINING ANUSVARA ABOVE..GRANTHA SIGN CANDRABINDU
        "\d1133C",  # ; T # Mn       GRANTHA SIGN NUKTA
        "\d11340",  # ; T # Mn       GRANTHA VOWEL SIGN II
        "\d11366","\d11367","\d11368","\d11369","\d1136a","\d1136b","\d1136c",  # ; T # Mn   [7] COMBINING GRANTHA DIGIT ZERO..COMBINING GRANTHA DIGIT SIX
        "\d11370","\d11371","\d11372","\d11373","\d11374",  # ; T # Mn   [5] COMBINING GRANTHA LETTER A..COMBINING GRANTHA LETTER PA
        "\d11438","\d11439","\d1143a","\d1143b","\d1143c","\d1143d","\d1143e","\d1143f",  # ; T # Mn   [8] NEWA VOWEL SIGN U..NEWA VOWEL SIGN AI
        "\d11442","\d11443","\d11444",  # ; T # Mn   [3] NEWA SIGN VIRAMA..NEWA SIGN ANUSVARA
        "\d11446",  # ; T # Mn       NEWA SIGN NUKTA
        "\d114b3","\d114b4","\d114b5","\d114b6","\d114b7","\d114b8",  # ; T # Mn   [6] TIRHUTA VOWEL SIGN U..TIRHUTA VOWEL SIGN VOCALIC LL
        "\d114BA",  # ; T # Mn       TIRHUTA VOWEL SIGN SHORT E
        "\d114bf","\d114c0",  # ; T # Mn   [2] TIRHUTA SIGN CANDRABINDU..TIRHUTA SIGN ANUSVARA
        "\d114c2","\d114c3",  # ; T # Mn   [2] TIRHUTA SIGN VIRAMA..TIRHUTA SIGN NUKTA
        "\d115b2","\d115b3","\d115b4","\d115b5",  # ; T # Mn   [4] SIDDHAM VOWEL SIGN U..SIDDHAM VOWEL SIGN VOCALIC RR
        "\d115bc","\d115bd",  # ; T # Mn   [2] SIDDHAM SIGN CANDRABINDU..SIDDHAM SIGN ANUSVARA
        "\d115bf","\d115c0",  # ; T # Mn   [2] SIDDHAM SIGN VIRAMA..SIDDHAM SIGN NUKTA
        "\d115dc","\d115dd",  # ; T # Mn   [2] SIDDHAM VOWEL SIGN ALTERNATE U..SIDDHAM VOWEL SIGN ALTERNATE UU
        "\d11633","\d11634","\d11635","\d11636","\d11637","\d11638","\d11639","\d1163a",  # ; T # Mn   [8] MODI VOWEL SIGN U..MODI VOWEL SIGN AI
        "\d1163D",  # ; T # Mn       MODI SIGN ANUSVARA
        "\d1163f","\d11640",  # ; T # Mn   [2] MODI SIGN VIRAMA..MODI SIGN ARDHACANDRA
        "\d116AB",  # ; T # Mn       TAKRI SIGN ANUSVARA
        "\d116AD",  # ; T # Mn       TAKRI VOWEL SIGN AA
        "\d116b0","\d116b1","\d116b2","\d116b3","\d116b4","\d116b5",  # ; T # Mn   [6] TAKRI VOWEL SIGN U..TAKRI VOWEL SIGN AU
        "\d116B7",  # ; T # Mn       TAKRI SIGN NUKTA
        "\d1171d","\d1171e","\d1171f",  # ; T # Mn   [3] AHOM CONSONANT SIGN MEDIAL LA..AHOM CONSONANT SIGN MEDIAL LIGATING RA
        "\d11722","\d11723","\d11724","\d11725",  # ; T # Mn   [4] AHOM VOWEL SIGN I..AHOM VOWEL SIGN UU
        "\d11727","\d11728","\d11729","\d1172a","\d1172b",  # ; T # Mn   [5] AHOM VOWEL SIGN AW..AHOM SIGN KILLER
        "\d11a01","\d11a02","\d11a03","\d11a04","\d11a05","\d11a06",  # ; T # Mn   [6] ZANABAZAR SQUARE VOWEL SIGN I..ZANABAZAR SQUARE VOWEL SIGN O
        "\d11a09","\d11a0a",  # ; T # Mn   [2] ZANABAZAR SQUARE VOWEL SIGN REVERSED I..ZANABAZAR SQUARE VOWEL LENGTH MARK
        "\d11a33","\d11a34","\d11a35","\d11a36","\d11a37","\d11a38",  # ; T # Mn   [6] ZANABAZAR SQUARE FINAL CONSONANT MARK..ZANABAZAR SQUARE SIGN ANUSVARA
        "\d11a3b","\d11a3c","\d11a3d","\d11a3e",  # ; T # Mn   [4] ZANABAZAR SQUARE CLUSTER-FINAL LETTER YA..ZANABAZAR SQUARE CLUSTER-FINAL LETTER VA
        "\d11A47",  # ; T # Mn       ZANABAZAR SQUARE SUBJOINER
        "\d11a51","\d11a52","\d11a53","\d11a54","\d11a55","\d11a56",  # ; T # Mn   [6] SOYOMBO VOWEL SIGN I..SOYOMBO VOWEL SIGN OE
        "\d11a59","\d11a5a","\d11a5b",  # ; T # Mn   [3] SOYOMBO VOWEL SIGN VOCALIC R..SOYOMBO VOWEL LENGTH MARK
        "\d11a8a","\d11a8b","\d11a8c","\d11a8d","\d11a8e","\d11a8f","\d11a90","\d11a91","\d11a92","\d11a93","\d11a94","\d11a95","\d11a96",  # ; T # Mn  [13] SOYOMBO FINAL CONSONANT SIGN G..SOYOMBO SIGN ANUSVARA
        "\d11a98","\d11a99",  # ; T # Mn   [2] SOYOMBO GEMINATION MARK..SOYOMBO SUBJOINER
        "\d11c30","\d11c31","\d11c32","\d11c33","\d11c34","\d11c35","\d11c36",  # ; T # Mn   [7] BHAIKSUKI VOWEL SIGN I..BHAIKSUKI VOWEL SIGN VOCALIC L
        "\d11c38","\d11c39","\d11c3a","\d11c3b","\d11c3c","\d11c3d",  # ; T # Mn   [6] BHAIKSUKI VOWEL SIGN E..BHAIKSUKI SIGN ANUSVARA
        "\d11C3F",  # ; T # Mn       BHAIKSUKI SIGN VIRAMA
        "\d11c92","\d11c93","\d11c94","\d11c95","\d11c96","\d11c97","\d11c98","\d11c99","\d11c9a","\d11c9b","\d11c9c","\d11c9d","\d11c9e","\d11c9f","\d11ca0","\d11ca1","\d11ca2","\d11ca3","\d11ca4","\d11ca5","\d11ca6","\d11ca7",  # ; T # Mn  [22] MARCHEN SUBJOINED LETTER KA..MARCHEN SUBJOINED LETTER ZA
        "\d11caa","\d11cab","\d11cac","\d11cad","\d11cae","\d11caf","\d11cb0",  # ; T # Mn   [7] MARCHEN SUBJOINED LETTER RA..MARCHEN VOWEL SIGN AA
        "\d11cb2","\d11cb3",  # ; T # Mn   [2] MARCHEN VOWEL SIGN U..MARCHEN VOWEL SIGN E
        "\d11cb5","\d11cb6",  # ; T # Mn   [2] MARCHEN SIGN ANUSVARA..MARCHEN SIGN CANDRABINDU
        "\d11d31","\d11d32","\d11d33","\d11d34","\d11d35","\d11d36",  # ; T # Mn   [6] MASARAM GONDI VOWEL SIGN AA..MASARAM GONDI VOWEL SIGN VOCALIC R
        "\d11D3A",  # ; T # Mn       MASARAM GONDI VOWEL SIGN E
        "\d11d3c","\d11d3d",  # ; T # Mn   [2] MASARAM GONDI VOWEL SIGN AI..MASARAM GONDI VOWEL SIGN O
        "\d11d3f","\d11d40","\d11d41","\d11d42","\d11d43","\d11d44","\d11d45",  # ; T # Mn   [7] MASARAM GONDI VOWEL SIGN AU..MASARAM GONDI VIRAMA
        "\d11D47",  # ; T # Mn       MASARAM GONDI RA-KARA
        "\d16af0","\d16af1","\d16af2","\d16af3","\d16af4",  # ; T # Mn   [5] BASSA VAH COMBINING HIGH TONE..BASSA VAH COMBINING HIGH-LOW TONE
        "\d16b30","\d16b31","\d16b32","\d16b33","\d16b34","\d16b35","\d16b36",  # ; T # Mn   [7] PAHAWH HMONG MARK CIM TUB..PAHAWH HMONG MARK CIM TAUM
        "\d16f8f","\d16f90","\d16f91","\d16f92",  # ; T # Mn   [4] MIAO TONE RIGHT..MIAO TONE BELOW
        "\d1bc9d","\d1bc9e",  # ; T # Mn   [2] DUPLOYAN THICK LETTER SELECTOR..DUPLOYAN DOUBLE MARK
        "\d1bca0","\d1bca1","\d1bca2","\d1bca3",  # ; T # Cf   [4] SHORTHAND FORMAT LETTER OVERLAP..SHORTHAND FORMAT UP STEP
        "\d1d167","\d1d168","\d1d169",  # ; T # Mn   [3] MUSICAL SYMBOL COMBINING TREMOLO-1..MUSICAL SYMBOL COMBINING TREMOLO-3
        "\d1d173","\d1d174","\d1d175","\d1d176","\d1d177","\d1d178","\d1d179","\d1d17a",  # ; T # Cf   [8] MUSICAL SYMBOL BEGIN BEAM..MUSICAL SYMBOL END PHRASE
        "\d1d17b","\d1d17c","\d1d17d","\d1d17e","\d1d17f","\d1d180","\d1d181","\d1d182",  # ; T # Mn   [8] MUSICAL SYMBOL COMBINING ACCENT..MUSICAL SYMBOL COMBINING LOURE
        "\d1d185","\d1d186","\d1d187","\d1d188","\d1d189","\d1d18a","\d1d18b",  # ; T # Mn   [7] MUSICAL SYMBOL COMBINING DOIT..MUSICAL SYMBOL COMBINING TRIPLE TONGUE
        "\d1d1aa","\d1d1ab","\d1d1ac","\d1d1ad",  # ; T # Mn   [4] MUSICAL SYMBOL COMBINING DOWN BOW..MUSICAL SYMBOL COMBINING SNAP PIZZICATO
        "\d1d242","\d1d243","\d1d244",  # ; T # Mn   [3] COMBINING GREEK MUSICAL TRISEME..COMBINING GREEK MUSICAL PENTASEME
        "\d1da00","\d1da01","\d1da02","\d1da03","\d1da04","\d1da05","\d1da06","\d1da07","\d1da08","\d1da09","\d1da0a","\d1da0b","\d1da0c","\d1da0d","\d1da0e","\d1da0f","\d1da10","\d1da11","\d1da12","\d1da13","\d1da14","\d1da15","\d1da16","\d1da17","\d1da18","\d1da19","\d1da1a","\d1da1b","\d1da1c","\d1da1d","\d1da1e","\d1da1f","\d1da20","\d1da21","\d1da22","\d1da23","\d1da24","\d1da25","\d1da26","\d1da27","\d1da28","\d1da29","\d1da2a","\d1da2b","\d1da2c","\d1da2d","\d1da2e","\d1da2f","\d1da30","\d1da31","\d1da32","\d1da33","\d1da34","\d1da35","\d1da36",  # ; T # Mn  [55] SIGNWRITING HEAD RIM..SIGNWRITING AIR SUCKING IN
        "\d1da3b","\d1da3c","\d1da3d","\d1da3e","\d1da3f","\d1da40","\d1da41","\d1da42","\d1da43","\d1da44","\d1da45","\d1da46","\d1da47","\d1da48","\d1da49","\d1da4a","\d1da4b","\d1da4c","\d1da4d","\d1da4e","\d1da4f","\d1da50","\d1da51","\d1da52","\d1da53","\d1da54","\d1da55","\d1da56","\d1da57","\d1da58","\d1da59","\d1da5a","\d1da5b","\d1da5c","\d1da5d","\d1da5e","\d1da5f","\d1da60","\d1da61","\d1da62","\d1da63","\d1da64","\d1da65","\d1da66","\d1da67","\d1da68","\d1da69","\d1da6a","\d1da6b","\d1da6c",  # ; T # Mn  [50] SIGNWRITING MOUTH CLOSED NEUTRAL..SIGNWRITING EXCITEMENT
        "\d1DA75",  # ; T # Mn       SIGNWRITING UPPER BODY TILTING FROM HIP JOINTS
        "\d1DA84",  # ; T # Mn       SIGNWRITING LOCATION HEAD NECK
        "\d1da9b","\d1da9c","\d1da9d","\d1da9e","\d1da9f",  # ; T # Mn   [5] SIGNWRITING FILL MODIFIER-2..SIGNWRITING FILL MODIFIER-6
        "\d1daa1","\d1daa2","\d1daa3","\d1daa4","\d1daa5","\d1daa6","\d1daa7","\d1daa8","\d1daa9","\d1daaa","\d1daab","\d1daac","\d1daad","\d1daae","\d1daaf",  # ; T # Mn  [15] SIGNWRITING ROTATION MODIFIER-2..SIGNWRITING ROTATION MODIFIER-16
        "\d1e000","\d1e001","\d1e002","\d1e003","\d1e004","\d1e005","\d1e006",  # ; T # Mn   [7] COMBINING GLAGOLITIC LETTER AZU..COMBINING GLAGOLITIC LETTER ZHIVETE
        "\d1e008","\d1e009","\d1e00a","\d1e00b","\d1e00c","\d1e00d","\d1e00e","\d1e00f","\d1e010","\d1e011","\d1e012","\d1e013","\d1e014","\d1e015","\d1e016","\d1e017","\d1e018",  # ; T # Mn  [17] COMBINING GLAGOLITIC LETTER ZEMLJA..COMBINING GLAGOLITIC LETTER HERU
        "\d1e01b","\d1e01c","\d1e01d","\d1e01e","\d1e01f","\d1e020","\d1e021",  # ; T # Mn   [7] COMBINING GLAGOLITIC LETTER SHTA..COMBINING GLAGOLITIC LETTER YATI
        "\d1e023","\d1e024",  # ; T # Mn   [2] COMBINING GLAGOLITIC LETTER YU..COMBINING GLAGOLITIC LETTER SMALL YUS
        "\d1e026","\d1e027","\d1e028","\d1e029","\d1e02a",  # ; T # Mn   [5] COMBINING GLAGOLITIC LETTER YO..COMBINING GLAGOLITIC LETTER FITA
        "\d1e8d0","\d1e8d1","\d1e8d2","\d1e8d3","\d1e8d4","\d1e8d5","\d1e8d6",  # ; T # Mn   [7] MENDE KIKAKUI COMBINING NUMBER TEENS..MENDE KIKAKUI COMBINING NUMBER MILLIONS
        "\d1e944","\d1e945","\d1e946","\d1e947","\d1e948","\d1e949","\d1e94a",  # ; T # Mn   [7] ADLAM ALIF LENGTHENER..ADLAM NUKTA
        "\dE0001",  # ; T # Cf       LANGUAGE TAG
        "\de0020","\de0021","\de0022","\de0023","\de0024","\de0025","\de0026","\de0027","\de0028","\de0029","\de002a","\de002b","\de002c","\de002d","\de002e","\de002f","\de0030","\de0031","\de0032","\de0033","\de0034","\de0035","\de0036","\de0037","\de0038","\de0039","\de003a","\de003b","\de003c","\de003d","\de003e","\de003f","\de0040","\de0041","\de0042","\de0043","\de0044","\de0045","\de0046","\de0047","\de0048","\de0049","\de004a","\de004b","\de004c","\de004d","\de004e","\de004f","\de0050","\de0051","\de0052","\de0053","\de0054","\de0055","\de0056","\de0057","\de0058","\de0059","\de005a","\de005b","\de005c","\de005d","\de005e","\de005f","\de0060","\de0061","\de0062","\de0063","\de0064","\de0065","\de0066","\de0067","\de0068","\de0069","\de006a","\de006b","\de006c","\de006d","\de006e","\de006f","\de0070","\de0071","\de0072","\de0073","\de0074","\de0075","\de0076","\de0077","\de0078","\de0079","\de007a","\de007b","\de007c","\de007d","\de007e","\de007f",  # ; T # Cf  [96] TAG SPACE..CANCEL TAG
        "\de0100","\de0101","\de0102","\de0103","\de0104","\de0105","\de0106","\de0107","\de0108","\de0109","\de010a","\de010b","\de010c","\de010d","\de010e","\de010f","\de0110","\de0111","\de0112","\de0113","\de0114","\de0115","\de0116","\de0117","\de0118","\de0119","\de011a","\de011b","\de011c","\de011d","\de011e","\de011f","\de0120","\de0121","\de0122","\de0123","\de0124","\de0125","\de0126","\de0127","\de0128","\de0129","\de012a","\de012b","\de012c","\de012d","\de012e","\de012f","\de0130","\de0131","\de0132","\de0133","\de0134","\de0135","\de0136","\de0137","\de0138","\de0139","\de013a","\de013b","\de013c","\de013d","\de013e","\de013f","\de0140","\de0141","\de0142","\de0143","\de0144","\de0145","\de0146","\de0147","\de0148","\de0149","\de014a","\de014b","\de014c","\de014d","\de014e","\de014f","\de0150","\de0151","\de0152","\de0153","\de0154","\de0155","\de0156","\de0157","\de0158","\de0159","\de015a","\de015b","\de015c","\de015d","\de015e","\de015f","\de0160","\de0161","\de0162","\de0163","\de0164","\de0165","\de0166","\de0167","\de0168","\de0169","\de016a","\de016b","\de016c","\de016d","\de016e","\de016f","\de0170","\de0171","\de0172","\de0173","\de0174","\de0175","\de0176","\de0177","\de0178","\de0179","\de017a","\de017b","\de017c","\de017d","\de017e","\de017f","\de0180","\de0181","\de0182","\de0183","\de0184","\de0185","\de0186","\de0187","\de0188","\de0189","\de018a","\de018b","\de018c","\de018d","\de018e","\de018f","\de0190","\de0191","\de0192","\de0193","\de0194","\de0195","\de0196","\de0197","\de0198","\de0199","\de019a","\de019b","\de019c","\de019d","\de019e","\de019f","\de01a0","\de01a1","\de01a2","\de01a3","\de01a4","\de01a5","\de01a6","\de01a7","\de01a8","\de01a9","\de01aa","\de01ab","\de01ac","\de01ad","\de01ae","\de01af","\de01b0","\de01b1","\de01b2","\de01b3","\de01b4","\de01b5","\de01b6","\de01b7","\de01b8","\de01b9","\de01ba","\de01bb","\de01bc","\de01bd","\de01be","\de01bf","\de01c0","\de01c1","\de01c2","\de01c3","\de01c4","\de01c5","\de01c6","\de01c7","\de01c8","\de01c9","\de01ca","\de01cb","\de01cc","\de01cd","\de01ce","\de01cf","\de01d0","\de01d1","\de01d2","\de01d3","\de01d4","\de01d5","\de01d6","\de01d7","\de01d8","\de01d9","\de01da","\de01db","\de01dc","\de01dd","\de01de","\de01df","\de01e0","\de01e1","\de01e2","\de01e3","\de01e4","\de01e5","\de01e6","\de01e7","\de01e8","\de01e9","\de01ea","\de01eb","\de01ec","\de01ed","\de01ee","\de01ef",  # ; T # Mn [240] VARIATION SELECTOR-17..VARIATION SELECTOR-256
    ]
    test_data.each do |string|
      assert @validator.valid_encoding?(string), "U10_DerivedJoiningType: #{string}"
      assert string.force_encoding("UTF-8").valid_encoding?, "U10_DerivedJoiningType: #{string}" if @vercheck
    end
  end

end

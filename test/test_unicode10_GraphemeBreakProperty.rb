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
class TestUnicode10GraphemeBreakProperty < Test::Unit::TestCase
  #
  def setup
    @validator = UTF8::Validator.new
    @vercheck = ((RUBY_VERSION =~ /1.9/) or (RUBY_VERSION =~ /2./)) ? true : false
  end

  #
  def teardown
    @validator = nil
  end

  def test_unicode10_GraphemeBreakProperty
    test_data = [
        "\d0600","\d0601","\d0602","\d0603","\d0604","\d0605",  # ; Prepend # Cf   [6] ARABIC NUMBER SIGN..ARABIC NUMBER MARK ABOVE
        "\d06DD",  # ; Prepend # Cf       ARABIC END OF AYAH
        "\d070F",  # ; Prepend # Cf       SYRIAC ABBREVIATION MARK
        "\d08E2",  # ; Prepend # Cf       ARABIC DISPUTED END OF AYAH
        "\d0D4E",  # ; Prepend # Lo       MALAYALAM LETTER DOT REPH
        "\d110BD",  # ; Prepend # Cf       KAITHI NUMBER SIGN
        "\d111c2","\d111c3",  # ; Prepend # Lo   [2] SHARADA SIGN JIHVAMULIYA..SHARADA SIGN UPADHMANIYA
        "\d11A3A",  # ; Prepend # Lo       ZANABAZAR SQUARE CLUSTER-INITIAL LETTER RA
        "\d11a86","\d11a87","\d11a88","\d11a89",  # ; Prepend # Lo   [4] SOYOMBO CLUSTER-INITIAL LETTER RA..SOYOMBO CLUSTER-INITIAL LETTER SA
        "\d11D46",  # ; Prepend # Lo       MASARAM GONDI REPHA
        "\d000D",  # ; CR # Cc       <control-000D>
        "\d000A",  # ; LF # Cc       <control-000A>
        "\d0000","\d0001","\d0002","\d0003","\d0004","\d0005","\d0006","\d0007","\d0008","\d0009",  # ; Control # Cc  [10] <control-0000>..<control-0009>
        "\d000b","\d000c",  # ; Control # Cc   [2] <control-000B>..<control-000C>
        "\d000e","\d000f","\d0010","\d0011","\d0012","\d0013","\d0014","\d0015","\d0016","\d0017","\d0018","\d0019","\d001a","\d001b","\d001c","\d001d","\d001e","\d001f",  # ; Control # Cc  [18] <control-000E>..<control-001F>
        "\d007f","\d0080","\d0081","\d0082","\d0083","\d0084","\d0085","\d0086","\d0087","\d0088","\d0089","\d008a","\d008b","\d008c","\d008d","\d008e","\d008f","\d0090","\d0091","\d0092","\d0093","\d0094","\d0095","\d0096","\d0097","\d0098","\d0099","\d009a","\d009b","\d009c","\d009d","\d009e","\d009f",  # ; Control # Cc  [33] <control-007F>..<control-009F>
        "\d00AD",  # ; Control # Cf       SOFT HYPHEN
        "\d061C",  # ; Control # Cf       ARABIC LETTER MARK
        "\d180E",  # ; Control # Cf       MONGOLIAN VOWEL SEPARATOR
        "\d200B",  # ; Control # Cf       ZERO WIDTH SPACE
        "\d200e","\d200f",  # ; Control # Cf   [2] LEFT-TO-RIGHT MARK..RIGHT-TO-LEFT MARK
        "\d2028",  # ; Control # Zl       LINE SEPARATOR
        "\d2029",  # ; Control # Zp       PARAGRAPH SEPARATOR
        "\d202a","\d202b","\d202c","\d202d","\d202e",  # ; Control # Cf   [5] LEFT-TO-RIGHT EMBEDDING..RIGHT-TO-LEFT OVERRIDE
        "\d2060","\d2061","\d2062","\d2063","\d2064",  # ; Control # Cf   [5] WORD JOINER..INVISIBLE PLUS
        "\d2065",  # ; Control # Cn       <reserved-2065>
        "\d2066","\d2067","\d2068","\d2069","\d206a","\d206b","\d206c","\d206d","\d206e","\d206f",  # ; Control # Cf  [10] LEFT-TO-RIGHT ISOLATE..NOMINAL DIGIT SHAPES
        "\dd800","\dd801","\dd802","\dd803","\dd804","\dd805","\dd806","\dd807","\dd808","\dd809","\dd80a","\dd80b","\dd80c","\dd80d","\dd80e","\dd80f","\dd810","\dd811","\dd812","\dd813","\dd814","\dd815","\dd816","\dd817","\dd818","\dd819","\dd81a","\dd81b","\dd81c","\dd81d","\dd81e","\dd81f","\dd820","\dd821","\dd822","\dd823","\dd824","\dd825","\dd826","\dd827","\dd828","\dd829","\dd82a","\dd82b","\dd82c","\dd82d","\dd82e","\dd82f","\dd830","\dd831","\dd832","\dd833","\dd834","\dd835","\dd836","\dd837","\dd838","\dd839","\dd83a","\dd83b","\dd83c","\dd83d","\dd83e","\dd83f","\dd840","\dd841","\dd842","\dd843","\dd844","\dd845","\dd846","\dd847","\dd848","\dd849","\dd84a","\dd84b","\dd84c","\dd84d","\dd84e","\dd84f","\dd850","\dd851","\dd852","\dd853","\dd854","\dd855","\dd856","\dd857","\dd858","\dd859","\dd85a","\dd85b","\dd85c","\dd85d","\dd85e","\dd85f","\dd860","\dd861","\dd862","\dd863","\dd864","\dd865","\dd866","\dd867","\dd868","\dd869","\dd86a","\dd86b","\dd86c","\dd86d","\dd86e","\dd86f","\dd870","\dd871","\dd872","\dd873","\dd874","\dd875","\dd876","\dd877","\dd878","\dd879","\dd87a","\dd87b","\dd87c","\dd87d","\dd87e","\dd87f","\dd880","\dd881","\dd882","\dd883","\dd884","\dd885","\dd886","\dd887","\dd888","\dd889","\dd88a","\dd88b","\dd88c","\dd88d","\dd88e","\dd88f","\dd890","\dd891","\dd892","\dd893","\dd894","\dd895","\dd896","\dd897","\dd898","\dd899","\dd89a","\dd89b","\dd89c","\dd89d","\dd89e","\dd89f","\dd8a0","\dd8a1","\dd8a2","\dd8a3","\dd8a4","\dd8a5","\dd8a6","\dd8a7","\dd8a8","\dd8a9","\dd8aa","\dd8ab","\dd8ac","\dd8ad","\dd8ae","\dd8af","\dd8b0","\dd8b1","\dd8b2","\dd8b3","\dd8b4","\dd8b5","\dd8b6","\dd8b7","\dd8b8","\dd8b9","\dd8ba","\dd8bb","\dd8bc","\dd8bd","\dd8be","\dd8bf","\dd8c0","\dd8c1","\dd8c2","\dd8c3","\dd8c4","\dd8c5","\dd8c6","\dd8c7","\dd8c8","\dd8c9","\dd8ca","\dd8cb","\dd8cc","\dd8cd","\dd8ce","\dd8cf","\dd8d0","\dd8d1","\dd8d2","\dd8d3","\dd8d4","\dd8d5","\dd8d6","\dd8d7","\dd8d8","\dd8d9","\dd8da","\dd8db","\dd8dc","\dd8dd","\dd8de","\dd8df","\dd8e0","\dd8e1","\dd8e2","\dd8e3","\dd8e4","\dd8e5","\dd8e6","\dd8e7","\dd8e8","\dd8e9","\dd8ea","\dd8eb","\dd8ec","\dd8ed","\dd8ee","\dd8ef","\dd8f0","\dd8f1","\dd8f2","\dd8f3","\dd8f4","\dd8f5","\dd8f6","\dd8f7","\dd8f8","\dd8f9","\dd8fa","\dd8fb","\dd8fc","\dd8fd","\dd8fe","\dd8ff","\dd900","\dd901","\dd902","\dd903","\dd904","\dd905","\dd906","\dd907","\dd908","\dd909","\dd90a","\dd90b","\dd90c","\dd90d","\dd90e","\dd90f","\dd910","\dd911","\dd912","\dd913","\dd914","\dd915","\dd916","\dd917","\dd918","\dd919","\dd91a","\dd91b","\dd91c","\dd91d","\dd91e","\dd91f","\dd920","\dd921","\dd922","\dd923","\dd924","\dd925","\dd926","\dd927","\dd928","\dd929","\dd92a","\dd92b","\dd92c","\dd92d","\dd92e","\dd92f","\dd930","\dd931","\dd932","\dd933","\dd934","\dd935","\dd936","\dd937","\dd938","\dd939","\dd93a","\dd93b","\dd93c","\dd93d","\dd93e","\dd93f","\dd940","\dd941","\dd942","\dd943","\dd944","\dd945","\dd946","\dd947","\dd948","\dd949","\dd94a","\dd94b","\dd94c","\dd94d","\dd94e","\dd94f","\dd950","\dd951","\dd952","\dd953","\dd954","\dd955","\dd956","\dd957","\dd958","\dd959","\dd95a","\dd95b","\dd95c","\dd95d","\dd95e","\dd95f","\dd960","\dd961","\dd962","\dd963","\dd964","\dd965","\dd966","\dd967","\dd968","\dd969","\dd96a","\dd96b","\dd96c","\dd96d","\dd96e","\dd96f","\dd970","\dd971","\dd972","\dd973","\dd974","\dd975","\dd976","\dd977","\dd978","\dd979","\dd97a","\dd97b","\dd97c","\dd97d","\dd97e","\dd97f","\dd980","\dd981","\dd982","\dd983","\dd984","\dd985","\dd986","\dd987","\dd988","\dd989","\dd98a","\dd98b","\dd98c","\dd98d","\dd98e","\dd98f","\dd990","\dd991","\dd992","\dd993","\dd994","\dd995","\dd996","\dd997","\dd998","\dd999","\dd99a","\dd99b","\dd99c","\dd99d","\dd99e","\dd99f","\dd9a0","\dd9a1","\dd9a2","\dd9a3","\dd9a4","\dd9a5","\dd9a6","\dd9a7","\dd9a8","\dd9a9","\dd9aa","\dd9ab","\dd9ac","\dd9ad","\dd9ae","\dd9af","\dd9b0","\dd9b1","\dd9b2","\dd9b3","\dd9b4","\dd9b5","\dd9b6","\dd9b7","\dd9b8","\dd9b9","\dd9ba","\dd9bb","\dd9bc","\dd9bd","\dd9be","\dd9bf","\dd9c0","\dd9c1","\dd9c2","\dd9c3","\dd9c4","\dd9c5","\dd9c6","\dd9c7","\dd9c8","\dd9c9","\dd9ca","\dd9cb","\dd9cc","\dd9cd","\dd9ce","\dd9cf","\dd9d0","\dd9d1","\dd9d2","\dd9d3","\dd9d4","\dd9d5","\dd9d6","\dd9d7","\dd9d8","\dd9d9","\dd9da","\dd9db","\dd9dc","\dd9dd","\dd9de","\dd9df","\dd9e0","\dd9e1","\dd9e2","\dd9e3","\dd9e4","\dd9e5","\dd9e6","\dd9e7","\dd9e8","\dd9e9","\dd9ea","\dd9eb","\dd9ec","\dd9ed","\dd9ee","\dd9ef","\dd9f0","\dd9f1","\dd9f2","\dd9f3","\dd9f4","\dd9f5","\dd9f6","\dd9f7","\dd9f8","\dd9f9","\dd9fa","\dd9fb","\dd9fc","\dd9fd","\dd9fe","\dd9ff","\dda00","\dda01","\dda02","\dda03","\dda04","\dda05","\dda06","\dda07","\dda08","\dda09","\dda0a","\dda0b","\dda0c","\dda0d","\dda0e","\dda0f","\dda10","\dda11","\dda12","\dda13","\dda14","\dda15","\dda16","\dda17","\dda18","\dda19","\dda1a","\dda1b","\dda1c","\dda1d","\dda1e","\dda1f","\dda20","\dda21","\dda22","\dda23","\dda24","\dda25","\dda26","\dda27","\dda28","\dda29","\dda2a","\dda2b","\dda2c","\dda2d","\dda2e","\dda2f","\dda30","\dda31","\dda32","\dda33","\dda34","\dda35","\dda36","\dda37","\dda38","\dda39","\dda3a","\dda3b","\dda3c","\dda3d","\dda3e","\dda3f","\dda40","\dda41","\dda42","\dda43","\dda44","\dda45","\dda46","\dda47","\dda48","\dda49","\dda4a","\dda4b","\dda4c","\dda4d","\dda4e","\dda4f","\dda50","\dda51","\dda52","\dda53","\dda54","\dda55","\dda56","\dda57","\dda58","\dda59","\dda5a","\dda5b","\dda5c","\dda5d","\dda5e","\dda5f","\dda60","\dda61","\dda62","\dda63","\dda64","\dda65","\dda66","\dda67","\dda68","\dda69","\dda6a","\dda6b","\dda6c","\dda6d","\dda6e","\dda6f","\dda70","\dda71","\dda72","\dda73","\dda74","\dda75","\dda76","\dda77","\dda78","\dda79","\dda7a","\dda7b","\dda7c","\dda7d","\dda7e","\dda7f","\dda80","\dda81","\dda82","\dda83","\dda84","\dda85","\dda86","\dda87","\dda88","\dda89","\dda8a","\dda8b","\dda8c","\dda8d","\dda8e","\dda8f","\dda90","\dda91","\dda92","\dda93","\dda94","\dda95","\dda96","\dda97","\dda98","\dda99","\dda9a","\dda9b","\dda9c","\dda9d","\dda9e","\dda9f","\ddaa0","\ddaa1","\ddaa2","\ddaa3","\ddaa4","\ddaa5","\ddaa6","\ddaa7","\ddaa8","\ddaa9","\ddaaa","\ddaab","\ddaac","\ddaad","\ddaae","\ddaaf","\ddab0","\ddab1","\ddab2","\ddab3","\ddab4","\ddab5","\ddab6","\ddab7","\ddab8","\ddab9","\ddaba","\ddabb","\ddabc","\ddabd","\ddabe","\ddabf","\ddac0","\ddac1","\ddac2","\ddac3","\ddac4","\ddac5","\ddac6","\ddac7","\ddac8","\ddac9","\ddaca","\ddacb","\ddacc","\ddacd","\ddace","\ddacf","\ddad0","\ddad1","\ddad2","\ddad3","\ddad4","\ddad5","\ddad6","\ddad7","\ddad8","\ddad9","\ddada","\ddadb","\ddadc","\ddadd","\ddade","\ddadf","\ddae0","\ddae1","\ddae2","\ddae3","\ddae4","\ddae5","\ddae6","\ddae7","\ddae8","\ddae9","\ddaea","\ddaeb","\ddaec","\ddaed","\ddaee","\ddaef","\ddaf0","\ddaf1","\ddaf2","\ddaf3","\ddaf4","\ddaf5","\ddaf6","\ddaf7","\ddaf8","\ddaf9","\ddafa","\ddafb","\ddafc","\ddafd","\ddafe","\ddaff","\ddb00","\ddb01","\ddb02","\ddb03","\ddb04","\ddb05","\ddb06","\ddb07","\ddb08","\ddb09","\ddb0a","\ddb0b","\ddb0c","\ddb0d","\ddb0e","\ddb0f","\ddb10","\ddb11","\ddb12","\ddb13","\ddb14","\ddb15","\ddb16","\ddb17","\ddb18","\ddb19","\ddb1a","\ddb1b","\ddb1c","\ddb1d","\ddb1e","\ddb1f","\ddb20","\ddb21","\ddb22","\ddb23","\ddb24","\ddb25","\ddb26","\ddb27","\ddb28","\ddb29","\ddb2a","\ddb2b","\ddb2c","\ddb2d","\ddb2e","\ddb2f","\ddb30","\ddb31","\ddb32","\ddb33","\ddb34","\ddb35","\ddb36","\ddb37","\ddb38","\ddb39","\ddb3a","\ddb3b","\ddb3c","\ddb3d","\ddb3e","\ddb3f","\ddb40","\ddb41","\ddb42","\ddb43","\ddb44","\ddb45","\ddb46","\ddb47","\ddb48","\ddb49","\ddb4a","\ddb4b","\ddb4c","\ddb4d","\ddb4e","\ddb4f","\ddb50","\ddb51","\ddb52","\ddb53","\ddb54","\ddb55","\ddb56","\ddb57","\ddb58","\ddb59","\ddb5a","\ddb5b","\ddb5c","\ddb5d","\ddb5e","\ddb5f","\ddb60","\ddb61","\ddb62","\ddb63","\ddb64","\ddb65","\ddb66","\ddb67","\ddb68","\ddb69","\ddb6a","\ddb6b","\ddb6c","\ddb6d","\ddb6e","\ddb6f","\ddb70","\ddb71","\ddb72","\ddb73","\ddb74","\ddb75","\ddb76","\ddb77","\ddb78","\ddb79","\ddb7a","\ddb7b","\ddb7c","\ddb7d","\ddb7e","\ddb7f","\ddb80","\ddb81","\ddb82","\ddb83","\ddb84","\ddb85","\ddb86","\ddb87","\ddb88","\ddb89","\ddb8a","\ddb8b","\ddb8c","\ddb8d","\ddb8e","\ddb8f","\ddb90","\ddb91","\ddb92","\ddb93","\ddb94","\ddb95","\ddb96","\ddb97","\ddb98","\ddb99","\ddb9a","\ddb9b","\ddb9c","\ddb9d","\ddb9e","\ddb9f","\ddba0","\ddba1","\ddba2","\ddba3","\ddba4","\ddba5","\ddba6","\ddba7","\ddba8","\ddba9","\ddbaa","\ddbab","\ddbac","\ddbad","\ddbae","\ddbaf","\ddbb0","\ddbb1","\ddbb2","\ddbb3","\ddbb4","\ddbb5","\ddbb6","\ddbb7","\ddbb8","\ddbb9","\ddbba","\ddbbb","\ddbbc","\ddbbd","\ddbbe","\ddbbf","\ddbc0","\ddbc1","\ddbc2","\ddbc3","\ddbc4","\ddbc5","\ddbc6","\ddbc7","\ddbc8","\ddbc9","\ddbca","\ddbcb","\ddbcc","\ddbcd","\ddbce","\ddbcf","\ddbd0","\ddbd1","\ddbd2","\ddbd3","\ddbd4","\ddbd5","\ddbd6","\ddbd7","\ddbd8","\ddbd9","\ddbda","\ddbdb","\ddbdc","\ddbdd","\ddbde","\ddbdf","\ddbe0","\ddbe1","\ddbe2","\ddbe3","\ddbe4","\ddbe5","\ddbe6","\ddbe7","\ddbe8","\ddbe9","\ddbea","\ddbeb","\ddbec","\ddbed","\ddbee","\ddbef","\ddbf0","\ddbf1","\ddbf2","\ddbf3","\ddbf4","\ddbf5","\ddbf6","\ddbf7","\ddbf8","\ddbf9","\ddbfa","\ddbfb","\ddbfc","\ddbfd","\ddbfe","\ddbff","\ddc00","\ddc01","\ddc02","\ddc03","\ddc04","\ddc05","\ddc06","\ddc07","\ddc08","\ddc09","\ddc0a","\ddc0b","\ddc0c","\ddc0d","\ddc0e","\ddc0f","\ddc10","\ddc11","\ddc12","\ddc13","\ddc14","\ddc15","\ddc16","\ddc17","\ddc18","\ddc19","\ddc1a","\ddc1b","\ddc1c","\ddc1d","\ddc1e","\ddc1f","\ddc20","\ddc21","\ddc22","\ddc23","\ddc24","\ddc25","\ddc26","\ddc27","\ddc28","\ddc29","\ddc2a","\ddc2b","\ddc2c","\ddc2d","\ddc2e","\ddc2f","\ddc30","\ddc31","\ddc32","\ddc33","\ddc34","\ddc35","\ddc36","\ddc37","\ddc38","\ddc39","\ddc3a","\ddc3b","\ddc3c","\ddc3d","\ddc3e","\ddc3f","\ddc40","\ddc41","\ddc42","\ddc43","\ddc44","\ddc45","\ddc46","\ddc47","\ddc48","\ddc49","\ddc4a","\ddc4b","\ddc4c","\ddc4d","\ddc4e","\ddc4f","\ddc50","\ddc51","\ddc52","\ddc53","\ddc54","\ddc55","\ddc56","\ddc57","\ddc58","\ddc59","\ddc5a","\ddc5b","\ddc5c","\ddc5d","\ddc5e","\ddc5f","\ddc60","\ddc61","\ddc62","\ddc63","\ddc64","\ddc65","\ddc66","\ddc67","\ddc68","\ddc69","\ddc6a","\ddc6b","\ddc6c","\ddc6d","\ddc6e","\ddc6f","\ddc70","\ddc71","\ddc72","\ddc73","\ddc74","\ddc75","\ddc76","\ddc77","\ddc78","\ddc79","\ddc7a","\ddc7b","\ddc7c","\ddc7d","\ddc7e","\ddc7f","\ddc80","\ddc81","\ddc82","\ddc83","\ddc84","\ddc85","\ddc86","\ddc87","\ddc88","\ddc89","\ddc8a","\ddc8b","\ddc8c","\ddc8d","\ddc8e","\ddc8f","\ddc90","\ddc91","\ddc92","\ddc93","\ddc94","\ddc95","\ddc96","\ddc97","\ddc98","\ddc99","\ddc9a","\ddc9b","\ddc9c","\ddc9d","\ddc9e","\ddc9f","\ddca0","\ddca1","\ddca2","\ddca3","\ddca4","\ddca5","\ddca6","\ddca7","\ddca8","\ddca9","\ddcaa","\ddcab","\ddcac","\ddcad","\ddcae","\ddcaf","\ddcb0","\ddcb1","\ddcb2","\ddcb3","\ddcb4","\ddcb5","\ddcb6","\ddcb7","\ddcb8","\ddcb9","\ddcba","\ddcbb","\ddcbc","\ddcbd","\ddcbe","\ddcbf","\ddcc0","\ddcc1","\ddcc2","\ddcc3","\ddcc4","\ddcc5","\ddcc6","\ddcc7","\ddcc8","\ddcc9","\ddcca","\ddccb","\ddccc","\ddccd","\ddcce","\ddccf","\ddcd0","\ddcd1","\ddcd2","\ddcd3","\ddcd4","\ddcd5","\ddcd6","\ddcd7","\ddcd8","\ddcd9","\ddcda","\ddcdb","\ddcdc","\ddcdd","\ddcde","\ddcdf","\ddce0","\ddce1","\ddce2","\ddce3","\ddce4","\ddce5","\ddce6","\ddce7","\ddce8","\ddce9","\ddcea","\ddceb","\ddcec","\ddced","\ddcee","\ddcef","\ddcf0","\ddcf1","\ddcf2","\ddcf3","\ddcf4","\ddcf5","\ddcf6","\ddcf7","\ddcf8","\ddcf9","\ddcfa","\ddcfb","\ddcfc","\ddcfd","\ddcfe","\ddcff","\ddd00","\ddd01","\ddd02","\ddd03","\ddd04","\ddd05","\ddd06","\ddd07","\ddd08","\ddd09","\ddd0a","\ddd0b","\ddd0c","\ddd0d","\ddd0e","\ddd0f","\ddd10","\ddd11","\ddd12","\ddd13","\ddd14","\ddd15","\ddd16","\ddd17","\ddd18","\ddd19","\ddd1a","\ddd1b","\ddd1c","\ddd1d","\ddd1e","\ddd1f","\ddd20","\ddd21","\ddd22","\ddd23","\ddd24","\ddd25","\ddd26","\ddd27","\ddd28","\ddd29","\ddd2a","\ddd2b","\ddd2c","\ddd2d","\ddd2e","\ddd2f","\ddd30","\ddd31","\ddd32","\ddd33","\ddd34","\ddd35","\ddd36","\ddd37","\ddd38","\ddd39","\ddd3a","\ddd3b","\ddd3c","\ddd3d","\ddd3e","\ddd3f","\ddd40","\ddd41","\ddd42","\ddd43","\ddd44","\ddd45","\ddd46","\ddd47","\ddd48","\ddd49","\ddd4a","\ddd4b","\ddd4c","\ddd4d","\ddd4e","\ddd4f","\ddd50","\ddd51","\ddd52","\ddd53","\ddd54","\ddd55","\ddd56","\ddd57","\ddd58","\ddd59","\ddd5a","\ddd5b","\ddd5c","\ddd5d","\ddd5e","\ddd5f","\ddd60","\ddd61","\ddd62","\ddd63","\ddd64","\ddd65","\ddd66","\ddd67","\ddd68","\ddd69","\ddd6a","\ddd6b","\ddd6c","\ddd6d","\ddd6e","\ddd6f","\ddd70","\ddd71","\ddd72","\ddd73","\ddd74","\ddd75","\ddd76","\ddd77","\ddd78","\ddd79","\ddd7a","\ddd7b","\ddd7c","\ddd7d","\ddd7e","\ddd7f","\ddd80","\ddd81","\ddd82","\ddd83","\ddd84","\ddd85","\ddd86","\ddd87","\ddd88","\ddd89","\ddd8a","\ddd8b","\ddd8c","\ddd8d","\ddd8e","\ddd8f","\ddd90","\ddd91","\ddd92","\ddd93","\ddd94","\ddd95","\ddd96","\ddd97","\ddd98","\ddd99","\ddd9a","\ddd9b","\ddd9c","\ddd9d","\ddd9e","\ddd9f","\ddda0","\ddda1","\ddda2","\ddda3","\ddda4","\ddda5","\ddda6","\ddda7","\ddda8","\ddda9","\dddaa","\dddab","\dddac","\dddad","\dddae","\dddaf","\dddb0","\dddb1","\dddb2","\dddb3","\dddb4","\dddb5","\dddb6","\dddb7","\dddb8","\dddb9","\dddba","\dddbb","\dddbc","\dddbd","\dddbe","\dddbf","\dddc0","\dddc1","\dddc2","\dddc3","\dddc4","\dddc5","\dddc6","\dddc7","\dddc8","\dddc9","\dddca","\dddcb","\dddcc","\dddcd","\dddce","\dddcf","\dddd0","\dddd1","\dddd2","\dddd3","\dddd4","\dddd5","\dddd6","\dddd7","\dddd8","\dddd9","\dddda","\ddddb","\ddddc","\ddddd","\dddde","\ddddf","\ddde0","\ddde1","\ddde2","\ddde3","\ddde4","\ddde5","\ddde6","\ddde7","\ddde8","\ddde9","\dddea","\dddeb","\dddec","\ddded","\dddee","\dddef","\dddf0","\dddf1","\dddf2","\dddf3","\dddf4","\dddf5","\dddf6","\dddf7","\dddf8","\dddf9","\dddfa","\dddfb","\dddfc","\dddfd","\dddfe","\dddff","\dde00","\dde01","\dde02","\dde03","\dde04","\dde05","\dde06","\dde07","\dde08","\dde09","\dde0a","\dde0b","\dde0c","\dde0d","\dde0e","\dde0f","\dde10","\dde11","\dde12","\dde13","\dde14","\dde15","\dde16","\dde17","\dde18","\dde19","\dde1a","\dde1b","\dde1c","\dde1d","\dde1e","\dde1f","\dde20","\dde21","\dde22","\dde23","\dde24","\dde25","\dde26","\dde27","\dde28","\dde29","\dde2a","\dde2b","\dde2c","\dde2d","\dde2e","\dde2f","\dde30","\dde31","\dde32","\dde33","\dde34","\dde35","\dde36","\dde37","\dde38","\dde39","\dde3a","\dde3b","\dde3c","\dde3d","\dde3e","\dde3f","\dde40","\dde41","\dde42","\dde43","\dde44","\dde45","\dde46","\dde47","\dde48","\dde49","\dde4a","\dde4b","\dde4c","\dde4d","\dde4e","\dde4f","\dde50","\dde51","\dde52","\dde53","\dde54","\dde55","\dde56","\dde57","\dde58","\dde59","\dde5a","\dde5b","\dde5c","\dde5d","\dde5e","\dde5f","\dde60","\dde61","\dde62","\dde63","\dde64","\dde65","\dde66","\dde67","\dde68","\dde69","\dde6a","\dde6b","\dde6c","\dde6d","\dde6e","\dde6f","\dde70","\dde71","\dde72","\dde73","\dde74","\dde75","\dde76","\dde77","\dde78","\dde79","\dde7a","\dde7b","\dde7c","\dde7d","\dde7e","\dde7f","\dde80","\dde81","\dde82","\dde83","\dde84","\dde85","\dde86","\dde87","\dde88","\dde89","\dde8a","\dde8b","\dde8c","\dde8d","\dde8e","\dde8f","\dde90","\dde91","\dde92","\dde93","\dde94","\dde95","\dde96","\dde97","\dde98","\dde99","\dde9a","\dde9b","\dde9c","\dde9d","\dde9e","\dde9f","\ddea0","\ddea1","\ddea2","\ddea3","\ddea4","\ddea5","\ddea6","\ddea7","\ddea8","\ddea9","\ddeaa","\ddeab","\ddeac","\ddead","\ddeae","\ddeaf","\ddeb0","\ddeb1","\ddeb2","\ddeb3","\ddeb4","\ddeb5","\ddeb6","\ddeb7","\ddeb8","\ddeb9","\ddeba","\ddebb","\ddebc","\ddebd","\ddebe","\ddebf","\ddec0","\ddec1","\ddec2","\ddec3","\ddec4","\ddec5","\ddec6","\ddec7","\ddec8","\ddec9","\ddeca","\ddecb","\ddecc","\ddecd","\ddece","\ddecf","\dded0","\dded1","\dded2","\dded3","\dded4","\dded5","\dded6","\dded7","\dded8","\dded9","\ddeda","\ddedb","\ddedc","\ddedd","\ddede","\ddedf","\ddee0","\ddee1","\ddee2","\ddee3","\ddee4","\ddee5","\ddee6","\ddee7","\ddee8","\ddee9","\ddeea","\ddeeb","\ddeec","\ddeed","\ddeee","\ddeef","\ddef0","\ddef1","\ddef2","\ddef3","\ddef4","\ddef5","\ddef6","\ddef7","\ddef8","\ddef9","\ddefa","\ddefb","\ddefc","\ddefd","\ddefe","\ddeff","\ddf00","\ddf01","\ddf02","\ddf03","\ddf04","\ddf05","\ddf06","\ddf07","\ddf08","\ddf09","\ddf0a","\ddf0b","\ddf0c","\ddf0d","\ddf0e","\ddf0f","\ddf10","\ddf11","\ddf12","\ddf13","\ddf14","\ddf15","\ddf16","\ddf17","\ddf18","\ddf19","\ddf1a","\ddf1b","\ddf1c","\ddf1d","\ddf1e","\ddf1f","\ddf20","\ddf21","\ddf22","\ddf23","\ddf24","\ddf25","\ddf26","\ddf27","\ddf28","\ddf29","\ddf2a","\ddf2b","\ddf2c","\ddf2d","\ddf2e","\ddf2f","\ddf30","\ddf31","\ddf32","\ddf33","\ddf34","\ddf35","\ddf36","\ddf37","\ddf38","\ddf39","\ddf3a","\ddf3b","\ddf3c","\ddf3d","\ddf3e","\ddf3f","\ddf40","\ddf41","\ddf42","\ddf43","\ddf44","\ddf45","\ddf46","\ddf47","\ddf48","\ddf49","\ddf4a","\ddf4b","\ddf4c","\ddf4d","\ddf4e","\ddf4f","\ddf50","\ddf51","\ddf52","\ddf53","\ddf54","\ddf55","\ddf56","\ddf57","\ddf58","\ddf59","\ddf5a","\ddf5b","\ddf5c","\ddf5d","\ddf5e","\ddf5f","\ddf60","\ddf61","\ddf62","\ddf63","\ddf64","\ddf65","\ddf66","\ddf67","\ddf68","\ddf69","\ddf6a","\ddf6b","\ddf6c","\ddf6d","\ddf6e","\ddf6f","\ddf70","\ddf71","\ddf72","\ddf73","\ddf74","\ddf75","\ddf76","\ddf77","\ddf78","\ddf79","\ddf7a","\ddf7b","\ddf7c","\ddf7d","\ddf7e","\ddf7f","\ddf80","\ddf81","\ddf82","\ddf83","\ddf84","\ddf85","\ddf86","\ddf87","\ddf88","\ddf89","\ddf8a","\ddf8b","\ddf8c","\ddf8d","\ddf8e","\ddf8f","\ddf90","\ddf91","\ddf92","\ddf93","\ddf94","\ddf95","\ddf96","\ddf97","\ddf98","\ddf99","\ddf9a","\ddf9b","\ddf9c","\ddf9d","\ddf9e","\ddf9f","\ddfa0","\ddfa1","\ddfa2","\ddfa3","\ddfa4","\ddfa5","\ddfa6","\ddfa7","\ddfa8","\ddfa9","\ddfaa","\ddfab","\ddfac","\ddfad","\ddfae","\ddfaf","\ddfb0","\ddfb1","\ddfb2","\ddfb3","\ddfb4","\ddfb5","\ddfb6","\ddfb7","\ddfb8","\ddfb9","\ddfba","\ddfbb","\ddfbc","\ddfbd","\ddfbe","\ddfbf","\ddfc0","\ddfc1","\ddfc2","\ddfc3","\ddfc4","\ddfc5","\ddfc6","\ddfc7","\ddfc8","\ddfc9","\ddfca","\ddfcb","\ddfcc","\ddfcd","\ddfce","\ddfcf","\ddfd0","\ddfd1","\ddfd2","\ddfd3","\ddfd4","\ddfd5","\ddfd6","\ddfd7","\ddfd8","\ddfd9","\ddfda","\ddfdb","\ddfdc","\ddfdd","\ddfde","\ddfdf","\ddfe0","\ddfe1","\ddfe2","\ddfe3","\ddfe4","\ddfe5","\ddfe6","\ddfe7","\ddfe8","\ddfe9","\ddfea","\ddfeb","\ddfec","\ddfed","\ddfee","\ddfef","\ddff0","\ddff1","\ddff2","\ddff3","\ddff4","\ddff5","\ddff6","\ddff7","\ddff8","\ddff9","\ddffa","\ddffb","\ddffc","\ddffd","\ddffe","\ddfff",  # ; Control # Cs [2048] <surrogate-D800>..<surrogate-DFFF>
        "\dFEFF",  # ; Control # Cf       ZERO WIDTH NO-BREAK SPACE
        "\dfff0","\dfff1","\dfff2","\dfff3","\dfff4","\dfff5","\dfff6","\dfff7","\dfff8",  # ; Control # Cn   [9] <reserved-FFF0>..<reserved-FFF8>
        "\dfff9","\dfffa","\dfffb",  # ; Control # Cf   [3] INTERLINEAR ANNOTATION ANCHOR..INTERLINEAR ANNOTATION TERMINATOR
        "\d1bca0","\d1bca1","\d1bca2","\d1bca3",  # ; Control # Cf   [4] SHORTHAND FORMAT LETTER OVERLAP..SHORTHAND FORMAT UP STEP
        "\d1d173","\d1d174","\d1d175","\d1d176","\d1d177","\d1d178","\d1d179","\d1d17a",  # ; Control # Cf   [8] MUSICAL SYMBOL BEGIN BEAM..MUSICAL SYMBOL END PHRASE
        "\dE0000",  # ; Control # Cn       <reserved-E0000>
        "\dE0001",  # ; Control # Cf       LANGUAGE TAG
        "\de0002","\de0003","\de0004","\de0005","\de0006","\de0007","\de0008","\de0009","\de000a","\de000b","\de000c","\de000d","\de000e","\de000f","\de0010","\de0011","\de0012","\de0013","\de0014","\de0015","\de0016","\de0017","\de0018","\de0019","\de001a","\de001b","\de001c","\de001d","\de001e","\de001f",  # ; Control # Cn  [30] <reserved-E0002>..<reserved-E001F>
        "\de0080","\de0081","\de0082","\de0083","\de0084","\de0085","\de0086","\de0087","\de0088","\de0089","\de008a","\de008b","\de008c","\de008d","\de008e","\de008f","\de0090","\de0091","\de0092","\de0093","\de0094","\de0095","\de0096","\de0097","\de0098","\de0099","\de009a","\de009b","\de009c","\de009d","\de009e","\de009f","\de00a0","\de00a1","\de00a2","\de00a3","\de00a4","\de00a5","\de00a6","\de00a7","\de00a8","\de00a9","\de00aa","\de00ab","\de00ac","\de00ad","\de00ae","\de00af","\de00b0","\de00b1","\de00b2","\de00b3","\de00b4","\de00b5","\de00b6","\de00b7","\de00b8","\de00b9","\de00ba","\de00bb","\de00bc","\de00bd","\de00be","\de00bf","\de00c0","\de00c1","\de00c2","\de00c3","\de00c4","\de00c5","\de00c6","\de00c7","\de00c8","\de00c9","\de00ca","\de00cb","\de00cc","\de00cd","\de00ce","\de00cf","\de00d0","\de00d1","\de00d2","\de00d3","\de00d4","\de00d5","\de00d6","\de00d7","\de00d8","\de00d9","\de00da","\de00db","\de00dc","\de00dd","\de00de","\de00df","\de00e0","\de00e1","\de00e2","\de00e3","\de00e4","\de00e5","\de00e6","\de00e7","\de00e8","\de00e9","\de00ea","\de00eb","\de00ec","\de00ed","\de00ee","\de00ef","\de00f0","\de00f1","\de00f2","\de00f3","\de00f4","\de00f5","\de00f6","\de00f7","\de00f8","\de00f9","\de00fa","\de00fb","\de00fc","\de00fd","\de00fe","\de00ff",  # ; Control # Cn [128] <reserved-E0080>..<reserved-E00FF>
        "\de01f0","\de01f1","\de01f2","\de01f3","\de01f4","\de01f5","\de01f6","\de01f7","\de01f8","\de01f9","\de01fa","\de01fb","\de01fc","\de01fd","\de01fe","\de01ff","\de0200","\de0201","\de0202","\de0203","\de0204","\de0205","\de0206","\de0207","\de0208","\de0209","\de020a","\de020b","\de020c","\de020d","\de020e","\de020f","\de0210","\de0211","\de0212","\de0213","\de0214","\de0215","\de0216","\de0217","\de0218","\de0219","\de021a","\de021b","\de021c","\de021d","\de021e","\de021f","\de0220","\de0221","\de0222","\de0223","\de0224","\de0225","\de0226","\de0227","\de0228","\de0229","\de022a","\de022b","\de022c","\de022d","\de022e","\de022f","\de0230","\de0231","\de0232","\de0233","\de0234","\de0235","\de0236","\de0237","\de0238","\de0239","\de023a","\de023b","\de023c","\de023d","\de023e","\de023f","\de0240","\de0241","\de0242","\de0243","\de0244","\de0245","\de0246","\de0247","\de0248","\de0249","\de024a","\de024b","\de024c","\de024d","\de024e","\de024f","\de0250","\de0251","\de0252","\de0253","\de0254","\de0255","\de0256","\de0257","\de0258","\de0259","\de025a","\de025b","\de025c","\de025d","\de025e","\de025f","\de0260","\de0261","\de0262","\de0263","\de0264","\de0265","\de0266","\de0267","\de0268","\de0269","\de026a","\de026b","\de026c","\de026d","\de026e","\de026f","\de0270","\de0271","\de0272","\de0273","\de0274","\de0275","\de0276","\de0277","\de0278","\de0279","\de027a","\de027b","\de027c","\de027d","\de027e","\de027f","\de0280","\de0281","\de0282","\de0283","\de0284","\de0285","\de0286","\de0287","\de0288","\de0289","\de028a","\de028b","\de028c","\de028d","\de028e","\de028f","\de0290","\de0291","\de0292","\de0293","\de0294","\de0295","\de0296","\de0297","\de0298","\de0299","\de029a","\de029b","\de029c","\de029d","\de029e","\de029f","\de02a0","\de02a1","\de02a2","\de02a3","\de02a4","\de02a5","\de02a6","\de02a7","\de02a8","\de02a9","\de02aa","\de02ab","\de02ac","\de02ad","\de02ae","\de02af","\de02b0","\de02b1","\de02b2","\de02b3","\de02b4","\de02b5","\de02b6","\de02b7","\de02b8","\de02b9","\de02ba","\de02bb","\de02bc","\de02bd","\de02be","\de02bf","\de02c0","\de02c1","\de02c2","\de02c3","\de02c4","\de02c5","\de02c6","\de02c7","\de02c8","\de02c9","\de02ca","\de02cb","\de02cc","\de02cd","\de02ce","\de02cf","\de02d0","\de02d1","\de02d2","\de02d3","\de02d4","\de02d5","\de02d6","\de02d7","\de02d8","\de02d9","\de02da","\de02db","\de02dc","\de02dd","\de02de","\de02df","\de02e0","\de02e1","\de02e2","\de02e3","\de02e4","\de02e5","\de02e6","\de02e7","\de02e8","\de02e9","\de02ea","\de02eb","\de02ec","\de02ed","\de02ee","\de02ef","\de02f0","\de02f1","\de02f2","\de02f3","\de02f4","\de02f5","\de02f6","\de02f7","\de02f8","\de02f9","\de02fa","\de02fb","\de02fc","\de02fd","\de02fe","\de02ff","\de0300","\de0301","\de0302","\de0303","\de0304","\de0305","\de0306","\de0307","\de0308","\de0309","\de030a","\de030b","\de030c","\de030d","\de030e","\de030f","\de0310","\de0311","\de0312","\de0313","\de0314","\de0315","\de0316","\de0317","\de0318","\de0319","\de031a","\de031b","\de031c","\de031d","\de031e","\de031f","\de0320","\de0321","\de0322","\de0323","\de0324","\de0325","\de0326","\de0327","\de0328","\de0329","\de032a","\de032b","\de032c","\de032d","\de032e","\de032f","\de0330","\de0331","\de0332","\de0333","\de0334","\de0335","\de0336","\de0337","\de0338","\de0339","\de033a","\de033b","\de033c","\de033d","\de033e","\de033f","\de0340","\de0341","\de0342","\de0343","\de0344","\de0345","\de0346","\de0347","\de0348","\de0349","\de034a","\de034b","\de034c","\de034d","\de034e","\de034f","\de0350","\de0351","\de0352","\de0353","\de0354","\de0355","\de0356","\de0357","\de0358","\de0359","\de035a","\de035b","\de035c","\de035d","\de035e","\de035f","\de0360","\de0361","\de0362","\de0363","\de0364","\de0365","\de0366","\de0367","\de0368","\de0369","\de036a","\de036b","\de036c","\de036d","\de036e","\de036f","\de0370","\de0371","\de0372","\de0373","\de0374","\de0375","\de0376","\de0377","\de0378","\de0379","\de037a","\de037b","\de037c","\de037d","\de037e","\de037f","\de0380","\de0381","\de0382","\de0383","\de0384","\de0385","\de0386","\de0387","\de0388","\de0389","\de038a","\de038b","\de038c","\de038d","\de038e","\de038f","\de0390","\de0391","\de0392","\de0393","\de0394","\de0395","\de0396","\de0397","\de0398","\de0399","\de039a","\de039b","\de039c","\de039d","\de039e","\de039f","\de03a0","\de03a1","\de03a2","\de03a3","\de03a4","\de03a5","\de03a6","\de03a7","\de03a8","\de03a9","\de03aa","\de03ab","\de03ac","\de03ad","\de03ae","\de03af","\de03b0","\de03b1","\de03b2","\de03b3","\de03b4","\de03b5","\de03b6","\de03b7","\de03b8","\de03b9","\de03ba","\de03bb","\de03bc","\de03bd","\de03be","\de03bf","\de03c0","\de03c1","\de03c2","\de03c3","\de03c4","\de03c5","\de03c6","\de03c7","\de03c8","\de03c9","\de03ca","\de03cb","\de03cc","\de03cd","\de03ce","\de03cf","\de03d0","\de03d1","\de03d2","\de03d3","\de03d4","\de03d5","\de03d6","\de03d7","\de03d8","\de03d9","\de03da","\de03db","\de03dc","\de03dd","\de03de","\de03df","\de03e0","\de03e1","\de03e2","\de03e3","\de03e4","\de03e5","\de03e6","\de03e7","\de03e8","\de03e9","\de03ea","\de03eb","\de03ec","\de03ed","\de03ee","\de03ef","\de03f0","\de03f1","\de03f2","\de03f3","\de03f4","\de03f5","\de03f6","\de03f7","\de03f8","\de03f9","\de03fa","\de03fb","\de03fc","\de03fd","\de03fe","\de03ff","\de0400","\de0401","\de0402","\de0403","\de0404","\de0405","\de0406","\de0407","\de0408","\de0409","\de040a","\de040b","\de040c","\de040d","\de040e","\de040f","\de0410","\de0411","\de0412","\de0413","\de0414","\de0415","\de0416","\de0417","\de0418","\de0419","\de041a","\de041b","\de041c","\de041d","\de041e","\de041f","\de0420","\de0421","\de0422","\de0423","\de0424","\de0425","\de0426","\de0427","\de0428","\de0429","\de042a","\de042b","\de042c","\de042d","\de042e","\de042f","\de0430","\de0431","\de0432","\de0433","\de0434","\de0435","\de0436","\de0437","\de0438","\de0439","\de043a","\de043b","\de043c","\de043d","\de043e","\de043f","\de0440","\de0441","\de0442","\de0443","\de0444","\de0445","\de0446","\de0447","\de0448","\de0449","\de044a","\de044b","\de044c","\de044d","\de044e","\de044f","\de0450","\de0451","\de0452","\de0453","\de0454","\de0455","\de0456","\de0457","\de0458","\de0459","\de045a","\de045b","\de045c","\de045d","\de045e","\de045f","\de0460","\de0461","\de0462","\de0463","\de0464","\de0465","\de0466","\de0467","\de0468","\de0469","\de046a","\de046b","\de046c","\de046d","\de046e","\de046f","\de0470","\de0471","\de0472","\de0473","\de0474","\de0475","\de0476","\de0477","\de0478","\de0479","\de047a","\de047b","\de047c","\de047d","\de047e","\de047f","\de0480","\de0481","\de0482","\de0483","\de0484","\de0485","\de0486","\de0487","\de0488","\de0489","\de048a","\de048b","\de048c","\de048d","\de048e","\de048f","\de0490","\de0491","\de0492","\de0493","\de0494","\de0495","\de0496","\de0497","\de0498","\de0499","\de049a","\de049b","\de049c","\de049d","\de049e","\de049f","\de04a0","\de04a1","\de04a2","\de04a3","\de04a4","\de04a5","\de04a6","\de04a7","\de04a8","\de04a9","\de04aa","\de04ab","\de04ac","\de04ad","\de04ae","\de04af","\de04b0","\de04b1","\de04b2","\de04b3","\de04b4","\de04b5","\de04b6","\de04b7","\de04b8","\de04b9","\de04ba","\de04bb","\de04bc","\de04bd","\de04be","\de04bf","\de04c0","\de04c1","\de04c2","\de04c3","\de04c4","\de04c5","\de04c6","\de04c7","\de04c8","\de04c9","\de04ca","\de04cb","\de04cc","\de04cd","\de04ce","\de04cf","\de04d0","\de04d1","\de04d2","\de04d3","\de04d4","\de04d5","\de04d6","\de04d7","\de04d8","\de04d9","\de04da","\de04db","\de04dc","\de04dd","\de04de","\de04df","\de04e0","\de04e1","\de04e2","\de04e3","\de04e4","\de04e5","\de04e6","\de04e7","\de04e8","\de04e9","\de04ea","\de04eb","\de04ec","\de04ed","\de04ee","\de04ef","\de04f0","\de04f1","\de04f2","\de04f3","\de04f4","\de04f5","\de04f6","\de04f7","\de04f8","\de04f9","\de04fa","\de04fb","\de04fc","\de04fd","\de04fe","\de04ff","\de0500","\de0501","\de0502","\de0503","\de0504","\de0505","\de0506","\de0507","\de0508","\de0509","\de050a","\de050b","\de050c","\de050d","\de050e","\de050f","\de0510","\de0511","\de0512","\de0513","\de0514","\de0515","\de0516","\de0517","\de0518","\de0519","\de051a","\de051b","\de051c","\de051d","\de051e","\de051f","\de0520","\de0521","\de0522","\de0523","\de0524","\de0525","\de0526","\de0527","\de0528","\de0529","\de052a","\de052b","\de052c","\de052d","\de052e","\de052f","\de0530","\de0531","\de0532","\de0533","\de0534","\de0535","\de0536","\de0537","\de0538","\de0539","\de053a","\de053b","\de053c","\de053d","\de053e","\de053f","\de0540","\de0541","\de0542","\de0543","\de0544","\de0545","\de0546","\de0547","\de0548","\de0549","\de054a","\de054b","\de054c","\de054d","\de054e","\de054f","\de0550","\de0551","\de0552","\de0553","\de0554","\de0555","\de0556","\de0557","\de0558","\de0559","\de055a","\de055b","\de055c","\de055d","\de055e","\de055f","\de0560","\de0561","\de0562","\de0563","\de0564","\de0565","\de0566","\de0567","\de0568","\de0569","\de056a","\de056b","\de056c","\de056d","\de056e","\de056f","\de0570","\de0571","\de0572","\de0573","\de0574","\de0575","\de0576","\de0577","\de0578","\de0579","\de057a","\de057b","\de057c","\de057d","\de057e","\de057f","\de0580","\de0581","\de0582","\de0583","\de0584","\de0585","\de0586","\de0587","\de0588","\de0589","\de058a","\de058b","\de058c","\de058d","\de058e","\de058f","\de0590","\de0591","\de0592","\de0593","\de0594","\de0595","\de0596","\de0597","\de0598","\de0599","\de059a","\de059b","\de059c","\de059d","\de059e","\de059f","\de05a0","\de05a1","\de05a2","\de05a3","\de05a4","\de05a5","\de05a6","\de05a7","\de05a8","\de05a9","\de05aa","\de05ab","\de05ac","\de05ad","\de05ae","\de05af","\de05b0","\de05b1","\de05b2","\de05b3","\de05b4","\de05b5","\de05b6","\de05b7","\de05b8","\de05b9","\de05ba","\de05bb","\de05bc","\de05bd","\de05be","\de05bf","\de05c0","\de05c1","\de05c2","\de05c3","\de05c4","\de05c5","\de05c6","\de05c7","\de05c8","\de05c9","\de05ca","\de05cb","\de05cc","\de05cd","\de05ce","\de05cf","\de05d0","\de05d1","\de05d2","\de05d3","\de05d4","\de05d5","\de05d6","\de05d7","\de05d8","\de05d9","\de05da","\de05db","\de05dc","\de05dd","\de05de","\de05df","\de05e0","\de05e1","\de05e2","\de05e3","\de05e4","\de05e5","\de05e6","\de05e7","\de05e8","\de05e9","\de05ea","\de05eb","\de05ec","\de05ed","\de05ee","\de05ef","\de05f0","\de05f1","\de05f2","\de05f3","\de05f4","\de05f5","\de05f6","\de05f7","\de05f8","\de05f9","\de05fa","\de05fb","\de05fc","\de05fd","\de05fe","\de05ff","\de0600","\de0601","\de0602","\de0603","\de0604","\de0605","\de0606","\de0607","\de0608","\de0609","\de060a","\de060b","\de060c","\de060d","\de060e","\de060f","\de0610","\de0611","\de0612","\de0613","\de0614","\de0615","\de0616","\de0617","\de0618","\de0619","\de061a","\de061b","\de061c","\de061d","\de061e","\de061f","\de0620","\de0621","\de0622","\de0623","\de0624","\de0625","\de0626","\de0627","\de0628","\de0629","\de062a","\de062b","\de062c","\de062d","\de062e","\de062f","\de0630","\de0631","\de0632","\de0633","\de0634","\de0635","\de0636","\de0637","\de0638","\de0639","\de063a","\de063b","\de063c","\de063d","\de063e","\de063f","\de0640","\de0641","\de0642","\de0643","\de0644","\de0645","\de0646","\de0647","\de0648","\de0649","\de064a","\de064b","\de064c","\de064d","\de064e","\de064f","\de0650","\de0651","\de0652","\de0653","\de0654","\de0655","\de0656","\de0657","\de0658","\de0659","\de065a","\de065b","\de065c","\de065d","\de065e","\de065f","\de0660","\de0661","\de0662","\de0663","\de0664","\de0665","\de0666","\de0667","\de0668","\de0669","\de066a","\de066b","\de066c","\de066d","\de066e","\de066f","\de0670","\de0671","\de0672","\de0673","\de0674","\de0675","\de0676","\de0677","\de0678","\de0679","\de067a","\de067b","\de067c","\de067d","\de067e","\de067f","\de0680","\de0681","\de0682","\de0683","\de0684","\de0685","\de0686","\de0687","\de0688","\de0689","\de068a","\de068b","\de068c","\de068d","\de068e","\de068f","\de0690","\de0691","\de0692","\de0693","\de0694","\de0695","\de0696","\de0697","\de0698","\de0699","\de069a","\de069b","\de069c","\de069d","\de069e","\de069f","\de06a0","\de06a1","\de06a2","\de06a3","\de06a4","\de06a5","\de06a6","\de06a7","\de06a8","\de06a9","\de06aa","\de06ab","\de06ac","\de06ad","\de06ae","\de06af","\de06b0","\de06b1","\de06b2","\de06b3","\de06b4","\de06b5","\de06b6","\de06b7","\de06b8","\de06b9","\de06ba","\de06bb","\de06bc","\de06bd","\de06be","\de06bf","\de06c0","\de06c1","\de06c2","\de06c3","\de06c4","\de06c5","\de06c6","\de06c7","\de06c8","\de06c9","\de06ca","\de06cb","\de06cc","\de06cd","\de06ce","\de06cf","\de06d0","\de06d1","\de06d2","\de06d3","\de06d4","\de06d5","\de06d6","\de06d7","\de06d8","\de06d9","\de06da","\de06db","\de06dc","\de06dd","\de06de","\de06df","\de06e0","\de06e1","\de06e2","\de06e3","\de06e4","\de06e5","\de06e6","\de06e7","\de06e8","\de06e9","\de06ea","\de06eb","\de06ec","\de06ed","\de06ee","\de06ef","\de06f0","\de06f1","\de06f2","\de06f3","\de06f4","\de06f5","\de06f6","\de06f7","\de06f8","\de06f9","\de06fa","\de06fb","\de06fc","\de06fd","\de06fe","\de06ff","\de0700","\de0701","\de0702","\de0703","\de0704","\de0705","\de0706","\de0707","\de0708","\de0709","\de070a","\de070b","\de070c","\de070d","\de070e","\de070f","\de0710","\de0711","\de0712","\de0713","\de0714","\de0715","\de0716","\de0717","\de0718","\de0719","\de071a","\de071b","\de071c","\de071d","\de071e","\de071f","\de0720","\de0721","\de0722","\de0723","\de0724","\de0725","\de0726","\de0727","\de0728","\de0729","\de072a","\de072b","\de072c","\de072d","\de072e","\de072f","\de0730","\de0731","\de0732","\de0733","\de0734","\de0735","\de0736","\de0737","\de0738","\de0739","\de073a","\de073b","\de073c","\de073d","\de073e","\de073f","\de0740","\de0741","\de0742","\de0743","\de0744","\de0745","\de0746","\de0747","\de0748","\de0749","\de074a","\de074b","\de074c","\de074d","\de074e","\de074f","\de0750","\de0751","\de0752","\de0753","\de0754","\de0755","\de0756","\de0757","\de0758","\de0759","\de075a","\de075b","\de075c","\de075d","\de075e","\de075f","\de0760","\de0761","\de0762","\de0763","\de0764","\de0765","\de0766","\de0767","\de0768","\de0769","\de076a","\de076b","\de076c","\de076d","\de076e","\de076f","\de0770","\de0771","\de0772","\de0773","\de0774","\de0775","\de0776","\de0777","\de0778","\de0779","\de077a","\de077b","\de077c","\de077d","\de077e","\de077f","\de0780","\de0781","\de0782","\de0783","\de0784","\de0785","\de0786","\de0787","\de0788","\de0789","\de078a","\de078b","\de078c","\de078d","\de078e","\de078f","\de0790","\de0791","\de0792","\de0793","\de0794","\de0795","\de0796","\de0797","\de0798","\de0799","\de079a","\de079b","\de079c","\de079d","\de079e","\de079f","\de07a0","\de07a1","\de07a2","\de07a3","\de07a4","\de07a5","\de07a6","\de07a7","\de07a8","\de07a9","\de07aa","\de07ab","\de07ac","\de07ad","\de07ae","\de07af","\de07b0","\de07b1","\de07b2","\de07b3","\de07b4","\de07b5","\de07b6","\de07b7","\de07b8","\de07b9","\de07ba","\de07bb","\de07bc","\de07bd","\de07be","\de07bf","\de07c0","\de07c1","\de07c2","\de07c3","\de07c4","\de07c5","\de07c6","\de07c7","\de07c8","\de07c9","\de07ca","\de07cb","\de07cc","\de07cd","\de07ce","\de07cf","\de07d0","\de07d1","\de07d2","\de07d3","\de07d4","\de07d5","\de07d6","\de07d7","\de07d8","\de07d9","\de07da","\de07db","\de07dc","\de07dd","\de07de","\de07df","\de07e0","\de07e1","\de07e2","\de07e3","\de07e4","\de07e5","\de07e6","\de07e7","\de07e8","\de07e9","\de07ea","\de07eb","\de07ec","\de07ed","\de07ee","\de07ef","\de07f0","\de07f1","\de07f2","\de07f3","\de07f4","\de07f5","\de07f6","\de07f7","\de07f8","\de07f9","\de07fa","\de07fb","\de07fc","\de07fd","\de07fe","\de07ff","\de0800","\de0801","\de0802","\de0803","\de0804","\de0805","\de0806","\de0807","\de0808","\de0809","\de080a","\de080b","\de080c","\de080d","\de080e","\de080f","\de0810","\de0811","\de0812","\de0813","\de0814","\de0815","\de0816","\de0817","\de0818","\de0819","\de081a","\de081b","\de081c","\de081d","\de081e","\de081f","\de0820","\de0821","\de0822","\de0823","\de0824","\de0825","\de0826","\de0827","\de0828","\de0829","\de082a","\de082b","\de082c","\de082d","\de082e","\de082f","\de0830","\de0831","\de0832","\de0833","\de0834","\de0835","\de0836","\de0837","\de0838","\de0839","\de083a","\de083b","\de083c","\de083d","\de083e","\de083f","\de0840","\de0841","\de0842","\de0843","\de0844","\de0845","\de0846","\de0847","\de0848","\de0849","\de084a","\de084b","\de084c","\de084d","\de084e","\de084f","\de0850","\de0851","\de0852","\de0853","\de0854","\de0855","\de0856","\de0857","\de0858","\de0859","\de085a","\de085b","\de085c","\de085d","\de085e","\de085f","\de0860","\de0861","\de0862","\de0863","\de0864","\de0865","\de0866","\de0867","\de0868","\de0869","\de086a","\de086b","\de086c","\de086d","\de086e","\de086f","\de0870","\de0871","\de0872","\de0873","\de0874","\de0875","\de0876","\de0877","\de0878","\de0879","\de087a","\de087b","\de087c","\de087d","\de087e","\de087f","\de0880","\de0881","\de0882","\de0883","\de0884","\de0885","\de0886","\de0887","\de0888","\de0889","\de088a","\de088b","\de088c","\de088d","\de088e","\de088f","\de0890","\de0891","\de0892","\de0893","\de0894","\de0895","\de0896","\de0897","\de0898","\de0899","\de089a","\de089b","\de089c","\de089d","\de089e","\de089f","\de08a0","\de08a1","\de08a2","\de08a3","\de08a4","\de08a5","\de08a6","\de08a7","\de08a8","\de08a9","\de08aa","\de08ab","\de08ac","\de08ad","\de08ae","\de08af","\de08b0","\de08b1","\de08b2","\de08b3","\de08b4","\de08b5","\de08b6","\de08b7","\de08b8","\de08b9","\de08ba","\de08bb","\de08bc","\de08bd","\de08be","\de08bf","\de08c0","\de08c1","\de08c2","\de08c3","\de08c4","\de08c5","\de08c6","\de08c7","\de08c8","\de08c9","\de08ca","\de08cb","\de08cc","\de08cd","\de08ce","\de08cf","\de08d0","\de08d1","\de08d2","\de08d3","\de08d4","\de08d5","\de08d6","\de08d7","\de08d8","\de08d9","\de08da","\de08db","\de08dc","\de08dd","\de08de","\de08df","\de08e0","\de08e1","\de08e2","\de08e3","\de08e4","\de08e5","\de08e6","\de08e7","\de08e8","\de08e9","\de08ea","\de08eb","\de08ec","\de08ed","\de08ee","\de08ef","\de08f0","\de08f1","\de08f2","\de08f3","\de08f4","\de08f5","\de08f6","\de08f7","\de08f8","\de08f9","\de08fa","\de08fb","\de08fc","\de08fd","\de08fe","\de08ff","\de0900","\de0901","\de0902","\de0903","\de0904","\de0905","\de0906","\de0907","\de0908","\de0909","\de090a","\de090b","\de090c","\de090d","\de090e","\de090f","\de0910","\de0911","\de0912","\de0913","\de0914","\de0915","\de0916","\de0917","\de0918","\de0919","\de091a","\de091b","\de091c","\de091d","\de091e","\de091f","\de0920","\de0921","\de0922","\de0923","\de0924","\de0925","\de0926","\de0927","\de0928","\de0929","\de092a","\de092b","\de092c","\de092d","\de092e","\de092f","\de0930","\de0931","\de0932","\de0933","\de0934","\de0935","\de0936","\de0937","\de0938","\de0939","\de093a","\de093b","\de093c","\de093d","\de093e","\de093f","\de0940","\de0941","\de0942","\de0943","\de0944","\de0945","\de0946","\de0947","\de0948","\de0949","\de094a","\de094b","\de094c","\de094d","\de094e","\de094f","\de0950","\de0951","\de0952","\de0953","\de0954","\de0955","\de0956","\de0957","\de0958","\de0959","\de095a","\de095b","\de095c","\de095d","\de095e","\de095f","\de0960","\de0961","\de0962","\de0963","\de0964","\de0965","\de0966","\de0967","\de0968","\de0969","\de096a","\de096b","\de096c","\de096d","\de096e","\de096f","\de0970","\de0971","\de0972","\de0973","\de0974","\de0975","\de0976","\de0977","\de0978","\de0979","\de097a","\de097b","\de097c","\de097d","\de097e","\de097f","\de0980","\de0981","\de0982","\de0983","\de0984","\de0985","\de0986","\de0987","\de0988","\de0989","\de098a","\de098b","\de098c","\de098d","\de098e","\de098f","\de0990","\de0991","\de0992","\de0993","\de0994","\de0995","\de0996","\de0997","\de0998","\de0999","\de099a","\de099b","\de099c","\de099d","\de099e","\de099f","\de09a0","\de09a1","\de09a2","\de09a3","\de09a4","\de09a5","\de09a6","\de09a7","\de09a8","\de09a9","\de09aa","\de09ab","\de09ac","\de09ad","\de09ae","\de09af","\de09b0","\de09b1","\de09b2","\de09b3","\de09b4","\de09b5","\de09b6","\de09b7","\de09b8","\de09b9","\de09ba","\de09bb","\de09bc","\de09bd","\de09be","\de09bf","\de09c0","\de09c1","\de09c2","\de09c3","\de09c4","\de09c5","\de09c6","\de09c7","\de09c8","\de09c9","\de09ca","\de09cb","\de09cc","\de09cd","\de09ce","\de09cf","\de09d0","\de09d1","\de09d2","\de09d3","\de09d4","\de09d5","\de09d6","\de09d7","\de09d8","\de09d9","\de09da","\de09db","\de09dc","\de09dd","\de09de","\de09df","\de09e0","\de09e1","\de09e2","\de09e3","\de09e4","\de09e5","\de09e6","\de09e7","\de09e8","\de09e9","\de09ea","\de09eb","\de09ec","\de09ed","\de09ee","\de09ef","\de09f0","\de09f1","\de09f2","\de09f3","\de09f4","\de09f5","\de09f6","\de09f7","\de09f8","\de09f9","\de09fa","\de09fb","\de09fc","\de09fd","\de09fe","\de09ff","\de0a00","\de0a01","\de0a02","\de0a03","\de0a04","\de0a05","\de0a06","\de0a07","\de0a08","\de0a09","\de0a0a","\de0a0b","\de0a0c","\de0a0d","\de0a0e","\de0a0f","\de0a10","\de0a11","\de0a12","\de0a13","\de0a14","\de0a15","\de0a16","\de0a17","\de0a18","\de0a19","\de0a1a","\de0a1b","\de0a1c","\de0a1d","\de0a1e","\de0a1f","\de0a20","\de0a21","\de0a22","\de0a23","\de0a24","\de0a25","\de0a26","\de0a27","\de0a28","\de0a29","\de0a2a","\de0a2b","\de0a2c","\de0a2d","\de0a2e","\de0a2f","\de0a30","\de0a31","\de0a32","\de0a33","\de0a34","\de0a35","\de0a36","\de0a37","\de0a38","\de0a39","\de0a3a","\de0a3b","\de0a3c","\de0a3d","\de0a3e","\de0a3f","\de0a40","\de0a41","\de0a42","\de0a43","\de0a44","\de0a45","\de0a46","\de0a47","\de0a48","\de0a49","\de0a4a","\de0a4b","\de0a4c","\de0a4d","\de0a4e","\de0a4f","\de0a50","\de0a51","\de0a52","\de0a53","\de0a54","\de0a55","\de0a56","\de0a57","\de0a58","\de0a59","\de0a5a","\de0a5b","\de0a5c","\de0a5d","\de0a5e","\de0a5f","\de0a60","\de0a61","\de0a62","\de0a63","\de0a64","\de0a65","\de0a66","\de0a67","\de0a68","\de0a69","\de0a6a","\de0a6b","\de0a6c","\de0a6d","\de0a6e","\de0a6f","\de0a70","\de0a71","\de0a72","\de0a73","\de0a74","\de0a75","\de0a76","\de0a77","\de0a78","\de0a79","\de0a7a","\de0a7b","\de0a7c","\de0a7d","\de0a7e","\de0a7f","\de0a80","\de0a81","\de0a82","\de0a83","\de0a84","\de0a85","\de0a86","\de0a87","\de0a88","\de0a89","\de0a8a","\de0a8b","\de0a8c","\de0a8d","\de0a8e","\de0a8f","\de0a90","\de0a91","\de0a92","\de0a93","\de0a94","\de0a95","\de0a96","\de0a97","\de0a98","\de0a99","\de0a9a","\de0a9b","\de0a9c","\de0a9d","\de0a9e","\de0a9f","\de0aa0","\de0aa1","\de0aa2","\de0aa3","\de0aa4","\de0aa5","\de0aa6","\de0aa7","\de0aa8","\de0aa9","\de0aaa","\de0aab","\de0aac","\de0aad","\de0aae","\de0aaf","\de0ab0","\de0ab1","\de0ab2","\de0ab3","\de0ab4","\de0ab5","\de0ab6","\de0ab7","\de0ab8","\de0ab9","\de0aba","\de0abb","\de0abc","\de0abd","\de0abe","\de0abf","\de0ac0","\de0ac1","\de0ac2","\de0ac3","\de0ac4","\de0ac5","\de0ac6","\de0ac7","\de0ac8","\de0ac9","\de0aca","\de0acb","\de0acc","\de0acd","\de0ace","\de0acf","\de0ad0","\de0ad1","\de0ad2","\de0ad3","\de0ad4","\de0ad5","\de0ad6","\de0ad7","\de0ad8","\de0ad9","\de0ada","\de0adb","\de0adc","\de0add","\de0ade","\de0adf","\de0ae0","\de0ae1","\de0ae2","\de0ae3","\de0ae4","\de0ae5","\de0ae6","\de0ae7","\de0ae8","\de0ae9","\de0aea","\de0aeb","\de0aec","\de0aed","\de0aee","\de0aef","\de0af0","\de0af1","\de0af2","\de0af3","\de0af4","\de0af5","\de0af6","\de0af7","\de0af8","\de0af9","\de0afa","\de0afb","\de0afc","\de0afd","\de0afe","\de0aff","\de0b00","\de0b01","\de0b02","\de0b03","\de0b04","\de0b05","\de0b06","\de0b07","\de0b08","\de0b09","\de0b0a","\de0b0b","\de0b0c","\de0b0d","\de0b0e","\de0b0f","\de0b10","\de0b11","\de0b12","\de0b13","\de0b14","\de0b15","\de0b16","\de0b17","\de0b18","\de0b19","\de0b1a","\de0b1b","\de0b1c","\de0b1d","\de0b1e","\de0b1f","\de0b20","\de0b21","\de0b22","\de0b23","\de0b24","\de0b25","\de0b26","\de0b27","\de0b28","\de0b29","\de0b2a","\de0b2b","\de0b2c","\de0b2d","\de0b2e","\de0b2f","\de0b30","\de0b31","\de0b32","\de0b33","\de0b34","\de0b35","\de0b36","\de0b37","\de0b38","\de0b39","\de0b3a","\de0b3b","\de0b3c","\de0b3d","\de0b3e","\de0b3f","\de0b40","\de0b41","\de0b42","\de0b43","\de0b44","\de0b45","\de0b46","\de0b47","\de0b48","\de0b49","\de0b4a","\de0b4b","\de0b4c","\de0b4d","\de0b4e","\de0b4f","\de0b50","\de0b51","\de0b52","\de0b53","\de0b54","\de0b55","\de0b56","\de0b57","\de0b58","\de0b59","\de0b5a","\de0b5b","\de0b5c","\de0b5d","\de0b5e","\de0b5f","\de0b60","\de0b61","\de0b62","\de0b63","\de0b64","\de0b65","\de0b66","\de0b67","\de0b68","\de0b69","\de0b6a","\de0b6b","\de0b6c","\de0b6d","\de0b6e","\de0b6f","\de0b70","\de0b71","\de0b72","\de0b73","\de0b74","\de0b75","\de0b76","\de0b77","\de0b78","\de0b79","\de0b7a","\de0b7b","\de0b7c","\de0b7d","\de0b7e","\de0b7f","\de0b80","\de0b81","\de0b82","\de0b83","\de0b84","\de0b85","\de0b86","\de0b87","\de0b88","\de0b89","\de0b8a","\de0b8b","\de0b8c","\de0b8d","\de0b8e","\de0b8f","\de0b90","\de0b91","\de0b92","\de0b93","\de0b94","\de0b95","\de0b96","\de0b97","\de0b98","\de0b99","\de0b9a","\de0b9b","\de0b9c","\de0b9d","\de0b9e","\de0b9f","\de0ba0","\de0ba1","\de0ba2","\de0ba3","\de0ba4","\de0ba5","\de0ba6","\de0ba7","\de0ba8","\de0ba9","\de0baa","\de0bab","\de0bac","\de0bad","\de0bae","\de0baf","\de0bb0","\de0bb1","\de0bb2","\de0bb3","\de0bb4","\de0bb5","\de0bb6","\de0bb7","\de0bb8","\de0bb9","\de0bba","\de0bbb","\de0bbc","\de0bbd","\de0bbe","\de0bbf","\de0bc0","\de0bc1","\de0bc2","\de0bc3","\de0bc4","\de0bc5","\de0bc6","\de0bc7","\de0bc8","\de0bc9","\de0bca","\de0bcb","\de0bcc","\de0bcd","\de0bce","\de0bcf","\de0bd0","\de0bd1","\de0bd2","\de0bd3","\de0bd4","\de0bd5","\de0bd6","\de0bd7","\de0bd8","\de0bd9","\de0bda","\de0bdb","\de0bdc","\de0bdd","\de0bde","\de0bdf","\de0be0","\de0be1","\de0be2","\de0be3","\de0be4","\de0be5","\de0be6","\de0be7","\de0be8","\de0be9","\de0bea","\de0beb","\de0bec","\de0bed","\de0bee","\de0bef","\de0bf0","\de0bf1","\de0bf2","\de0bf3","\de0bf4","\de0bf5","\de0bf6","\de0bf7","\de0bf8","\de0bf9","\de0bfa","\de0bfb","\de0bfc","\de0bfd","\de0bfe","\de0bff","\de0c00","\de0c01","\de0c02","\de0c03","\de0c04","\de0c05","\de0c06","\de0c07","\de0c08","\de0c09","\de0c0a","\de0c0b","\de0c0c","\de0c0d","\de0c0e","\de0c0f","\de0c10","\de0c11","\de0c12","\de0c13","\de0c14","\de0c15","\de0c16","\de0c17","\de0c18","\de0c19","\de0c1a","\de0c1b","\de0c1c","\de0c1d","\de0c1e","\de0c1f","\de0c20","\de0c21","\de0c22","\de0c23","\de0c24","\de0c25","\de0c26","\de0c27","\de0c28","\de0c29","\de0c2a","\de0c2b","\de0c2c","\de0c2d","\de0c2e","\de0c2f","\de0c30","\de0c31","\de0c32","\de0c33","\de0c34","\de0c35","\de0c36","\de0c37","\de0c38","\de0c39","\de0c3a","\de0c3b","\de0c3c","\de0c3d","\de0c3e","\de0c3f","\de0c40","\de0c41","\de0c42","\de0c43","\de0c44","\de0c45","\de0c46","\de0c47","\de0c48","\de0c49","\de0c4a","\de0c4b","\de0c4c","\de0c4d","\de0c4e","\de0c4f","\de0c50","\de0c51","\de0c52","\de0c53","\de0c54","\de0c55","\de0c56","\de0c57","\de0c58","\de0c59","\de0c5a","\de0c5b","\de0c5c","\de0c5d","\de0c5e","\de0c5f","\de0c60","\de0c61","\de0c62","\de0c63","\de0c64","\de0c65","\de0c66","\de0c67","\de0c68","\de0c69","\de0c6a","\de0c6b","\de0c6c","\de0c6d","\de0c6e","\de0c6f","\de0c70","\de0c71","\de0c72","\de0c73","\de0c74","\de0c75","\de0c76","\de0c77","\de0c78","\de0c79","\de0c7a","\de0c7b","\de0c7c","\de0c7d","\de0c7e","\de0c7f","\de0c80","\de0c81","\de0c82","\de0c83","\de0c84","\de0c85","\de0c86","\de0c87","\de0c88","\de0c89","\de0c8a","\de0c8b","\de0c8c","\de0c8d","\de0c8e","\de0c8f","\de0c90","\de0c91","\de0c92","\de0c93","\de0c94","\de0c95","\de0c96","\de0c97","\de0c98","\de0c99","\de0c9a","\de0c9b","\de0c9c","\de0c9d","\de0c9e","\de0c9f","\de0ca0","\de0ca1","\de0ca2","\de0ca3","\de0ca4","\de0ca5","\de0ca6","\de0ca7","\de0ca8","\de0ca9","\de0caa","\de0cab","\de0cac","\de0cad","\de0cae","\de0caf","\de0cb0","\de0cb1","\de0cb2","\de0cb3","\de0cb4","\de0cb5","\de0cb6","\de0cb7","\de0cb8","\de0cb9","\de0cba","\de0cbb","\de0cbc","\de0cbd","\de0cbe","\de0cbf","\de0cc0","\de0cc1","\de0cc2","\de0cc3","\de0cc4","\de0cc5","\de0cc6","\de0cc7","\de0cc8","\de0cc9","\de0cca","\de0ccb","\de0ccc","\de0ccd","\de0cce","\de0ccf","\de0cd0","\de0cd1","\de0cd2","\de0cd3","\de0cd4","\de0cd5","\de0cd6","\de0cd7","\de0cd8","\de0cd9","\de0cda","\de0cdb","\de0cdc","\de0cdd","\de0cde","\de0cdf","\de0ce0","\de0ce1","\de0ce2","\de0ce3","\de0ce4","\de0ce5","\de0ce6","\de0ce7","\de0ce8","\de0ce9","\de0cea","\de0ceb","\de0cec","\de0ced","\de0cee","\de0cef","\de0cf0","\de0cf1","\de0cf2","\de0cf3","\de0cf4","\de0cf5","\de0cf6","\de0cf7","\de0cf8","\de0cf9","\de0cfa","\de0cfb","\de0cfc","\de0cfd","\de0cfe","\de0cff","\de0d00","\de0d01","\de0d02","\de0d03","\de0d04","\de0d05","\de0d06","\de0d07","\de0d08","\de0d09","\de0d0a","\de0d0b","\de0d0c","\de0d0d","\de0d0e","\de0d0f","\de0d10","\de0d11","\de0d12","\de0d13","\de0d14","\de0d15","\de0d16","\de0d17","\de0d18","\de0d19","\de0d1a","\de0d1b","\de0d1c","\de0d1d","\de0d1e","\de0d1f","\de0d20","\de0d21","\de0d22","\de0d23","\de0d24","\de0d25","\de0d26","\de0d27","\de0d28","\de0d29","\de0d2a","\de0d2b","\de0d2c","\de0d2d","\de0d2e","\de0d2f","\de0d30","\de0d31","\de0d32","\de0d33","\de0d34","\de0d35","\de0d36","\de0d37","\de0d38","\de0d39","\de0d3a","\de0d3b","\de0d3c","\de0d3d","\de0d3e","\de0d3f","\de0d40","\de0d41","\de0d42","\de0d43","\de0d44","\de0d45","\de0d46","\de0d47","\de0d48","\de0d49","\de0d4a","\de0d4b","\de0d4c","\de0d4d","\de0d4e","\de0d4f","\de0d50","\de0d51","\de0d52","\de0d53","\de0d54","\de0d55","\de0d56","\de0d57","\de0d58","\de0d59","\de0d5a","\de0d5b","\de0d5c","\de0d5d","\de0d5e","\de0d5f","\de0d60","\de0d61","\de0d62","\de0d63","\de0d64","\de0d65","\de0d66","\de0d67","\de0d68","\de0d69","\de0d6a","\de0d6b","\de0d6c","\de0d6d","\de0d6e","\de0d6f","\de0d70","\de0d71","\de0d72","\de0d73","\de0d74","\de0d75","\de0d76","\de0d77","\de0d78","\de0d79","\de0d7a","\de0d7b","\de0d7c","\de0d7d","\de0d7e","\de0d7f","\de0d80","\de0d81","\de0d82","\de0d83","\de0d84","\de0d85","\de0d86","\de0d87","\de0d88","\de0d89","\de0d8a","\de0d8b","\de0d8c","\de0d8d","\de0d8e","\de0d8f","\de0d90","\de0d91","\de0d92","\de0d93","\de0d94","\de0d95","\de0d96","\de0d97","\de0d98","\de0d99","\de0d9a","\de0d9b","\de0d9c","\de0d9d","\de0d9e","\de0d9f","\de0da0","\de0da1","\de0da2","\de0da3","\de0da4","\de0da5","\de0da6","\de0da7","\de0da8","\de0da9","\de0daa","\de0dab","\de0dac","\de0dad","\de0dae","\de0daf","\de0db0","\de0db1","\de0db2","\de0db3","\de0db4","\de0db5","\de0db6","\de0db7","\de0db8","\de0db9","\de0dba","\de0dbb","\de0dbc","\de0dbd","\de0dbe","\de0dbf","\de0dc0","\de0dc1","\de0dc2","\de0dc3","\de0dc4","\de0dc5","\de0dc6","\de0dc7","\de0dc8","\de0dc9","\de0dca","\de0dcb","\de0dcc","\de0dcd","\de0dce","\de0dcf","\de0dd0","\de0dd1","\de0dd2","\de0dd3","\de0dd4","\de0dd5","\de0dd6","\de0dd7","\de0dd8","\de0dd9","\de0dda","\de0ddb","\de0ddc","\de0ddd","\de0dde","\de0ddf","\de0de0","\de0de1","\de0de2","\de0de3","\de0de4","\de0de5","\de0de6","\de0de7","\de0de8","\de0de9","\de0dea","\de0deb","\de0dec","\de0ded","\de0dee","\de0def","\de0df0","\de0df1","\de0df2","\de0df3","\de0df4","\de0df5","\de0df6","\de0df7","\de0df8","\de0df9","\de0dfa","\de0dfb","\de0dfc","\de0dfd","\de0dfe","\de0dff","\de0e00","\de0e01","\de0e02","\de0e03","\de0e04","\de0e05","\de0e06","\de0e07","\de0e08","\de0e09","\de0e0a","\de0e0b","\de0e0c","\de0e0d","\de0e0e","\de0e0f","\de0e10","\de0e11","\de0e12","\de0e13","\de0e14","\de0e15","\de0e16","\de0e17","\de0e18","\de0e19","\de0e1a","\de0e1b","\de0e1c","\de0e1d","\de0e1e","\de0e1f","\de0e20","\de0e21","\de0e22","\de0e23","\de0e24","\de0e25","\de0e26","\de0e27","\de0e28","\de0e29","\de0e2a","\de0e2b","\de0e2c","\de0e2d","\de0e2e","\de0e2f","\de0e30","\de0e31","\de0e32","\de0e33","\de0e34","\de0e35","\de0e36","\de0e37","\de0e38","\de0e39","\de0e3a","\de0e3b","\de0e3c","\de0e3d","\de0e3e","\de0e3f","\de0e40","\de0e41","\de0e42","\de0e43","\de0e44","\de0e45","\de0e46","\de0e47","\de0e48","\de0e49","\de0e4a","\de0e4b","\de0e4c","\de0e4d","\de0e4e","\de0e4f","\de0e50","\de0e51","\de0e52","\de0e53","\de0e54","\de0e55","\de0e56","\de0e57","\de0e58","\de0e59","\de0e5a","\de0e5b","\de0e5c","\de0e5d","\de0e5e","\de0e5f","\de0e60","\de0e61","\de0e62","\de0e63","\de0e64","\de0e65","\de0e66","\de0e67","\de0e68","\de0e69","\de0e6a","\de0e6b","\de0e6c","\de0e6d","\de0e6e","\de0e6f","\de0e70","\de0e71","\de0e72","\de0e73","\de0e74","\de0e75","\de0e76","\de0e77","\de0e78","\de0e79","\de0e7a","\de0e7b","\de0e7c","\de0e7d","\de0e7e","\de0e7f","\de0e80","\de0e81","\de0e82","\de0e83","\de0e84","\de0e85","\de0e86","\de0e87","\de0e88","\de0e89","\de0e8a","\de0e8b","\de0e8c","\de0e8d","\de0e8e","\de0e8f","\de0e90","\de0e91","\de0e92","\de0e93","\de0e94","\de0e95","\de0e96","\de0e97","\de0e98","\de0e99","\de0e9a","\de0e9b","\de0e9c","\de0e9d","\de0e9e","\de0e9f","\de0ea0","\de0ea1","\de0ea2","\de0ea3","\de0ea4","\de0ea5","\de0ea6","\de0ea7","\de0ea8","\de0ea9","\de0eaa","\de0eab","\de0eac","\de0ead","\de0eae","\de0eaf","\de0eb0","\de0eb1","\de0eb2","\de0eb3","\de0eb4","\de0eb5","\de0eb6","\de0eb7","\de0eb8","\de0eb9","\de0eba","\de0ebb","\de0ebc","\de0ebd","\de0ebe","\de0ebf","\de0ec0","\de0ec1","\de0ec2","\de0ec3","\de0ec4","\de0ec5","\de0ec6","\de0ec7","\de0ec8","\de0ec9","\de0eca","\de0ecb","\de0ecc","\de0ecd","\de0ece","\de0ecf","\de0ed0","\de0ed1","\de0ed2","\de0ed3","\de0ed4","\de0ed5","\de0ed6","\de0ed7","\de0ed8","\de0ed9","\de0eda","\de0edb","\de0edc","\de0edd","\de0ede","\de0edf","\de0ee0","\de0ee1","\de0ee2","\de0ee3","\de0ee4","\de0ee5","\de0ee6","\de0ee7","\de0ee8","\de0ee9","\de0eea","\de0eeb","\de0eec","\de0eed","\de0eee","\de0eef","\de0ef0","\de0ef1","\de0ef2","\de0ef3","\de0ef4","\de0ef5","\de0ef6","\de0ef7","\de0ef8","\de0ef9","\de0efa","\de0efb","\de0efc","\de0efd","\de0efe","\de0eff","\de0f00","\de0f01","\de0f02","\de0f03","\de0f04","\de0f05","\de0f06","\de0f07","\de0f08","\de0f09","\de0f0a","\de0f0b","\de0f0c","\de0f0d","\de0f0e","\de0f0f","\de0f10","\de0f11","\de0f12","\de0f13","\de0f14","\de0f15","\de0f16","\de0f17","\de0f18","\de0f19","\de0f1a","\de0f1b","\de0f1c","\de0f1d","\de0f1e","\de0f1f","\de0f20","\de0f21","\de0f22","\de0f23","\de0f24","\de0f25","\de0f26","\de0f27","\de0f28","\de0f29","\de0f2a","\de0f2b","\de0f2c","\de0f2d","\de0f2e","\de0f2f","\de0f30","\de0f31","\de0f32","\de0f33","\de0f34","\de0f35","\de0f36","\de0f37","\de0f38","\de0f39","\de0f3a","\de0f3b","\de0f3c","\de0f3d","\de0f3e","\de0f3f","\de0f40","\de0f41","\de0f42","\de0f43","\de0f44","\de0f45","\de0f46","\de0f47","\de0f48","\de0f49","\de0f4a","\de0f4b","\de0f4c","\de0f4d","\de0f4e","\de0f4f","\de0f50","\de0f51","\de0f52","\de0f53","\de0f54","\de0f55","\de0f56","\de0f57","\de0f58","\de0f59","\de0f5a","\de0f5b","\de0f5c","\de0f5d","\de0f5e","\de0f5f","\de0f60","\de0f61","\de0f62","\de0f63","\de0f64","\de0f65","\de0f66","\de0f67","\de0f68","\de0f69","\de0f6a","\de0f6b","\de0f6c","\de0f6d","\de0f6e","\de0f6f","\de0f70","\de0f71","\de0f72","\de0f73","\de0f74","\de0f75","\de0f76","\de0f77","\de0f78","\de0f79","\de0f7a","\de0f7b","\de0f7c","\de0f7d","\de0f7e","\de0f7f","\de0f80","\de0f81","\de0f82","\de0f83","\de0f84","\de0f85","\de0f86","\de0f87","\de0f88","\de0f89","\de0f8a","\de0f8b","\de0f8c","\de0f8d","\de0f8e","\de0f8f","\de0f90","\de0f91","\de0f92","\de0f93","\de0f94","\de0f95","\de0f96","\de0f97","\de0f98","\de0f99","\de0f9a","\de0f9b","\de0f9c","\de0f9d","\de0f9e","\de0f9f","\de0fa0","\de0fa1","\de0fa2","\de0fa3","\de0fa4","\de0fa5","\de0fa6","\de0fa7","\de0fa8","\de0fa9","\de0faa","\de0fab","\de0fac","\de0fad","\de0fae","\de0faf","\de0fb0","\de0fb1","\de0fb2","\de0fb3","\de0fb4","\de0fb5","\de0fb6","\de0fb7","\de0fb8","\de0fb9","\de0fba","\de0fbb","\de0fbc","\de0fbd","\de0fbe","\de0fbf","\de0fc0","\de0fc1","\de0fc2","\de0fc3","\de0fc4","\de0fc5","\de0fc6","\de0fc7","\de0fc8","\de0fc9","\de0fca","\de0fcb","\de0fcc","\de0fcd","\de0fce","\de0fcf","\de0fd0","\de0fd1","\de0fd2","\de0fd3","\de0fd4","\de0fd5","\de0fd6","\de0fd7","\de0fd8","\de0fd9","\de0fda","\de0fdb","\de0fdc","\de0fdd","\de0fde","\de0fdf","\de0fe0","\de0fe1","\de0fe2","\de0fe3","\de0fe4","\de0fe5","\de0fe6","\de0fe7","\de0fe8","\de0fe9","\de0fea","\de0feb","\de0fec","\de0fed","\de0fee","\de0fef","\de0ff0","\de0ff1","\de0ff2","\de0ff3","\de0ff4","\de0ff5","\de0ff6","\de0ff7","\de0ff8","\de0ff9","\de0ffa","\de0ffb","\de0ffc","\de0ffd","\de0ffe","\de0fff",  # ; Control # Cn [3600] <reserved-E01F0>..<reserved-E0FFF>
        "\d0300","\d0301","\d0302","\d0303","\d0304","\d0305","\d0306","\d0307","\d0308","\d0309","\d030a","\d030b","\d030c","\d030d","\d030e","\d030f","\d0310","\d0311","\d0312","\d0313","\d0314","\d0315","\d0316","\d0317","\d0318","\d0319","\d031a","\d031b","\d031c","\d031d","\d031e","\d031f","\d0320","\d0321","\d0322","\d0323","\d0324","\d0325","\d0326","\d0327","\d0328","\d0329","\d032a","\d032b","\d032c","\d032d","\d032e","\d032f","\d0330","\d0331","\d0332","\d0333","\d0334","\d0335","\d0336","\d0337","\d0338","\d0339","\d033a","\d033b","\d033c","\d033d","\d033e","\d033f","\d0340","\d0341","\d0342","\d0343","\d0344","\d0345","\d0346","\d0347","\d0348","\d0349","\d034a","\d034b","\d034c","\d034d","\d034e","\d034f","\d0350","\d0351","\d0352","\d0353","\d0354","\d0355","\d0356","\d0357","\d0358","\d0359","\d035a","\d035b","\d035c","\d035d","\d035e","\d035f","\d0360","\d0361","\d0362","\d0363","\d0364","\d0365","\d0366","\d0367","\d0368","\d0369","\d036a","\d036b","\d036c","\d036d","\d036e","\d036f",  # ; Extend # Mn [112] COMBINING GRAVE ACCENT..COMBINING LATIN SMALL LETTER X
        "\d0483","\d0484","\d0485","\d0486","\d0487",  # ; Extend # Mn   [5] COMBINING CYRILLIC TITLO..COMBINING CYRILLIC POKRYTIE
        "\d0488","\d0489",  # ; Extend # Me   [2] COMBINING CYRILLIC HUNDRED THOUSANDS SIGN..COMBINING CYRILLIC MILLIONS SIGN
        "\d0591","\d0592","\d0593","\d0594","\d0595","\d0596","\d0597","\d0598","\d0599","\d059a","\d059b","\d059c","\d059d","\d059e","\d059f","\d05a0","\d05a1","\d05a2","\d05a3","\d05a4","\d05a5","\d05a6","\d05a7","\d05a8","\d05a9","\d05aa","\d05ab","\d05ac","\d05ad","\d05ae","\d05af","\d05b0","\d05b1","\d05b2","\d05b3","\d05b4","\d05b5","\d05b6","\d05b7","\d05b8","\d05b9","\d05ba","\d05bb","\d05bc","\d05bd",  # ; Extend # Mn  [45] HEBREW ACCENT ETNAHTA..HEBREW POINT METEG
        "\d05BF",  # ; Extend # Mn       HEBREW POINT RAFE
        "\d05c1","\d05c2",  # ; Extend # Mn   [2] HEBREW POINT SHIN DOT..HEBREW POINT SIN DOT
        "\d05c4","\d05c5",  # ; Extend # Mn   [2] HEBREW MARK UPPER DOT..HEBREW MARK LOWER DOT
        "\d05C7",  # ; Extend # Mn       HEBREW POINT QAMATS QATAN
        "\d0610","\d0611","\d0612","\d0613","\d0614","\d0615","\d0616","\d0617","\d0618","\d0619","\d061a",  # ; Extend # Mn  [11] ARABIC SIGN SALLALLAHOU ALAYHE WASSALLAM..ARABIC SMALL KASRA
        "\d064b","\d064c","\d064d","\d064e","\d064f","\d0650","\d0651","\d0652","\d0653","\d0654","\d0655","\d0656","\d0657","\d0658","\d0659","\d065a","\d065b","\d065c","\d065d","\d065e","\d065f",  # ; Extend # Mn  [21] ARABIC FATHATAN..ARABIC WAVY HAMZA BELOW
        "\d0670",  # ; Extend # Mn       ARABIC LETTER SUPERSCRIPT ALEF
        "\d06d6","\d06d7","\d06d8","\d06d9","\d06da","\d06db","\d06dc",  # ; Extend # Mn   [7] ARABIC SMALL HIGH LIGATURE SAD WITH LAM WITH ALEF MAKSURA..ARABIC SMALL HIGH SEEN
        "\d06df","\d06e0","\d06e1","\d06e2","\d06e3","\d06e4",  # ; Extend # Mn   [6] ARABIC SMALL HIGH ROUNDED ZERO..ARABIC SMALL HIGH MADDA
        "\d06e7","\d06e8",  # ; Extend # Mn   [2] ARABIC SMALL HIGH YEH..ARABIC SMALL HIGH NOON
        "\d06ea","\d06eb","\d06ec","\d06ed",  # ; Extend # Mn   [4] ARABIC EMPTY CENTRE LOW STOP..ARABIC SMALL LOW MEEM
        "\d0711",  # ; Extend # Mn       SYRIAC LETTER SUPERSCRIPT ALAPH
        "\d0730","\d0731","\d0732","\d0733","\d0734","\d0735","\d0736","\d0737","\d0738","\d0739","\d073a","\d073b","\d073c","\d073d","\d073e","\d073f","\d0740","\d0741","\d0742","\d0743","\d0744","\d0745","\d0746","\d0747","\d0748","\d0749","\d074a",  # ; Extend # Mn  [27] SYRIAC PTHAHA ABOVE..SYRIAC BARREKH
        "\d07a6","\d07a7","\d07a8","\d07a9","\d07aa","\d07ab","\d07ac","\d07ad","\d07ae","\d07af","\d07b0",  # ; Extend # Mn  [11] THAANA ABAFILI..THAANA SUKUN
        "\d07eb","\d07ec","\d07ed","\d07ee","\d07ef","\d07f0","\d07f1","\d07f2","\d07f3",  # ; Extend # Mn   [9] NKO COMBINING SHORT HIGH TONE..NKO COMBINING DOUBLE DOT ABOVE
        "\d0816","\d0817","\d0818","\d0819",  # ; Extend # Mn   [4] SAMARITAN MARK IN..SAMARITAN MARK DAGESH
        "\d081b","\d081c","\d081d","\d081e","\d081f","\d0820","\d0821","\d0822","\d0823",  # ; Extend # Mn   [9] SAMARITAN MARK EPENTHETIC YUT..SAMARITAN VOWEL SIGN A
        "\d0825","\d0826","\d0827",  # ; Extend # Mn   [3] SAMARITAN VOWEL SIGN SHORT A..SAMARITAN VOWEL SIGN U
        "\d0829","\d082a","\d082b","\d082c","\d082d",  # ; Extend # Mn   [5] SAMARITAN VOWEL SIGN LONG I..SAMARITAN MARK NEQUDAA
        "\d0859","\d085a","\d085b",  # ; Extend # Mn   [3] MANDAIC AFFRICATION MARK..MANDAIC GEMINATION MARK
        "\d08d4","\d08d5","\d08d6","\d08d7","\d08d8","\d08d9","\d08da","\d08db","\d08dc","\d08dd","\d08de","\d08df","\d08e0","\d08e1",  # ; Extend # Mn  [14] ARABIC SMALL HIGH WORD AR-RUB..ARABIC SMALL HIGH SIGN SAFHA
        "\d08e3","\d08e4","\d08e5","\d08e6","\d08e7","\d08e8","\d08e9","\d08ea","\d08eb","\d08ec","\d08ed","\d08ee","\d08ef","\d08f0","\d08f1","\d08f2","\d08f3","\d08f4","\d08f5","\d08f6","\d08f7","\d08f8","\d08f9","\d08fa","\d08fb","\d08fc","\d08fd","\d08fe","\d08ff","\d0900","\d0901","\d0902",  # ; Extend # Mn  [32] ARABIC TURNED DAMMA BELOW..DEVANAGARI SIGN ANUSVARA
        "\d093A",  # ; Extend # Mn       DEVANAGARI VOWEL SIGN OE
        "\d093C",  # ; Extend # Mn       DEVANAGARI SIGN NUKTA
        "\d0941","\d0942","\d0943","\d0944","\d0945","\d0946","\d0947","\d0948",  # ; Extend # Mn   [8] DEVANAGARI VOWEL SIGN U..DEVANAGARI VOWEL SIGN AI
        "\d094D",  # ; Extend # Mn       DEVANAGARI SIGN VIRAMA
        "\d0951","\d0952","\d0953","\d0954","\d0955","\d0956","\d0957",  # ; Extend # Mn   [7] DEVANAGARI STRESS SIGN UDATTA..DEVANAGARI VOWEL SIGN UUE
        "\d0962","\d0963",  # ; Extend # Mn   [2] DEVANAGARI VOWEL SIGN VOCALIC L..DEVANAGARI VOWEL SIGN VOCALIC LL
        "\d0981",  # ; Extend # Mn       BENGALI SIGN CANDRABINDU
        "\d09BC",  # ; Extend # Mn       BENGALI SIGN NUKTA
        "\d09BE",  # ; Extend # Mc       BENGALI VOWEL SIGN AA
        "\d09c1","\d09c2","\d09c3","\d09c4",  # ; Extend # Mn   [4] BENGALI VOWEL SIGN U..BENGALI VOWEL SIGN VOCALIC RR
        "\d09CD",  # ; Extend # Mn       BENGALI SIGN VIRAMA
        "\d09D7",  # ; Extend # Mc       BENGALI AU LENGTH MARK
        "\d09e2","\d09e3",  # ; Extend # Mn   [2] BENGALI VOWEL SIGN VOCALIC L..BENGALI VOWEL SIGN VOCALIC LL
        "\d0a01","\d0a02",  # ; Extend # Mn   [2] GURMUKHI SIGN ADAK BINDI..GURMUKHI SIGN BINDI
        "\d0A3C",  # ; Extend # Mn       GURMUKHI SIGN NUKTA
        "\d0a41","\d0a42",  # ; Extend # Mn   [2] GURMUKHI VOWEL SIGN U..GURMUKHI VOWEL SIGN UU
        "\d0a47","\d0a48",  # ; Extend # Mn   [2] GURMUKHI VOWEL SIGN EE..GURMUKHI VOWEL SIGN AI
        "\d0a4b","\d0a4c","\d0a4d",  # ; Extend # Mn   [3] GURMUKHI VOWEL SIGN OO..GURMUKHI SIGN VIRAMA
        "\d0A51",  # ; Extend # Mn       GURMUKHI SIGN UDAAT
        "\d0a70","\d0a71",  # ; Extend # Mn   [2] GURMUKHI TIPPI..GURMUKHI ADDAK
        "\d0A75",  # ; Extend # Mn       GURMUKHI SIGN YAKASH
        "\d0a81","\d0a82",  # ; Extend # Mn   [2] GUJARATI SIGN CANDRABINDU..GUJARATI SIGN ANUSVARA
        "\d0ABC",  # ; Extend # Mn       GUJARATI SIGN NUKTA
        "\d0ac1","\d0ac2","\d0ac3","\d0ac4","\d0ac5",  # ; Extend # Mn   [5] GUJARATI VOWEL SIGN U..GUJARATI VOWEL SIGN CANDRA E
        "\d0ac7","\d0ac8",  # ; Extend # Mn   [2] GUJARATI VOWEL SIGN E..GUJARATI VOWEL SIGN AI
        "\d0ACD",  # ; Extend # Mn       GUJARATI SIGN VIRAMA
        "\d0ae2","\d0ae3",  # ; Extend # Mn   [2] GUJARATI VOWEL SIGN VOCALIC L..GUJARATI VOWEL SIGN VOCALIC LL
        "\d0afa","\d0afb","\d0afc","\d0afd","\d0afe","\d0aff",  # ; Extend # Mn   [6] GUJARATI SIGN SUKUN..GUJARATI SIGN TWO-CIRCLE NUKTA ABOVE
        "\d0B01",  # ; Extend # Mn       ORIYA SIGN CANDRABINDU
        "\d0B3C",  # ; Extend # Mn       ORIYA SIGN NUKTA
        "\d0B3E",  # ; Extend # Mc       ORIYA VOWEL SIGN AA
        "\d0B3F",  # ; Extend # Mn       ORIYA VOWEL SIGN I
        "\d0b41","\d0b42","\d0b43","\d0b44",  # ; Extend # Mn   [4] ORIYA VOWEL SIGN U..ORIYA VOWEL SIGN VOCALIC RR
        "\d0B4D",  # ; Extend # Mn       ORIYA SIGN VIRAMA
        "\d0B56",  # ; Extend # Mn       ORIYA AI LENGTH MARK
        "\d0B57",  # ; Extend # Mc       ORIYA AU LENGTH MARK
        "\d0b62","\d0b63",  # ; Extend # Mn   [2] ORIYA VOWEL SIGN VOCALIC L..ORIYA VOWEL SIGN VOCALIC LL
        "\d0B82",  # ; Extend # Mn       TAMIL SIGN ANUSVARA
        "\d0BBE",  # ; Extend # Mc       TAMIL VOWEL SIGN AA
        "\d0BC0",  # ; Extend # Mn       TAMIL VOWEL SIGN II
        "\d0BCD",  # ; Extend # Mn       TAMIL SIGN VIRAMA
        "\d0BD7",  # ; Extend # Mc       TAMIL AU LENGTH MARK
        "\d0C00",  # ; Extend # Mn       TELUGU SIGN COMBINING CANDRABINDU ABOVE
        "\d0c3e","\d0c3f","\d0c40",  # ; Extend # Mn   [3] TELUGU VOWEL SIGN AA..TELUGU VOWEL SIGN II
        "\d0c46","\d0c47","\d0c48",  # ; Extend # Mn   [3] TELUGU VOWEL SIGN E..TELUGU VOWEL SIGN AI
        "\d0c4a","\d0c4b","\d0c4c","\d0c4d",  # ; Extend # Mn   [4] TELUGU VOWEL SIGN O..TELUGU SIGN VIRAMA
        "\d0c55","\d0c56",  # ; Extend # Mn   [2] TELUGU LENGTH MARK..TELUGU AI LENGTH MARK
        "\d0c62","\d0c63",  # ; Extend # Mn   [2] TELUGU VOWEL SIGN VOCALIC L..TELUGU VOWEL SIGN VOCALIC LL
        "\d0C81",  # ; Extend # Mn       KANNADA SIGN CANDRABINDU
        "\d0CBC",  # ; Extend # Mn       KANNADA SIGN NUKTA
        "\d0CBF",  # ; Extend # Mn       KANNADA VOWEL SIGN I
        "\d0CC2",  # ; Extend # Mc       KANNADA VOWEL SIGN UU
        "\d0CC6",  # ; Extend # Mn       KANNADA VOWEL SIGN E
        "\d0ccc","\d0ccd",  # ; Extend # Mn   [2] KANNADA VOWEL SIGN AU..KANNADA SIGN VIRAMA
        "\d0cd5","\d0cd6",  # ; Extend # Mc   [2] KANNADA LENGTH MARK..KANNADA AI LENGTH MARK
        "\d0ce2","\d0ce3",  # ; Extend # Mn   [2] KANNADA VOWEL SIGN VOCALIC L..KANNADA VOWEL SIGN VOCALIC LL
        "\d0d00","\d0d01",  # ; Extend # Mn   [2] MALAYALAM SIGN COMBINING ANUSVARA ABOVE..MALAYALAM SIGN CANDRABINDU
        "\d0d3b","\d0d3c",  # ; Extend # Mn   [2] MALAYALAM SIGN VERTICAL BAR VIRAMA..MALAYALAM SIGN CIRCULAR VIRAMA
        "\d0D3E",  # ; Extend # Mc       MALAYALAM VOWEL SIGN AA
        "\d0d41","\d0d42","\d0d43","\d0d44",  # ; Extend # Mn   [4] MALAYALAM VOWEL SIGN U..MALAYALAM VOWEL SIGN VOCALIC RR
        "\d0D4D",  # ; Extend # Mn       MALAYALAM SIGN VIRAMA
        "\d0D57",  # ; Extend # Mc       MALAYALAM AU LENGTH MARK
        "\d0d62","\d0d63",  # ; Extend # Mn   [2] MALAYALAM VOWEL SIGN VOCALIC L..MALAYALAM VOWEL SIGN VOCALIC LL
        "\d0DCA",  # ; Extend # Mn       SINHALA SIGN AL-LAKUNA
        "\d0DCF",  # ; Extend # Mc       SINHALA VOWEL SIGN AELA-PILLA
        "\d0dd2","\d0dd3","\d0dd4",  # ; Extend # Mn   [3] SINHALA VOWEL SIGN KETTI IS-PILLA..SINHALA VOWEL SIGN KETTI PAA-PILLA
        "\d0DD6",  # ; Extend # Mn       SINHALA VOWEL SIGN DIGA PAA-PILLA
        "\d0DDF",  # ; Extend # Mc       SINHALA VOWEL SIGN GAYANUKITTA
        "\d0E31",  # ; Extend # Mn       THAI CHARACTER MAI HAN-AKAT
        "\d0e34","\d0e35","\d0e36","\d0e37","\d0e38","\d0e39","\d0e3a",  # ; Extend # Mn   [7] THAI CHARACTER SARA I..THAI CHARACTER PHINTHU
        "\d0e47","\d0e48","\d0e49","\d0e4a","\d0e4b","\d0e4c","\d0e4d","\d0e4e",  # ; Extend # Mn   [8] THAI CHARACTER MAITAIKHU..THAI CHARACTER YAMAKKAN
        "\d0EB1",  # ; Extend # Mn       LAO VOWEL SIGN MAI KAN
        "\d0eb4","\d0eb5","\d0eb6","\d0eb7","\d0eb8","\d0eb9",  # ; Extend # Mn   [6] LAO VOWEL SIGN I..LAO VOWEL SIGN UU
        "\d0ebb","\d0ebc",  # ; Extend # Mn   [2] LAO VOWEL SIGN MAI KON..LAO SEMIVOWEL SIGN LO
        "\d0ec8","\d0ec9","\d0eca","\d0ecb","\d0ecc","\d0ecd",  # ; Extend # Mn   [6] LAO TONE MAI EK..LAO NIGGAHITA
        "\d0f18","\d0f19",  # ; Extend # Mn   [2] TIBETAN ASTROLOGICAL SIGN -KHYUD PA..TIBETAN ASTROLOGICAL SIGN SDONG TSHUGS
        "\d0F35",  # ; Extend # Mn       TIBETAN MARK NGAS BZUNG NYI ZLA
        "\d0F37",  # ; Extend # Mn       TIBETAN MARK NGAS BZUNG SGOR RTAGS
        "\d0F39",  # ; Extend # Mn       TIBETAN MARK TSA -PHRU
        "\d0f71","\d0f72","\d0f73","\d0f74","\d0f75","\d0f76","\d0f77","\d0f78","\d0f79","\d0f7a","\d0f7b","\d0f7c","\d0f7d","\d0f7e",  # ; Extend # Mn  [14] TIBETAN VOWEL SIGN AA..TIBETAN SIGN RJES SU NGA RO
        "\d0f80","\d0f81","\d0f82","\d0f83","\d0f84",  # ; Extend # Mn   [5] TIBETAN VOWEL SIGN REVERSED I..TIBETAN MARK HALANTA
        "\d0f86","\d0f87",  # ; Extend # Mn   [2] TIBETAN SIGN LCI RTAGS..TIBETAN SIGN YANG RTAGS
        "\d0f8d","\d0f8e","\d0f8f","\d0f90","\d0f91","\d0f92","\d0f93","\d0f94","\d0f95","\d0f96","\d0f97",  # ; Extend # Mn  [11] TIBETAN SUBJOINED SIGN LCE TSA CAN..TIBETAN SUBJOINED LETTER JA
        "\d0f99","\d0f9a","\d0f9b","\d0f9c","\d0f9d","\d0f9e","\d0f9f","\d0fa0","\d0fa1","\d0fa2","\d0fa3","\d0fa4","\d0fa5","\d0fa6","\d0fa7","\d0fa8","\d0fa9","\d0faa","\d0fab","\d0fac","\d0fad","\d0fae","\d0faf","\d0fb0","\d0fb1","\d0fb2","\d0fb3","\d0fb4","\d0fb5","\d0fb6","\d0fb7","\d0fb8","\d0fb9","\d0fba","\d0fbb","\d0fbc",  # ; Extend # Mn  [36] TIBETAN SUBJOINED LETTER NYA..TIBETAN SUBJOINED LETTER FIXED-FORM RA
        "\d0FC6",  # ; Extend # Mn       TIBETAN SYMBOL PADMA GDAN
        "\d102d","\d102e","\d102f","\d1030",  # ; Extend # Mn   [4] MYANMAR VOWEL SIGN I..MYANMAR VOWEL SIGN UU
        "\d1032","\d1033","\d1034","\d1035","\d1036","\d1037",  # ; Extend # Mn   [6] MYANMAR VOWEL SIGN AI..MYANMAR SIGN DOT BELOW
        "\d1039","\d103a",  # ; Extend # Mn   [2] MYANMAR SIGN VIRAMA..MYANMAR SIGN ASAT
        "\d103d","\d103e",  # ; Extend # Mn   [2] MYANMAR CONSONANT SIGN MEDIAL WA..MYANMAR CONSONANT SIGN MEDIAL HA
        "\d1058","\d1059",  # ; Extend # Mn   [2] MYANMAR VOWEL SIGN VOCALIC L..MYANMAR VOWEL SIGN VOCALIC LL
        "\d105e","\d105f","\d1060",  # ; Extend # Mn   [3] MYANMAR CONSONANT SIGN MON MEDIAL NA..MYANMAR CONSONANT SIGN MON MEDIAL LA
        "\d1071","\d1072","\d1073","\d1074",  # ; Extend # Mn   [4] MYANMAR VOWEL SIGN GEBA KAREN I..MYANMAR VOWEL SIGN KAYAH EE
        "\d1082",  # ; Extend # Mn       MYANMAR CONSONANT SIGN SHAN MEDIAL WA
        "\d1085","\d1086",  # ; Extend # Mn   [2] MYANMAR VOWEL SIGN SHAN E ABOVE..MYANMAR VOWEL SIGN SHAN FINAL Y
        "\d108D",  # ; Extend # Mn       MYANMAR SIGN SHAN COUNCIL EMPHATIC TONE
        "\d109D",  # ; Extend # Mn       MYANMAR VOWEL SIGN AITON AI
        "\d135d","\d135e","\d135f",  # ; Extend # Mn   [3] ETHIOPIC COMBINING GEMINATION AND VOWEL LENGTH MARK..ETHIOPIC COMBINING GEMINATION MARK
        "\d1712","\d1713","\d1714",  # ; Extend # Mn   [3] TAGALOG VOWEL SIGN I..TAGALOG SIGN VIRAMA
        "\d1732","\d1733","\d1734",  # ; Extend # Mn   [3] HANUNOO VOWEL SIGN I..HANUNOO SIGN PAMUDPOD
        "\d1752","\d1753",  # ; Extend # Mn   [2] BUHID VOWEL SIGN I..BUHID VOWEL SIGN U
        "\d1772","\d1773",  # ; Extend # Mn   [2] TAGBANWA VOWEL SIGN I..TAGBANWA VOWEL SIGN U
        "\d17b4","\d17b5",  # ; Extend # Mn   [2] KHMER VOWEL INHERENT AQ..KHMER VOWEL INHERENT AA
        "\d17b7","\d17b8","\d17b9","\d17ba","\d17bb","\d17bc","\d17bd",  # ; Extend # Mn   [7] KHMER VOWEL SIGN I..KHMER VOWEL SIGN UA
        "\d17C6",  # ; Extend # Mn       KHMER SIGN NIKAHIT
        "\d17c9","\d17ca","\d17cb","\d17cc","\d17cd","\d17ce","\d17cf","\d17d0","\d17d1","\d17d2","\d17d3",  # ; Extend # Mn  [11] KHMER SIGN MUUSIKATOAN..KHMER SIGN BATHAMASAT
        "\d17DD",  # ; Extend # Mn       KHMER SIGN ATTHACAN
        "\d180b","\d180c","\d180d",  # ; Extend # Mn   [3] MONGOLIAN FREE VARIATION SELECTOR ONE..MONGOLIAN FREE VARIATION SELECTOR THREE
        "\d1885","\d1886",  # ; Extend # Mn   [2] MONGOLIAN LETTER ALI GALI BALUDA..MONGOLIAN LETTER ALI GALI THREE BALUDA
        "\d18A9",  # ; Extend # Mn       MONGOLIAN LETTER ALI GALI DAGALGA
        "\d1920","\d1921","\d1922",  # ; Extend # Mn   [3] LIMBU VOWEL SIGN A..LIMBU VOWEL SIGN U
        "\d1927","\d1928",  # ; Extend # Mn   [2] LIMBU VOWEL SIGN E..LIMBU VOWEL SIGN O
        "\d1932",  # ; Extend # Mn       LIMBU SMALL LETTER ANUSVARA
        "\d1939","\d193a","\d193b",  # ; Extend # Mn   [3] LIMBU SIGN MUKPHRENG..LIMBU SIGN SA-I
        "\d1a17","\d1a18",  # ; Extend # Mn   [2] BUGINESE VOWEL SIGN I..BUGINESE VOWEL SIGN U
        "\d1A1B",  # ; Extend # Mn       BUGINESE VOWEL SIGN AE
        "\d1A56",  # ; Extend # Mn       TAI THAM CONSONANT SIGN MEDIAL LA
        "\d1a58","\d1a59","\d1a5a","\d1a5b","\d1a5c","\d1a5d","\d1a5e",  # ; Extend # Mn   [7] TAI THAM SIGN MAI KANG LAI..TAI THAM CONSONANT SIGN SA
        "\d1A60",  # ; Extend # Mn       TAI THAM SIGN SAKOT
        "\d1A62",  # ; Extend # Mn       TAI THAM VOWEL SIGN MAI SAT
        "\d1a65","\d1a66","\d1a67","\d1a68","\d1a69","\d1a6a","\d1a6b","\d1a6c",  # ; Extend # Mn   [8] TAI THAM VOWEL SIGN I..TAI THAM VOWEL SIGN OA BELOW
        "\d1a73","\d1a74","\d1a75","\d1a76","\d1a77","\d1a78","\d1a79","\d1a7a","\d1a7b","\d1a7c",  # ; Extend # Mn  [10] TAI THAM VOWEL SIGN OA ABOVE..TAI THAM SIGN KHUEN-LUE KARAN
        "\d1A7F",  # ; Extend # Mn       TAI THAM COMBINING CRYPTOGRAMMIC DOT
        "\d1ab0","\d1ab1","\d1ab2","\d1ab3","\d1ab4","\d1ab5","\d1ab6","\d1ab7","\d1ab8","\d1ab9","\d1aba","\d1abb","\d1abc","\d1abd",  # ; Extend # Mn  [14] COMBINING DOUBLED CIRCUMFLEX ACCENT..COMBINING PARENTHESES BELOW
        "\d1ABE",  # ; Extend # Me       COMBINING PARENTHESES OVERLAY
        "\d1b00","\d1b01","\d1b02","\d1b03",  # ; Extend # Mn   [4] BALINESE SIGN ULU RICEM..BALINESE SIGN SURANG
        "\d1B34",  # ; Extend # Mn       BALINESE SIGN REREKAN
        "\d1b36","\d1b37","\d1b38","\d1b39","\d1b3a",  # ; Extend # Mn   [5] BALINESE VOWEL SIGN ULU..BALINESE VOWEL SIGN RA REPA
        "\d1B3C",  # ; Extend # Mn       BALINESE VOWEL SIGN LA LENGA
        "\d1B42",  # ; Extend # Mn       BALINESE VOWEL SIGN PEPET
        "\d1b6b","\d1b6c","\d1b6d","\d1b6e","\d1b6f","\d1b70","\d1b71","\d1b72","\d1b73",  # ; Extend # Mn   [9] BALINESE MUSICAL SYMBOL COMBINING TEGEH..BALINESE MUSICAL SYMBOL COMBINING GONG
        "\d1b80","\d1b81",  # ; Extend # Mn   [2] SUNDANESE SIGN PANYECEK..SUNDANESE SIGN PANGLAYAR
        "\d1ba2","\d1ba3","\d1ba4","\d1ba5",  # ; Extend # Mn   [4] SUNDANESE CONSONANT SIGN PANYAKRA..SUNDANESE VOWEL SIGN PANYUKU
        "\d1ba8","\d1ba9",  # ; Extend # Mn   [2] SUNDANESE VOWEL SIGN PAMEPET..SUNDANESE VOWEL SIGN PANEULEUNG
        "\d1bab","\d1bac","\d1bad",  # ; Extend # Mn   [3] SUNDANESE SIGN VIRAMA..SUNDANESE CONSONANT SIGN PASANGAN WA
        "\d1BE6",  # ; Extend # Mn       BATAK SIGN TOMPI
        "\d1be8","\d1be9",  # ; Extend # Mn   [2] BATAK VOWEL SIGN PAKPAK E..BATAK VOWEL SIGN EE
        "\d1BED",  # ; Extend # Mn       BATAK VOWEL SIGN KARO O
        "\d1bef","\d1bf0","\d1bf1",  # ; Extend # Mn   [3] BATAK VOWEL SIGN U FOR SIMALUNGUN SA..BATAK CONSONANT SIGN H
        "\d1c2c","\d1c2d","\d1c2e","\d1c2f","\d1c30","\d1c31","\d1c32","\d1c33",  # ; Extend # Mn   [8] LEPCHA VOWEL SIGN E..LEPCHA CONSONANT SIGN T
        "\d1c36","\d1c37",  # ; Extend # Mn   [2] LEPCHA SIGN RAN..LEPCHA SIGN NUKTA
        "\d1cd0","\d1cd1","\d1cd2",  # ; Extend # Mn   [3] VEDIC TONE KARSHANA..VEDIC TONE PRENKHA
        "\d1cd4","\d1cd5","\d1cd6","\d1cd7","\d1cd8","\d1cd9","\d1cda","\d1cdb","\d1cdc","\d1cdd","\d1cde","\d1cdf","\d1ce0",  # ; Extend # Mn  [13] VEDIC SIGN YAJURVEDIC MIDLINE SVARITA..VEDIC TONE RIGVEDIC KASHMIRI INDEPENDENT SVARITA
        "\d1ce2","\d1ce3","\d1ce4","\d1ce5","\d1ce6","\d1ce7","\d1ce8",  # ; Extend # Mn   [7] VEDIC SIGN VISARGA SVARITA..VEDIC SIGN VISARGA ANUDATTA WITH TAIL
        "\d1CED",  # ; Extend # Mn       VEDIC SIGN TIRYAK
        "\d1CF4",  # ; Extend # Mn       VEDIC TONE CANDRA ABOVE
        "\d1cf8","\d1cf9",  # ; Extend # Mn   [2] VEDIC TONE RING ABOVE..VEDIC TONE DOUBLE RING ABOVE
        "\d1dc0","\d1dc1","\d1dc2","\d1dc3","\d1dc4","\d1dc5","\d1dc6","\d1dc7","\d1dc8","\d1dc9","\d1dca","\d1dcb","\d1dcc","\d1dcd","\d1dce","\d1dcf","\d1dd0","\d1dd1","\d1dd2","\d1dd3","\d1dd4","\d1dd5","\d1dd6","\d1dd7","\d1dd8","\d1dd9","\d1dda","\d1ddb","\d1ddc","\d1ddd","\d1dde","\d1ddf","\d1de0","\d1de1","\d1de2","\d1de3","\d1de4","\d1de5","\d1de6","\d1de7","\d1de8","\d1de9","\d1dea","\d1deb","\d1dec","\d1ded","\d1dee","\d1def","\d1df0","\d1df1","\d1df2","\d1df3","\d1df4","\d1df5","\d1df6","\d1df7","\d1df8","\d1df9",  # ; Extend # Mn  [58] COMBINING DOTTED GRAVE ACCENT..COMBINING WIDE INVERTED BRIDGE BELOW
        "\d1dfb","\d1dfc","\d1dfd","\d1dfe","\d1dff",  # ; Extend # Mn   [5] COMBINING DELETION MARK..COMBINING RIGHT ARROWHEAD AND DOWN ARROWHEAD BELOW
        "\d200C",  # ; Extend # Cf       ZERO WIDTH NON-JOINER
        "\d20d0","\d20d1","\d20d2","\d20d3","\d20d4","\d20d5","\d20d6","\d20d7","\d20d8","\d20d9","\d20da","\d20db","\d20dc",  # ; Extend # Mn  [13] COMBINING LEFT HARPOON ABOVE..COMBINING FOUR DOTS ABOVE
        "\d20dd","\d20de","\d20df","\d20e0",  # ; Extend # Me   [4] COMBINING ENCLOSING CIRCLE..COMBINING ENCLOSING CIRCLE BACKSLASH
        "\d20E1",  # ; Extend # Mn       COMBINING LEFT RIGHT ARROW ABOVE
        "\d20e2","\d20e3","\d20e4",  # ; Extend # Me   [3] COMBINING ENCLOSING SCREEN..COMBINING ENCLOSING UPWARD POINTING TRIANGLE
        "\d20e5","\d20e6","\d20e7","\d20e8","\d20e9","\d20ea","\d20eb","\d20ec","\d20ed","\d20ee","\d20ef","\d20f0",  # ; Extend # Mn  [12] COMBINING REVERSE SOLIDUS OVERLAY..COMBINING ASTERISK ABOVE
        "\d2cef","\d2cf0","\d2cf1",  # ; Extend # Mn   [3] COPTIC COMBINING NI ABOVE..COPTIC COMBINING SPIRITUS LENIS
        "\d2D7F",  # ; Extend # Mn       TIFINAGH CONSONANT JOINER
        "\d2de0","\d2de1","\d2de2","\d2de3","\d2de4","\d2de5","\d2de6","\d2de7","\d2de8","\d2de9","\d2dea","\d2deb","\d2dec","\d2ded","\d2dee","\d2def","\d2df0","\d2df1","\d2df2","\d2df3","\d2df4","\d2df5","\d2df6","\d2df7","\d2df8","\d2df9","\d2dfa","\d2dfb","\d2dfc","\d2dfd","\d2dfe","\d2dff",  # ; Extend # Mn  [32] COMBINING CYRILLIC LETTER BE..COMBINING CYRILLIC LETTER IOTIFIED BIG YUS
        "\d302a","\d302b","\d302c","\d302d",  # ; Extend # Mn   [4] IDEOGRAPHIC LEVEL TONE MARK..IDEOGRAPHIC ENTERING TONE MARK
        "\d302e","\d302f",  # ; Extend # Mc   [2] HANGUL SINGLE DOT TONE MARK..HANGUL DOUBLE DOT TONE MARK
        "\d3099","\d309a",  # ; Extend # Mn   [2] COMBINING KATAKANA-HIRAGANA VOICED SOUND MARK..COMBINING KATAKANA-HIRAGANA SEMI-VOICED SOUND MARK
        "\dA66F",  # ; Extend # Mn       COMBINING CYRILLIC VZMET
        "\da670","\da671","\da672",  # ; Extend # Me   [3] COMBINING CYRILLIC TEN MILLIONS SIGN..COMBINING CYRILLIC THOUSAND MILLIONS SIGN
        "\da674","\da675","\da676","\da677","\da678","\da679","\da67a","\da67b","\da67c","\da67d",  # ; Extend # Mn  [10] COMBINING CYRILLIC LETTER UKRAINIAN IE..COMBINING CYRILLIC PAYEROK
        "\da69e","\da69f",  # ; Extend # Mn   [2] COMBINING CYRILLIC LETTER EF..COMBINING CYRILLIC LETTER IOTIFIED E
        "\da6f0","\da6f1",  # ; Extend # Mn   [2] BAMUM COMBINING MARK KOQNDON..BAMUM COMBINING MARK TUKWENTIS
        "\dA802",  # ; Extend # Mn       SYLOTI NAGRI SIGN DVISVARA
        "\dA806",  # ; Extend # Mn       SYLOTI NAGRI SIGN HASANTA
        "\dA80B",  # ; Extend # Mn       SYLOTI NAGRI SIGN ANUSVARA
        "\da825","\da826",  # ; Extend # Mn   [2] SYLOTI NAGRI VOWEL SIGN U..SYLOTI NAGRI VOWEL SIGN E
        "\da8c4","\da8c5",  # ; Extend # Mn   [2] SAURASHTRA SIGN VIRAMA..SAURASHTRA SIGN CANDRABINDU
        "\da8e0","\da8e1","\da8e2","\da8e3","\da8e4","\da8e5","\da8e6","\da8e7","\da8e8","\da8e9","\da8ea","\da8eb","\da8ec","\da8ed","\da8ee","\da8ef","\da8f0","\da8f1",  # ; Extend # Mn  [18] COMBINING DEVANAGARI DIGIT ZERO..COMBINING DEVANAGARI SIGN AVAGRAHA
        "\da926","\da927","\da928","\da929","\da92a","\da92b","\da92c","\da92d",  # ; Extend # Mn   [8] KAYAH LI VOWEL UE..KAYAH LI TONE CALYA PLOPHU
        "\da947","\da948","\da949","\da94a","\da94b","\da94c","\da94d","\da94e","\da94f","\da950","\da951",  # ; Extend # Mn  [11] REJANG VOWEL SIGN I..REJANG CONSONANT SIGN R
        "\da980","\da981","\da982",  # ; Extend # Mn   [3] JAVANESE SIGN PANYANGGA..JAVANESE SIGN LAYAR
        "\dA9B3",  # ; Extend # Mn       JAVANESE SIGN CECAK TELU
        "\da9b6","\da9b7","\da9b8","\da9b9",  # ; Extend # Mn   [4] JAVANESE VOWEL SIGN WULU..JAVANESE VOWEL SIGN SUKU MENDUT
        "\dA9BC",  # ; Extend # Mn       JAVANESE VOWEL SIGN PEPET
        "\dA9E5",  # ; Extend # Mn       MYANMAR SIGN SHAN SAW
        "\daa29","\daa2a","\daa2b","\daa2c","\daa2d","\daa2e",  # ; Extend # Mn   [6] CHAM VOWEL SIGN AA..CHAM VOWEL SIGN OE
        "\daa31","\daa32",  # ; Extend # Mn   [2] CHAM VOWEL SIGN AU..CHAM VOWEL SIGN UE
        "\daa35","\daa36",  # ; Extend # Mn   [2] CHAM CONSONANT SIGN LA..CHAM CONSONANT SIGN WA
        "\dAA43",  # ; Extend # Mn       CHAM CONSONANT SIGN FINAL NG
        "\dAA4C",  # ; Extend # Mn       CHAM CONSONANT SIGN FINAL M
        "\dAA7C",  # ; Extend # Mn       MYANMAR SIGN TAI LAING TONE-2
        "\dAAB0",  # ; Extend # Mn       TAI VIET MAI KANG
        "\daab2","\daab3","\daab4",  # ; Extend # Mn   [3] TAI VIET VOWEL I..TAI VIET VOWEL U
        "\daab7","\daab8",  # ; Extend # Mn   [2] TAI VIET MAI KHIT..TAI VIET VOWEL IA
        "\daabe","\daabf",  # ; Extend # Mn   [2] TAI VIET VOWEL AM..TAI VIET TONE MAI EK
        "\dAAC1",  # ; Extend # Mn       TAI VIET TONE MAI THO
        "\daaec","\daaed",  # ; Extend # Mn   [2] MEETEI MAYEK VOWEL SIGN UU..MEETEI MAYEK VOWEL SIGN AAI
        "\dAAF6",  # ; Extend # Mn       MEETEI MAYEK VIRAMA
        "\dABE5",  # ; Extend # Mn       MEETEI MAYEK VOWEL SIGN ANAP
        "\dABE8",  # ; Extend # Mn       MEETEI MAYEK VOWEL SIGN UNAP
        "\dABED",  # ; Extend # Mn       MEETEI MAYEK APUN IYEK
        "\dFB1E",  # ; Extend # Mn       HEBREW POINT JUDEO-SPANISH VARIKA
        "\dfe00","\dfe01","\dfe02","\dfe03","\dfe04","\dfe05","\dfe06","\dfe07","\dfe08","\dfe09","\dfe0a","\dfe0b","\dfe0c","\dfe0d","\dfe0e","\dfe0f",  # ; Extend # Mn  [16] VARIATION SELECTOR-1..VARIATION SELECTOR-16
        "\dfe20","\dfe21","\dfe22","\dfe23","\dfe24","\dfe25","\dfe26","\dfe27","\dfe28","\dfe29","\dfe2a","\dfe2b","\dfe2c","\dfe2d","\dfe2e","\dfe2f",  # ; Extend # Mn  [16] COMBINING LIGATURE LEFT HALF..COMBINING CYRILLIC TITLO RIGHT HALF
        "\dff9e","\dff9f",  # ; Extend # Lm   [2] HALFWIDTH KATAKANA VOICED SOUND MARK..HALFWIDTH KATAKANA SEMI-VOICED SOUND MARK
        "\d101FD",  # ; Extend # Mn       PHAISTOS DISC SIGN COMBINING OBLIQUE STROKE
        "\d102E0",  # ; Extend # Mn       COPTIC EPACT THOUSANDS MARK
        "\d10376","\d10377","\d10378","\d10379","\d1037a",  # ; Extend # Mn   [5] COMBINING OLD PERMIC LETTER AN..COMBINING OLD PERMIC LETTER SII
        "\d10a01","\d10a02","\d10a03",  # ; Extend # Mn   [3] KHAROSHTHI VOWEL SIGN I..KHAROSHTHI VOWEL SIGN VOCALIC R
        "\d10a05","\d10a06",  # ; Extend # Mn   [2] KHAROSHTHI VOWEL SIGN E..KHAROSHTHI VOWEL SIGN O
        "\d10a0c","\d10a0d","\d10a0e","\d10a0f",  # ; Extend # Mn   [4] KHAROSHTHI VOWEL LENGTH MARK..KHAROSHTHI SIGN VISARGA
        "\d10a38","\d10a39","\d10a3a",  # ; Extend # Mn   [3] KHAROSHTHI SIGN BAR ABOVE..KHAROSHTHI SIGN DOT BELOW
        "\d10A3F",  # ; Extend # Mn       KHAROSHTHI VIRAMA
        "\d10ae5","\d10ae6",  # ; Extend # Mn   [2] MANICHAEAN ABBREVIATION MARK ABOVE..MANICHAEAN ABBREVIATION MARK BELOW
        "\d11001",  # ; Extend # Mn       BRAHMI SIGN ANUSVARA
        "\d11038","\d11039","\d1103a","\d1103b","\d1103c","\d1103d","\d1103e","\d1103f","\d11040","\d11041","\d11042","\d11043","\d11044","\d11045","\d11046",  # ; Extend # Mn  [15] BRAHMI VOWEL SIGN AA..BRAHMI VIRAMA
        "\d1107f","\d11080","\d11081",  # ; Extend # Mn   [3] BRAHMI NUMBER JOINER..KAITHI SIGN ANUSVARA
        "\d110b3","\d110b4","\d110b5","\d110b6",  # ; Extend # Mn   [4] KAITHI VOWEL SIGN U..KAITHI VOWEL SIGN AI
        "\d110b9","\d110ba",  # ; Extend # Mn   [2] KAITHI SIGN VIRAMA..KAITHI SIGN NUKTA
        "\d11100","\d11101","\d11102",  # ; Extend # Mn   [3] CHAKMA SIGN CANDRABINDU..CHAKMA SIGN VISARGA
        "\d11127","\d11128","\d11129","\d1112a","\d1112b",  # ; Extend # Mn   [5] CHAKMA VOWEL SIGN A..CHAKMA VOWEL SIGN UU
        "\d1112d","\d1112e","\d1112f","\d11130","\d11131","\d11132","\d11133","\d11134",  # ; Extend # Mn   [8] CHAKMA VOWEL SIGN AI..CHAKMA MAAYYAA
        "\d11173",  # ; Extend # Mn       MAHAJANI SIGN NUKTA
        "\d11180","\d11181",  # ; Extend # Mn   [2] SHARADA SIGN CANDRABINDU..SHARADA SIGN ANUSVARA
        "\d111b6","\d111b7","\d111b8","\d111b9","\d111ba","\d111bb","\d111bc","\d111bd","\d111be",  # ; Extend # Mn   [9] SHARADA VOWEL SIGN U..SHARADA VOWEL SIGN O
        "\d111ca","\d111cb","\d111cc",  # ; Extend # Mn   [3] SHARADA SIGN NUKTA..SHARADA EXTRA SHORT VOWEL MARK
        "\d1122f","\d11230","\d11231",  # ; Extend # Mn   [3] KHOJKI VOWEL SIGN U..KHOJKI VOWEL SIGN AI
        "\d11234",  # ; Extend # Mn       KHOJKI SIGN ANUSVARA
        "\d11236","\d11237",  # ; Extend # Mn   [2] KHOJKI SIGN NUKTA..KHOJKI SIGN SHADDA
        "\d1123E",  # ; Extend # Mn       KHOJKI SIGN SUKUN
        "\d112DF",  # ; Extend # Mn       KHUDAWADI SIGN ANUSVARA
        "\d112e3","\d112e4","\d112e5","\d112e6","\d112e7","\d112e8","\d112e9","\d112ea",  # ; Extend # Mn   [8] KHUDAWADI VOWEL SIGN U..KHUDAWADI SIGN VIRAMA
        "\d11300","\d11301",  # ; Extend # Mn   [2] GRANTHA SIGN COMBINING ANUSVARA ABOVE..GRANTHA SIGN CANDRABINDU
        "\d1133C",  # ; Extend # Mn       GRANTHA SIGN NUKTA
        "\d1133E",  # ; Extend # Mc       GRANTHA VOWEL SIGN AA
        "\d11340",  # ; Extend # Mn       GRANTHA VOWEL SIGN II
        "\d11357",  # ; Extend # Mc       GRANTHA AU LENGTH MARK
        "\d11366","\d11367","\d11368","\d11369","\d1136a","\d1136b","\d1136c",  # ; Extend # Mn   [7] COMBINING GRANTHA DIGIT ZERO..COMBINING GRANTHA DIGIT SIX
        "\d11370","\d11371","\d11372","\d11373","\d11374",  # ; Extend # Mn   [5] COMBINING GRANTHA LETTER A..COMBINING GRANTHA LETTER PA
        "\d11438","\d11439","\d1143a","\d1143b","\d1143c","\d1143d","\d1143e","\d1143f",  # ; Extend # Mn   [8] NEWA VOWEL SIGN U..NEWA VOWEL SIGN AI
        "\d11442","\d11443","\d11444",  # ; Extend # Mn   [3] NEWA SIGN VIRAMA..NEWA SIGN ANUSVARA
        "\d11446",  # ; Extend # Mn       NEWA SIGN NUKTA
        "\d114B0",  # ; Extend # Mc       TIRHUTA VOWEL SIGN AA
        "\d114b3","\d114b4","\d114b5","\d114b6","\d114b7","\d114b8",  # ; Extend # Mn   [6] TIRHUTA VOWEL SIGN U..TIRHUTA VOWEL SIGN VOCALIC LL
        "\d114BA",  # ; Extend # Mn       TIRHUTA VOWEL SIGN SHORT E
        "\d114BD",  # ; Extend # Mc       TIRHUTA VOWEL SIGN SHORT O
        "\d114bf","\d114c0",  # ; Extend # Mn   [2] TIRHUTA SIGN CANDRABINDU..TIRHUTA SIGN ANUSVARA
        "\d114c2","\d114c3",  # ; Extend # Mn   [2] TIRHUTA SIGN VIRAMA..TIRHUTA SIGN NUKTA
        "\d115AF",  # ; Extend # Mc       SIDDHAM VOWEL SIGN AA
        "\d115b2","\d115b3","\d115b4","\d115b5",  # ; Extend # Mn   [4] SIDDHAM VOWEL SIGN U..SIDDHAM VOWEL SIGN VOCALIC RR
        "\d115bc","\d115bd",  # ; Extend # Mn   [2] SIDDHAM SIGN CANDRABINDU..SIDDHAM SIGN ANUSVARA
        "\d115bf","\d115c0",  # ; Extend # Mn   [2] SIDDHAM SIGN VIRAMA..SIDDHAM SIGN NUKTA
        "\d115dc","\d115dd",  # ; Extend # Mn   [2] SIDDHAM VOWEL SIGN ALTERNATE U..SIDDHAM VOWEL SIGN ALTERNATE UU
        "\d11633","\d11634","\d11635","\d11636","\d11637","\d11638","\d11639","\d1163a",  # ; Extend # Mn   [8] MODI VOWEL SIGN U..MODI VOWEL SIGN AI
        "\d1163D",  # ; Extend # Mn       MODI SIGN ANUSVARA
        "\d1163f","\d11640",  # ; Extend # Mn   [2] MODI SIGN VIRAMA..MODI SIGN ARDHACANDRA
        "\d116AB",  # ; Extend # Mn       TAKRI SIGN ANUSVARA
        "\d116AD",  # ; Extend # Mn       TAKRI VOWEL SIGN AA
        "\d116b0","\d116b1","\d116b2","\d116b3","\d116b4","\d116b5",  # ; Extend # Mn   [6] TAKRI VOWEL SIGN U..TAKRI VOWEL SIGN AU
        "\d116B7",  # ; Extend # Mn       TAKRI SIGN NUKTA
        "\d1171d","\d1171e","\d1171f",  # ; Extend # Mn   [3] AHOM CONSONANT SIGN MEDIAL LA..AHOM CONSONANT SIGN MEDIAL LIGATING RA
        "\d11722","\d11723","\d11724","\d11725",  # ; Extend # Mn   [4] AHOM VOWEL SIGN I..AHOM VOWEL SIGN UU
        "\d11727","\d11728","\d11729","\d1172a","\d1172b",  # ; Extend # Mn   [5] AHOM VOWEL SIGN AW..AHOM SIGN KILLER
        "\d11a01","\d11a02","\d11a03","\d11a04","\d11a05","\d11a06",  # ; Extend # Mn   [6] ZANABAZAR SQUARE VOWEL SIGN I..ZANABAZAR SQUARE VOWEL SIGN O
        "\d11a09","\d11a0a",  # ; Extend # Mn   [2] ZANABAZAR SQUARE VOWEL SIGN REVERSED I..ZANABAZAR SQUARE VOWEL LENGTH MARK
        "\d11a33","\d11a34","\d11a35","\d11a36","\d11a37","\d11a38",  # ; Extend # Mn   [6] ZANABAZAR SQUARE FINAL CONSONANT MARK..ZANABAZAR SQUARE SIGN ANUSVARA
        "\d11a3b","\d11a3c","\d11a3d","\d11a3e",  # ; Extend # Mn   [4] ZANABAZAR SQUARE CLUSTER-FINAL LETTER YA..ZANABAZAR SQUARE CLUSTER-FINAL LETTER VA
        "\d11A47",  # ; Extend # Mn       ZANABAZAR SQUARE SUBJOINER
        "\d11a51","\d11a52","\d11a53","\d11a54","\d11a55","\d11a56",  # ; Extend # Mn   [6] SOYOMBO VOWEL SIGN I..SOYOMBO VOWEL SIGN OE
        "\d11a59","\d11a5a","\d11a5b",  # ; Extend # Mn   [3] SOYOMBO VOWEL SIGN VOCALIC R..SOYOMBO VOWEL LENGTH MARK
        "\d11a8a","\d11a8b","\d11a8c","\d11a8d","\d11a8e","\d11a8f","\d11a90","\d11a91","\d11a92","\d11a93","\d11a94","\d11a95","\d11a96",  # ; Extend # Mn  [13] SOYOMBO FINAL CONSONANT SIGN G..SOYOMBO SIGN ANUSVARA
        "\d11a98","\d11a99",  # ; Extend # Mn   [2] SOYOMBO GEMINATION MARK..SOYOMBO SUBJOINER
        "\d11c30","\d11c31","\d11c32","\d11c33","\d11c34","\d11c35","\d11c36",  # ; Extend # Mn   [7] BHAIKSUKI VOWEL SIGN I..BHAIKSUKI VOWEL SIGN VOCALIC L
        "\d11c38","\d11c39","\d11c3a","\d11c3b","\d11c3c","\d11c3d",  # ; Extend # Mn   [6] BHAIKSUKI VOWEL SIGN E..BHAIKSUKI SIGN ANUSVARA
        "\d11C3F",  # ; Extend # Mn       BHAIKSUKI SIGN VIRAMA
        "\d11c92","\d11c93","\d11c94","\d11c95","\d11c96","\d11c97","\d11c98","\d11c99","\d11c9a","\d11c9b","\d11c9c","\d11c9d","\d11c9e","\d11c9f","\d11ca0","\d11ca1","\d11ca2","\d11ca3","\d11ca4","\d11ca5","\d11ca6","\d11ca7",  # ; Extend # Mn  [22] MARCHEN SUBJOINED LETTER KA..MARCHEN SUBJOINED LETTER ZA
        "\d11caa","\d11cab","\d11cac","\d11cad","\d11cae","\d11caf","\d11cb0",  # ; Extend # Mn   [7] MARCHEN SUBJOINED LETTER RA..MARCHEN VOWEL SIGN AA
        "\d11cb2","\d11cb3",  # ; Extend # Mn   [2] MARCHEN VOWEL SIGN U..MARCHEN VOWEL SIGN E
        "\d11cb5","\d11cb6",  # ; Extend # Mn   [2] MARCHEN SIGN ANUSVARA..MARCHEN SIGN CANDRABINDU
        "\d11d31","\d11d32","\d11d33","\d11d34","\d11d35","\d11d36",  # ; Extend # Mn   [6] MASARAM GONDI VOWEL SIGN AA..MASARAM GONDI VOWEL SIGN VOCALIC R
        "\d11D3A",  # ; Extend # Mn       MASARAM GONDI VOWEL SIGN E
        "\d11d3c","\d11d3d",  # ; Extend # Mn   [2] MASARAM GONDI VOWEL SIGN AI..MASARAM GONDI VOWEL SIGN O
        "\d11d3f","\d11d40","\d11d41","\d11d42","\d11d43","\d11d44","\d11d45",  # ; Extend # Mn   [7] MASARAM GONDI VOWEL SIGN AU..MASARAM GONDI VIRAMA
        "\d11D47",  # ; Extend # Mn       MASARAM GONDI RA-KARA
        "\d16af0","\d16af1","\d16af2","\d16af3","\d16af4",  # ; Extend # Mn   [5] BASSA VAH COMBINING HIGH TONE..BASSA VAH COMBINING HIGH-LOW TONE
        "\d16b30","\d16b31","\d16b32","\d16b33","\d16b34","\d16b35","\d16b36",  # ; Extend # Mn   [7] PAHAWH HMONG MARK CIM TUB..PAHAWH HMONG MARK CIM TAUM
        "\d16f8f","\d16f90","\d16f91","\d16f92",  # ; Extend # Mn   [4] MIAO TONE RIGHT..MIAO TONE BELOW
        "\d1bc9d","\d1bc9e",  # ; Extend # Mn   [2] DUPLOYAN THICK LETTER SELECTOR..DUPLOYAN DOUBLE MARK
        "\d1D165",  # ; Extend # Mc       MUSICAL SYMBOL COMBINING STEM
        "\d1d167","\d1d168","\d1d169",  # ; Extend # Mn   [3] MUSICAL SYMBOL COMBINING TREMOLO-1..MUSICAL SYMBOL COMBINING TREMOLO-3
        "\d1d16e","\d1d16f","\d1d170","\d1d171","\d1d172",  # ; Extend # Mc   [5] MUSICAL SYMBOL COMBINING FLAG-1..MUSICAL SYMBOL COMBINING FLAG-5
        "\d1d17b","\d1d17c","\d1d17d","\d1d17e","\d1d17f","\d1d180","\d1d181","\d1d182",  # ; Extend # Mn   [8] MUSICAL SYMBOL COMBINING ACCENT..MUSICAL SYMBOL COMBINING LOURE
        "\d1d185","\d1d186","\d1d187","\d1d188","\d1d189","\d1d18a","\d1d18b",  # ; Extend # Mn   [7] MUSICAL SYMBOL COMBINING DOIT..MUSICAL SYMBOL COMBINING TRIPLE TONGUE
        "\d1d1aa","\d1d1ab","\d1d1ac","\d1d1ad",  # ; Extend # Mn   [4] MUSICAL SYMBOL COMBINING DOWN BOW..MUSICAL SYMBOL COMBINING SNAP PIZZICATO
        "\d1d242","\d1d243","\d1d244",  # ; Extend # Mn   [3] COMBINING GREEK MUSICAL TRISEME..COMBINING GREEK MUSICAL PENTASEME
        "\d1da00","\d1da01","\d1da02","\d1da03","\d1da04","\d1da05","\d1da06","\d1da07","\d1da08","\d1da09","\d1da0a","\d1da0b","\d1da0c","\d1da0d","\d1da0e","\d1da0f","\d1da10","\d1da11","\d1da12","\d1da13","\d1da14","\d1da15","\d1da16","\d1da17","\d1da18","\d1da19","\d1da1a","\d1da1b","\d1da1c","\d1da1d","\d1da1e","\d1da1f","\d1da20","\d1da21","\d1da22","\d1da23","\d1da24","\d1da25","\d1da26","\d1da27","\d1da28","\d1da29","\d1da2a","\d1da2b","\d1da2c","\d1da2d","\d1da2e","\d1da2f","\d1da30","\d1da31","\d1da32","\d1da33","\d1da34","\d1da35","\d1da36",  # ; Extend # Mn  [55] SIGNWRITING HEAD RIM..SIGNWRITING AIR SUCKING IN
        "\d1da3b","\d1da3c","\d1da3d","\d1da3e","\d1da3f","\d1da40","\d1da41","\d1da42","\d1da43","\d1da44","\d1da45","\d1da46","\d1da47","\d1da48","\d1da49","\d1da4a","\d1da4b","\d1da4c","\d1da4d","\d1da4e","\d1da4f","\d1da50","\d1da51","\d1da52","\d1da53","\d1da54","\d1da55","\d1da56","\d1da57","\d1da58","\d1da59","\d1da5a","\d1da5b","\d1da5c","\d1da5d","\d1da5e","\d1da5f","\d1da60","\d1da61","\d1da62","\d1da63","\d1da64","\d1da65","\d1da66","\d1da67","\d1da68","\d1da69","\d1da6a","\d1da6b","\d1da6c",  # ; Extend # Mn  [50] SIGNWRITING MOUTH CLOSED NEUTRAL..SIGNWRITING EXCITEMENT
        "\d1DA75",  # ; Extend # Mn       SIGNWRITING UPPER BODY TILTING FROM HIP JOINTS
        "\d1DA84",  # ; Extend # Mn       SIGNWRITING LOCATION HEAD NECK
        "\d1da9b","\d1da9c","\d1da9d","\d1da9e","\d1da9f",  # ; Extend # Mn   [5] SIGNWRITING FILL MODIFIER-2..SIGNWRITING FILL MODIFIER-6
        "\d1daa1","\d1daa2","\d1daa3","\d1daa4","\d1daa5","\d1daa6","\d1daa7","\d1daa8","\d1daa9","\d1daaa","\d1daab","\d1daac","\d1daad","\d1daae","\d1daaf",  # ; Extend # Mn  [15] SIGNWRITING ROTATION MODIFIER-2..SIGNWRITING ROTATION MODIFIER-16
        "\d1e000","\d1e001","\d1e002","\d1e003","\d1e004","\d1e005","\d1e006",  # ; Extend # Mn   [7] COMBINING GLAGOLITIC LETTER AZU..COMBINING GLAGOLITIC LETTER ZHIVETE
        "\d1e008","\d1e009","\d1e00a","\d1e00b","\d1e00c","\d1e00d","\d1e00e","\d1e00f","\d1e010","\d1e011","\d1e012","\d1e013","\d1e014","\d1e015","\d1e016","\d1e017","\d1e018",  # ; Extend # Mn  [17] COMBINING GLAGOLITIC LETTER ZEMLJA..COMBINING GLAGOLITIC LETTER HERU
        "\d1e01b","\d1e01c","\d1e01d","\d1e01e","\d1e01f","\d1e020","\d1e021",  # ; Extend # Mn   [7] COMBINING GLAGOLITIC LETTER SHTA..COMBINING GLAGOLITIC LETTER YATI
        "\d1e023","\d1e024",  # ; Extend # Mn   [2] COMBINING GLAGOLITIC LETTER YU..COMBINING GLAGOLITIC LETTER SMALL YUS
        "\d1e026","\d1e027","\d1e028","\d1e029","\d1e02a",  # ; Extend # Mn   [5] COMBINING GLAGOLITIC LETTER YO..COMBINING GLAGOLITIC LETTER FITA
        "\d1e8d0","\d1e8d1","\d1e8d2","\d1e8d3","\d1e8d4","\d1e8d5","\d1e8d6",  # ; Extend # Mn   [7] MENDE KIKAKUI COMBINING NUMBER TEENS..MENDE KIKAKUI COMBINING NUMBER MILLIONS
        "\d1e944","\d1e945","\d1e946","\d1e947","\d1e948","\d1e949","\d1e94a",  # ; Extend # Mn   [7] ADLAM ALIF LENGTHENER..ADLAM NUKTA
        "\de0020","\de0021","\de0022","\de0023","\de0024","\de0025","\de0026","\de0027","\de0028","\de0029","\de002a","\de002b","\de002c","\de002d","\de002e","\de002f","\de0030","\de0031","\de0032","\de0033","\de0034","\de0035","\de0036","\de0037","\de0038","\de0039","\de003a","\de003b","\de003c","\de003d","\de003e","\de003f","\de0040","\de0041","\de0042","\de0043","\de0044","\de0045","\de0046","\de0047","\de0048","\de0049","\de004a","\de004b","\de004c","\de004d","\de004e","\de004f","\de0050","\de0051","\de0052","\de0053","\de0054","\de0055","\de0056","\de0057","\de0058","\de0059","\de005a","\de005b","\de005c","\de005d","\de005e","\de005f","\de0060","\de0061","\de0062","\de0063","\de0064","\de0065","\de0066","\de0067","\de0068","\de0069","\de006a","\de006b","\de006c","\de006d","\de006e","\de006f","\de0070","\de0071","\de0072","\de0073","\de0074","\de0075","\de0076","\de0077","\de0078","\de0079","\de007a","\de007b","\de007c","\de007d","\de007e","\de007f",  # ; Extend # Cf  [96] TAG SPACE..CANCEL TAG
        "\de0100","\de0101","\de0102","\de0103","\de0104","\de0105","\de0106","\de0107","\de0108","\de0109","\de010a","\de010b","\de010c","\de010d","\de010e","\de010f","\de0110","\de0111","\de0112","\de0113","\de0114","\de0115","\de0116","\de0117","\de0118","\de0119","\de011a","\de011b","\de011c","\de011d","\de011e","\de011f","\de0120","\de0121","\de0122","\de0123","\de0124","\de0125","\de0126","\de0127","\de0128","\de0129","\de012a","\de012b","\de012c","\de012d","\de012e","\de012f","\de0130","\de0131","\de0132","\de0133","\de0134","\de0135","\de0136","\de0137","\de0138","\de0139","\de013a","\de013b","\de013c","\de013d","\de013e","\de013f","\de0140","\de0141","\de0142","\de0143","\de0144","\de0145","\de0146","\de0147","\de0148","\de0149","\de014a","\de014b","\de014c","\de014d","\de014e","\de014f","\de0150","\de0151","\de0152","\de0153","\de0154","\de0155","\de0156","\de0157","\de0158","\de0159","\de015a","\de015b","\de015c","\de015d","\de015e","\de015f","\de0160","\de0161","\de0162","\de0163","\de0164","\de0165","\de0166","\de0167","\de0168","\de0169","\de016a","\de016b","\de016c","\de016d","\de016e","\de016f","\de0170","\de0171","\de0172","\de0173","\de0174","\de0175","\de0176","\de0177","\de0178","\de0179","\de017a","\de017b","\de017c","\de017d","\de017e","\de017f","\de0180","\de0181","\de0182","\de0183","\de0184","\de0185","\de0186","\de0187","\de0188","\de0189","\de018a","\de018b","\de018c","\de018d","\de018e","\de018f","\de0190","\de0191","\de0192","\de0193","\de0194","\de0195","\de0196","\de0197","\de0198","\de0199","\de019a","\de019b","\de019c","\de019d","\de019e","\de019f","\de01a0","\de01a1","\de01a2","\de01a3","\de01a4","\de01a5","\de01a6","\de01a7","\de01a8","\de01a9","\de01aa","\de01ab","\de01ac","\de01ad","\de01ae","\de01af","\de01b0","\de01b1","\de01b2","\de01b3","\de01b4","\de01b5","\de01b6","\de01b7","\de01b8","\de01b9","\de01ba","\de01bb","\de01bc","\de01bd","\de01be","\de01bf","\de01c0","\de01c1","\de01c2","\de01c3","\de01c4","\de01c5","\de01c6","\de01c7","\de01c8","\de01c9","\de01ca","\de01cb","\de01cc","\de01cd","\de01ce","\de01cf","\de01d0","\de01d1","\de01d2","\de01d3","\de01d4","\de01d5","\de01d6","\de01d7","\de01d8","\de01d9","\de01da","\de01db","\de01dc","\de01dd","\de01de","\de01df","\de01e0","\de01e1","\de01e2","\de01e3","\de01e4","\de01e5","\de01e6","\de01e7","\de01e8","\de01e9","\de01ea","\de01eb","\de01ec","\de01ed","\de01ee","\de01ef",  # ; Extend # Mn [240] VARIATION SELECTOR-17..VARIATION SELECTOR-256
        "\d1f1e6","\d1f1e7","\d1f1e8","\d1f1e9","\d1f1ea","\d1f1eb","\d1f1ec","\d1f1ed","\d1f1ee","\d1f1ef","\d1f1f0","\d1f1f1","\d1f1f2","\d1f1f3","\d1f1f4","\d1f1f5","\d1f1f6","\d1f1f7","\d1f1f8","\d1f1f9","\d1f1fa","\d1f1fb","\d1f1fc","\d1f1fd","\d1f1fe","\d1f1ff",  # ; Regional_Indicator # So  [26] REGIONAL INDICATOR SYMBOL LETTER A..REGIONAL INDICATOR SYMBOL LETTER Z
        "\d0903",  # ; SpacingMark # Mc       DEVANAGARI SIGN VISARGA
        "\d093B",  # ; SpacingMark # Mc       DEVANAGARI VOWEL SIGN OOE
        "\d093e","\d093f","\d0940",  # ; SpacingMark # Mc   [3] DEVANAGARI VOWEL SIGN AA..DEVANAGARI VOWEL SIGN II
        "\d0949","\d094a","\d094b","\d094c",  # ; SpacingMark # Mc   [4] DEVANAGARI VOWEL SIGN CANDRA O..DEVANAGARI VOWEL SIGN AU
        "\d094e","\d094f",  # ; SpacingMark # Mc   [2] DEVANAGARI VOWEL SIGN PRISHTHAMATRA E..DEVANAGARI VOWEL SIGN AW
        "\d0982","\d0983",  # ; SpacingMark # Mc   [2] BENGALI SIGN ANUSVARA..BENGALI SIGN VISARGA
        "\d09bf","\d09c0",  # ; SpacingMark # Mc   [2] BENGALI VOWEL SIGN I..BENGALI VOWEL SIGN II
        "\d09c7","\d09c8",  # ; SpacingMark # Mc   [2] BENGALI VOWEL SIGN E..BENGALI VOWEL SIGN AI
        "\d09cb","\d09cc",  # ; SpacingMark # Mc   [2] BENGALI VOWEL SIGN O..BENGALI VOWEL SIGN AU
        "\d0A03",  # ; SpacingMark # Mc       GURMUKHI SIGN VISARGA
        "\d0a3e","\d0a3f","\d0a40",  # ; SpacingMark # Mc   [3] GURMUKHI VOWEL SIGN AA..GURMUKHI VOWEL SIGN II
        "\d0A83",  # ; SpacingMark # Mc       GUJARATI SIGN VISARGA
        "\d0abe","\d0abf","\d0ac0",  # ; SpacingMark # Mc   [3] GUJARATI VOWEL SIGN AA..GUJARATI VOWEL SIGN II
        "\d0AC9",  # ; SpacingMark # Mc       GUJARATI VOWEL SIGN CANDRA O
        "\d0acb","\d0acc",  # ; SpacingMark # Mc   [2] GUJARATI VOWEL SIGN O..GUJARATI VOWEL SIGN AU
        "\d0b02","\d0b03",  # ; SpacingMark # Mc   [2] ORIYA SIGN ANUSVARA..ORIYA SIGN VISARGA
        "\d0B40",  # ; SpacingMark # Mc       ORIYA VOWEL SIGN II
        "\d0b47","\d0b48",  # ; SpacingMark # Mc   [2] ORIYA VOWEL SIGN E..ORIYA VOWEL SIGN AI
        "\d0b4b","\d0b4c",  # ; SpacingMark # Mc   [2] ORIYA VOWEL SIGN O..ORIYA VOWEL SIGN AU
        "\d0BBF",  # ; SpacingMark # Mc       TAMIL VOWEL SIGN I
        "\d0bc1","\d0bc2",  # ; SpacingMark # Mc   [2] TAMIL VOWEL SIGN U..TAMIL VOWEL SIGN UU
        "\d0bc6","\d0bc7","\d0bc8",  # ; SpacingMark # Mc   [3] TAMIL VOWEL SIGN E..TAMIL VOWEL SIGN AI
        "\d0bca","\d0bcb","\d0bcc",  # ; SpacingMark # Mc   [3] TAMIL VOWEL SIGN O..TAMIL VOWEL SIGN AU
        "\d0c01","\d0c02","\d0c03",  # ; SpacingMark # Mc   [3] TELUGU SIGN CANDRABINDU..TELUGU SIGN VISARGA
        "\d0c41","\d0c42","\d0c43","\d0c44",  # ; SpacingMark # Mc   [4] TELUGU VOWEL SIGN U..TELUGU VOWEL SIGN VOCALIC RR
        "\d0c82","\d0c83",  # ; SpacingMark # Mc   [2] KANNADA SIGN ANUSVARA..KANNADA SIGN VISARGA
        "\d0CBE",  # ; SpacingMark # Mc       KANNADA VOWEL SIGN AA
        "\d0cc0","\d0cc1",  # ; SpacingMark # Mc   [2] KANNADA VOWEL SIGN II..KANNADA VOWEL SIGN U
        "\d0cc3","\d0cc4",  # ; SpacingMark # Mc   [2] KANNADA VOWEL SIGN VOCALIC R..KANNADA VOWEL SIGN VOCALIC RR
        "\d0cc7","\d0cc8",  # ; SpacingMark # Mc   [2] KANNADA VOWEL SIGN EE..KANNADA VOWEL SIGN AI
        "\d0cca","\d0ccb",  # ; SpacingMark # Mc   [2] KANNADA VOWEL SIGN O..KANNADA VOWEL SIGN OO
        "\d0d02","\d0d03",  # ; SpacingMark # Mc   [2] MALAYALAM SIGN ANUSVARA..MALAYALAM SIGN VISARGA
        "\d0d3f","\d0d40",  # ; SpacingMark # Mc   [2] MALAYALAM VOWEL SIGN I..MALAYALAM VOWEL SIGN II
        "\d0d46","\d0d47","\d0d48",  # ; SpacingMark # Mc   [3] MALAYALAM VOWEL SIGN E..MALAYALAM VOWEL SIGN AI
        "\d0d4a","\d0d4b","\d0d4c",  # ; SpacingMark # Mc   [3] MALAYALAM VOWEL SIGN O..MALAYALAM VOWEL SIGN AU
        "\d0d82","\d0d83",  # ; SpacingMark # Mc   [2] SINHALA SIGN ANUSVARAYA..SINHALA SIGN VISARGAYA
        "\d0dd0","\d0dd1",  # ; SpacingMark # Mc   [2] SINHALA VOWEL SIGN KETTI AEDA-PILLA..SINHALA VOWEL SIGN DIGA AEDA-PILLA
        "\d0dd8","\d0dd9","\d0dda","\d0ddb","\d0ddc","\d0ddd","\d0dde",  # ; SpacingMark # Mc   [7] SINHALA VOWEL SIGN GAETTA-PILLA..SINHALA VOWEL SIGN KOMBUVA HAA GAYANUKITTA
        "\d0df2","\d0df3",  # ; SpacingMark # Mc   [2] SINHALA VOWEL SIGN DIGA GAETTA-PILLA..SINHALA VOWEL SIGN DIGA GAYANUKITTA
        "\d0E33",  # ; SpacingMark # Lo       THAI CHARACTER SARA AM
        "\d0EB3",  # ; SpacingMark # Lo       LAO VOWEL SIGN AM
        "\d0f3e","\d0f3f",  # ; SpacingMark # Mc   [2] TIBETAN SIGN YAR TSHES..TIBETAN SIGN MAR TSHES
        "\d0F7F",  # ; SpacingMark # Mc       TIBETAN SIGN RNAM BCAD
        "\d1031",  # ; SpacingMark # Mc       MYANMAR VOWEL SIGN E
        "\d103b","\d103c",  # ; SpacingMark # Mc   [2] MYANMAR CONSONANT SIGN MEDIAL YA..MYANMAR CONSONANT SIGN MEDIAL RA
        "\d1056","\d1057",  # ; SpacingMark # Mc   [2] MYANMAR VOWEL SIGN VOCALIC R..MYANMAR VOWEL SIGN VOCALIC RR
        "\d1084",  # ; SpacingMark # Mc       MYANMAR VOWEL SIGN SHAN E
        "\d17B6",  # ; SpacingMark # Mc       KHMER VOWEL SIGN AA
        "\d17be","\d17bf","\d17c0","\d17c1","\d17c2","\d17c3","\d17c4","\d17c5",  # ; SpacingMark # Mc   [8] KHMER VOWEL SIGN OE..KHMER VOWEL SIGN AU
        "\d17c7","\d17c8",  # ; SpacingMark # Mc   [2] KHMER SIGN REAHMUK..KHMER SIGN YUUKALEAPINTU
        "\d1923","\d1924","\d1925","\d1926",  # ; SpacingMark # Mc   [4] LIMBU VOWEL SIGN EE..LIMBU VOWEL SIGN AU
        "\d1929","\d192a","\d192b",  # ; SpacingMark # Mc   [3] LIMBU SUBJOINED LETTER YA..LIMBU SUBJOINED LETTER WA
        "\d1930","\d1931",  # ; SpacingMark # Mc   [2] LIMBU SMALL LETTER KA..LIMBU SMALL LETTER NGA
        "\d1933","\d1934","\d1935","\d1936","\d1937","\d1938",  # ; SpacingMark # Mc   [6] LIMBU SMALL LETTER TA..LIMBU SMALL LETTER LA
        "\d1a19","\d1a1a",  # ; SpacingMark # Mc   [2] BUGINESE VOWEL SIGN E..BUGINESE VOWEL SIGN O
        "\d1A55",  # ; SpacingMark # Mc       TAI THAM CONSONANT SIGN MEDIAL RA
        "\d1A57",  # ; SpacingMark # Mc       TAI THAM CONSONANT SIGN LA TANG LAI
        "\d1a6d","\d1a6e","\d1a6f","\d1a70","\d1a71","\d1a72",  # ; SpacingMark # Mc   [6] TAI THAM VOWEL SIGN OY..TAI THAM VOWEL SIGN THAM AI
        "\d1B04",  # ; SpacingMark # Mc       BALINESE SIGN BISAH
        "\d1B35",  # ; SpacingMark # Mc       BALINESE VOWEL SIGN TEDUNG
        "\d1B3B",  # ; SpacingMark # Mc       BALINESE VOWEL SIGN RA REPA TEDUNG
        "\d1b3d","\d1b3e","\d1b3f","\d1b40","\d1b41",  # ; SpacingMark # Mc   [5] BALINESE VOWEL SIGN LA LENGA TEDUNG..BALINESE VOWEL SIGN TALING REPA TEDUNG
        "\d1b43","\d1b44",  # ; SpacingMark # Mc   [2] BALINESE VOWEL SIGN PEPET TEDUNG..BALINESE ADEG ADEG
        "\d1B82",  # ; SpacingMark # Mc       SUNDANESE SIGN PANGWISAD
        "\d1BA1",  # ; SpacingMark # Mc       SUNDANESE CONSONANT SIGN PAMINGKAL
        "\d1ba6","\d1ba7",  # ; SpacingMark # Mc   [2] SUNDANESE VOWEL SIGN PANAELAENG..SUNDANESE VOWEL SIGN PANOLONG
        "\d1BAA",  # ; SpacingMark # Mc       SUNDANESE SIGN PAMAAEH
        "\d1BE7",  # ; SpacingMark # Mc       BATAK VOWEL SIGN E
        "\d1bea","\d1beb","\d1bec",  # ; SpacingMark # Mc   [3] BATAK VOWEL SIGN I..BATAK VOWEL SIGN O
        "\d1BEE",  # ; SpacingMark # Mc       BATAK VOWEL SIGN U
        "\d1bf2","\d1bf3",  # ; SpacingMark # Mc   [2] BATAK PANGOLAT..BATAK PANONGONAN
        "\d1c24","\d1c25","\d1c26","\d1c27","\d1c28","\d1c29","\d1c2a","\d1c2b",  # ; SpacingMark # Mc   [8] LEPCHA SUBJOINED LETTER YA..LEPCHA VOWEL SIGN UU
        "\d1c34","\d1c35",  # ; SpacingMark # Mc   [2] LEPCHA CONSONANT SIGN NYIN-DO..LEPCHA CONSONANT SIGN KANG
        "\d1CE1",  # ; SpacingMark # Mc       VEDIC TONE ATHARVAVEDIC INDEPENDENT SVARITA
        "\d1cf2","\d1cf3",  # ; SpacingMark # Mc   [2] VEDIC SIGN ARDHAVISARGA..VEDIC SIGN ROTATED ARDHAVISARGA
        "\d1CF7",  # ; SpacingMark # Mc       VEDIC SIGN ATIKRAMA
        "\da823","\da824",  # ; SpacingMark # Mc   [2] SYLOTI NAGRI VOWEL SIGN A..SYLOTI NAGRI VOWEL SIGN I
        "\dA827",  # ; SpacingMark # Mc       SYLOTI NAGRI VOWEL SIGN OO
        "\da880","\da881",  # ; SpacingMark # Mc   [2] SAURASHTRA SIGN ANUSVARA..SAURASHTRA SIGN VISARGA
        "\da8b4","\da8b5","\da8b6","\da8b7","\da8b8","\da8b9","\da8ba","\da8bb","\da8bc","\da8bd","\da8be","\da8bf","\da8c0","\da8c1","\da8c2","\da8c3",  # ; SpacingMark # Mc  [16] SAURASHTRA CONSONANT SIGN HAARU..SAURASHTRA VOWEL SIGN AU
        "\da952","\da953",  # ; SpacingMark # Mc   [2] REJANG CONSONANT SIGN H..REJANG VIRAMA
        "\dA983",  # ; SpacingMark # Mc       JAVANESE SIGN WIGNYAN
        "\da9b4","\da9b5",  # ; SpacingMark # Mc   [2] JAVANESE VOWEL SIGN TARUNG..JAVANESE VOWEL SIGN TOLONG
        "\da9ba","\da9bb",  # ; SpacingMark # Mc   [2] JAVANESE VOWEL SIGN TALING..JAVANESE VOWEL SIGN DIRGA MURE
        "\da9bd","\da9be","\da9bf","\da9c0",  # ; SpacingMark # Mc   [4] JAVANESE CONSONANT SIGN KERET..JAVANESE PANGKON
        "\daa2f","\daa30",  # ; SpacingMark # Mc   [2] CHAM VOWEL SIGN O..CHAM VOWEL SIGN AI
        "\daa33","\daa34",  # ; SpacingMark # Mc   [2] CHAM CONSONANT SIGN YA..CHAM CONSONANT SIGN RA
        "\dAA4D",  # ; SpacingMark # Mc       CHAM CONSONANT SIGN FINAL H
        "\dAAEB",  # ; SpacingMark # Mc       MEETEI MAYEK VOWEL SIGN II
        "\daaee","\daaef",  # ; SpacingMark # Mc   [2] MEETEI MAYEK VOWEL SIGN AU..MEETEI MAYEK VOWEL SIGN AAU
        "\dAAF5",  # ; SpacingMark # Mc       MEETEI MAYEK VOWEL SIGN VISARGA
        "\dabe3","\dabe4",  # ; SpacingMark # Mc   [2] MEETEI MAYEK VOWEL SIGN ONAP..MEETEI MAYEK VOWEL SIGN INAP
        "\dabe6","\dabe7",  # ; SpacingMark # Mc   [2] MEETEI MAYEK VOWEL SIGN YENAP..MEETEI MAYEK VOWEL SIGN SOUNAP
        "\dabe9","\dabea",  # ; SpacingMark # Mc   [2] MEETEI MAYEK VOWEL SIGN CHEINAP..MEETEI MAYEK VOWEL SIGN NUNG
        "\dABEC",  # ; SpacingMark # Mc       MEETEI MAYEK LUM IYEK
        "\d11000",  # ; SpacingMark # Mc       BRAHMI SIGN CANDRABINDU
        "\d11002",  # ; SpacingMark # Mc       BRAHMI SIGN VISARGA
        "\d11082",  # ; SpacingMark # Mc       KAITHI SIGN VISARGA
        "\d110b0","\d110b1","\d110b2",  # ; SpacingMark # Mc   [3] KAITHI VOWEL SIGN AA..KAITHI VOWEL SIGN II
        "\d110b7","\d110b8",  # ; SpacingMark # Mc   [2] KAITHI VOWEL SIGN O..KAITHI VOWEL SIGN AU
        "\d1112C",  # ; SpacingMark # Mc       CHAKMA VOWEL SIGN E
        "\d11182",  # ; SpacingMark # Mc       SHARADA SIGN VISARGA
        "\d111b3","\d111b4","\d111b5",  # ; SpacingMark # Mc   [3] SHARADA VOWEL SIGN AA..SHARADA VOWEL SIGN II
        "\d111bf","\d111c0",  # ; SpacingMark # Mc   [2] SHARADA VOWEL SIGN AU..SHARADA SIGN VIRAMA
        "\d1122c","\d1122d","\d1122e",  # ; SpacingMark # Mc   [3] KHOJKI VOWEL SIGN AA..KHOJKI VOWEL SIGN II
        "\d11232","\d11233",  # ; SpacingMark # Mc   [2] KHOJKI VOWEL SIGN O..KHOJKI VOWEL SIGN AU
        "\d11235",  # ; SpacingMark # Mc       KHOJKI SIGN VIRAMA
        "\d112e0","\d112e1","\d112e2",  # ; SpacingMark # Mc   [3] KHUDAWADI VOWEL SIGN AA..KHUDAWADI VOWEL SIGN II
        "\d11302","\d11303",  # ; SpacingMark # Mc   [2] GRANTHA SIGN ANUSVARA..GRANTHA SIGN VISARGA
        "\d1133F",  # ; SpacingMark # Mc       GRANTHA VOWEL SIGN I
        "\d11341","\d11342","\d11343","\d11344",  # ; SpacingMark # Mc   [4] GRANTHA VOWEL SIGN U..GRANTHA VOWEL SIGN VOCALIC RR
        "\d11347","\d11348",  # ; SpacingMark # Mc   [2] GRANTHA VOWEL SIGN EE..GRANTHA VOWEL SIGN AI
        "\d1134b","\d1134c","\d1134d",  # ; SpacingMark # Mc   [3] GRANTHA VOWEL SIGN OO..GRANTHA SIGN VIRAMA
        "\d11362","\d11363",  # ; SpacingMark # Mc   [2] GRANTHA VOWEL SIGN VOCALIC L..GRANTHA VOWEL SIGN VOCALIC LL
        "\d11435","\d11436","\d11437",  # ; SpacingMark # Mc   [3] NEWA VOWEL SIGN AA..NEWA VOWEL SIGN II
        "\d11440","\d11441",  # ; SpacingMark # Mc   [2] NEWA VOWEL SIGN O..NEWA VOWEL SIGN AU
        "\d11445",  # ; SpacingMark # Mc       NEWA SIGN VISARGA
        "\d114b1","\d114b2",  # ; SpacingMark # Mc   [2] TIRHUTA VOWEL SIGN I..TIRHUTA VOWEL SIGN II
        "\d114B9",  # ; SpacingMark # Mc       TIRHUTA VOWEL SIGN E
        "\d114bb","\d114bc",  # ; SpacingMark # Mc   [2] TIRHUTA VOWEL SIGN AI..TIRHUTA VOWEL SIGN O
        "\d114BE",  # ; SpacingMark # Mc       TIRHUTA VOWEL SIGN AU
        "\d114C1",  # ; SpacingMark # Mc       TIRHUTA SIGN VISARGA
        "\d115b0","\d115b1",  # ; SpacingMark # Mc   [2] SIDDHAM VOWEL SIGN I..SIDDHAM VOWEL SIGN II
        "\d115b8","\d115b9","\d115ba","\d115bb",  # ; SpacingMark # Mc   [4] SIDDHAM VOWEL SIGN E..SIDDHAM VOWEL SIGN AU
        "\d115BE",  # ; SpacingMark # Mc       SIDDHAM SIGN VISARGA
        "\d11630","\d11631","\d11632",  # ; SpacingMark # Mc   [3] MODI VOWEL SIGN AA..MODI VOWEL SIGN II
        "\d1163b","\d1163c",  # ; SpacingMark # Mc   [2] MODI VOWEL SIGN O..MODI VOWEL SIGN AU
        "\d1163E",  # ; SpacingMark # Mc       MODI SIGN VISARGA
        "\d116AC",  # ; SpacingMark # Mc       TAKRI SIGN VISARGA
        "\d116ae","\d116af",  # ; SpacingMark # Mc   [2] TAKRI VOWEL SIGN I..TAKRI VOWEL SIGN II
        "\d116B6",  # ; SpacingMark # Mc       TAKRI SIGN VIRAMA
        "\d11720","\d11721",  # ; SpacingMark # Mc   [2] AHOM VOWEL SIGN A..AHOM VOWEL SIGN AA
        "\d11726",  # ; SpacingMark # Mc       AHOM VOWEL SIGN E
        "\d11a07","\d11a08",  # ; SpacingMark # Mc   [2] ZANABAZAR SQUARE VOWEL SIGN AI..ZANABAZAR SQUARE VOWEL SIGN AU
        "\d11A39",  # ; SpacingMark # Mc       ZANABAZAR SQUARE SIGN VISARGA
        "\d11a57","\d11a58",  # ; SpacingMark # Mc   [2] SOYOMBO VOWEL SIGN AI..SOYOMBO VOWEL SIGN AU
        "\d11A97",  # ; SpacingMark # Mc       SOYOMBO SIGN VISARGA
        "\d11C2F",  # ; SpacingMark # Mc       BHAIKSUKI VOWEL SIGN AA
        "\d11C3E",  # ; SpacingMark # Mc       BHAIKSUKI SIGN VISARGA
        "\d11CA9",  # ; SpacingMark # Mc       MARCHEN SUBJOINED LETTER YA
        "\d11CB1",  # ; SpacingMark # Mc       MARCHEN VOWEL SIGN I
        "\d11CB4",  # ; SpacingMark # Mc       MARCHEN VOWEL SIGN O
        "\d16f51","\d16f52","\d16f53","\d16f54","\d16f55","\d16f56","\d16f57","\d16f58","\d16f59","\d16f5a","\d16f5b","\d16f5c","\d16f5d","\d16f5e","\d16f5f","\d16f60","\d16f61","\d16f62","\d16f63","\d16f64","\d16f65","\d16f66","\d16f67","\d16f68","\d16f69","\d16f6a","\d16f6b","\d16f6c","\d16f6d","\d16f6e","\d16f6f","\d16f70","\d16f71","\d16f72","\d16f73","\d16f74","\d16f75","\d16f76","\d16f77","\d16f78","\d16f79","\d16f7a","\d16f7b","\d16f7c","\d16f7d","\d16f7e",  # ; SpacingMark # Mc  [46] MIAO SIGN ASPIRATION..MIAO VOWEL SIGN NG
        "\d1D166",  # ; SpacingMark # Mc       MUSICAL SYMBOL COMBINING SPRECHGESANG STEM
        "\d1D16D",  # ; SpacingMark # Mc       MUSICAL SYMBOL COMBINING AUGMENTATION DOT
        "\d1100","\d1101","\d1102","\d1103","\d1104","\d1105","\d1106","\d1107","\d1108","\d1109","\d110a","\d110b","\d110c","\d110d","\d110e","\d110f","\d1110","\d1111","\d1112","\d1113","\d1114","\d1115","\d1116","\d1117","\d1118","\d1119","\d111a","\d111b","\d111c","\d111d","\d111e","\d111f","\d1120","\d1121","\d1122","\d1123","\d1124","\d1125","\d1126","\d1127","\d1128","\d1129","\d112a","\d112b","\d112c","\d112d","\d112e","\d112f","\d1130","\d1131","\d1132","\d1133","\d1134","\d1135","\d1136","\d1137","\d1138","\d1139","\d113a","\d113b","\d113c","\d113d","\d113e","\d113f","\d1140","\d1141","\d1142","\d1143","\d1144","\d1145","\d1146","\d1147","\d1148","\d1149","\d114a","\d114b","\d114c","\d114d","\d114e","\d114f","\d1150","\d1151","\d1152","\d1153","\d1154","\d1155","\d1156","\d1157","\d1158","\d1159","\d115a","\d115b","\d115c","\d115d","\d115e","\d115f",  # ; L # Lo  [96] HANGUL CHOSEONG KIYEOK..HANGUL CHOSEONG FILLER
        "\da960","\da961","\da962","\da963","\da964","\da965","\da966","\da967","\da968","\da969","\da96a","\da96b","\da96c","\da96d","\da96e","\da96f","\da970","\da971","\da972","\da973","\da974","\da975","\da976","\da977","\da978","\da979","\da97a","\da97b","\da97c",  # ; L # Lo  [29] HANGUL CHOSEONG TIKEUT-MIEUM..HANGUL CHOSEONG SSANGYEORINHIEUH
        "\d1160","\d1161","\d1162","\d1163","\d1164","\d1165","\d1166","\d1167","\d1168","\d1169","\d116a","\d116b","\d116c","\d116d","\d116e","\d116f","\d1170","\d1171","\d1172","\d1173","\d1174","\d1175","\d1176","\d1177","\d1178","\d1179","\d117a","\d117b","\d117c","\d117d","\d117e","\d117f","\d1180","\d1181","\d1182","\d1183","\d1184","\d1185","\d1186","\d1187","\d1188","\d1189","\d118a","\d118b","\d118c","\d118d","\d118e","\d118f","\d1190","\d1191","\d1192","\d1193","\d1194","\d1195","\d1196","\d1197","\d1198","\d1199","\d119a","\d119b","\d119c","\d119d","\d119e","\d119f","\d11a0","\d11a1","\d11a2","\d11a3","\d11a4","\d11a5","\d11a6","\d11a7",  # ; V # Lo  [72] HANGUL JUNGSEONG FILLER..HANGUL JUNGSEONG O-YAE
        "\dd7b0","\dd7b1","\dd7b2","\dd7b3","\dd7b4","\dd7b5","\dd7b6","\dd7b7","\dd7b8","\dd7b9","\dd7ba","\dd7bb","\dd7bc","\dd7bd","\dd7be","\dd7bf","\dd7c0","\dd7c1","\dd7c2","\dd7c3","\dd7c4","\dd7c5","\dd7c6",  # ; V # Lo  [23] HANGUL JUNGSEONG O-YEO..HANGUL JUNGSEONG ARAEA-E
        "\d11a8","\d11a9","\d11aa","\d11ab","\d11ac","\d11ad","\d11ae","\d11af","\d11b0","\d11b1","\d11b2","\d11b3","\d11b4","\d11b5","\d11b6","\d11b7","\d11b8","\d11b9","\d11ba","\d11bb","\d11bc","\d11bd","\d11be","\d11bf","\d11c0","\d11c1","\d11c2","\d11c3","\d11c4","\d11c5","\d11c6","\d11c7","\d11c8","\d11c9","\d11ca","\d11cb","\d11cc","\d11cd","\d11ce","\d11cf","\d11d0","\d11d1","\d11d2","\d11d3","\d11d4","\d11d5","\d11d6","\d11d7","\d11d8","\d11d9","\d11da","\d11db","\d11dc","\d11dd","\d11de","\d11df","\d11e0","\d11e1","\d11e2","\d11e3","\d11e4","\d11e5","\d11e6","\d11e7","\d11e8","\d11e9","\d11ea","\d11eb","\d11ec","\d11ed","\d11ee","\d11ef","\d11f0","\d11f1","\d11f2","\d11f3","\d11f4","\d11f5","\d11f6","\d11f7","\d11f8","\d11f9","\d11fa","\d11fb","\d11fc","\d11fd","\d11fe","\d11ff",  # ; T # Lo  [88] HANGUL JONGSEONG KIYEOK..HANGUL JONGSEONG SSANGNIEUN
        "\dd7cb","\dd7cc","\dd7cd","\dd7ce","\dd7cf","\dd7d0","\dd7d1","\dd7d2","\dd7d3","\dd7d4","\dd7d5","\dd7d6","\dd7d7","\dd7d8","\dd7d9","\dd7da","\dd7db","\dd7dc","\dd7dd","\dd7de","\dd7df","\dd7e0","\dd7e1","\dd7e2","\dd7e3","\dd7e4","\dd7e5","\dd7e6","\dd7e7","\dd7e8","\dd7e9","\dd7ea","\dd7eb","\dd7ec","\dd7ed","\dd7ee","\dd7ef","\dd7f0","\dd7f1","\dd7f2","\dd7f3","\dd7f4","\dd7f5","\dd7f6","\dd7f7","\dd7f8","\dd7f9","\dd7fa","\dd7fb",  # ; T # Lo  [49] HANGUL JONGSEONG NIEUN-RIEUL..HANGUL JONGSEONG PHIEUPH-THIEUTH
        "\dAC00",  # ; LV # Lo       HANGUL SYLLABLE GA
        "\dAC1C",  # ; LV # Lo       HANGUL SYLLABLE GAE
        "\dAC38",  # ; LV # Lo       HANGUL SYLLABLE GYA
        "\dAC54",  # ; LV # Lo       HANGUL SYLLABLE GYAE
        "\dAC70",  # ; LV # Lo       HANGUL SYLLABLE GEO
        "\dAC8C",  # ; LV # Lo       HANGUL SYLLABLE GE
        "\dACA8",  # ; LV # Lo       HANGUL SYLLABLE GYEO
        "\dACC4",  # ; LV # Lo       HANGUL SYLLABLE GYE
        "\dACE0",  # ; LV # Lo       HANGUL SYLLABLE GO
        "\dACFC",  # ; LV # Lo       HANGUL SYLLABLE GWA
        "\dAD18",  # ; LV # Lo       HANGUL SYLLABLE GWAE
        "\dAD34",  # ; LV # Lo       HANGUL SYLLABLE GOE
        "\dAD50",  # ; LV # Lo       HANGUL SYLLABLE GYO
        "\dAD6C",  # ; LV # Lo       HANGUL SYLLABLE GU
        "\dAD88",  # ; LV # Lo       HANGUL SYLLABLE GWEO
        "\dADA4",  # ; LV # Lo       HANGUL SYLLABLE GWE
        "\dADC0",  # ; LV # Lo       HANGUL SYLLABLE GWI
        "\dADDC",  # ; LV # Lo       HANGUL SYLLABLE GYU
        "\dADF8",  # ; LV # Lo       HANGUL SYLLABLE GEU
        "\dAE14",  # ; LV # Lo       HANGUL SYLLABLE GYI
        "\dAE30",  # ; LV # Lo       HANGUL SYLLABLE GI
        "\dAE4C",  # ; LV # Lo       HANGUL SYLLABLE GGA
        "\dAE68",  # ; LV # Lo       HANGUL SYLLABLE GGAE
        "\dAE84",  # ; LV # Lo       HANGUL SYLLABLE GGYA
        "\dAEA0",  # ; LV # Lo       HANGUL SYLLABLE GGYAE
        "\dAEBC",  # ; LV # Lo       HANGUL SYLLABLE GGEO
        "\dAED8",  # ; LV # Lo       HANGUL SYLLABLE GGE
        "\dAEF4",  # ; LV # Lo       HANGUL SYLLABLE GGYEO
        "\dAF10",  # ; LV # Lo       HANGUL SYLLABLE GGYE
        "\dAF2C",  # ; LV # Lo       HANGUL SYLLABLE GGO
        "\dAF48",  # ; LV # Lo       HANGUL SYLLABLE GGWA
        "\dAF64",  # ; LV # Lo       HANGUL SYLLABLE GGWAE
        "\dAF80",  # ; LV # Lo       HANGUL SYLLABLE GGOE
        "\dAF9C",  # ; LV # Lo       HANGUL SYLLABLE GGYO
        "\dAFB8",  # ; LV # Lo       HANGUL SYLLABLE GGU
        "\dAFD4",  # ; LV # Lo       HANGUL SYLLABLE GGWEO
        "\dAFF0",  # ; LV # Lo       HANGUL SYLLABLE GGWE
        "\dB00C",  # ; LV # Lo       HANGUL SYLLABLE GGWI
        "\dB028",  # ; LV # Lo       HANGUL SYLLABLE GGYU
        "\dB044",  # ; LV # Lo       HANGUL SYLLABLE GGEU
        "\dB060",  # ; LV # Lo       HANGUL SYLLABLE GGYI
        "\dB07C",  # ; LV # Lo       HANGUL SYLLABLE GGI
        "\dB098",  # ; LV # Lo       HANGUL SYLLABLE NA
        "\dB0B4",  # ; LV # Lo       HANGUL SYLLABLE NAE
        "\dB0D0",  # ; LV # Lo       HANGUL SYLLABLE NYA
        "\dB0EC",  # ; LV # Lo       HANGUL SYLLABLE NYAE
        "\dB108",  # ; LV # Lo       HANGUL SYLLABLE NEO
        "\dB124",  # ; LV # Lo       HANGUL SYLLABLE NE
        "\dB140",  # ; LV # Lo       HANGUL SYLLABLE NYEO
        "\dB15C",  # ; LV # Lo       HANGUL SYLLABLE NYE
        "\dB178",  # ; LV # Lo       HANGUL SYLLABLE NO
        "\dB194",  # ; LV # Lo       HANGUL SYLLABLE NWA
        "\dB1B0",  # ; LV # Lo       HANGUL SYLLABLE NWAE
        "\dB1CC",  # ; LV # Lo       HANGUL SYLLABLE NOE
        "\dB1E8",  # ; LV # Lo       HANGUL SYLLABLE NYO
        "\dB204",  # ; LV # Lo       HANGUL SYLLABLE NU
        "\dB220",  # ; LV # Lo       HANGUL SYLLABLE NWEO
        "\dB23C",  # ; LV # Lo       HANGUL SYLLABLE NWE
        "\dB258",  # ; LV # Lo       HANGUL SYLLABLE NWI
        "\dB274",  # ; LV # Lo       HANGUL SYLLABLE NYU
        "\dB290",  # ; LV # Lo       HANGUL SYLLABLE NEU
        "\dB2AC",  # ; LV # Lo       HANGUL SYLLABLE NYI
        "\dB2C8",  # ; LV # Lo       HANGUL SYLLABLE NI
        "\dB2E4",  # ; LV # Lo       HANGUL SYLLABLE DA
        "\dB300",  # ; LV # Lo       HANGUL SYLLABLE DAE
        "\dB31C",  # ; LV # Lo       HANGUL SYLLABLE DYA
        "\dB338",  # ; LV # Lo       HANGUL SYLLABLE DYAE
        "\dB354",  # ; LV # Lo       HANGUL SYLLABLE DEO
        "\dB370",  # ; LV # Lo       HANGUL SYLLABLE DE
        "\dB38C",  # ; LV # Lo       HANGUL SYLLABLE DYEO
        "\dB3A8",  # ; LV # Lo       HANGUL SYLLABLE DYE
        "\dB3C4",  # ; LV # Lo       HANGUL SYLLABLE DO
        "\dB3E0",  # ; LV # Lo       HANGUL SYLLABLE DWA
        "\dB3FC",  # ; LV # Lo       HANGUL SYLLABLE DWAE
        "\dB418",  # ; LV # Lo       HANGUL SYLLABLE DOE
        "\dB434",  # ; LV # Lo       HANGUL SYLLABLE DYO
        "\dB450",  # ; LV # Lo       HANGUL SYLLABLE DU
        "\dB46C",  # ; LV # Lo       HANGUL SYLLABLE DWEO
        "\dB488",  # ; LV # Lo       HANGUL SYLLABLE DWE
        "\dB4A4",  # ; LV # Lo       HANGUL SYLLABLE DWI
        "\dB4C0",  # ; LV # Lo       HANGUL SYLLABLE DYU
        "\dB4DC",  # ; LV # Lo       HANGUL SYLLABLE DEU
        "\dB4F8",  # ; LV # Lo       HANGUL SYLLABLE DYI
        "\dB514",  # ; LV # Lo       HANGUL SYLLABLE DI
        "\dB530",  # ; LV # Lo       HANGUL SYLLABLE DDA
        "\dB54C",  # ; LV # Lo       HANGUL SYLLABLE DDAE
        "\dB568",  # ; LV # Lo       HANGUL SYLLABLE DDYA
        "\dB584",  # ; LV # Lo       HANGUL SYLLABLE DDYAE
        "\dB5A0",  # ; LV # Lo       HANGUL SYLLABLE DDEO
        "\dB5BC",  # ; LV # Lo       HANGUL SYLLABLE DDE
        "\dB5D8",  # ; LV # Lo       HANGUL SYLLABLE DDYEO
        "\dB5F4",  # ; LV # Lo       HANGUL SYLLABLE DDYE
        "\dB610",  # ; LV # Lo       HANGUL SYLLABLE DDO
        "\dB62C",  # ; LV # Lo       HANGUL SYLLABLE DDWA
        "\dB648",  # ; LV # Lo       HANGUL SYLLABLE DDWAE
        "\dB664",  # ; LV # Lo       HANGUL SYLLABLE DDOE
        "\dB680",  # ; LV # Lo       HANGUL SYLLABLE DDYO
        "\dB69C",  # ; LV # Lo       HANGUL SYLLABLE DDU
        "\dB6B8",  # ; LV # Lo       HANGUL SYLLABLE DDWEO
        "\dB6D4",  # ; LV # Lo       HANGUL SYLLABLE DDWE
        "\dB6F0",  # ; LV # Lo       HANGUL SYLLABLE DDWI
        "\dB70C",  # ; LV # Lo       HANGUL SYLLABLE DDYU
        "\dB728",  # ; LV # Lo       HANGUL SYLLABLE DDEU
        "\dB744",  # ; LV # Lo       HANGUL SYLLABLE DDYI
        "\dB760",  # ; LV # Lo       HANGUL SYLLABLE DDI
        "\dB77C",  # ; LV # Lo       HANGUL SYLLABLE RA
        "\dB798",  # ; LV # Lo       HANGUL SYLLABLE RAE
        "\dB7B4",  # ; LV # Lo       HANGUL SYLLABLE RYA
        "\dB7D0",  # ; LV # Lo       HANGUL SYLLABLE RYAE
        "\dB7EC",  # ; LV # Lo       HANGUL SYLLABLE REO
        "\dB808",  # ; LV # Lo       HANGUL SYLLABLE RE
        "\dB824",  # ; LV # Lo       HANGUL SYLLABLE RYEO
        "\dB840",  # ; LV # Lo       HANGUL SYLLABLE RYE
        "\dB85C",  # ; LV # Lo       HANGUL SYLLABLE RO
        "\dB878",  # ; LV # Lo       HANGUL SYLLABLE RWA
        "\dB894",  # ; LV # Lo       HANGUL SYLLABLE RWAE
        "\dB8B0",  # ; LV # Lo       HANGUL SYLLABLE ROE
        "\dB8CC",  # ; LV # Lo       HANGUL SYLLABLE RYO
        "\dB8E8",  # ; LV # Lo       HANGUL SYLLABLE RU
        "\dB904",  # ; LV # Lo       HANGUL SYLLABLE RWEO
        "\dB920",  # ; LV # Lo       HANGUL SYLLABLE RWE
        "\dB93C",  # ; LV # Lo       HANGUL SYLLABLE RWI
        "\dB958",  # ; LV # Lo       HANGUL SYLLABLE RYU
        "\dB974",  # ; LV # Lo       HANGUL SYLLABLE REU
        "\dB990",  # ; LV # Lo       HANGUL SYLLABLE RYI
        "\dB9AC",  # ; LV # Lo       HANGUL SYLLABLE RI
        "\dB9C8",  # ; LV # Lo       HANGUL SYLLABLE MA
        "\dB9E4",  # ; LV # Lo       HANGUL SYLLABLE MAE
        "\dBA00",  # ; LV # Lo       HANGUL SYLLABLE MYA
        "\dBA1C",  # ; LV # Lo       HANGUL SYLLABLE MYAE
        "\dBA38",  # ; LV # Lo       HANGUL SYLLABLE MEO
        "\dBA54",  # ; LV # Lo       HANGUL SYLLABLE ME
        "\dBA70",  # ; LV # Lo       HANGUL SYLLABLE MYEO
        "\dBA8C",  # ; LV # Lo       HANGUL SYLLABLE MYE
        "\dBAA8",  # ; LV # Lo       HANGUL SYLLABLE MO
        "\dBAC4",  # ; LV # Lo       HANGUL SYLLABLE MWA
        "\dBAE0",  # ; LV # Lo       HANGUL SYLLABLE MWAE
        "\dBAFC",  # ; LV # Lo       HANGUL SYLLABLE MOE
        "\dBB18",  # ; LV # Lo       HANGUL SYLLABLE MYO
        "\dBB34",  # ; LV # Lo       HANGUL SYLLABLE MU
        "\dBB50",  # ; LV # Lo       HANGUL SYLLABLE MWEO
        "\dBB6C",  # ; LV # Lo       HANGUL SYLLABLE MWE
        "\dBB88",  # ; LV # Lo       HANGUL SYLLABLE MWI
        "\dBBA4",  # ; LV # Lo       HANGUL SYLLABLE MYU
        "\dBBC0",  # ; LV # Lo       HANGUL SYLLABLE MEU
        "\dBBDC",  # ; LV # Lo       HANGUL SYLLABLE MYI
        "\dBBF8",  # ; LV # Lo       HANGUL SYLLABLE MI
        "\dBC14",  # ; LV # Lo       HANGUL SYLLABLE BA
        "\dBC30",  # ; LV # Lo       HANGUL SYLLABLE BAE
        "\dBC4C",  # ; LV # Lo       HANGUL SYLLABLE BYA
        "\dBC68",  # ; LV # Lo       HANGUL SYLLABLE BYAE
        "\dBC84",  # ; LV # Lo       HANGUL SYLLABLE BEO
        "\dBCA0",  # ; LV # Lo       HANGUL SYLLABLE BE
        "\dBCBC",  # ; LV # Lo       HANGUL SYLLABLE BYEO
        "\dBCD8",  # ; LV # Lo       HANGUL SYLLABLE BYE
        "\dBCF4",  # ; LV # Lo       HANGUL SYLLABLE BO
        "\dBD10",  # ; LV # Lo       HANGUL SYLLABLE BWA
        "\dBD2C",  # ; LV # Lo       HANGUL SYLLABLE BWAE
        "\dBD48",  # ; LV # Lo       HANGUL SYLLABLE BOE
        "\dBD64",  # ; LV # Lo       HANGUL SYLLABLE BYO
        "\dBD80",  # ; LV # Lo       HANGUL SYLLABLE BU
        "\dBD9C",  # ; LV # Lo       HANGUL SYLLABLE BWEO
        "\dBDB8",  # ; LV # Lo       HANGUL SYLLABLE BWE
        "\dBDD4",  # ; LV # Lo       HANGUL SYLLABLE BWI
        "\dBDF0",  # ; LV # Lo       HANGUL SYLLABLE BYU
        "\dBE0C",  # ; LV # Lo       HANGUL SYLLABLE BEU
        "\dBE28",  # ; LV # Lo       HANGUL SYLLABLE BYI
        "\dBE44",  # ; LV # Lo       HANGUL SYLLABLE BI
        "\dBE60",  # ; LV # Lo       HANGUL SYLLABLE BBA
        "\dBE7C",  # ; LV # Lo       HANGUL SYLLABLE BBAE
        "\dBE98",  # ; LV # Lo       HANGUL SYLLABLE BBYA
        "\dBEB4",  # ; LV # Lo       HANGUL SYLLABLE BBYAE
        "\dBED0",  # ; LV # Lo       HANGUL SYLLABLE BBEO
        "\dBEEC",  # ; LV # Lo       HANGUL SYLLABLE BBE
        "\dBF08",  # ; LV # Lo       HANGUL SYLLABLE BBYEO
        "\dBF24",  # ; LV # Lo       HANGUL SYLLABLE BBYE
        "\dBF40",  # ; LV # Lo       HANGUL SYLLABLE BBO
        "\dBF5C",  # ; LV # Lo       HANGUL SYLLABLE BBWA
        "\dBF78",  # ; LV # Lo       HANGUL SYLLABLE BBWAE
        "\dBF94",  # ; LV # Lo       HANGUL SYLLABLE BBOE
        "\dBFB0",  # ; LV # Lo       HANGUL SYLLABLE BBYO
        "\dBFCC",  # ; LV # Lo       HANGUL SYLLABLE BBU
        "\dBFE8",  # ; LV # Lo       HANGUL SYLLABLE BBWEO
        "\dC004",  # ; LV # Lo       HANGUL SYLLABLE BBWE
        "\dC020",  # ; LV # Lo       HANGUL SYLLABLE BBWI
        "\dC03C",  # ; LV # Lo       HANGUL SYLLABLE BBYU
        "\dC058",  # ; LV # Lo       HANGUL SYLLABLE BBEU
        "\dC074",  # ; LV # Lo       HANGUL SYLLABLE BBYI
        "\dC090",  # ; LV # Lo       HANGUL SYLLABLE BBI
        "\dC0AC",  # ; LV # Lo       HANGUL SYLLABLE SA
        "\dC0C8",  # ; LV # Lo       HANGUL SYLLABLE SAE
        "\dC0E4",  # ; LV # Lo       HANGUL SYLLABLE SYA
        "\dC100",  # ; LV # Lo       HANGUL SYLLABLE SYAE
        "\dC11C",  # ; LV # Lo       HANGUL SYLLABLE SEO
        "\dC138",  # ; LV # Lo       HANGUL SYLLABLE SE
        "\dC154",  # ; LV # Lo       HANGUL SYLLABLE SYEO
        "\dC170",  # ; LV # Lo       HANGUL SYLLABLE SYE
        "\dC18C",  # ; LV # Lo       HANGUL SYLLABLE SO
        "\dC1A8",  # ; LV # Lo       HANGUL SYLLABLE SWA
        "\dC1C4",  # ; LV # Lo       HANGUL SYLLABLE SWAE
        "\dC1E0",  # ; LV # Lo       HANGUL SYLLABLE SOE
        "\dC1FC",  # ; LV # Lo       HANGUL SYLLABLE SYO
        "\dC218",  # ; LV # Lo       HANGUL SYLLABLE SU
        "\dC234",  # ; LV # Lo       HANGUL SYLLABLE SWEO
        "\dC250",  # ; LV # Lo       HANGUL SYLLABLE SWE
        "\dC26C",  # ; LV # Lo       HANGUL SYLLABLE SWI
        "\dC288",  # ; LV # Lo       HANGUL SYLLABLE SYU
        "\dC2A4",  # ; LV # Lo       HANGUL SYLLABLE SEU
        "\dC2C0",  # ; LV # Lo       HANGUL SYLLABLE SYI
        "\dC2DC",  # ; LV # Lo       HANGUL SYLLABLE SI
        "\dC2F8",  # ; LV # Lo       HANGUL SYLLABLE SSA
        "\dC314",  # ; LV # Lo       HANGUL SYLLABLE SSAE
        "\dC330",  # ; LV # Lo       HANGUL SYLLABLE SSYA
        "\dC34C",  # ; LV # Lo       HANGUL SYLLABLE SSYAE
        "\dC368",  # ; LV # Lo       HANGUL SYLLABLE SSEO
        "\dC384",  # ; LV # Lo       HANGUL SYLLABLE SSE
        "\dC3A0",  # ; LV # Lo       HANGUL SYLLABLE SSYEO
        "\dC3BC",  # ; LV # Lo       HANGUL SYLLABLE SSYE
        "\dC3D8",  # ; LV # Lo       HANGUL SYLLABLE SSO
        "\dC3F4",  # ; LV # Lo       HANGUL SYLLABLE SSWA
        "\dC410",  # ; LV # Lo       HANGUL SYLLABLE SSWAE
        "\dC42C",  # ; LV # Lo       HANGUL SYLLABLE SSOE
        "\dC448",  # ; LV # Lo       HANGUL SYLLABLE SSYO
        "\dC464",  # ; LV # Lo       HANGUL SYLLABLE SSU
        "\dC480",  # ; LV # Lo       HANGUL SYLLABLE SSWEO
        "\dC49C",  # ; LV # Lo       HANGUL SYLLABLE SSWE
        "\dC4B8",  # ; LV # Lo       HANGUL SYLLABLE SSWI
        "\dC4D4",  # ; LV # Lo       HANGUL SYLLABLE SSYU
        "\dC4F0",  # ; LV # Lo       HANGUL SYLLABLE SSEU
        "\dC50C",  # ; LV # Lo       HANGUL SYLLABLE SSYI
        "\dC528",  # ; LV # Lo       HANGUL SYLLABLE SSI
        "\dC544",  # ; LV # Lo       HANGUL SYLLABLE A
        "\dC560",  # ; LV # Lo       HANGUL SYLLABLE AE
        "\dC57C",  # ; LV # Lo       HANGUL SYLLABLE YA
        "\dC598",  # ; LV # Lo       HANGUL SYLLABLE YAE
        "\dC5B4",  # ; LV # Lo       HANGUL SYLLABLE EO
        "\dC5D0",  # ; LV # Lo       HANGUL SYLLABLE E
        "\dC5EC",  # ; LV # Lo       HANGUL SYLLABLE YEO
        "\dC608",  # ; LV # Lo       HANGUL SYLLABLE YE
        "\dC624",  # ; LV # Lo       HANGUL SYLLABLE O
        "\dC640",  # ; LV # Lo       HANGUL SYLLABLE WA
        "\dC65C",  # ; LV # Lo       HANGUL SYLLABLE WAE
        "\dC678",  # ; LV # Lo       HANGUL SYLLABLE OE
        "\dC694",  # ; LV # Lo       HANGUL SYLLABLE YO
        "\dC6B0",  # ; LV # Lo       HANGUL SYLLABLE U
        "\dC6CC",  # ; LV # Lo       HANGUL SYLLABLE WEO
        "\dC6E8",  # ; LV # Lo       HANGUL SYLLABLE WE
        "\dC704",  # ; LV # Lo       HANGUL SYLLABLE WI
        "\dC720",  # ; LV # Lo       HANGUL SYLLABLE YU
        "\dC73C",  # ; LV # Lo       HANGUL SYLLABLE EU
        "\dC758",  # ; LV # Lo       HANGUL SYLLABLE YI
        "\dC774",  # ; LV # Lo       HANGUL SYLLABLE I
        "\dC790",  # ; LV # Lo       HANGUL SYLLABLE JA
        "\dC7AC",  # ; LV # Lo       HANGUL SYLLABLE JAE
        "\dC7C8",  # ; LV # Lo       HANGUL SYLLABLE JYA
        "\dC7E4",  # ; LV # Lo       HANGUL SYLLABLE JYAE
        "\dC800",  # ; LV # Lo       HANGUL SYLLABLE JEO
        "\dC81C",  # ; LV # Lo       HANGUL SYLLABLE JE
        "\dC838",  # ; LV # Lo       HANGUL SYLLABLE JYEO
        "\dC854",  # ; LV # Lo       HANGUL SYLLABLE JYE
        "\dC870",  # ; LV # Lo       HANGUL SYLLABLE JO
        "\dC88C",  # ; LV # Lo       HANGUL SYLLABLE JWA
        "\dC8A8",  # ; LV # Lo       HANGUL SYLLABLE JWAE
        "\dC8C4",  # ; LV # Lo       HANGUL SYLLABLE JOE
        "\dC8E0",  # ; LV # Lo       HANGUL SYLLABLE JYO
        "\dC8FC",  # ; LV # Lo       HANGUL SYLLABLE JU
        "\dC918",  # ; LV # Lo       HANGUL SYLLABLE JWEO
        "\dC934",  # ; LV # Lo       HANGUL SYLLABLE JWE
        "\dC950",  # ; LV # Lo       HANGUL SYLLABLE JWI
        "\dC96C",  # ; LV # Lo       HANGUL SYLLABLE JYU
        "\dC988",  # ; LV # Lo       HANGUL SYLLABLE JEU
        "\dC9A4",  # ; LV # Lo       HANGUL SYLLABLE JYI
        "\dC9C0",  # ; LV # Lo       HANGUL SYLLABLE JI
        "\dC9DC",  # ; LV # Lo       HANGUL SYLLABLE JJA
        "\dC9F8",  # ; LV # Lo       HANGUL SYLLABLE JJAE
        "\dCA14",  # ; LV # Lo       HANGUL SYLLABLE JJYA
        "\dCA30",  # ; LV # Lo       HANGUL SYLLABLE JJYAE
        "\dCA4C",  # ; LV # Lo       HANGUL SYLLABLE JJEO
        "\dCA68",  # ; LV # Lo       HANGUL SYLLABLE JJE
        "\dCA84",  # ; LV # Lo       HANGUL SYLLABLE JJYEO
        "\dCAA0",  # ; LV # Lo       HANGUL SYLLABLE JJYE
        "\dCABC",  # ; LV # Lo       HANGUL SYLLABLE JJO
        "\dCAD8",  # ; LV # Lo       HANGUL SYLLABLE JJWA
        "\dCAF4",  # ; LV # Lo       HANGUL SYLLABLE JJWAE
        "\dCB10",  # ; LV # Lo       HANGUL SYLLABLE JJOE
        "\dCB2C",  # ; LV # Lo       HANGUL SYLLABLE JJYO
        "\dCB48",  # ; LV # Lo       HANGUL SYLLABLE JJU
        "\dCB64",  # ; LV # Lo       HANGUL SYLLABLE JJWEO
        "\dCB80",  # ; LV # Lo       HANGUL SYLLABLE JJWE
        "\dCB9C",  # ; LV # Lo       HANGUL SYLLABLE JJWI
        "\dCBB8",  # ; LV # Lo       HANGUL SYLLABLE JJYU
        "\dCBD4",  # ; LV # Lo       HANGUL SYLLABLE JJEU
        "\dCBF0",  # ; LV # Lo       HANGUL SYLLABLE JJYI
        "\dCC0C",  # ; LV # Lo       HANGUL SYLLABLE JJI
        "\dCC28",  # ; LV # Lo       HANGUL SYLLABLE CA
        "\dCC44",  # ; LV # Lo       HANGUL SYLLABLE CAE
        "\dCC60",  # ; LV # Lo       HANGUL SYLLABLE CYA
        "\dCC7C",  # ; LV # Lo       HANGUL SYLLABLE CYAE
        "\dCC98",  # ; LV # Lo       HANGUL SYLLABLE CEO
        "\dCCB4",  # ; LV # Lo       HANGUL SYLLABLE CE
        "\dCCD0",  # ; LV # Lo       HANGUL SYLLABLE CYEO
        "\dCCEC",  # ; LV # Lo       HANGUL SYLLABLE CYE
        "\dCD08",  # ; LV # Lo       HANGUL SYLLABLE CO
        "\dCD24",  # ; LV # Lo       HANGUL SYLLABLE CWA
        "\dCD40",  # ; LV # Lo       HANGUL SYLLABLE CWAE
        "\dCD5C",  # ; LV # Lo       HANGUL SYLLABLE COE
        "\dCD78",  # ; LV # Lo       HANGUL SYLLABLE CYO
        "\dCD94",  # ; LV # Lo       HANGUL SYLLABLE CU
        "\dCDB0",  # ; LV # Lo       HANGUL SYLLABLE CWEO
        "\dCDCC",  # ; LV # Lo       HANGUL SYLLABLE CWE
        "\dCDE8",  # ; LV # Lo       HANGUL SYLLABLE CWI
        "\dCE04",  # ; LV # Lo       HANGUL SYLLABLE CYU
        "\dCE20",  # ; LV # Lo       HANGUL SYLLABLE CEU
        "\dCE3C",  # ; LV # Lo       HANGUL SYLLABLE CYI
        "\dCE58",  # ; LV # Lo       HANGUL SYLLABLE CI
        "\dCE74",  # ; LV # Lo       HANGUL SYLLABLE KA
        "\dCE90",  # ; LV # Lo       HANGUL SYLLABLE KAE
        "\dCEAC",  # ; LV # Lo       HANGUL SYLLABLE KYA
        "\dCEC8",  # ; LV # Lo       HANGUL SYLLABLE KYAE
        "\dCEE4",  # ; LV # Lo       HANGUL SYLLABLE KEO
        "\dCF00",  # ; LV # Lo       HANGUL SYLLABLE KE
        "\dCF1C",  # ; LV # Lo       HANGUL SYLLABLE KYEO
        "\dCF38",  # ; LV # Lo       HANGUL SYLLABLE KYE
        "\dCF54",  # ; LV # Lo       HANGUL SYLLABLE KO
        "\dCF70",  # ; LV # Lo       HANGUL SYLLABLE KWA
        "\dCF8C",  # ; LV # Lo       HANGUL SYLLABLE KWAE
        "\dCFA8",  # ; LV # Lo       HANGUL SYLLABLE KOE
        "\dCFC4",  # ; LV # Lo       HANGUL SYLLABLE KYO
        "\dCFE0",  # ; LV # Lo       HANGUL SYLLABLE KU
        "\dCFFC",  # ; LV # Lo       HANGUL SYLLABLE KWEO
        "\dD018",  # ; LV # Lo       HANGUL SYLLABLE KWE
        "\dD034",  # ; LV # Lo       HANGUL SYLLABLE KWI
        "\dD050",  # ; LV # Lo       HANGUL SYLLABLE KYU
        "\dD06C",  # ; LV # Lo       HANGUL SYLLABLE KEU
        "\dD088",  # ; LV # Lo       HANGUL SYLLABLE KYI
        "\dD0A4",  # ; LV # Lo       HANGUL SYLLABLE KI
        "\dD0C0",  # ; LV # Lo       HANGUL SYLLABLE TA
        "\dD0DC",  # ; LV # Lo       HANGUL SYLLABLE TAE
        "\dD0F8",  # ; LV # Lo       HANGUL SYLLABLE TYA
        "\dD114",  # ; LV # Lo       HANGUL SYLLABLE TYAE
        "\dD130",  # ; LV # Lo       HANGUL SYLLABLE TEO
        "\dD14C",  # ; LV # Lo       HANGUL SYLLABLE TE
        "\dD168",  # ; LV # Lo       HANGUL SYLLABLE TYEO
        "\dD184",  # ; LV # Lo       HANGUL SYLLABLE TYE
        "\dD1A0",  # ; LV # Lo       HANGUL SYLLABLE TO
        "\dD1BC",  # ; LV # Lo       HANGUL SYLLABLE TWA
        "\dD1D8",  # ; LV # Lo       HANGUL SYLLABLE TWAE
        "\dD1F4",  # ; LV # Lo       HANGUL SYLLABLE TOE
        "\dD210",  # ; LV # Lo       HANGUL SYLLABLE TYO
        "\dD22C",  # ; LV # Lo       HANGUL SYLLABLE TU
        "\dD248",  # ; LV # Lo       HANGUL SYLLABLE TWEO
        "\dD264",  # ; LV # Lo       HANGUL SYLLABLE TWE
        "\dD280",  # ; LV # Lo       HANGUL SYLLABLE TWI
        "\dD29C",  # ; LV # Lo       HANGUL SYLLABLE TYU
        "\dD2B8",  # ; LV # Lo       HANGUL SYLLABLE TEU
        "\dD2D4",  # ; LV # Lo       HANGUL SYLLABLE TYI
        "\dD2F0",  # ; LV # Lo       HANGUL SYLLABLE TI
        "\dD30C",  # ; LV # Lo       HANGUL SYLLABLE PA
        "\dD328",  # ; LV # Lo       HANGUL SYLLABLE PAE
        "\dD344",  # ; LV # Lo       HANGUL SYLLABLE PYA
        "\dD360",  # ; LV # Lo       HANGUL SYLLABLE PYAE
        "\dD37C",  # ; LV # Lo       HANGUL SYLLABLE PEO
        "\dD398",  # ; LV # Lo       HANGUL SYLLABLE PE
        "\dD3B4",  # ; LV # Lo       HANGUL SYLLABLE PYEO
        "\dD3D0",  # ; LV # Lo       HANGUL SYLLABLE PYE
        "\dD3EC",  # ; LV # Lo       HANGUL SYLLABLE PO
        "\dD408",  # ; LV # Lo       HANGUL SYLLABLE PWA
        "\dD424",  # ; LV # Lo       HANGUL SYLLABLE PWAE
        "\dD440",  # ; LV # Lo       HANGUL SYLLABLE POE
        "\dD45C",  # ; LV # Lo       HANGUL SYLLABLE PYO
        "\dD478",  # ; LV # Lo       HANGUL SYLLABLE PU
        "\dD494",  # ; LV # Lo       HANGUL SYLLABLE PWEO
        "\dD4B0",  # ; LV # Lo       HANGUL SYLLABLE PWE
        "\dD4CC",  # ; LV # Lo       HANGUL SYLLABLE PWI
        "\dD4E8",  # ; LV # Lo       HANGUL SYLLABLE PYU
        "\dD504",  # ; LV # Lo       HANGUL SYLLABLE PEU
        "\dD520",  # ; LV # Lo       HANGUL SYLLABLE PYI
        "\dD53C",  # ; LV # Lo       HANGUL SYLLABLE PI
        "\dD558",  # ; LV # Lo       HANGUL SYLLABLE HA
        "\dD574",  # ; LV # Lo       HANGUL SYLLABLE HAE
        "\dD590",  # ; LV # Lo       HANGUL SYLLABLE HYA
        "\dD5AC",  # ; LV # Lo       HANGUL SYLLABLE HYAE
        "\dD5C8",  # ; LV # Lo       HANGUL SYLLABLE HEO
        "\dD5E4",  # ; LV # Lo       HANGUL SYLLABLE HE
        "\dD600",  # ; LV # Lo       HANGUL SYLLABLE HYEO
        "\dD61C",  # ; LV # Lo       HANGUL SYLLABLE HYE
        "\dD638",  # ; LV # Lo       HANGUL SYLLABLE HO
        "\dD654",  # ; LV # Lo       HANGUL SYLLABLE HWA
        "\dD670",  # ; LV # Lo       HANGUL SYLLABLE HWAE
        "\dD68C",  # ; LV # Lo       HANGUL SYLLABLE HOE
        "\dD6A8",  # ; LV # Lo       HANGUL SYLLABLE HYO
        "\dD6C4",  # ; LV # Lo       HANGUL SYLLABLE HU
        "\dD6E0",  # ; LV # Lo       HANGUL SYLLABLE HWEO
        "\dD6FC",  # ; LV # Lo       HANGUL SYLLABLE HWE
        "\dD718",  # ; LV # Lo       HANGUL SYLLABLE HWI
        "\dD734",  # ; LV # Lo       HANGUL SYLLABLE HYU
        "\dD750",  # ; LV # Lo       HANGUL SYLLABLE HEU
        "\dD76C",  # ; LV # Lo       HANGUL SYLLABLE HYI
        "\dD788",  # ; LV # Lo       HANGUL SYLLABLE HI
        "\dac01","\dac02","\dac03","\dac04","\dac05","\dac06","\dac07","\dac08","\dac09","\dac0a","\dac0b","\dac0c","\dac0d","\dac0e","\dac0f","\dac10","\dac11","\dac12","\dac13","\dac14","\dac15","\dac16","\dac17","\dac18","\dac19","\dac1a","\dac1b",  # ; LVT # Lo  [27] HANGUL SYLLABLE GAG..HANGUL SYLLABLE GAH
        "\dac1d","\dac1e","\dac1f","\dac20","\dac21","\dac22","\dac23","\dac24","\dac25","\dac26","\dac27","\dac28","\dac29","\dac2a","\dac2b","\dac2c","\dac2d","\dac2e","\dac2f","\dac30","\dac31","\dac32","\dac33","\dac34","\dac35","\dac36","\dac37",  # ; LVT # Lo  [27] HANGUL SYLLABLE GAEG..HANGUL SYLLABLE GAEH
        "\dac39","\dac3a","\dac3b","\dac3c","\dac3d","\dac3e","\dac3f","\dac40","\dac41","\dac42","\dac43","\dac44","\dac45","\dac46","\dac47","\dac48","\dac49","\dac4a","\dac4b","\dac4c","\dac4d","\dac4e","\dac4f","\dac50","\dac51","\dac52","\dac53",  # ; LVT # Lo  [27] HANGUL SYLLABLE GYAG..HANGUL SYLLABLE GYAH
        "\dac55","\dac56","\dac57","\dac58","\dac59","\dac5a","\dac5b","\dac5c","\dac5d","\dac5e","\dac5f","\dac60","\dac61","\dac62","\dac63","\dac64","\dac65","\dac66","\dac67","\dac68","\dac69","\dac6a","\dac6b","\dac6c","\dac6d","\dac6e","\dac6f",  # ; LVT # Lo  [27] HANGUL SYLLABLE GYAEG..HANGUL SYLLABLE GYAEH
        "\dac71","\dac72","\dac73","\dac74","\dac75","\dac76","\dac77","\dac78","\dac79","\dac7a","\dac7b","\dac7c","\dac7d","\dac7e","\dac7f","\dac80","\dac81","\dac82","\dac83","\dac84","\dac85","\dac86","\dac87","\dac88","\dac89","\dac8a","\dac8b",  # ; LVT # Lo  [27] HANGUL SYLLABLE GEOG..HANGUL SYLLABLE GEOH
        "\dac8d","\dac8e","\dac8f","\dac90","\dac91","\dac92","\dac93","\dac94","\dac95","\dac96","\dac97","\dac98","\dac99","\dac9a","\dac9b","\dac9c","\dac9d","\dac9e","\dac9f","\daca0","\daca1","\daca2","\daca3","\daca4","\daca5","\daca6","\daca7",  # ; LVT # Lo  [27] HANGUL SYLLABLE GEG..HANGUL SYLLABLE GEH
        "\daca9","\dacaa","\dacab","\dacac","\dacad","\dacae","\dacaf","\dacb0","\dacb1","\dacb2","\dacb3","\dacb4","\dacb5","\dacb6","\dacb7","\dacb8","\dacb9","\dacba","\dacbb","\dacbc","\dacbd","\dacbe","\dacbf","\dacc0","\dacc1","\dacc2","\dacc3",  # ; LVT # Lo  [27] HANGUL SYLLABLE GYEOG..HANGUL SYLLABLE GYEOH
        "\dacc5","\dacc6","\dacc7","\dacc8","\dacc9","\dacca","\daccb","\daccc","\daccd","\dacce","\daccf","\dacd0","\dacd1","\dacd2","\dacd3","\dacd4","\dacd5","\dacd6","\dacd7","\dacd8","\dacd9","\dacda","\dacdb","\dacdc","\dacdd","\dacde","\dacdf",  # ; LVT # Lo  [27] HANGUL SYLLABLE GYEG..HANGUL SYLLABLE GYEH
        "\dace1","\dace2","\dace3","\dace4","\dace5","\dace6","\dace7","\dace8","\dace9","\dacea","\daceb","\dacec","\daced","\dacee","\dacef","\dacf0","\dacf1","\dacf2","\dacf3","\dacf4","\dacf5","\dacf6","\dacf7","\dacf8","\dacf9","\dacfa","\dacfb",  # ; LVT # Lo  [27] HANGUL SYLLABLE GOG..HANGUL SYLLABLE GOH
        "\dacfd","\dacfe","\dacff","\dad00","\dad01","\dad02","\dad03","\dad04","\dad05","\dad06","\dad07","\dad08","\dad09","\dad0a","\dad0b","\dad0c","\dad0d","\dad0e","\dad0f","\dad10","\dad11","\dad12","\dad13","\dad14","\dad15","\dad16","\dad17",  # ; LVT # Lo  [27] HANGUL SYLLABLE GWAG..HANGUL SYLLABLE GWAH
        "\dad19","\dad1a","\dad1b","\dad1c","\dad1d","\dad1e","\dad1f","\dad20","\dad21","\dad22","\dad23","\dad24","\dad25","\dad26","\dad27","\dad28","\dad29","\dad2a","\dad2b","\dad2c","\dad2d","\dad2e","\dad2f","\dad30","\dad31","\dad32","\dad33",  # ; LVT # Lo  [27] HANGUL SYLLABLE GWAEG..HANGUL SYLLABLE GWAEH
        "\dad35","\dad36","\dad37","\dad38","\dad39","\dad3a","\dad3b","\dad3c","\dad3d","\dad3e","\dad3f","\dad40","\dad41","\dad42","\dad43","\dad44","\dad45","\dad46","\dad47","\dad48","\dad49","\dad4a","\dad4b","\dad4c","\dad4d","\dad4e","\dad4f",  # ; LVT # Lo  [27] HANGUL SYLLABLE GOEG..HANGUL SYLLABLE GOEH
        "\dad51","\dad52","\dad53","\dad54","\dad55","\dad56","\dad57","\dad58","\dad59","\dad5a","\dad5b","\dad5c","\dad5d","\dad5e","\dad5f","\dad60","\dad61","\dad62","\dad63","\dad64","\dad65","\dad66","\dad67","\dad68","\dad69","\dad6a","\dad6b",  # ; LVT # Lo  [27] HANGUL SYLLABLE GYOG..HANGUL SYLLABLE GYOH
        "\dad6d","\dad6e","\dad6f","\dad70","\dad71","\dad72","\dad73","\dad74","\dad75","\dad76","\dad77","\dad78","\dad79","\dad7a","\dad7b","\dad7c","\dad7d","\dad7e","\dad7f","\dad80","\dad81","\dad82","\dad83","\dad84","\dad85","\dad86","\dad87",  # ; LVT # Lo  [27] HANGUL SYLLABLE GUG..HANGUL SYLLABLE GUH
        "\dad89","\dad8a","\dad8b","\dad8c","\dad8d","\dad8e","\dad8f","\dad90","\dad91","\dad92","\dad93","\dad94","\dad95","\dad96","\dad97","\dad98","\dad99","\dad9a","\dad9b","\dad9c","\dad9d","\dad9e","\dad9f","\dada0","\dada1","\dada2","\dada3",  # ; LVT # Lo  [27] HANGUL SYLLABLE GWEOG..HANGUL SYLLABLE GWEOH
        "\dada5","\dada6","\dada7","\dada8","\dada9","\dadaa","\dadab","\dadac","\dadad","\dadae","\dadaf","\dadb0","\dadb1","\dadb2","\dadb3","\dadb4","\dadb5","\dadb6","\dadb7","\dadb8","\dadb9","\dadba","\dadbb","\dadbc","\dadbd","\dadbe","\dadbf",  # ; LVT # Lo  [27] HANGUL SYLLABLE GWEG..HANGUL SYLLABLE GWEH
        "\dadc1","\dadc2","\dadc3","\dadc4","\dadc5","\dadc6","\dadc7","\dadc8","\dadc9","\dadca","\dadcb","\dadcc","\dadcd","\dadce","\dadcf","\dadd0","\dadd1","\dadd2","\dadd3","\dadd4","\dadd5","\dadd6","\dadd7","\dadd8","\dadd9","\dadda","\daddb",  # ; LVT # Lo  [27] HANGUL SYLLABLE GWIG..HANGUL SYLLABLE GWIH
        "\daddd","\dadde","\daddf","\dade0","\dade1","\dade2","\dade3","\dade4","\dade5","\dade6","\dade7","\dade8","\dade9","\dadea","\dadeb","\dadec","\daded","\dadee","\dadef","\dadf0","\dadf1","\dadf2","\dadf3","\dadf4","\dadf5","\dadf6","\dadf7",  # ; LVT # Lo  [27] HANGUL SYLLABLE GYUG..HANGUL SYLLABLE GYUH
        "\dadf9","\dadfa","\dadfb","\dadfc","\dadfd","\dadfe","\dadff","\dae00","\dae01","\dae02","\dae03","\dae04","\dae05","\dae06","\dae07","\dae08","\dae09","\dae0a","\dae0b","\dae0c","\dae0d","\dae0e","\dae0f","\dae10","\dae11","\dae12","\dae13",  # ; LVT # Lo  [27] HANGUL SYLLABLE GEUG..HANGUL SYLLABLE GEUH
        "\dae15","\dae16","\dae17","\dae18","\dae19","\dae1a","\dae1b","\dae1c","\dae1d","\dae1e","\dae1f","\dae20","\dae21","\dae22","\dae23","\dae24","\dae25","\dae26","\dae27","\dae28","\dae29","\dae2a","\dae2b","\dae2c","\dae2d","\dae2e","\dae2f",  # ; LVT # Lo  [27] HANGUL SYLLABLE GYIG..HANGUL SYLLABLE GYIH
        "\dae31","\dae32","\dae33","\dae34","\dae35","\dae36","\dae37","\dae38","\dae39","\dae3a","\dae3b","\dae3c","\dae3d","\dae3e","\dae3f","\dae40","\dae41","\dae42","\dae43","\dae44","\dae45","\dae46","\dae47","\dae48","\dae49","\dae4a","\dae4b",  # ; LVT # Lo  [27] HANGUL SYLLABLE GIG..HANGUL SYLLABLE GIH
        "\dae4d","\dae4e","\dae4f","\dae50","\dae51","\dae52","\dae53","\dae54","\dae55","\dae56","\dae57","\dae58","\dae59","\dae5a","\dae5b","\dae5c","\dae5d","\dae5e","\dae5f","\dae60","\dae61","\dae62","\dae63","\dae64","\dae65","\dae66","\dae67",  # ; LVT # Lo  [27] HANGUL SYLLABLE GGAG..HANGUL SYLLABLE GGAH
        "\dae69","\dae6a","\dae6b","\dae6c","\dae6d","\dae6e","\dae6f","\dae70","\dae71","\dae72","\dae73","\dae74","\dae75","\dae76","\dae77","\dae78","\dae79","\dae7a","\dae7b","\dae7c","\dae7d","\dae7e","\dae7f","\dae80","\dae81","\dae82","\dae83",  # ; LVT # Lo  [27] HANGUL SYLLABLE GGAEG..HANGUL SYLLABLE GGAEH
        "\dae85","\dae86","\dae87","\dae88","\dae89","\dae8a","\dae8b","\dae8c","\dae8d","\dae8e","\dae8f","\dae90","\dae91","\dae92","\dae93","\dae94","\dae95","\dae96","\dae97","\dae98","\dae99","\dae9a","\dae9b","\dae9c","\dae9d","\dae9e","\dae9f",  # ; LVT # Lo  [27] HANGUL SYLLABLE GGYAG..HANGUL SYLLABLE GGYAH
        "\daea1","\daea2","\daea3","\daea4","\daea5","\daea6","\daea7","\daea8","\daea9","\daeaa","\daeab","\daeac","\daead","\daeae","\daeaf","\daeb0","\daeb1","\daeb2","\daeb3","\daeb4","\daeb5","\daeb6","\daeb7","\daeb8","\daeb9","\daeba","\daebb",  # ; LVT # Lo  [27] HANGUL SYLLABLE GGYAEG..HANGUL SYLLABLE GGYAEH
        "\daebd","\daebe","\daebf","\daec0","\daec1","\daec2","\daec3","\daec4","\daec5","\daec6","\daec7","\daec8","\daec9","\daeca","\daecb","\daecc","\daecd","\daece","\daecf","\daed0","\daed1","\daed2","\daed3","\daed4","\daed5","\daed6","\daed7",  # ; LVT # Lo  [27] HANGUL SYLLABLE GGEOG..HANGUL SYLLABLE GGEOH
        "\daed9","\daeda","\daedb","\daedc","\daedd","\daede","\daedf","\daee0","\daee1","\daee2","\daee3","\daee4","\daee5","\daee6","\daee7","\daee8","\daee9","\daeea","\daeeb","\daeec","\daeed","\daeee","\daeef","\daef0","\daef1","\daef2","\daef3",  # ; LVT # Lo  [27] HANGUL SYLLABLE GGEG..HANGUL SYLLABLE GGEH
        "\daef5","\daef6","\daef7","\daef8","\daef9","\daefa","\daefb","\daefc","\daefd","\daefe","\daeff","\daf00","\daf01","\daf02","\daf03","\daf04","\daf05","\daf06","\daf07","\daf08","\daf09","\daf0a","\daf0b","\daf0c","\daf0d","\daf0e","\daf0f",  # ; LVT # Lo  [27] HANGUL SYLLABLE GGYEOG..HANGUL SYLLABLE GGYEOH
        "\daf11","\daf12","\daf13","\daf14","\daf15","\daf16","\daf17","\daf18","\daf19","\daf1a","\daf1b","\daf1c","\daf1d","\daf1e","\daf1f","\daf20","\daf21","\daf22","\daf23","\daf24","\daf25","\daf26","\daf27","\daf28","\daf29","\daf2a","\daf2b",  # ; LVT # Lo  [27] HANGUL SYLLABLE GGYEG..HANGUL SYLLABLE GGYEH
        "\daf2d","\daf2e","\daf2f","\daf30","\daf31","\daf32","\daf33","\daf34","\daf35","\daf36","\daf37","\daf38","\daf39","\daf3a","\daf3b","\daf3c","\daf3d","\daf3e","\daf3f","\daf40","\daf41","\daf42","\daf43","\daf44","\daf45","\daf46","\daf47",  # ; LVT # Lo  [27] HANGUL SYLLABLE GGOG..HANGUL SYLLABLE GGOH
        "\daf49","\daf4a","\daf4b","\daf4c","\daf4d","\daf4e","\daf4f","\daf50","\daf51","\daf52","\daf53","\daf54","\daf55","\daf56","\daf57","\daf58","\daf59","\daf5a","\daf5b","\daf5c","\daf5d","\daf5e","\daf5f","\daf60","\daf61","\daf62","\daf63",  # ; LVT # Lo  [27] HANGUL SYLLABLE GGWAG..HANGUL SYLLABLE GGWAH
        "\daf65","\daf66","\daf67","\daf68","\daf69","\daf6a","\daf6b","\daf6c","\daf6d","\daf6e","\daf6f","\daf70","\daf71","\daf72","\daf73","\daf74","\daf75","\daf76","\daf77","\daf78","\daf79","\daf7a","\daf7b","\daf7c","\daf7d","\daf7e","\daf7f",  # ; LVT # Lo  [27] HANGUL SYLLABLE GGWAEG..HANGUL SYLLABLE GGWAEH
        "\daf81","\daf82","\daf83","\daf84","\daf85","\daf86","\daf87","\daf88","\daf89","\daf8a","\daf8b","\daf8c","\daf8d","\daf8e","\daf8f","\daf90","\daf91","\daf92","\daf93","\daf94","\daf95","\daf96","\daf97","\daf98","\daf99","\daf9a","\daf9b",  # ; LVT # Lo  [27] HANGUL SYLLABLE GGOEG..HANGUL SYLLABLE GGOEH
        "\daf9d","\daf9e","\daf9f","\dafa0","\dafa1","\dafa2","\dafa3","\dafa4","\dafa5","\dafa6","\dafa7","\dafa8","\dafa9","\dafaa","\dafab","\dafac","\dafad","\dafae","\dafaf","\dafb0","\dafb1","\dafb2","\dafb3","\dafb4","\dafb5","\dafb6","\dafb7",  # ; LVT # Lo  [27] HANGUL SYLLABLE GGYOG..HANGUL SYLLABLE GGYOH
        "\dafb9","\dafba","\dafbb","\dafbc","\dafbd","\dafbe","\dafbf","\dafc0","\dafc1","\dafc2","\dafc3","\dafc4","\dafc5","\dafc6","\dafc7","\dafc8","\dafc9","\dafca","\dafcb","\dafcc","\dafcd","\dafce","\dafcf","\dafd0","\dafd1","\dafd2","\dafd3",  # ; LVT # Lo  [27] HANGUL SYLLABLE GGUG..HANGUL SYLLABLE GGUH
        "\dafd5","\dafd6","\dafd7","\dafd8","\dafd9","\dafda","\dafdb","\dafdc","\dafdd","\dafde","\dafdf","\dafe0","\dafe1","\dafe2","\dafe3","\dafe4","\dafe5","\dafe6","\dafe7","\dafe8","\dafe9","\dafea","\dafeb","\dafec","\dafed","\dafee","\dafef",  # ; LVT # Lo  [27] HANGUL SYLLABLE GGWEOG..HANGUL SYLLABLE GGWEOH
        "\daff1","\daff2","\daff3","\daff4","\daff5","\daff6","\daff7","\daff8","\daff9","\daffa","\daffb","\daffc","\daffd","\daffe","\dafff","\db000","\db001","\db002","\db003","\db004","\db005","\db006","\db007","\db008","\db009","\db00a","\db00b",  # ; LVT # Lo  [27] HANGUL SYLLABLE GGWEG..HANGUL SYLLABLE GGWEH
        "\db00d","\db00e","\db00f","\db010","\db011","\db012","\db013","\db014","\db015","\db016","\db017","\db018","\db019","\db01a","\db01b","\db01c","\db01d","\db01e","\db01f","\db020","\db021","\db022","\db023","\db024","\db025","\db026","\db027",  # ; LVT # Lo  [27] HANGUL SYLLABLE GGWIG..HANGUL SYLLABLE GGWIH
        "\db029","\db02a","\db02b","\db02c","\db02d","\db02e","\db02f","\db030","\db031","\db032","\db033","\db034","\db035","\db036","\db037","\db038","\db039","\db03a","\db03b","\db03c","\db03d","\db03e","\db03f","\db040","\db041","\db042","\db043",  # ; LVT # Lo  [27] HANGUL SYLLABLE GGYUG..HANGUL SYLLABLE GGYUH
        "\db045","\db046","\db047","\db048","\db049","\db04a","\db04b","\db04c","\db04d","\db04e","\db04f","\db050","\db051","\db052","\db053","\db054","\db055","\db056","\db057","\db058","\db059","\db05a","\db05b","\db05c","\db05d","\db05e","\db05f",  # ; LVT # Lo  [27] HANGUL SYLLABLE GGEUG..HANGUL SYLLABLE GGEUH
        "\db061","\db062","\db063","\db064","\db065","\db066","\db067","\db068","\db069","\db06a","\db06b","\db06c","\db06d","\db06e","\db06f","\db070","\db071","\db072","\db073","\db074","\db075","\db076","\db077","\db078","\db079","\db07a","\db07b",  # ; LVT # Lo  [27] HANGUL SYLLABLE GGYIG..HANGUL SYLLABLE GGYIH
        "\db07d","\db07e","\db07f","\db080","\db081","\db082","\db083","\db084","\db085","\db086","\db087","\db088","\db089","\db08a","\db08b","\db08c","\db08d","\db08e","\db08f","\db090","\db091","\db092","\db093","\db094","\db095","\db096","\db097",  # ; LVT # Lo  [27] HANGUL SYLLABLE GGIG..HANGUL SYLLABLE GGIH
        "\db099","\db09a","\db09b","\db09c","\db09d","\db09e","\db09f","\db0a0","\db0a1","\db0a2","\db0a3","\db0a4","\db0a5","\db0a6","\db0a7","\db0a8","\db0a9","\db0aa","\db0ab","\db0ac","\db0ad","\db0ae","\db0af","\db0b0","\db0b1","\db0b2","\db0b3",  # ; LVT # Lo  [27] HANGUL SYLLABLE NAG..HANGUL SYLLABLE NAH
        "\db0b5","\db0b6","\db0b7","\db0b8","\db0b9","\db0ba","\db0bb","\db0bc","\db0bd","\db0be","\db0bf","\db0c0","\db0c1","\db0c2","\db0c3","\db0c4","\db0c5","\db0c6","\db0c7","\db0c8","\db0c9","\db0ca","\db0cb","\db0cc","\db0cd","\db0ce","\db0cf",  # ; LVT # Lo  [27] HANGUL SYLLABLE NAEG..HANGUL SYLLABLE NAEH
        "\db0d1","\db0d2","\db0d3","\db0d4","\db0d5","\db0d6","\db0d7","\db0d8","\db0d9","\db0da","\db0db","\db0dc","\db0dd","\db0de","\db0df","\db0e0","\db0e1","\db0e2","\db0e3","\db0e4","\db0e5","\db0e6","\db0e7","\db0e8","\db0e9","\db0ea","\db0eb",  # ; LVT # Lo  [27] HANGUL SYLLABLE NYAG..HANGUL SYLLABLE NYAH
        "\db0ed","\db0ee","\db0ef","\db0f0","\db0f1","\db0f2","\db0f3","\db0f4","\db0f5","\db0f6","\db0f7","\db0f8","\db0f9","\db0fa","\db0fb","\db0fc","\db0fd","\db0fe","\db0ff","\db100","\db101","\db102","\db103","\db104","\db105","\db106","\db107",  # ; LVT # Lo  [27] HANGUL SYLLABLE NYAEG..HANGUL SYLLABLE NYAEH
        "\db109","\db10a","\db10b","\db10c","\db10d","\db10e","\db10f","\db110","\db111","\db112","\db113","\db114","\db115","\db116","\db117","\db118","\db119","\db11a","\db11b","\db11c","\db11d","\db11e","\db11f","\db120","\db121","\db122","\db123",  # ; LVT # Lo  [27] HANGUL SYLLABLE NEOG..HANGUL SYLLABLE NEOH
        "\db125","\db126","\db127","\db128","\db129","\db12a","\db12b","\db12c","\db12d","\db12e","\db12f","\db130","\db131","\db132","\db133","\db134","\db135","\db136","\db137","\db138","\db139","\db13a","\db13b","\db13c","\db13d","\db13e","\db13f",  # ; LVT # Lo  [27] HANGUL SYLLABLE NEG..HANGUL SYLLABLE NEH
        "\db141","\db142","\db143","\db144","\db145","\db146","\db147","\db148","\db149","\db14a","\db14b","\db14c","\db14d","\db14e","\db14f","\db150","\db151","\db152","\db153","\db154","\db155","\db156","\db157","\db158","\db159","\db15a","\db15b",  # ; LVT # Lo  [27] HANGUL SYLLABLE NYEOG..HANGUL SYLLABLE NYEOH
        "\db15d","\db15e","\db15f","\db160","\db161","\db162","\db163","\db164","\db165","\db166","\db167","\db168","\db169","\db16a","\db16b","\db16c","\db16d","\db16e","\db16f","\db170","\db171","\db172","\db173","\db174","\db175","\db176","\db177",  # ; LVT # Lo  [27] HANGUL SYLLABLE NYEG..HANGUL SYLLABLE NYEH
        "\db179","\db17a","\db17b","\db17c","\db17d","\db17e","\db17f","\db180","\db181","\db182","\db183","\db184","\db185","\db186","\db187","\db188","\db189","\db18a","\db18b","\db18c","\db18d","\db18e","\db18f","\db190","\db191","\db192","\db193",  # ; LVT # Lo  [27] HANGUL SYLLABLE NOG..HANGUL SYLLABLE NOH
        "\db195","\db196","\db197","\db198","\db199","\db19a","\db19b","\db19c","\db19d","\db19e","\db19f","\db1a0","\db1a1","\db1a2","\db1a3","\db1a4","\db1a5","\db1a6","\db1a7","\db1a8","\db1a9","\db1aa","\db1ab","\db1ac","\db1ad","\db1ae","\db1af",  # ; LVT # Lo  [27] HANGUL SYLLABLE NWAG..HANGUL SYLLABLE NWAH
        "\db1b1","\db1b2","\db1b3","\db1b4","\db1b5","\db1b6","\db1b7","\db1b8","\db1b9","\db1ba","\db1bb","\db1bc","\db1bd","\db1be","\db1bf","\db1c0","\db1c1","\db1c2","\db1c3","\db1c4","\db1c5","\db1c6","\db1c7","\db1c8","\db1c9","\db1ca","\db1cb",  # ; LVT # Lo  [27] HANGUL SYLLABLE NWAEG..HANGUL SYLLABLE NWAEH
        "\db1cd","\db1ce","\db1cf","\db1d0","\db1d1","\db1d2","\db1d3","\db1d4","\db1d5","\db1d6","\db1d7","\db1d8","\db1d9","\db1da","\db1db","\db1dc","\db1dd","\db1de","\db1df","\db1e0","\db1e1","\db1e2","\db1e3","\db1e4","\db1e5","\db1e6","\db1e7",  # ; LVT # Lo  [27] HANGUL SYLLABLE NOEG..HANGUL SYLLABLE NOEH
        "\db1e9","\db1ea","\db1eb","\db1ec","\db1ed","\db1ee","\db1ef","\db1f0","\db1f1","\db1f2","\db1f3","\db1f4","\db1f5","\db1f6","\db1f7","\db1f8","\db1f9","\db1fa","\db1fb","\db1fc","\db1fd","\db1fe","\db1ff","\db200","\db201","\db202","\db203",  # ; LVT # Lo  [27] HANGUL SYLLABLE NYOG..HANGUL SYLLABLE NYOH
        "\db205","\db206","\db207","\db208","\db209","\db20a","\db20b","\db20c","\db20d","\db20e","\db20f","\db210","\db211","\db212","\db213","\db214","\db215","\db216","\db217","\db218","\db219","\db21a","\db21b","\db21c","\db21d","\db21e","\db21f",  # ; LVT # Lo  [27] HANGUL SYLLABLE NUG..HANGUL SYLLABLE NUH
        "\db221","\db222","\db223","\db224","\db225","\db226","\db227","\db228","\db229","\db22a","\db22b","\db22c","\db22d","\db22e","\db22f","\db230","\db231","\db232","\db233","\db234","\db235","\db236","\db237","\db238","\db239","\db23a","\db23b",  # ; LVT # Lo  [27] HANGUL SYLLABLE NWEOG..HANGUL SYLLABLE NWEOH
        "\db23d","\db23e","\db23f","\db240","\db241","\db242","\db243","\db244","\db245","\db246","\db247","\db248","\db249","\db24a","\db24b","\db24c","\db24d","\db24e","\db24f","\db250","\db251","\db252","\db253","\db254","\db255","\db256","\db257",  # ; LVT # Lo  [27] HANGUL SYLLABLE NWEG..HANGUL SYLLABLE NWEH
        "\db259","\db25a","\db25b","\db25c","\db25d","\db25e","\db25f","\db260","\db261","\db262","\db263","\db264","\db265","\db266","\db267","\db268","\db269","\db26a","\db26b","\db26c","\db26d","\db26e","\db26f","\db270","\db271","\db272","\db273",  # ; LVT # Lo  [27] HANGUL SYLLABLE NWIG..HANGUL SYLLABLE NWIH
        "\db275","\db276","\db277","\db278","\db279","\db27a","\db27b","\db27c","\db27d","\db27e","\db27f","\db280","\db281","\db282","\db283","\db284","\db285","\db286","\db287","\db288","\db289","\db28a","\db28b","\db28c","\db28d","\db28e","\db28f",  # ; LVT # Lo  [27] HANGUL SYLLABLE NYUG..HANGUL SYLLABLE NYUH
        "\db291","\db292","\db293","\db294","\db295","\db296","\db297","\db298","\db299","\db29a","\db29b","\db29c","\db29d","\db29e","\db29f","\db2a0","\db2a1","\db2a2","\db2a3","\db2a4","\db2a5","\db2a6","\db2a7","\db2a8","\db2a9","\db2aa","\db2ab",  # ; LVT # Lo  [27] HANGUL SYLLABLE NEUG..HANGUL SYLLABLE NEUH
        "\db2ad","\db2ae","\db2af","\db2b0","\db2b1","\db2b2","\db2b3","\db2b4","\db2b5","\db2b6","\db2b7","\db2b8","\db2b9","\db2ba","\db2bb","\db2bc","\db2bd","\db2be","\db2bf","\db2c0","\db2c1","\db2c2","\db2c3","\db2c4","\db2c5","\db2c6","\db2c7",  # ; LVT # Lo  [27] HANGUL SYLLABLE NYIG..HANGUL SYLLABLE NYIH
        "\db2c9","\db2ca","\db2cb","\db2cc","\db2cd","\db2ce","\db2cf","\db2d0","\db2d1","\db2d2","\db2d3","\db2d4","\db2d5","\db2d6","\db2d7","\db2d8","\db2d9","\db2da","\db2db","\db2dc","\db2dd","\db2de","\db2df","\db2e0","\db2e1","\db2e2","\db2e3",  # ; LVT # Lo  [27] HANGUL SYLLABLE NIG..HANGUL SYLLABLE NIH
        "\db2e5","\db2e6","\db2e7","\db2e8","\db2e9","\db2ea","\db2eb","\db2ec","\db2ed","\db2ee","\db2ef","\db2f0","\db2f1","\db2f2","\db2f3","\db2f4","\db2f5","\db2f6","\db2f7","\db2f8","\db2f9","\db2fa","\db2fb","\db2fc","\db2fd","\db2fe","\db2ff",  # ; LVT # Lo  [27] HANGUL SYLLABLE DAG..HANGUL SYLLABLE DAH
        "\db301","\db302","\db303","\db304","\db305","\db306","\db307","\db308","\db309","\db30a","\db30b","\db30c","\db30d","\db30e","\db30f","\db310","\db311","\db312","\db313","\db314","\db315","\db316","\db317","\db318","\db319","\db31a","\db31b",  # ; LVT # Lo  [27] HANGUL SYLLABLE DAEG..HANGUL SYLLABLE DAEH
        "\db31d","\db31e","\db31f","\db320","\db321","\db322","\db323","\db324","\db325","\db326","\db327","\db328","\db329","\db32a","\db32b","\db32c","\db32d","\db32e","\db32f","\db330","\db331","\db332","\db333","\db334","\db335","\db336","\db337",  # ; LVT # Lo  [27] HANGUL SYLLABLE DYAG..HANGUL SYLLABLE DYAH
        "\db339","\db33a","\db33b","\db33c","\db33d","\db33e","\db33f","\db340","\db341","\db342","\db343","\db344","\db345","\db346","\db347","\db348","\db349","\db34a","\db34b","\db34c","\db34d","\db34e","\db34f","\db350","\db351","\db352","\db353",  # ; LVT # Lo  [27] HANGUL SYLLABLE DYAEG..HANGUL SYLLABLE DYAEH
        "\db355","\db356","\db357","\db358","\db359","\db35a","\db35b","\db35c","\db35d","\db35e","\db35f","\db360","\db361","\db362","\db363","\db364","\db365","\db366","\db367","\db368","\db369","\db36a","\db36b","\db36c","\db36d","\db36e","\db36f",  # ; LVT # Lo  [27] HANGUL SYLLABLE DEOG..HANGUL SYLLABLE DEOH
        "\db371","\db372","\db373","\db374","\db375","\db376","\db377","\db378","\db379","\db37a","\db37b","\db37c","\db37d","\db37e","\db37f","\db380","\db381","\db382","\db383","\db384","\db385","\db386","\db387","\db388","\db389","\db38a","\db38b",  # ; LVT # Lo  [27] HANGUL SYLLABLE DEG..HANGUL SYLLABLE DEH
        "\db38d","\db38e","\db38f","\db390","\db391","\db392","\db393","\db394","\db395","\db396","\db397","\db398","\db399","\db39a","\db39b","\db39c","\db39d","\db39e","\db39f","\db3a0","\db3a1","\db3a2","\db3a3","\db3a4","\db3a5","\db3a6","\db3a7",  # ; LVT # Lo  [27] HANGUL SYLLABLE DYEOG..HANGUL SYLLABLE DYEOH
        "\db3a9","\db3aa","\db3ab","\db3ac","\db3ad","\db3ae","\db3af","\db3b0","\db3b1","\db3b2","\db3b3","\db3b4","\db3b5","\db3b6","\db3b7","\db3b8","\db3b9","\db3ba","\db3bb","\db3bc","\db3bd","\db3be","\db3bf","\db3c0","\db3c1","\db3c2","\db3c3",  # ; LVT # Lo  [27] HANGUL SYLLABLE DYEG..HANGUL SYLLABLE DYEH
        "\db3c5","\db3c6","\db3c7","\db3c8","\db3c9","\db3ca","\db3cb","\db3cc","\db3cd","\db3ce","\db3cf","\db3d0","\db3d1","\db3d2","\db3d3","\db3d4","\db3d5","\db3d6","\db3d7","\db3d8","\db3d9","\db3da","\db3db","\db3dc","\db3dd","\db3de","\db3df",  # ; LVT # Lo  [27] HANGUL SYLLABLE DOG..HANGUL SYLLABLE DOH
        "\db3e1","\db3e2","\db3e3","\db3e4","\db3e5","\db3e6","\db3e7","\db3e8","\db3e9","\db3ea","\db3eb","\db3ec","\db3ed","\db3ee","\db3ef","\db3f0","\db3f1","\db3f2","\db3f3","\db3f4","\db3f5","\db3f6","\db3f7","\db3f8","\db3f9","\db3fa","\db3fb",  # ; LVT # Lo  [27] HANGUL SYLLABLE DWAG..HANGUL SYLLABLE DWAH
        "\db3fd","\db3fe","\db3ff","\db400","\db401","\db402","\db403","\db404","\db405","\db406","\db407","\db408","\db409","\db40a","\db40b","\db40c","\db40d","\db40e","\db40f","\db410","\db411","\db412","\db413","\db414","\db415","\db416","\db417",  # ; LVT # Lo  [27] HANGUL SYLLABLE DWAEG..HANGUL SYLLABLE DWAEH
        "\db419","\db41a","\db41b","\db41c","\db41d","\db41e","\db41f","\db420","\db421","\db422","\db423","\db424","\db425","\db426","\db427","\db428","\db429","\db42a","\db42b","\db42c","\db42d","\db42e","\db42f","\db430","\db431","\db432","\db433",  # ; LVT # Lo  [27] HANGUL SYLLABLE DOEG..HANGUL SYLLABLE DOEH
        "\db435","\db436","\db437","\db438","\db439","\db43a","\db43b","\db43c","\db43d","\db43e","\db43f","\db440","\db441","\db442","\db443","\db444","\db445","\db446","\db447","\db448","\db449","\db44a","\db44b","\db44c","\db44d","\db44e","\db44f",  # ; LVT # Lo  [27] HANGUL SYLLABLE DYOG..HANGUL SYLLABLE DYOH
        "\db451","\db452","\db453","\db454","\db455","\db456","\db457","\db458","\db459","\db45a","\db45b","\db45c","\db45d","\db45e","\db45f","\db460","\db461","\db462","\db463","\db464","\db465","\db466","\db467","\db468","\db469","\db46a","\db46b",  # ; LVT # Lo  [27] HANGUL SYLLABLE DUG..HANGUL SYLLABLE DUH
        "\db46d","\db46e","\db46f","\db470","\db471","\db472","\db473","\db474","\db475","\db476","\db477","\db478","\db479","\db47a","\db47b","\db47c","\db47d","\db47e","\db47f","\db480","\db481","\db482","\db483","\db484","\db485","\db486","\db487",  # ; LVT # Lo  [27] HANGUL SYLLABLE DWEOG..HANGUL SYLLABLE DWEOH
        "\db489","\db48a","\db48b","\db48c","\db48d","\db48e","\db48f","\db490","\db491","\db492","\db493","\db494","\db495","\db496","\db497","\db498","\db499","\db49a","\db49b","\db49c","\db49d","\db49e","\db49f","\db4a0","\db4a1","\db4a2","\db4a3",  # ; LVT # Lo  [27] HANGUL SYLLABLE DWEG..HANGUL SYLLABLE DWEH
        "\db4a5","\db4a6","\db4a7","\db4a8","\db4a9","\db4aa","\db4ab","\db4ac","\db4ad","\db4ae","\db4af","\db4b0","\db4b1","\db4b2","\db4b3","\db4b4","\db4b5","\db4b6","\db4b7","\db4b8","\db4b9","\db4ba","\db4bb","\db4bc","\db4bd","\db4be","\db4bf",  # ; LVT # Lo  [27] HANGUL SYLLABLE DWIG..HANGUL SYLLABLE DWIH
        "\db4c1","\db4c2","\db4c3","\db4c4","\db4c5","\db4c6","\db4c7","\db4c8","\db4c9","\db4ca","\db4cb","\db4cc","\db4cd","\db4ce","\db4cf","\db4d0","\db4d1","\db4d2","\db4d3","\db4d4","\db4d5","\db4d6","\db4d7","\db4d8","\db4d9","\db4da","\db4db",  # ; LVT # Lo  [27] HANGUL SYLLABLE DYUG..HANGUL SYLLABLE DYUH
        "\db4dd","\db4de","\db4df","\db4e0","\db4e1","\db4e2","\db4e3","\db4e4","\db4e5","\db4e6","\db4e7","\db4e8","\db4e9","\db4ea","\db4eb","\db4ec","\db4ed","\db4ee","\db4ef","\db4f0","\db4f1","\db4f2","\db4f3","\db4f4","\db4f5","\db4f6","\db4f7",  # ; LVT # Lo  [27] HANGUL SYLLABLE DEUG..HANGUL SYLLABLE DEUH
        "\db4f9","\db4fa","\db4fb","\db4fc","\db4fd","\db4fe","\db4ff","\db500","\db501","\db502","\db503","\db504","\db505","\db506","\db507","\db508","\db509","\db50a","\db50b","\db50c","\db50d","\db50e","\db50f","\db510","\db511","\db512","\db513",  # ; LVT # Lo  [27] HANGUL SYLLABLE DYIG..HANGUL SYLLABLE DYIH
        "\db515","\db516","\db517","\db518","\db519","\db51a","\db51b","\db51c","\db51d","\db51e","\db51f","\db520","\db521","\db522","\db523","\db524","\db525","\db526","\db527","\db528","\db529","\db52a","\db52b","\db52c","\db52d","\db52e","\db52f",  # ; LVT # Lo  [27] HANGUL SYLLABLE DIG..HANGUL SYLLABLE DIH
        "\db531","\db532","\db533","\db534","\db535","\db536","\db537","\db538","\db539","\db53a","\db53b","\db53c","\db53d","\db53e","\db53f","\db540","\db541","\db542","\db543","\db544","\db545","\db546","\db547","\db548","\db549","\db54a","\db54b",  # ; LVT # Lo  [27] HANGUL SYLLABLE DDAG..HANGUL SYLLABLE DDAH
        "\db54d","\db54e","\db54f","\db550","\db551","\db552","\db553","\db554","\db555","\db556","\db557","\db558","\db559","\db55a","\db55b","\db55c","\db55d","\db55e","\db55f","\db560","\db561","\db562","\db563","\db564","\db565","\db566","\db567",  # ; LVT # Lo  [27] HANGUL SYLLABLE DDAEG..HANGUL SYLLABLE DDAEH
        "\db569","\db56a","\db56b","\db56c","\db56d","\db56e","\db56f","\db570","\db571","\db572","\db573","\db574","\db575","\db576","\db577","\db578","\db579","\db57a","\db57b","\db57c","\db57d","\db57e","\db57f","\db580","\db581","\db582","\db583",  # ; LVT # Lo  [27] HANGUL SYLLABLE DDYAG..HANGUL SYLLABLE DDYAH
        "\db585","\db586","\db587","\db588","\db589","\db58a","\db58b","\db58c","\db58d","\db58e","\db58f","\db590","\db591","\db592","\db593","\db594","\db595","\db596","\db597","\db598","\db599","\db59a","\db59b","\db59c","\db59d","\db59e","\db59f",  # ; LVT # Lo  [27] HANGUL SYLLABLE DDYAEG..HANGUL SYLLABLE DDYAEH
        "\db5a1","\db5a2","\db5a3","\db5a4","\db5a5","\db5a6","\db5a7","\db5a8","\db5a9","\db5aa","\db5ab","\db5ac","\db5ad","\db5ae","\db5af","\db5b0","\db5b1","\db5b2","\db5b3","\db5b4","\db5b5","\db5b6","\db5b7","\db5b8","\db5b9","\db5ba","\db5bb",  # ; LVT # Lo  [27] HANGUL SYLLABLE DDEOG..HANGUL SYLLABLE DDEOH
        "\db5bd","\db5be","\db5bf","\db5c0","\db5c1","\db5c2","\db5c3","\db5c4","\db5c5","\db5c6","\db5c7","\db5c8","\db5c9","\db5ca","\db5cb","\db5cc","\db5cd","\db5ce","\db5cf","\db5d0","\db5d1","\db5d2","\db5d3","\db5d4","\db5d5","\db5d6","\db5d7",  # ; LVT # Lo  [27] HANGUL SYLLABLE DDEG..HANGUL SYLLABLE DDEH
        "\db5d9","\db5da","\db5db","\db5dc","\db5dd","\db5de","\db5df","\db5e0","\db5e1","\db5e2","\db5e3","\db5e4","\db5e5","\db5e6","\db5e7","\db5e8","\db5e9","\db5ea","\db5eb","\db5ec","\db5ed","\db5ee","\db5ef","\db5f0","\db5f1","\db5f2","\db5f3",  # ; LVT # Lo  [27] HANGUL SYLLABLE DDYEOG..HANGUL SYLLABLE DDYEOH
        "\db5f5","\db5f6","\db5f7","\db5f8","\db5f9","\db5fa","\db5fb","\db5fc","\db5fd","\db5fe","\db5ff","\db600","\db601","\db602","\db603","\db604","\db605","\db606","\db607","\db608","\db609","\db60a","\db60b","\db60c","\db60d","\db60e","\db60f",  # ; LVT # Lo  [27] HANGUL SYLLABLE DDYEG..HANGUL SYLLABLE DDYEH
        "\db611","\db612","\db613","\db614","\db615","\db616","\db617","\db618","\db619","\db61a","\db61b","\db61c","\db61d","\db61e","\db61f","\db620","\db621","\db622","\db623","\db624","\db625","\db626","\db627","\db628","\db629","\db62a","\db62b",  # ; LVT # Lo  [27] HANGUL SYLLABLE DDOG..HANGUL SYLLABLE DDOH
        "\db62d","\db62e","\db62f","\db630","\db631","\db632","\db633","\db634","\db635","\db636","\db637","\db638","\db639","\db63a","\db63b","\db63c","\db63d","\db63e","\db63f","\db640","\db641","\db642","\db643","\db644","\db645","\db646","\db647",  # ; LVT # Lo  [27] HANGUL SYLLABLE DDWAG..HANGUL SYLLABLE DDWAH
        "\db649","\db64a","\db64b","\db64c","\db64d","\db64e","\db64f","\db650","\db651","\db652","\db653","\db654","\db655","\db656","\db657","\db658","\db659","\db65a","\db65b","\db65c","\db65d","\db65e","\db65f","\db660","\db661","\db662","\db663",  # ; LVT # Lo  [27] HANGUL SYLLABLE DDWAEG..HANGUL SYLLABLE DDWAEH
        "\db665","\db666","\db667","\db668","\db669","\db66a","\db66b","\db66c","\db66d","\db66e","\db66f","\db670","\db671","\db672","\db673","\db674","\db675","\db676","\db677","\db678","\db679","\db67a","\db67b","\db67c","\db67d","\db67e","\db67f",  # ; LVT # Lo  [27] HANGUL SYLLABLE DDOEG..HANGUL SYLLABLE DDOEH
        "\db681","\db682","\db683","\db684","\db685","\db686","\db687","\db688","\db689","\db68a","\db68b","\db68c","\db68d","\db68e","\db68f","\db690","\db691","\db692","\db693","\db694","\db695","\db696","\db697","\db698","\db699","\db69a","\db69b",  # ; LVT # Lo  [27] HANGUL SYLLABLE DDYOG..HANGUL SYLLABLE DDYOH
        "\db69d","\db69e","\db69f","\db6a0","\db6a1","\db6a2","\db6a3","\db6a4","\db6a5","\db6a6","\db6a7","\db6a8","\db6a9","\db6aa","\db6ab","\db6ac","\db6ad","\db6ae","\db6af","\db6b0","\db6b1","\db6b2","\db6b3","\db6b4","\db6b5","\db6b6","\db6b7",  # ; LVT # Lo  [27] HANGUL SYLLABLE DDUG..HANGUL SYLLABLE DDUH
        "\db6b9","\db6ba","\db6bb","\db6bc","\db6bd","\db6be","\db6bf","\db6c0","\db6c1","\db6c2","\db6c3","\db6c4","\db6c5","\db6c6","\db6c7","\db6c8","\db6c9","\db6ca","\db6cb","\db6cc","\db6cd","\db6ce","\db6cf","\db6d0","\db6d1","\db6d2","\db6d3",  # ; LVT # Lo  [27] HANGUL SYLLABLE DDWEOG..HANGUL SYLLABLE DDWEOH
        "\db6d5","\db6d6","\db6d7","\db6d8","\db6d9","\db6da","\db6db","\db6dc","\db6dd","\db6de","\db6df","\db6e0","\db6e1","\db6e2","\db6e3","\db6e4","\db6e5","\db6e6","\db6e7","\db6e8","\db6e9","\db6ea","\db6eb","\db6ec","\db6ed","\db6ee","\db6ef",  # ; LVT # Lo  [27] HANGUL SYLLABLE DDWEG..HANGUL SYLLABLE DDWEH
        "\db6f1","\db6f2","\db6f3","\db6f4","\db6f5","\db6f6","\db6f7","\db6f8","\db6f9","\db6fa","\db6fb","\db6fc","\db6fd","\db6fe","\db6ff","\db700","\db701","\db702","\db703","\db704","\db705","\db706","\db707","\db708","\db709","\db70a","\db70b",  # ; LVT # Lo  [27] HANGUL SYLLABLE DDWIG..HANGUL SYLLABLE DDWIH
        "\db70d","\db70e","\db70f","\db710","\db711","\db712","\db713","\db714","\db715","\db716","\db717","\db718","\db719","\db71a","\db71b","\db71c","\db71d","\db71e","\db71f","\db720","\db721","\db722","\db723","\db724","\db725","\db726","\db727",  # ; LVT # Lo  [27] HANGUL SYLLABLE DDYUG..HANGUL SYLLABLE DDYUH
        "\db729","\db72a","\db72b","\db72c","\db72d","\db72e","\db72f","\db730","\db731","\db732","\db733","\db734","\db735","\db736","\db737","\db738","\db739","\db73a","\db73b","\db73c","\db73d","\db73e","\db73f","\db740","\db741","\db742","\db743",  # ; LVT # Lo  [27] HANGUL SYLLABLE DDEUG..HANGUL SYLLABLE DDEUH
        "\db745","\db746","\db747","\db748","\db749","\db74a","\db74b","\db74c","\db74d","\db74e","\db74f","\db750","\db751","\db752","\db753","\db754","\db755","\db756","\db757","\db758","\db759","\db75a","\db75b","\db75c","\db75d","\db75e","\db75f",  # ; LVT # Lo  [27] HANGUL SYLLABLE DDYIG..HANGUL SYLLABLE DDYIH
        "\db761","\db762","\db763","\db764","\db765","\db766","\db767","\db768","\db769","\db76a","\db76b","\db76c","\db76d","\db76e","\db76f","\db770","\db771","\db772","\db773","\db774","\db775","\db776","\db777","\db778","\db779","\db77a","\db77b",  # ; LVT # Lo  [27] HANGUL SYLLABLE DDIG..HANGUL SYLLABLE DDIH
        "\db77d","\db77e","\db77f","\db780","\db781","\db782","\db783","\db784","\db785","\db786","\db787","\db788","\db789","\db78a","\db78b","\db78c","\db78d","\db78e","\db78f","\db790","\db791","\db792","\db793","\db794","\db795","\db796","\db797",  # ; LVT # Lo  [27] HANGUL SYLLABLE RAG..HANGUL SYLLABLE RAH
        "\db799","\db79a","\db79b","\db79c","\db79d","\db79e","\db79f","\db7a0","\db7a1","\db7a2","\db7a3","\db7a4","\db7a5","\db7a6","\db7a7","\db7a8","\db7a9","\db7aa","\db7ab","\db7ac","\db7ad","\db7ae","\db7af","\db7b0","\db7b1","\db7b2","\db7b3",  # ; LVT # Lo  [27] HANGUL SYLLABLE RAEG..HANGUL SYLLABLE RAEH
        "\db7b5","\db7b6","\db7b7","\db7b8","\db7b9","\db7ba","\db7bb","\db7bc","\db7bd","\db7be","\db7bf","\db7c0","\db7c1","\db7c2","\db7c3","\db7c4","\db7c5","\db7c6","\db7c7","\db7c8","\db7c9","\db7ca","\db7cb","\db7cc","\db7cd","\db7ce","\db7cf",  # ; LVT # Lo  [27] HANGUL SYLLABLE RYAG..HANGUL SYLLABLE RYAH
        "\db7d1","\db7d2","\db7d3","\db7d4","\db7d5","\db7d6","\db7d7","\db7d8","\db7d9","\db7da","\db7db","\db7dc","\db7dd","\db7de","\db7df","\db7e0","\db7e1","\db7e2","\db7e3","\db7e4","\db7e5","\db7e6","\db7e7","\db7e8","\db7e9","\db7ea","\db7eb",  # ; LVT # Lo  [27] HANGUL SYLLABLE RYAEG..HANGUL SYLLABLE RYAEH
        "\db7ed","\db7ee","\db7ef","\db7f0","\db7f1","\db7f2","\db7f3","\db7f4","\db7f5","\db7f6","\db7f7","\db7f8","\db7f9","\db7fa","\db7fb","\db7fc","\db7fd","\db7fe","\db7ff","\db800","\db801","\db802","\db803","\db804","\db805","\db806","\db807",  # ; LVT # Lo  [27] HANGUL SYLLABLE REOG..HANGUL SYLLABLE REOH
        "\db809","\db80a","\db80b","\db80c","\db80d","\db80e","\db80f","\db810","\db811","\db812","\db813","\db814","\db815","\db816","\db817","\db818","\db819","\db81a","\db81b","\db81c","\db81d","\db81e","\db81f","\db820","\db821","\db822","\db823",  # ; LVT # Lo  [27] HANGUL SYLLABLE REG..HANGUL SYLLABLE REH
        "\db825","\db826","\db827","\db828","\db829","\db82a","\db82b","\db82c","\db82d","\db82e","\db82f","\db830","\db831","\db832","\db833","\db834","\db835","\db836","\db837","\db838","\db839","\db83a","\db83b","\db83c","\db83d","\db83e","\db83f",  # ; LVT # Lo  [27] HANGUL SYLLABLE RYEOG..HANGUL SYLLABLE RYEOH
        "\db841","\db842","\db843","\db844","\db845","\db846","\db847","\db848","\db849","\db84a","\db84b","\db84c","\db84d","\db84e","\db84f","\db850","\db851","\db852","\db853","\db854","\db855","\db856","\db857","\db858","\db859","\db85a","\db85b",  # ; LVT # Lo  [27] HANGUL SYLLABLE RYEG..HANGUL SYLLABLE RYEH
        "\db85d","\db85e","\db85f","\db860","\db861","\db862","\db863","\db864","\db865","\db866","\db867","\db868","\db869","\db86a","\db86b","\db86c","\db86d","\db86e","\db86f","\db870","\db871","\db872","\db873","\db874","\db875","\db876","\db877",  # ; LVT # Lo  [27] HANGUL SYLLABLE ROG..HANGUL SYLLABLE ROH
        "\db879","\db87a","\db87b","\db87c","\db87d","\db87e","\db87f","\db880","\db881","\db882","\db883","\db884","\db885","\db886","\db887","\db888","\db889","\db88a","\db88b","\db88c","\db88d","\db88e","\db88f","\db890","\db891","\db892","\db893",  # ; LVT # Lo  [27] HANGUL SYLLABLE RWAG..HANGUL SYLLABLE RWAH
        "\db895","\db896","\db897","\db898","\db899","\db89a","\db89b","\db89c","\db89d","\db89e","\db89f","\db8a0","\db8a1","\db8a2","\db8a3","\db8a4","\db8a5","\db8a6","\db8a7","\db8a8","\db8a9","\db8aa","\db8ab","\db8ac","\db8ad","\db8ae","\db8af",  # ; LVT # Lo  [27] HANGUL SYLLABLE RWAEG..HANGUL SYLLABLE RWAEH
        "\db8b1","\db8b2","\db8b3","\db8b4","\db8b5","\db8b6","\db8b7","\db8b8","\db8b9","\db8ba","\db8bb","\db8bc","\db8bd","\db8be","\db8bf","\db8c0","\db8c1","\db8c2","\db8c3","\db8c4","\db8c5","\db8c6","\db8c7","\db8c8","\db8c9","\db8ca","\db8cb",  # ; LVT # Lo  [27] HANGUL SYLLABLE ROEG..HANGUL SYLLABLE ROEH
        "\db8cd","\db8ce","\db8cf","\db8d0","\db8d1","\db8d2","\db8d3","\db8d4","\db8d5","\db8d6","\db8d7","\db8d8","\db8d9","\db8da","\db8db","\db8dc","\db8dd","\db8de","\db8df","\db8e0","\db8e1","\db8e2","\db8e3","\db8e4","\db8e5","\db8e6","\db8e7",  # ; LVT # Lo  [27] HANGUL SYLLABLE RYOG..HANGUL SYLLABLE RYOH
        "\db8e9","\db8ea","\db8eb","\db8ec","\db8ed","\db8ee","\db8ef","\db8f0","\db8f1","\db8f2","\db8f3","\db8f4","\db8f5","\db8f6","\db8f7","\db8f8","\db8f9","\db8fa","\db8fb","\db8fc","\db8fd","\db8fe","\db8ff","\db900","\db901","\db902","\db903",  # ; LVT # Lo  [27] HANGUL SYLLABLE RUG..HANGUL SYLLABLE RUH
        "\db905","\db906","\db907","\db908","\db909","\db90a","\db90b","\db90c","\db90d","\db90e","\db90f","\db910","\db911","\db912","\db913","\db914","\db915","\db916","\db917","\db918","\db919","\db91a","\db91b","\db91c","\db91d","\db91e","\db91f",  # ; LVT # Lo  [27] HANGUL SYLLABLE RWEOG..HANGUL SYLLABLE RWEOH
        "\db921","\db922","\db923","\db924","\db925","\db926","\db927","\db928","\db929","\db92a","\db92b","\db92c","\db92d","\db92e","\db92f","\db930","\db931","\db932","\db933","\db934","\db935","\db936","\db937","\db938","\db939","\db93a","\db93b",  # ; LVT # Lo  [27] HANGUL SYLLABLE RWEG..HANGUL SYLLABLE RWEH
        "\db93d","\db93e","\db93f","\db940","\db941","\db942","\db943","\db944","\db945","\db946","\db947","\db948","\db949","\db94a","\db94b","\db94c","\db94d","\db94e","\db94f","\db950","\db951","\db952","\db953","\db954","\db955","\db956","\db957",  # ; LVT # Lo  [27] HANGUL SYLLABLE RWIG..HANGUL SYLLABLE RWIH
        "\db959","\db95a","\db95b","\db95c","\db95d","\db95e","\db95f","\db960","\db961","\db962","\db963","\db964","\db965","\db966","\db967","\db968","\db969","\db96a","\db96b","\db96c","\db96d","\db96e","\db96f","\db970","\db971","\db972","\db973",  # ; LVT # Lo  [27] HANGUL SYLLABLE RYUG..HANGUL SYLLABLE RYUH
        "\db975","\db976","\db977","\db978","\db979","\db97a","\db97b","\db97c","\db97d","\db97e","\db97f","\db980","\db981","\db982","\db983","\db984","\db985","\db986","\db987","\db988","\db989","\db98a","\db98b","\db98c","\db98d","\db98e","\db98f",  # ; LVT # Lo  [27] HANGUL SYLLABLE REUG..HANGUL SYLLABLE REUH
        "\db991","\db992","\db993","\db994","\db995","\db996","\db997","\db998","\db999","\db99a","\db99b","\db99c","\db99d","\db99e","\db99f","\db9a0","\db9a1","\db9a2","\db9a3","\db9a4","\db9a5","\db9a6","\db9a7","\db9a8","\db9a9","\db9aa","\db9ab",  # ; LVT # Lo  [27] HANGUL SYLLABLE RYIG..HANGUL SYLLABLE RYIH
        "\db9ad","\db9ae","\db9af","\db9b0","\db9b1","\db9b2","\db9b3","\db9b4","\db9b5","\db9b6","\db9b7","\db9b8","\db9b9","\db9ba","\db9bb","\db9bc","\db9bd","\db9be","\db9bf","\db9c0","\db9c1","\db9c2","\db9c3","\db9c4","\db9c5","\db9c6","\db9c7",  # ; LVT # Lo  [27] HANGUL SYLLABLE RIG..HANGUL SYLLABLE RIH
        "\db9c9","\db9ca","\db9cb","\db9cc","\db9cd","\db9ce","\db9cf","\db9d0","\db9d1","\db9d2","\db9d3","\db9d4","\db9d5","\db9d6","\db9d7","\db9d8","\db9d9","\db9da","\db9db","\db9dc","\db9dd","\db9de","\db9df","\db9e0","\db9e1","\db9e2","\db9e3",  # ; LVT # Lo  [27] HANGUL SYLLABLE MAG..HANGUL SYLLABLE MAH
        "\db9e5","\db9e6","\db9e7","\db9e8","\db9e9","\db9ea","\db9eb","\db9ec","\db9ed","\db9ee","\db9ef","\db9f0","\db9f1","\db9f2","\db9f3","\db9f4","\db9f5","\db9f6","\db9f7","\db9f8","\db9f9","\db9fa","\db9fb","\db9fc","\db9fd","\db9fe","\db9ff",  # ; LVT # Lo  [27] HANGUL SYLLABLE MAEG..HANGUL SYLLABLE MAEH
        "\dba01","\dba02","\dba03","\dba04","\dba05","\dba06","\dba07","\dba08","\dba09","\dba0a","\dba0b","\dba0c","\dba0d","\dba0e","\dba0f","\dba10","\dba11","\dba12","\dba13","\dba14","\dba15","\dba16","\dba17","\dba18","\dba19","\dba1a","\dba1b",  # ; LVT # Lo  [27] HANGUL SYLLABLE MYAG..HANGUL SYLLABLE MYAH
        "\dba1d","\dba1e","\dba1f","\dba20","\dba21","\dba22","\dba23","\dba24","\dba25","\dba26","\dba27","\dba28","\dba29","\dba2a","\dba2b","\dba2c","\dba2d","\dba2e","\dba2f","\dba30","\dba31","\dba32","\dba33","\dba34","\dba35","\dba36","\dba37",  # ; LVT # Lo  [27] HANGUL SYLLABLE MYAEG..HANGUL SYLLABLE MYAEH
        "\dba39","\dba3a","\dba3b","\dba3c","\dba3d","\dba3e","\dba3f","\dba40","\dba41","\dba42","\dba43","\dba44","\dba45","\dba46","\dba47","\dba48","\dba49","\dba4a","\dba4b","\dba4c","\dba4d","\dba4e","\dba4f","\dba50","\dba51","\dba52","\dba53",  # ; LVT # Lo  [27] HANGUL SYLLABLE MEOG..HANGUL SYLLABLE MEOH
        "\dba55","\dba56","\dba57","\dba58","\dba59","\dba5a","\dba5b","\dba5c","\dba5d","\dba5e","\dba5f","\dba60","\dba61","\dba62","\dba63","\dba64","\dba65","\dba66","\dba67","\dba68","\dba69","\dba6a","\dba6b","\dba6c","\dba6d","\dba6e","\dba6f",  # ; LVT # Lo  [27] HANGUL SYLLABLE MEG..HANGUL SYLLABLE MEH
        "\dba71","\dba72","\dba73","\dba74","\dba75","\dba76","\dba77","\dba78","\dba79","\dba7a","\dba7b","\dba7c","\dba7d","\dba7e","\dba7f","\dba80","\dba81","\dba82","\dba83","\dba84","\dba85","\dba86","\dba87","\dba88","\dba89","\dba8a","\dba8b",  # ; LVT # Lo  [27] HANGUL SYLLABLE MYEOG..HANGUL SYLLABLE MYEOH
        "\dba8d","\dba8e","\dba8f","\dba90","\dba91","\dba92","\dba93","\dba94","\dba95","\dba96","\dba97","\dba98","\dba99","\dba9a","\dba9b","\dba9c","\dba9d","\dba9e","\dba9f","\dbaa0","\dbaa1","\dbaa2","\dbaa3","\dbaa4","\dbaa5","\dbaa6","\dbaa7",  # ; LVT # Lo  [27] HANGUL SYLLABLE MYEG..HANGUL SYLLABLE MYEH
        "\dbaa9","\dbaaa","\dbaab","\dbaac","\dbaad","\dbaae","\dbaaf","\dbab0","\dbab1","\dbab2","\dbab3","\dbab4","\dbab5","\dbab6","\dbab7","\dbab8","\dbab9","\dbaba","\dbabb","\dbabc","\dbabd","\dbabe","\dbabf","\dbac0","\dbac1","\dbac2","\dbac3",  # ; LVT # Lo  [27] HANGUL SYLLABLE MOG..HANGUL SYLLABLE MOH
        "\dbac5","\dbac6","\dbac7","\dbac8","\dbac9","\dbaca","\dbacb","\dbacc","\dbacd","\dbace","\dbacf","\dbad0","\dbad1","\dbad2","\dbad3","\dbad4","\dbad5","\dbad6","\dbad7","\dbad8","\dbad9","\dbada","\dbadb","\dbadc","\dbadd","\dbade","\dbadf",  # ; LVT # Lo  [27] HANGUL SYLLABLE MWAG..HANGUL SYLLABLE MWAH
        "\dbae1","\dbae2","\dbae3","\dbae4","\dbae5","\dbae6","\dbae7","\dbae8","\dbae9","\dbaea","\dbaeb","\dbaec","\dbaed","\dbaee","\dbaef","\dbaf0","\dbaf1","\dbaf2","\dbaf3","\dbaf4","\dbaf5","\dbaf6","\dbaf7","\dbaf8","\dbaf9","\dbafa","\dbafb",  # ; LVT # Lo  [27] HANGUL SYLLABLE MWAEG..HANGUL SYLLABLE MWAEH
        "\dbafd","\dbafe","\dbaff","\dbb00","\dbb01","\dbb02","\dbb03","\dbb04","\dbb05","\dbb06","\dbb07","\dbb08","\dbb09","\dbb0a","\dbb0b","\dbb0c","\dbb0d","\dbb0e","\dbb0f","\dbb10","\dbb11","\dbb12","\dbb13","\dbb14","\dbb15","\dbb16","\dbb17",  # ; LVT # Lo  [27] HANGUL SYLLABLE MOEG..HANGUL SYLLABLE MOEH
        "\dbb19","\dbb1a","\dbb1b","\dbb1c","\dbb1d","\dbb1e","\dbb1f","\dbb20","\dbb21","\dbb22","\dbb23","\dbb24","\dbb25","\dbb26","\dbb27","\dbb28","\dbb29","\dbb2a","\dbb2b","\dbb2c","\dbb2d","\dbb2e","\dbb2f","\dbb30","\dbb31","\dbb32","\dbb33",  # ; LVT # Lo  [27] HANGUL SYLLABLE MYOG..HANGUL SYLLABLE MYOH
        "\dbb35","\dbb36","\dbb37","\dbb38","\dbb39","\dbb3a","\dbb3b","\dbb3c","\dbb3d","\dbb3e","\dbb3f","\dbb40","\dbb41","\dbb42","\dbb43","\dbb44","\dbb45","\dbb46","\dbb47","\dbb48","\dbb49","\dbb4a","\dbb4b","\dbb4c","\dbb4d","\dbb4e","\dbb4f",  # ; LVT # Lo  [27] HANGUL SYLLABLE MUG..HANGUL SYLLABLE MUH
        "\dbb51","\dbb52","\dbb53","\dbb54","\dbb55","\dbb56","\dbb57","\dbb58","\dbb59","\dbb5a","\dbb5b","\dbb5c","\dbb5d","\dbb5e","\dbb5f","\dbb60","\dbb61","\dbb62","\dbb63","\dbb64","\dbb65","\dbb66","\dbb67","\dbb68","\dbb69","\dbb6a","\dbb6b",  # ; LVT # Lo  [27] HANGUL SYLLABLE MWEOG..HANGUL SYLLABLE MWEOH
        "\dbb6d","\dbb6e","\dbb6f","\dbb70","\dbb71","\dbb72","\dbb73","\dbb74","\dbb75","\dbb76","\dbb77","\dbb78","\dbb79","\dbb7a","\dbb7b","\dbb7c","\dbb7d","\dbb7e","\dbb7f","\dbb80","\dbb81","\dbb82","\dbb83","\dbb84","\dbb85","\dbb86","\dbb87",  # ; LVT # Lo  [27] HANGUL SYLLABLE MWEG..HANGUL SYLLABLE MWEH
        "\dbb89","\dbb8a","\dbb8b","\dbb8c","\dbb8d","\dbb8e","\dbb8f","\dbb90","\dbb91","\dbb92","\dbb93","\dbb94","\dbb95","\dbb96","\dbb97","\dbb98","\dbb99","\dbb9a","\dbb9b","\dbb9c","\dbb9d","\dbb9e","\dbb9f","\dbba0","\dbba1","\dbba2","\dbba3",  # ; LVT # Lo  [27] HANGUL SYLLABLE MWIG..HANGUL SYLLABLE MWIH
        "\dbba5","\dbba6","\dbba7","\dbba8","\dbba9","\dbbaa","\dbbab","\dbbac","\dbbad","\dbbae","\dbbaf","\dbbb0","\dbbb1","\dbbb2","\dbbb3","\dbbb4","\dbbb5","\dbbb6","\dbbb7","\dbbb8","\dbbb9","\dbbba","\dbbbb","\dbbbc","\dbbbd","\dbbbe","\dbbbf",  # ; LVT # Lo  [27] HANGUL SYLLABLE MYUG..HANGUL SYLLABLE MYUH
        "\dbbc1","\dbbc2","\dbbc3","\dbbc4","\dbbc5","\dbbc6","\dbbc7","\dbbc8","\dbbc9","\dbbca","\dbbcb","\dbbcc","\dbbcd","\dbbce","\dbbcf","\dbbd0","\dbbd1","\dbbd2","\dbbd3","\dbbd4","\dbbd5","\dbbd6","\dbbd7","\dbbd8","\dbbd9","\dbbda","\dbbdb",  # ; LVT # Lo  [27] HANGUL SYLLABLE MEUG..HANGUL SYLLABLE MEUH
        "\dbbdd","\dbbde","\dbbdf","\dbbe0","\dbbe1","\dbbe2","\dbbe3","\dbbe4","\dbbe5","\dbbe6","\dbbe7","\dbbe8","\dbbe9","\dbbea","\dbbeb","\dbbec","\dbbed","\dbbee","\dbbef","\dbbf0","\dbbf1","\dbbf2","\dbbf3","\dbbf4","\dbbf5","\dbbf6","\dbbf7",  # ; LVT # Lo  [27] HANGUL SYLLABLE MYIG..HANGUL SYLLABLE MYIH
        "\dbbf9","\dbbfa","\dbbfb","\dbbfc","\dbbfd","\dbbfe","\dbbff","\dbc00","\dbc01","\dbc02","\dbc03","\dbc04","\dbc05","\dbc06","\dbc07","\dbc08","\dbc09","\dbc0a","\dbc0b","\dbc0c","\dbc0d","\dbc0e","\dbc0f","\dbc10","\dbc11","\dbc12","\dbc13",  # ; LVT # Lo  [27] HANGUL SYLLABLE MIG..HANGUL SYLLABLE MIH
        "\dbc15","\dbc16","\dbc17","\dbc18","\dbc19","\dbc1a","\dbc1b","\dbc1c","\dbc1d","\dbc1e","\dbc1f","\dbc20","\dbc21","\dbc22","\dbc23","\dbc24","\dbc25","\dbc26","\dbc27","\dbc28","\dbc29","\dbc2a","\dbc2b","\dbc2c","\dbc2d","\dbc2e","\dbc2f",  # ; LVT # Lo  [27] HANGUL SYLLABLE BAG..HANGUL SYLLABLE BAH
        "\dbc31","\dbc32","\dbc33","\dbc34","\dbc35","\dbc36","\dbc37","\dbc38","\dbc39","\dbc3a","\dbc3b","\dbc3c","\dbc3d","\dbc3e","\dbc3f","\dbc40","\dbc41","\dbc42","\dbc43","\dbc44","\dbc45","\dbc46","\dbc47","\dbc48","\dbc49","\dbc4a","\dbc4b",  # ; LVT # Lo  [27] HANGUL SYLLABLE BAEG..HANGUL SYLLABLE BAEH
        "\dbc4d","\dbc4e","\dbc4f","\dbc50","\dbc51","\dbc52","\dbc53","\dbc54","\dbc55","\dbc56","\dbc57","\dbc58","\dbc59","\dbc5a","\dbc5b","\dbc5c","\dbc5d","\dbc5e","\dbc5f","\dbc60","\dbc61","\dbc62","\dbc63","\dbc64","\dbc65","\dbc66","\dbc67",  # ; LVT # Lo  [27] HANGUL SYLLABLE BYAG..HANGUL SYLLABLE BYAH
        "\dbc69","\dbc6a","\dbc6b","\dbc6c","\dbc6d","\dbc6e","\dbc6f","\dbc70","\dbc71","\dbc72","\dbc73","\dbc74","\dbc75","\dbc76","\dbc77","\dbc78","\dbc79","\dbc7a","\dbc7b","\dbc7c","\dbc7d","\dbc7e","\dbc7f","\dbc80","\dbc81","\dbc82","\dbc83",  # ; LVT # Lo  [27] HANGUL SYLLABLE BYAEG..HANGUL SYLLABLE BYAEH
        "\dbc85","\dbc86","\dbc87","\dbc88","\dbc89","\dbc8a","\dbc8b","\dbc8c","\dbc8d","\dbc8e","\dbc8f","\dbc90","\dbc91","\dbc92","\dbc93","\dbc94","\dbc95","\dbc96","\dbc97","\dbc98","\dbc99","\dbc9a","\dbc9b","\dbc9c","\dbc9d","\dbc9e","\dbc9f",  # ; LVT # Lo  [27] HANGUL SYLLABLE BEOG..HANGUL SYLLABLE BEOH
        "\dbca1","\dbca2","\dbca3","\dbca4","\dbca5","\dbca6","\dbca7","\dbca8","\dbca9","\dbcaa","\dbcab","\dbcac","\dbcad","\dbcae","\dbcaf","\dbcb0","\dbcb1","\dbcb2","\dbcb3","\dbcb4","\dbcb5","\dbcb6","\dbcb7","\dbcb8","\dbcb9","\dbcba","\dbcbb",  # ; LVT # Lo  [27] HANGUL SYLLABLE BEG..HANGUL SYLLABLE BEH
        "\dbcbd","\dbcbe","\dbcbf","\dbcc0","\dbcc1","\dbcc2","\dbcc3","\dbcc4","\dbcc5","\dbcc6","\dbcc7","\dbcc8","\dbcc9","\dbcca","\dbccb","\dbccc","\dbccd","\dbcce","\dbccf","\dbcd0","\dbcd1","\dbcd2","\dbcd3","\dbcd4","\dbcd5","\dbcd6","\dbcd7",  # ; LVT # Lo  [27] HANGUL SYLLABLE BYEOG..HANGUL SYLLABLE BYEOH
        "\dbcd9","\dbcda","\dbcdb","\dbcdc","\dbcdd","\dbcde","\dbcdf","\dbce0","\dbce1","\dbce2","\dbce3","\dbce4","\dbce5","\dbce6","\dbce7","\dbce8","\dbce9","\dbcea","\dbceb","\dbcec","\dbced","\dbcee","\dbcef","\dbcf0","\dbcf1","\dbcf2","\dbcf3",  # ; LVT # Lo  [27] HANGUL SYLLABLE BYEG..HANGUL SYLLABLE BYEH
        "\dbcf5","\dbcf6","\dbcf7","\dbcf8","\dbcf9","\dbcfa","\dbcfb","\dbcfc","\dbcfd","\dbcfe","\dbcff","\dbd00","\dbd01","\dbd02","\dbd03","\dbd04","\dbd05","\dbd06","\dbd07","\dbd08","\dbd09","\dbd0a","\dbd0b","\dbd0c","\dbd0d","\dbd0e","\dbd0f",  # ; LVT # Lo  [27] HANGUL SYLLABLE BOG..HANGUL SYLLABLE BOH
        "\dbd11","\dbd12","\dbd13","\dbd14","\dbd15","\dbd16","\dbd17","\dbd18","\dbd19","\dbd1a","\dbd1b","\dbd1c","\dbd1d","\dbd1e","\dbd1f","\dbd20","\dbd21","\dbd22","\dbd23","\dbd24","\dbd25","\dbd26","\dbd27","\dbd28","\dbd29","\dbd2a","\dbd2b",  # ; LVT # Lo  [27] HANGUL SYLLABLE BWAG..HANGUL SYLLABLE BWAH
        "\dbd2d","\dbd2e","\dbd2f","\dbd30","\dbd31","\dbd32","\dbd33","\dbd34","\dbd35","\dbd36","\dbd37","\dbd38","\dbd39","\dbd3a","\dbd3b","\dbd3c","\dbd3d","\dbd3e","\dbd3f","\dbd40","\dbd41","\dbd42","\dbd43","\dbd44","\dbd45","\dbd46","\dbd47",  # ; LVT # Lo  [27] HANGUL SYLLABLE BWAEG..HANGUL SYLLABLE BWAEH
        "\dbd49","\dbd4a","\dbd4b","\dbd4c","\dbd4d","\dbd4e","\dbd4f","\dbd50","\dbd51","\dbd52","\dbd53","\dbd54","\dbd55","\dbd56","\dbd57","\dbd58","\dbd59","\dbd5a","\dbd5b","\dbd5c","\dbd5d","\dbd5e","\dbd5f","\dbd60","\dbd61","\dbd62","\dbd63",  # ; LVT # Lo  [27] HANGUL SYLLABLE BOEG..HANGUL SYLLABLE BOEH
        "\dbd65","\dbd66","\dbd67","\dbd68","\dbd69","\dbd6a","\dbd6b","\dbd6c","\dbd6d","\dbd6e","\dbd6f","\dbd70","\dbd71","\dbd72","\dbd73","\dbd74","\dbd75","\dbd76","\dbd77","\dbd78","\dbd79","\dbd7a","\dbd7b","\dbd7c","\dbd7d","\dbd7e","\dbd7f",  # ; LVT # Lo  [27] HANGUL SYLLABLE BYOG..HANGUL SYLLABLE BYOH
        "\dbd81","\dbd82","\dbd83","\dbd84","\dbd85","\dbd86","\dbd87","\dbd88","\dbd89","\dbd8a","\dbd8b","\dbd8c","\dbd8d","\dbd8e","\dbd8f","\dbd90","\dbd91","\dbd92","\dbd93","\dbd94","\dbd95","\dbd96","\dbd97","\dbd98","\dbd99","\dbd9a","\dbd9b",  # ; LVT # Lo  [27] HANGUL SYLLABLE BUG..HANGUL SYLLABLE BUH
        "\dbd9d","\dbd9e","\dbd9f","\dbda0","\dbda1","\dbda2","\dbda3","\dbda4","\dbda5","\dbda6","\dbda7","\dbda8","\dbda9","\dbdaa","\dbdab","\dbdac","\dbdad","\dbdae","\dbdaf","\dbdb0","\dbdb1","\dbdb2","\dbdb3","\dbdb4","\dbdb5","\dbdb6","\dbdb7",  # ; LVT # Lo  [27] HANGUL SYLLABLE BWEOG..HANGUL SYLLABLE BWEOH
        "\dbdb9","\dbdba","\dbdbb","\dbdbc","\dbdbd","\dbdbe","\dbdbf","\dbdc0","\dbdc1","\dbdc2","\dbdc3","\dbdc4","\dbdc5","\dbdc6","\dbdc7","\dbdc8","\dbdc9","\dbdca","\dbdcb","\dbdcc","\dbdcd","\dbdce","\dbdcf","\dbdd0","\dbdd1","\dbdd2","\dbdd3",  # ; LVT # Lo  [27] HANGUL SYLLABLE BWEG..HANGUL SYLLABLE BWEH
        "\dbdd5","\dbdd6","\dbdd7","\dbdd8","\dbdd9","\dbdda","\dbddb","\dbddc","\dbddd","\dbdde","\dbddf","\dbde0","\dbde1","\dbde2","\dbde3","\dbde4","\dbde5","\dbde6","\dbde7","\dbde8","\dbde9","\dbdea","\dbdeb","\dbdec","\dbded","\dbdee","\dbdef",  # ; LVT # Lo  [27] HANGUL SYLLABLE BWIG..HANGUL SYLLABLE BWIH
        "\dbdf1","\dbdf2","\dbdf3","\dbdf4","\dbdf5","\dbdf6","\dbdf7","\dbdf8","\dbdf9","\dbdfa","\dbdfb","\dbdfc","\dbdfd","\dbdfe","\dbdff","\dbe00","\dbe01","\dbe02","\dbe03","\dbe04","\dbe05","\dbe06","\dbe07","\dbe08","\dbe09","\dbe0a","\dbe0b",  # ; LVT # Lo  [27] HANGUL SYLLABLE BYUG..HANGUL SYLLABLE BYUH
        "\dbe0d","\dbe0e","\dbe0f","\dbe10","\dbe11","\dbe12","\dbe13","\dbe14","\dbe15","\dbe16","\dbe17","\dbe18","\dbe19","\dbe1a","\dbe1b","\dbe1c","\dbe1d","\dbe1e","\dbe1f","\dbe20","\dbe21","\dbe22","\dbe23","\dbe24","\dbe25","\dbe26","\dbe27",  # ; LVT # Lo  [27] HANGUL SYLLABLE BEUG..HANGUL SYLLABLE BEUH
        "\dbe29","\dbe2a","\dbe2b","\dbe2c","\dbe2d","\dbe2e","\dbe2f","\dbe30","\dbe31","\dbe32","\dbe33","\dbe34","\dbe35","\dbe36","\dbe37","\dbe38","\dbe39","\dbe3a","\dbe3b","\dbe3c","\dbe3d","\dbe3e","\dbe3f","\dbe40","\dbe41","\dbe42","\dbe43",  # ; LVT # Lo  [27] HANGUL SYLLABLE BYIG..HANGUL SYLLABLE BYIH
        "\dbe45","\dbe46","\dbe47","\dbe48","\dbe49","\dbe4a","\dbe4b","\dbe4c","\dbe4d","\dbe4e","\dbe4f","\dbe50","\dbe51","\dbe52","\dbe53","\dbe54","\dbe55","\dbe56","\dbe57","\dbe58","\dbe59","\dbe5a","\dbe5b","\dbe5c","\dbe5d","\dbe5e","\dbe5f",  # ; LVT # Lo  [27] HANGUL SYLLABLE BIG..HANGUL SYLLABLE BIH
        "\dbe61","\dbe62","\dbe63","\dbe64","\dbe65","\dbe66","\dbe67","\dbe68","\dbe69","\dbe6a","\dbe6b","\dbe6c","\dbe6d","\dbe6e","\dbe6f","\dbe70","\dbe71","\dbe72","\dbe73","\dbe74","\dbe75","\dbe76","\dbe77","\dbe78","\dbe79","\dbe7a","\dbe7b",  # ; LVT # Lo  [27] HANGUL SYLLABLE BBAG..HANGUL SYLLABLE BBAH
        "\dbe7d","\dbe7e","\dbe7f","\dbe80","\dbe81","\dbe82","\dbe83","\dbe84","\dbe85","\dbe86","\dbe87","\dbe88","\dbe89","\dbe8a","\dbe8b","\dbe8c","\dbe8d","\dbe8e","\dbe8f","\dbe90","\dbe91","\dbe92","\dbe93","\dbe94","\dbe95","\dbe96","\dbe97",  # ; LVT # Lo  [27] HANGUL SYLLABLE BBAEG..HANGUL SYLLABLE BBAEH
        "\dbe99","\dbe9a","\dbe9b","\dbe9c","\dbe9d","\dbe9e","\dbe9f","\dbea0","\dbea1","\dbea2","\dbea3","\dbea4","\dbea5","\dbea6","\dbea7","\dbea8","\dbea9","\dbeaa","\dbeab","\dbeac","\dbead","\dbeae","\dbeaf","\dbeb0","\dbeb1","\dbeb2","\dbeb3",  # ; LVT # Lo  [27] HANGUL SYLLABLE BBYAG..HANGUL SYLLABLE BBYAH
        "\dbeb5","\dbeb6","\dbeb7","\dbeb8","\dbeb9","\dbeba","\dbebb","\dbebc","\dbebd","\dbebe","\dbebf","\dbec0","\dbec1","\dbec2","\dbec3","\dbec4","\dbec5","\dbec6","\dbec7","\dbec8","\dbec9","\dbeca","\dbecb","\dbecc","\dbecd","\dbece","\dbecf",  # ; LVT # Lo  [27] HANGUL SYLLABLE BBYAEG..HANGUL SYLLABLE BBYAEH
        "\dbed1","\dbed2","\dbed3","\dbed4","\dbed5","\dbed6","\dbed7","\dbed8","\dbed9","\dbeda","\dbedb","\dbedc","\dbedd","\dbede","\dbedf","\dbee0","\dbee1","\dbee2","\dbee3","\dbee4","\dbee5","\dbee6","\dbee7","\dbee8","\dbee9","\dbeea","\dbeeb",  # ; LVT # Lo  [27] HANGUL SYLLABLE BBEOG..HANGUL SYLLABLE BBEOH
        "\dbeed","\dbeee","\dbeef","\dbef0","\dbef1","\dbef2","\dbef3","\dbef4","\dbef5","\dbef6","\dbef7","\dbef8","\dbef9","\dbefa","\dbefb","\dbefc","\dbefd","\dbefe","\dbeff","\dbf00","\dbf01","\dbf02","\dbf03","\dbf04","\dbf05","\dbf06","\dbf07",  # ; LVT # Lo  [27] HANGUL SYLLABLE BBEG..HANGUL SYLLABLE BBEH
        "\dbf09","\dbf0a","\dbf0b","\dbf0c","\dbf0d","\dbf0e","\dbf0f","\dbf10","\dbf11","\dbf12","\dbf13","\dbf14","\dbf15","\dbf16","\dbf17","\dbf18","\dbf19","\dbf1a","\dbf1b","\dbf1c","\dbf1d","\dbf1e","\dbf1f","\dbf20","\dbf21","\dbf22","\dbf23",  # ; LVT # Lo  [27] HANGUL SYLLABLE BBYEOG..HANGUL SYLLABLE BBYEOH
        "\dbf25","\dbf26","\dbf27","\dbf28","\dbf29","\dbf2a","\dbf2b","\dbf2c","\dbf2d","\dbf2e","\dbf2f","\dbf30","\dbf31","\dbf32","\dbf33","\dbf34","\dbf35","\dbf36","\dbf37","\dbf38","\dbf39","\dbf3a","\dbf3b","\dbf3c","\dbf3d","\dbf3e","\dbf3f",  # ; LVT # Lo  [27] HANGUL SYLLABLE BBYEG..HANGUL SYLLABLE BBYEH
        "\dbf41","\dbf42","\dbf43","\dbf44","\dbf45","\dbf46","\dbf47","\dbf48","\dbf49","\dbf4a","\dbf4b","\dbf4c","\dbf4d","\dbf4e","\dbf4f","\dbf50","\dbf51","\dbf52","\dbf53","\dbf54","\dbf55","\dbf56","\dbf57","\dbf58","\dbf59","\dbf5a","\dbf5b",  # ; LVT # Lo  [27] HANGUL SYLLABLE BBOG..HANGUL SYLLABLE BBOH
        "\dbf5d","\dbf5e","\dbf5f","\dbf60","\dbf61","\dbf62","\dbf63","\dbf64","\dbf65","\dbf66","\dbf67","\dbf68","\dbf69","\dbf6a","\dbf6b","\dbf6c","\dbf6d","\dbf6e","\dbf6f","\dbf70","\dbf71","\dbf72","\dbf73","\dbf74","\dbf75","\dbf76","\dbf77",  # ; LVT # Lo  [27] HANGUL SYLLABLE BBWAG..HANGUL SYLLABLE BBWAH
        "\dbf79","\dbf7a","\dbf7b","\dbf7c","\dbf7d","\dbf7e","\dbf7f","\dbf80","\dbf81","\dbf82","\dbf83","\dbf84","\dbf85","\dbf86","\dbf87","\dbf88","\dbf89","\dbf8a","\dbf8b","\dbf8c","\dbf8d","\dbf8e","\dbf8f","\dbf90","\dbf91","\dbf92","\dbf93",  # ; LVT # Lo  [27] HANGUL SYLLABLE BBWAEG..HANGUL SYLLABLE BBWAEH
        "\dbf95","\dbf96","\dbf97","\dbf98","\dbf99","\dbf9a","\dbf9b","\dbf9c","\dbf9d","\dbf9e","\dbf9f","\dbfa0","\dbfa1","\dbfa2","\dbfa3","\dbfa4","\dbfa5","\dbfa6","\dbfa7","\dbfa8","\dbfa9","\dbfaa","\dbfab","\dbfac","\dbfad","\dbfae","\dbfaf",  # ; LVT # Lo  [27] HANGUL SYLLABLE BBOEG..HANGUL SYLLABLE BBOEH
        "\dbfb1","\dbfb2","\dbfb3","\dbfb4","\dbfb5","\dbfb6","\dbfb7","\dbfb8","\dbfb9","\dbfba","\dbfbb","\dbfbc","\dbfbd","\dbfbe","\dbfbf","\dbfc0","\dbfc1","\dbfc2","\dbfc3","\dbfc4","\dbfc5","\dbfc6","\dbfc7","\dbfc8","\dbfc9","\dbfca","\dbfcb",  # ; LVT # Lo  [27] HANGUL SYLLABLE BBYOG..HANGUL SYLLABLE BBYOH
        "\dbfcd","\dbfce","\dbfcf","\dbfd0","\dbfd1","\dbfd2","\dbfd3","\dbfd4","\dbfd5","\dbfd6","\dbfd7","\dbfd8","\dbfd9","\dbfda","\dbfdb","\dbfdc","\dbfdd","\dbfde","\dbfdf","\dbfe0","\dbfe1","\dbfe2","\dbfe3","\dbfe4","\dbfe5","\dbfe6","\dbfe7",  # ; LVT # Lo  [27] HANGUL SYLLABLE BBUG..HANGUL SYLLABLE BBUH
        "\dbfe9","\dbfea","\dbfeb","\dbfec","\dbfed","\dbfee","\dbfef","\dbff0","\dbff1","\dbff2","\dbff3","\dbff4","\dbff5","\dbff6","\dbff7","\dbff8","\dbff9","\dbffa","\dbffb","\dbffc","\dbffd","\dbffe","\dbfff","\dc000","\dc001","\dc002","\dc003",  # ; LVT # Lo  [27] HANGUL SYLLABLE BBWEOG..HANGUL SYLLABLE BBWEOH
        "\dc005","\dc006","\dc007","\dc008","\dc009","\dc00a","\dc00b","\dc00c","\dc00d","\dc00e","\dc00f","\dc010","\dc011","\dc012","\dc013","\dc014","\dc015","\dc016","\dc017","\dc018","\dc019","\dc01a","\dc01b","\dc01c","\dc01d","\dc01e","\dc01f",  # ; LVT # Lo  [27] HANGUL SYLLABLE BBWEG..HANGUL SYLLABLE BBWEH
        "\dc021","\dc022","\dc023","\dc024","\dc025","\dc026","\dc027","\dc028","\dc029","\dc02a","\dc02b","\dc02c","\dc02d","\dc02e","\dc02f","\dc030","\dc031","\dc032","\dc033","\dc034","\dc035","\dc036","\dc037","\dc038","\dc039","\dc03a","\dc03b",  # ; LVT # Lo  [27] HANGUL SYLLABLE BBWIG..HANGUL SYLLABLE BBWIH
        "\dc03d","\dc03e","\dc03f","\dc040","\dc041","\dc042","\dc043","\dc044","\dc045","\dc046","\dc047","\dc048","\dc049","\dc04a","\dc04b","\dc04c","\dc04d","\dc04e","\dc04f","\dc050","\dc051","\dc052","\dc053","\dc054","\dc055","\dc056","\dc057",  # ; LVT # Lo  [27] HANGUL SYLLABLE BBYUG..HANGUL SYLLABLE BBYUH
        "\dc059","\dc05a","\dc05b","\dc05c","\dc05d","\dc05e","\dc05f","\dc060","\dc061","\dc062","\dc063","\dc064","\dc065","\dc066","\dc067","\dc068","\dc069","\dc06a","\dc06b","\dc06c","\dc06d","\dc06e","\dc06f","\dc070","\dc071","\dc072","\dc073",  # ; LVT # Lo  [27] HANGUL SYLLABLE BBEUG..HANGUL SYLLABLE BBEUH
        "\dc075","\dc076","\dc077","\dc078","\dc079","\dc07a","\dc07b","\dc07c","\dc07d","\dc07e","\dc07f","\dc080","\dc081","\dc082","\dc083","\dc084","\dc085","\dc086","\dc087","\dc088","\dc089","\dc08a","\dc08b","\dc08c","\dc08d","\dc08e","\dc08f",  # ; LVT # Lo  [27] HANGUL SYLLABLE BBYIG..HANGUL SYLLABLE BBYIH
        "\dc091","\dc092","\dc093","\dc094","\dc095","\dc096","\dc097","\dc098","\dc099","\dc09a","\dc09b","\dc09c","\dc09d","\dc09e","\dc09f","\dc0a0","\dc0a1","\dc0a2","\dc0a3","\dc0a4","\dc0a5","\dc0a6","\dc0a7","\dc0a8","\dc0a9","\dc0aa","\dc0ab",  # ; LVT # Lo  [27] HANGUL SYLLABLE BBIG..HANGUL SYLLABLE BBIH
        "\dc0ad","\dc0ae","\dc0af","\dc0b0","\dc0b1","\dc0b2","\dc0b3","\dc0b4","\dc0b5","\dc0b6","\dc0b7","\dc0b8","\dc0b9","\dc0ba","\dc0bb","\dc0bc","\dc0bd","\dc0be","\dc0bf","\dc0c0","\dc0c1","\dc0c2","\dc0c3","\dc0c4","\dc0c5","\dc0c6","\dc0c7",  # ; LVT # Lo  [27] HANGUL SYLLABLE SAG..HANGUL SYLLABLE SAH
        "\dc0c9","\dc0ca","\dc0cb","\dc0cc","\dc0cd","\dc0ce","\dc0cf","\dc0d0","\dc0d1","\dc0d2","\dc0d3","\dc0d4","\dc0d5","\dc0d6","\dc0d7","\dc0d8","\dc0d9","\dc0da","\dc0db","\dc0dc","\dc0dd","\dc0de","\dc0df","\dc0e0","\dc0e1","\dc0e2","\dc0e3",  # ; LVT # Lo  [27] HANGUL SYLLABLE SAEG..HANGUL SYLLABLE SAEH
        "\dc0e5","\dc0e6","\dc0e7","\dc0e8","\dc0e9","\dc0ea","\dc0eb","\dc0ec","\dc0ed","\dc0ee","\dc0ef","\dc0f0","\dc0f1","\dc0f2","\dc0f3","\dc0f4","\dc0f5","\dc0f6","\dc0f7","\dc0f8","\dc0f9","\dc0fa","\dc0fb","\dc0fc","\dc0fd","\dc0fe","\dc0ff",  # ; LVT # Lo  [27] HANGUL SYLLABLE SYAG..HANGUL SYLLABLE SYAH
        "\dc101","\dc102","\dc103","\dc104","\dc105","\dc106","\dc107","\dc108","\dc109","\dc10a","\dc10b","\dc10c","\dc10d","\dc10e","\dc10f","\dc110","\dc111","\dc112","\dc113","\dc114","\dc115","\dc116","\dc117","\dc118","\dc119","\dc11a","\dc11b",  # ; LVT # Lo  [27] HANGUL SYLLABLE SYAEG..HANGUL SYLLABLE SYAEH
        "\dc11d","\dc11e","\dc11f","\dc120","\dc121","\dc122","\dc123","\dc124","\dc125","\dc126","\dc127","\dc128","\dc129","\dc12a","\dc12b","\dc12c","\dc12d","\dc12e","\dc12f","\dc130","\dc131","\dc132","\dc133","\dc134","\dc135","\dc136","\dc137",  # ; LVT # Lo  [27] HANGUL SYLLABLE SEOG..HANGUL SYLLABLE SEOH
        "\dc139","\dc13a","\dc13b","\dc13c","\dc13d","\dc13e","\dc13f","\dc140","\dc141","\dc142","\dc143","\dc144","\dc145","\dc146","\dc147","\dc148","\dc149","\dc14a","\dc14b","\dc14c","\dc14d","\dc14e","\dc14f","\dc150","\dc151","\dc152","\dc153",  # ; LVT # Lo  [27] HANGUL SYLLABLE SEG..HANGUL SYLLABLE SEH
        "\dc155","\dc156","\dc157","\dc158","\dc159","\dc15a","\dc15b","\dc15c","\dc15d","\dc15e","\dc15f","\dc160","\dc161","\dc162","\dc163","\dc164","\dc165","\dc166","\dc167","\dc168","\dc169","\dc16a","\dc16b","\dc16c","\dc16d","\dc16e","\dc16f",  # ; LVT # Lo  [27] HANGUL SYLLABLE SYEOG..HANGUL SYLLABLE SYEOH
        "\dc171","\dc172","\dc173","\dc174","\dc175","\dc176","\dc177","\dc178","\dc179","\dc17a","\dc17b","\dc17c","\dc17d","\dc17e","\dc17f","\dc180","\dc181","\dc182","\dc183","\dc184","\dc185","\dc186","\dc187","\dc188","\dc189","\dc18a","\dc18b",  # ; LVT # Lo  [27] HANGUL SYLLABLE SYEG..HANGUL SYLLABLE SYEH
        "\dc18d","\dc18e","\dc18f","\dc190","\dc191","\dc192","\dc193","\dc194","\dc195","\dc196","\dc197","\dc198","\dc199","\dc19a","\dc19b","\dc19c","\dc19d","\dc19e","\dc19f","\dc1a0","\dc1a1","\dc1a2","\dc1a3","\dc1a4","\dc1a5","\dc1a6","\dc1a7",  # ; LVT # Lo  [27] HANGUL SYLLABLE SOG..HANGUL SYLLABLE SOH
        "\dc1a9","\dc1aa","\dc1ab","\dc1ac","\dc1ad","\dc1ae","\dc1af","\dc1b0","\dc1b1","\dc1b2","\dc1b3","\dc1b4","\dc1b5","\dc1b6","\dc1b7","\dc1b8","\dc1b9","\dc1ba","\dc1bb","\dc1bc","\dc1bd","\dc1be","\dc1bf","\dc1c0","\dc1c1","\dc1c2","\dc1c3",  # ; LVT # Lo  [27] HANGUL SYLLABLE SWAG..HANGUL SYLLABLE SWAH
        "\dc1c5","\dc1c6","\dc1c7","\dc1c8","\dc1c9","\dc1ca","\dc1cb","\dc1cc","\dc1cd","\dc1ce","\dc1cf","\dc1d0","\dc1d1","\dc1d2","\dc1d3","\dc1d4","\dc1d5","\dc1d6","\dc1d7","\dc1d8","\dc1d9","\dc1da","\dc1db","\dc1dc","\dc1dd","\dc1de","\dc1df",  # ; LVT # Lo  [27] HANGUL SYLLABLE SWAEG..HANGUL SYLLABLE SWAEH
        "\dc1e1","\dc1e2","\dc1e3","\dc1e4","\dc1e5","\dc1e6","\dc1e7","\dc1e8","\dc1e9","\dc1ea","\dc1eb","\dc1ec","\dc1ed","\dc1ee","\dc1ef","\dc1f0","\dc1f1","\dc1f2","\dc1f3","\dc1f4","\dc1f5","\dc1f6","\dc1f7","\dc1f8","\dc1f9","\dc1fa","\dc1fb",  # ; LVT # Lo  [27] HANGUL SYLLABLE SOEG..HANGUL SYLLABLE SOEH
        "\dc1fd","\dc1fe","\dc1ff","\dc200","\dc201","\dc202","\dc203","\dc204","\dc205","\dc206","\dc207","\dc208","\dc209","\dc20a","\dc20b","\dc20c","\dc20d","\dc20e","\dc20f","\dc210","\dc211","\dc212","\dc213","\dc214","\dc215","\dc216","\dc217",  # ; LVT # Lo  [27] HANGUL SYLLABLE SYOG..HANGUL SYLLABLE SYOH
        "\dc219","\dc21a","\dc21b","\dc21c","\dc21d","\dc21e","\dc21f","\dc220","\dc221","\dc222","\dc223","\dc224","\dc225","\dc226","\dc227","\dc228","\dc229","\dc22a","\dc22b","\dc22c","\dc22d","\dc22e","\dc22f","\dc230","\dc231","\dc232","\dc233",  # ; LVT # Lo  [27] HANGUL SYLLABLE SUG..HANGUL SYLLABLE SUH
        "\dc235","\dc236","\dc237","\dc238","\dc239","\dc23a","\dc23b","\dc23c","\dc23d","\dc23e","\dc23f","\dc240","\dc241","\dc242","\dc243","\dc244","\dc245","\dc246","\dc247","\dc248","\dc249","\dc24a","\dc24b","\dc24c","\dc24d","\dc24e","\dc24f",  # ; LVT # Lo  [27] HANGUL SYLLABLE SWEOG..HANGUL SYLLABLE SWEOH
        "\dc251","\dc252","\dc253","\dc254","\dc255","\dc256","\dc257","\dc258","\dc259","\dc25a","\dc25b","\dc25c","\dc25d","\dc25e","\dc25f","\dc260","\dc261","\dc262","\dc263","\dc264","\dc265","\dc266","\dc267","\dc268","\dc269","\dc26a","\dc26b",  # ; LVT # Lo  [27] HANGUL SYLLABLE SWEG..HANGUL SYLLABLE SWEH
        "\dc26d","\dc26e","\dc26f","\dc270","\dc271","\dc272","\dc273","\dc274","\dc275","\dc276","\dc277","\dc278","\dc279","\dc27a","\dc27b","\dc27c","\dc27d","\dc27e","\dc27f","\dc280","\dc281","\dc282","\dc283","\dc284","\dc285","\dc286","\dc287",  # ; LVT # Lo  [27] HANGUL SYLLABLE SWIG..HANGUL SYLLABLE SWIH
        "\dc289","\dc28a","\dc28b","\dc28c","\dc28d","\dc28e","\dc28f","\dc290","\dc291","\dc292","\dc293","\dc294","\dc295","\dc296","\dc297","\dc298","\dc299","\dc29a","\dc29b","\dc29c","\dc29d","\dc29e","\dc29f","\dc2a0","\dc2a1","\dc2a2","\dc2a3",  # ; LVT # Lo  [27] HANGUL SYLLABLE SYUG..HANGUL SYLLABLE SYUH
        "\dc2a5","\dc2a6","\dc2a7","\dc2a8","\dc2a9","\dc2aa","\dc2ab","\dc2ac","\dc2ad","\dc2ae","\dc2af","\dc2b0","\dc2b1","\dc2b2","\dc2b3","\dc2b4","\dc2b5","\dc2b6","\dc2b7","\dc2b8","\dc2b9","\dc2ba","\dc2bb","\dc2bc","\dc2bd","\dc2be","\dc2bf",  # ; LVT # Lo  [27] HANGUL SYLLABLE SEUG..HANGUL SYLLABLE SEUH
        "\dc2c1","\dc2c2","\dc2c3","\dc2c4","\dc2c5","\dc2c6","\dc2c7","\dc2c8","\dc2c9","\dc2ca","\dc2cb","\dc2cc","\dc2cd","\dc2ce","\dc2cf","\dc2d0","\dc2d1","\dc2d2","\dc2d3","\dc2d4","\dc2d5","\dc2d6","\dc2d7","\dc2d8","\dc2d9","\dc2da","\dc2db",  # ; LVT # Lo  [27] HANGUL SYLLABLE SYIG..HANGUL SYLLABLE SYIH
        "\dc2dd","\dc2de","\dc2df","\dc2e0","\dc2e1","\dc2e2","\dc2e3","\dc2e4","\dc2e5","\dc2e6","\dc2e7","\dc2e8","\dc2e9","\dc2ea","\dc2eb","\dc2ec","\dc2ed","\dc2ee","\dc2ef","\dc2f0","\dc2f1","\dc2f2","\dc2f3","\dc2f4","\dc2f5","\dc2f6","\dc2f7",  # ; LVT # Lo  [27] HANGUL SYLLABLE SIG..HANGUL SYLLABLE SIH
        "\dc2f9","\dc2fa","\dc2fb","\dc2fc","\dc2fd","\dc2fe","\dc2ff","\dc300","\dc301","\dc302","\dc303","\dc304","\dc305","\dc306","\dc307","\dc308","\dc309","\dc30a","\dc30b","\dc30c","\dc30d","\dc30e","\dc30f","\dc310","\dc311","\dc312","\dc313",  # ; LVT # Lo  [27] HANGUL SYLLABLE SSAG..HANGUL SYLLABLE SSAH
        "\dc315","\dc316","\dc317","\dc318","\dc319","\dc31a","\dc31b","\dc31c","\dc31d","\dc31e","\dc31f","\dc320","\dc321","\dc322","\dc323","\dc324","\dc325","\dc326","\dc327","\dc328","\dc329","\dc32a","\dc32b","\dc32c","\dc32d","\dc32e","\dc32f",  # ; LVT # Lo  [27] HANGUL SYLLABLE SSAEG..HANGUL SYLLABLE SSAEH
        "\dc331","\dc332","\dc333","\dc334","\dc335","\dc336","\dc337","\dc338","\dc339","\dc33a","\dc33b","\dc33c","\dc33d","\dc33e","\dc33f","\dc340","\dc341","\dc342","\dc343","\dc344","\dc345","\dc346","\dc347","\dc348","\dc349","\dc34a","\dc34b",  # ; LVT # Lo  [27] HANGUL SYLLABLE SSYAG..HANGUL SYLLABLE SSYAH
        "\dc34d","\dc34e","\dc34f","\dc350","\dc351","\dc352","\dc353","\dc354","\dc355","\dc356","\dc357","\dc358","\dc359","\dc35a","\dc35b","\dc35c","\dc35d","\dc35e","\dc35f","\dc360","\dc361","\dc362","\dc363","\dc364","\dc365","\dc366","\dc367",  # ; LVT # Lo  [27] HANGUL SYLLABLE SSYAEG..HANGUL SYLLABLE SSYAEH
        "\dc369","\dc36a","\dc36b","\dc36c","\dc36d","\dc36e","\dc36f","\dc370","\dc371","\dc372","\dc373","\dc374","\dc375","\dc376","\dc377","\dc378","\dc379","\dc37a","\dc37b","\dc37c","\dc37d","\dc37e","\dc37f","\dc380","\dc381","\dc382","\dc383",  # ; LVT # Lo  [27] HANGUL SYLLABLE SSEOG..HANGUL SYLLABLE SSEOH
        "\dc385","\dc386","\dc387","\dc388","\dc389","\dc38a","\dc38b","\dc38c","\dc38d","\dc38e","\dc38f","\dc390","\dc391","\dc392","\dc393","\dc394","\dc395","\dc396","\dc397","\dc398","\dc399","\dc39a","\dc39b","\dc39c","\dc39d","\dc39e","\dc39f",  # ; LVT # Lo  [27] HANGUL SYLLABLE SSEG..HANGUL SYLLABLE SSEH
        "\dc3a1","\dc3a2","\dc3a3","\dc3a4","\dc3a5","\dc3a6","\dc3a7","\dc3a8","\dc3a9","\dc3aa","\dc3ab","\dc3ac","\dc3ad","\dc3ae","\dc3af","\dc3b0","\dc3b1","\dc3b2","\dc3b3","\dc3b4","\dc3b5","\dc3b6","\dc3b7","\dc3b8","\dc3b9","\dc3ba","\dc3bb",  # ; LVT # Lo  [27] HANGUL SYLLABLE SSYEOG..HANGUL SYLLABLE SSYEOH
        "\dc3bd","\dc3be","\dc3bf","\dc3c0","\dc3c1","\dc3c2","\dc3c3","\dc3c4","\dc3c5","\dc3c6","\dc3c7","\dc3c8","\dc3c9","\dc3ca","\dc3cb","\dc3cc","\dc3cd","\dc3ce","\dc3cf","\dc3d0","\dc3d1","\dc3d2","\dc3d3","\dc3d4","\dc3d5","\dc3d6","\dc3d7",  # ; LVT # Lo  [27] HANGUL SYLLABLE SSYEG..HANGUL SYLLABLE SSYEH
        "\dc3d9","\dc3da","\dc3db","\dc3dc","\dc3dd","\dc3de","\dc3df","\dc3e0","\dc3e1","\dc3e2","\dc3e3","\dc3e4","\dc3e5","\dc3e6","\dc3e7","\dc3e8","\dc3e9","\dc3ea","\dc3eb","\dc3ec","\dc3ed","\dc3ee","\dc3ef","\dc3f0","\dc3f1","\dc3f2","\dc3f3",  # ; LVT # Lo  [27] HANGUL SYLLABLE SSOG..HANGUL SYLLABLE SSOH
        "\dc3f5","\dc3f6","\dc3f7","\dc3f8","\dc3f9","\dc3fa","\dc3fb","\dc3fc","\dc3fd","\dc3fe","\dc3ff","\dc400","\dc401","\dc402","\dc403","\dc404","\dc405","\dc406","\dc407","\dc408","\dc409","\dc40a","\dc40b","\dc40c","\dc40d","\dc40e","\dc40f",  # ; LVT # Lo  [27] HANGUL SYLLABLE SSWAG..HANGUL SYLLABLE SSWAH
        "\dc411","\dc412","\dc413","\dc414","\dc415","\dc416","\dc417","\dc418","\dc419","\dc41a","\dc41b","\dc41c","\dc41d","\dc41e","\dc41f","\dc420","\dc421","\dc422","\dc423","\dc424","\dc425","\dc426","\dc427","\dc428","\dc429","\dc42a","\dc42b",  # ; LVT # Lo  [27] HANGUL SYLLABLE SSWAEG..HANGUL SYLLABLE SSWAEH
        "\dc42d","\dc42e","\dc42f","\dc430","\dc431","\dc432","\dc433","\dc434","\dc435","\dc436","\dc437","\dc438","\dc439","\dc43a","\dc43b","\dc43c","\dc43d","\dc43e","\dc43f","\dc440","\dc441","\dc442","\dc443","\dc444","\dc445","\dc446","\dc447",  # ; LVT # Lo  [27] HANGUL SYLLABLE SSOEG..HANGUL SYLLABLE SSOEH
        "\dc449","\dc44a","\dc44b","\dc44c","\dc44d","\dc44e","\dc44f","\dc450","\dc451","\dc452","\dc453","\dc454","\dc455","\dc456","\dc457","\dc458","\dc459","\dc45a","\dc45b","\dc45c","\dc45d","\dc45e","\dc45f","\dc460","\dc461","\dc462","\dc463",  # ; LVT # Lo  [27] HANGUL SYLLABLE SSYOG..HANGUL SYLLABLE SSYOH
        "\dc465","\dc466","\dc467","\dc468","\dc469","\dc46a","\dc46b","\dc46c","\dc46d","\dc46e","\dc46f","\dc470","\dc471","\dc472","\dc473","\dc474","\dc475","\dc476","\dc477","\dc478","\dc479","\dc47a","\dc47b","\dc47c","\dc47d","\dc47e","\dc47f",  # ; LVT # Lo  [27] HANGUL SYLLABLE SSUG..HANGUL SYLLABLE SSUH
        "\dc481","\dc482","\dc483","\dc484","\dc485","\dc486","\dc487","\dc488","\dc489","\dc48a","\dc48b","\dc48c","\dc48d","\dc48e","\dc48f","\dc490","\dc491","\dc492","\dc493","\dc494","\dc495","\dc496","\dc497","\dc498","\dc499","\dc49a","\dc49b",  # ; LVT # Lo  [27] HANGUL SYLLABLE SSWEOG..HANGUL SYLLABLE SSWEOH
        "\dc49d","\dc49e","\dc49f","\dc4a0","\dc4a1","\dc4a2","\dc4a3","\dc4a4","\dc4a5","\dc4a6","\dc4a7","\dc4a8","\dc4a9","\dc4aa","\dc4ab","\dc4ac","\dc4ad","\dc4ae","\dc4af","\dc4b0","\dc4b1","\dc4b2","\dc4b3","\dc4b4","\dc4b5","\dc4b6","\dc4b7",  # ; LVT # Lo  [27] HANGUL SYLLABLE SSWEG..HANGUL SYLLABLE SSWEH
        "\dc4b9","\dc4ba","\dc4bb","\dc4bc","\dc4bd","\dc4be","\dc4bf","\dc4c0","\dc4c1","\dc4c2","\dc4c3","\dc4c4","\dc4c5","\dc4c6","\dc4c7","\dc4c8","\dc4c9","\dc4ca","\dc4cb","\dc4cc","\dc4cd","\dc4ce","\dc4cf","\dc4d0","\dc4d1","\dc4d2","\dc4d3",  # ; LVT # Lo  [27] HANGUL SYLLABLE SSWIG..HANGUL SYLLABLE SSWIH
        "\dc4d5","\dc4d6","\dc4d7","\dc4d8","\dc4d9","\dc4da","\dc4db","\dc4dc","\dc4dd","\dc4de","\dc4df","\dc4e0","\dc4e1","\dc4e2","\dc4e3","\dc4e4","\dc4e5","\dc4e6","\dc4e7","\dc4e8","\dc4e9","\dc4ea","\dc4eb","\dc4ec","\dc4ed","\dc4ee","\dc4ef",  # ; LVT # Lo  [27] HANGUL SYLLABLE SSYUG..HANGUL SYLLABLE SSYUH
        "\dc4f1","\dc4f2","\dc4f3","\dc4f4","\dc4f5","\dc4f6","\dc4f7","\dc4f8","\dc4f9","\dc4fa","\dc4fb","\dc4fc","\dc4fd","\dc4fe","\dc4ff","\dc500","\dc501","\dc502","\dc503","\dc504","\dc505","\dc506","\dc507","\dc508","\dc509","\dc50a","\dc50b",  # ; LVT # Lo  [27] HANGUL SYLLABLE SSEUG..HANGUL SYLLABLE SSEUH
        "\dc50d","\dc50e","\dc50f","\dc510","\dc511","\dc512","\dc513","\dc514","\dc515","\dc516","\dc517","\dc518","\dc519","\dc51a","\dc51b","\dc51c","\dc51d","\dc51e","\dc51f","\dc520","\dc521","\dc522","\dc523","\dc524","\dc525","\dc526","\dc527",  # ; LVT # Lo  [27] HANGUL SYLLABLE SSYIG..HANGUL SYLLABLE SSYIH
        "\dc529","\dc52a","\dc52b","\dc52c","\dc52d","\dc52e","\dc52f","\dc530","\dc531","\dc532","\dc533","\dc534","\dc535","\dc536","\dc537","\dc538","\dc539","\dc53a","\dc53b","\dc53c","\dc53d","\dc53e","\dc53f","\dc540","\dc541","\dc542","\dc543",  # ; LVT # Lo  [27] HANGUL SYLLABLE SSIG..HANGUL SYLLABLE SSIH
        "\dc545","\dc546","\dc547","\dc548","\dc549","\dc54a","\dc54b","\dc54c","\dc54d","\dc54e","\dc54f","\dc550","\dc551","\dc552","\dc553","\dc554","\dc555","\dc556","\dc557","\dc558","\dc559","\dc55a","\dc55b","\dc55c","\dc55d","\dc55e","\dc55f",  # ; LVT # Lo  [27] HANGUL SYLLABLE AG..HANGUL SYLLABLE AH
        "\dc561","\dc562","\dc563","\dc564","\dc565","\dc566","\dc567","\dc568","\dc569","\dc56a","\dc56b","\dc56c","\dc56d","\dc56e","\dc56f","\dc570","\dc571","\dc572","\dc573","\dc574","\dc575","\dc576","\dc577","\dc578","\dc579","\dc57a","\dc57b",  # ; LVT # Lo  [27] HANGUL SYLLABLE AEG..HANGUL SYLLABLE AEH
        "\dc57d","\dc57e","\dc57f","\dc580","\dc581","\dc582","\dc583","\dc584","\dc585","\dc586","\dc587","\dc588","\dc589","\dc58a","\dc58b","\dc58c","\dc58d","\dc58e","\dc58f","\dc590","\dc591","\dc592","\dc593","\dc594","\dc595","\dc596","\dc597",  # ; LVT # Lo  [27] HANGUL SYLLABLE YAG..HANGUL SYLLABLE YAH
        "\dc599","\dc59a","\dc59b","\dc59c","\dc59d","\dc59e","\dc59f","\dc5a0","\dc5a1","\dc5a2","\dc5a3","\dc5a4","\dc5a5","\dc5a6","\dc5a7","\dc5a8","\dc5a9","\dc5aa","\dc5ab","\dc5ac","\dc5ad","\dc5ae","\dc5af","\dc5b0","\dc5b1","\dc5b2","\dc5b3",  # ; LVT # Lo  [27] HANGUL SYLLABLE YAEG..HANGUL SYLLABLE YAEH
        "\dc5b5","\dc5b6","\dc5b7","\dc5b8","\dc5b9","\dc5ba","\dc5bb","\dc5bc","\dc5bd","\dc5be","\dc5bf","\dc5c0","\dc5c1","\dc5c2","\dc5c3","\dc5c4","\dc5c5","\dc5c6","\dc5c7","\dc5c8","\dc5c9","\dc5ca","\dc5cb","\dc5cc","\dc5cd","\dc5ce","\dc5cf",  # ; LVT # Lo  [27] HANGUL SYLLABLE EOG..HANGUL SYLLABLE EOH
        "\dc5d1","\dc5d2","\dc5d3","\dc5d4","\dc5d5","\dc5d6","\dc5d7","\dc5d8","\dc5d9","\dc5da","\dc5db","\dc5dc","\dc5dd","\dc5de","\dc5df","\dc5e0","\dc5e1","\dc5e2","\dc5e3","\dc5e4","\dc5e5","\dc5e6","\dc5e7","\dc5e8","\dc5e9","\dc5ea","\dc5eb",  # ; LVT # Lo  [27] HANGUL SYLLABLE EG..HANGUL SYLLABLE EH
        "\dc5ed","\dc5ee","\dc5ef","\dc5f0","\dc5f1","\dc5f2","\dc5f3","\dc5f4","\dc5f5","\dc5f6","\dc5f7","\dc5f8","\dc5f9","\dc5fa","\dc5fb","\dc5fc","\dc5fd","\dc5fe","\dc5ff","\dc600","\dc601","\dc602","\dc603","\dc604","\dc605","\dc606","\dc607",  # ; LVT # Lo  [27] HANGUL SYLLABLE YEOG..HANGUL SYLLABLE YEOH
        "\dc609","\dc60a","\dc60b","\dc60c","\dc60d","\dc60e","\dc60f","\dc610","\dc611","\dc612","\dc613","\dc614","\dc615","\dc616","\dc617","\dc618","\dc619","\dc61a","\dc61b","\dc61c","\dc61d","\dc61e","\dc61f","\dc620","\dc621","\dc622","\dc623",  # ; LVT # Lo  [27] HANGUL SYLLABLE YEG..HANGUL SYLLABLE YEH
        "\dc625","\dc626","\dc627","\dc628","\dc629","\dc62a","\dc62b","\dc62c","\dc62d","\dc62e","\dc62f","\dc630","\dc631","\dc632","\dc633","\dc634","\dc635","\dc636","\dc637","\dc638","\dc639","\dc63a","\dc63b","\dc63c","\dc63d","\dc63e","\dc63f",  # ; LVT # Lo  [27] HANGUL SYLLABLE OG..HANGUL SYLLABLE OH
        "\dc641","\dc642","\dc643","\dc644","\dc645","\dc646","\dc647","\dc648","\dc649","\dc64a","\dc64b","\dc64c","\dc64d","\dc64e","\dc64f","\dc650","\dc651","\dc652","\dc653","\dc654","\dc655","\dc656","\dc657","\dc658","\dc659","\dc65a","\dc65b",  # ; LVT # Lo  [27] HANGUL SYLLABLE WAG..HANGUL SYLLABLE WAH
        "\dc65d","\dc65e","\dc65f","\dc660","\dc661","\dc662","\dc663","\dc664","\dc665","\dc666","\dc667","\dc668","\dc669","\dc66a","\dc66b","\dc66c","\dc66d","\dc66e","\dc66f","\dc670","\dc671","\dc672","\dc673","\dc674","\dc675","\dc676","\dc677",  # ; LVT # Lo  [27] HANGUL SYLLABLE WAEG..HANGUL SYLLABLE WAEH
        "\dc679","\dc67a","\dc67b","\dc67c","\dc67d","\dc67e","\dc67f","\dc680","\dc681","\dc682","\dc683","\dc684","\dc685","\dc686","\dc687","\dc688","\dc689","\dc68a","\dc68b","\dc68c","\dc68d","\dc68e","\dc68f","\dc690","\dc691","\dc692","\dc693",  # ; LVT # Lo  [27] HANGUL SYLLABLE OEG..HANGUL SYLLABLE OEH
        "\dc695","\dc696","\dc697","\dc698","\dc699","\dc69a","\dc69b","\dc69c","\dc69d","\dc69e","\dc69f","\dc6a0","\dc6a1","\dc6a2","\dc6a3","\dc6a4","\dc6a5","\dc6a6","\dc6a7","\dc6a8","\dc6a9","\dc6aa","\dc6ab","\dc6ac","\dc6ad","\dc6ae","\dc6af",  # ; LVT # Lo  [27] HANGUL SYLLABLE YOG..HANGUL SYLLABLE YOH
        "\dc6b1","\dc6b2","\dc6b3","\dc6b4","\dc6b5","\dc6b6","\dc6b7","\dc6b8","\dc6b9","\dc6ba","\dc6bb","\dc6bc","\dc6bd","\dc6be","\dc6bf","\dc6c0","\dc6c1","\dc6c2","\dc6c3","\dc6c4","\dc6c5","\dc6c6","\dc6c7","\dc6c8","\dc6c9","\dc6ca","\dc6cb",  # ; LVT # Lo  [27] HANGUL SYLLABLE UG..HANGUL SYLLABLE UH
        "\dc6cd","\dc6ce","\dc6cf","\dc6d0","\dc6d1","\dc6d2","\dc6d3","\dc6d4","\dc6d5","\dc6d6","\dc6d7","\dc6d8","\dc6d9","\dc6da","\dc6db","\dc6dc","\dc6dd","\dc6de","\dc6df","\dc6e0","\dc6e1","\dc6e2","\dc6e3","\dc6e4","\dc6e5","\dc6e6","\dc6e7",  # ; LVT # Lo  [27] HANGUL SYLLABLE WEOG..HANGUL SYLLABLE WEOH
        "\dc6e9","\dc6ea","\dc6eb","\dc6ec","\dc6ed","\dc6ee","\dc6ef","\dc6f0","\dc6f1","\dc6f2","\dc6f3","\dc6f4","\dc6f5","\dc6f6","\dc6f7","\dc6f8","\dc6f9","\dc6fa","\dc6fb","\dc6fc","\dc6fd","\dc6fe","\dc6ff","\dc700","\dc701","\dc702","\dc703",  # ; LVT # Lo  [27] HANGUL SYLLABLE WEG..HANGUL SYLLABLE WEH
        "\dc705","\dc706","\dc707","\dc708","\dc709","\dc70a","\dc70b","\dc70c","\dc70d","\dc70e","\dc70f","\dc710","\dc711","\dc712","\dc713","\dc714","\dc715","\dc716","\dc717","\dc718","\dc719","\dc71a","\dc71b","\dc71c","\dc71d","\dc71e","\dc71f",  # ; LVT # Lo  [27] HANGUL SYLLABLE WIG..HANGUL SYLLABLE WIH
        "\dc721","\dc722","\dc723","\dc724","\dc725","\dc726","\dc727","\dc728","\dc729","\dc72a","\dc72b","\dc72c","\dc72d","\dc72e","\dc72f","\dc730","\dc731","\dc732","\dc733","\dc734","\dc735","\dc736","\dc737","\dc738","\dc739","\dc73a","\dc73b",  # ; LVT # Lo  [27] HANGUL SYLLABLE YUG..HANGUL SYLLABLE YUH
        "\dc73d","\dc73e","\dc73f","\dc740","\dc741","\dc742","\dc743","\dc744","\dc745","\dc746","\dc747","\dc748","\dc749","\dc74a","\dc74b","\dc74c","\dc74d","\dc74e","\dc74f","\dc750","\dc751","\dc752","\dc753","\dc754","\dc755","\dc756","\dc757",  # ; LVT # Lo  [27] HANGUL SYLLABLE EUG..HANGUL SYLLABLE EUH
        "\dc759","\dc75a","\dc75b","\dc75c","\dc75d","\dc75e","\dc75f","\dc760","\dc761","\dc762","\dc763","\dc764","\dc765","\dc766","\dc767","\dc768","\dc769","\dc76a","\dc76b","\dc76c","\dc76d","\dc76e","\dc76f","\dc770","\dc771","\dc772","\dc773",  # ; LVT # Lo  [27] HANGUL SYLLABLE YIG..HANGUL SYLLABLE YIH
        "\dc775","\dc776","\dc777","\dc778","\dc779","\dc77a","\dc77b","\dc77c","\dc77d","\dc77e","\dc77f","\dc780","\dc781","\dc782","\dc783","\dc784","\dc785","\dc786","\dc787","\dc788","\dc789","\dc78a","\dc78b","\dc78c","\dc78d","\dc78e","\dc78f",  # ; LVT # Lo  [27] HANGUL SYLLABLE IG..HANGUL SYLLABLE IH
        "\dc791","\dc792","\dc793","\dc794","\dc795","\dc796","\dc797","\dc798","\dc799","\dc79a","\dc79b","\dc79c","\dc79d","\dc79e","\dc79f","\dc7a0","\dc7a1","\dc7a2","\dc7a3","\dc7a4","\dc7a5","\dc7a6","\dc7a7","\dc7a8","\dc7a9","\dc7aa","\dc7ab",  # ; LVT # Lo  [27] HANGUL SYLLABLE JAG..HANGUL SYLLABLE JAH
        "\dc7ad","\dc7ae","\dc7af","\dc7b0","\dc7b1","\dc7b2","\dc7b3","\dc7b4","\dc7b5","\dc7b6","\dc7b7","\dc7b8","\dc7b9","\dc7ba","\dc7bb","\dc7bc","\dc7bd","\dc7be","\dc7bf","\dc7c0","\dc7c1","\dc7c2","\dc7c3","\dc7c4","\dc7c5","\dc7c6","\dc7c7",  # ; LVT # Lo  [27] HANGUL SYLLABLE JAEG..HANGUL SYLLABLE JAEH
        "\dc7c9","\dc7ca","\dc7cb","\dc7cc","\dc7cd","\dc7ce","\dc7cf","\dc7d0","\dc7d1","\dc7d2","\dc7d3","\dc7d4","\dc7d5","\dc7d6","\dc7d7","\dc7d8","\dc7d9","\dc7da","\dc7db","\dc7dc","\dc7dd","\dc7de","\dc7df","\dc7e0","\dc7e1","\dc7e2","\dc7e3",  # ; LVT # Lo  [27] HANGUL SYLLABLE JYAG..HANGUL SYLLABLE JYAH
        "\dc7e5","\dc7e6","\dc7e7","\dc7e8","\dc7e9","\dc7ea","\dc7eb","\dc7ec","\dc7ed","\dc7ee","\dc7ef","\dc7f0","\dc7f1","\dc7f2","\dc7f3","\dc7f4","\dc7f5","\dc7f6","\dc7f7","\dc7f8","\dc7f9","\dc7fa","\dc7fb","\dc7fc","\dc7fd","\dc7fe","\dc7ff",  # ; LVT # Lo  [27] HANGUL SYLLABLE JYAEG..HANGUL SYLLABLE JYAEH
        "\dc801","\dc802","\dc803","\dc804","\dc805","\dc806","\dc807","\dc808","\dc809","\dc80a","\dc80b","\dc80c","\dc80d","\dc80e","\dc80f","\dc810","\dc811","\dc812","\dc813","\dc814","\dc815","\dc816","\dc817","\dc818","\dc819","\dc81a","\dc81b",  # ; LVT # Lo  [27] HANGUL SYLLABLE JEOG..HANGUL SYLLABLE JEOH
        "\dc81d","\dc81e","\dc81f","\dc820","\dc821","\dc822","\dc823","\dc824","\dc825","\dc826","\dc827","\dc828","\dc829","\dc82a","\dc82b","\dc82c","\dc82d","\dc82e","\dc82f","\dc830","\dc831","\dc832","\dc833","\dc834","\dc835","\dc836","\dc837",  # ; LVT # Lo  [27] HANGUL SYLLABLE JEG..HANGUL SYLLABLE JEH
        "\dc839","\dc83a","\dc83b","\dc83c","\dc83d","\dc83e","\dc83f","\dc840","\dc841","\dc842","\dc843","\dc844","\dc845","\dc846","\dc847","\dc848","\dc849","\dc84a","\dc84b","\dc84c","\dc84d","\dc84e","\dc84f","\dc850","\dc851","\dc852","\dc853",  # ; LVT # Lo  [27] HANGUL SYLLABLE JYEOG..HANGUL SYLLABLE JYEOH
        "\dc855","\dc856","\dc857","\dc858","\dc859","\dc85a","\dc85b","\dc85c","\dc85d","\dc85e","\dc85f","\dc860","\dc861","\dc862","\dc863","\dc864","\dc865","\dc866","\dc867","\dc868","\dc869","\dc86a","\dc86b","\dc86c","\dc86d","\dc86e","\dc86f",  # ; LVT # Lo  [27] HANGUL SYLLABLE JYEG..HANGUL SYLLABLE JYEH
        "\dc871","\dc872","\dc873","\dc874","\dc875","\dc876","\dc877","\dc878","\dc879","\dc87a","\dc87b","\dc87c","\dc87d","\dc87e","\dc87f","\dc880","\dc881","\dc882","\dc883","\dc884","\dc885","\dc886","\dc887","\dc888","\dc889","\dc88a","\dc88b",  # ; LVT # Lo  [27] HANGUL SYLLABLE JOG..HANGUL SYLLABLE JOH
        "\dc88d","\dc88e","\dc88f","\dc890","\dc891","\dc892","\dc893","\dc894","\dc895","\dc896","\dc897","\dc898","\dc899","\dc89a","\dc89b","\dc89c","\dc89d","\dc89e","\dc89f","\dc8a0","\dc8a1","\dc8a2","\dc8a3","\dc8a4","\dc8a5","\dc8a6","\dc8a7",  # ; LVT # Lo  [27] HANGUL SYLLABLE JWAG..HANGUL SYLLABLE JWAH
        "\dc8a9","\dc8aa","\dc8ab","\dc8ac","\dc8ad","\dc8ae","\dc8af","\dc8b0","\dc8b1","\dc8b2","\dc8b3","\dc8b4","\dc8b5","\dc8b6","\dc8b7","\dc8b8","\dc8b9","\dc8ba","\dc8bb","\dc8bc","\dc8bd","\dc8be","\dc8bf","\dc8c0","\dc8c1","\dc8c2","\dc8c3",  # ; LVT # Lo  [27] HANGUL SYLLABLE JWAEG..HANGUL SYLLABLE JWAEH
        "\dc8c5","\dc8c6","\dc8c7","\dc8c8","\dc8c9","\dc8ca","\dc8cb","\dc8cc","\dc8cd","\dc8ce","\dc8cf","\dc8d0","\dc8d1","\dc8d2","\dc8d3","\dc8d4","\dc8d5","\dc8d6","\dc8d7","\dc8d8","\dc8d9","\dc8da","\dc8db","\dc8dc","\dc8dd","\dc8de","\dc8df",  # ; LVT # Lo  [27] HANGUL SYLLABLE JOEG..HANGUL SYLLABLE JOEH
        "\dc8e1","\dc8e2","\dc8e3","\dc8e4","\dc8e5","\dc8e6","\dc8e7","\dc8e8","\dc8e9","\dc8ea","\dc8eb","\dc8ec","\dc8ed","\dc8ee","\dc8ef","\dc8f0","\dc8f1","\dc8f2","\dc8f3","\dc8f4","\dc8f5","\dc8f6","\dc8f7","\dc8f8","\dc8f9","\dc8fa","\dc8fb",  # ; LVT # Lo  [27] HANGUL SYLLABLE JYOG..HANGUL SYLLABLE JYOH
        "\dc8fd","\dc8fe","\dc8ff","\dc900","\dc901","\dc902","\dc903","\dc904","\dc905","\dc906","\dc907","\dc908","\dc909","\dc90a","\dc90b","\dc90c","\dc90d","\dc90e","\dc90f","\dc910","\dc911","\dc912","\dc913","\dc914","\dc915","\dc916","\dc917",  # ; LVT # Lo  [27] HANGUL SYLLABLE JUG..HANGUL SYLLABLE JUH
        "\dc919","\dc91a","\dc91b","\dc91c","\dc91d","\dc91e","\dc91f","\dc920","\dc921","\dc922","\dc923","\dc924","\dc925","\dc926","\dc927","\dc928","\dc929","\dc92a","\dc92b","\dc92c","\dc92d","\dc92e","\dc92f","\dc930","\dc931","\dc932","\dc933",  # ; LVT # Lo  [27] HANGUL SYLLABLE JWEOG..HANGUL SYLLABLE JWEOH
        "\dc935","\dc936","\dc937","\dc938","\dc939","\dc93a","\dc93b","\dc93c","\dc93d","\dc93e","\dc93f","\dc940","\dc941","\dc942","\dc943","\dc944","\dc945","\dc946","\dc947","\dc948","\dc949","\dc94a","\dc94b","\dc94c","\dc94d","\dc94e","\dc94f",  # ; LVT # Lo  [27] HANGUL SYLLABLE JWEG..HANGUL SYLLABLE JWEH
        "\dc951","\dc952","\dc953","\dc954","\dc955","\dc956","\dc957","\dc958","\dc959","\dc95a","\dc95b","\dc95c","\dc95d","\dc95e","\dc95f","\dc960","\dc961","\dc962","\dc963","\dc964","\dc965","\dc966","\dc967","\dc968","\dc969","\dc96a","\dc96b",  # ; LVT # Lo  [27] HANGUL SYLLABLE JWIG..HANGUL SYLLABLE JWIH
        "\dc96d","\dc96e","\dc96f","\dc970","\dc971","\dc972","\dc973","\dc974","\dc975","\dc976","\dc977","\dc978","\dc979","\dc97a","\dc97b","\dc97c","\dc97d","\dc97e","\dc97f","\dc980","\dc981","\dc982","\dc983","\dc984","\dc985","\dc986","\dc987",  # ; LVT # Lo  [27] HANGUL SYLLABLE JYUG..HANGUL SYLLABLE JYUH
        "\dc989","\dc98a","\dc98b","\dc98c","\dc98d","\dc98e","\dc98f","\dc990","\dc991","\dc992","\dc993","\dc994","\dc995","\dc996","\dc997","\dc998","\dc999","\dc99a","\dc99b","\dc99c","\dc99d","\dc99e","\dc99f","\dc9a0","\dc9a1","\dc9a2","\dc9a3",  # ; LVT # Lo  [27] HANGUL SYLLABLE JEUG..HANGUL SYLLABLE JEUH
        "\dc9a5","\dc9a6","\dc9a7","\dc9a8","\dc9a9","\dc9aa","\dc9ab","\dc9ac","\dc9ad","\dc9ae","\dc9af","\dc9b0","\dc9b1","\dc9b2","\dc9b3","\dc9b4","\dc9b5","\dc9b6","\dc9b7","\dc9b8","\dc9b9","\dc9ba","\dc9bb","\dc9bc","\dc9bd","\dc9be","\dc9bf",  # ; LVT # Lo  [27] HANGUL SYLLABLE JYIG..HANGUL SYLLABLE JYIH
        "\dc9c1","\dc9c2","\dc9c3","\dc9c4","\dc9c5","\dc9c6","\dc9c7","\dc9c8","\dc9c9","\dc9ca","\dc9cb","\dc9cc","\dc9cd","\dc9ce","\dc9cf","\dc9d0","\dc9d1","\dc9d2","\dc9d3","\dc9d4","\dc9d5","\dc9d6","\dc9d7","\dc9d8","\dc9d9","\dc9da","\dc9db",  # ; LVT # Lo  [27] HANGUL SYLLABLE JIG..HANGUL SYLLABLE JIH
        "\dc9dd","\dc9de","\dc9df","\dc9e0","\dc9e1","\dc9e2","\dc9e3","\dc9e4","\dc9e5","\dc9e6","\dc9e7","\dc9e8","\dc9e9","\dc9ea","\dc9eb","\dc9ec","\dc9ed","\dc9ee","\dc9ef","\dc9f0","\dc9f1","\dc9f2","\dc9f3","\dc9f4","\dc9f5","\dc9f6","\dc9f7",  # ; LVT # Lo  [27] HANGUL SYLLABLE JJAG..HANGUL SYLLABLE JJAH
        "\dc9f9","\dc9fa","\dc9fb","\dc9fc","\dc9fd","\dc9fe","\dc9ff","\dca00","\dca01","\dca02","\dca03","\dca04","\dca05","\dca06","\dca07","\dca08","\dca09","\dca0a","\dca0b","\dca0c","\dca0d","\dca0e","\dca0f","\dca10","\dca11","\dca12","\dca13",  # ; LVT # Lo  [27] HANGUL SYLLABLE JJAEG..HANGUL SYLLABLE JJAEH
        "\dca15","\dca16","\dca17","\dca18","\dca19","\dca1a","\dca1b","\dca1c","\dca1d","\dca1e","\dca1f","\dca20","\dca21","\dca22","\dca23","\dca24","\dca25","\dca26","\dca27","\dca28","\dca29","\dca2a","\dca2b","\dca2c","\dca2d","\dca2e","\dca2f",  # ; LVT # Lo  [27] HANGUL SYLLABLE JJYAG..HANGUL SYLLABLE JJYAH
        "\dca31","\dca32","\dca33","\dca34","\dca35","\dca36","\dca37","\dca38","\dca39","\dca3a","\dca3b","\dca3c","\dca3d","\dca3e","\dca3f","\dca40","\dca41","\dca42","\dca43","\dca44","\dca45","\dca46","\dca47","\dca48","\dca49","\dca4a","\dca4b",  # ; LVT # Lo  [27] HANGUL SYLLABLE JJYAEG..HANGUL SYLLABLE JJYAEH
        "\dca4d","\dca4e","\dca4f","\dca50","\dca51","\dca52","\dca53","\dca54","\dca55","\dca56","\dca57","\dca58","\dca59","\dca5a","\dca5b","\dca5c","\dca5d","\dca5e","\dca5f","\dca60","\dca61","\dca62","\dca63","\dca64","\dca65","\dca66","\dca67",  # ; LVT # Lo  [27] HANGUL SYLLABLE JJEOG..HANGUL SYLLABLE JJEOH
        "\dca69","\dca6a","\dca6b","\dca6c","\dca6d","\dca6e","\dca6f","\dca70","\dca71","\dca72","\dca73","\dca74","\dca75","\dca76","\dca77","\dca78","\dca79","\dca7a","\dca7b","\dca7c","\dca7d","\dca7e","\dca7f","\dca80","\dca81","\dca82","\dca83",  # ; LVT # Lo  [27] HANGUL SYLLABLE JJEG..HANGUL SYLLABLE JJEH
        "\dca85","\dca86","\dca87","\dca88","\dca89","\dca8a","\dca8b","\dca8c","\dca8d","\dca8e","\dca8f","\dca90","\dca91","\dca92","\dca93","\dca94","\dca95","\dca96","\dca97","\dca98","\dca99","\dca9a","\dca9b","\dca9c","\dca9d","\dca9e","\dca9f",  # ; LVT # Lo  [27] HANGUL SYLLABLE JJYEOG..HANGUL SYLLABLE JJYEOH
        "\dcaa1","\dcaa2","\dcaa3","\dcaa4","\dcaa5","\dcaa6","\dcaa7","\dcaa8","\dcaa9","\dcaaa","\dcaab","\dcaac","\dcaad","\dcaae","\dcaaf","\dcab0","\dcab1","\dcab2","\dcab3","\dcab4","\dcab5","\dcab6","\dcab7","\dcab8","\dcab9","\dcaba","\dcabb",  # ; LVT # Lo  [27] HANGUL SYLLABLE JJYEG..HANGUL SYLLABLE JJYEH
        "\dcabd","\dcabe","\dcabf","\dcac0","\dcac1","\dcac2","\dcac3","\dcac4","\dcac5","\dcac6","\dcac7","\dcac8","\dcac9","\dcaca","\dcacb","\dcacc","\dcacd","\dcace","\dcacf","\dcad0","\dcad1","\dcad2","\dcad3","\dcad4","\dcad5","\dcad6","\dcad7",  # ; LVT # Lo  [27] HANGUL SYLLABLE JJOG..HANGUL SYLLABLE JJOH
        "\dcad9","\dcada","\dcadb","\dcadc","\dcadd","\dcade","\dcadf","\dcae0","\dcae1","\dcae2","\dcae3","\dcae4","\dcae5","\dcae6","\dcae7","\dcae8","\dcae9","\dcaea","\dcaeb","\dcaec","\dcaed","\dcaee","\dcaef","\dcaf0","\dcaf1","\dcaf2","\dcaf3",  # ; LVT # Lo  [27] HANGUL SYLLABLE JJWAG..HANGUL SYLLABLE JJWAH
        "\dcaf5","\dcaf6","\dcaf7","\dcaf8","\dcaf9","\dcafa","\dcafb","\dcafc","\dcafd","\dcafe","\dcaff","\dcb00","\dcb01","\dcb02","\dcb03","\dcb04","\dcb05","\dcb06","\dcb07","\dcb08","\dcb09","\dcb0a","\dcb0b","\dcb0c","\dcb0d","\dcb0e","\dcb0f",  # ; LVT # Lo  [27] HANGUL SYLLABLE JJWAEG..HANGUL SYLLABLE JJWAEH
        "\dcb11","\dcb12","\dcb13","\dcb14","\dcb15","\dcb16","\dcb17","\dcb18","\dcb19","\dcb1a","\dcb1b","\dcb1c","\dcb1d","\dcb1e","\dcb1f","\dcb20","\dcb21","\dcb22","\dcb23","\dcb24","\dcb25","\dcb26","\dcb27","\dcb28","\dcb29","\dcb2a","\dcb2b",  # ; LVT # Lo  [27] HANGUL SYLLABLE JJOEG..HANGUL SYLLABLE JJOEH
        "\dcb2d","\dcb2e","\dcb2f","\dcb30","\dcb31","\dcb32","\dcb33","\dcb34","\dcb35","\dcb36","\dcb37","\dcb38","\dcb39","\dcb3a","\dcb3b","\dcb3c","\dcb3d","\dcb3e","\dcb3f","\dcb40","\dcb41","\dcb42","\dcb43","\dcb44","\dcb45","\dcb46","\dcb47",  # ; LVT # Lo  [27] HANGUL SYLLABLE JJYOG..HANGUL SYLLABLE JJYOH
        "\dcb49","\dcb4a","\dcb4b","\dcb4c","\dcb4d","\dcb4e","\dcb4f","\dcb50","\dcb51","\dcb52","\dcb53","\dcb54","\dcb55","\dcb56","\dcb57","\dcb58","\dcb59","\dcb5a","\dcb5b","\dcb5c","\dcb5d","\dcb5e","\dcb5f","\dcb60","\dcb61","\dcb62","\dcb63",  # ; LVT # Lo  [27] HANGUL SYLLABLE JJUG..HANGUL SYLLABLE JJUH
        "\dcb65","\dcb66","\dcb67","\dcb68","\dcb69","\dcb6a","\dcb6b","\dcb6c","\dcb6d","\dcb6e","\dcb6f","\dcb70","\dcb71","\dcb72","\dcb73","\dcb74","\dcb75","\dcb76","\dcb77","\dcb78","\dcb79","\dcb7a","\dcb7b","\dcb7c","\dcb7d","\dcb7e","\dcb7f",  # ; LVT # Lo  [27] HANGUL SYLLABLE JJWEOG..HANGUL SYLLABLE JJWEOH
        "\dcb81","\dcb82","\dcb83","\dcb84","\dcb85","\dcb86","\dcb87","\dcb88","\dcb89","\dcb8a","\dcb8b","\dcb8c","\dcb8d","\dcb8e","\dcb8f","\dcb90","\dcb91","\dcb92","\dcb93","\dcb94","\dcb95","\dcb96","\dcb97","\dcb98","\dcb99","\dcb9a","\dcb9b",  # ; LVT # Lo  [27] HANGUL SYLLABLE JJWEG..HANGUL SYLLABLE JJWEH
        "\dcb9d","\dcb9e","\dcb9f","\dcba0","\dcba1","\dcba2","\dcba3","\dcba4","\dcba5","\dcba6","\dcba7","\dcba8","\dcba9","\dcbaa","\dcbab","\dcbac","\dcbad","\dcbae","\dcbaf","\dcbb0","\dcbb1","\dcbb2","\dcbb3","\dcbb4","\dcbb5","\dcbb6","\dcbb7",  # ; LVT # Lo  [27] HANGUL SYLLABLE JJWIG..HANGUL SYLLABLE JJWIH
        "\dcbb9","\dcbba","\dcbbb","\dcbbc","\dcbbd","\dcbbe","\dcbbf","\dcbc0","\dcbc1","\dcbc2","\dcbc3","\dcbc4","\dcbc5","\dcbc6","\dcbc7","\dcbc8","\dcbc9","\dcbca","\dcbcb","\dcbcc","\dcbcd","\dcbce","\dcbcf","\dcbd0","\dcbd1","\dcbd2","\dcbd3",  # ; LVT # Lo  [27] HANGUL SYLLABLE JJYUG..HANGUL SYLLABLE JJYUH
        "\dcbd5","\dcbd6","\dcbd7","\dcbd8","\dcbd9","\dcbda","\dcbdb","\dcbdc","\dcbdd","\dcbde","\dcbdf","\dcbe0","\dcbe1","\dcbe2","\dcbe3","\dcbe4","\dcbe5","\dcbe6","\dcbe7","\dcbe8","\dcbe9","\dcbea","\dcbeb","\dcbec","\dcbed","\dcbee","\dcbef",  # ; LVT # Lo  [27] HANGUL SYLLABLE JJEUG..HANGUL SYLLABLE JJEUH
        "\dcbf1","\dcbf2","\dcbf3","\dcbf4","\dcbf5","\dcbf6","\dcbf7","\dcbf8","\dcbf9","\dcbfa","\dcbfb","\dcbfc","\dcbfd","\dcbfe","\dcbff","\dcc00","\dcc01","\dcc02","\dcc03","\dcc04","\dcc05","\dcc06","\dcc07","\dcc08","\dcc09","\dcc0a","\dcc0b",  # ; LVT # Lo  [27] HANGUL SYLLABLE JJYIG..HANGUL SYLLABLE JJYIH
        "\dcc0d","\dcc0e","\dcc0f","\dcc10","\dcc11","\dcc12","\dcc13","\dcc14","\dcc15","\dcc16","\dcc17","\dcc18","\dcc19","\dcc1a","\dcc1b","\dcc1c","\dcc1d","\dcc1e","\dcc1f","\dcc20","\dcc21","\dcc22","\dcc23","\dcc24","\dcc25","\dcc26","\dcc27",  # ; LVT # Lo  [27] HANGUL SYLLABLE JJIG..HANGUL SYLLABLE JJIH
        "\dcc29","\dcc2a","\dcc2b","\dcc2c","\dcc2d","\dcc2e","\dcc2f","\dcc30","\dcc31","\dcc32","\dcc33","\dcc34","\dcc35","\dcc36","\dcc37","\dcc38","\dcc39","\dcc3a","\dcc3b","\dcc3c","\dcc3d","\dcc3e","\dcc3f","\dcc40","\dcc41","\dcc42","\dcc43",  # ; LVT # Lo  [27] HANGUL SYLLABLE CAG..HANGUL SYLLABLE CAH
        "\dcc45","\dcc46","\dcc47","\dcc48","\dcc49","\dcc4a","\dcc4b","\dcc4c","\dcc4d","\dcc4e","\dcc4f","\dcc50","\dcc51","\dcc52","\dcc53","\dcc54","\dcc55","\dcc56","\dcc57","\dcc58","\dcc59","\dcc5a","\dcc5b","\dcc5c","\dcc5d","\dcc5e","\dcc5f",  # ; LVT # Lo  [27] HANGUL SYLLABLE CAEG..HANGUL SYLLABLE CAEH
        "\dcc61","\dcc62","\dcc63","\dcc64","\dcc65","\dcc66","\dcc67","\dcc68","\dcc69","\dcc6a","\dcc6b","\dcc6c","\dcc6d","\dcc6e","\dcc6f","\dcc70","\dcc71","\dcc72","\dcc73","\dcc74","\dcc75","\dcc76","\dcc77","\dcc78","\dcc79","\dcc7a","\dcc7b",  # ; LVT # Lo  [27] HANGUL SYLLABLE CYAG..HANGUL SYLLABLE CYAH
        "\dcc7d","\dcc7e","\dcc7f","\dcc80","\dcc81","\dcc82","\dcc83","\dcc84","\dcc85","\dcc86","\dcc87","\dcc88","\dcc89","\dcc8a","\dcc8b","\dcc8c","\dcc8d","\dcc8e","\dcc8f","\dcc90","\dcc91","\dcc92","\dcc93","\dcc94","\dcc95","\dcc96","\dcc97",  # ; LVT # Lo  [27] HANGUL SYLLABLE CYAEG..HANGUL SYLLABLE CYAEH
        "\dcc99","\dcc9a","\dcc9b","\dcc9c","\dcc9d","\dcc9e","\dcc9f","\dcca0","\dcca1","\dcca2","\dcca3","\dcca4","\dcca5","\dcca6","\dcca7","\dcca8","\dcca9","\dccaa","\dccab","\dccac","\dccad","\dccae","\dccaf","\dccb0","\dccb1","\dccb2","\dccb3",  # ; LVT # Lo  [27] HANGUL SYLLABLE CEOG..HANGUL SYLLABLE CEOH
        "\dccb5","\dccb6","\dccb7","\dccb8","\dccb9","\dccba","\dccbb","\dccbc","\dccbd","\dccbe","\dccbf","\dccc0","\dccc1","\dccc2","\dccc3","\dccc4","\dccc5","\dccc6","\dccc7","\dccc8","\dccc9","\dccca","\dcccb","\dcccc","\dcccd","\dccce","\dcccf",  # ; LVT # Lo  [27] HANGUL SYLLABLE CEG..HANGUL SYLLABLE CEH
        "\dccd1","\dccd2","\dccd3","\dccd4","\dccd5","\dccd6","\dccd7","\dccd8","\dccd9","\dccda","\dccdb","\dccdc","\dccdd","\dccde","\dccdf","\dcce0","\dcce1","\dcce2","\dcce3","\dcce4","\dcce5","\dcce6","\dcce7","\dcce8","\dcce9","\dccea","\dcceb",  # ; LVT # Lo  [27] HANGUL SYLLABLE CYEOG..HANGUL SYLLABLE CYEOH
        "\dcced","\dccee","\dccef","\dccf0","\dccf1","\dccf2","\dccf3","\dccf4","\dccf5","\dccf6","\dccf7","\dccf8","\dccf9","\dccfa","\dccfb","\dccfc","\dccfd","\dccfe","\dccff","\dcd00","\dcd01","\dcd02","\dcd03","\dcd04","\dcd05","\dcd06","\dcd07",  # ; LVT # Lo  [27] HANGUL SYLLABLE CYEG..HANGUL SYLLABLE CYEH
        "\dcd09","\dcd0a","\dcd0b","\dcd0c","\dcd0d","\dcd0e","\dcd0f","\dcd10","\dcd11","\dcd12","\dcd13","\dcd14","\dcd15","\dcd16","\dcd17","\dcd18","\dcd19","\dcd1a","\dcd1b","\dcd1c","\dcd1d","\dcd1e","\dcd1f","\dcd20","\dcd21","\dcd22","\dcd23",  # ; LVT # Lo  [27] HANGUL SYLLABLE COG..HANGUL SYLLABLE COH
        "\dcd25","\dcd26","\dcd27","\dcd28","\dcd29","\dcd2a","\dcd2b","\dcd2c","\dcd2d","\dcd2e","\dcd2f","\dcd30","\dcd31","\dcd32","\dcd33","\dcd34","\dcd35","\dcd36","\dcd37","\dcd38","\dcd39","\dcd3a","\dcd3b","\dcd3c","\dcd3d","\dcd3e","\dcd3f",  # ; LVT # Lo  [27] HANGUL SYLLABLE CWAG..HANGUL SYLLABLE CWAH
        "\dcd41","\dcd42","\dcd43","\dcd44","\dcd45","\dcd46","\dcd47","\dcd48","\dcd49","\dcd4a","\dcd4b","\dcd4c","\dcd4d","\dcd4e","\dcd4f","\dcd50","\dcd51","\dcd52","\dcd53","\dcd54","\dcd55","\dcd56","\dcd57","\dcd58","\dcd59","\dcd5a","\dcd5b",  # ; LVT # Lo  [27] HANGUL SYLLABLE CWAEG..HANGUL SYLLABLE CWAEH
        "\dcd5d","\dcd5e","\dcd5f","\dcd60","\dcd61","\dcd62","\dcd63","\dcd64","\dcd65","\dcd66","\dcd67","\dcd68","\dcd69","\dcd6a","\dcd6b","\dcd6c","\dcd6d","\dcd6e","\dcd6f","\dcd70","\dcd71","\dcd72","\dcd73","\dcd74","\dcd75","\dcd76","\dcd77",  # ; LVT # Lo  [27] HANGUL SYLLABLE COEG..HANGUL SYLLABLE COEH
        "\dcd79","\dcd7a","\dcd7b","\dcd7c","\dcd7d","\dcd7e","\dcd7f","\dcd80","\dcd81","\dcd82","\dcd83","\dcd84","\dcd85","\dcd86","\dcd87","\dcd88","\dcd89","\dcd8a","\dcd8b","\dcd8c","\dcd8d","\dcd8e","\dcd8f","\dcd90","\dcd91","\dcd92","\dcd93",  # ; LVT # Lo  [27] HANGUL SYLLABLE CYOG..HANGUL SYLLABLE CYOH
        "\dcd95","\dcd96","\dcd97","\dcd98","\dcd99","\dcd9a","\dcd9b","\dcd9c","\dcd9d","\dcd9e","\dcd9f","\dcda0","\dcda1","\dcda2","\dcda3","\dcda4","\dcda5","\dcda6","\dcda7","\dcda8","\dcda9","\dcdaa","\dcdab","\dcdac","\dcdad","\dcdae","\dcdaf",  # ; LVT # Lo  [27] HANGUL SYLLABLE CUG..HANGUL SYLLABLE CUH
        "\dcdb1","\dcdb2","\dcdb3","\dcdb4","\dcdb5","\dcdb6","\dcdb7","\dcdb8","\dcdb9","\dcdba","\dcdbb","\dcdbc","\dcdbd","\dcdbe","\dcdbf","\dcdc0","\dcdc1","\dcdc2","\dcdc3","\dcdc4","\dcdc5","\dcdc6","\dcdc7","\dcdc8","\dcdc9","\dcdca","\dcdcb",  # ; LVT # Lo  [27] HANGUL SYLLABLE CWEOG..HANGUL SYLLABLE CWEOH
        "\dcdcd","\dcdce","\dcdcf","\dcdd0","\dcdd1","\dcdd2","\dcdd3","\dcdd4","\dcdd5","\dcdd6","\dcdd7","\dcdd8","\dcdd9","\dcdda","\dcddb","\dcddc","\dcddd","\dcdde","\dcddf","\dcde0","\dcde1","\dcde2","\dcde3","\dcde4","\dcde5","\dcde6","\dcde7",  # ; LVT # Lo  [27] HANGUL SYLLABLE CWEG..HANGUL SYLLABLE CWEH
        "\dcde9","\dcdea","\dcdeb","\dcdec","\dcded","\dcdee","\dcdef","\dcdf0","\dcdf1","\dcdf2","\dcdf3","\dcdf4","\dcdf5","\dcdf6","\dcdf7","\dcdf8","\dcdf9","\dcdfa","\dcdfb","\dcdfc","\dcdfd","\dcdfe","\dcdff","\dce00","\dce01","\dce02","\dce03",  # ; LVT # Lo  [27] HANGUL SYLLABLE CWIG..HANGUL SYLLABLE CWIH
        "\dce05","\dce06","\dce07","\dce08","\dce09","\dce0a","\dce0b","\dce0c","\dce0d","\dce0e","\dce0f","\dce10","\dce11","\dce12","\dce13","\dce14","\dce15","\dce16","\dce17","\dce18","\dce19","\dce1a","\dce1b","\dce1c","\dce1d","\dce1e","\dce1f",  # ; LVT # Lo  [27] HANGUL SYLLABLE CYUG..HANGUL SYLLABLE CYUH
        "\dce21","\dce22","\dce23","\dce24","\dce25","\dce26","\dce27","\dce28","\dce29","\dce2a","\dce2b","\dce2c","\dce2d","\dce2e","\dce2f","\dce30","\dce31","\dce32","\dce33","\dce34","\dce35","\dce36","\dce37","\dce38","\dce39","\dce3a","\dce3b",  # ; LVT # Lo  [27] HANGUL SYLLABLE CEUG..HANGUL SYLLABLE CEUH
        "\dce3d","\dce3e","\dce3f","\dce40","\dce41","\dce42","\dce43","\dce44","\dce45","\dce46","\dce47","\dce48","\dce49","\dce4a","\dce4b","\dce4c","\dce4d","\dce4e","\dce4f","\dce50","\dce51","\dce52","\dce53","\dce54","\dce55","\dce56","\dce57",  # ; LVT # Lo  [27] HANGUL SYLLABLE CYIG..HANGUL SYLLABLE CYIH
        "\dce59","\dce5a","\dce5b","\dce5c","\dce5d","\dce5e","\dce5f","\dce60","\dce61","\dce62","\dce63","\dce64","\dce65","\dce66","\dce67","\dce68","\dce69","\dce6a","\dce6b","\dce6c","\dce6d","\dce6e","\dce6f","\dce70","\dce71","\dce72","\dce73",  # ; LVT # Lo  [27] HANGUL SYLLABLE CIG..HANGUL SYLLABLE CIH
        "\dce75","\dce76","\dce77","\dce78","\dce79","\dce7a","\dce7b","\dce7c","\dce7d","\dce7e","\dce7f","\dce80","\dce81","\dce82","\dce83","\dce84","\dce85","\dce86","\dce87","\dce88","\dce89","\dce8a","\dce8b","\dce8c","\dce8d","\dce8e","\dce8f",  # ; LVT # Lo  [27] HANGUL SYLLABLE KAG..HANGUL SYLLABLE KAH
        "\dce91","\dce92","\dce93","\dce94","\dce95","\dce96","\dce97","\dce98","\dce99","\dce9a","\dce9b","\dce9c","\dce9d","\dce9e","\dce9f","\dcea0","\dcea1","\dcea2","\dcea3","\dcea4","\dcea5","\dcea6","\dcea7","\dcea8","\dcea9","\dceaa","\dceab",  # ; LVT # Lo  [27] HANGUL SYLLABLE KAEG..HANGUL SYLLABLE KAEH
        "\dcead","\dceae","\dceaf","\dceb0","\dceb1","\dceb2","\dceb3","\dceb4","\dceb5","\dceb6","\dceb7","\dceb8","\dceb9","\dceba","\dcebb","\dcebc","\dcebd","\dcebe","\dcebf","\dcec0","\dcec1","\dcec2","\dcec3","\dcec4","\dcec5","\dcec6","\dcec7",  # ; LVT # Lo  [27] HANGUL SYLLABLE KYAG..HANGUL SYLLABLE KYAH
        "\dcec9","\dceca","\dcecb","\dcecc","\dcecd","\dcece","\dcecf","\dced0","\dced1","\dced2","\dced3","\dced4","\dced5","\dced6","\dced7","\dced8","\dced9","\dceda","\dcedb","\dcedc","\dcedd","\dcede","\dcedf","\dcee0","\dcee1","\dcee2","\dcee3",  # ; LVT # Lo  [27] HANGUL SYLLABLE KYAEG..HANGUL SYLLABLE KYAEH
        "\dcee5","\dcee6","\dcee7","\dcee8","\dcee9","\dceea","\dceeb","\dceec","\dceed","\dceee","\dceef","\dcef0","\dcef1","\dcef2","\dcef3","\dcef4","\dcef5","\dcef6","\dcef7","\dcef8","\dcef9","\dcefa","\dcefb","\dcefc","\dcefd","\dcefe","\dceff",  # ; LVT # Lo  [27] HANGUL SYLLABLE KEOG..HANGUL SYLLABLE KEOH
        "\dcf01","\dcf02","\dcf03","\dcf04","\dcf05","\dcf06","\dcf07","\dcf08","\dcf09","\dcf0a","\dcf0b","\dcf0c","\dcf0d","\dcf0e","\dcf0f","\dcf10","\dcf11","\dcf12","\dcf13","\dcf14","\dcf15","\dcf16","\dcf17","\dcf18","\dcf19","\dcf1a","\dcf1b",  # ; LVT # Lo  [27] HANGUL SYLLABLE KEG..HANGUL SYLLABLE KEH
        "\dcf1d","\dcf1e","\dcf1f","\dcf20","\dcf21","\dcf22","\dcf23","\dcf24","\dcf25","\dcf26","\dcf27","\dcf28","\dcf29","\dcf2a","\dcf2b","\dcf2c","\dcf2d","\dcf2e","\dcf2f","\dcf30","\dcf31","\dcf32","\dcf33","\dcf34","\dcf35","\dcf36","\dcf37",  # ; LVT # Lo  [27] HANGUL SYLLABLE KYEOG..HANGUL SYLLABLE KYEOH
        "\dcf39","\dcf3a","\dcf3b","\dcf3c","\dcf3d","\dcf3e","\dcf3f","\dcf40","\dcf41","\dcf42","\dcf43","\dcf44","\dcf45","\dcf46","\dcf47","\dcf48","\dcf49","\dcf4a","\dcf4b","\dcf4c","\dcf4d","\dcf4e","\dcf4f","\dcf50","\dcf51","\dcf52","\dcf53",  # ; LVT # Lo  [27] HANGUL SYLLABLE KYEG..HANGUL SYLLABLE KYEH
        "\dcf55","\dcf56","\dcf57","\dcf58","\dcf59","\dcf5a","\dcf5b","\dcf5c","\dcf5d","\dcf5e","\dcf5f","\dcf60","\dcf61","\dcf62","\dcf63","\dcf64","\dcf65","\dcf66","\dcf67","\dcf68","\dcf69","\dcf6a","\dcf6b","\dcf6c","\dcf6d","\dcf6e","\dcf6f",  # ; LVT # Lo  [27] HANGUL SYLLABLE KOG..HANGUL SYLLABLE KOH
        "\dcf71","\dcf72","\dcf73","\dcf74","\dcf75","\dcf76","\dcf77","\dcf78","\dcf79","\dcf7a","\dcf7b","\dcf7c","\dcf7d","\dcf7e","\dcf7f","\dcf80","\dcf81","\dcf82","\dcf83","\dcf84","\dcf85","\dcf86","\dcf87","\dcf88","\dcf89","\dcf8a","\dcf8b",  # ; LVT # Lo  [27] HANGUL SYLLABLE KWAG..HANGUL SYLLABLE KWAH
        "\dcf8d","\dcf8e","\dcf8f","\dcf90","\dcf91","\dcf92","\dcf93","\dcf94","\dcf95","\dcf96","\dcf97","\dcf98","\dcf99","\dcf9a","\dcf9b","\dcf9c","\dcf9d","\dcf9e","\dcf9f","\dcfa0","\dcfa1","\dcfa2","\dcfa3","\dcfa4","\dcfa5","\dcfa6","\dcfa7",  # ; LVT # Lo  [27] HANGUL SYLLABLE KWAEG..HANGUL SYLLABLE KWAEH
        "\dcfa9","\dcfaa","\dcfab","\dcfac","\dcfad","\dcfae","\dcfaf","\dcfb0","\dcfb1","\dcfb2","\dcfb3","\dcfb4","\dcfb5","\dcfb6","\dcfb7","\dcfb8","\dcfb9","\dcfba","\dcfbb","\dcfbc","\dcfbd","\dcfbe","\dcfbf","\dcfc0","\dcfc1","\dcfc2","\dcfc3",  # ; LVT # Lo  [27] HANGUL SYLLABLE KOEG..HANGUL SYLLABLE KOEH
        "\dcfc5","\dcfc6","\dcfc7","\dcfc8","\dcfc9","\dcfca","\dcfcb","\dcfcc","\dcfcd","\dcfce","\dcfcf","\dcfd0","\dcfd1","\dcfd2","\dcfd3","\dcfd4","\dcfd5","\dcfd6","\dcfd7","\dcfd8","\dcfd9","\dcfda","\dcfdb","\dcfdc","\dcfdd","\dcfde","\dcfdf",  # ; LVT # Lo  [27] HANGUL SYLLABLE KYOG..HANGUL SYLLABLE KYOH
        "\dcfe1","\dcfe2","\dcfe3","\dcfe4","\dcfe5","\dcfe6","\dcfe7","\dcfe8","\dcfe9","\dcfea","\dcfeb","\dcfec","\dcfed","\dcfee","\dcfef","\dcff0","\dcff1","\dcff2","\dcff3","\dcff4","\dcff5","\dcff6","\dcff7","\dcff8","\dcff9","\dcffa","\dcffb",  # ; LVT # Lo  [27] HANGUL SYLLABLE KUG..HANGUL SYLLABLE KUH
        "\dcffd","\dcffe","\dcfff","\dd000","\dd001","\dd002","\dd003","\dd004","\dd005","\dd006","\dd007","\dd008","\dd009","\dd00a","\dd00b","\dd00c","\dd00d","\dd00e","\dd00f","\dd010","\dd011","\dd012","\dd013","\dd014","\dd015","\dd016","\dd017",  # ; LVT # Lo  [27] HANGUL SYLLABLE KWEOG..HANGUL SYLLABLE KWEOH
        "\dd019","\dd01a","\dd01b","\dd01c","\dd01d","\dd01e","\dd01f","\dd020","\dd021","\dd022","\dd023","\dd024","\dd025","\dd026","\dd027","\dd028","\dd029","\dd02a","\dd02b","\dd02c","\dd02d","\dd02e","\dd02f","\dd030","\dd031","\dd032","\dd033",  # ; LVT # Lo  [27] HANGUL SYLLABLE KWEG..HANGUL SYLLABLE KWEH
        "\dd035","\dd036","\dd037","\dd038","\dd039","\dd03a","\dd03b","\dd03c","\dd03d","\dd03e","\dd03f","\dd040","\dd041","\dd042","\dd043","\dd044","\dd045","\dd046","\dd047","\dd048","\dd049","\dd04a","\dd04b","\dd04c","\dd04d","\dd04e","\dd04f",  # ; LVT # Lo  [27] HANGUL SYLLABLE KWIG..HANGUL SYLLABLE KWIH
        "\dd051","\dd052","\dd053","\dd054","\dd055","\dd056","\dd057","\dd058","\dd059","\dd05a","\dd05b","\dd05c","\dd05d","\dd05e","\dd05f","\dd060","\dd061","\dd062","\dd063","\dd064","\dd065","\dd066","\dd067","\dd068","\dd069","\dd06a","\dd06b",  # ; LVT # Lo  [27] HANGUL SYLLABLE KYUG..HANGUL SYLLABLE KYUH
        "\dd06d","\dd06e","\dd06f","\dd070","\dd071","\dd072","\dd073","\dd074","\dd075","\dd076","\dd077","\dd078","\dd079","\dd07a","\dd07b","\dd07c","\dd07d","\dd07e","\dd07f","\dd080","\dd081","\dd082","\dd083","\dd084","\dd085","\dd086","\dd087",  # ; LVT # Lo  [27] HANGUL SYLLABLE KEUG..HANGUL SYLLABLE KEUH
        "\dd089","\dd08a","\dd08b","\dd08c","\dd08d","\dd08e","\dd08f","\dd090","\dd091","\dd092","\dd093","\dd094","\dd095","\dd096","\dd097","\dd098","\dd099","\dd09a","\dd09b","\dd09c","\dd09d","\dd09e","\dd09f","\dd0a0","\dd0a1","\dd0a2","\dd0a3",  # ; LVT # Lo  [27] HANGUL SYLLABLE KYIG..HANGUL SYLLABLE KYIH
        "\dd0a5","\dd0a6","\dd0a7","\dd0a8","\dd0a9","\dd0aa","\dd0ab","\dd0ac","\dd0ad","\dd0ae","\dd0af","\dd0b0","\dd0b1","\dd0b2","\dd0b3","\dd0b4","\dd0b5","\dd0b6","\dd0b7","\dd0b8","\dd0b9","\dd0ba","\dd0bb","\dd0bc","\dd0bd","\dd0be","\dd0bf",  # ; LVT # Lo  [27] HANGUL SYLLABLE KIG..HANGUL SYLLABLE KIH
        "\dd0c1","\dd0c2","\dd0c3","\dd0c4","\dd0c5","\dd0c6","\dd0c7","\dd0c8","\dd0c9","\dd0ca","\dd0cb","\dd0cc","\dd0cd","\dd0ce","\dd0cf","\dd0d0","\dd0d1","\dd0d2","\dd0d3","\dd0d4","\dd0d5","\dd0d6","\dd0d7","\dd0d8","\dd0d9","\dd0da","\dd0db",  # ; LVT # Lo  [27] HANGUL SYLLABLE TAG..HANGUL SYLLABLE TAH
        "\dd0dd","\dd0de","\dd0df","\dd0e0","\dd0e1","\dd0e2","\dd0e3","\dd0e4","\dd0e5","\dd0e6","\dd0e7","\dd0e8","\dd0e9","\dd0ea","\dd0eb","\dd0ec","\dd0ed","\dd0ee","\dd0ef","\dd0f0","\dd0f1","\dd0f2","\dd0f3","\dd0f4","\dd0f5","\dd0f6","\dd0f7",  # ; LVT # Lo  [27] HANGUL SYLLABLE TAEG..HANGUL SYLLABLE TAEH
        "\dd0f9","\dd0fa","\dd0fb","\dd0fc","\dd0fd","\dd0fe","\dd0ff","\dd100","\dd101","\dd102","\dd103","\dd104","\dd105","\dd106","\dd107","\dd108","\dd109","\dd10a","\dd10b","\dd10c","\dd10d","\dd10e","\dd10f","\dd110","\dd111","\dd112","\dd113",  # ; LVT # Lo  [27] HANGUL SYLLABLE TYAG..HANGUL SYLLABLE TYAH
        "\dd115","\dd116","\dd117","\dd118","\dd119","\dd11a","\dd11b","\dd11c","\dd11d","\dd11e","\dd11f","\dd120","\dd121","\dd122","\dd123","\dd124","\dd125","\dd126","\dd127","\dd128","\dd129","\dd12a","\dd12b","\dd12c","\dd12d","\dd12e","\dd12f",  # ; LVT # Lo  [27] HANGUL SYLLABLE TYAEG..HANGUL SYLLABLE TYAEH
        "\dd131","\dd132","\dd133","\dd134","\dd135","\dd136","\dd137","\dd138","\dd139","\dd13a","\dd13b","\dd13c","\dd13d","\dd13e","\dd13f","\dd140","\dd141","\dd142","\dd143","\dd144","\dd145","\dd146","\dd147","\dd148","\dd149","\dd14a","\dd14b",  # ; LVT # Lo  [27] HANGUL SYLLABLE TEOG..HANGUL SYLLABLE TEOH
        "\dd14d","\dd14e","\dd14f","\dd150","\dd151","\dd152","\dd153","\dd154","\dd155","\dd156","\dd157","\dd158","\dd159","\dd15a","\dd15b","\dd15c","\dd15d","\dd15e","\dd15f","\dd160","\dd161","\dd162","\dd163","\dd164","\dd165","\dd166","\dd167",  # ; LVT # Lo  [27] HANGUL SYLLABLE TEG..HANGUL SYLLABLE TEH
        "\dd169","\dd16a","\dd16b","\dd16c","\dd16d","\dd16e","\dd16f","\dd170","\dd171","\dd172","\dd173","\dd174","\dd175","\dd176","\dd177","\dd178","\dd179","\dd17a","\dd17b","\dd17c","\dd17d","\dd17e","\dd17f","\dd180","\dd181","\dd182","\dd183",  # ; LVT # Lo  [27] HANGUL SYLLABLE TYEOG..HANGUL SYLLABLE TYEOH
        "\dd185","\dd186","\dd187","\dd188","\dd189","\dd18a","\dd18b","\dd18c","\dd18d","\dd18e","\dd18f","\dd190","\dd191","\dd192","\dd193","\dd194","\dd195","\dd196","\dd197","\dd198","\dd199","\dd19a","\dd19b","\dd19c","\dd19d","\dd19e","\dd19f",  # ; LVT # Lo  [27] HANGUL SYLLABLE TYEG..HANGUL SYLLABLE TYEH
        "\dd1a1","\dd1a2","\dd1a3","\dd1a4","\dd1a5","\dd1a6","\dd1a7","\dd1a8","\dd1a9","\dd1aa","\dd1ab","\dd1ac","\dd1ad","\dd1ae","\dd1af","\dd1b0","\dd1b1","\dd1b2","\dd1b3","\dd1b4","\dd1b5","\dd1b6","\dd1b7","\dd1b8","\dd1b9","\dd1ba","\dd1bb",  # ; LVT # Lo  [27] HANGUL SYLLABLE TOG..HANGUL SYLLABLE TOH
        "\dd1bd","\dd1be","\dd1bf","\dd1c0","\dd1c1","\dd1c2","\dd1c3","\dd1c4","\dd1c5","\dd1c6","\dd1c7","\dd1c8","\dd1c9","\dd1ca","\dd1cb","\dd1cc","\dd1cd","\dd1ce","\dd1cf","\dd1d0","\dd1d1","\dd1d2","\dd1d3","\dd1d4","\dd1d5","\dd1d6","\dd1d7",  # ; LVT # Lo  [27] HANGUL SYLLABLE TWAG..HANGUL SYLLABLE TWAH
        "\dd1d9","\dd1da","\dd1db","\dd1dc","\dd1dd","\dd1de","\dd1df","\dd1e0","\dd1e1","\dd1e2","\dd1e3","\dd1e4","\dd1e5","\dd1e6","\dd1e7","\dd1e8","\dd1e9","\dd1ea","\dd1eb","\dd1ec","\dd1ed","\dd1ee","\dd1ef","\dd1f0","\dd1f1","\dd1f2","\dd1f3",  # ; LVT # Lo  [27] HANGUL SYLLABLE TWAEG..HANGUL SYLLABLE TWAEH
        "\dd1f5","\dd1f6","\dd1f7","\dd1f8","\dd1f9","\dd1fa","\dd1fb","\dd1fc","\dd1fd","\dd1fe","\dd1ff","\dd200","\dd201","\dd202","\dd203","\dd204","\dd205","\dd206","\dd207","\dd208","\dd209","\dd20a","\dd20b","\dd20c","\dd20d","\dd20e","\dd20f",  # ; LVT # Lo  [27] HANGUL SYLLABLE TOEG..HANGUL SYLLABLE TOEH
        "\dd211","\dd212","\dd213","\dd214","\dd215","\dd216","\dd217","\dd218","\dd219","\dd21a","\dd21b","\dd21c","\dd21d","\dd21e","\dd21f","\dd220","\dd221","\dd222","\dd223","\dd224","\dd225","\dd226","\dd227","\dd228","\dd229","\dd22a","\dd22b",  # ; LVT # Lo  [27] HANGUL SYLLABLE TYOG..HANGUL SYLLABLE TYOH
        "\dd22d","\dd22e","\dd22f","\dd230","\dd231","\dd232","\dd233","\dd234","\dd235","\dd236","\dd237","\dd238","\dd239","\dd23a","\dd23b","\dd23c","\dd23d","\dd23e","\dd23f","\dd240","\dd241","\dd242","\dd243","\dd244","\dd245","\dd246","\dd247",  # ; LVT # Lo  [27] HANGUL SYLLABLE TUG..HANGUL SYLLABLE TUH
        "\dd249","\dd24a","\dd24b","\dd24c","\dd24d","\dd24e","\dd24f","\dd250","\dd251","\dd252","\dd253","\dd254","\dd255","\dd256","\dd257","\dd258","\dd259","\dd25a","\dd25b","\dd25c","\dd25d","\dd25e","\dd25f","\dd260","\dd261","\dd262","\dd263",  # ; LVT # Lo  [27] HANGUL SYLLABLE TWEOG..HANGUL SYLLABLE TWEOH
        "\dd265","\dd266","\dd267","\dd268","\dd269","\dd26a","\dd26b","\dd26c","\dd26d","\dd26e","\dd26f","\dd270","\dd271","\dd272","\dd273","\dd274","\dd275","\dd276","\dd277","\dd278","\dd279","\dd27a","\dd27b","\dd27c","\dd27d","\dd27e","\dd27f",  # ; LVT # Lo  [27] HANGUL SYLLABLE TWEG..HANGUL SYLLABLE TWEH
        "\dd281","\dd282","\dd283","\dd284","\dd285","\dd286","\dd287","\dd288","\dd289","\dd28a","\dd28b","\dd28c","\dd28d","\dd28e","\dd28f","\dd290","\dd291","\dd292","\dd293","\dd294","\dd295","\dd296","\dd297","\dd298","\dd299","\dd29a","\dd29b",  # ; LVT # Lo  [27] HANGUL SYLLABLE TWIG..HANGUL SYLLABLE TWIH
        "\dd29d","\dd29e","\dd29f","\dd2a0","\dd2a1","\dd2a2","\dd2a3","\dd2a4","\dd2a5","\dd2a6","\dd2a7","\dd2a8","\dd2a9","\dd2aa","\dd2ab","\dd2ac","\dd2ad","\dd2ae","\dd2af","\dd2b0","\dd2b1","\dd2b2","\dd2b3","\dd2b4","\dd2b5","\dd2b6","\dd2b7",  # ; LVT # Lo  [27] HANGUL SYLLABLE TYUG..HANGUL SYLLABLE TYUH
        "\dd2b9","\dd2ba","\dd2bb","\dd2bc","\dd2bd","\dd2be","\dd2bf","\dd2c0","\dd2c1","\dd2c2","\dd2c3","\dd2c4","\dd2c5","\dd2c6","\dd2c7","\dd2c8","\dd2c9","\dd2ca","\dd2cb","\dd2cc","\dd2cd","\dd2ce","\dd2cf","\dd2d0","\dd2d1","\dd2d2","\dd2d3",  # ; LVT # Lo  [27] HANGUL SYLLABLE TEUG..HANGUL SYLLABLE TEUH
        "\dd2d5","\dd2d6","\dd2d7","\dd2d8","\dd2d9","\dd2da","\dd2db","\dd2dc","\dd2dd","\dd2de","\dd2df","\dd2e0","\dd2e1","\dd2e2","\dd2e3","\dd2e4","\dd2e5","\dd2e6","\dd2e7","\dd2e8","\dd2e9","\dd2ea","\dd2eb","\dd2ec","\dd2ed","\dd2ee","\dd2ef",  # ; LVT # Lo  [27] HANGUL SYLLABLE TYIG..HANGUL SYLLABLE TYIH
        "\dd2f1","\dd2f2","\dd2f3","\dd2f4","\dd2f5","\dd2f6","\dd2f7","\dd2f8","\dd2f9","\dd2fa","\dd2fb","\dd2fc","\dd2fd","\dd2fe","\dd2ff","\dd300","\dd301","\dd302","\dd303","\dd304","\dd305","\dd306","\dd307","\dd308","\dd309","\dd30a","\dd30b",  # ; LVT # Lo  [27] HANGUL SYLLABLE TIG..HANGUL SYLLABLE TIH
        "\dd30d","\dd30e","\dd30f","\dd310","\dd311","\dd312","\dd313","\dd314","\dd315","\dd316","\dd317","\dd318","\dd319","\dd31a","\dd31b","\dd31c","\dd31d","\dd31e","\dd31f","\dd320","\dd321","\dd322","\dd323","\dd324","\dd325","\dd326","\dd327",  # ; LVT # Lo  [27] HANGUL SYLLABLE PAG..HANGUL SYLLABLE PAH
        "\dd329","\dd32a","\dd32b","\dd32c","\dd32d","\dd32e","\dd32f","\dd330","\dd331","\dd332","\dd333","\dd334","\dd335","\dd336","\dd337","\dd338","\dd339","\dd33a","\dd33b","\dd33c","\dd33d","\dd33e","\dd33f","\dd340","\dd341","\dd342","\dd343",  # ; LVT # Lo  [27] HANGUL SYLLABLE PAEG..HANGUL SYLLABLE PAEH
        "\dd345","\dd346","\dd347","\dd348","\dd349","\dd34a","\dd34b","\dd34c","\dd34d","\dd34e","\dd34f","\dd350","\dd351","\dd352","\dd353","\dd354","\dd355","\dd356","\dd357","\dd358","\dd359","\dd35a","\dd35b","\dd35c","\dd35d","\dd35e","\dd35f",  # ; LVT # Lo  [27] HANGUL SYLLABLE PYAG..HANGUL SYLLABLE PYAH
        "\dd361","\dd362","\dd363","\dd364","\dd365","\dd366","\dd367","\dd368","\dd369","\dd36a","\dd36b","\dd36c","\dd36d","\dd36e","\dd36f","\dd370","\dd371","\dd372","\dd373","\dd374","\dd375","\dd376","\dd377","\dd378","\dd379","\dd37a","\dd37b",  # ; LVT # Lo  [27] HANGUL SYLLABLE PYAEG..HANGUL SYLLABLE PYAEH
        "\dd37d","\dd37e","\dd37f","\dd380","\dd381","\dd382","\dd383","\dd384","\dd385","\dd386","\dd387","\dd388","\dd389","\dd38a","\dd38b","\dd38c","\dd38d","\dd38e","\dd38f","\dd390","\dd391","\dd392","\dd393","\dd394","\dd395","\dd396","\dd397",  # ; LVT # Lo  [27] HANGUL SYLLABLE PEOG..HANGUL SYLLABLE PEOH
        "\dd399","\dd39a","\dd39b","\dd39c","\dd39d","\dd39e","\dd39f","\dd3a0","\dd3a1","\dd3a2","\dd3a3","\dd3a4","\dd3a5","\dd3a6","\dd3a7","\dd3a8","\dd3a9","\dd3aa","\dd3ab","\dd3ac","\dd3ad","\dd3ae","\dd3af","\dd3b0","\dd3b1","\dd3b2","\dd3b3",  # ; LVT # Lo  [27] HANGUL SYLLABLE PEG..HANGUL SYLLABLE PEH
        "\dd3b5","\dd3b6","\dd3b7","\dd3b8","\dd3b9","\dd3ba","\dd3bb","\dd3bc","\dd3bd","\dd3be","\dd3bf","\dd3c0","\dd3c1","\dd3c2","\dd3c3","\dd3c4","\dd3c5","\dd3c6","\dd3c7","\dd3c8","\dd3c9","\dd3ca","\dd3cb","\dd3cc","\dd3cd","\dd3ce","\dd3cf",  # ; LVT # Lo  [27] HANGUL SYLLABLE PYEOG..HANGUL SYLLABLE PYEOH
        "\dd3d1","\dd3d2","\dd3d3","\dd3d4","\dd3d5","\dd3d6","\dd3d7","\dd3d8","\dd3d9","\dd3da","\dd3db","\dd3dc","\dd3dd","\dd3de","\dd3df","\dd3e0","\dd3e1","\dd3e2","\dd3e3","\dd3e4","\dd3e5","\dd3e6","\dd3e7","\dd3e8","\dd3e9","\dd3ea","\dd3eb",  # ; LVT # Lo  [27] HANGUL SYLLABLE PYEG..HANGUL SYLLABLE PYEH
        "\dd3ed","\dd3ee","\dd3ef","\dd3f0","\dd3f1","\dd3f2","\dd3f3","\dd3f4","\dd3f5","\dd3f6","\dd3f7","\dd3f8","\dd3f9","\dd3fa","\dd3fb","\dd3fc","\dd3fd","\dd3fe","\dd3ff","\dd400","\dd401","\dd402","\dd403","\dd404","\dd405","\dd406","\dd407",  # ; LVT # Lo  [27] HANGUL SYLLABLE POG..HANGUL SYLLABLE POH
        "\dd409","\dd40a","\dd40b","\dd40c","\dd40d","\dd40e","\dd40f","\dd410","\dd411","\dd412","\dd413","\dd414","\dd415","\dd416","\dd417","\dd418","\dd419","\dd41a","\dd41b","\dd41c","\dd41d","\dd41e","\dd41f","\dd420","\dd421","\dd422","\dd423",  # ; LVT # Lo  [27] HANGUL SYLLABLE PWAG..HANGUL SYLLABLE PWAH
        "\dd425","\dd426","\dd427","\dd428","\dd429","\dd42a","\dd42b","\dd42c","\dd42d","\dd42e","\dd42f","\dd430","\dd431","\dd432","\dd433","\dd434","\dd435","\dd436","\dd437","\dd438","\dd439","\dd43a","\dd43b","\dd43c","\dd43d","\dd43e","\dd43f",  # ; LVT # Lo  [27] HANGUL SYLLABLE PWAEG..HANGUL SYLLABLE PWAEH
        "\dd441","\dd442","\dd443","\dd444","\dd445","\dd446","\dd447","\dd448","\dd449","\dd44a","\dd44b","\dd44c","\dd44d","\dd44e","\dd44f","\dd450","\dd451","\dd452","\dd453","\dd454","\dd455","\dd456","\dd457","\dd458","\dd459","\dd45a","\dd45b",  # ; LVT # Lo  [27] HANGUL SYLLABLE POEG..HANGUL SYLLABLE POEH
        "\dd45d","\dd45e","\dd45f","\dd460","\dd461","\dd462","\dd463","\dd464","\dd465","\dd466","\dd467","\dd468","\dd469","\dd46a","\dd46b","\dd46c","\dd46d","\dd46e","\dd46f","\dd470","\dd471","\dd472","\dd473","\dd474","\dd475","\dd476","\dd477",  # ; LVT # Lo  [27] HANGUL SYLLABLE PYOG..HANGUL SYLLABLE PYOH
        "\dd479","\dd47a","\dd47b","\dd47c","\dd47d","\dd47e","\dd47f","\dd480","\dd481","\dd482","\dd483","\dd484","\dd485","\dd486","\dd487","\dd488","\dd489","\dd48a","\dd48b","\dd48c","\dd48d","\dd48e","\dd48f","\dd490","\dd491","\dd492","\dd493",  # ; LVT # Lo  [27] HANGUL SYLLABLE PUG..HANGUL SYLLABLE PUH
        "\dd495","\dd496","\dd497","\dd498","\dd499","\dd49a","\dd49b","\dd49c","\dd49d","\dd49e","\dd49f","\dd4a0","\dd4a1","\dd4a2","\dd4a3","\dd4a4","\dd4a5","\dd4a6","\dd4a7","\dd4a8","\dd4a9","\dd4aa","\dd4ab","\dd4ac","\dd4ad","\dd4ae","\dd4af",  # ; LVT # Lo  [27] HANGUL SYLLABLE PWEOG..HANGUL SYLLABLE PWEOH
        "\dd4b1","\dd4b2","\dd4b3","\dd4b4","\dd4b5","\dd4b6","\dd4b7","\dd4b8","\dd4b9","\dd4ba","\dd4bb","\dd4bc","\dd4bd","\dd4be","\dd4bf","\dd4c0","\dd4c1","\dd4c2","\dd4c3","\dd4c4","\dd4c5","\dd4c6","\dd4c7","\dd4c8","\dd4c9","\dd4ca","\dd4cb",  # ; LVT # Lo  [27] HANGUL SYLLABLE PWEG..HANGUL SYLLABLE PWEH
        "\dd4cd","\dd4ce","\dd4cf","\dd4d0","\dd4d1","\dd4d2","\dd4d3","\dd4d4","\dd4d5","\dd4d6","\dd4d7","\dd4d8","\dd4d9","\dd4da","\dd4db","\dd4dc","\dd4dd","\dd4de","\dd4df","\dd4e0","\dd4e1","\dd4e2","\dd4e3","\dd4e4","\dd4e5","\dd4e6","\dd4e7",  # ; LVT # Lo  [27] HANGUL SYLLABLE PWIG..HANGUL SYLLABLE PWIH
        "\dd4e9","\dd4ea","\dd4eb","\dd4ec","\dd4ed","\dd4ee","\dd4ef","\dd4f0","\dd4f1","\dd4f2","\dd4f3","\dd4f4","\dd4f5","\dd4f6","\dd4f7","\dd4f8","\dd4f9","\dd4fa","\dd4fb","\dd4fc","\dd4fd","\dd4fe","\dd4ff","\dd500","\dd501","\dd502","\dd503",  # ; LVT # Lo  [27] HANGUL SYLLABLE PYUG..HANGUL SYLLABLE PYUH
        "\dd505","\dd506","\dd507","\dd508","\dd509","\dd50a","\dd50b","\dd50c","\dd50d","\dd50e","\dd50f","\dd510","\dd511","\dd512","\dd513","\dd514","\dd515","\dd516","\dd517","\dd518","\dd519","\dd51a","\dd51b","\dd51c","\dd51d","\dd51e","\dd51f",  # ; LVT # Lo  [27] HANGUL SYLLABLE PEUG..HANGUL SYLLABLE PEUH
        "\dd521","\dd522","\dd523","\dd524","\dd525","\dd526","\dd527","\dd528","\dd529","\dd52a","\dd52b","\dd52c","\dd52d","\dd52e","\dd52f","\dd530","\dd531","\dd532","\dd533","\dd534","\dd535","\dd536","\dd537","\dd538","\dd539","\dd53a","\dd53b",  # ; LVT # Lo  [27] HANGUL SYLLABLE PYIG..HANGUL SYLLABLE PYIH
        "\dd53d","\dd53e","\dd53f","\dd540","\dd541","\dd542","\dd543","\dd544","\dd545","\dd546","\dd547","\dd548","\dd549","\dd54a","\dd54b","\dd54c","\dd54d","\dd54e","\dd54f","\dd550","\dd551","\dd552","\dd553","\dd554","\dd555","\dd556","\dd557",  # ; LVT # Lo  [27] HANGUL SYLLABLE PIG..HANGUL SYLLABLE PIH
        "\dd559","\dd55a","\dd55b","\dd55c","\dd55d","\dd55e","\dd55f","\dd560","\dd561","\dd562","\dd563","\dd564","\dd565","\dd566","\dd567","\dd568","\dd569","\dd56a","\dd56b","\dd56c","\dd56d","\dd56e","\dd56f","\dd570","\dd571","\dd572","\dd573",  # ; LVT # Lo  [27] HANGUL SYLLABLE HAG..HANGUL SYLLABLE HAH
        "\dd575","\dd576","\dd577","\dd578","\dd579","\dd57a","\dd57b","\dd57c","\dd57d","\dd57e","\dd57f","\dd580","\dd581","\dd582","\dd583","\dd584","\dd585","\dd586","\dd587","\dd588","\dd589","\dd58a","\dd58b","\dd58c","\dd58d","\dd58e","\dd58f",  # ; LVT # Lo  [27] HANGUL SYLLABLE HAEG..HANGUL SYLLABLE HAEH
        "\dd591","\dd592","\dd593","\dd594","\dd595","\dd596","\dd597","\dd598","\dd599","\dd59a","\dd59b","\dd59c","\dd59d","\dd59e","\dd59f","\dd5a0","\dd5a1","\dd5a2","\dd5a3","\dd5a4","\dd5a5","\dd5a6","\dd5a7","\dd5a8","\dd5a9","\dd5aa","\dd5ab",  # ; LVT # Lo  [27] HANGUL SYLLABLE HYAG..HANGUL SYLLABLE HYAH
        "\dd5ad","\dd5ae","\dd5af","\dd5b0","\dd5b1","\dd5b2","\dd5b3","\dd5b4","\dd5b5","\dd5b6","\dd5b7","\dd5b8","\dd5b9","\dd5ba","\dd5bb","\dd5bc","\dd5bd","\dd5be","\dd5bf","\dd5c0","\dd5c1","\dd5c2","\dd5c3","\dd5c4","\dd5c5","\dd5c6","\dd5c7",  # ; LVT # Lo  [27] HANGUL SYLLABLE HYAEG..HANGUL SYLLABLE HYAEH
        "\dd5c9","\dd5ca","\dd5cb","\dd5cc","\dd5cd","\dd5ce","\dd5cf","\dd5d0","\dd5d1","\dd5d2","\dd5d3","\dd5d4","\dd5d5","\dd5d6","\dd5d7","\dd5d8","\dd5d9","\dd5da","\dd5db","\dd5dc","\dd5dd","\dd5de","\dd5df","\dd5e0","\dd5e1","\dd5e2","\dd5e3",  # ; LVT # Lo  [27] HANGUL SYLLABLE HEOG..HANGUL SYLLABLE HEOH
        "\dd5e5","\dd5e6","\dd5e7","\dd5e8","\dd5e9","\dd5ea","\dd5eb","\dd5ec","\dd5ed","\dd5ee","\dd5ef","\dd5f0","\dd5f1","\dd5f2","\dd5f3","\dd5f4","\dd5f5","\dd5f6","\dd5f7","\dd5f8","\dd5f9","\dd5fa","\dd5fb","\dd5fc","\dd5fd","\dd5fe","\dd5ff",  # ; LVT # Lo  [27] HANGUL SYLLABLE HEG..HANGUL SYLLABLE HEH
        "\dd601","\dd602","\dd603","\dd604","\dd605","\dd606","\dd607","\dd608","\dd609","\dd60a","\dd60b","\dd60c","\dd60d","\dd60e","\dd60f","\dd610","\dd611","\dd612","\dd613","\dd614","\dd615","\dd616","\dd617","\dd618","\dd619","\dd61a","\dd61b",  # ; LVT # Lo  [27] HANGUL SYLLABLE HYEOG..HANGUL SYLLABLE HYEOH
        "\dd61d","\dd61e","\dd61f","\dd620","\dd621","\dd622","\dd623","\dd624","\dd625","\dd626","\dd627","\dd628","\dd629","\dd62a","\dd62b","\dd62c","\dd62d","\dd62e","\dd62f","\dd630","\dd631","\dd632","\dd633","\dd634","\dd635","\dd636","\dd637",  # ; LVT # Lo  [27] HANGUL SYLLABLE HYEG..HANGUL SYLLABLE HYEH
        "\dd639","\dd63a","\dd63b","\dd63c","\dd63d","\dd63e","\dd63f","\dd640","\dd641","\dd642","\dd643","\dd644","\dd645","\dd646","\dd647","\dd648","\dd649","\dd64a","\dd64b","\dd64c","\dd64d","\dd64e","\dd64f","\dd650","\dd651","\dd652","\dd653",  # ; LVT # Lo  [27] HANGUL SYLLABLE HOG..HANGUL SYLLABLE HOH
        "\dd655","\dd656","\dd657","\dd658","\dd659","\dd65a","\dd65b","\dd65c","\dd65d","\dd65e","\dd65f","\dd660","\dd661","\dd662","\dd663","\dd664","\dd665","\dd666","\dd667","\dd668","\dd669","\dd66a","\dd66b","\dd66c","\dd66d","\dd66e","\dd66f",  # ; LVT # Lo  [27] HANGUL SYLLABLE HWAG..HANGUL SYLLABLE HWAH
        "\dd671","\dd672","\dd673","\dd674","\dd675","\dd676","\dd677","\dd678","\dd679","\dd67a","\dd67b","\dd67c","\dd67d","\dd67e","\dd67f","\dd680","\dd681","\dd682","\dd683","\dd684","\dd685","\dd686","\dd687","\dd688","\dd689","\dd68a","\dd68b",  # ; LVT # Lo  [27] HANGUL SYLLABLE HWAEG..HANGUL SYLLABLE HWAEH
        "\dd68d","\dd68e","\dd68f","\dd690","\dd691","\dd692","\dd693","\dd694","\dd695","\dd696","\dd697","\dd698","\dd699","\dd69a","\dd69b","\dd69c","\dd69d","\dd69e","\dd69f","\dd6a0","\dd6a1","\dd6a2","\dd6a3","\dd6a4","\dd6a5","\dd6a6","\dd6a7",  # ; LVT # Lo  [27] HANGUL SYLLABLE HOEG..HANGUL SYLLABLE HOEH
        "\dd6a9","\dd6aa","\dd6ab","\dd6ac","\dd6ad","\dd6ae","\dd6af","\dd6b0","\dd6b1","\dd6b2","\dd6b3","\dd6b4","\dd6b5","\dd6b6","\dd6b7","\dd6b8","\dd6b9","\dd6ba","\dd6bb","\dd6bc","\dd6bd","\dd6be","\dd6bf","\dd6c0","\dd6c1","\dd6c2","\dd6c3",  # ; LVT # Lo  [27] HANGUL SYLLABLE HYOG..HANGUL SYLLABLE HYOH
        "\dd6c5","\dd6c6","\dd6c7","\dd6c8","\dd6c9","\dd6ca","\dd6cb","\dd6cc","\dd6cd","\dd6ce","\dd6cf","\dd6d0","\dd6d1","\dd6d2","\dd6d3","\dd6d4","\dd6d5","\dd6d6","\dd6d7","\dd6d8","\dd6d9","\dd6da","\dd6db","\dd6dc","\dd6dd","\dd6de","\dd6df",  # ; LVT # Lo  [27] HANGUL SYLLABLE HUG..HANGUL SYLLABLE HUH
        "\dd6e1","\dd6e2","\dd6e3","\dd6e4","\dd6e5","\dd6e6","\dd6e7","\dd6e8","\dd6e9","\dd6ea","\dd6eb","\dd6ec","\dd6ed","\dd6ee","\dd6ef","\dd6f0","\dd6f1","\dd6f2","\dd6f3","\dd6f4","\dd6f5","\dd6f6","\dd6f7","\dd6f8","\dd6f9","\dd6fa","\dd6fb",  # ; LVT # Lo  [27] HANGUL SYLLABLE HWEOG..HANGUL SYLLABLE HWEOH
        "\dd6fd","\dd6fe","\dd6ff","\dd700","\dd701","\dd702","\dd703","\dd704","\dd705","\dd706","\dd707","\dd708","\dd709","\dd70a","\dd70b","\dd70c","\dd70d","\dd70e","\dd70f","\dd710","\dd711","\dd712","\dd713","\dd714","\dd715","\dd716","\dd717",  # ; LVT # Lo  [27] HANGUL SYLLABLE HWEG..HANGUL SYLLABLE HWEH
        "\dd719","\dd71a","\dd71b","\dd71c","\dd71d","\dd71e","\dd71f","\dd720","\dd721","\dd722","\dd723","\dd724","\dd725","\dd726","\dd727","\dd728","\dd729","\dd72a","\dd72b","\dd72c","\dd72d","\dd72e","\dd72f","\dd730","\dd731","\dd732","\dd733",  # ; LVT # Lo  [27] HANGUL SYLLABLE HWIG..HANGUL SYLLABLE HWIH
        "\dd735","\dd736","\dd737","\dd738","\dd739","\dd73a","\dd73b","\dd73c","\dd73d","\dd73e","\dd73f","\dd740","\dd741","\dd742","\dd743","\dd744","\dd745","\dd746","\dd747","\dd748","\dd749","\dd74a","\dd74b","\dd74c","\dd74d","\dd74e","\dd74f",  # ; LVT # Lo  [27] HANGUL SYLLABLE HYUG..HANGUL SYLLABLE HYUH
        "\dd751","\dd752","\dd753","\dd754","\dd755","\dd756","\dd757","\dd758","\dd759","\dd75a","\dd75b","\dd75c","\dd75d","\dd75e","\dd75f","\dd760","\dd761","\dd762","\dd763","\dd764","\dd765","\dd766","\dd767","\dd768","\dd769","\dd76a","\dd76b",  # ; LVT # Lo  [27] HANGUL SYLLABLE HEUG..HANGUL SYLLABLE HEUH
        "\dd76d","\dd76e","\dd76f","\dd770","\dd771","\dd772","\dd773","\dd774","\dd775","\dd776","\dd777","\dd778","\dd779","\dd77a","\dd77b","\dd77c","\dd77d","\dd77e","\dd77f","\dd780","\dd781","\dd782","\dd783","\dd784","\dd785","\dd786","\dd787",  # ; LVT # Lo  [27] HANGUL SYLLABLE HYIG..HANGUL SYLLABLE HYIH
        "\dd789","\dd78a","\dd78b","\dd78c","\dd78d","\dd78e","\dd78f","\dd790","\dd791","\dd792","\dd793","\dd794","\dd795","\dd796","\dd797","\dd798","\dd799","\dd79a","\dd79b","\dd79c","\dd79d","\dd79e","\dd79f","\dd7a0","\dd7a1","\dd7a2","\dd7a3",  # ; LVT # Lo  [27] HANGUL SYLLABLE HIG..HANGUL SYLLABLE HIH
        "\d261D",  # ; E_Base # So       WHITE UP POINTING INDEX
        "\d26F9",  # ; E_Base # So       PERSON WITH BALL
        "\d270a","\d270b","\d270c","\d270d",  # ; E_Base # So   [4] RAISED FIST..WRITING HAND
        "\d1F385",  # ; E_Base # So       FATHER CHRISTMAS
        "\d1f3c2","\d1f3c3","\d1f3c4",  # ; E_Base # So   [3] SNOWBOARDER..SURFER
        "\d1F3C7",  # ; E_Base # So       HORSE RACING
        "\d1f3ca","\d1f3cb","\d1f3cc",  # ; E_Base # So   [3] SWIMMER..GOLFER
        "\d1f442","\d1f443",  # ; E_Base # So   [2] EAR..NOSE
        "\d1f446","\d1f447","\d1f448","\d1f449","\d1f44a","\d1f44b","\d1f44c","\d1f44d","\d1f44e","\d1f44f","\d1f450",  # ; E_Base # So  [11] WHITE UP POINTING BACKHAND INDEX..OPEN HANDS SIGN
        "\d1F46E",  # ; E_Base # So       POLICE OFFICER
        "\d1f470","\d1f471","\d1f472","\d1f473","\d1f474","\d1f475","\d1f476","\d1f477","\d1f478",  # ; E_Base # So   [9] BRIDE WITH VEIL..PRINCESS
        "\d1F47C",  # ; E_Base # So       BABY ANGEL
        "\d1f481","\d1f482","\d1f483",  # ; E_Base # So   [3] INFORMATION DESK PERSON..DANCER
        "\d1f485","\d1f486","\d1f487",  # ; E_Base # So   [3] NAIL POLISH..HAIRCUT
        "\d1F4AA",  # ; E_Base # So       FLEXED BICEPS
        "\d1f574","\d1f575",  # ; E_Base # So   [2] MAN IN BUSINESS SUIT LEVITATING..SLEUTH OR SPY
        "\d1F57A",  # ; E_Base # So       MAN DANCING
        "\d1F590",  # ; E_Base # So       RAISED HAND WITH FINGERS SPLAYED
        "\d1f595","\d1f596",  # ; E_Base # So   [2] REVERSED HAND WITH MIDDLE FINGER EXTENDED..RAISED HAND WITH PART BETWEEN MIDDLE AND RING FINGERS
        "\d1f645","\d1f646","\d1f647",  # ; E_Base # So   [3] FACE WITH NO GOOD GESTURE..PERSON BOWING DEEPLY
        "\d1f64b","\d1f64c","\d1f64d","\d1f64e","\d1f64f",  # ; E_Base # So   [5] HAPPY PERSON RAISING ONE HAND..PERSON WITH FOLDED HANDS
        "\d1F6A3",  # ; E_Base # So       ROWBOAT
        "\d1f6b4","\d1f6b5","\d1f6b6",  # ; E_Base # So   [3] BICYCLIST..PEDESTRIAN
        "\d1F6C0",  # ; E_Base # So       BATH
        "\d1F6CC",  # ; E_Base # So       SLEEPING ACCOMMODATION
        "\d1f918","\d1f919","\d1f91a","\d1f91b","\d1f91c",  # ; E_Base # So   [5] SIGN OF THE HORNS..RIGHT-FACING FIST
        "\d1f91e","\d1f91f",  # ; E_Base # So   [2] HAND WITH INDEX AND MIDDLE FINGERS CROSSED..I LOVE YOU HAND SIGN
        "\d1F926",  # ; E_Base # So       FACE PALM
        "\d1f930","\d1f931","\d1f932","\d1f933","\d1f934","\d1f935","\d1f936","\d1f937","\d1f938","\d1f939",  # ; E_Base # So  [10] PREGNANT WOMAN..JUGGLING
        "\d1f93d","\d1f93e",  # ; E_Base # So   [2] WATER POLO..HANDBALL
        "\d1f9d1","\d1f9d2","\d1f9d3","\d1f9d4","\d1f9d5","\d1f9d6","\d1f9d7","\d1f9d8","\d1f9d9","\d1f9da","\d1f9db","\d1f9dc","\d1f9dd",  # ; E_Base # So  [13] ADULT..ELF
        "\d1f3fb","\d1f3fc","\d1f3fd","\d1f3fe","\d1f3ff",  # ; E_Modifier # Sk   [5] EMOJI MODIFIER FITZPATRICK TYPE-1-2..EMOJI MODIFIER FITZPATRICK TYPE-6
        "\d200D",  # ; ZWJ # Cf       ZERO WIDTH JOINER
        "\d2640",  # ; Glue_After_Zwj # So       FEMALE SIGN
        "\d2642",  # ; Glue_After_Zwj # So       MALE SIGN
        "\d2695","\d2696",  # ; Glue_After_Zwj # So   [2] STAFF OF AESCULAPIUS..SCALES
        "\d2708",  # ; Glue_After_Zwj # So       AIRPLANE
        "\d2764",  # ; Glue_After_Zwj # So       HEAVY BLACK HEART
        "\d1F308",  # ; Glue_After_Zwj # So       RAINBOW
        "\d1F33E",  # ; Glue_After_Zwj # So       EAR OF RICE
        "\d1F373",  # ; Glue_After_Zwj # So       COOKING
        "\d1F393",  # ; Glue_After_Zwj # So       GRADUATION CAP
        "\d1F3A4",  # ; Glue_After_Zwj # So       MICROPHONE
        "\d1F3A8",  # ; Glue_After_Zwj # So       ARTIST PALETTE
        "\d1F3EB",  # ; Glue_After_Zwj # So       SCHOOL
        "\d1F3ED",  # ; Glue_After_Zwj # So       FACTORY
        "\d1F48B",  # ; Glue_After_Zwj # So       KISS MARK
        "\d1f4bb","\d1f4bc",  # ; Glue_After_Zwj # So   [2] PERSONAL COMPUTER..BRIEFCASE
        "\d1F527",  # ; Glue_After_Zwj # So       WRENCH
        "\d1F52C",  # ; Glue_After_Zwj # So       MICROSCOPE
        "\d1F5E8",  # ; Glue_After_Zwj # So       LEFT SPEECH BUBBLE
        "\d1F680",  # ; Glue_After_Zwj # So       ROCKET
        "\d1F692",  # ; Glue_After_Zwj # So       FIRE ENGINE
        "\d1f466","\d1f467","\d1f468","\d1f469",  # ; E_Base_GAZ # So   [4] BOY..WOMAN
    ]
    test_data.each do |string|
      assert @validator.valid_encoding?(string), "U10_GraphemeBreakProperty: #{string}"
      assert string.force_encoding("UTF-8").valid_encoding?, "U10_GraphemeBreakProperty: #{string}" if @vercheck
    end
  end

end

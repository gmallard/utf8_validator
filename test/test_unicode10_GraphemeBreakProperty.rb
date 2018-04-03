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
        "\u0600","\u0601","\u0602","\u0603","\u0604","\u0605",  # ; Prepend # Cf   [6] ARABIC NUMBER SIGN..ARABIC NUMBER MARK ABOVE
        "\u06DD",  # ; Prepend # Cf       ARABIC END OF AYAH
        "\u070F",  # ; Prepend # Cf       SYRIAC ABBREVIATION MARK
        "\u08E2",  # ; Prepend # Cf       ARABIC DISPUTED END OF AYAH
        "\u0D4E",  # ; Prepend # Lo       MALAYALAM LETTER DOT REPH
        "\u110BD",  # ; Prepend # Cf       KAITHI NUMBER SIGN
        "\u111c2","\u111c3",  # ; Prepend # Lo   [2] SHARADA SIGN JIHVAMULIYA..SHARADA SIGN UPADHMANIYA
        "\u11A3A",  # ; Prepend # Lo       ZANABAZAR SQUARE CLUSTER-INITIAL LETTER RA
        "\u11a86","\u11a87","\u11a88","\u11a89",  # ; Prepend # Lo   [4] SOYOMBO CLUSTER-INITIAL LETTER RA..SOYOMBO CLUSTER-INITIAL LETTER SA
        "\u11D46",  # ; Prepend # Lo       MASARAM GONDI REPHA
        "\u000D",  # ; CR # Cc       <control-000D>
        "\u000A",  # ; LF # Cc       <control-000A>
        "\u0000","\u0001","\u0002","\u0003","\u0004","\u0005","\u0006","\u0007","\u0008","\u0009",  # ; Control # Cc  [10] <control-0000>..<control-0009>
        "\u000b","\u000c",  # ; Control # Cc   [2] <control-000B>..<control-000C>
        "\u000e","\u000f","\u0010","\u0011","\u0012","\u0013","\u0014","\u0015","\u0016","\u0017","\u0018","\u0019","\u001a","\u001b","\u001c","\u001d","\u001e","\u001f",  # ; Control # Cc  [18] <control-000E>..<control-001F>
        "\u007f","\u0080","\u0081","\u0082","\u0083","\u0084","\u0085","\u0086","\u0087","\u0088","\u0089","\u008a","\u008b","\u008c","\u008d","\u008e","\u008f","\u0090","\u0091","\u0092","\u0093","\u0094","\u0095","\u0096","\u0097","\u0098","\u0099","\u009a","\u009b","\u009c","\u009d","\u009e","\u009f",  # ; Control # Cc  [33] <control-007F>..<control-009F>
        "\u00AD",  # ; Control # Cf       SOFT HYPHEN
        "\u061C",  # ; Control # Cf       ARABIC LETTER MARK
        "\u180E",  # ; Control # Cf       MONGOLIAN VOWEL SEPARATOR
        "\u200B",  # ; Control # Cf       ZERO WIDTH SPACE
        "\u200e","\u200f",  # ; Control # Cf   [2] LEFT-TO-RIGHT MARK..RIGHT-TO-LEFT MARK
        "\u2028",  # ; Control # Zl       LINE SEPARATOR
        "\u2029",  # ; Control # Zp       PARAGRAPH SEPARATOR
        "\u202a","\u202b","\u202c","\u202d","\u202e",  # ; Control # Cf   [5] LEFT-TO-RIGHT EMBEDDING..RIGHT-TO-LEFT OVERRIDE
        "\u2060","\u2061","\u2062","\u2063","\u2064",  # ; Control # Cf   [5] WORD JOINER..INVISIBLE PLUS
        "\u2065",  # ; Control # Cn       <reserved-2065>
        "\u2066","\u2067","\u2068","\u2069","\u206a","\u206b","\u206c","\u206d","\u206e","\u206f",  # ; Control # Cf  [10] LEFT-TO-RIGHT ISOLATE..NOMINAL DIGIT SHAPES
        "\uFEFF",  # ; Control # Cf       ZERO WIDTH NO-BREAK SPACE
        "\ufff0","\ufff1","\ufff2","\ufff3","\ufff4","\ufff5","\ufff6","\ufff7","\ufff8",  # ; Control # Cn   [9] <reserved-FFF0>..<reserved-FFF8>
        "\ufff9","\ufffa","\ufffb",  # ; Control # Cf   [3] INTERLINEAR ANNOTATION ANCHOR..INTERLINEAR ANNOTATION TERMINATOR
        "\u1bca0","\u1bca1","\u1bca2","\u1bca3",  # ; Control # Cf   [4] SHORTHAND FORMAT LETTER OVERLAP..SHORTHAND FORMAT UP STEP
        "\u1d173","\u1d174","\u1d175","\u1d176","\u1d177","\u1d178","\u1d179","\u1d17a",  # ; Control # Cf   [8] MUSICAL SYMBOL BEGIN BEAM..MUSICAL SYMBOL END PHRASE
        "\uE0000",  # ; Control # Cn       <reserved-E0000>
        "\uE0001",  # ; Control # Cf       LANGUAGE TAG
        "\ue0002","\ue0003","\ue0004","\ue0005","\ue0006","\ue0007","\ue0008","\ue0009","\ue000a","\ue000b","\ue000c","\ue000d","\ue000e","\ue000f","\ue0010","\ue0011","\ue0012","\ue0013","\ue0014","\ue0015","\ue0016","\ue0017","\ue0018","\ue0019","\ue001a","\ue001b","\ue001c","\ue001d","\ue001e","\ue001f",  # ; Control # Cn  [30] <reserved-E0002>..<reserved-E001F>
        "\ue0080","\ue0081","\ue0082","\ue0083","\ue0084","\ue0085","\ue0086","\ue0087","\ue0088","\ue0089","\ue008a","\ue008b","\ue008c","\ue008d","\ue008e","\ue008f","\ue0090","\ue0091","\ue0092","\ue0093","\ue0094","\ue0095","\ue0096","\ue0097","\ue0098","\ue0099","\ue009a","\ue009b","\ue009c","\ue009d","\ue009e","\ue009f","\ue00a0","\ue00a1","\ue00a2","\ue00a3","\ue00a4","\ue00a5","\ue00a6","\ue00a7","\ue00a8","\ue00a9","\ue00aa","\ue00ab","\ue00ac","\ue00ad","\ue00ae","\ue00af","\ue00b0","\ue00b1","\ue00b2","\ue00b3","\ue00b4","\ue00b5","\ue00b6","\ue00b7","\ue00b8","\ue00b9","\ue00ba","\ue00bb","\ue00bc","\ue00bd","\ue00be","\ue00bf","\ue00c0","\ue00c1","\ue00c2","\ue00c3","\ue00c4","\ue00c5","\ue00c6","\ue00c7","\ue00c8","\ue00c9","\ue00ca","\ue00cb","\ue00cc","\ue00cd","\ue00ce","\ue00cf","\ue00d0","\ue00d1","\ue00d2","\ue00d3","\ue00d4","\ue00d5","\ue00d6","\ue00d7","\ue00d8","\ue00d9","\ue00da","\ue00db","\ue00dc","\ue00dd","\ue00de","\ue00df","\ue00e0","\ue00e1","\ue00e2","\ue00e3","\ue00e4","\ue00e5","\ue00e6","\ue00e7","\ue00e8","\ue00e9","\ue00ea","\ue00eb","\ue00ec","\ue00ed","\ue00ee","\ue00ef","\ue00f0","\ue00f1","\ue00f2","\ue00f3","\ue00f4","\ue00f5","\ue00f6","\ue00f7","\ue00f8","\ue00f9","\ue00fa","\ue00fb","\ue00fc","\ue00fd","\ue00fe","\ue00ff",  # ; Control # Cn [128] <reserved-E0080>..<reserved-E00FF>
        "\ue01f0","\ue01f1","\ue01f2","\ue01f3","\ue01f4","\ue01f5","\ue01f6","\ue01f7","\ue01f8","\ue01f9","\ue01fa","\ue01fb","\ue01fc","\ue01fd","\ue01fe","\ue01ff","\ue0200","\ue0201","\ue0202","\ue0203","\ue0204","\ue0205","\ue0206","\ue0207","\ue0208","\ue0209","\ue020a","\ue020b","\ue020c","\ue020d","\ue020e","\ue020f","\ue0210","\ue0211","\ue0212","\ue0213","\ue0214","\ue0215","\ue0216","\ue0217","\ue0218","\ue0219","\ue021a","\ue021b","\ue021c","\ue021d","\ue021e","\ue021f","\ue0220","\ue0221","\ue0222","\ue0223","\ue0224","\ue0225","\ue0226","\ue0227","\ue0228","\ue0229","\ue022a","\ue022b","\ue022c","\ue022d","\ue022e","\ue022f","\ue0230","\ue0231","\ue0232","\ue0233","\ue0234","\ue0235","\ue0236","\ue0237","\ue0238","\ue0239","\ue023a","\ue023b","\ue023c","\ue023d","\ue023e","\ue023f","\ue0240","\ue0241","\ue0242","\ue0243","\ue0244","\ue0245","\ue0246","\ue0247","\ue0248","\ue0249","\ue024a","\ue024b","\ue024c","\ue024d","\ue024e","\ue024f","\ue0250","\ue0251","\ue0252","\ue0253","\ue0254","\ue0255","\ue0256","\ue0257","\ue0258","\ue0259","\ue025a","\ue025b","\ue025c","\ue025d","\ue025e","\ue025f","\ue0260","\ue0261","\ue0262","\ue0263","\ue0264","\ue0265","\ue0266","\ue0267","\ue0268","\ue0269","\ue026a","\ue026b","\ue026c","\ue026d","\ue026e","\ue026f","\ue0270","\ue0271","\ue0272","\ue0273","\ue0274","\ue0275","\ue0276","\ue0277","\ue0278","\ue0279","\ue027a","\ue027b","\ue027c","\ue027d","\ue027e","\ue027f","\ue0280","\ue0281","\ue0282","\ue0283","\ue0284","\ue0285","\ue0286","\ue0287","\ue0288","\ue0289","\ue028a","\ue028b","\ue028c","\ue028d","\ue028e","\ue028f","\ue0290","\ue0291","\ue0292","\ue0293","\ue0294","\ue0295","\ue0296","\ue0297","\ue0298","\ue0299","\ue029a","\ue029b","\ue029c","\ue029d","\ue029e","\ue029f","\ue02a0","\ue02a1","\ue02a2","\ue02a3","\ue02a4","\ue02a5","\ue02a6","\ue02a7","\ue02a8","\ue02a9","\ue02aa","\ue02ab","\ue02ac","\ue02ad","\ue02ae","\ue02af","\ue02b0","\ue02b1","\ue02b2","\ue02b3","\ue02b4","\ue02b5","\ue02b6","\ue02b7","\ue02b8","\ue02b9","\ue02ba","\ue02bb","\ue02bc","\ue02bd","\ue02be","\ue02bf","\ue02c0","\ue02c1","\ue02c2","\ue02c3","\ue02c4","\ue02c5","\ue02c6","\ue02c7","\ue02c8","\ue02c9","\ue02ca","\ue02cb","\ue02cc","\ue02cd","\ue02ce","\ue02cf","\ue02d0","\ue02d1","\ue02d2","\ue02d3","\ue02d4","\ue02d5","\ue02d6","\ue02d7","\ue02d8","\ue02d9","\ue02da","\ue02db","\ue02dc","\ue02dd","\ue02de","\ue02df","\ue02e0","\ue02e1","\ue02e2","\ue02e3","\ue02e4","\ue02e5","\ue02e6","\ue02e7","\ue02e8","\ue02e9","\ue02ea","\ue02eb","\ue02ec","\ue02ed","\ue02ee","\ue02ef","\ue02f0","\ue02f1","\ue02f2","\ue02f3","\ue02f4","\ue02f5","\ue02f6","\ue02f7","\ue02f8","\ue02f9","\ue02fa","\ue02fb","\ue02fc","\ue02fd","\ue02fe","\ue02ff","\ue0300","\ue0301","\ue0302","\ue0303","\ue0304","\ue0305","\ue0306","\ue0307","\ue0308","\ue0309","\ue030a","\ue030b","\ue030c","\ue030d","\ue030e","\ue030f","\ue0310","\ue0311","\ue0312","\ue0313","\ue0314","\ue0315","\ue0316","\ue0317","\ue0318","\ue0319","\ue031a","\ue031b","\ue031c","\ue031d","\ue031e","\ue031f","\ue0320","\ue0321","\ue0322","\ue0323","\ue0324","\ue0325","\ue0326","\ue0327","\ue0328","\ue0329","\ue032a","\ue032b","\ue032c","\ue032d","\ue032e","\ue032f","\ue0330","\ue0331","\ue0332","\ue0333","\ue0334","\ue0335","\ue0336","\ue0337","\ue0338","\ue0339","\ue033a","\ue033b","\ue033c","\ue033d","\ue033e","\ue033f","\ue0340","\ue0341","\ue0342","\ue0343","\ue0344","\ue0345","\ue0346","\ue0347","\ue0348","\ue0349","\ue034a","\ue034b","\ue034c","\ue034d","\ue034e","\ue034f","\ue0350","\ue0351","\ue0352","\ue0353","\ue0354","\ue0355","\ue0356","\ue0357","\ue0358","\ue0359","\ue035a","\ue035b","\ue035c","\ue035d","\ue035e","\ue035f","\ue0360","\ue0361","\ue0362","\ue0363","\ue0364","\ue0365","\ue0366","\ue0367","\ue0368","\ue0369","\ue036a","\ue036b","\ue036c","\ue036d","\ue036e","\ue036f","\ue0370","\ue0371","\ue0372","\ue0373","\ue0374","\ue0375","\ue0376","\ue0377","\ue0378","\ue0379","\ue037a","\ue037b","\ue037c","\ue037d","\ue037e","\ue037f","\ue0380","\ue0381","\ue0382","\ue0383","\ue0384","\ue0385","\ue0386","\ue0387","\ue0388","\ue0389","\ue038a","\ue038b","\ue038c","\ue038d","\ue038e","\ue038f","\ue0390","\ue0391","\ue0392","\ue0393","\ue0394","\ue0395","\ue0396","\ue0397","\ue0398","\ue0399","\ue039a","\ue039b","\ue039c","\ue039d","\ue039e","\ue039f","\ue03a0","\ue03a1","\ue03a2","\ue03a3","\ue03a4","\ue03a5","\ue03a6","\ue03a7","\ue03a8","\ue03a9","\ue03aa","\ue03ab","\ue03ac","\ue03ad","\ue03ae","\ue03af","\ue03b0","\ue03b1","\ue03b2","\ue03b3","\ue03b4","\ue03b5","\ue03b6","\ue03b7","\ue03b8","\ue03b9","\ue03ba","\ue03bb","\ue03bc","\ue03bd","\ue03be","\ue03bf","\ue03c0","\ue03c1","\ue03c2","\ue03c3","\ue03c4","\ue03c5","\ue03c6","\ue03c7","\ue03c8","\ue03c9","\ue03ca","\ue03cb","\ue03cc","\ue03cd","\ue03ce","\ue03cf","\ue03d0","\ue03d1","\ue03d2","\ue03d3","\ue03d4","\ue03d5","\ue03d6","\ue03d7","\ue03d8","\ue03d9","\ue03da","\ue03db","\ue03dc","\ue03dd","\ue03de","\ue03df","\ue03e0","\ue03e1","\ue03e2","\ue03e3","\ue03e4","\ue03e5","\ue03e6","\ue03e7","\ue03e8","\ue03e9","\ue03ea","\ue03eb","\ue03ec","\ue03ed","\ue03ee","\ue03ef","\ue03f0","\ue03f1","\ue03f2","\ue03f3","\ue03f4","\ue03f5","\ue03f6","\ue03f7","\ue03f8","\ue03f9","\ue03fa","\ue03fb","\ue03fc","\ue03fd","\ue03fe","\ue03ff","\ue0400","\ue0401","\ue0402","\ue0403","\ue0404","\ue0405","\ue0406","\ue0407","\ue0408","\ue0409","\ue040a","\ue040b","\ue040c","\ue040d","\ue040e","\ue040f","\ue0410","\ue0411","\ue0412","\ue0413","\ue0414","\ue0415","\ue0416","\ue0417","\ue0418","\ue0419","\ue041a","\ue041b","\ue041c","\ue041d","\ue041e","\ue041f","\ue0420","\ue0421","\ue0422","\ue0423","\ue0424","\ue0425","\ue0426","\ue0427","\ue0428","\ue0429","\ue042a","\ue042b","\ue042c","\ue042d","\ue042e","\ue042f","\ue0430","\ue0431","\ue0432","\ue0433","\ue0434","\ue0435","\ue0436","\ue0437","\ue0438","\ue0439","\ue043a","\ue043b","\ue043c","\ue043d","\ue043e","\ue043f","\ue0440","\ue0441","\ue0442","\ue0443","\ue0444","\ue0445","\ue0446","\ue0447","\ue0448","\ue0449","\ue044a","\ue044b","\ue044c","\ue044d","\ue044e","\ue044f","\ue0450","\ue0451","\ue0452","\ue0453","\ue0454","\ue0455","\ue0456","\ue0457","\ue0458","\ue0459","\ue045a","\ue045b","\ue045c","\ue045d","\ue045e","\ue045f","\ue0460","\ue0461","\ue0462","\ue0463","\ue0464","\ue0465","\ue0466","\ue0467","\ue0468","\ue0469","\ue046a","\ue046b","\ue046c","\ue046d","\ue046e","\ue046f","\ue0470","\ue0471","\ue0472","\ue0473","\ue0474","\ue0475","\ue0476","\ue0477","\ue0478","\ue0479","\ue047a","\ue047b","\ue047c","\ue047d","\ue047e","\ue047f","\ue0480","\ue0481","\ue0482","\ue0483","\ue0484","\ue0485","\ue0486","\ue0487","\ue0488","\ue0489","\ue048a","\ue048b","\ue048c","\ue048d","\ue048e","\ue048f","\ue0490","\ue0491","\ue0492","\ue0493","\ue0494","\ue0495","\ue0496","\ue0497","\ue0498","\ue0499","\ue049a","\ue049b","\ue049c","\ue049d","\ue049e","\ue049f","\ue04a0","\ue04a1","\ue04a2","\ue04a3","\ue04a4","\ue04a5","\ue04a6","\ue04a7","\ue04a8","\ue04a9","\ue04aa","\ue04ab","\ue04ac","\ue04ad","\ue04ae","\ue04af","\ue04b0","\ue04b1","\ue04b2","\ue04b3","\ue04b4","\ue04b5","\ue04b6","\ue04b7","\ue04b8","\ue04b9","\ue04ba","\ue04bb","\ue04bc","\ue04bd","\ue04be","\ue04bf","\ue04c0","\ue04c1","\ue04c2","\ue04c3","\ue04c4","\ue04c5","\ue04c6","\ue04c7","\ue04c8","\ue04c9","\ue04ca","\ue04cb","\ue04cc","\ue04cd","\ue04ce","\ue04cf","\ue04d0","\ue04d1","\ue04d2","\ue04d3","\ue04d4","\ue04d5","\ue04d6","\ue04d7","\ue04d8","\ue04d9","\ue04da","\ue04db","\ue04dc","\ue04dd","\ue04de","\ue04df","\ue04e0","\ue04e1","\ue04e2","\ue04e3","\ue04e4","\ue04e5","\ue04e6","\ue04e7","\ue04e8","\ue04e9","\ue04ea","\ue04eb","\ue04ec","\ue04ed","\ue04ee","\ue04ef","\ue04f0","\ue04f1","\ue04f2","\ue04f3","\ue04f4","\ue04f5","\ue04f6","\ue04f7","\ue04f8","\ue04f9","\ue04fa","\ue04fb","\ue04fc","\ue04fd","\ue04fe","\ue04ff","\ue0500","\ue0501","\ue0502","\ue0503","\ue0504","\ue0505","\ue0506","\ue0507","\ue0508","\ue0509","\ue050a","\ue050b","\ue050c","\ue050d","\ue050e","\ue050f","\ue0510","\ue0511","\ue0512","\ue0513","\ue0514","\ue0515","\ue0516","\ue0517","\ue0518","\ue0519","\ue051a","\ue051b","\ue051c","\ue051d","\ue051e","\ue051f","\ue0520","\ue0521","\ue0522","\ue0523","\ue0524","\ue0525","\ue0526","\ue0527","\ue0528","\ue0529","\ue052a","\ue052b","\ue052c","\ue052d","\ue052e","\ue052f","\ue0530","\ue0531","\ue0532","\ue0533","\ue0534","\ue0535","\ue0536","\ue0537","\ue0538","\ue0539","\ue053a","\ue053b","\ue053c","\ue053d","\ue053e","\ue053f","\ue0540","\ue0541","\ue0542","\ue0543","\ue0544","\ue0545","\ue0546","\ue0547","\ue0548","\ue0549","\ue054a","\ue054b","\ue054c","\ue054d","\ue054e","\ue054f","\ue0550","\ue0551","\ue0552","\ue0553","\ue0554","\ue0555","\ue0556","\ue0557","\ue0558","\ue0559","\ue055a","\ue055b","\ue055c","\ue055d","\ue055e","\ue055f","\ue0560","\ue0561","\ue0562","\ue0563","\ue0564","\ue0565","\ue0566","\ue0567","\ue0568","\ue0569","\ue056a","\ue056b","\ue056c","\ue056d","\ue056e","\ue056f","\ue0570","\ue0571","\ue0572","\ue0573","\ue0574","\ue0575","\ue0576","\ue0577","\ue0578","\ue0579","\ue057a","\ue057b","\ue057c","\ue057d","\ue057e","\ue057f","\ue0580","\ue0581","\ue0582","\ue0583","\ue0584","\ue0585","\ue0586","\ue0587","\ue0588","\ue0589","\ue058a","\ue058b","\ue058c","\ue058d","\ue058e","\ue058f","\ue0590","\ue0591","\ue0592","\ue0593","\ue0594","\ue0595","\ue0596","\ue0597","\ue0598","\ue0599","\ue059a","\ue059b","\ue059c","\ue059d","\ue059e","\ue059f","\ue05a0","\ue05a1","\ue05a2","\ue05a3","\ue05a4","\ue05a5","\ue05a6","\ue05a7","\ue05a8","\ue05a9","\ue05aa","\ue05ab","\ue05ac","\ue05ad","\ue05ae","\ue05af","\ue05b0","\ue05b1","\ue05b2","\ue05b3","\ue05b4","\ue05b5","\ue05b6","\ue05b7","\ue05b8","\ue05b9","\ue05ba","\ue05bb","\ue05bc","\ue05bd","\ue05be","\ue05bf","\ue05c0","\ue05c1","\ue05c2","\ue05c3","\ue05c4","\ue05c5","\ue05c6","\ue05c7","\ue05c8","\ue05c9","\ue05ca","\ue05cb","\ue05cc","\ue05cd","\ue05ce","\ue05cf","\ue05d0","\ue05d1","\ue05d2","\ue05d3","\ue05d4","\ue05d5","\ue05d6","\ue05d7","\ue05d8","\ue05d9","\ue05da","\ue05db","\ue05dc","\ue05dd","\ue05de","\ue05df","\ue05e0","\ue05e1","\ue05e2","\ue05e3","\ue05e4","\ue05e5","\ue05e6","\ue05e7","\ue05e8","\ue05e9","\ue05ea","\ue05eb","\ue05ec","\ue05ed","\ue05ee","\ue05ef","\ue05f0","\ue05f1","\ue05f2","\ue05f3","\ue05f4","\ue05f5","\ue05f6","\ue05f7","\ue05f8","\ue05f9","\ue05fa","\ue05fb","\ue05fc","\ue05fd","\ue05fe","\ue05ff","\ue0600","\ue0601","\ue0602","\ue0603","\ue0604","\ue0605","\ue0606","\ue0607","\ue0608","\ue0609","\ue060a","\ue060b","\ue060c","\ue060d","\ue060e","\ue060f","\ue0610","\ue0611","\ue0612","\ue0613","\ue0614","\ue0615","\ue0616","\ue0617","\ue0618","\ue0619","\ue061a","\ue061b","\ue061c","\ue061d","\ue061e","\ue061f","\ue0620","\ue0621","\ue0622","\ue0623","\ue0624","\ue0625","\ue0626","\ue0627","\ue0628","\ue0629","\ue062a","\ue062b","\ue062c","\ue062d","\ue062e","\ue062f","\ue0630","\ue0631","\ue0632","\ue0633","\ue0634","\ue0635","\ue0636","\ue0637","\ue0638","\ue0639","\ue063a","\ue063b","\ue063c","\ue063d","\ue063e","\ue063f","\ue0640","\ue0641","\ue0642","\ue0643","\ue0644","\ue0645","\ue0646","\ue0647","\ue0648","\ue0649","\ue064a","\ue064b","\ue064c","\ue064d","\ue064e","\ue064f","\ue0650","\ue0651","\ue0652","\ue0653","\ue0654","\ue0655","\ue0656","\ue0657","\ue0658","\ue0659","\ue065a","\ue065b","\ue065c","\ue065d","\ue065e","\ue065f","\ue0660","\ue0661","\ue0662","\ue0663","\ue0664","\ue0665","\ue0666","\ue0667","\ue0668","\ue0669","\ue066a","\ue066b","\ue066c","\ue066d","\ue066e","\ue066f","\ue0670","\ue0671","\ue0672","\ue0673","\ue0674","\ue0675","\ue0676","\ue0677","\ue0678","\ue0679","\ue067a","\ue067b","\ue067c","\ue067d","\ue067e","\ue067f","\ue0680","\ue0681","\ue0682","\ue0683","\ue0684","\ue0685","\ue0686","\ue0687","\ue0688","\ue0689","\ue068a","\ue068b","\ue068c","\ue068d","\ue068e","\ue068f","\ue0690","\ue0691","\ue0692","\ue0693","\ue0694","\ue0695","\ue0696","\ue0697","\ue0698","\ue0699","\ue069a","\ue069b","\ue069c","\ue069d","\ue069e","\ue069f","\ue06a0","\ue06a1","\ue06a2","\ue06a3","\ue06a4","\ue06a5","\ue06a6","\ue06a7","\ue06a8","\ue06a9","\ue06aa","\ue06ab","\ue06ac","\ue06ad","\ue06ae","\ue06af","\ue06b0","\ue06b1","\ue06b2","\ue06b3","\ue06b4","\ue06b5","\ue06b6","\ue06b7","\ue06b8","\ue06b9","\ue06ba","\ue06bb","\ue06bc","\ue06bd","\ue06be","\ue06bf","\ue06c0","\ue06c1","\ue06c2","\ue06c3","\ue06c4","\ue06c5","\ue06c6","\ue06c7","\ue06c8","\ue06c9","\ue06ca","\ue06cb","\ue06cc","\ue06cd","\ue06ce","\ue06cf","\ue06d0","\ue06d1","\ue06d2","\ue06d3","\ue06d4","\ue06d5","\ue06d6","\ue06d7","\ue06d8","\ue06d9","\ue06da","\ue06db","\ue06dc","\ue06dd","\ue06de","\ue06df","\ue06e0","\ue06e1","\ue06e2","\ue06e3","\ue06e4","\ue06e5","\ue06e6","\ue06e7","\ue06e8","\ue06e9","\ue06ea","\ue06eb","\ue06ec","\ue06ed","\ue06ee","\ue06ef","\ue06f0","\ue06f1","\ue06f2","\ue06f3","\ue06f4","\ue06f5","\ue06f6","\ue06f7","\ue06f8","\ue06f9","\ue06fa","\ue06fb","\ue06fc","\ue06fd","\ue06fe","\ue06ff","\ue0700","\ue0701","\ue0702","\ue0703","\ue0704","\ue0705","\ue0706","\ue0707","\ue0708","\ue0709","\ue070a","\ue070b","\ue070c","\ue070d","\ue070e","\ue070f","\ue0710","\ue0711","\ue0712","\ue0713","\ue0714","\ue0715","\ue0716","\ue0717","\ue0718","\ue0719","\ue071a","\ue071b","\ue071c","\ue071d","\ue071e","\ue071f","\ue0720","\ue0721","\ue0722","\ue0723","\ue0724","\ue0725","\ue0726","\ue0727","\ue0728","\ue0729","\ue072a","\ue072b","\ue072c","\ue072d","\ue072e","\ue072f","\ue0730","\ue0731","\ue0732","\ue0733","\ue0734","\ue0735","\ue0736","\ue0737","\ue0738","\ue0739","\ue073a","\ue073b","\ue073c","\ue073d","\ue073e","\ue073f","\ue0740","\ue0741","\ue0742","\ue0743","\ue0744","\ue0745","\ue0746","\ue0747","\ue0748","\ue0749","\ue074a","\ue074b","\ue074c","\ue074d","\ue074e","\ue074f","\ue0750","\ue0751","\ue0752","\ue0753","\ue0754","\ue0755","\ue0756","\ue0757","\ue0758","\ue0759","\ue075a","\ue075b","\ue075c","\ue075d","\ue075e","\ue075f","\ue0760","\ue0761","\ue0762","\ue0763","\ue0764","\ue0765","\ue0766","\ue0767","\ue0768","\ue0769","\ue076a","\ue076b","\ue076c","\ue076d","\ue076e","\ue076f","\ue0770","\ue0771","\ue0772","\ue0773","\ue0774","\ue0775","\ue0776","\ue0777","\ue0778","\ue0779","\ue077a","\ue077b","\ue077c","\ue077d","\ue077e","\ue077f","\ue0780","\ue0781","\ue0782","\ue0783","\ue0784","\ue0785","\ue0786","\ue0787","\ue0788","\ue0789","\ue078a","\ue078b","\ue078c","\ue078d","\ue078e","\ue078f","\ue0790","\ue0791","\ue0792","\ue0793","\ue0794","\ue0795","\ue0796","\ue0797","\ue0798","\ue0799","\ue079a","\ue079b","\ue079c","\ue079d","\ue079e","\ue079f","\ue07a0","\ue07a1","\ue07a2","\ue07a3","\ue07a4","\ue07a5","\ue07a6","\ue07a7","\ue07a8","\ue07a9","\ue07aa","\ue07ab","\ue07ac","\ue07ad","\ue07ae","\ue07af","\ue07b0","\ue07b1","\ue07b2","\ue07b3","\ue07b4","\ue07b5","\ue07b6","\ue07b7","\ue07b8","\ue07b9","\ue07ba","\ue07bb","\ue07bc","\ue07bd","\ue07be","\ue07bf","\ue07c0","\ue07c1","\ue07c2","\ue07c3","\ue07c4","\ue07c5","\ue07c6","\ue07c7","\ue07c8","\ue07c9","\ue07ca","\ue07cb","\ue07cc","\ue07cd","\ue07ce","\ue07cf","\ue07d0","\ue07d1","\ue07d2","\ue07d3","\ue07d4","\ue07d5","\ue07d6","\ue07d7","\ue07d8","\ue07d9","\ue07da","\ue07db","\ue07dc","\ue07dd","\ue07de","\ue07df","\ue07e0","\ue07e1","\ue07e2","\ue07e3","\ue07e4","\ue07e5","\ue07e6","\ue07e7","\ue07e8","\ue07e9","\ue07ea","\ue07eb","\ue07ec","\ue07ed","\ue07ee","\ue07ef","\ue07f0","\ue07f1","\ue07f2","\ue07f3","\ue07f4","\ue07f5","\ue07f6","\ue07f7","\ue07f8","\ue07f9","\ue07fa","\ue07fb","\ue07fc","\ue07fd","\ue07fe","\ue07ff","\ue0800","\ue0801","\ue0802","\ue0803","\ue0804","\ue0805","\ue0806","\ue0807","\ue0808","\ue0809","\ue080a","\ue080b","\ue080c","\ue080d","\ue080e","\ue080f","\ue0810","\ue0811","\ue0812","\ue0813","\ue0814","\ue0815","\ue0816","\ue0817","\ue0818","\ue0819","\ue081a","\ue081b","\ue081c","\ue081d","\ue081e","\ue081f","\ue0820","\ue0821","\ue0822","\ue0823","\ue0824","\ue0825","\ue0826","\ue0827","\ue0828","\ue0829","\ue082a","\ue082b","\ue082c","\ue082d","\ue082e","\ue082f","\ue0830","\ue0831","\ue0832","\ue0833","\ue0834","\ue0835","\ue0836","\ue0837","\ue0838","\ue0839","\ue083a","\ue083b","\ue083c","\ue083d","\ue083e","\ue083f","\ue0840","\ue0841","\ue0842","\ue0843","\ue0844","\ue0845","\ue0846","\ue0847","\ue0848","\ue0849","\ue084a","\ue084b","\ue084c","\ue084d","\ue084e","\ue084f","\ue0850","\ue0851","\ue0852","\ue0853","\ue0854","\ue0855","\ue0856","\ue0857","\ue0858","\ue0859","\ue085a","\ue085b","\ue085c","\ue085d","\ue085e","\ue085f","\ue0860","\ue0861","\ue0862","\ue0863","\ue0864","\ue0865","\ue0866","\ue0867","\ue0868","\ue0869","\ue086a","\ue086b","\ue086c","\ue086d","\ue086e","\ue086f","\ue0870","\ue0871","\ue0872","\ue0873","\ue0874","\ue0875","\ue0876","\ue0877","\ue0878","\ue0879","\ue087a","\ue087b","\ue087c","\ue087d","\ue087e","\ue087f","\ue0880","\ue0881","\ue0882","\ue0883","\ue0884","\ue0885","\ue0886","\ue0887","\ue0888","\ue0889","\ue088a","\ue088b","\ue088c","\ue088d","\ue088e","\ue088f","\ue0890","\ue0891","\ue0892","\ue0893","\ue0894","\ue0895","\ue0896","\ue0897","\ue0898","\ue0899","\ue089a","\ue089b","\ue089c","\ue089d","\ue089e","\ue089f","\ue08a0","\ue08a1","\ue08a2","\ue08a3","\ue08a4","\ue08a5","\ue08a6","\ue08a7","\ue08a8","\ue08a9","\ue08aa","\ue08ab","\ue08ac","\ue08ad","\ue08ae","\ue08af","\ue08b0","\ue08b1","\ue08b2","\ue08b3","\ue08b4","\ue08b5","\ue08b6","\ue08b7","\ue08b8","\ue08b9","\ue08ba","\ue08bb","\ue08bc","\ue08bd","\ue08be","\ue08bf","\ue08c0","\ue08c1","\ue08c2","\ue08c3","\ue08c4","\ue08c5","\ue08c6","\ue08c7","\ue08c8","\ue08c9","\ue08ca","\ue08cb","\ue08cc","\ue08cd","\ue08ce","\ue08cf","\ue08d0","\ue08d1","\ue08d2","\ue08d3","\ue08d4","\ue08d5","\ue08d6","\ue08d7","\ue08d8","\ue08d9","\ue08da","\ue08db","\ue08dc","\ue08dd","\ue08de","\ue08df","\ue08e0","\ue08e1","\ue08e2","\ue08e3","\ue08e4","\ue08e5","\ue08e6","\ue08e7","\ue08e8","\ue08e9","\ue08ea","\ue08eb","\ue08ec","\ue08ed","\ue08ee","\ue08ef","\ue08f0","\ue08f1","\ue08f2","\ue08f3","\ue08f4","\ue08f5","\ue08f6","\ue08f7","\ue08f8","\ue08f9","\ue08fa","\ue08fb","\ue08fc","\ue08fd","\ue08fe","\ue08ff","\ue0900","\ue0901","\ue0902","\ue0903","\ue0904","\ue0905","\ue0906","\ue0907","\ue0908","\ue0909","\ue090a","\ue090b","\ue090c","\ue090d","\ue090e","\ue090f","\ue0910","\ue0911","\ue0912","\ue0913","\ue0914","\ue0915","\ue0916","\ue0917","\ue0918","\ue0919","\ue091a","\ue091b","\ue091c","\ue091d","\ue091e","\ue091f","\ue0920","\ue0921","\ue0922","\ue0923","\ue0924","\ue0925","\ue0926","\ue0927","\ue0928","\ue0929","\ue092a","\ue092b","\ue092c","\ue092d","\ue092e","\ue092f","\ue0930","\ue0931","\ue0932","\ue0933","\ue0934","\ue0935","\ue0936","\ue0937","\ue0938","\ue0939","\ue093a","\ue093b","\ue093c","\ue093d","\ue093e","\ue093f","\ue0940","\ue0941","\ue0942","\ue0943","\ue0944","\ue0945","\ue0946","\ue0947","\ue0948","\ue0949","\ue094a","\ue094b","\ue094c","\ue094d","\ue094e","\ue094f","\ue0950","\ue0951","\ue0952","\ue0953","\ue0954","\ue0955","\ue0956","\ue0957","\ue0958","\ue0959","\ue095a","\ue095b","\ue095c","\ue095d","\ue095e","\ue095f","\ue0960","\ue0961","\ue0962","\ue0963","\ue0964","\ue0965","\ue0966","\ue0967","\ue0968","\ue0969","\ue096a","\ue096b","\ue096c","\ue096d","\ue096e","\ue096f","\ue0970","\ue0971","\ue0972","\ue0973","\ue0974","\ue0975","\ue0976","\ue0977","\ue0978","\ue0979","\ue097a","\ue097b","\ue097c","\ue097d","\ue097e","\ue097f","\ue0980","\ue0981","\ue0982","\ue0983","\ue0984","\ue0985","\ue0986","\ue0987","\ue0988","\ue0989","\ue098a","\ue098b","\ue098c","\ue098d","\ue098e","\ue098f","\ue0990","\ue0991","\ue0992","\ue0993","\ue0994","\ue0995","\ue0996","\ue0997","\ue0998","\ue0999","\ue099a","\ue099b","\ue099c","\ue099d","\ue099e","\ue099f","\ue09a0","\ue09a1","\ue09a2","\ue09a3","\ue09a4","\ue09a5","\ue09a6","\ue09a7","\ue09a8","\ue09a9","\ue09aa","\ue09ab","\ue09ac","\ue09ad","\ue09ae","\ue09af","\ue09b0","\ue09b1","\ue09b2","\ue09b3","\ue09b4","\ue09b5","\ue09b6","\ue09b7","\ue09b8","\ue09b9","\ue09ba","\ue09bb","\ue09bc","\ue09bd","\ue09be","\ue09bf","\ue09c0","\ue09c1","\ue09c2","\ue09c3","\ue09c4","\ue09c5","\ue09c6","\ue09c7","\ue09c8","\ue09c9","\ue09ca","\ue09cb","\ue09cc","\ue09cd","\ue09ce","\ue09cf","\ue09d0","\ue09d1","\ue09d2","\ue09d3","\ue09d4","\ue09d5","\ue09d6","\ue09d7","\ue09d8","\ue09d9","\ue09da","\ue09db","\ue09dc","\ue09dd","\ue09de","\ue09df","\ue09e0","\ue09e1","\ue09e2","\ue09e3","\ue09e4","\ue09e5","\ue09e6","\ue09e7","\ue09e8","\ue09e9","\ue09ea","\ue09eb","\ue09ec","\ue09ed","\ue09ee","\ue09ef","\ue09f0","\ue09f1","\ue09f2","\ue09f3","\ue09f4","\ue09f5","\ue09f6","\ue09f7","\ue09f8","\ue09f9","\ue09fa","\ue09fb","\ue09fc","\ue09fd","\ue09fe","\ue09ff","\ue0a00","\ue0a01","\ue0a02","\ue0a03","\ue0a04","\ue0a05","\ue0a06","\ue0a07","\ue0a08","\ue0a09","\ue0a0a","\ue0a0b","\ue0a0c","\ue0a0d","\ue0a0e","\ue0a0f","\ue0a10","\ue0a11","\ue0a12","\ue0a13","\ue0a14","\ue0a15","\ue0a16","\ue0a17","\ue0a18","\ue0a19","\ue0a1a","\ue0a1b","\ue0a1c","\ue0a1d","\ue0a1e","\ue0a1f","\ue0a20","\ue0a21","\ue0a22","\ue0a23","\ue0a24","\ue0a25","\ue0a26","\ue0a27","\ue0a28","\ue0a29","\ue0a2a","\ue0a2b","\ue0a2c","\ue0a2d","\ue0a2e","\ue0a2f","\ue0a30","\ue0a31","\ue0a32","\ue0a33","\ue0a34","\ue0a35","\ue0a36","\ue0a37","\ue0a38","\ue0a39","\ue0a3a","\ue0a3b","\ue0a3c","\ue0a3d","\ue0a3e","\ue0a3f","\ue0a40","\ue0a41","\ue0a42","\ue0a43","\ue0a44","\ue0a45","\ue0a46","\ue0a47","\ue0a48","\ue0a49","\ue0a4a","\ue0a4b","\ue0a4c","\ue0a4d","\ue0a4e","\ue0a4f","\ue0a50","\ue0a51","\ue0a52","\ue0a53","\ue0a54","\ue0a55","\ue0a56","\ue0a57","\ue0a58","\ue0a59","\ue0a5a","\ue0a5b","\ue0a5c","\ue0a5d","\ue0a5e","\ue0a5f","\ue0a60","\ue0a61","\ue0a62","\ue0a63","\ue0a64","\ue0a65","\ue0a66","\ue0a67","\ue0a68","\ue0a69","\ue0a6a","\ue0a6b","\ue0a6c","\ue0a6d","\ue0a6e","\ue0a6f","\ue0a70","\ue0a71","\ue0a72","\ue0a73","\ue0a74","\ue0a75","\ue0a76","\ue0a77","\ue0a78","\ue0a79","\ue0a7a","\ue0a7b","\ue0a7c","\ue0a7d","\ue0a7e","\ue0a7f","\ue0a80","\ue0a81","\ue0a82","\ue0a83","\ue0a84","\ue0a85","\ue0a86","\ue0a87","\ue0a88","\ue0a89","\ue0a8a","\ue0a8b","\ue0a8c","\ue0a8d","\ue0a8e","\ue0a8f","\ue0a90","\ue0a91","\ue0a92","\ue0a93","\ue0a94","\ue0a95","\ue0a96","\ue0a97","\ue0a98","\ue0a99","\ue0a9a","\ue0a9b","\ue0a9c","\ue0a9d","\ue0a9e","\ue0a9f","\ue0aa0","\ue0aa1","\ue0aa2","\ue0aa3","\ue0aa4","\ue0aa5","\ue0aa6","\ue0aa7","\ue0aa8","\ue0aa9","\ue0aaa","\ue0aab","\ue0aac","\ue0aad","\ue0aae","\ue0aaf","\ue0ab0","\ue0ab1","\ue0ab2","\ue0ab3","\ue0ab4","\ue0ab5","\ue0ab6","\ue0ab7","\ue0ab8","\ue0ab9","\ue0aba","\ue0abb","\ue0abc","\ue0abd","\ue0abe","\ue0abf","\ue0ac0","\ue0ac1","\ue0ac2","\ue0ac3","\ue0ac4","\ue0ac5","\ue0ac6","\ue0ac7","\ue0ac8","\ue0ac9","\ue0aca","\ue0acb","\ue0acc","\ue0acd","\ue0ace","\ue0acf","\ue0ad0","\ue0ad1","\ue0ad2","\ue0ad3","\ue0ad4","\ue0ad5","\ue0ad6","\ue0ad7","\ue0ad8","\ue0ad9","\ue0ada","\ue0adb","\ue0adc","\ue0add","\ue0ade","\ue0adf","\ue0ae0","\ue0ae1","\ue0ae2","\ue0ae3","\ue0ae4","\ue0ae5","\ue0ae6","\ue0ae7","\ue0ae8","\ue0ae9","\ue0aea","\ue0aeb","\ue0aec","\ue0aed","\ue0aee","\ue0aef","\ue0af0","\ue0af1","\ue0af2","\ue0af3","\ue0af4","\ue0af5","\ue0af6","\ue0af7","\ue0af8","\ue0af9","\ue0afa","\ue0afb","\ue0afc","\ue0afd","\ue0afe","\ue0aff","\ue0b00","\ue0b01","\ue0b02","\ue0b03","\ue0b04","\ue0b05","\ue0b06","\ue0b07","\ue0b08","\ue0b09","\ue0b0a","\ue0b0b","\ue0b0c","\ue0b0d","\ue0b0e","\ue0b0f","\ue0b10","\ue0b11","\ue0b12","\ue0b13","\ue0b14","\ue0b15","\ue0b16","\ue0b17","\ue0b18","\ue0b19","\ue0b1a","\ue0b1b","\ue0b1c","\ue0b1d","\ue0b1e","\ue0b1f","\ue0b20","\ue0b21","\ue0b22","\ue0b23","\ue0b24","\ue0b25","\ue0b26","\ue0b27","\ue0b28","\ue0b29","\ue0b2a","\ue0b2b","\ue0b2c","\ue0b2d","\ue0b2e","\ue0b2f","\ue0b30","\ue0b31","\ue0b32","\ue0b33","\ue0b34","\ue0b35","\ue0b36","\ue0b37","\ue0b38","\ue0b39","\ue0b3a","\ue0b3b","\ue0b3c","\ue0b3d","\ue0b3e","\ue0b3f","\ue0b40","\ue0b41","\ue0b42","\ue0b43","\ue0b44","\ue0b45","\ue0b46","\ue0b47","\ue0b48","\ue0b49","\ue0b4a","\ue0b4b","\ue0b4c","\ue0b4d","\ue0b4e","\ue0b4f","\ue0b50","\ue0b51","\ue0b52","\ue0b53","\ue0b54","\ue0b55","\ue0b56","\ue0b57","\ue0b58","\ue0b59","\ue0b5a","\ue0b5b","\ue0b5c","\ue0b5d","\ue0b5e","\ue0b5f","\ue0b60","\ue0b61","\ue0b62","\ue0b63","\ue0b64","\ue0b65","\ue0b66","\ue0b67","\ue0b68","\ue0b69","\ue0b6a","\ue0b6b","\ue0b6c","\ue0b6d","\ue0b6e","\ue0b6f","\ue0b70","\ue0b71","\ue0b72","\ue0b73","\ue0b74","\ue0b75","\ue0b76","\ue0b77","\ue0b78","\ue0b79","\ue0b7a","\ue0b7b","\ue0b7c","\ue0b7d","\ue0b7e","\ue0b7f","\ue0b80","\ue0b81","\ue0b82","\ue0b83","\ue0b84","\ue0b85","\ue0b86","\ue0b87","\ue0b88","\ue0b89","\ue0b8a","\ue0b8b","\ue0b8c","\ue0b8d","\ue0b8e","\ue0b8f","\ue0b90","\ue0b91","\ue0b92","\ue0b93","\ue0b94","\ue0b95","\ue0b96","\ue0b97","\ue0b98","\ue0b99","\ue0b9a","\ue0b9b","\ue0b9c","\ue0b9d","\ue0b9e","\ue0b9f","\ue0ba0","\ue0ba1","\ue0ba2","\ue0ba3","\ue0ba4","\ue0ba5","\ue0ba6","\ue0ba7","\ue0ba8","\ue0ba9","\ue0baa","\ue0bab","\ue0bac","\ue0bad","\ue0bae","\ue0baf","\ue0bb0","\ue0bb1","\ue0bb2","\ue0bb3","\ue0bb4","\ue0bb5","\ue0bb6","\ue0bb7","\ue0bb8","\ue0bb9","\ue0bba","\ue0bbb","\ue0bbc","\ue0bbd","\ue0bbe","\ue0bbf","\ue0bc0","\ue0bc1","\ue0bc2","\ue0bc3","\ue0bc4","\ue0bc5","\ue0bc6","\ue0bc7","\ue0bc8","\ue0bc9","\ue0bca","\ue0bcb","\ue0bcc","\ue0bcd","\ue0bce","\ue0bcf","\ue0bd0","\ue0bd1","\ue0bd2","\ue0bd3","\ue0bd4","\ue0bd5","\ue0bd6","\ue0bd7","\ue0bd8","\ue0bd9","\ue0bda","\ue0bdb","\ue0bdc","\ue0bdd","\ue0bde","\ue0bdf","\ue0be0","\ue0be1","\ue0be2","\ue0be3","\ue0be4","\ue0be5","\ue0be6","\ue0be7","\ue0be8","\ue0be9","\ue0bea","\ue0beb","\ue0bec","\ue0bed","\ue0bee","\ue0bef","\ue0bf0","\ue0bf1","\ue0bf2","\ue0bf3","\ue0bf4","\ue0bf5","\ue0bf6","\ue0bf7","\ue0bf8","\ue0bf9","\ue0bfa","\ue0bfb","\ue0bfc","\ue0bfd","\ue0bfe","\ue0bff","\ue0c00","\ue0c01","\ue0c02","\ue0c03","\ue0c04","\ue0c05","\ue0c06","\ue0c07","\ue0c08","\ue0c09","\ue0c0a","\ue0c0b","\ue0c0c","\ue0c0d","\ue0c0e","\ue0c0f","\ue0c10","\ue0c11","\ue0c12","\ue0c13","\ue0c14","\ue0c15","\ue0c16","\ue0c17","\ue0c18","\ue0c19","\ue0c1a","\ue0c1b","\ue0c1c","\ue0c1d","\ue0c1e","\ue0c1f","\ue0c20","\ue0c21","\ue0c22","\ue0c23","\ue0c24","\ue0c25","\ue0c26","\ue0c27","\ue0c28","\ue0c29","\ue0c2a","\ue0c2b","\ue0c2c","\ue0c2d","\ue0c2e","\ue0c2f","\ue0c30","\ue0c31","\ue0c32","\ue0c33","\ue0c34","\ue0c35","\ue0c36","\ue0c37","\ue0c38","\ue0c39","\ue0c3a","\ue0c3b","\ue0c3c","\ue0c3d","\ue0c3e","\ue0c3f","\ue0c40","\ue0c41","\ue0c42","\ue0c43","\ue0c44","\ue0c45","\ue0c46","\ue0c47","\ue0c48","\ue0c49","\ue0c4a","\ue0c4b","\ue0c4c","\ue0c4d","\ue0c4e","\ue0c4f","\ue0c50","\ue0c51","\ue0c52","\ue0c53","\ue0c54","\ue0c55","\ue0c56","\ue0c57","\ue0c58","\ue0c59","\ue0c5a","\ue0c5b","\ue0c5c","\ue0c5d","\ue0c5e","\ue0c5f","\ue0c60","\ue0c61","\ue0c62","\ue0c63","\ue0c64","\ue0c65","\ue0c66","\ue0c67","\ue0c68","\ue0c69","\ue0c6a","\ue0c6b","\ue0c6c","\ue0c6d","\ue0c6e","\ue0c6f","\ue0c70","\ue0c71","\ue0c72","\ue0c73","\ue0c74","\ue0c75","\ue0c76","\ue0c77","\ue0c78","\ue0c79","\ue0c7a","\ue0c7b","\ue0c7c","\ue0c7d","\ue0c7e","\ue0c7f","\ue0c80","\ue0c81","\ue0c82","\ue0c83","\ue0c84","\ue0c85","\ue0c86","\ue0c87","\ue0c88","\ue0c89","\ue0c8a","\ue0c8b","\ue0c8c","\ue0c8d","\ue0c8e","\ue0c8f","\ue0c90","\ue0c91","\ue0c92","\ue0c93","\ue0c94","\ue0c95","\ue0c96","\ue0c97","\ue0c98","\ue0c99","\ue0c9a","\ue0c9b","\ue0c9c","\ue0c9d","\ue0c9e","\ue0c9f","\ue0ca0","\ue0ca1","\ue0ca2","\ue0ca3","\ue0ca4","\ue0ca5","\ue0ca6","\ue0ca7","\ue0ca8","\ue0ca9","\ue0caa","\ue0cab","\ue0cac","\ue0cad","\ue0cae","\ue0caf","\ue0cb0","\ue0cb1","\ue0cb2","\ue0cb3","\ue0cb4","\ue0cb5","\ue0cb6","\ue0cb7","\ue0cb8","\ue0cb9","\ue0cba","\ue0cbb","\ue0cbc","\ue0cbd","\ue0cbe","\ue0cbf","\ue0cc0","\ue0cc1","\ue0cc2","\ue0cc3","\ue0cc4","\ue0cc5","\ue0cc6","\ue0cc7","\ue0cc8","\ue0cc9","\ue0cca","\ue0ccb","\ue0ccc","\ue0ccd","\ue0cce","\ue0ccf","\ue0cd0","\ue0cd1","\ue0cd2","\ue0cd3","\ue0cd4","\ue0cd5","\ue0cd6","\ue0cd7","\ue0cd8","\ue0cd9","\ue0cda","\ue0cdb","\ue0cdc","\ue0cdd","\ue0cde","\ue0cdf","\ue0ce0","\ue0ce1","\ue0ce2","\ue0ce3","\ue0ce4","\ue0ce5","\ue0ce6","\ue0ce7","\ue0ce8","\ue0ce9","\ue0cea","\ue0ceb","\ue0cec","\ue0ced","\ue0cee","\ue0cef","\ue0cf0","\ue0cf1","\ue0cf2","\ue0cf3","\ue0cf4","\ue0cf5","\ue0cf6","\ue0cf7","\ue0cf8","\ue0cf9","\ue0cfa","\ue0cfb","\ue0cfc","\ue0cfd","\ue0cfe","\ue0cff","\ue0d00","\ue0d01","\ue0d02","\ue0d03","\ue0d04","\ue0d05","\ue0d06","\ue0d07","\ue0d08","\ue0d09","\ue0d0a","\ue0d0b","\ue0d0c","\ue0d0d","\ue0d0e","\ue0d0f","\ue0d10","\ue0d11","\ue0d12","\ue0d13","\ue0d14","\ue0d15","\ue0d16","\ue0d17","\ue0d18","\ue0d19","\ue0d1a","\ue0d1b","\ue0d1c","\ue0d1d","\ue0d1e","\ue0d1f","\ue0d20","\ue0d21","\ue0d22","\ue0d23","\ue0d24","\ue0d25","\ue0d26","\ue0d27","\ue0d28","\ue0d29","\ue0d2a","\ue0d2b","\ue0d2c","\ue0d2d","\ue0d2e","\ue0d2f","\ue0d30","\ue0d31","\ue0d32","\ue0d33","\ue0d34","\ue0d35","\ue0d36","\ue0d37","\ue0d38","\ue0d39","\ue0d3a","\ue0d3b","\ue0d3c","\ue0d3d","\ue0d3e","\ue0d3f","\ue0d40","\ue0d41","\ue0d42","\ue0d43","\ue0d44","\ue0d45","\ue0d46","\ue0d47","\ue0d48","\ue0d49","\ue0d4a","\ue0d4b","\ue0d4c","\ue0d4d","\ue0d4e","\ue0d4f","\ue0d50","\ue0d51","\ue0d52","\ue0d53","\ue0d54","\ue0d55","\ue0d56","\ue0d57","\ue0d58","\ue0d59","\ue0d5a","\ue0d5b","\ue0d5c","\ue0d5d","\ue0d5e","\ue0d5f","\ue0d60","\ue0d61","\ue0d62","\ue0d63","\ue0d64","\ue0d65","\ue0d66","\ue0d67","\ue0d68","\ue0d69","\ue0d6a","\ue0d6b","\ue0d6c","\ue0d6d","\ue0d6e","\ue0d6f","\ue0d70","\ue0d71","\ue0d72","\ue0d73","\ue0d74","\ue0d75","\ue0d76","\ue0d77","\ue0d78","\ue0d79","\ue0d7a","\ue0d7b","\ue0d7c","\ue0d7d","\ue0d7e","\ue0d7f","\ue0d80","\ue0d81","\ue0d82","\ue0d83","\ue0d84","\ue0d85","\ue0d86","\ue0d87","\ue0d88","\ue0d89","\ue0d8a","\ue0d8b","\ue0d8c","\ue0d8d","\ue0d8e","\ue0d8f","\ue0d90","\ue0d91","\ue0d92","\ue0d93","\ue0d94","\ue0d95","\ue0d96","\ue0d97","\ue0d98","\ue0d99","\ue0d9a","\ue0d9b","\ue0d9c","\ue0d9d","\ue0d9e","\ue0d9f","\ue0da0","\ue0da1","\ue0da2","\ue0da3","\ue0da4","\ue0da5","\ue0da6","\ue0da7","\ue0da8","\ue0da9","\ue0daa","\ue0dab","\ue0dac","\ue0dad","\ue0dae","\ue0daf","\ue0db0","\ue0db1","\ue0db2","\ue0db3","\ue0db4","\ue0db5","\ue0db6","\ue0db7","\ue0db8","\ue0db9","\ue0dba","\ue0dbb","\ue0dbc","\ue0dbd","\ue0dbe","\ue0dbf","\ue0dc0","\ue0dc1","\ue0dc2","\ue0dc3","\ue0dc4","\ue0dc5","\ue0dc6","\ue0dc7","\ue0dc8","\ue0dc9","\ue0dca","\ue0dcb","\ue0dcc","\ue0dcd","\ue0dce","\ue0dcf","\ue0dd0","\ue0dd1","\ue0dd2","\ue0dd3","\ue0dd4","\ue0dd5","\ue0dd6","\ue0dd7","\ue0dd8","\ue0dd9","\ue0dda","\ue0ddb","\ue0ddc","\ue0ddd","\ue0dde","\ue0ddf","\ue0de0","\ue0de1","\ue0de2","\ue0de3","\ue0de4","\ue0de5","\ue0de6","\ue0de7","\ue0de8","\ue0de9","\ue0dea","\ue0deb","\ue0dec","\ue0ded","\ue0dee","\ue0def","\ue0df0","\ue0df1","\ue0df2","\ue0df3","\ue0df4","\ue0df5","\ue0df6","\ue0df7","\ue0df8","\ue0df9","\ue0dfa","\ue0dfb","\ue0dfc","\ue0dfd","\ue0dfe","\ue0dff","\ue0e00","\ue0e01","\ue0e02","\ue0e03","\ue0e04","\ue0e05","\ue0e06","\ue0e07","\ue0e08","\ue0e09","\ue0e0a","\ue0e0b","\ue0e0c","\ue0e0d","\ue0e0e","\ue0e0f","\ue0e10","\ue0e11","\ue0e12","\ue0e13","\ue0e14","\ue0e15","\ue0e16","\ue0e17","\ue0e18","\ue0e19","\ue0e1a","\ue0e1b","\ue0e1c","\ue0e1d","\ue0e1e","\ue0e1f","\ue0e20","\ue0e21","\ue0e22","\ue0e23","\ue0e24","\ue0e25","\ue0e26","\ue0e27","\ue0e28","\ue0e29","\ue0e2a","\ue0e2b","\ue0e2c","\ue0e2d","\ue0e2e","\ue0e2f","\ue0e30","\ue0e31","\ue0e32","\ue0e33","\ue0e34","\ue0e35","\ue0e36","\ue0e37","\ue0e38","\ue0e39","\ue0e3a","\ue0e3b","\ue0e3c","\ue0e3d","\ue0e3e","\ue0e3f","\ue0e40","\ue0e41","\ue0e42","\ue0e43","\ue0e44","\ue0e45","\ue0e46","\ue0e47","\ue0e48","\ue0e49","\ue0e4a","\ue0e4b","\ue0e4c","\ue0e4d","\ue0e4e","\ue0e4f","\ue0e50","\ue0e51","\ue0e52","\ue0e53","\ue0e54","\ue0e55","\ue0e56","\ue0e57","\ue0e58","\ue0e59","\ue0e5a","\ue0e5b","\ue0e5c","\ue0e5d","\ue0e5e","\ue0e5f","\ue0e60","\ue0e61","\ue0e62","\ue0e63","\ue0e64","\ue0e65","\ue0e66","\ue0e67","\ue0e68","\ue0e69","\ue0e6a","\ue0e6b","\ue0e6c","\ue0e6d","\ue0e6e","\ue0e6f","\ue0e70","\ue0e71","\ue0e72","\ue0e73","\ue0e74","\ue0e75","\ue0e76","\ue0e77","\ue0e78","\ue0e79","\ue0e7a","\ue0e7b","\ue0e7c","\ue0e7d","\ue0e7e","\ue0e7f","\ue0e80","\ue0e81","\ue0e82","\ue0e83","\ue0e84","\ue0e85","\ue0e86","\ue0e87","\ue0e88","\ue0e89","\ue0e8a","\ue0e8b","\ue0e8c","\ue0e8d","\ue0e8e","\ue0e8f","\ue0e90","\ue0e91","\ue0e92","\ue0e93","\ue0e94","\ue0e95","\ue0e96","\ue0e97","\ue0e98","\ue0e99","\ue0e9a","\ue0e9b","\ue0e9c","\ue0e9d","\ue0e9e","\ue0e9f","\ue0ea0","\ue0ea1","\ue0ea2","\ue0ea3","\ue0ea4","\ue0ea5","\ue0ea6","\ue0ea7","\ue0ea8","\ue0ea9","\ue0eaa","\ue0eab","\ue0eac","\ue0ead","\ue0eae","\ue0eaf","\ue0eb0","\ue0eb1","\ue0eb2","\ue0eb3","\ue0eb4","\ue0eb5","\ue0eb6","\ue0eb7","\ue0eb8","\ue0eb9","\ue0eba","\ue0ebb","\ue0ebc","\ue0ebd","\ue0ebe","\ue0ebf","\ue0ec0","\ue0ec1","\ue0ec2","\ue0ec3","\ue0ec4","\ue0ec5","\ue0ec6","\ue0ec7","\ue0ec8","\ue0ec9","\ue0eca","\ue0ecb","\ue0ecc","\ue0ecd","\ue0ece","\ue0ecf","\ue0ed0","\ue0ed1","\ue0ed2","\ue0ed3","\ue0ed4","\ue0ed5","\ue0ed6","\ue0ed7","\ue0ed8","\ue0ed9","\ue0eda","\ue0edb","\ue0edc","\ue0edd","\ue0ede","\ue0edf","\ue0ee0","\ue0ee1","\ue0ee2","\ue0ee3","\ue0ee4","\ue0ee5","\ue0ee6","\ue0ee7","\ue0ee8","\ue0ee9","\ue0eea","\ue0eeb","\ue0eec","\ue0eed","\ue0eee","\ue0eef","\ue0ef0","\ue0ef1","\ue0ef2","\ue0ef3","\ue0ef4","\ue0ef5","\ue0ef6","\ue0ef7","\ue0ef8","\ue0ef9","\ue0efa","\ue0efb","\ue0efc","\ue0efd","\ue0efe","\ue0eff","\ue0f00","\ue0f01","\ue0f02","\ue0f03","\ue0f04","\ue0f05","\ue0f06","\ue0f07","\ue0f08","\ue0f09","\ue0f0a","\ue0f0b","\ue0f0c","\ue0f0d","\ue0f0e","\ue0f0f","\ue0f10","\ue0f11","\ue0f12","\ue0f13","\ue0f14","\ue0f15","\ue0f16","\ue0f17","\ue0f18","\ue0f19","\ue0f1a","\ue0f1b","\ue0f1c","\ue0f1d","\ue0f1e","\ue0f1f","\ue0f20","\ue0f21","\ue0f22","\ue0f23","\ue0f24","\ue0f25","\ue0f26","\ue0f27","\ue0f28","\ue0f29","\ue0f2a","\ue0f2b","\ue0f2c","\ue0f2d","\ue0f2e","\ue0f2f","\ue0f30","\ue0f31","\ue0f32","\ue0f33","\ue0f34","\ue0f35","\ue0f36","\ue0f37","\ue0f38","\ue0f39","\ue0f3a","\ue0f3b","\ue0f3c","\ue0f3d","\ue0f3e","\ue0f3f","\ue0f40","\ue0f41","\ue0f42","\ue0f43","\ue0f44","\ue0f45","\ue0f46","\ue0f47","\ue0f48","\ue0f49","\ue0f4a","\ue0f4b","\ue0f4c","\ue0f4d","\ue0f4e","\ue0f4f","\ue0f50","\ue0f51","\ue0f52","\ue0f53","\ue0f54","\ue0f55","\ue0f56","\ue0f57","\ue0f58","\ue0f59","\ue0f5a","\ue0f5b","\ue0f5c","\ue0f5d","\ue0f5e","\ue0f5f","\ue0f60","\ue0f61","\ue0f62","\ue0f63","\ue0f64","\ue0f65","\ue0f66","\ue0f67","\ue0f68","\ue0f69","\ue0f6a","\ue0f6b","\ue0f6c","\ue0f6d","\ue0f6e","\ue0f6f","\ue0f70","\ue0f71","\ue0f72","\ue0f73","\ue0f74","\ue0f75","\ue0f76","\ue0f77","\ue0f78","\ue0f79","\ue0f7a","\ue0f7b","\ue0f7c","\ue0f7d","\ue0f7e","\ue0f7f","\ue0f80","\ue0f81","\ue0f82","\ue0f83","\ue0f84","\ue0f85","\ue0f86","\ue0f87","\ue0f88","\ue0f89","\ue0f8a","\ue0f8b","\ue0f8c","\ue0f8d","\ue0f8e","\ue0f8f","\ue0f90","\ue0f91","\ue0f92","\ue0f93","\ue0f94","\ue0f95","\ue0f96","\ue0f97","\ue0f98","\ue0f99","\ue0f9a","\ue0f9b","\ue0f9c","\ue0f9d","\ue0f9e","\ue0f9f","\ue0fa0","\ue0fa1","\ue0fa2","\ue0fa3","\ue0fa4","\ue0fa5","\ue0fa6","\ue0fa7","\ue0fa8","\ue0fa9","\ue0faa","\ue0fab","\ue0fac","\ue0fad","\ue0fae","\ue0faf","\ue0fb0","\ue0fb1","\ue0fb2","\ue0fb3","\ue0fb4","\ue0fb5","\ue0fb6","\ue0fb7","\ue0fb8","\ue0fb9","\ue0fba","\ue0fbb","\ue0fbc","\ue0fbd","\ue0fbe","\ue0fbf","\ue0fc0","\ue0fc1","\ue0fc2","\ue0fc3","\ue0fc4","\ue0fc5","\ue0fc6","\ue0fc7","\ue0fc8","\ue0fc9","\ue0fca","\ue0fcb","\ue0fcc","\ue0fcd","\ue0fce","\ue0fcf","\ue0fd0","\ue0fd1","\ue0fd2","\ue0fd3","\ue0fd4","\ue0fd5","\ue0fd6","\ue0fd7","\ue0fd8","\ue0fd9","\ue0fda","\ue0fdb","\ue0fdc","\ue0fdd","\ue0fde","\ue0fdf","\ue0fe0","\ue0fe1","\ue0fe2","\ue0fe3","\ue0fe4","\ue0fe5","\ue0fe6","\ue0fe7","\ue0fe8","\ue0fe9","\ue0fea","\ue0feb","\ue0fec","\ue0fed","\ue0fee","\ue0fef","\ue0ff0","\ue0ff1","\ue0ff2","\ue0ff3","\ue0ff4","\ue0ff5","\ue0ff6","\ue0ff7","\ue0ff8","\ue0ff9","\ue0ffa","\ue0ffb","\ue0ffc","\ue0ffd","\ue0ffe","\ue0fff",  # ; Control # Cn [3600] <reserved-E01F0>..<reserved-E0FFF>
        "\u0300","\u0301","\u0302","\u0303","\u0304","\u0305","\u0306","\u0307","\u0308","\u0309","\u030a","\u030b","\u030c","\u030d","\u030e","\u030f","\u0310","\u0311","\u0312","\u0313","\u0314","\u0315","\u0316","\u0317","\u0318","\u0319","\u031a","\u031b","\u031c","\u031d","\u031e","\u031f","\u0320","\u0321","\u0322","\u0323","\u0324","\u0325","\u0326","\u0327","\u0328","\u0329","\u032a","\u032b","\u032c","\u032d","\u032e","\u032f","\u0330","\u0331","\u0332","\u0333","\u0334","\u0335","\u0336","\u0337","\u0338","\u0339","\u033a","\u033b","\u033c","\u033d","\u033e","\u033f","\u0340","\u0341","\u0342","\u0343","\u0344","\u0345","\u0346","\u0347","\u0348","\u0349","\u034a","\u034b","\u034c","\u034d","\u034e","\u034f","\u0350","\u0351","\u0352","\u0353","\u0354","\u0355","\u0356","\u0357","\u0358","\u0359","\u035a","\u035b","\u035c","\u035d","\u035e","\u035f","\u0360","\u0361","\u0362","\u0363","\u0364","\u0365","\u0366","\u0367","\u0368","\u0369","\u036a","\u036b","\u036c","\u036d","\u036e","\u036f",  # ; Extend # Mn [112] COMBINING GRAVE ACCENT..COMBINING LATIN SMALL LETTER X
        "\u0483","\u0484","\u0485","\u0486","\u0487",  # ; Extend # Mn   [5] COMBINING CYRILLIC TITLO..COMBINING CYRILLIC POKRYTIE
        "\u0488","\u0489",  # ; Extend # Me   [2] COMBINING CYRILLIC HUNDRED THOUSANDS SIGN..COMBINING CYRILLIC MILLIONS SIGN
        "\u0591","\u0592","\u0593","\u0594","\u0595","\u0596","\u0597","\u0598","\u0599","\u059a","\u059b","\u059c","\u059d","\u059e","\u059f","\u05a0","\u05a1","\u05a2","\u05a3","\u05a4","\u05a5","\u05a6","\u05a7","\u05a8","\u05a9","\u05aa","\u05ab","\u05ac","\u05ad","\u05ae","\u05af","\u05b0","\u05b1","\u05b2","\u05b3","\u05b4","\u05b5","\u05b6","\u05b7","\u05b8","\u05b9","\u05ba","\u05bb","\u05bc","\u05bd",  # ; Extend # Mn  [45] HEBREW ACCENT ETNAHTA..HEBREW POINT METEG
        "\u05BF",  # ; Extend # Mn       HEBREW POINT RAFE
        "\u05c1","\u05c2",  # ; Extend # Mn   [2] HEBREW POINT SHIN DOT..HEBREW POINT SIN DOT
        "\u05c4","\u05c5",  # ; Extend # Mn   [2] HEBREW MARK UPPER DOT..HEBREW MARK LOWER DOT
        "\u05C7",  # ; Extend # Mn       HEBREW POINT QAMATS QATAN
        "\u0610","\u0611","\u0612","\u0613","\u0614","\u0615","\u0616","\u0617","\u0618","\u0619","\u061a",  # ; Extend # Mn  [11] ARABIC SIGN SALLALLAHOU ALAYHE WASSALLAM..ARABIC SMALL KASRA
        "\u064b","\u064c","\u064d","\u064e","\u064f","\u0650","\u0651","\u0652","\u0653","\u0654","\u0655","\u0656","\u0657","\u0658","\u0659","\u065a","\u065b","\u065c","\u065d","\u065e","\u065f",  # ; Extend # Mn  [21] ARABIC FATHATAN..ARABIC WAVY HAMZA BELOW
        "\u0670",  # ; Extend # Mn       ARABIC LETTER SUPERSCRIPT ALEF
        "\u06d6","\u06d7","\u06d8","\u06d9","\u06da","\u06db","\u06dc",  # ; Extend # Mn   [7] ARABIC SMALL HIGH LIGATURE SAD WITH LAM WITH ALEF MAKSURA..ARABIC SMALL HIGH SEEN
        "\u06df","\u06e0","\u06e1","\u06e2","\u06e3","\u06e4",  # ; Extend # Mn   [6] ARABIC SMALL HIGH ROUNDED ZERO..ARABIC SMALL HIGH MADDA
        "\u06e7","\u06e8",  # ; Extend # Mn   [2] ARABIC SMALL HIGH YEH..ARABIC SMALL HIGH NOON
        "\u06ea","\u06eb","\u06ec","\u06ed",  # ; Extend # Mn   [4] ARABIC EMPTY CENTRE LOW STOP..ARABIC SMALL LOW MEEM
        "\u0711",  # ; Extend # Mn       SYRIAC LETTER SUPERSCRIPT ALAPH
        "\u0730","\u0731","\u0732","\u0733","\u0734","\u0735","\u0736","\u0737","\u0738","\u0739","\u073a","\u073b","\u073c","\u073d","\u073e","\u073f","\u0740","\u0741","\u0742","\u0743","\u0744","\u0745","\u0746","\u0747","\u0748","\u0749","\u074a",  # ; Extend # Mn  [27] SYRIAC PTHAHA ABOVE..SYRIAC BARREKH
        "\u07a6","\u07a7","\u07a8","\u07a9","\u07aa","\u07ab","\u07ac","\u07ad","\u07ae","\u07af","\u07b0",  # ; Extend # Mn  [11] THAANA ABAFILI..THAANA SUKUN
        "\u07eb","\u07ec","\u07ed","\u07ee","\u07ef","\u07f0","\u07f1","\u07f2","\u07f3",  # ; Extend # Mn   [9] NKO COMBINING SHORT HIGH TONE..NKO COMBINING DOUBLE DOT ABOVE
        "\u0816","\u0817","\u0818","\u0819",  # ; Extend # Mn   [4] SAMARITAN MARK IN..SAMARITAN MARK DAGESH
        "\u081b","\u081c","\u081d","\u081e","\u081f","\u0820","\u0821","\u0822","\u0823",  # ; Extend # Mn   [9] SAMARITAN MARK EPENTHETIC YUT..SAMARITAN VOWEL SIGN A
        "\u0825","\u0826","\u0827",  # ; Extend # Mn   [3] SAMARITAN VOWEL SIGN SHORT A..SAMARITAN VOWEL SIGN U
        "\u0829","\u082a","\u082b","\u082c","\u082d",  # ; Extend # Mn   [5] SAMARITAN VOWEL SIGN LONG I..SAMARITAN MARK NEQUDAA
        "\u0859","\u085a","\u085b",  # ; Extend # Mn   [3] MANDAIC AFFRICATION MARK..MANDAIC GEMINATION MARK
        "\u08d4","\u08d5","\u08d6","\u08d7","\u08d8","\u08d9","\u08da","\u08db","\u08dc","\u08dd","\u08de","\u08df","\u08e0","\u08e1",  # ; Extend # Mn  [14] ARABIC SMALL HIGH WORD AR-RUB..ARABIC SMALL HIGH SIGN SAFHA
        "\u08e3","\u08e4","\u08e5","\u08e6","\u08e7","\u08e8","\u08e9","\u08ea","\u08eb","\u08ec","\u08ed","\u08ee","\u08ef","\u08f0","\u08f1","\u08f2","\u08f3","\u08f4","\u08f5","\u08f6","\u08f7","\u08f8","\u08f9","\u08fa","\u08fb","\u08fc","\u08fd","\u08fe","\u08ff","\u0900","\u0901","\u0902",  # ; Extend # Mn  [32] ARABIC TURNED DAMMA BELOW..DEVANAGARI SIGN ANUSVARA
        "\u093A",  # ; Extend # Mn       DEVANAGARI VOWEL SIGN OE
        "\u093C",  # ; Extend # Mn       DEVANAGARI SIGN NUKTA
        "\u0941","\u0942","\u0943","\u0944","\u0945","\u0946","\u0947","\u0948",  # ; Extend # Mn   [8] DEVANAGARI VOWEL SIGN U..DEVANAGARI VOWEL SIGN AI
        "\u094D",  # ; Extend # Mn       DEVANAGARI SIGN VIRAMA
        "\u0951","\u0952","\u0953","\u0954","\u0955","\u0956","\u0957",  # ; Extend # Mn   [7] DEVANAGARI STRESS SIGN UDATTA..DEVANAGARI VOWEL SIGN UUE
        "\u0962","\u0963",  # ; Extend # Mn   [2] DEVANAGARI VOWEL SIGN VOCALIC L..DEVANAGARI VOWEL SIGN VOCALIC LL
        "\u0981",  # ; Extend # Mn       BENGALI SIGN CANDRABINDU
        "\u09BC",  # ; Extend # Mn       BENGALI SIGN NUKTA
        "\u09BE",  # ; Extend # Mc       BENGALI VOWEL SIGN AA
        "\u09c1","\u09c2","\u09c3","\u09c4",  # ; Extend # Mn   [4] BENGALI VOWEL SIGN U..BENGALI VOWEL SIGN VOCALIC RR
        "\u09CD",  # ; Extend # Mn       BENGALI SIGN VIRAMA
        "\u09D7",  # ; Extend # Mc       BENGALI AU LENGTH MARK
        "\u09e2","\u09e3",  # ; Extend # Mn   [2] BENGALI VOWEL SIGN VOCALIC L..BENGALI VOWEL SIGN VOCALIC LL
        "\u0a01","\u0a02",  # ; Extend # Mn   [2] GURMUKHI SIGN ADAK BINDI..GURMUKHI SIGN BINDI
        "\u0A3C",  # ; Extend # Mn       GURMUKHI SIGN NUKTA
        "\u0a41","\u0a42",  # ; Extend # Mn   [2] GURMUKHI VOWEL SIGN U..GURMUKHI VOWEL SIGN UU
        "\u0a47","\u0a48",  # ; Extend # Mn   [2] GURMUKHI VOWEL SIGN EE..GURMUKHI VOWEL SIGN AI
        "\u0a4b","\u0a4c","\u0a4d",  # ; Extend # Mn   [3] GURMUKHI VOWEL SIGN OO..GURMUKHI SIGN VIRAMA
        "\u0A51",  # ; Extend # Mn       GURMUKHI SIGN UDAAT
        "\u0a70","\u0a71",  # ; Extend # Mn   [2] GURMUKHI TIPPI..GURMUKHI ADDAK
        "\u0A75",  # ; Extend # Mn       GURMUKHI SIGN YAKASH
        "\u0a81","\u0a82",  # ; Extend # Mn   [2] GUJARATI SIGN CANDRABINDU..GUJARATI SIGN ANUSVARA
        "\u0ABC",  # ; Extend # Mn       GUJARATI SIGN NUKTA
        "\u0ac1","\u0ac2","\u0ac3","\u0ac4","\u0ac5",  # ; Extend # Mn   [5] GUJARATI VOWEL SIGN U..GUJARATI VOWEL SIGN CANDRA E
        "\u0ac7","\u0ac8",  # ; Extend # Mn   [2] GUJARATI VOWEL SIGN E..GUJARATI VOWEL SIGN AI
        "\u0ACD",  # ; Extend # Mn       GUJARATI SIGN VIRAMA
        "\u0ae2","\u0ae3",  # ; Extend # Mn   [2] GUJARATI VOWEL SIGN VOCALIC L..GUJARATI VOWEL SIGN VOCALIC LL
        "\u0afa","\u0afb","\u0afc","\u0afd","\u0afe","\u0aff",  # ; Extend # Mn   [6] GUJARATI SIGN SUKUN..GUJARATI SIGN TWO-CIRCLE NUKTA ABOVE
        "\u0B01",  # ; Extend # Mn       ORIYA SIGN CANDRABINDU
        "\u0B3C",  # ; Extend # Mn       ORIYA SIGN NUKTA
        "\u0B3E",  # ; Extend # Mc       ORIYA VOWEL SIGN AA
        "\u0B3F",  # ; Extend # Mn       ORIYA VOWEL SIGN I
        "\u0b41","\u0b42","\u0b43","\u0b44",  # ; Extend # Mn   [4] ORIYA VOWEL SIGN U..ORIYA VOWEL SIGN VOCALIC RR
        "\u0B4D",  # ; Extend # Mn       ORIYA SIGN VIRAMA
        "\u0B56",  # ; Extend # Mn       ORIYA AI LENGTH MARK
        "\u0B57",  # ; Extend # Mc       ORIYA AU LENGTH MARK
        "\u0b62","\u0b63",  # ; Extend # Mn   [2] ORIYA VOWEL SIGN VOCALIC L..ORIYA VOWEL SIGN VOCALIC LL
        "\u0B82",  # ; Extend # Mn       TAMIL SIGN ANUSVARA
        "\u0BBE",  # ; Extend # Mc       TAMIL VOWEL SIGN AA
        "\u0BC0",  # ; Extend # Mn       TAMIL VOWEL SIGN II
        "\u0BCD",  # ; Extend # Mn       TAMIL SIGN VIRAMA
        "\u0BD7",  # ; Extend # Mc       TAMIL AU LENGTH MARK
        "\u0C00",  # ; Extend # Mn       TELUGU SIGN COMBINING CANDRABINDU ABOVE
        "\u0c3e","\u0c3f","\u0c40",  # ; Extend # Mn   [3] TELUGU VOWEL SIGN AA..TELUGU VOWEL SIGN II
        "\u0c46","\u0c47","\u0c48",  # ; Extend # Mn   [3] TELUGU VOWEL SIGN E..TELUGU VOWEL SIGN AI
        "\u0c4a","\u0c4b","\u0c4c","\u0c4d",  # ; Extend # Mn   [4] TELUGU VOWEL SIGN O..TELUGU SIGN VIRAMA
        "\u0c55","\u0c56",  # ; Extend # Mn   [2] TELUGU LENGTH MARK..TELUGU AI LENGTH MARK
        "\u0c62","\u0c63",  # ; Extend # Mn   [2] TELUGU VOWEL SIGN VOCALIC L..TELUGU VOWEL SIGN VOCALIC LL
        "\u0C81",  # ; Extend # Mn       KANNADA SIGN CANDRABINDU
        "\u0CBC",  # ; Extend # Mn       KANNADA SIGN NUKTA
        "\u0CBF",  # ; Extend # Mn       KANNADA VOWEL SIGN I
        "\u0CC2",  # ; Extend # Mc       KANNADA VOWEL SIGN UU
        "\u0CC6",  # ; Extend # Mn       KANNADA VOWEL SIGN E
        "\u0ccc","\u0ccd",  # ; Extend # Mn   [2] KANNADA VOWEL SIGN AU..KANNADA SIGN VIRAMA
        "\u0cd5","\u0cd6",  # ; Extend # Mc   [2] KANNADA LENGTH MARK..KANNADA AI LENGTH MARK
        "\u0ce2","\u0ce3",  # ; Extend # Mn   [2] KANNADA VOWEL SIGN VOCALIC L..KANNADA VOWEL SIGN VOCALIC LL
        "\u0d00","\u0d01",  # ; Extend # Mn   [2] MALAYALAM SIGN COMBINING ANUSVARA ABOVE..MALAYALAM SIGN CANDRABINDU
        "\u0d3b","\u0d3c",  # ; Extend # Mn   [2] MALAYALAM SIGN VERTICAL BAR VIRAMA..MALAYALAM SIGN CIRCULAR VIRAMA
        "\u0D3E",  # ; Extend # Mc       MALAYALAM VOWEL SIGN AA
        "\u0d41","\u0d42","\u0d43","\u0d44",  # ; Extend # Mn   [4] MALAYALAM VOWEL SIGN U..MALAYALAM VOWEL SIGN VOCALIC RR
        "\u0D4D",  # ; Extend # Mn       MALAYALAM SIGN VIRAMA
        "\u0D57",  # ; Extend # Mc       MALAYALAM AU LENGTH MARK
        "\u0d62","\u0d63",  # ; Extend # Mn   [2] MALAYALAM VOWEL SIGN VOCALIC L..MALAYALAM VOWEL SIGN VOCALIC LL
        "\u0DCA",  # ; Extend # Mn       SINHALA SIGN AL-LAKUNA
        "\u0DCF",  # ; Extend # Mc       SINHALA VOWEL SIGN AELA-PILLA
        "\u0dd2","\u0dd3","\u0dd4",  # ; Extend # Mn   [3] SINHALA VOWEL SIGN KETTI IS-PILLA..SINHALA VOWEL SIGN KETTI PAA-PILLA
        "\u0DD6",  # ; Extend # Mn       SINHALA VOWEL SIGN DIGA PAA-PILLA
        "\u0DDF",  # ; Extend # Mc       SINHALA VOWEL SIGN GAYANUKITTA
        "\u0E31",  # ; Extend # Mn       THAI CHARACTER MAI HAN-AKAT
        "\u0e34","\u0e35","\u0e36","\u0e37","\u0e38","\u0e39","\u0e3a",  # ; Extend # Mn   [7] THAI CHARACTER SARA I..THAI CHARACTER PHINTHU
        "\u0e47","\u0e48","\u0e49","\u0e4a","\u0e4b","\u0e4c","\u0e4d","\u0e4e",  # ; Extend # Mn   [8] THAI CHARACTER MAITAIKHU..THAI CHARACTER YAMAKKAN
        "\u0EB1",  # ; Extend # Mn       LAO VOWEL SIGN MAI KAN
        "\u0eb4","\u0eb5","\u0eb6","\u0eb7","\u0eb8","\u0eb9",  # ; Extend # Mn   [6] LAO VOWEL SIGN I..LAO VOWEL SIGN UU
        "\u0ebb","\u0ebc",  # ; Extend # Mn   [2] LAO VOWEL SIGN MAI KON..LAO SEMIVOWEL SIGN LO
        "\u0ec8","\u0ec9","\u0eca","\u0ecb","\u0ecc","\u0ecd",  # ; Extend # Mn   [6] LAO TONE MAI EK..LAO NIGGAHITA
        "\u0f18","\u0f19",  # ; Extend # Mn   [2] TIBETAN ASTROLOGICAL SIGN -KHYUD PA..TIBETAN ASTROLOGICAL SIGN SDONG TSHUGS
        "\u0F35",  # ; Extend # Mn       TIBETAN MARK NGAS BZUNG NYI ZLA
        "\u0F37",  # ; Extend # Mn       TIBETAN MARK NGAS BZUNG SGOR RTAGS
        "\u0F39",  # ; Extend # Mn       TIBETAN MARK TSA -PHRU
        "\u0f71","\u0f72","\u0f73","\u0f74","\u0f75","\u0f76","\u0f77","\u0f78","\u0f79","\u0f7a","\u0f7b","\u0f7c","\u0f7d","\u0f7e",  # ; Extend # Mn  [14] TIBETAN VOWEL SIGN AA..TIBETAN SIGN RJES SU NGA RO
        "\u0f80","\u0f81","\u0f82","\u0f83","\u0f84",  # ; Extend # Mn   [5] TIBETAN VOWEL SIGN REVERSED I..TIBETAN MARK HALANTA
        "\u0f86","\u0f87",  # ; Extend # Mn   [2] TIBETAN SIGN LCI RTAGS..TIBETAN SIGN YANG RTAGS
        "\u0f8d","\u0f8e","\u0f8f","\u0f90","\u0f91","\u0f92","\u0f93","\u0f94","\u0f95","\u0f96","\u0f97",  # ; Extend # Mn  [11] TIBETAN SUBJOINED SIGN LCE TSA CAN..TIBETAN SUBJOINED LETTER JA
        "\u0f99","\u0f9a","\u0f9b","\u0f9c","\u0f9d","\u0f9e","\u0f9f","\u0fa0","\u0fa1","\u0fa2","\u0fa3","\u0fa4","\u0fa5","\u0fa6","\u0fa7","\u0fa8","\u0fa9","\u0faa","\u0fab","\u0fac","\u0fad","\u0fae","\u0faf","\u0fb0","\u0fb1","\u0fb2","\u0fb3","\u0fb4","\u0fb5","\u0fb6","\u0fb7","\u0fb8","\u0fb9","\u0fba","\u0fbb","\u0fbc",  # ; Extend # Mn  [36] TIBETAN SUBJOINED LETTER NYA..TIBETAN SUBJOINED LETTER FIXED-FORM RA
        "\u0FC6",  # ; Extend # Mn       TIBETAN SYMBOL PADMA GDAN
        "\u102d","\u102e","\u102f","\u1030",  # ; Extend # Mn   [4] MYANMAR VOWEL SIGN I..MYANMAR VOWEL SIGN UU
        "\u1032","\u1033","\u1034","\u1035","\u1036","\u1037",  # ; Extend # Mn   [6] MYANMAR VOWEL SIGN AI..MYANMAR SIGN DOT BELOW
        "\u1039","\u103a",  # ; Extend # Mn   [2] MYANMAR SIGN VIRAMA..MYANMAR SIGN ASAT
        "\u103d","\u103e",  # ; Extend # Mn   [2] MYANMAR CONSONANT SIGN MEDIAL WA..MYANMAR CONSONANT SIGN MEDIAL HA
        "\u1058","\u1059",  # ; Extend # Mn   [2] MYANMAR VOWEL SIGN VOCALIC L..MYANMAR VOWEL SIGN VOCALIC LL
        "\u105e","\u105f","\u1060",  # ; Extend # Mn   [3] MYANMAR CONSONANT SIGN MON MEDIAL NA..MYANMAR CONSONANT SIGN MON MEDIAL LA
        "\u1071","\u1072","\u1073","\u1074",  # ; Extend # Mn   [4] MYANMAR VOWEL SIGN GEBA KAREN I..MYANMAR VOWEL SIGN KAYAH EE
        "\u1082",  # ; Extend # Mn       MYANMAR CONSONANT SIGN SHAN MEDIAL WA
        "\u1085","\u1086",  # ; Extend # Mn   [2] MYANMAR VOWEL SIGN SHAN E ABOVE..MYANMAR VOWEL SIGN SHAN FINAL Y
        "\u108D",  # ; Extend # Mn       MYANMAR SIGN SHAN COUNCIL EMPHATIC TONE
        "\u109D",  # ; Extend # Mn       MYANMAR VOWEL SIGN AITON AI
        "\u135d","\u135e","\u135f",  # ; Extend # Mn   [3] ETHIOPIC COMBINING GEMINATION AND VOWEL LENGTH MARK..ETHIOPIC COMBINING GEMINATION MARK
        "\u1712","\u1713","\u1714",  # ; Extend # Mn   [3] TAGALOG VOWEL SIGN I..TAGALOG SIGN VIRAMA
        "\u1732","\u1733","\u1734",  # ; Extend # Mn   [3] HANUNOO VOWEL SIGN I..HANUNOO SIGN PAMUDPOD
        "\u1752","\u1753",  # ; Extend # Mn   [2] BUHID VOWEL SIGN I..BUHID VOWEL SIGN U
        "\u1772","\u1773",  # ; Extend # Mn   [2] TAGBANWA VOWEL SIGN I..TAGBANWA VOWEL SIGN U
        "\u17b4","\u17b5",  # ; Extend # Mn   [2] KHMER VOWEL INHERENT AQ..KHMER VOWEL INHERENT AA
        "\u17b7","\u17b8","\u17b9","\u17ba","\u17bb","\u17bc","\u17bd",  # ; Extend # Mn   [7] KHMER VOWEL SIGN I..KHMER VOWEL SIGN UA
        "\u17C6",  # ; Extend # Mn       KHMER SIGN NIKAHIT
        "\u17c9","\u17ca","\u17cb","\u17cc","\u17cd","\u17ce","\u17cf","\u17d0","\u17d1","\u17d2","\u17d3",  # ; Extend # Mn  [11] KHMER SIGN MUUSIKATOAN..KHMER SIGN BATHAMASAT
        "\u17DD",  # ; Extend # Mn       KHMER SIGN ATTHACAN
        "\u180b","\u180c","\u180d",  # ; Extend # Mn   [3] MONGOLIAN FREE VARIATION SELECTOR ONE..MONGOLIAN FREE VARIATION SELECTOR THREE
        "\u1885","\u1886",  # ; Extend # Mn   [2] MONGOLIAN LETTER ALI GALI BALUDA..MONGOLIAN LETTER ALI GALI THREE BALUDA
        "\u18A9",  # ; Extend # Mn       MONGOLIAN LETTER ALI GALI DAGALGA
        "\u1920","\u1921","\u1922",  # ; Extend # Mn   [3] LIMBU VOWEL SIGN A..LIMBU VOWEL SIGN U
        "\u1927","\u1928",  # ; Extend # Mn   [2] LIMBU VOWEL SIGN E..LIMBU VOWEL SIGN O
        "\u1932",  # ; Extend # Mn       LIMBU SMALL LETTER ANUSVARA
        "\u1939","\u193a","\u193b",  # ; Extend # Mn   [3] LIMBU SIGN MUKPHRENG..LIMBU SIGN SA-I
        "\u1a17","\u1a18",  # ; Extend # Mn   [2] BUGINESE VOWEL SIGN I..BUGINESE VOWEL SIGN U
        "\u1A1B",  # ; Extend # Mn       BUGINESE VOWEL SIGN AE
        "\u1A56",  # ; Extend # Mn       TAI THAM CONSONANT SIGN MEDIAL LA
        "\u1a58","\u1a59","\u1a5a","\u1a5b","\u1a5c","\u1a5d","\u1a5e",  # ; Extend # Mn   [7] TAI THAM SIGN MAI KANG LAI..TAI THAM CONSONANT SIGN SA
        "\u1A60",  # ; Extend # Mn       TAI THAM SIGN SAKOT
        "\u1A62",  # ; Extend # Mn       TAI THAM VOWEL SIGN MAI SAT
        "\u1a65","\u1a66","\u1a67","\u1a68","\u1a69","\u1a6a","\u1a6b","\u1a6c",  # ; Extend # Mn   [8] TAI THAM VOWEL SIGN I..TAI THAM VOWEL SIGN OA BELOW
        "\u1a73","\u1a74","\u1a75","\u1a76","\u1a77","\u1a78","\u1a79","\u1a7a","\u1a7b","\u1a7c",  # ; Extend # Mn  [10] TAI THAM VOWEL SIGN OA ABOVE..TAI THAM SIGN KHUEN-LUE KARAN
        "\u1A7F",  # ; Extend # Mn       TAI THAM COMBINING CRYPTOGRAMMIC DOT
        "\u1ab0","\u1ab1","\u1ab2","\u1ab3","\u1ab4","\u1ab5","\u1ab6","\u1ab7","\u1ab8","\u1ab9","\u1aba","\u1abb","\u1abc","\u1abd",  # ; Extend # Mn  [14] COMBINING DOUBLED CIRCUMFLEX ACCENT..COMBINING PARENTHESES BELOW
        "\u1ABE",  # ; Extend # Me       COMBINING PARENTHESES OVERLAY
        "\u1b00","\u1b01","\u1b02","\u1b03",  # ; Extend # Mn   [4] BALINESE SIGN ULU RICEM..BALINESE SIGN SURANG
        "\u1B34",  # ; Extend # Mn       BALINESE SIGN REREKAN
        "\u1b36","\u1b37","\u1b38","\u1b39","\u1b3a",  # ; Extend # Mn   [5] BALINESE VOWEL SIGN ULU..BALINESE VOWEL SIGN RA REPA
        "\u1B3C",  # ; Extend # Mn       BALINESE VOWEL SIGN LA LENGA
        "\u1B42",  # ; Extend # Mn       BALINESE VOWEL SIGN PEPET
        "\u1b6b","\u1b6c","\u1b6d","\u1b6e","\u1b6f","\u1b70","\u1b71","\u1b72","\u1b73",  # ; Extend # Mn   [9] BALINESE MUSICAL SYMBOL COMBINING TEGEH..BALINESE MUSICAL SYMBOL COMBINING GONG
        "\u1b80","\u1b81",  # ; Extend # Mn   [2] SUNDANESE SIGN PANYECEK..SUNDANESE SIGN PANGLAYAR
        "\u1ba2","\u1ba3","\u1ba4","\u1ba5",  # ; Extend # Mn   [4] SUNDANESE CONSONANT SIGN PANYAKRA..SUNDANESE VOWEL SIGN PANYUKU
        "\u1ba8","\u1ba9",  # ; Extend # Mn   [2] SUNDANESE VOWEL SIGN PAMEPET..SUNDANESE VOWEL SIGN PANEULEUNG
        "\u1bab","\u1bac","\u1bad",  # ; Extend # Mn   [3] SUNDANESE SIGN VIRAMA..SUNDANESE CONSONANT SIGN PASANGAN WA
        "\u1BE6",  # ; Extend # Mn       BATAK SIGN TOMPI
        "\u1be8","\u1be9",  # ; Extend # Mn   [2] BATAK VOWEL SIGN PAKPAK E..BATAK VOWEL SIGN EE
        "\u1BED",  # ; Extend # Mn       BATAK VOWEL SIGN KARO O
        "\u1bef","\u1bf0","\u1bf1",  # ; Extend # Mn   [3] BATAK VOWEL SIGN U FOR SIMALUNGUN SA..BATAK CONSONANT SIGN H
        "\u1c2c","\u1c2d","\u1c2e","\u1c2f","\u1c30","\u1c31","\u1c32","\u1c33",  # ; Extend # Mn   [8] LEPCHA VOWEL SIGN E..LEPCHA CONSONANT SIGN T
        "\u1c36","\u1c37",  # ; Extend # Mn   [2] LEPCHA SIGN RAN..LEPCHA SIGN NUKTA
        "\u1cd0","\u1cd1","\u1cd2",  # ; Extend # Mn   [3] VEDIC TONE KARSHANA..VEDIC TONE PRENKHA
        "\u1cd4","\u1cd5","\u1cd6","\u1cd7","\u1cd8","\u1cd9","\u1cda","\u1cdb","\u1cdc","\u1cdd","\u1cde","\u1cdf","\u1ce0",  # ; Extend # Mn  [13] VEDIC SIGN YAJURVEDIC MIDLINE SVARITA..VEDIC TONE RIGVEDIC KASHMIRI INDEPENDENT SVARITA
        "\u1ce2","\u1ce3","\u1ce4","\u1ce5","\u1ce6","\u1ce7","\u1ce8",  # ; Extend # Mn   [7] VEDIC SIGN VISARGA SVARITA..VEDIC SIGN VISARGA ANUDATTA WITH TAIL
        "\u1CED",  # ; Extend # Mn       VEDIC SIGN TIRYAK
        "\u1CF4",  # ; Extend # Mn       VEDIC TONE CANDRA ABOVE
        "\u1cf8","\u1cf9",  # ; Extend # Mn   [2] VEDIC TONE RING ABOVE..VEDIC TONE DOUBLE RING ABOVE
        "\u1dc0","\u1dc1","\u1dc2","\u1dc3","\u1dc4","\u1dc5","\u1dc6","\u1dc7","\u1dc8","\u1dc9","\u1dca","\u1dcb","\u1dcc","\u1dcd","\u1dce","\u1dcf","\u1dd0","\u1dd1","\u1dd2","\u1dd3","\u1dd4","\u1dd5","\u1dd6","\u1dd7","\u1dd8","\u1dd9","\u1dda","\u1ddb","\u1ddc","\u1ddd","\u1dde","\u1ddf","\u1de0","\u1de1","\u1de2","\u1de3","\u1de4","\u1de5","\u1de6","\u1de7","\u1de8","\u1de9","\u1dea","\u1deb","\u1dec","\u1ded","\u1dee","\u1def","\u1df0","\u1df1","\u1df2","\u1df3","\u1df4","\u1df5","\u1df6","\u1df7","\u1df8","\u1df9",  # ; Extend # Mn  [58] COMBINING DOTTED GRAVE ACCENT..COMBINING WIDE INVERTED BRIDGE BELOW
        "\u1dfb","\u1dfc","\u1dfd","\u1dfe","\u1dff",  # ; Extend # Mn   [5] COMBINING DELETION MARK..COMBINING RIGHT ARROWHEAD AND DOWN ARROWHEAD BELOW
        "\u200C",  # ; Extend # Cf       ZERO WIDTH NON-JOINER
        "\u20d0","\u20d1","\u20d2","\u20d3","\u20d4","\u20d5","\u20d6","\u20d7","\u20d8","\u20d9","\u20da","\u20db","\u20dc",  # ; Extend # Mn  [13] COMBINING LEFT HARPOON ABOVE..COMBINING FOUR DOTS ABOVE
        "\u20dd","\u20de","\u20df","\u20e0",  # ; Extend # Me   [4] COMBINING ENCLOSING CIRCLE..COMBINING ENCLOSING CIRCLE BACKSLASH
        "\u20E1",  # ; Extend # Mn       COMBINING LEFT RIGHT ARROW ABOVE
        "\u20e2","\u20e3","\u20e4",  # ; Extend # Me   [3] COMBINING ENCLOSING SCREEN..COMBINING ENCLOSING UPWARD POINTING TRIANGLE
        "\u20e5","\u20e6","\u20e7","\u20e8","\u20e9","\u20ea","\u20eb","\u20ec","\u20ed","\u20ee","\u20ef","\u20f0",  # ; Extend # Mn  [12] COMBINING REVERSE SOLIDUS OVERLAY..COMBINING ASTERISK ABOVE
        "\u2cef","\u2cf0","\u2cf1",  # ; Extend # Mn   [3] COPTIC COMBINING NI ABOVE..COPTIC COMBINING SPIRITUS LENIS
        "\u2D7F",  # ; Extend # Mn       TIFINAGH CONSONANT JOINER
        "\u2de0","\u2de1","\u2de2","\u2de3","\u2de4","\u2de5","\u2de6","\u2de7","\u2de8","\u2de9","\u2dea","\u2deb","\u2dec","\u2ded","\u2dee","\u2def","\u2df0","\u2df1","\u2df2","\u2df3","\u2df4","\u2df5","\u2df6","\u2df7","\u2df8","\u2df9","\u2dfa","\u2dfb","\u2dfc","\u2dfd","\u2dfe","\u2dff",  # ; Extend # Mn  [32] COMBINING CYRILLIC LETTER BE..COMBINING CYRILLIC LETTER IOTIFIED BIG YUS
        "\u302a","\u302b","\u302c","\u302d",  # ; Extend # Mn   [4] IDEOGRAPHIC LEVEL TONE MARK..IDEOGRAPHIC ENTERING TONE MARK
        "\u302e","\u302f",  # ; Extend # Mc   [2] HANGUL SINGLE DOT TONE MARK..HANGUL DOUBLE DOT TONE MARK
        "\u3099","\u309a",  # ; Extend # Mn   [2] COMBINING KATAKANA-HIRAGANA VOICED SOUND MARK..COMBINING KATAKANA-HIRAGANA SEMI-VOICED SOUND MARK
        "\uA66F",  # ; Extend # Mn       COMBINING CYRILLIC VZMET
        "\ua670","\ua671","\ua672",  # ; Extend # Me   [3] COMBINING CYRILLIC TEN MILLIONS SIGN..COMBINING CYRILLIC THOUSAND MILLIONS SIGN
        "\ua674","\ua675","\ua676","\ua677","\ua678","\ua679","\ua67a","\ua67b","\ua67c","\ua67d",  # ; Extend # Mn  [10] COMBINING CYRILLIC LETTER UKRAINIAN IE..COMBINING CYRILLIC PAYEROK
        "\ua69e","\ua69f",  # ; Extend # Mn   [2] COMBINING CYRILLIC LETTER EF..COMBINING CYRILLIC LETTER IOTIFIED E
        "\ua6f0","\ua6f1",  # ; Extend # Mn   [2] BAMUM COMBINING MARK KOQNDON..BAMUM COMBINING MARK TUKWENTIS
        "\uA802",  # ; Extend # Mn       SYLOTI NAGRI SIGN DVISVARA
        "\uA806",  # ; Extend # Mn       SYLOTI NAGRI SIGN HASANTA
        "\uA80B",  # ; Extend # Mn       SYLOTI NAGRI SIGN ANUSVARA
        "\ua825","\ua826",  # ; Extend # Mn   [2] SYLOTI NAGRI VOWEL SIGN U..SYLOTI NAGRI VOWEL SIGN E
        "\ua8c4","\ua8c5",  # ; Extend # Mn   [2] SAURASHTRA SIGN VIRAMA..SAURASHTRA SIGN CANDRABINDU
        "\ua8e0","\ua8e1","\ua8e2","\ua8e3","\ua8e4","\ua8e5","\ua8e6","\ua8e7","\ua8e8","\ua8e9","\ua8ea","\ua8eb","\ua8ec","\ua8ed","\ua8ee","\ua8ef","\ua8f0","\ua8f1",  # ; Extend # Mn  [18] COMBINING DEVANAGARI DIGIT ZERO..COMBINING DEVANAGARI SIGN AVAGRAHA
        "\ua926","\ua927","\ua928","\ua929","\ua92a","\ua92b","\ua92c","\ua92d",  # ; Extend # Mn   [8] KAYAH LI VOWEL UE..KAYAH LI TONE CALYA PLOPHU
        "\ua947","\ua948","\ua949","\ua94a","\ua94b","\ua94c","\ua94d","\ua94e","\ua94f","\ua950","\ua951",  # ; Extend # Mn  [11] REJANG VOWEL SIGN I..REJANG CONSONANT SIGN R
        "\ua980","\ua981","\ua982",  # ; Extend # Mn   [3] JAVANESE SIGN PANYANGGA..JAVANESE SIGN LAYAR
        "\uA9B3",  # ; Extend # Mn       JAVANESE SIGN CECAK TELU
        "\ua9b6","\ua9b7","\ua9b8","\ua9b9",  # ; Extend # Mn   [4] JAVANESE VOWEL SIGN WULU..JAVANESE VOWEL SIGN SUKU MENDUT
        "\uA9BC",  # ; Extend # Mn       JAVANESE VOWEL SIGN PEPET
        "\uA9E5",  # ; Extend # Mn       MYANMAR SIGN SHAN SAW
        "\uaa29","\uaa2a","\uaa2b","\uaa2c","\uaa2d","\uaa2e",  # ; Extend # Mn   [6] CHAM VOWEL SIGN AA..CHAM VOWEL SIGN OE
        "\uaa31","\uaa32",  # ; Extend # Mn   [2] CHAM VOWEL SIGN AU..CHAM VOWEL SIGN UE
        "\uaa35","\uaa36",  # ; Extend # Mn   [2] CHAM CONSONANT SIGN LA..CHAM CONSONANT SIGN WA
        "\uAA43",  # ; Extend # Mn       CHAM CONSONANT SIGN FINAL NG
        "\uAA4C",  # ; Extend # Mn       CHAM CONSONANT SIGN FINAL M
        "\uAA7C",  # ; Extend # Mn       MYANMAR SIGN TAI LAING TONE-2
        "\uAAB0",  # ; Extend # Mn       TAI VIET MAI KANG
        "\uaab2","\uaab3","\uaab4",  # ; Extend # Mn   [3] TAI VIET VOWEL I..TAI VIET VOWEL U
        "\uaab7","\uaab8",  # ; Extend # Mn   [2] TAI VIET MAI KHIT..TAI VIET VOWEL IA
        "\uaabe","\uaabf",  # ; Extend # Mn   [2] TAI VIET VOWEL AM..TAI VIET TONE MAI EK
        "\uAAC1",  # ; Extend # Mn       TAI VIET TONE MAI THO
        "\uaaec","\uaaed",  # ; Extend # Mn   [2] MEETEI MAYEK VOWEL SIGN UU..MEETEI MAYEK VOWEL SIGN AAI
        "\uAAF6",  # ; Extend # Mn       MEETEI MAYEK VIRAMA
        "\uABE5",  # ; Extend # Mn       MEETEI MAYEK VOWEL SIGN ANAP
        "\uABE8",  # ; Extend # Mn       MEETEI MAYEK VOWEL SIGN UNAP
        "\uABED",  # ; Extend # Mn       MEETEI MAYEK APUN IYEK
        "\uFB1E",  # ; Extend # Mn       HEBREW POINT JUDEO-SPANISH VARIKA
        "\ufe00","\ufe01","\ufe02","\ufe03","\ufe04","\ufe05","\ufe06","\ufe07","\ufe08","\ufe09","\ufe0a","\ufe0b","\ufe0c","\ufe0d","\ufe0e","\ufe0f",  # ; Extend # Mn  [16] VARIATION SELECTOR-1..VARIATION SELECTOR-16
        "\ufe20","\ufe21","\ufe22","\ufe23","\ufe24","\ufe25","\ufe26","\ufe27","\ufe28","\ufe29","\ufe2a","\ufe2b","\ufe2c","\ufe2d","\ufe2e","\ufe2f",  # ; Extend # Mn  [16] COMBINING LIGATURE LEFT HALF..COMBINING CYRILLIC TITLO RIGHT HALF
        "\uff9e","\uff9f",  # ; Extend # Lm   [2] HALFWIDTH KATAKANA VOICED SOUND MARK..HALFWIDTH KATAKANA SEMI-VOICED SOUND MARK
        "\u101FD",  # ; Extend # Mn       PHAISTOS DISC SIGN COMBINING OBLIQUE STROKE
        "\u102E0",  # ; Extend # Mn       COPTIC EPACT THOUSANDS MARK
        "\u10376","\u10377","\u10378","\u10379","\u1037a",  # ; Extend # Mn   [5] COMBINING OLD PERMIC LETTER AN..COMBINING OLD PERMIC LETTER SII
        "\u10a01","\u10a02","\u10a03",  # ; Extend # Mn   [3] KHAROSHTHI VOWEL SIGN I..KHAROSHTHI VOWEL SIGN VOCALIC R
        "\u10a05","\u10a06",  # ; Extend # Mn   [2] KHAROSHTHI VOWEL SIGN E..KHAROSHTHI VOWEL SIGN O
        "\u10a0c","\u10a0d","\u10a0e","\u10a0f",  # ; Extend # Mn   [4] KHAROSHTHI VOWEL LENGTH MARK..KHAROSHTHI SIGN VISARGA
        "\u10a38","\u10a39","\u10a3a",  # ; Extend # Mn   [3] KHAROSHTHI SIGN BAR ABOVE..KHAROSHTHI SIGN DOT BELOW
        "\u10A3F",  # ; Extend # Mn       KHAROSHTHI VIRAMA
        "\u10ae5","\u10ae6",  # ; Extend # Mn   [2] MANICHAEAN ABBREVIATION MARK ABOVE..MANICHAEAN ABBREVIATION MARK BELOW
        "\u11001",  # ; Extend # Mn       BRAHMI SIGN ANUSVARA
        "\u11038","\u11039","\u1103a","\u1103b","\u1103c","\u1103d","\u1103e","\u1103f","\u11040","\u11041","\u11042","\u11043","\u11044","\u11045","\u11046",  # ; Extend # Mn  [15] BRAHMI VOWEL SIGN AA..BRAHMI VIRAMA
        "\u1107f","\u11080","\u11081",  # ; Extend # Mn   [3] BRAHMI NUMBER JOINER..KAITHI SIGN ANUSVARA
        "\u110b3","\u110b4","\u110b5","\u110b6",  # ; Extend # Mn   [4] KAITHI VOWEL SIGN U..KAITHI VOWEL SIGN AI
        "\u110b9","\u110ba",  # ; Extend # Mn   [2] KAITHI SIGN VIRAMA..KAITHI SIGN NUKTA
        "\u11100","\u11101","\u11102",  # ; Extend # Mn   [3] CHAKMA SIGN CANDRABINDU..CHAKMA SIGN VISARGA
        "\u11127","\u11128","\u11129","\u1112a","\u1112b",  # ; Extend # Mn   [5] CHAKMA VOWEL SIGN A..CHAKMA VOWEL SIGN UU
        "\u1112d","\u1112e","\u1112f","\u11130","\u11131","\u11132","\u11133","\u11134",  # ; Extend # Mn   [8] CHAKMA VOWEL SIGN AI..CHAKMA MAAYYAA
        "\u11173",  # ; Extend # Mn       MAHAJANI SIGN NUKTA
        "\u11180","\u11181",  # ; Extend # Mn   [2] SHARADA SIGN CANDRABINDU..SHARADA SIGN ANUSVARA
        "\u111b6","\u111b7","\u111b8","\u111b9","\u111ba","\u111bb","\u111bc","\u111bd","\u111be",  # ; Extend # Mn   [9] SHARADA VOWEL SIGN U..SHARADA VOWEL SIGN O
        "\u111ca","\u111cb","\u111cc",  # ; Extend # Mn   [3] SHARADA SIGN NUKTA..SHARADA EXTRA SHORT VOWEL MARK
        "\u1122f","\u11230","\u11231",  # ; Extend # Mn   [3] KHOJKI VOWEL SIGN U..KHOJKI VOWEL SIGN AI
        "\u11234",  # ; Extend # Mn       KHOJKI SIGN ANUSVARA
        "\u11236","\u11237",  # ; Extend # Mn   [2] KHOJKI SIGN NUKTA..KHOJKI SIGN SHADDA
        "\u1123E",  # ; Extend # Mn       KHOJKI SIGN SUKUN
        "\u112DF",  # ; Extend # Mn       KHUDAWADI SIGN ANUSVARA
        "\u112e3","\u112e4","\u112e5","\u112e6","\u112e7","\u112e8","\u112e9","\u112ea",  # ; Extend # Mn   [8] KHUDAWADI VOWEL SIGN U..KHUDAWADI SIGN VIRAMA
        "\u11300","\u11301",  # ; Extend # Mn   [2] GRANTHA SIGN COMBINING ANUSVARA ABOVE..GRANTHA SIGN CANDRABINDU
        "\u1133C",  # ; Extend # Mn       GRANTHA SIGN NUKTA
        "\u1133E",  # ; Extend # Mc       GRANTHA VOWEL SIGN AA
        "\u11340",  # ; Extend # Mn       GRANTHA VOWEL SIGN II
        "\u11357",  # ; Extend # Mc       GRANTHA AU LENGTH MARK
        "\u11366","\u11367","\u11368","\u11369","\u1136a","\u1136b","\u1136c",  # ; Extend # Mn   [7] COMBINING GRANTHA DIGIT ZERO..COMBINING GRANTHA DIGIT SIX
        "\u11370","\u11371","\u11372","\u11373","\u11374",  # ; Extend # Mn   [5] COMBINING GRANTHA LETTER A..COMBINING GRANTHA LETTER PA
        "\u11438","\u11439","\u1143a","\u1143b","\u1143c","\u1143d","\u1143e","\u1143f",  # ; Extend # Mn   [8] NEWA VOWEL SIGN U..NEWA VOWEL SIGN AI
        "\u11442","\u11443","\u11444",  # ; Extend # Mn   [3] NEWA SIGN VIRAMA..NEWA SIGN ANUSVARA
        "\u11446",  # ; Extend # Mn       NEWA SIGN NUKTA
        "\u114B0",  # ; Extend # Mc       TIRHUTA VOWEL SIGN AA
        "\u114b3","\u114b4","\u114b5","\u114b6","\u114b7","\u114b8",  # ; Extend # Mn   [6] TIRHUTA VOWEL SIGN U..TIRHUTA VOWEL SIGN VOCALIC LL
        "\u114BA",  # ; Extend # Mn       TIRHUTA VOWEL SIGN SHORT E
        "\u114BD",  # ; Extend # Mc       TIRHUTA VOWEL SIGN SHORT O
        "\u114bf","\u114c0",  # ; Extend # Mn   [2] TIRHUTA SIGN CANDRABINDU..TIRHUTA SIGN ANUSVARA
        "\u114c2","\u114c3",  # ; Extend # Mn   [2] TIRHUTA SIGN VIRAMA..TIRHUTA SIGN NUKTA
        "\u115AF",  # ; Extend # Mc       SIDDHAM VOWEL SIGN AA
        "\u115b2","\u115b3","\u115b4","\u115b5",  # ; Extend # Mn   [4] SIDDHAM VOWEL SIGN U..SIDDHAM VOWEL SIGN VOCALIC RR
        "\u115bc","\u115bd",  # ; Extend # Mn   [2] SIDDHAM SIGN CANDRABINDU..SIDDHAM SIGN ANUSVARA
        "\u115bf","\u115c0",  # ; Extend # Mn   [2] SIDDHAM SIGN VIRAMA..SIDDHAM SIGN NUKTA
        "\u115dc","\u115dd",  # ; Extend # Mn   [2] SIDDHAM VOWEL SIGN ALTERNATE U..SIDDHAM VOWEL SIGN ALTERNATE UU
        "\u11633","\u11634","\u11635","\u11636","\u11637","\u11638","\u11639","\u1163a",  # ; Extend # Mn   [8] MODI VOWEL SIGN U..MODI VOWEL SIGN AI
        "\u1163D",  # ; Extend # Mn       MODI SIGN ANUSVARA
        "\u1163f","\u11640",  # ; Extend # Mn   [2] MODI SIGN VIRAMA..MODI SIGN ARDHACANDRA
        "\u116AB",  # ; Extend # Mn       TAKRI SIGN ANUSVARA
        "\u116AD",  # ; Extend # Mn       TAKRI VOWEL SIGN AA
        "\u116b0","\u116b1","\u116b2","\u116b3","\u116b4","\u116b5",  # ; Extend # Mn   [6] TAKRI VOWEL SIGN U..TAKRI VOWEL SIGN AU
        "\u116B7",  # ; Extend # Mn       TAKRI SIGN NUKTA
        "\u1171d","\u1171e","\u1171f",  # ; Extend # Mn   [3] AHOM CONSONANT SIGN MEDIAL LA..AHOM CONSONANT SIGN MEDIAL LIGATING RA
        "\u11722","\u11723","\u11724","\u11725",  # ; Extend # Mn   [4] AHOM VOWEL SIGN I..AHOM VOWEL SIGN UU
        "\u11727","\u11728","\u11729","\u1172a","\u1172b",  # ; Extend # Mn   [5] AHOM VOWEL SIGN AW..AHOM SIGN KILLER
        "\u11a01","\u11a02","\u11a03","\u11a04","\u11a05","\u11a06",  # ; Extend # Mn   [6] ZANABAZAR SQUARE VOWEL SIGN I..ZANABAZAR SQUARE VOWEL SIGN O
        "\u11a09","\u11a0a",  # ; Extend # Mn   [2] ZANABAZAR SQUARE VOWEL SIGN REVERSED I..ZANABAZAR SQUARE VOWEL LENGTH MARK
        "\u11a33","\u11a34","\u11a35","\u11a36","\u11a37","\u11a38",  # ; Extend # Mn   [6] ZANABAZAR SQUARE FINAL CONSONANT MARK..ZANABAZAR SQUARE SIGN ANUSVARA
        "\u11a3b","\u11a3c","\u11a3d","\u11a3e",  # ; Extend # Mn   [4] ZANABAZAR SQUARE CLUSTER-FINAL LETTER YA..ZANABAZAR SQUARE CLUSTER-FINAL LETTER VA
        "\u11A47",  # ; Extend # Mn       ZANABAZAR SQUARE SUBJOINER
        "\u11a51","\u11a52","\u11a53","\u11a54","\u11a55","\u11a56",  # ; Extend # Mn   [6] SOYOMBO VOWEL SIGN I..SOYOMBO VOWEL SIGN OE
        "\u11a59","\u11a5a","\u11a5b",  # ; Extend # Mn   [3] SOYOMBO VOWEL SIGN VOCALIC R..SOYOMBO VOWEL LENGTH MARK
        "\u11a8a","\u11a8b","\u11a8c","\u11a8d","\u11a8e","\u11a8f","\u11a90","\u11a91","\u11a92","\u11a93","\u11a94","\u11a95","\u11a96",  # ; Extend # Mn  [13] SOYOMBO FINAL CONSONANT SIGN G..SOYOMBO SIGN ANUSVARA
        "\u11a98","\u11a99",  # ; Extend # Mn   [2] SOYOMBO GEMINATION MARK..SOYOMBO SUBJOINER
        "\u11c30","\u11c31","\u11c32","\u11c33","\u11c34","\u11c35","\u11c36",  # ; Extend # Mn   [7] BHAIKSUKI VOWEL SIGN I..BHAIKSUKI VOWEL SIGN VOCALIC L
        "\u11c38","\u11c39","\u11c3a","\u11c3b","\u11c3c","\u11c3d",  # ; Extend # Mn   [6] BHAIKSUKI VOWEL SIGN E..BHAIKSUKI SIGN ANUSVARA
        "\u11C3F",  # ; Extend # Mn       BHAIKSUKI SIGN VIRAMA
        "\u11c92","\u11c93","\u11c94","\u11c95","\u11c96","\u11c97","\u11c98","\u11c99","\u11c9a","\u11c9b","\u11c9c","\u11c9d","\u11c9e","\u11c9f","\u11ca0","\u11ca1","\u11ca2","\u11ca3","\u11ca4","\u11ca5","\u11ca6","\u11ca7",  # ; Extend # Mn  [22] MARCHEN SUBJOINED LETTER KA..MARCHEN SUBJOINED LETTER ZA
        "\u11caa","\u11cab","\u11cac","\u11cad","\u11cae","\u11caf","\u11cb0",  # ; Extend # Mn   [7] MARCHEN SUBJOINED LETTER RA..MARCHEN VOWEL SIGN AA
        "\u11cb2","\u11cb3",  # ; Extend # Mn   [2] MARCHEN VOWEL SIGN U..MARCHEN VOWEL SIGN E
        "\u11cb5","\u11cb6",  # ; Extend # Mn   [2] MARCHEN SIGN ANUSVARA..MARCHEN SIGN CANDRABINDU
        "\u11d31","\u11d32","\u11d33","\u11d34","\u11d35","\u11d36",  # ; Extend # Mn   [6] MASARAM GONDI VOWEL SIGN AA..MASARAM GONDI VOWEL SIGN VOCALIC R
        "\u11D3A",  # ; Extend # Mn       MASARAM GONDI VOWEL SIGN E
        "\u11d3c","\u11d3d",  # ; Extend # Mn   [2] MASARAM GONDI VOWEL SIGN AI..MASARAM GONDI VOWEL SIGN O
        "\u11d3f","\u11d40","\u11d41","\u11d42","\u11d43","\u11d44","\u11d45",  # ; Extend # Mn   [7] MASARAM GONDI VOWEL SIGN AU..MASARAM GONDI VIRAMA
        "\u11D47",  # ; Extend # Mn       MASARAM GONDI RA-KARA
        "\u16af0","\u16af1","\u16af2","\u16af3","\u16af4",  # ; Extend # Mn   [5] BASSA VAH COMBINING HIGH TONE..BASSA VAH COMBINING HIGH-LOW TONE
        "\u16b30","\u16b31","\u16b32","\u16b33","\u16b34","\u16b35","\u16b36",  # ; Extend # Mn   [7] PAHAWH HMONG MARK CIM TUB..PAHAWH HMONG MARK CIM TAUM
        "\u16f8f","\u16f90","\u16f91","\u16f92",  # ; Extend # Mn   [4] MIAO TONE RIGHT..MIAO TONE BELOW
        "\u1bc9d","\u1bc9e",  # ; Extend # Mn   [2] DUPLOYAN THICK LETTER SELECTOR..DUPLOYAN DOUBLE MARK
        "\u1D165",  # ; Extend # Mc       MUSICAL SYMBOL COMBINING STEM
        "\u1d167","\u1d168","\u1d169",  # ; Extend # Mn   [3] MUSICAL SYMBOL COMBINING TREMOLO-1..MUSICAL SYMBOL COMBINING TREMOLO-3
        "\u1d16e","\u1d16f","\u1d170","\u1d171","\u1d172",  # ; Extend # Mc   [5] MUSICAL SYMBOL COMBINING FLAG-1..MUSICAL SYMBOL COMBINING FLAG-5
        "\u1d17b","\u1d17c","\u1d17d","\u1d17e","\u1d17f","\u1d180","\u1d181","\u1d182",  # ; Extend # Mn   [8] MUSICAL SYMBOL COMBINING ACCENT..MUSICAL SYMBOL COMBINING LOURE
        "\u1d185","\u1d186","\u1d187","\u1d188","\u1d189","\u1d18a","\u1d18b",  # ; Extend # Mn   [7] MUSICAL SYMBOL COMBINING DOIT..MUSICAL SYMBOL COMBINING TRIPLE TONGUE
        "\u1d1aa","\u1d1ab","\u1d1ac","\u1d1ad",  # ; Extend # Mn   [4] MUSICAL SYMBOL COMBINING DOWN BOW..MUSICAL SYMBOL COMBINING SNAP PIZZICATO
        "\u1d242","\u1d243","\u1d244",  # ; Extend # Mn   [3] COMBINING GREEK MUSICAL TRISEME..COMBINING GREEK MUSICAL PENTASEME
        "\u1da00","\u1da01","\u1da02","\u1da03","\u1da04","\u1da05","\u1da06","\u1da07","\u1da08","\u1da09","\u1da0a","\u1da0b","\u1da0c","\u1da0d","\u1da0e","\u1da0f","\u1da10","\u1da11","\u1da12","\u1da13","\u1da14","\u1da15","\u1da16","\u1da17","\u1da18","\u1da19","\u1da1a","\u1da1b","\u1da1c","\u1da1d","\u1da1e","\u1da1f","\u1da20","\u1da21","\u1da22","\u1da23","\u1da24","\u1da25","\u1da26","\u1da27","\u1da28","\u1da29","\u1da2a","\u1da2b","\u1da2c","\u1da2d","\u1da2e","\u1da2f","\u1da30","\u1da31","\u1da32","\u1da33","\u1da34","\u1da35","\u1da36",  # ; Extend # Mn  [55] SIGNWRITING HEAD RIM..SIGNWRITING AIR SUCKING IN
        "\u1da3b","\u1da3c","\u1da3d","\u1da3e","\u1da3f","\u1da40","\u1da41","\u1da42","\u1da43","\u1da44","\u1da45","\u1da46","\u1da47","\u1da48","\u1da49","\u1da4a","\u1da4b","\u1da4c","\u1da4d","\u1da4e","\u1da4f","\u1da50","\u1da51","\u1da52","\u1da53","\u1da54","\u1da55","\u1da56","\u1da57","\u1da58","\u1da59","\u1da5a","\u1da5b","\u1da5c","\u1da5d","\u1da5e","\u1da5f","\u1da60","\u1da61","\u1da62","\u1da63","\u1da64","\u1da65","\u1da66","\u1da67","\u1da68","\u1da69","\u1da6a","\u1da6b","\u1da6c",  # ; Extend # Mn  [50] SIGNWRITING MOUTH CLOSED NEUTRAL..SIGNWRITING EXCITEMENT
        "\u1DA75",  # ; Extend # Mn       SIGNWRITING UPPER BODY TILTING FROM HIP JOINTS
        "\u1DA84",  # ; Extend # Mn       SIGNWRITING LOCATION HEAD NECK
        "\u1da9b","\u1da9c","\u1da9d","\u1da9e","\u1da9f",  # ; Extend # Mn   [5] SIGNWRITING FILL MODIFIER-2..SIGNWRITING FILL MODIFIER-6
        "\u1daa1","\u1daa2","\u1daa3","\u1daa4","\u1daa5","\u1daa6","\u1daa7","\u1daa8","\u1daa9","\u1daaa","\u1daab","\u1daac","\u1daad","\u1daae","\u1daaf",  # ; Extend # Mn  [15] SIGNWRITING ROTATION MODIFIER-2..SIGNWRITING ROTATION MODIFIER-16
        "\u1e000","\u1e001","\u1e002","\u1e003","\u1e004","\u1e005","\u1e006",  # ; Extend # Mn   [7] COMBINING GLAGOLITIC LETTER AZU..COMBINING GLAGOLITIC LETTER ZHIVETE
        "\u1e008","\u1e009","\u1e00a","\u1e00b","\u1e00c","\u1e00d","\u1e00e","\u1e00f","\u1e010","\u1e011","\u1e012","\u1e013","\u1e014","\u1e015","\u1e016","\u1e017","\u1e018",  # ; Extend # Mn  [17] COMBINING GLAGOLITIC LETTER ZEMLJA..COMBINING GLAGOLITIC LETTER HERU
        "\u1e01b","\u1e01c","\u1e01d","\u1e01e","\u1e01f","\u1e020","\u1e021",  # ; Extend # Mn   [7] COMBINING GLAGOLITIC LETTER SHTA..COMBINING GLAGOLITIC LETTER YATI
        "\u1e023","\u1e024",  # ; Extend # Mn   [2] COMBINING GLAGOLITIC LETTER YU..COMBINING GLAGOLITIC LETTER SMALL YUS
        "\u1e026","\u1e027","\u1e028","\u1e029","\u1e02a",  # ; Extend # Mn   [5] COMBINING GLAGOLITIC LETTER YO..COMBINING GLAGOLITIC LETTER FITA
        "\u1e8d0","\u1e8d1","\u1e8d2","\u1e8d3","\u1e8d4","\u1e8d5","\u1e8d6",  # ; Extend # Mn   [7] MENDE KIKAKUI COMBINING NUMBER TEENS..MENDE KIKAKUI COMBINING NUMBER MILLIONS
        "\u1e944","\u1e945","\u1e946","\u1e947","\u1e948","\u1e949","\u1e94a",  # ; Extend # Mn   [7] ADLAM ALIF LENGTHENER..ADLAM NUKTA
        "\ue0020","\ue0021","\ue0022","\ue0023","\ue0024","\ue0025","\ue0026","\ue0027","\ue0028","\ue0029","\ue002a","\ue002b","\ue002c","\ue002d","\ue002e","\ue002f","\ue0030","\ue0031","\ue0032","\ue0033","\ue0034","\ue0035","\ue0036","\ue0037","\ue0038","\ue0039","\ue003a","\ue003b","\ue003c","\ue003d","\ue003e","\ue003f","\ue0040","\ue0041","\ue0042","\ue0043","\ue0044","\ue0045","\ue0046","\ue0047","\ue0048","\ue0049","\ue004a","\ue004b","\ue004c","\ue004d","\ue004e","\ue004f","\ue0050","\ue0051","\ue0052","\ue0053","\ue0054","\ue0055","\ue0056","\ue0057","\ue0058","\ue0059","\ue005a","\ue005b","\ue005c","\ue005d","\ue005e","\ue005f","\ue0060","\ue0061","\ue0062","\ue0063","\ue0064","\ue0065","\ue0066","\ue0067","\ue0068","\ue0069","\ue006a","\ue006b","\ue006c","\ue006d","\ue006e","\ue006f","\ue0070","\ue0071","\ue0072","\ue0073","\ue0074","\ue0075","\ue0076","\ue0077","\ue0078","\ue0079","\ue007a","\ue007b","\ue007c","\ue007d","\ue007e","\ue007f",  # ; Extend # Cf  [96] TAG SPACE..CANCEL TAG
        "\ue0100","\ue0101","\ue0102","\ue0103","\ue0104","\ue0105","\ue0106","\ue0107","\ue0108","\ue0109","\ue010a","\ue010b","\ue010c","\ue010d","\ue010e","\ue010f","\ue0110","\ue0111","\ue0112","\ue0113","\ue0114","\ue0115","\ue0116","\ue0117","\ue0118","\ue0119","\ue011a","\ue011b","\ue011c","\ue011d","\ue011e","\ue011f","\ue0120","\ue0121","\ue0122","\ue0123","\ue0124","\ue0125","\ue0126","\ue0127","\ue0128","\ue0129","\ue012a","\ue012b","\ue012c","\ue012d","\ue012e","\ue012f","\ue0130","\ue0131","\ue0132","\ue0133","\ue0134","\ue0135","\ue0136","\ue0137","\ue0138","\ue0139","\ue013a","\ue013b","\ue013c","\ue013d","\ue013e","\ue013f","\ue0140","\ue0141","\ue0142","\ue0143","\ue0144","\ue0145","\ue0146","\ue0147","\ue0148","\ue0149","\ue014a","\ue014b","\ue014c","\ue014d","\ue014e","\ue014f","\ue0150","\ue0151","\ue0152","\ue0153","\ue0154","\ue0155","\ue0156","\ue0157","\ue0158","\ue0159","\ue015a","\ue015b","\ue015c","\ue015d","\ue015e","\ue015f","\ue0160","\ue0161","\ue0162","\ue0163","\ue0164","\ue0165","\ue0166","\ue0167","\ue0168","\ue0169","\ue016a","\ue016b","\ue016c","\ue016d","\ue016e","\ue016f","\ue0170","\ue0171","\ue0172","\ue0173","\ue0174","\ue0175","\ue0176","\ue0177","\ue0178","\ue0179","\ue017a","\ue017b","\ue017c","\ue017d","\ue017e","\ue017f","\ue0180","\ue0181","\ue0182","\ue0183","\ue0184","\ue0185","\ue0186","\ue0187","\ue0188","\ue0189","\ue018a","\ue018b","\ue018c","\ue018d","\ue018e","\ue018f","\ue0190","\ue0191","\ue0192","\ue0193","\ue0194","\ue0195","\ue0196","\ue0197","\ue0198","\ue0199","\ue019a","\ue019b","\ue019c","\ue019d","\ue019e","\ue019f","\ue01a0","\ue01a1","\ue01a2","\ue01a3","\ue01a4","\ue01a5","\ue01a6","\ue01a7","\ue01a8","\ue01a9","\ue01aa","\ue01ab","\ue01ac","\ue01ad","\ue01ae","\ue01af","\ue01b0","\ue01b1","\ue01b2","\ue01b3","\ue01b4","\ue01b5","\ue01b6","\ue01b7","\ue01b8","\ue01b9","\ue01ba","\ue01bb","\ue01bc","\ue01bd","\ue01be","\ue01bf","\ue01c0","\ue01c1","\ue01c2","\ue01c3","\ue01c4","\ue01c5","\ue01c6","\ue01c7","\ue01c8","\ue01c9","\ue01ca","\ue01cb","\ue01cc","\ue01cd","\ue01ce","\ue01cf","\ue01d0","\ue01d1","\ue01d2","\ue01d3","\ue01d4","\ue01d5","\ue01d6","\ue01d7","\ue01d8","\ue01d9","\ue01da","\ue01db","\ue01dc","\ue01dd","\ue01de","\ue01df","\ue01e0","\ue01e1","\ue01e2","\ue01e3","\ue01e4","\ue01e5","\ue01e6","\ue01e7","\ue01e8","\ue01e9","\ue01ea","\ue01eb","\ue01ec","\ue01ed","\ue01ee","\ue01ef",  # ; Extend # Mn [240] VARIATION SELECTOR-17..VARIATION SELECTOR-256
        "\u1f1e6","\u1f1e7","\u1f1e8","\u1f1e9","\u1f1ea","\u1f1eb","\u1f1ec","\u1f1ed","\u1f1ee","\u1f1ef","\u1f1f0","\u1f1f1","\u1f1f2","\u1f1f3","\u1f1f4","\u1f1f5","\u1f1f6","\u1f1f7","\u1f1f8","\u1f1f9","\u1f1fa","\u1f1fb","\u1f1fc","\u1f1fd","\u1f1fe","\u1f1ff",  # ; Regional_Indicator # So  [26] REGIONAL INDICATOR SYMBOL LETTER A..REGIONAL INDICATOR SYMBOL LETTER Z
        "\u0903",  # ; SpacingMark # Mc       DEVANAGARI SIGN VISARGA
        "\u093B",  # ; SpacingMark # Mc       DEVANAGARI VOWEL SIGN OOE
        "\u093e","\u093f","\u0940",  # ; SpacingMark # Mc   [3] DEVANAGARI VOWEL SIGN AA..DEVANAGARI VOWEL SIGN II
        "\u0949","\u094a","\u094b","\u094c",  # ; SpacingMark # Mc   [4] DEVANAGARI VOWEL SIGN CANDRA O..DEVANAGARI VOWEL SIGN AU
        "\u094e","\u094f",  # ; SpacingMark # Mc   [2] DEVANAGARI VOWEL SIGN PRISHTHAMATRA E..DEVANAGARI VOWEL SIGN AW
        "\u0982","\u0983",  # ; SpacingMark # Mc   [2] BENGALI SIGN ANUSVARA..BENGALI SIGN VISARGA
        "\u09bf","\u09c0",  # ; SpacingMark # Mc   [2] BENGALI VOWEL SIGN I..BENGALI VOWEL SIGN II
        "\u09c7","\u09c8",  # ; SpacingMark # Mc   [2] BENGALI VOWEL SIGN E..BENGALI VOWEL SIGN AI
        "\u09cb","\u09cc",  # ; SpacingMark # Mc   [2] BENGALI VOWEL SIGN O..BENGALI VOWEL SIGN AU
        "\u0A03",  # ; SpacingMark # Mc       GURMUKHI SIGN VISARGA
        "\u0a3e","\u0a3f","\u0a40",  # ; SpacingMark # Mc   [3] GURMUKHI VOWEL SIGN AA..GURMUKHI VOWEL SIGN II
        "\u0A83",  # ; SpacingMark # Mc       GUJARATI SIGN VISARGA
        "\u0abe","\u0abf","\u0ac0",  # ; SpacingMark # Mc   [3] GUJARATI VOWEL SIGN AA..GUJARATI VOWEL SIGN II
        "\u0AC9",  # ; SpacingMark # Mc       GUJARATI VOWEL SIGN CANDRA O
        "\u0acb","\u0acc",  # ; SpacingMark # Mc   [2] GUJARATI VOWEL SIGN O..GUJARATI VOWEL SIGN AU
        "\u0b02","\u0b03",  # ; SpacingMark # Mc   [2] ORIYA SIGN ANUSVARA..ORIYA SIGN VISARGA
        "\u0B40",  # ; SpacingMark # Mc       ORIYA VOWEL SIGN II
        "\u0b47","\u0b48",  # ; SpacingMark # Mc   [2] ORIYA VOWEL SIGN E..ORIYA VOWEL SIGN AI
        "\u0b4b","\u0b4c",  # ; SpacingMark # Mc   [2] ORIYA VOWEL SIGN O..ORIYA VOWEL SIGN AU
        "\u0BBF",  # ; SpacingMark # Mc       TAMIL VOWEL SIGN I
        "\u0bc1","\u0bc2",  # ; SpacingMark # Mc   [2] TAMIL VOWEL SIGN U..TAMIL VOWEL SIGN UU
        "\u0bc6","\u0bc7","\u0bc8",  # ; SpacingMark # Mc   [3] TAMIL VOWEL SIGN E..TAMIL VOWEL SIGN AI
        "\u0bca","\u0bcb","\u0bcc",  # ; SpacingMark # Mc   [3] TAMIL VOWEL SIGN O..TAMIL VOWEL SIGN AU
        "\u0c01","\u0c02","\u0c03",  # ; SpacingMark # Mc   [3] TELUGU SIGN CANDRABINDU..TELUGU SIGN VISARGA
        "\u0c41","\u0c42","\u0c43","\u0c44",  # ; SpacingMark # Mc   [4] TELUGU VOWEL SIGN U..TELUGU VOWEL SIGN VOCALIC RR
        "\u0c82","\u0c83",  # ; SpacingMark # Mc   [2] KANNADA SIGN ANUSVARA..KANNADA SIGN VISARGA
        "\u0CBE",  # ; SpacingMark # Mc       KANNADA VOWEL SIGN AA
        "\u0cc0","\u0cc1",  # ; SpacingMark # Mc   [2] KANNADA VOWEL SIGN II..KANNADA VOWEL SIGN U
        "\u0cc3","\u0cc4",  # ; SpacingMark # Mc   [2] KANNADA VOWEL SIGN VOCALIC R..KANNADA VOWEL SIGN VOCALIC RR
        "\u0cc7","\u0cc8",  # ; SpacingMark # Mc   [2] KANNADA VOWEL SIGN EE..KANNADA VOWEL SIGN AI
        "\u0cca","\u0ccb",  # ; SpacingMark # Mc   [2] KANNADA VOWEL SIGN O..KANNADA VOWEL SIGN OO
        "\u0d02","\u0d03",  # ; SpacingMark # Mc   [2] MALAYALAM SIGN ANUSVARA..MALAYALAM SIGN VISARGA
        "\u0d3f","\u0d40",  # ; SpacingMark # Mc   [2] MALAYALAM VOWEL SIGN I..MALAYALAM VOWEL SIGN II
        "\u0d46","\u0d47","\u0d48",  # ; SpacingMark # Mc   [3] MALAYALAM VOWEL SIGN E..MALAYALAM VOWEL SIGN AI
        "\u0d4a","\u0d4b","\u0d4c",  # ; SpacingMark # Mc   [3] MALAYALAM VOWEL SIGN O..MALAYALAM VOWEL SIGN AU
        "\u0d82","\u0d83",  # ; SpacingMark # Mc   [2] SINHALA SIGN ANUSVARAYA..SINHALA SIGN VISARGAYA
        "\u0dd0","\u0dd1",  # ; SpacingMark # Mc   [2] SINHALA VOWEL SIGN KETTI AEDA-PILLA..SINHALA VOWEL SIGN DIGA AEDA-PILLA
        "\u0dd8","\u0dd9","\u0dda","\u0ddb","\u0ddc","\u0ddd","\u0dde",  # ; SpacingMark # Mc   [7] SINHALA VOWEL SIGN GAETTA-PILLA..SINHALA VOWEL SIGN KOMBUVA HAA GAYANUKITTA
        "\u0df2","\u0df3",  # ; SpacingMark # Mc   [2] SINHALA VOWEL SIGN DIGA GAETTA-PILLA..SINHALA VOWEL SIGN DIGA GAYANUKITTA
        "\u0E33",  # ; SpacingMark # Lo       THAI CHARACTER SARA AM
        "\u0EB3",  # ; SpacingMark # Lo       LAO VOWEL SIGN AM
        "\u0f3e","\u0f3f",  # ; SpacingMark # Mc   [2] TIBETAN SIGN YAR TSHES..TIBETAN SIGN MAR TSHES
        "\u0F7F",  # ; SpacingMark # Mc       TIBETAN SIGN RNAM BCAD
        "\u1031",  # ; SpacingMark # Mc       MYANMAR VOWEL SIGN E
        "\u103b","\u103c",  # ; SpacingMark # Mc   [2] MYANMAR CONSONANT SIGN MEDIAL YA..MYANMAR CONSONANT SIGN MEDIAL RA
        "\u1056","\u1057",  # ; SpacingMark # Mc   [2] MYANMAR VOWEL SIGN VOCALIC R..MYANMAR VOWEL SIGN VOCALIC RR
        "\u1084",  # ; SpacingMark # Mc       MYANMAR VOWEL SIGN SHAN E
        "\u17B6",  # ; SpacingMark # Mc       KHMER VOWEL SIGN AA
        "\u17be","\u17bf","\u17c0","\u17c1","\u17c2","\u17c3","\u17c4","\u17c5",  # ; SpacingMark # Mc   [8] KHMER VOWEL SIGN OE..KHMER VOWEL SIGN AU
        "\u17c7","\u17c8",  # ; SpacingMark # Mc   [2] KHMER SIGN REAHMUK..KHMER SIGN YUUKALEAPINTU
        "\u1923","\u1924","\u1925","\u1926",  # ; SpacingMark # Mc   [4] LIMBU VOWEL SIGN EE..LIMBU VOWEL SIGN AU
        "\u1929","\u192a","\u192b",  # ; SpacingMark # Mc   [3] LIMBU SUBJOINED LETTER YA..LIMBU SUBJOINED LETTER WA
        "\u1930","\u1931",  # ; SpacingMark # Mc   [2] LIMBU SMALL LETTER KA..LIMBU SMALL LETTER NGA
        "\u1933","\u1934","\u1935","\u1936","\u1937","\u1938",  # ; SpacingMark # Mc   [6] LIMBU SMALL LETTER TA..LIMBU SMALL LETTER LA
        "\u1a19","\u1a1a",  # ; SpacingMark # Mc   [2] BUGINESE VOWEL SIGN E..BUGINESE VOWEL SIGN O
        "\u1A55",  # ; SpacingMark # Mc       TAI THAM CONSONANT SIGN MEDIAL RA
        "\u1A57",  # ; SpacingMark # Mc       TAI THAM CONSONANT SIGN LA TANG LAI
        "\u1a6d","\u1a6e","\u1a6f","\u1a70","\u1a71","\u1a72",  # ; SpacingMark # Mc   [6] TAI THAM VOWEL SIGN OY..TAI THAM VOWEL SIGN THAM AI
        "\u1B04",  # ; SpacingMark # Mc       BALINESE SIGN BISAH
        "\u1B35",  # ; SpacingMark # Mc       BALINESE VOWEL SIGN TEDUNG
        "\u1B3B",  # ; SpacingMark # Mc       BALINESE VOWEL SIGN RA REPA TEDUNG
        "\u1b3d","\u1b3e","\u1b3f","\u1b40","\u1b41",  # ; SpacingMark # Mc   [5] BALINESE VOWEL SIGN LA LENGA TEDUNG..BALINESE VOWEL SIGN TALING REPA TEDUNG
        "\u1b43","\u1b44",  # ; SpacingMark # Mc   [2] BALINESE VOWEL SIGN PEPET TEDUNG..BALINESE ADEG ADEG
        "\u1B82",  # ; SpacingMark # Mc       SUNDANESE SIGN PANGWISAD
        "\u1BA1",  # ; SpacingMark # Mc       SUNDANESE CONSONANT SIGN PAMINGKAL
        "\u1ba6","\u1ba7",  # ; SpacingMark # Mc   [2] SUNDANESE VOWEL SIGN PANAELAENG..SUNDANESE VOWEL SIGN PANOLONG
        "\u1BAA",  # ; SpacingMark # Mc       SUNDANESE SIGN PAMAAEH
        "\u1BE7",  # ; SpacingMark # Mc       BATAK VOWEL SIGN E
        "\u1bea","\u1beb","\u1bec",  # ; SpacingMark # Mc   [3] BATAK VOWEL SIGN I..BATAK VOWEL SIGN O
        "\u1BEE",  # ; SpacingMark # Mc       BATAK VOWEL SIGN U
        "\u1bf2","\u1bf3",  # ; SpacingMark # Mc   [2] BATAK PANGOLAT..BATAK PANONGONAN
        "\u1c24","\u1c25","\u1c26","\u1c27","\u1c28","\u1c29","\u1c2a","\u1c2b",  # ; SpacingMark # Mc   [8] LEPCHA SUBJOINED LETTER YA..LEPCHA VOWEL SIGN UU
        "\u1c34","\u1c35",  # ; SpacingMark # Mc   [2] LEPCHA CONSONANT SIGN NYIN-DO..LEPCHA CONSONANT SIGN KANG
        "\u1CE1",  # ; SpacingMark # Mc       VEDIC TONE ATHARVAVEDIC INDEPENDENT SVARITA
        "\u1cf2","\u1cf3",  # ; SpacingMark # Mc   [2] VEDIC SIGN ARDHAVISARGA..VEDIC SIGN ROTATED ARDHAVISARGA
        "\u1CF7",  # ; SpacingMark # Mc       VEDIC SIGN ATIKRAMA
        "\ua823","\ua824",  # ; SpacingMark # Mc   [2] SYLOTI NAGRI VOWEL SIGN A..SYLOTI NAGRI VOWEL SIGN I
        "\uA827",  # ; SpacingMark # Mc       SYLOTI NAGRI VOWEL SIGN OO
        "\ua880","\ua881",  # ; SpacingMark # Mc   [2] SAURASHTRA SIGN ANUSVARA..SAURASHTRA SIGN VISARGA
        "\ua8b4","\ua8b5","\ua8b6","\ua8b7","\ua8b8","\ua8b9","\ua8ba","\ua8bb","\ua8bc","\ua8bd","\ua8be","\ua8bf","\ua8c0","\ua8c1","\ua8c2","\ua8c3",  # ; SpacingMark # Mc  [16] SAURASHTRA CONSONANT SIGN HAARU..SAURASHTRA VOWEL SIGN AU
        "\ua952","\ua953",  # ; SpacingMark # Mc   [2] REJANG CONSONANT SIGN H..REJANG VIRAMA
        "\uA983",  # ; SpacingMark # Mc       JAVANESE SIGN WIGNYAN
        "\ua9b4","\ua9b5",  # ; SpacingMark # Mc   [2] JAVANESE VOWEL SIGN TARUNG..JAVANESE VOWEL SIGN TOLONG
        "\ua9ba","\ua9bb",  # ; SpacingMark # Mc   [2] JAVANESE VOWEL SIGN TALING..JAVANESE VOWEL SIGN DIRGA MURE
        "\ua9bd","\ua9be","\ua9bf","\ua9c0",  # ; SpacingMark # Mc   [4] JAVANESE CONSONANT SIGN KERET..JAVANESE PANGKON
        "\uaa2f","\uaa30",  # ; SpacingMark # Mc   [2] CHAM VOWEL SIGN O..CHAM VOWEL SIGN AI
        "\uaa33","\uaa34",  # ; SpacingMark # Mc   [2] CHAM CONSONANT SIGN YA..CHAM CONSONANT SIGN RA
        "\uAA4D",  # ; SpacingMark # Mc       CHAM CONSONANT SIGN FINAL H
        "\uAAEB",  # ; SpacingMark # Mc       MEETEI MAYEK VOWEL SIGN II
        "\uaaee","\uaaef",  # ; SpacingMark # Mc   [2] MEETEI MAYEK VOWEL SIGN AU..MEETEI MAYEK VOWEL SIGN AAU
        "\uAAF5",  # ; SpacingMark # Mc       MEETEI MAYEK VOWEL SIGN VISARGA
        "\uabe3","\uabe4",  # ; SpacingMark # Mc   [2] MEETEI MAYEK VOWEL SIGN ONAP..MEETEI MAYEK VOWEL SIGN INAP
        "\uabe6","\uabe7",  # ; SpacingMark # Mc   [2] MEETEI MAYEK VOWEL SIGN YENAP..MEETEI MAYEK VOWEL SIGN SOUNAP
        "\uabe9","\uabea",  # ; SpacingMark # Mc   [2] MEETEI MAYEK VOWEL SIGN CHEINAP..MEETEI MAYEK VOWEL SIGN NUNG
        "\uABEC",  # ; SpacingMark # Mc       MEETEI MAYEK LUM IYEK
        "\u11000",  # ; SpacingMark # Mc       BRAHMI SIGN CANDRABINDU
        "\u11002",  # ; SpacingMark # Mc       BRAHMI SIGN VISARGA
        "\u11082",  # ; SpacingMark # Mc       KAITHI SIGN VISARGA
        "\u110b0","\u110b1","\u110b2",  # ; SpacingMark # Mc   [3] KAITHI VOWEL SIGN AA..KAITHI VOWEL SIGN II
        "\u110b7","\u110b8",  # ; SpacingMark # Mc   [2] KAITHI VOWEL SIGN O..KAITHI VOWEL SIGN AU
        "\u1112C",  # ; SpacingMark # Mc       CHAKMA VOWEL SIGN E
        "\u11182",  # ; SpacingMark # Mc       SHARADA SIGN VISARGA
        "\u111b3","\u111b4","\u111b5",  # ; SpacingMark # Mc   [3] SHARADA VOWEL SIGN AA..SHARADA VOWEL SIGN II
        "\u111bf","\u111c0",  # ; SpacingMark # Mc   [2] SHARADA VOWEL SIGN AU..SHARADA SIGN VIRAMA
        "\u1122c","\u1122d","\u1122e",  # ; SpacingMark # Mc   [3] KHOJKI VOWEL SIGN AA..KHOJKI VOWEL SIGN II
        "\u11232","\u11233",  # ; SpacingMark # Mc   [2] KHOJKI VOWEL SIGN O..KHOJKI VOWEL SIGN AU
        "\u11235",  # ; SpacingMark # Mc       KHOJKI SIGN VIRAMA
        "\u112e0","\u112e1","\u112e2",  # ; SpacingMark # Mc   [3] KHUDAWADI VOWEL SIGN AA..KHUDAWADI VOWEL SIGN II
        "\u11302","\u11303",  # ; SpacingMark # Mc   [2] GRANTHA SIGN ANUSVARA..GRANTHA SIGN VISARGA
        "\u1133F",  # ; SpacingMark # Mc       GRANTHA VOWEL SIGN I
        "\u11341","\u11342","\u11343","\u11344",  # ; SpacingMark # Mc   [4] GRANTHA VOWEL SIGN U..GRANTHA VOWEL SIGN VOCALIC RR
        "\u11347","\u11348",  # ; SpacingMark # Mc   [2] GRANTHA VOWEL SIGN EE..GRANTHA VOWEL SIGN AI
        "\u1134b","\u1134c","\u1134d",  # ; SpacingMark # Mc   [3] GRANTHA VOWEL SIGN OO..GRANTHA SIGN VIRAMA
        "\u11362","\u11363",  # ; SpacingMark # Mc   [2] GRANTHA VOWEL SIGN VOCALIC L..GRANTHA VOWEL SIGN VOCALIC LL
        "\u11435","\u11436","\u11437",  # ; SpacingMark # Mc   [3] NEWA VOWEL SIGN AA..NEWA VOWEL SIGN II
        "\u11440","\u11441",  # ; SpacingMark # Mc   [2] NEWA VOWEL SIGN O..NEWA VOWEL SIGN AU
        "\u11445",  # ; SpacingMark # Mc       NEWA SIGN VISARGA
        "\u114b1","\u114b2",  # ; SpacingMark # Mc   [2] TIRHUTA VOWEL SIGN I..TIRHUTA VOWEL SIGN II
        "\u114B9",  # ; SpacingMark # Mc       TIRHUTA VOWEL SIGN E
        "\u114bb","\u114bc",  # ; SpacingMark # Mc   [2] TIRHUTA VOWEL SIGN AI..TIRHUTA VOWEL SIGN O
        "\u114BE",  # ; SpacingMark # Mc       TIRHUTA VOWEL SIGN AU
        "\u114C1",  # ; SpacingMark # Mc       TIRHUTA SIGN VISARGA
        "\u115b0","\u115b1",  # ; SpacingMark # Mc   [2] SIDDHAM VOWEL SIGN I..SIDDHAM VOWEL SIGN II
        "\u115b8","\u115b9","\u115ba","\u115bb",  # ; SpacingMark # Mc   [4] SIDDHAM VOWEL SIGN E..SIDDHAM VOWEL SIGN AU
        "\u115BE",  # ; SpacingMark # Mc       SIDDHAM SIGN VISARGA
        "\u11630","\u11631","\u11632",  # ; SpacingMark # Mc   [3] MODI VOWEL SIGN AA..MODI VOWEL SIGN II
        "\u1163b","\u1163c",  # ; SpacingMark # Mc   [2] MODI VOWEL SIGN O..MODI VOWEL SIGN AU
        "\u1163E",  # ; SpacingMark # Mc       MODI SIGN VISARGA
        "\u116AC",  # ; SpacingMark # Mc       TAKRI SIGN VISARGA
        "\u116ae","\u116af",  # ; SpacingMark # Mc   [2] TAKRI VOWEL SIGN I..TAKRI VOWEL SIGN II
        "\u116B6",  # ; SpacingMark # Mc       TAKRI SIGN VIRAMA
        "\u11720","\u11721",  # ; SpacingMark # Mc   [2] AHOM VOWEL SIGN A..AHOM VOWEL SIGN AA
        "\u11726",  # ; SpacingMark # Mc       AHOM VOWEL SIGN E
        "\u11a07","\u11a08",  # ; SpacingMark # Mc   [2] ZANABAZAR SQUARE VOWEL SIGN AI..ZANABAZAR SQUARE VOWEL SIGN AU
        "\u11A39",  # ; SpacingMark # Mc       ZANABAZAR SQUARE SIGN VISARGA
        "\u11a57","\u11a58",  # ; SpacingMark # Mc   [2] SOYOMBO VOWEL SIGN AI..SOYOMBO VOWEL SIGN AU
        "\u11A97",  # ; SpacingMark # Mc       SOYOMBO SIGN VISARGA
        "\u11C2F",  # ; SpacingMark # Mc       BHAIKSUKI VOWEL SIGN AA
        "\u11C3E",  # ; SpacingMark # Mc       BHAIKSUKI SIGN VISARGA
        "\u11CA9",  # ; SpacingMark # Mc       MARCHEN SUBJOINED LETTER YA
        "\u11CB1",  # ; SpacingMark # Mc       MARCHEN VOWEL SIGN I
        "\u11CB4",  # ; SpacingMark # Mc       MARCHEN VOWEL SIGN O
        "\u16f51","\u16f52","\u16f53","\u16f54","\u16f55","\u16f56","\u16f57","\u16f58","\u16f59","\u16f5a","\u16f5b","\u16f5c","\u16f5d","\u16f5e","\u16f5f","\u16f60","\u16f61","\u16f62","\u16f63","\u16f64","\u16f65","\u16f66","\u16f67","\u16f68","\u16f69","\u16f6a","\u16f6b","\u16f6c","\u16f6d","\u16f6e","\u16f6f","\u16f70","\u16f71","\u16f72","\u16f73","\u16f74","\u16f75","\u16f76","\u16f77","\u16f78","\u16f79","\u16f7a","\u16f7b","\u16f7c","\u16f7d","\u16f7e",  # ; SpacingMark # Mc  [46] MIAO SIGN ASPIRATION..MIAO VOWEL SIGN NG
        "\u1D166",  # ; SpacingMark # Mc       MUSICAL SYMBOL COMBINING SPRECHGESANG STEM
        "\u1D16D",  # ; SpacingMark # Mc       MUSICAL SYMBOL COMBINING AUGMENTATION DOT
        "\u1100","\u1101","\u1102","\u1103","\u1104","\u1105","\u1106","\u1107","\u1108","\u1109","\u110a","\u110b","\u110c","\u110d","\u110e","\u110f","\u1110","\u1111","\u1112","\u1113","\u1114","\u1115","\u1116","\u1117","\u1118","\u1119","\u111a","\u111b","\u111c","\u111d","\u111e","\u111f","\u1120","\u1121","\u1122","\u1123","\u1124","\u1125","\u1126","\u1127","\u1128","\u1129","\u112a","\u112b","\u112c","\u112d","\u112e","\u112f","\u1130","\u1131","\u1132","\u1133","\u1134","\u1135","\u1136","\u1137","\u1138","\u1139","\u113a","\u113b","\u113c","\u113d","\u113e","\u113f","\u1140","\u1141","\u1142","\u1143","\u1144","\u1145","\u1146","\u1147","\u1148","\u1149","\u114a","\u114b","\u114c","\u114d","\u114e","\u114f","\u1150","\u1151","\u1152","\u1153","\u1154","\u1155","\u1156","\u1157","\u1158","\u1159","\u115a","\u115b","\u115c","\u115d","\u115e","\u115f",  # ; L # Lo  [96] HANGUL CHOSEONG KIYEOK..HANGUL CHOSEONG FILLER
        "\ua960","\ua961","\ua962","\ua963","\ua964","\ua965","\ua966","\ua967","\ua968","\ua969","\ua96a","\ua96b","\ua96c","\ua96d","\ua96e","\ua96f","\ua970","\ua971","\ua972","\ua973","\ua974","\ua975","\ua976","\ua977","\ua978","\ua979","\ua97a","\ua97b","\ua97c",  # ; L # Lo  [29] HANGUL CHOSEONG TIKEUT-MIEUM..HANGUL CHOSEONG SSANGYEORINHIEUH
        "\u1160","\u1161","\u1162","\u1163","\u1164","\u1165","\u1166","\u1167","\u1168","\u1169","\u116a","\u116b","\u116c","\u116d","\u116e","\u116f","\u1170","\u1171","\u1172","\u1173","\u1174","\u1175","\u1176","\u1177","\u1178","\u1179","\u117a","\u117b","\u117c","\u117d","\u117e","\u117f","\u1180","\u1181","\u1182","\u1183","\u1184","\u1185","\u1186","\u1187","\u1188","\u1189","\u118a","\u118b","\u118c","\u118d","\u118e","\u118f","\u1190","\u1191","\u1192","\u1193","\u1194","\u1195","\u1196","\u1197","\u1198","\u1199","\u119a","\u119b","\u119c","\u119d","\u119e","\u119f","\u11a0","\u11a1","\u11a2","\u11a3","\u11a4","\u11a5","\u11a6","\u11a7",  # ; V # Lo  [72] HANGUL JUNGSEONG FILLER..HANGUL JUNGSEONG O-YAE
        "\ud7b0","\ud7b1","\ud7b2","\ud7b3","\ud7b4","\ud7b5","\ud7b6","\ud7b7","\ud7b8","\ud7b9","\ud7ba","\ud7bb","\ud7bc","\ud7bd","\ud7be","\ud7bf","\ud7c0","\ud7c1","\ud7c2","\ud7c3","\ud7c4","\ud7c5","\ud7c6",  # ; V # Lo  [23] HANGUL JUNGSEONG O-YEO..HANGUL JUNGSEONG ARAEA-E
        "\u11a8","\u11a9","\u11aa","\u11ab","\u11ac","\u11ad","\u11ae","\u11af","\u11b0","\u11b1","\u11b2","\u11b3","\u11b4","\u11b5","\u11b6","\u11b7","\u11b8","\u11b9","\u11ba","\u11bb","\u11bc","\u11bd","\u11be","\u11bf","\u11c0","\u11c1","\u11c2","\u11c3","\u11c4","\u11c5","\u11c6","\u11c7","\u11c8","\u11c9","\u11ca","\u11cb","\u11cc","\u11cd","\u11ce","\u11cf","\u11d0","\u11d1","\u11d2","\u11d3","\u11d4","\u11d5","\u11d6","\u11d7","\u11d8","\u11d9","\u11da","\u11db","\u11dc","\u11dd","\u11de","\u11df","\u11e0","\u11e1","\u11e2","\u11e3","\u11e4","\u11e5","\u11e6","\u11e7","\u11e8","\u11e9","\u11ea","\u11eb","\u11ec","\u11ed","\u11ee","\u11ef","\u11f0","\u11f1","\u11f2","\u11f3","\u11f4","\u11f5","\u11f6","\u11f7","\u11f8","\u11f9","\u11fa","\u11fb","\u11fc","\u11fd","\u11fe","\u11ff",  # ; T # Lo  [88] HANGUL JONGSEONG KIYEOK..HANGUL JONGSEONG SSANGNIEUN
        "\ud7cb","\ud7cc","\ud7cd","\ud7ce","\ud7cf","\ud7d0","\ud7d1","\ud7d2","\ud7d3","\ud7d4","\ud7d5","\ud7d6","\ud7d7","\ud7d8","\ud7d9","\ud7da","\ud7db","\ud7dc","\ud7dd","\ud7de","\ud7df","\ud7e0","\ud7e1","\ud7e2","\ud7e3","\ud7e4","\ud7e5","\ud7e6","\ud7e7","\ud7e8","\ud7e9","\ud7ea","\ud7eb","\ud7ec","\ud7ed","\ud7ee","\ud7ef","\ud7f0","\ud7f1","\ud7f2","\ud7f3","\ud7f4","\ud7f5","\ud7f6","\ud7f7","\ud7f8","\ud7f9","\ud7fa","\ud7fb",  # ; T # Lo  [49] HANGUL JONGSEONG NIEUN-RIEUL..HANGUL JONGSEONG PHIEUPH-THIEUTH
        "\uAC00",  # ; LV # Lo       HANGUL SYLLABLE GA
        "\uAC1C",  # ; LV # Lo       HANGUL SYLLABLE GAE
        "\uAC38",  # ; LV # Lo       HANGUL SYLLABLE GYA
        "\uAC54",  # ; LV # Lo       HANGUL SYLLABLE GYAE
        "\uAC70",  # ; LV # Lo       HANGUL SYLLABLE GEO
        "\uAC8C",  # ; LV # Lo       HANGUL SYLLABLE GE
        "\uACA8",  # ; LV # Lo       HANGUL SYLLABLE GYEO
        "\uACC4",  # ; LV # Lo       HANGUL SYLLABLE GYE
        "\uACE0",  # ; LV # Lo       HANGUL SYLLABLE GO
        "\uACFC",  # ; LV # Lo       HANGUL SYLLABLE GWA
        "\uAD18",  # ; LV # Lo       HANGUL SYLLABLE GWAE
        "\uAD34",  # ; LV # Lo       HANGUL SYLLABLE GOE
        "\uAD50",  # ; LV # Lo       HANGUL SYLLABLE GYO
        "\uAD6C",  # ; LV # Lo       HANGUL SYLLABLE GU
        "\uAD88",  # ; LV # Lo       HANGUL SYLLABLE GWEO
        "\uADA4",  # ; LV # Lo       HANGUL SYLLABLE GWE
        "\uADC0",  # ; LV # Lo       HANGUL SYLLABLE GWI
        "\uADDC",  # ; LV # Lo       HANGUL SYLLABLE GYU
        "\uADF8",  # ; LV # Lo       HANGUL SYLLABLE GEU
        "\uAE14",  # ; LV # Lo       HANGUL SYLLABLE GYI
        "\uAE30",  # ; LV # Lo       HANGUL SYLLABLE GI
        "\uAE4C",  # ; LV # Lo       HANGUL SYLLABLE GGA
        "\uAE68",  # ; LV # Lo       HANGUL SYLLABLE GGAE
        "\uAE84",  # ; LV # Lo       HANGUL SYLLABLE GGYA
        "\uAEA0",  # ; LV # Lo       HANGUL SYLLABLE GGYAE
        "\uAEBC",  # ; LV # Lo       HANGUL SYLLABLE GGEO
        "\uAED8",  # ; LV # Lo       HANGUL SYLLABLE GGE
        "\uAEF4",  # ; LV # Lo       HANGUL SYLLABLE GGYEO
        "\uAF10",  # ; LV # Lo       HANGUL SYLLABLE GGYE
        "\uAF2C",  # ; LV # Lo       HANGUL SYLLABLE GGO
        "\uAF48",  # ; LV # Lo       HANGUL SYLLABLE GGWA
        "\uAF64",  # ; LV # Lo       HANGUL SYLLABLE GGWAE
        "\uAF80",  # ; LV # Lo       HANGUL SYLLABLE GGOE
        "\uAF9C",  # ; LV # Lo       HANGUL SYLLABLE GGYO
        "\uAFB8",  # ; LV # Lo       HANGUL SYLLABLE GGU
        "\uAFD4",  # ; LV # Lo       HANGUL SYLLABLE GGWEO
        "\uAFF0",  # ; LV # Lo       HANGUL SYLLABLE GGWE
        "\uB00C",  # ; LV # Lo       HANGUL SYLLABLE GGWI
        "\uB028",  # ; LV # Lo       HANGUL SYLLABLE GGYU
        "\uB044",  # ; LV # Lo       HANGUL SYLLABLE GGEU
        "\uB060",  # ; LV # Lo       HANGUL SYLLABLE GGYI
        "\uB07C",  # ; LV # Lo       HANGUL SYLLABLE GGI
        "\uB098",  # ; LV # Lo       HANGUL SYLLABLE NA
        "\uB0B4",  # ; LV # Lo       HANGUL SYLLABLE NAE
        "\uB0D0",  # ; LV # Lo       HANGUL SYLLABLE NYA
        "\uB0EC",  # ; LV # Lo       HANGUL SYLLABLE NYAE
        "\uB108",  # ; LV # Lo       HANGUL SYLLABLE NEO
        "\uB124",  # ; LV # Lo       HANGUL SYLLABLE NE
        "\uB140",  # ; LV # Lo       HANGUL SYLLABLE NYEO
        "\uB15C",  # ; LV # Lo       HANGUL SYLLABLE NYE
        "\uB178",  # ; LV # Lo       HANGUL SYLLABLE NO
        "\uB194",  # ; LV # Lo       HANGUL SYLLABLE NWA
        "\uB1B0",  # ; LV # Lo       HANGUL SYLLABLE NWAE
        "\uB1CC",  # ; LV # Lo       HANGUL SYLLABLE NOE
        "\uB1E8",  # ; LV # Lo       HANGUL SYLLABLE NYO
        "\uB204",  # ; LV # Lo       HANGUL SYLLABLE NU
        "\uB220",  # ; LV # Lo       HANGUL SYLLABLE NWEO
        "\uB23C",  # ; LV # Lo       HANGUL SYLLABLE NWE
        "\uB258",  # ; LV # Lo       HANGUL SYLLABLE NWI
        "\uB274",  # ; LV # Lo       HANGUL SYLLABLE NYU
        "\uB290",  # ; LV # Lo       HANGUL SYLLABLE NEU
        "\uB2AC",  # ; LV # Lo       HANGUL SYLLABLE NYI
        "\uB2C8",  # ; LV # Lo       HANGUL SYLLABLE NI
        "\uB2E4",  # ; LV # Lo       HANGUL SYLLABLE DA
        "\uB300",  # ; LV # Lo       HANGUL SYLLABLE DAE
        "\uB31C",  # ; LV # Lo       HANGUL SYLLABLE DYA
        "\uB338",  # ; LV # Lo       HANGUL SYLLABLE DYAE
        "\uB354",  # ; LV # Lo       HANGUL SYLLABLE DEO
        "\uB370",  # ; LV # Lo       HANGUL SYLLABLE DE
        "\uB38C",  # ; LV # Lo       HANGUL SYLLABLE DYEO
        "\uB3A8",  # ; LV # Lo       HANGUL SYLLABLE DYE
        "\uB3C4",  # ; LV # Lo       HANGUL SYLLABLE DO
        "\uB3E0",  # ; LV # Lo       HANGUL SYLLABLE DWA
        "\uB3FC",  # ; LV # Lo       HANGUL SYLLABLE DWAE
        "\uB418",  # ; LV # Lo       HANGUL SYLLABLE DOE
        "\uB434",  # ; LV # Lo       HANGUL SYLLABLE DYO
        "\uB450",  # ; LV # Lo       HANGUL SYLLABLE DU
        "\uB46C",  # ; LV # Lo       HANGUL SYLLABLE DWEO
        "\uB488",  # ; LV # Lo       HANGUL SYLLABLE DWE
        "\uB4A4",  # ; LV # Lo       HANGUL SYLLABLE DWI
        "\uB4C0",  # ; LV # Lo       HANGUL SYLLABLE DYU
        "\uB4DC",  # ; LV # Lo       HANGUL SYLLABLE DEU
        "\uB4F8",  # ; LV # Lo       HANGUL SYLLABLE DYI
        "\uB514",  # ; LV # Lo       HANGUL SYLLABLE DI
        "\uB530",  # ; LV # Lo       HANGUL SYLLABLE DDA
        "\uB54C",  # ; LV # Lo       HANGUL SYLLABLE DDAE
        "\uB568",  # ; LV # Lo       HANGUL SYLLABLE DDYA
        "\uB584",  # ; LV # Lo       HANGUL SYLLABLE DDYAE
        "\uB5A0",  # ; LV # Lo       HANGUL SYLLABLE DDEO
        "\uB5BC",  # ; LV # Lo       HANGUL SYLLABLE DDE
        "\uB5D8",  # ; LV # Lo       HANGUL SYLLABLE DDYEO
        "\uB5F4",  # ; LV # Lo       HANGUL SYLLABLE DDYE
        "\uB610",  # ; LV # Lo       HANGUL SYLLABLE DDO
        "\uB62C",  # ; LV # Lo       HANGUL SYLLABLE DDWA
        "\uB648",  # ; LV # Lo       HANGUL SYLLABLE DDWAE
        "\uB664",  # ; LV # Lo       HANGUL SYLLABLE DDOE
        "\uB680",  # ; LV # Lo       HANGUL SYLLABLE DDYO
        "\uB69C",  # ; LV # Lo       HANGUL SYLLABLE DDU
        "\uB6B8",  # ; LV # Lo       HANGUL SYLLABLE DDWEO
        "\uB6D4",  # ; LV # Lo       HANGUL SYLLABLE DDWE
        "\uB6F0",  # ; LV # Lo       HANGUL SYLLABLE DDWI
        "\uB70C",  # ; LV # Lo       HANGUL SYLLABLE DDYU
        "\uB728",  # ; LV # Lo       HANGUL SYLLABLE DDEU
        "\uB744",  # ; LV # Lo       HANGUL SYLLABLE DDYI
        "\uB760",  # ; LV # Lo       HANGUL SYLLABLE DDI
        "\uB77C",  # ; LV # Lo       HANGUL SYLLABLE RA
        "\uB798",  # ; LV # Lo       HANGUL SYLLABLE RAE
        "\uB7B4",  # ; LV # Lo       HANGUL SYLLABLE RYA
        "\uB7D0",  # ; LV # Lo       HANGUL SYLLABLE RYAE
        "\uB7EC",  # ; LV # Lo       HANGUL SYLLABLE REO
        "\uB808",  # ; LV # Lo       HANGUL SYLLABLE RE
        "\uB824",  # ; LV # Lo       HANGUL SYLLABLE RYEO
        "\uB840",  # ; LV # Lo       HANGUL SYLLABLE RYE
        "\uB85C",  # ; LV # Lo       HANGUL SYLLABLE RO
        "\uB878",  # ; LV # Lo       HANGUL SYLLABLE RWA
        "\uB894",  # ; LV # Lo       HANGUL SYLLABLE RWAE
        "\uB8B0",  # ; LV # Lo       HANGUL SYLLABLE ROE
        "\uB8CC",  # ; LV # Lo       HANGUL SYLLABLE RYO
        "\uB8E8",  # ; LV # Lo       HANGUL SYLLABLE RU
        "\uB904",  # ; LV # Lo       HANGUL SYLLABLE RWEO
        "\uB920",  # ; LV # Lo       HANGUL SYLLABLE RWE
        "\uB93C",  # ; LV # Lo       HANGUL SYLLABLE RWI
        "\uB958",  # ; LV # Lo       HANGUL SYLLABLE RYU
        "\uB974",  # ; LV # Lo       HANGUL SYLLABLE REU
        "\uB990",  # ; LV # Lo       HANGUL SYLLABLE RYI
        "\uB9AC",  # ; LV # Lo       HANGUL SYLLABLE RI
        "\uB9C8",  # ; LV # Lo       HANGUL SYLLABLE MA
        "\uB9E4",  # ; LV # Lo       HANGUL SYLLABLE MAE
        "\uBA00",  # ; LV # Lo       HANGUL SYLLABLE MYA
        "\uBA1C",  # ; LV # Lo       HANGUL SYLLABLE MYAE
        "\uBA38",  # ; LV # Lo       HANGUL SYLLABLE MEO
        "\uBA54",  # ; LV # Lo       HANGUL SYLLABLE ME
        "\uBA70",  # ; LV # Lo       HANGUL SYLLABLE MYEO
        "\uBA8C",  # ; LV # Lo       HANGUL SYLLABLE MYE
        "\uBAA8",  # ; LV # Lo       HANGUL SYLLABLE MO
        "\uBAC4",  # ; LV # Lo       HANGUL SYLLABLE MWA
        "\uBAE0",  # ; LV # Lo       HANGUL SYLLABLE MWAE
        "\uBAFC",  # ; LV # Lo       HANGUL SYLLABLE MOE
        "\uBB18",  # ; LV # Lo       HANGUL SYLLABLE MYO
        "\uBB34",  # ; LV # Lo       HANGUL SYLLABLE MU
        "\uBB50",  # ; LV # Lo       HANGUL SYLLABLE MWEO
        "\uBB6C",  # ; LV # Lo       HANGUL SYLLABLE MWE
        "\uBB88",  # ; LV # Lo       HANGUL SYLLABLE MWI
        "\uBBA4",  # ; LV # Lo       HANGUL SYLLABLE MYU
        "\uBBC0",  # ; LV # Lo       HANGUL SYLLABLE MEU
        "\uBBDC",  # ; LV # Lo       HANGUL SYLLABLE MYI
        "\uBBF8",  # ; LV # Lo       HANGUL SYLLABLE MI
        "\uBC14",  # ; LV # Lo       HANGUL SYLLABLE BA
        "\uBC30",  # ; LV # Lo       HANGUL SYLLABLE BAE
        "\uBC4C",  # ; LV # Lo       HANGUL SYLLABLE BYA
        "\uBC68",  # ; LV # Lo       HANGUL SYLLABLE BYAE
        "\uBC84",  # ; LV # Lo       HANGUL SYLLABLE BEO
        "\uBCA0",  # ; LV # Lo       HANGUL SYLLABLE BE
        "\uBCBC",  # ; LV # Lo       HANGUL SYLLABLE BYEO
        "\uBCD8",  # ; LV # Lo       HANGUL SYLLABLE BYE
        "\uBCF4",  # ; LV # Lo       HANGUL SYLLABLE BO
        "\uBD10",  # ; LV # Lo       HANGUL SYLLABLE BWA
        "\uBD2C",  # ; LV # Lo       HANGUL SYLLABLE BWAE
        "\uBD48",  # ; LV # Lo       HANGUL SYLLABLE BOE
        "\uBD64",  # ; LV # Lo       HANGUL SYLLABLE BYO
        "\uBD80",  # ; LV # Lo       HANGUL SYLLABLE BU
        "\uBD9C",  # ; LV # Lo       HANGUL SYLLABLE BWEO
        "\uBDB8",  # ; LV # Lo       HANGUL SYLLABLE BWE
        "\uBDD4",  # ; LV # Lo       HANGUL SYLLABLE BWI
        "\uBDF0",  # ; LV # Lo       HANGUL SYLLABLE BYU
        "\uBE0C",  # ; LV # Lo       HANGUL SYLLABLE BEU
        "\uBE28",  # ; LV # Lo       HANGUL SYLLABLE BYI
        "\uBE44",  # ; LV # Lo       HANGUL SYLLABLE BI
        "\uBE60",  # ; LV # Lo       HANGUL SYLLABLE BBA
        "\uBE7C",  # ; LV # Lo       HANGUL SYLLABLE BBAE
        "\uBE98",  # ; LV # Lo       HANGUL SYLLABLE BBYA
        "\uBEB4",  # ; LV # Lo       HANGUL SYLLABLE BBYAE
        "\uBED0",  # ; LV # Lo       HANGUL SYLLABLE BBEO
        "\uBEEC",  # ; LV # Lo       HANGUL SYLLABLE BBE
        "\uBF08",  # ; LV # Lo       HANGUL SYLLABLE BBYEO
        "\uBF24",  # ; LV # Lo       HANGUL SYLLABLE BBYE
        "\uBF40",  # ; LV # Lo       HANGUL SYLLABLE BBO
        "\uBF5C",  # ; LV # Lo       HANGUL SYLLABLE BBWA
        "\uBF78",  # ; LV # Lo       HANGUL SYLLABLE BBWAE
        "\uBF94",  # ; LV # Lo       HANGUL SYLLABLE BBOE
        "\uBFB0",  # ; LV # Lo       HANGUL SYLLABLE BBYO
        "\uBFCC",  # ; LV # Lo       HANGUL SYLLABLE BBU
        "\uBFE8",  # ; LV # Lo       HANGUL SYLLABLE BBWEO
        "\uC004",  # ; LV # Lo       HANGUL SYLLABLE BBWE
        "\uC020",  # ; LV # Lo       HANGUL SYLLABLE BBWI
        "\uC03C",  # ; LV # Lo       HANGUL SYLLABLE BBYU
        "\uC058",  # ; LV # Lo       HANGUL SYLLABLE BBEU
        "\uC074",  # ; LV # Lo       HANGUL SYLLABLE BBYI
        "\uC090",  # ; LV # Lo       HANGUL SYLLABLE BBI
        "\uC0AC",  # ; LV # Lo       HANGUL SYLLABLE SA
        "\uC0C8",  # ; LV # Lo       HANGUL SYLLABLE SAE
        "\uC0E4",  # ; LV # Lo       HANGUL SYLLABLE SYA
        "\uC100",  # ; LV # Lo       HANGUL SYLLABLE SYAE
        "\uC11C",  # ; LV # Lo       HANGUL SYLLABLE SEO
        "\uC138",  # ; LV # Lo       HANGUL SYLLABLE SE
        "\uC154",  # ; LV # Lo       HANGUL SYLLABLE SYEO
        "\uC170",  # ; LV # Lo       HANGUL SYLLABLE SYE
        "\uC18C",  # ; LV # Lo       HANGUL SYLLABLE SO
        "\uC1A8",  # ; LV # Lo       HANGUL SYLLABLE SWA
        "\uC1C4",  # ; LV # Lo       HANGUL SYLLABLE SWAE
        "\uC1E0",  # ; LV # Lo       HANGUL SYLLABLE SOE
        "\uC1FC",  # ; LV # Lo       HANGUL SYLLABLE SYO
        "\uC218",  # ; LV # Lo       HANGUL SYLLABLE SU
        "\uC234",  # ; LV # Lo       HANGUL SYLLABLE SWEO
        "\uC250",  # ; LV # Lo       HANGUL SYLLABLE SWE
        "\uC26C",  # ; LV # Lo       HANGUL SYLLABLE SWI
        "\uC288",  # ; LV # Lo       HANGUL SYLLABLE SYU
        "\uC2A4",  # ; LV # Lo       HANGUL SYLLABLE SEU
        "\uC2C0",  # ; LV # Lo       HANGUL SYLLABLE SYI
        "\uC2DC",  # ; LV # Lo       HANGUL SYLLABLE SI
        "\uC2F8",  # ; LV # Lo       HANGUL SYLLABLE SSA
        "\uC314",  # ; LV # Lo       HANGUL SYLLABLE SSAE
        "\uC330",  # ; LV # Lo       HANGUL SYLLABLE SSYA
        "\uC34C",  # ; LV # Lo       HANGUL SYLLABLE SSYAE
        "\uC368",  # ; LV # Lo       HANGUL SYLLABLE SSEO
        "\uC384",  # ; LV # Lo       HANGUL SYLLABLE SSE
        "\uC3A0",  # ; LV # Lo       HANGUL SYLLABLE SSYEO
        "\uC3BC",  # ; LV # Lo       HANGUL SYLLABLE SSYE
        "\uC3D8",  # ; LV # Lo       HANGUL SYLLABLE SSO
        "\uC3F4",  # ; LV # Lo       HANGUL SYLLABLE SSWA
        "\uC410",  # ; LV # Lo       HANGUL SYLLABLE SSWAE
        "\uC42C",  # ; LV # Lo       HANGUL SYLLABLE SSOE
        "\uC448",  # ; LV # Lo       HANGUL SYLLABLE SSYO
        "\uC464",  # ; LV # Lo       HANGUL SYLLABLE SSU
        "\uC480",  # ; LV # Lo       HANGUL SYLLABLE SSWEO
        "\uC49C",  # ; LV # Lo       HANGUL SYLLABLE SSWE
        "\uC4B8",  # ; LV # Lo       HANGUL SYLLABLE SSWI
        "\uC4D4",  # ; LV # Lo       HANGUL SYLLABLE SSYU
        "\uC4F0",  # ; LV # Lo       HANGUL SYLLABLE SSEU
        "\uC50C",  # ; LV # Lo       HANGUL SYLLABLE SSYI
        "\uC528",  # ; LV # Lo       HANGUL SYLLABLE SSI
        "\uC544",  # ; LV # Lo       HANGUL SYLLABLE A
        "\uC560",  # ; LV # Lo       HANGUL SYLLABLE AE
        "\uC57C",  # ; LV # Lo       HANGUL SYLLABLE YA
        "\uC598",  # ; LV # Lo       HANGUL SYLLABLE YAE
        "\uC5B4",  # ; LV # Lo       HANGUL SYLLABLE EO
        "\uC5D0",  # ; LV # Lo       HANGUL SYLLABLE E
        "\uC5EC",  # ; LV # Lo       HANGUL SYLLABLE YEO
        "\uC608",  # ; LV # Lo       HANGUL SYLLABLE YE
        "\uC624",  # ; LV # Lo       HANGUL SYLLABLE O
        "\uC640",  # ; LV # Lo       HANGUL SYLLABLE WA
        "\uC65C",  # ; LV # Lo       HANGUL SYLLABLE WAE
        "\uC678",  # ; LV # Lo       HANGUL SYLLABLE OE
        "\uC694",  # ; LV # Lo       HANGUL SYLLABLE YO
        "\uC6B0",  # ; LV # Lo       HANGUL SYLLABLE U
        "\uC6CC",  # ; LV # Lo       HANGUL SYLLABLE WEO
        "\uC6E8",  # ; LV # Lo       HANGUL SYLLABLE WE
        "\uC704",  # ; LV # Lo       HANGUL SYLLABLE WI
        "\uC720",  # ; LV # Lo       HANGUL SYLLABLE YU
        "\uC73C",  # ; LV # Lo       HANGUL SYLLABLE EU
        "\uC758",  # ; LV # Lo       HANGUL SYLLABLE YI
        "\uC774",  # ; LV # Lo       HANGUL SYLLABLE I
        "\uC790",  # ; LV # Lo       HANGUL SYLLABLE JA
        "\uC7AC",  # ; LV # Lo       HANGUL SYLLABLE JAE
        "\uC7C8",  # ; LV # Lo       HANGUL SYLLABLE JYA
        "\uC7E4",  # ; LV # Lo       HANGUL SYLLABLE JYAE
        "\uC800",  # ; LV # Lo       HANGUL SYLLABLE JEO
        "\uC81C",  # ; LV # Lo       HANGUL SYLLABLE JE
        "\uC838",  # ; LV # Lo       HANGUL SYLLABLE JYEO
        "\uC854",  # ; LV # Lo       HANGUL SYLLABLE JYE
        "\uC870",  # ; LV # Lo       HANGUL SYLLABLE JO
        "\uC88C",  # ; LV # Lo       HANGUL SYLLABLE JWA
        "\uC8A8",  # ; LV # Lo       HANGUL SYLLABLE JWAE
        "\uC8C4",  # ; LV # Lo       HANGUL SYLLABLE JOE
        "\uC8E0",  # ; LV # Lo       HANGUL SYLLABLE JYO
        "\uC8FC",  # ; LV # Lo       HANGUL SYLLABLE JU
        "\uC918",  # ; LV # Lo       HANGUL SYLLABLE JWEO
        "\uC934",  # ; LV # Lo       HANGUL SYLLABLE JWE
        "\uC950",  # ; LV # Lo       HANGUL SYLLABLE JWI
        "\uC96C",  # ; LV # Lo       HANGUL SYLLABLE JYU
        "\uC988",  # ; LV # Lo       HANGUL SYLLABLE JEU
        "\uC9A4",  # ; LV # Lo       HANGUL SYLLABLE JYI
        "\uC9C0",  # ; LV # Lo       HANGUL SYLLABLE JI
        "\uC9DC",  # ; LV # Lo       HANGUL SYLLABLE JJA
        "\uC9F8",  # ; LV # Lo       HANGUL SYLLABLE JJAE
        "\uCA14",  # ; LV # Lo       HANGUL SYLLABLE JJYA
        "\uCA30",  # ; LV # Lo       HANGUL SYLLABLE JJYAE
        "\uCA4C",  # ; LV # Lo       HANGUL SYLLABLE JJEO
        "\uCA68",  # ; LV # Lo       HANGUL SYLLABLE JJE
        "\uCA84",  # ; LV # Lo       HANGUL SYLLABLE JJYEO
        "\uCAA0",  # ; LV # Lo       HANGUL SYLLABLE JJYE
        "\uCABC",  # ; LV # Lo       HANGUL SYLLABLE JJO
        "\uCAD8",  # ; LV # Lo       HANGUL SYLLABLE JJWA
        "\uCAF4",  # ; LV # Lo       HANGUL SYLLABLE JJWAE
        "\uCB10",  # ; LV # Lo       HANGUL SYLLABLE JJOE
        "\uCB2C",  # ; LV # Lo       HANGUL SYLLABLE JJYO
        "\uCB48",  # ; LV # Lo       HANGUL SYLLABLE JJU
        "\uCB64",  # ; LV # Lo       HANGUL SYLLABLE JJWEO
        "\uCB80",  # ; LV # Lo       HANGUL SYLLABLE JJWE
        "\uCB9C",  # ; LV # Lo       HANGUL SYLLABLE JJWI
        "\uCBB8",  # ; LV # Lo       HANGUL SYLLABLE JJYU
        "\uCBD4",  # ; LV # Lo       HANGUL SYLLABLE JJEU
        "\uCBF0",  # ; LV # Lo       HANGUL SYLLABLE JJYI
        "\uCC0C",  # ; LV # Lo       HANGUL SYLLABLE JJI
        "\uCC28",  # ; LV # Lo       HANGUL SYLLABLE CA
        "\uCC44",  # ; LV # Lo       HANGUL SYLLABLE CAE
        "\uCC60",  # ; LV # Lo       HANGUL SYLLABLE CYA
        "\uCC7C",  # ; LV # Lo       HANGUL SYLLABLE CYAE
        "\uCC98",  # ; LV # Lo       HANGUL SYLLABLE CEO
        "\uCCB4",  # ; LV # Lo       HANGUL SYLLABLE CE
        "\uCCD0",  # ; LV # Lo       HANGUL SYLLABLE CYEO
        "\uCCEC",  # ; LV # Lo       HANGUL SYLLABLE CYE
        "\uCD08",  # ; LV # Lo       HANGUL SYLLABLE CO
        "\uCD24",  # ; LV # Lo       HANGUL SYLLABLE CWA
        "\uCD40",  # ; LV # Lo       HANGUL SYLLABLE CWAE
        "\uCD5C",  # ; LV # Lo       HANGUL SYLLABLE COE
        "\uCD78",  # ; LV # Lo       HANGUL SYLLABLE CYO
        "\uCD94",  # ; LV # Lo       HANGUL SYLLABLE CU
        "\uCDB0",  # ; LV # Lo       HANGUL SYLLABLE CWEO
        "\uCDCC",  # ; LV # Lo       HANGUL SYLLABLE CWE
        "\uCDE8",  # ; LV # Lo       HANGUL SYLLABLE CWI
        "\uCE04",  # ; LV # Lo       HANGUL SYLLABLE CYU
        "\uCE20",  # ; LV # Lo       HANGUL SYLLABLE CEU
        "\uCE3C",  # ; LV # Lo       HANGUL SYLLABLE CYI
        "\uCE58",  # ; LV # Lo       HANGUL SYLLABLE CI
        "\uCE74",  # ; LV # Lo       HANGUL SYLLABLE KA
        "\uCE90",  # ; LV # Lo       HANGUL SYLLABLE KAE
        "\uCEAC",  # ; LV # Lo       HANGUL SYLLABLE KYA
        "\uCEC8",  # ; LV # Lo       HANGUL SYLLABLE KYAE
        "\uCEE4",  # ; LV # Lo       HANGUL SYLLABLE KEO
        "\uCF00",  # ; LV # Lo       HANGUL SYLLABLE KE
        "\uCF1C",  # ; LV # Lo       HANGUL SYLLABLE KYEO
        "\uCF38",  # ; LV # Lo       HANGUL SYLLABLE KYE
        "\uCF54",  # ; LV # Lo       HANGUL SYLLABLE KO
        "\uCF70",  # ; LV # Lo       HANGUL SYLLABLE KWA
        "\uCF8C",  # ; LV # Lo       HANGUL SYLLABLE KWAE
        "\uCFA8",  # ; LV # Lo       HANGUL SYLLABLE KOE
        "\uCFC4",  # ; LV # Lo       HANGUL SYLLABLE KYO
        "\uCFE0",  # ; LV # Lo       HANGUL SYLLABLE KU
        "\uCFFC",  # ; LV # Lo       HANGUL SYLLABLE KWEO
        "\uD018",  # ; LV # Lo       HANGUL SYLLABLE KWE
        "\uD034",  # ; LV # Lo       HANGUL SYLLABLE KWI
        "\uD050",  # ; LV # Lo       HANGUL SYLLABLE KYU
        "\uD06C",  # ; LV # Lo       HANGUL SYLLABLE KEU
        "\uD088",  # ; LV # Lo       HANGUL SYLLABLE KYI
        "\uD0A4",  # ; LV # Lo       HANGUL SYLLABLE KI
        "\uD0C0",  # ; LV # Lo       HANGUL SYLLABLE TA
        "\uD0DC",  # ; LV # Lo       HANGUL SYLLABLE TAE
        "\uD0F8",  # ; LV # Lo       HANGUL SYLLABLE TYA
        "\uD114",  # ; LV # Lo       HANGUL SYLLABLE TYAE
        "\uD130",  # ; LV # Lo       HANGUL SYLLABLE TEO
        "\uD14C",  # ; LV # Lo       HANGUL SYLLABLE TE
        "\uD168",  # ; LV # Lo       HANGUL SYLLABLE TYEO
        "\uD184",  # ; LV # Lo       HANGUL SYLLABLE TYE
        "\uD1A0",  # ; LV # Lo       HANGUL SYLLABLE TO
        "\uD1BC",  # ; LV # Lo       HANGUL SYLLABLE TWA
        "\uD1D8",  # ; LV # Lo       HANGUL SYLLABLE TWAE
        "\uD1F4",  # ; LV # Lo       HANGUL SYLLABLE TOE
        "\uD210",  # ; LV # Lo       HANGUL SYLLABLE TYO
        "\uD22C",  # ; LV # Lo       HANGUL SYLLABLE TU
        "\uD248",  # ; LV # Lo       HANGUL SYLLABLE TWEO
        "\uD264",  # ; LV # Lo       HANGUL SYLLABLE TWE
        "\uD280",  # ; LV # Lo       HANGUL SYLLABLE TWI
        "\uD29C",  # ; LV # Lo       HANGUL SYLLABLE TYU
        "\uD2B8",  # ; LV # Lo       HANGUL SYLLABLE TEU
        "\uD2D4",  # ; LV # Lo       HANGUL SYLLABLE TYI
        "\uD2F0",  # ; LV # Lo       HANGUL SYLLABLE TI
        "\uD30C",  # ; LV # Lo       HANGUL SYLLABLE PA
        "\uD328",  # ; LV # Lo       HANGUL SYLLABLE PAE
        "\uD344",  # ; LV # Lo       HANGUL SYLLABLE PYA
        "\uD360",  # ; LV # Lo       HANGUL SYLLABLE PYAE
        "\uD37C",  # ; LV # Lo       HANGUL SYLLABLE PEO
        "\uD398",  # ; LV # Lo       HANGUL SYLLABLE PE
        "\uD3B4",  # ; LV # Lo       HANGUL SYLLABLE PYEO
        "\uD3D0",  # ; LV # Lo       HANGUL SYLLABLE PYE
        "\uD3EC",  # ; LV # Lo       HANGUL SYLLABLE PO
        "\uD408",  # ; LV # Lo       HANGUL SYLLABLE PWA
        "\uD424",  # ; LV # Lo       HANGUL SYLLABLE PWAE
        "\uD440",  # ; LV # Lo       HANGUL SYLLABLE POE
        "\uD45C",  # ; LV # Lo       HANGUL SYLLABLE PYO
        "\uD478",  # ; LV # Lo       HANGUL SYLLABLE PU
        "\uD494",  # ; LV # Lo       HANGUL SYLLABLE PWEO
        "\uD4B0",  # ; LV # Lo       HANGUL SYLLABLE PWE
        "\uD4CC",  # ; LV # Lo       HANGUL SYLLABLE PWI
        "\uD4E8",  # ; LV # Lo       HANGUL SYLLABLE PYU
        "\uD504",  # ; LV # Lo       HANGUL SYLLABLE PEU
        "\uD520",  # ; LV # Lo       HANGUL SYLLABLE PYI
        "\uD53C",  # ; LV # Lo       HANGUL SYLLABLE PI
        "\uD558",  # ; LV # Lo       HANGUL SYLLABLE HA
        "\uD574",  # ; LV # Lo       HANGUL SYLLABLE HAE
        "\uD590",  # ; LV # Lo       HANGUL SYLLABLE HYA
        "\uD5AC",  # ; LV # Lo       HANGUL SYLLABLE HYAE
        "\uD5C8",  # ; LV # Lo       HANGUL SYLLABLE HEO
        "\uD5E4",  # ; LV # Lo       HANGUL SYLLABLE HE
        "\uD600",  # ; LV # Lo       HANGUL SYLLABLE HYEO
        "\uD61C",  # ; LV # Lo       HANGUL SYLLABLE HYE
        "\uD638",  # ; LV # Lo       HANGUL SYLLABLE HO
        "\uD654",  # ; LV # Lo       HANGUL SYLLABLE HWA
        "\uD670",  # ; LV # Lo       HANGUL SYLLABLE HWAE
        "\uD68C",  # ; LV # Lo       HANGUL SYLLABLE HOE
        "\uD6A8",  # ; LV # Lo       HANGUL SYLLABLE HYO
        "\uD6C4",  # ; LV # Lo       HANGUL SYLLABLE HU
        "\uD6E0",  # ; LV # Lo       HANGUL SYLLABLE HWEO
        "\uD6FC",  # ; LV # Lo       HANGUL SYLLABLE HWE
        "\uD718",  # ; LV # Lo       HANGUL SYLLABLE HWI
        "\uD734",  # ; LV # Lo       HANGUL SYLLABLE HYU
        "\uD750",  # ; LV # Lo       HANGUL SYLLABLE HEU
        "\uD76C",  # ; LV # Lo       HANGUL SYLLABLE HYI
        "\uD788",  # ; LV # Lo       HANGUL SYLLABLE HI
        "\uac01","\uac02","\uac03","\uac04","\uac05","\uac06","\uac07","\uac08","\uac09","\uac0a","\uac0b","\uac0c","\uac0d","\uac0e","\uac0f","\uac10","\uac11","\uac12","\uac13","\uac14","\uac15","\uac16","\uac17","\uac18","\uac19","\uac1a","\uac1b",  # ; LVT # Lo  [27] HANGUL SYLLABLE GAG..HANGUL SYLLABLE GAH
        "\uac1d","\uac1e","\uac1f","\uac20","\uac21","\uac22","\uac23","\uac24","\uac25","\uac26","\uac27","\uac28","\uac29","\uac2a","\uac2b","\uac2c","\uac2d","\uac2e","\uac2f","\uac30","\uac31","\uac32","\uac33","\uac34","\uac35","\uac36","\uac37",  # ; LVT # Lo  [27] HANGUL SYLLABLE GAEG..HANGUL SYLLABLE GAEH
        "\uac39","\uac3a","\uac3b","\uac3c","\uac3d","\uac3e","\uac3f","\uac40","\uac41","\uac42","\uac43","\uac44","\uac45","\uac46","\uac47","\uac48","\uac49","\uac4a","\uac4b","\uac4c","\uac4d","\uac4e","\uac4f","\uac50","\uac51","\uac52","\uac53",  # ; LVT # Lo  [27] HANGUL SYLLABLE GYAG..HANGUL SYLLABLE GYAH
        "\uac55","\uac56","\uac57","\uac58","\uac59","\uac5a","\uac5b","\uac5c","\uac5d","\uac5e","\uac5f","\uac60","\uac61","\uac62","\uac63","\uac64","\uac65","\uac66","\uac67","\uac68","\uac69","\uac6a","\uac6b","\uac6c","\uac6d","\uac6e","\uac6f",  # ; LVT # Lo  [27] HANGUL SYLLABLE GYAEG..HANGUL SYLLABLE GYAEH
        "\uac71","\uac72","\uac73","\uac74","\uac75","\uac76","\uac77","\uac78","\uac79","\uac7a","\uac7b","\uac7c","\uac7d","\uac7e","\uac7f","\uac80","\uac81","\uac82","\uac83","\uac84","\uac85","\uac86","\uac87","\uac88","\uac89","\uac8a","\uac8b",  # ; LVT # Lo  [27] HANGUL SYLLABLE GEOG..HANGUL SYLLABLE GEOH
        "\uac8d","\uac8e","\uac8f","\uac90","\uac91","\uac92","\uac93","\uac94","\uac95","\uac96","\uac97","\uac98","\uac99","\uac9a","\uac9b","\uac9c","\uac9d","\uac9e","\uac9f","\uaca0","\uaca1","\uaca2","\uaca3","\uaca4","\uaca5","\uaca6","\uaca7",  # ; LVT # Lo  [27] HANGUL SYLLABLE GEG..HANGUL SYLLABLE GEH
        "\uaca9","\uacaa","\uacab","\uacac","\uacad","\uacae","\uacaf","\uacb0","\uacb1","\uacb2","\uacb3","\uacb4","\uacb5","\uacb6","\uacb7","\uacb8","\uacb9","\uacba","\uacbb","\uacbc","\uacbd","\uacbe","\uacbf","\uacc0","\uacc1","\uacc2","\uacc3",  # ; LVT # Lo  [27] HANGUL SYLLABLE GYEOG..HANGUL SYLLABLE GYEOH
        "\uacc5","\uacc6","\uacc7","\uacc8","\uacc9","\uacca","\uaccb","\uaccc","\uaccd","\uacce","\uaccf","\uacd0","\uacd1","\uacd2","\uacd3","\uacd4","\uacd5","\uacd6","\uacd7","\uacd8","\uacd9","\uacda","\uacdb","\uacdc","\uacdd","\uacde","\uacdf",  # ; LVT # Lo  [27] HANGUL SYLLABLE GYEG..HANGUL SYLLABLE GYEH
        "\uace1","\uace2","\uace3","\uace4","\uace5","\uace6","\uace7","\uace8","\uace9","\uacea","\uaceb","\uacec","\uaced","\uacee","\uacef","\uacf0","\uacf1","\uacf2","\uacf3","\uacf4","\uacf5","\uacf6","\uacf7","\uacf8","\uacf9","\uacfa","\uacfb",  # ; LVT # Lo  [27] HANGUL SYLLABLE GOG..HANGUL SYLLABLE GOH
        "\uacfd","\uacfe","\uacff","\uad00","\uad01","\uad02","\uad03","\uad04","\uad05","\uad06","\uad07","\uad08","\uad09","\uad0a","\uad0b","\uad0c","\uad0d","\uad0e","\uad0f","\uad10","\uad11","\uad12","\uad13","\uad14","\uad15","\uad16","\uad17",  # ; LVT # Lo  [27] HANGUL SYLLABLE GWAG..HANGUL SYLLABLE GWAH
        "\uad19","\uad1a","\uad1b","\uad1c","\uad1d","\uad1e","\uad1f","\uad20","\uad21","\uad22","\uad23","\uad24","\uad25","\uad26","\uad27","\uad28","\uad29","\uad2a","\uad2b","\uad2c","\uad2d","\uad2e","\uad2f","\uad30","\uad31","\uad32","\uad33",  # ; LVT # Lo  [27] HANGUL SYLLABLE GWAEG..HANGUL SYLLABLE GWAEH
        "\uad35","\uad36","\uad37","\uad38","\uad39","\uad3a","\uad3b","\uad3c","\uad3d","\uad3e","\uad3f","\uad40","\uad41","\uad42","\uad43","\uad44","\uad45","\uad46","\uad47","\uad48","\uad49","\uad4a","\uad4b","\uad4c","\uad4d","\uad4e","\uad4f",  # ; LVT # Lo  [27] HANGUL SYLLABLE GOEG..HANGUL SYLLABLE GOEH
        "\uad51","\uad52","\uad53","\uad54","\uad55","\uad56","\uad57","\uad58","\uad59","\uad5a","\uad5b","\uad5c","\uad5d","\uad5e","\uad5f","\uad60","\uad61","\uad62","\uad63","\uad64","\uad65","\uad66","\uad67","\uad68","\uad69","\uad6a","\uad6b",  # ; LVT # Lo  [27] HANGUL SYLLABLE GYOG..HANGUL SYLLABLE GYOH
        "\uad6d","\uad6e","\uad6f","\uad70","\uad71","\uad72","\uad73","\uad74","\uad75","\uad76","\uad77","\uad78","\uad79","\uad7a","\uad7b","\uad7c","\uad7d","\uad7e","\uad7f","\uad80","\uad81","\uad82","\uad83","\uad84","\uad85","\uad86","\uad87",  # ; LVT # Lo  [27] HANGUL SYLLABLE GUG..HANGUL SYLLABLE GUH
        "\uad89","\uad8a","\uad8b","\uad8c","\uad8d","\uad8e","\uad8f","\uad90","\uad91","\uad92","\uad93","\uad94","\uad95","\uad96","\uad97","\uad98","\uad99","\uad9a","\uad9b","\uad9c","\uad9d","\uad9e","\uad9f","\uada0","\uada1","\uada2","\uada3",  # ; LVT # Lo  [27] HANGUL SYLLABLE GWEOG..HANGUL SYLLABLE GWEOH
        "\uada5","\uada6","\uada7","\uada8","\uada9","\uadaa","\uadab","\uadac","\uadad","\uadae","\uadaf","\uadb0","\uadb1","\uadb2","\uadb3","\uadb4","\uadb5","\uadb6","\uadb7","\uadb8","\uadb9","\uadba","\uadbb","\uadbc","\uadbd","\uadbe","\uadbf",  # ; LVT # Lo  [27] HANGUL SYLLABLE GWEG..HANGUL SYLLABLE GWEH
        "\uadc1","\uadc2","\uadc3","\uadc4","\uadc5","\uadc6","\uadc7","\uadc8","\uadc9","\uadca","\uadcb","\uadcc","\uadcd","\uadce","\uadcf","\uadd0","\uadd1","\uadd2","\uadd3","\uadd4","\uadd5","\uadd6","\uadd7","\uadd8","\uadd9","\uadda","\uaddb",  # ; LVT # Lo  [27] HANGUL SYLLABLE GWIG..HANGUL SYLLABLE GWIH
        "\uaddd","\uadde","\uaddf","\uade0","\uade1","\uade2","\uade3","\uade4","\uade5","\uade6","\uade7","\uade8","\uade9","\uadea","\uadeb","\uadec","\uaded","\uadee","\uadef","\uadf0","\uadf1","\uadf2","\uadf3","\uadf4","\uadf5","\uadf6","\uadf7",  # ; LVT # Lo  [27] HANGUL SYLLABLE GYUG..HANGUL SYLLABLE GYUH
        "\uadf9","\uadfa","\uadfb","\uadfc","\uadfd","\uadfe","\uadff","\uae00","\uae01","\uae02","\uae03","\uae04","\uae05","\uae06","\uae07","\uae08","\uae09","\uae0a","\uae0b","\uae0c","\uae0d","\uae0e","\uae0f","\uae10","\uae11","\uae12","\uae13",  # ; LVT # Lo  [27] HANGUL SYLLABLE GEUG..HANGUL SYLLABLE GEUH
        "\uae15","\uae16","\uae17","\uae18","\uae19","\uae1a","\uae1b","\uae1c","\uae1d","\uae1e","\uae1f","\uae20","\uae21","\uae22","\uae23","\uae24","\uae25","\uae26","\uae27","\uae28","\uae29","\uae2a","\uae2b","\uae2c","\uae2d","\uae2e","\uae2f",  # ; LVT # Lo  [27] HANGUL SYLLABLE GYIG..HANGUL SYLLABLE GYIH
        "\uae31","\uae32","\uae33","\uae34","\uae35","\uae36","\uae37","\uae38","\uae39","\uae3a","\uae3b","\uae3c","\uae3d","\uae3e","\uae3f","\uae40","\uae41","\uae42","\uae43","\uae44","\uae45","\uae46","\uae47","\uae48","\uae49","\uae4a","\uae4b",  # ; LVT # Lo  [27] HANGUL SYLLABLE GIG..HANGUL SYLLABLE GIH
        "\uae4d","\uae4e","\uae4f","\uae50","\uae51","\uae52","\uae53","\uae54","\uae55","\uae56","\uae57","\uae58","\uae59","\uae5a","\uae5b","\uae5c","\uae5d","\uae5e","\uae5f","\uae60","\uae61","\uae62","\uae63","\uae64","\uae65","\uae66","\uae67",  # ; LVT # Lo  [27] HANGUL SYLLABLE GGAG..HANGUL SYLLABLE GGAH
        "\uae69","\uae6a","\uae6b","\uae6c","\uae6d","\uae6e","\uae6f","\uae70","\uae71","\uae72","\uae73","\uae74","\uae75","\uae76","\uae77","\uae78","\uae79","\uae7a","\uae7b","\uae7c","\uae7d","\uae7e","\uae7f","\uae80","\uae81","\uae82","\uae83",  # ; LVT # Lo  [27] HANGUL SYLLABLE GGAEG..HANGUL SYLLABLE GGAEH
        "\uae85","\uae86","\uae87","\uae88","\uae89","\uae8a","\uae8b","\uae8c","\uae8d","\uae8e","\uae8f","\uae90","\uae91","\uae92","\uae93","\uae94","\uae95","\uae96","\uae97","\uae98","\uae99","\uae9a","\uae9b","\uae9c","\uae9d","\uae9e","\uae9f",  # ; LVT # Lo  [27] HANGUL SYLLABLE GGYAG..HANGUL SYLLABLE GGYAH
        "\uaea1","\uaea2","\uaea3","\uaea4","\uaea5","\uaea6","\uaea7","\uaea8","\uaea9","\uaeaa","\uaeab","\uaeac","\uaead","\uaeae","\uaeaf","\uaeb0","\uaeb1","\uaeb2","\uaeb3","\uaeb4","\uaeb5","\uaeb6","\uaeb7","\uaeb8","\uaeb9","\uaeba","\uaebb",  # ; LVT # Lo  [27] HANGUL SYLLABLE GGYAEG..HANGUL SYLLABLE GGYAEH
        "\uaebd","\uaebe","\uaebf","\uaec0","\uaec1","\uaec2","\uaec3","\uaec4","\uaec5","\uaec6","\uaec7","\uaec8","\uaec9","\uaeca","\uaecb","\uaecc","\uaecd","\uaece","\uaecf","\uaed0","\uaed1","\uaed2","\uaed3","\uaed4","\uaed5","\uaed6","\uaed7",  # ; LVT # Lo  [27] HANGUL SYLLABLE GGEOG..HANGUL SYLLABLE GGEOH
        "\uaed9","\uaeda","\uaedb","\uaedc","\uaedd","\uaede","\uaedf","\uaee0","\uaee1","\uaee2","\uaee3","\uaee4","\uaee5","\uaee6","\uaee7","\uaee8","\uaee9","\uaeea","\uaeeb","\uaeec","\uaeed","\uaeee","\uaeef","\uaef0","\uaef1","\uaef2","\uaef3",  # ; LVT # Lo  [27] HANGUL SYLLABLE GGEG..HANGUL SYLLABLE GGEH
        "\uaef5","\uaef6","\uaef7","\uaef8","\uaef9","\uaefa","\uaefb","\uaefc","\uaefd","\uaefe","\uaeff","\uaf00","\uaf01","\uaf02","\uaf03","\uaf04","\uaf05","\uaf06","\uaf07","\uaf08","\uaf09","\uaf0a","\uaf0b","\uaf0c","\uaf0d","\uaf0e","\uaf0f",  # ; LVT # Lo  [27] HANGUL SYLLABLE GGYEOG..HANGUL SYLLABLE GGYEOH
        "\uaf11","\uaf12","\uaf13","\uaf14","\uaf15","\uaf16","\uaf17","\uaf18","\uaf19","\uaf1a","\uaf1b","\uaf1c","\uaf1d","\uaf1e","\uaf1f","\uaf20","\uaf21","\uaf22","\uaf23","\uaf24","\uaf25","\uaf26","\uaf27","\uaf28","\uaf29","\uaf2a","\uaf2b",  # ; LVT # Lo  [27] HANGUL SYLLABLE GGYEG..HANGUL SYLLABLE GGYEH
        "\uaf2d","\uaf2e","\uaf2f","\uaf30","\uaf31","\uaf32","\uaf33","\uaf34","\uaf35","\uaf36","\uaf37","\uaf38","\uaf39","\uaf3a","\uaf3b","\uaf3c","\uaf3d","\uaf3e","\uaf3f","\uaf40","\uaf41","\uaf42","\uaf43","\uaf44","\uaf45","\uaf46","\uaf47",  # ; LVT # Lo  [27] HANGUL SYLLABLE GGOG..HANGUL SYLLABLE GGOH
        "\uaf49","\uaf4a","\uaf4b","\uaf4c","\uaf4d","\uaf4e","\uaf4f","\uaf50","\uaf51","\uaf52","\uaf53","\uaf54","\uaf55","\uaf56","\uaf57","\uaf58","\uaf59","\uaf5a","\uaf5b","\uaf5c","\uaf5d","\uaf5e","\uaf5f","\uaf60","\uaf61","\uaf62","\uaf63",  # ; LVT # Lo  [27] HANGUL SYLLABLE GGWAG..HANGUL SYLLABLE GGWAH
        "\uaf65","\uaf66","\uaf67","\uaf68","\uaf69","\uaf6a","\uaf6b","\uaf6c","\uaf6d","\uaf6e","\uaf6f","\uaf70","\uaf71","\uaf72","\uaf73","\uaf74","\uaf75","\uaf76","\uaf77","\uaf78","\uaf79","\uaf7a","\uaf7b","\uaf7c","\uaf7d","\uaf7e","\uaf7f",  # ; LVT # Lo  [27] HANGUL SYLLABLE GGWAEG..HANGUL SYLLABLE GGWAEH
        "\uaf81","\uaf82","\uaf83","\uaf84","\uaf85","\uaf86","\uaf87","\uaf88","\uaf89","\uaf8a","\uaf8b","\uaf8c","\uaf8d","\uaf8e","\uaf8f","\uaf90","\uaf91","\uaf92","\uaf93","\uaf94","\uaf95","\uaf96","\uaf97","\uaf98","\uaf99","\uaf9a","\uaf9b",  # ; LVT # Lo  [27] HANGUL SYLLABLE GGOEG..HANGUL SYLLABLE GGOEH
        "\uaf9d","\uaf9e","\uaf9f","\uafa0","\uafa1","\uafa2","\uafa3","\uafa4","\uafa5","\uafa6","\uafa7","\uafa8","\uafa9","\uafaa","\uafab","\uafac","\uafad","\uafae","\uafaf","\uafb0","\uafb1","\uafb2","\uafb3","\uafb4","\uafb5","\uafb6","\uafb7",  # ; LVT # Lo  [27] HANGUL SYLLABLE GGYOG..HANGUL SYLLABLE GGYOH
        "\uafb9","\uafba","\uafbb","\uafbc","\uafbd","\uafbe","\uafbf","\uafc0","\uafc1","\uafc2","\uafc3","\uafc4","\uafc5","\uafc6","\uafc7","\uafc8","\uafc9","\uafca","\uafcb","\uafcc","\uafcd","\uafce","\uafcf","\uafd0","\uafd1","\uafd2","\uafd3",  # ; LVT # Lo  [27] HANGUL SYLLABLE GGUG..HANGUL SYLLABLE GGUH
        "\uafd5","\uafd6","\uafd7","\uafd8","\uafd9","\uafda","\uafdb","\uafdc","\uafdd","\uafde","\uafdf","\uafe0","\uafe1","\uafe2","\uafe3","\uafe4","\uafe5","\uafe6","\uafe7","\uafe8","\uafe9","\uafea","\uafeb","\uafec","\uafed","\uafee","\uafef",  # ; LVT # Lo  [27] HANGUL SYLLABLE GGWEOG..HANGUL SYLLABLE GGWEOH
        "\uaff1","\uaff2","\uaff3","\uaff4","\uaff5","\uaff6","\uaff7","\uaff8","\uaff9","\uaffa","\uaffb","\uaffc","\uaffd","\uaffe","\uafff","\ub000","\ub001","\ub002","\ub003","\ub004","\ub005","\ub006","\ub007","\ub008","\ub009","\ub00a","\ub00b",  # ; LVT # Lo  [27] HANGUL SYLLABLE GGWEG..HANGUL SYLLABLE GGWEH
        "\ub00d","\ub00e","\ub00f","\ub010","\ub011","\ub012","\ub013","\ub014","\ub015","\ub016","\ub017","\ub018","\ub019","\ub01a","\ub01b","\ub01c","\ub01d","\ub01e","\ub01f","\ub020","\ub021","\ub022","\ub023","\ub024","\ub025","\ub026","\ub027",  # ; LVT # Lo  [27] HANGUL SYLLABLE GGWIG..HANGUL SYLLABLE GGWIH
        "\ub029","\ub02a","\ub02b","\ub02c","\ub02d","\ub02e","\ub02f","\ub030","\ub031","\ub032","\ub033","\ub034","\ub035","\ub036","\ub037","\ub038","\ub039","\ub03a","\ub03b","\ub03c","\ub03d","\ub03e","\ub03f","\ub040","\ub041","\ub042","\ub043",  # ; LVT # Lo  [27] HANGUL SYLLABLE GGYUG..HANGUL SYLLABLE GGYUH
        "\ub045","\ub046","\ub047","\ub048","\ub049","\ub04a","\ub04b","\ub04c","\ub04d","\ub04e","\ub04f","\ub050","\ub051","\ub052","\ub053","\ub054","\ub055","\ub056","\ub057","\ub058","\ub059","\ub05a","\ub05b","\ub05c","\ub05d","\ub05e","\ub05f",  # ; LVT # Lo  [27] HANGUL SYLLABLE GGEUG..HANGUL SYLLABLE GGEUH
        "\ub061","\ub062","\ub063","\ub064","\ub065","\ub066","\ub067","\ub068","\ub069","\ub06a","\ub06b","\ub06c","\ub06d","\ub06e","\ub06f","\ub070","\ub071","\ub072","\ub073","\ub074","\ub075","\ub076","\ub077","\ub078","\ub079","\ub07a","\ub07b",  # ; LVT # Lo  [27] HANGUL SYLLABLE GGYIG..HANGUL SYLLABLE GGYIH
        "\ub07d","\ub07e","\ub07f","\ub080","\ub081","\ub082","\ub083","\ub084","\ub085","\ub086","\ub087","\ub088","\ub089","\ub08a","\ub08b","\ub08c","\ub08d","\ub08e","\ub08f","\ub090","\ub091","\ub092","\ub093","\ub094","\ub095","\ub096","\ub097",  # ; LVT # Lo  [27] HANGUL SYLLABLE GGIG..HANGUL SYLLABLE GGIH
        "\ub099","\ub09a","\ub09b","\ub09c","\ub09d","\ub09e","\ub09f","\ub0a0","\ub0a1","\ub0a2","\ub0a3","\ub0a4","\ub0a5","\ub0a6","\ub0a7","\ub0a8","\ub0a9","\ub0aa","\ub0ab","\ub0ac","\ub0ad","\ub0ae","\ub0af","\ub0b0","\ub0b1","\ub0b2","\ub0b3",  # ; LVT # Lo  [27] HANGUL SYLLABLE NAG..HANGUL SYLLABLE NAH
        "\ub0b5","\ub0b6","\ub0b7","\ub0b8","\ub0b9","\ub0ba","\ub0bb","\ub0bc","\ub0bd","\ub0be","\ub0bf","\ub0c0","\ub0c1","\ub0c2","\ub0c3","\ub0c4","\ub0c5","\ub0c6","\ub0c7","\ub0c8","\ub0c9","\ub0ca","\ub0cb","\ub0cc","\ub0cd","\ub0ce","\ub0cf",  # ; LVT # Lo  [27] HANGUL SYLLABLE NAEG..HANGUL SYLLABLE NAEH
        "\ub0d1","\ub0d2","\ub0d3","\ub0d4","\ub0d5","\ub0d6","\ub0d7","\ub0d8","\ub0d9","\ub0da","\ub0db","\ub0dc","\ub0dd","\ub0de","\ub0df","\ub0e0","\ub0e1","\ub0e2","\ub0e3","\ub0e4","\ub0e5","\ub0e6","\ub0e7","\ub0e8","\ub0e9","\ub0ea","\ub0eb",  # ; LVT # Lo  [27] HANGUL SYLLABLE NYAG..HANGUL SYLLABLE NYAH
        "\ub0ed","\ub0ee","\ub0ef","\ub0f0","\ub0f1","\ub0f2","\ub0f3","\ub0f4","\ub0f5","\ub0f6","\ub0f7","\ub0f8","\ub0f9","\ub0fa","\ub0fb","\ub0fc","\ub0fd","\ub0fe","\ub0ff","\ub100","\ub101","\ub102","\ub103","\ub104","\ub105","\ub106","\ub107",  # ; LVT # Lo  [27] HANGUL SYLLABLE NYAEG..HANGUL SYLLABLE NYAEH
        "\ub109","\ub10a","\ub10b","\ub10c","\ub10d","\ub10e","\ub10f","\ub110","\ub111","\ub112","\ub113","\ub114","\ub115","\ub116","\ub117","\ub118","\ub119","\ub11a","\ub11b","\ub11c","\ub11d","\ub11e","\ub11f","\ub120","\ub121","\ub122","\ub123",  # ; LVT # Lo  [27] HANGUL SYLLABLE NEOG..HANGUL SYLLABLE NEOH
        "\ub125","\ub126","\ub127","\ub128","\ub129","\ub12a","\ub12b","\ub12c","\ub12d","\ub12e","\ub12f","\ub130","\ub131","\ub132","\ub133","\ub134","\ub135","\ub136","\ub137","\ub138","\ub139","\ub13a","\ub13b","\ub13c","\ub13d","\ub13e","\ub13f",  # ; LVT # Lo  [27] HANGUL SYLLABLE NEG..HANGUL SYLLABLE NEH
        "\ub141","\ub142","\ub143","\ub144","\ub145","\ub146","\ub147","\ub148","\ub149","\ub14a","\ub14b","\ub14c","\ub14d","\ub14e","\ub14f","\ub150","\ub151","\ub152","\ub153","\ub154","\ub155","\ub156","\ub157","\ub158","\ub159","\ub15a","\ub15b",  # ; LVT # Lo  [27] HANGUL SYLLABLE NYEOG..HANGUL SYLLABLE NYEOH
        "\ub15d","\ub15e","\ub15f","\ub160","\ub161","\ub162","\ub163","\ub164","\ub165","\ub166","\ub167","\ub168","\ub169","\ub16a","\ub16b","\ub16c","\ub16d","\ub16e","\ub16f","\ub170","\ub171","\ub172","\ub173","\ub174","\ub175","\ub176","\ub177",  # ; LVT # Lo  [27] HANGUL SYLLABLE NYEG..HANGUL SYLLABLE NYEH
        "\ub179","\ub17a","\ub17b","\ub17c","\ub17d","\ub17e","\ub17f","\ub180","\ub181","\ub182","\ub183","\ub184","\ub185","\ub186","\ub187","\ub188","\ub189","\ub18a","\ub18b","\ub18c","\ub18d","\ub18e","\ub18f","\ub190","\ub191","\ub192","\ub193",  # ; LVT # Lo  [27] HANGUL SYLLABLE NOG..HANGUL SYLLABLE NOH
        "\ub195","\ub196","\ub197","\ub198","\ub199","\ub19a","\ub19b","\ub19c","\ub19d","\ub19e","\ub19f","\ub1a0","\ub1a1","\ub1a2","\ub1a3","\ub1a4","\ub1a5","\ub1a6","\ub1a7","\ub1a8","\ub1a9","\ub1aa","\ub1ab","\ub1ac","\ub1ad","\ub1ae","\ub1af",  # ; LVT # Lo  [27] HANGUL SYLLABLE NWAG..HANGUL SYLLABLE NWAH
        "\ub1b1","\ub1b2","\ub1b3","\ub1b4","\ub1b5","\ub1b6","\ub1b7","\ub1b8","\ub1b9","\ub1ba","\ub1bb","\ub1bc","\ub1bd","\ub1be","\ub1bf","\ub1c0","\ub1c1","\ub1c2","\ub1c3","\ub1c4","\ub1c5","\ub1c6","\ub1c7","\ub1c8","\ub1c9","\ub1ca","\ub1cb",  # ; LVT # Lo  [27] HANGUL SYLLABLE NWAEG..HANGUL SYLLABLE NWAEH
        "\ub1cd","\ub1ce","\ub1cf","\ub1d0","\ub1d1","\ub1d2","\ub1d3","\ub1d4","\ub1d5","\ub1d6","\ub1d7","\ub1d8","\ub1d9","\ub1da","\ub1db","\ub1dc","\ub1dd","\ub1de","\ub1df","\ub1e0","\ub1e1","\ub1e2","\ub1e3","\ub1e4","\ub1e5","\ub1e6","\ub1e7",  # ; LVT # Lo  [27] HANGUL SYLLABLE NOEG..HANGUL SYLLABLE NOEH
        "\ub1e9","\ub1ea","\ub1eb","\ub1ec","\ub1ed","\ub1ee","\ub1ef","\ub1f0","\ub1f1","\ub1f2","\ub1f3","\ub1f4","\ub1f5","\ub1f6","\ub1f7","\ub1f8","\ub1f9","\ub1fa","\ub1fb","\ub1fc","\ub1fd","\ub1fe","\ub1ff","\ub200","\ub201","\ub202","\ub203",  # ; LVT # Lo  [27] HANGUL SYLLABLE NYOG..HANGUL SYLLABLE NYOH
        "\ub205","\ub206","\ub207","\ub208","\ub209","\ub20a","\ub20b","\ub20c","\ub20d","\ub20e","\ub20f","\ub210","\ub211","\ub212","\ub213","\ub214","\ub215","\ub216","\ub217","\ub218","\ub219","\ub21a","\ub21b","\ub21c","\ub21d","\ub21e","\ub21f",  # ; LVT # Lo  [27] HANGUL SYLLABLE NUG..HANGUL SYLLABLE NUH
        "\ub221","\ub222","\ub223","\ub224","\ub225","\ub226","\ub227","\ub228","\ub229","\ub22a","\ub22b","\ub22c","\ub22d","\ub22e","\ub22f","\ub230","\ub231","\ub232","\ub233","\ub234","\ub235","\ub236","\ub237","\ub238","\ub239","\ub23a","\ub23b",  # ; LVT # Lo  [27] HANGUL SYLLABLE NWEOG..HANGUL SYLLABLE NWEOH
        "\ub23d","\ub23e","\ub23f","\ub240","\ub241","\ub242","\ub243","\ub244","\ub245","\ub246","\ub247","\ub248","\ub249","\ub24a","\ub24b","\ub24c","\ub24d","\ub24e","\ub24f","\ub250","\ub251","\ub252","\ub253","\ub254","\ub255","\ub256","\ub257",  # ; LVT # Lo  [27] HANGUL SYLLABLE NWEG..HANGUL SYLLABLE NWEH
        "\ub259","\ub25a","\ub25b","\ub25c","\ub25d","\ub25e","\ub25f","\ub260","\ub261","\ub262","\ub263","\ub264","\ub265","\ub266","\ub267","\ub268","\ub269","\ub26a","\ub26b","\ub26c","\ub26d","\ub26e","\ub26f","\ub270","\ub271","\ub272","\ub273",  # ; LVT # Lo  [27] HANGUL SYLLABLE NWIG..HANGUL SYLLABLE NWIH
        "\ub275","\ub276","\ub277","\ub278","\ub279","\ub27a","\ub27b","\ub27c","\ub27d","\ub27e","\ub27f","\ub280","\ub281","\ub282","\ub283","\ub284","\ub285","\ub286","\ub287","\ub288","\ub289","\ub28a","\ub28b","\ub28c","\ub28d","\ub28e","\ub28f",  # ; LVT # Lo  [27] HANGUL SYLLABLE NYUG..HANGUL SYLLABLE NYUH
        "\ub291","\ub292","\ub293","\ub294","\ub295","\ub296","\ub297","\ub298","\ub299","\ub29a","\ub29b","\ub29c","\ub29d","\ub29e","\ub29f","\ub2a0","\ub2a1","\ub2a2","\ub2a3","\ub2a4","\ub2a5","\ub2a6","\ub2a7","\ub2a8","\ub2a9","\ub2aa","\ub2ab",  # ; LVT # Lo  [27] HANGUL SYLLABLE NEUG..HANGUL SYLLABLE NEUH
        "\ub2ad","\ub2ae","\ub2af","\ub2b0","\ub2b1","\ub2b2","\ub2b3","\ub2b4","\ub2b5","\ub2b6","\ub2b7","\ub2b8","\ub2b9","\ub2ba","\ub2bb","\ub2bc","\ub2bd","\ub2be","\ub2bf","\ub2c0","\ub2c1","\ub2c2","\ub2c3","\ub2c4","\ub2c5","\ub2c6","\ub2c7",  # ; LVT # Lo  [27] HANGUL SYLLABLE NYIG..HANGUL SYLLABLE NYIH
        "\ub2c9","\ub2ca","\ub2cb","\ub2cc","\ub2cd","\ub2ce","\ub2cf","\ub2d0","\ub2d1","\ub2d2","\ub2d3","\ub2d4","\ub2d5","\ub2d6","\ub2d7","\ub2d8","\ub2d9","\ub2da","\ub2db","\ub2dc","\ub2dd","\ub2de","\ub2df","\ub2e0","\ub2e1","\ub2e2","\ub2e3",  # ; LVT # Lo  [27] HANGUL SYLLABLE NIG..HANGUL SYLLABLE NIH
        "\ub2e5","\ub2e6","\ub2e7","\ub2e8","\ub2e9","\ub2ea","\ub2eb","\ub2ec","\ub2ed","\ub2ee","\ub2ef","\ub2f0","\ub2f1","\ub2f2","\ub2f3","\ub2f4","\ub2f5","\ub2f6","\ub2f7","\ub2f8","\ub2f9","\ub2fa","\ub2fb","\ub2fc","\ub2fd","\ub2fe","\ub2ff",  # ; LVT # Lo  [27] HANGUL SYLLABLE DAG..HANGUL SYLLABLE DAH
        "\ub301","\ub302","\ub303","\ub304","\ub305","\ub306","\ub307","\ub308","\ub309","\ub30a","\ub30b","\ub30c","\ub30d","\ub30e","\ub30f","\ub310","\ub311","\ub312","\ub313","\ub314","\ub315","\ub316","\ub317","\ub318","\ub319","\ub31a","\ub31b",  # ; LVT # Lo  [27] HANGUL SYLLABLE DAEG..HANGUL SYLLABLE DAEH
        "\ub31d","\ub31e","\ub31f","\ub320","\ub321","\ub322","\ub323","\ub324","\ub325","\ub326","\ub327","\ub328","\ub329","\ub32a","\ub32b","\ub32c","\ub32d","\ub32e","\ub32f","\ub330","\ub331","\ub332","\ub333","\ub334","\ub335","\ub336","\ub337",  # ; LVT # Lo  [27] HANGUL SYLLABLE DYAG..HANGUL SYLLABLE DYAH
        "\ub339","\ub33a","\ub33b","\ub33c","\ub33d","\ub33e","\ub33f","\ub340","\ub341","\ub342","\ub343","\ub344","\ub345","\ub346","\ub347","\ub348","\ub349","\ub34a","\ub34b","\ub34c","\ub34d","\ub34e","\ub34f","\ub350","\ub351","\ub352","\ub353",  # ; LVT # Lo  [27] HANGUL SYLLABLE DYAEG..HANGUL SYLLABLE DYAEH
        "\ub355","\ub356","\ub357","\ub358","\ub359","\ub35a","\ub35b","\ub35c","\ub35d","\ub35e","\ub35f","\ub360","\ub361","\ub362","\ub363","\ub364","\ub365","\ub366","\ub367","\ub368","\ub369","\ub36a","\ub36b","\ub36c","\ub36d","\ub36e","\ub36f",  # ; LVT # Lo  [27] HANGUL SYLLABLE DEOG..HANGUL SYLLABLE DEOH
        "\ub371","\ub372","\ub373","\ub374","\ub375","\ub376","\ub377","\ub378","\ub379","\ub37a","\ub37b","\ub37c","\ub37d","\ub37e","\ub37f","\ub380","\ub381","\ub382","\ub383","\ub384","\ub385","\ub386","\ub387","\ub388","\ub389","\ub38a","\ub38b",  # ; LVT # Lo  [27] HANGUL SYLLABLE DEG..HANGUL SYLLABLE DEH
        "\ub38d","\ub38e","\ub38f","\ub390","\ub391","\ub392","\ub393","\ub394","\ub395","\ub396","\ub397","\ub398","\ub399","\ub39a","\ub39b","\ub39c","\ub39d","\ub39e","\ub39f","\ub3a0","\ub3a1","\ub3a2","\ub3a3","\ub3a4","\ub3a5","\ub3a6","\ub3a7",  # ; LVT # Lo  [27] HANGUL SYLLABLE DYEOG..HANGUL SYLLABLE DYEOH
        "\ub3a9","\ub3aa","\ub3ab","\ub3ac","\ub3ad","\ub3ae","\ub3af","\ub3b0","\ub3b1","\ub3b2","\ub3b3","\ub3b4","\ub3b5","\ub3b6","\ub3b7","\ub3b8","\ub3b9","\ub3ba","\ub3bb","\ub3bc","\ub3bd","\ub3be","\ub3bf","\ub3c0","\ub3c1","\ub3c2","\ub3c3",  # ; LVT # Lo  [27] HANGUL SYLLABLE DYEG..HANGUL SYLLABLE DYEH
        "\ub3c5","\ub3c6","\ub3c7","\ub3c8","\ub3c9","\ub3ca","\ub3cb","\ub3cc","\ub3cd","\ub3ce","\ub3cf","\ub3d0","\ub3d1","\ub3d2","\ub3d3","\ub3d4","\ub3d5","\ub3d6","\ub3d7","\ub3d8","\ub3d9","\ub3da","\ub3db","\ub3dc","\ub3dd","\ub3de","\ub3df",  # ; LVT # Lo  [27] HANGUL SYLLABLE DOG..HANGUL SYLLABLE DOH
        "\ub3e1","\ub3e2","\ub3e3","\ub3e4","\ub3e5","\ub3e6","\ub3e7","\ub3e8","\ub3e9","\ub3ea","\ub3eb","\ub3ec","\ub3ed","\ub3ee","\ub3ef","\ub3f0","\ub3f1","\ub3f2","\ub3f3","\ub3f4","\ub3f5","\ub3f6","\ub3f7","\ub3f8","\ub3f9","\ub3fa","\ub3fb",  # ; LVT # Lo  [27] HANGUL SYLLABLE DWAG..HANGUL SYLLABLE DWAH
        "\ub3fd","\ub3fe","\ub3ff","\ub400","\ub401","\ub402","\ub403","\ub404","\ub405","\ub406","\ub407","\ub408","\ub409","\ub40a","\ub40b","\ub40c","\ub40d","\ub40e","\ub40f","\ub410","\ub411","\ub412","\ub413","\ub414","\ub415","\ub416","\ub417",  # ; LVT # Lo  [27] HANGUL SYLLABLE DWAEG..HANGUL SYLLABLE DWAEH
        "\ub419","\ub41a","\ub41b","\ub41c","\ub41d","\ub41e","\ub41f","\ub420","\ub421","\ub422","\ub423","\ub424","\ub425","\ub426","\ub427","\ub428","\ub429","\ub42a","\ub42b","\ub42c","\ub42d","\ub42e","\ub42f","\ub430","\ub431","\ub432","\ub433",  # ; LVT # Lo  [27] HANGUL SYLLABLE DOEG..HANGUL SYLLABLE DOEH
        "\ub435","\ub436","\ub437","\ub438","\ub439","\ub43a","\ub43b","\ub43c","\ub43d","\ub43e","\ub43f","\ub440","\ub441","\ub442","\ub443","\ub444","\ub445","\ub446","\ub447","\ub448","\ub449","\ub44a","\ub44b","\ub44c","\ub44d","\ub44e","\ub44f",  # ; LVT # Lo  [27] HANGUL SYLLABLE DYOG..HANGUL SYLLABLE DYOH
        "\ub451","\ub452","\ub453","\ub454","\ub455","\ub456","\ub457","\ub458","\ub459","\ub45a","\ub45b","\ub45c","\ub45d","\ub45e","\ub45f","\ub460","\ub461","\ub462","\ub463","\ub464","\ub465","\ub466","\ub467","\ub468","\ub469","\ub46a","\ub46b",  # ; LVT # Lo  [27] HANGUL SYLLABLE DUG..HANGUL SYLLABLE DUH
        "\ub46d","\ub46e","\ub46f","\ub470","\ub471","\ub472","\ub473","\ub474","\ub475","\ub476","\ub477","\ub478","\ub479","\ub47a","\ub47b","\ub47c","\ub47d","\ub47e","\ub47f","\ub480","\ub481","\ub482","\ub483","\ub484","\ub485","\ub486","\ub487",  # ; LVT # Lo  [27] HANGUL SYLLABLE DWEOG..HANGUL SYLLABLE DWEOH
        "\ub489","\ub48a","\ub48b","\ub48c","\ub48d","\ub48e","\ub48f","\ub490","\ub491","\ub492","\ub493","\ub494","\ub495","\ub496","\ub497","\ub498","\ub499","\ub49a","\ub49b","\ub49c","\ub49d","\ub49e","\ub49f","\ub4a0","\ub4a1","\ub4a2","\ub4a3",  # ; LVT # Lo  [27] HANGUL SYLLABLE DWEG..HANGUL SYLLABLE DWEH
        "\ub4a5","\ub4a6","\ub4a7","\ub4a8","\ub4a9","\ub4aa","\ub4ab","\ub4ac","\ub4ad","\ub4ae","\ub4af","\ub4b0","\ub4b1","\ub4b2","\ub4b3","\ub4b4","\ub4b5","\ub4b6","\ub4b7","\ub4b8","\ub4b9","\ub4ba","\ub4bb","\ub4bc","\ub4bd","\ub4be","\ub4bf",  # ; LVT # Lo  [27] HANGUL SYLLABLE DWIG..HANGUL SYLLABLE DWIH
        "\ub4c1","\ub4c2","\ub4c3","\ub4c4","\ub4c5","\ub4c6","\ub4c7","\ub4c8","\ub4c9","\ub4ca","\ub4cb","\ub4cc","\ub4cd","\ub4ce","\ub4cf","\ub4d0","\ub4d1","\ub4d2","\ub4d3","\ub4d4","\ub4d5","\ub4d6","\ub4d7","\ub4d8","\ub4d9","\ub4da","\ub4db",  # ; LVT # Lo  [27] HANGUL SYLLABLE DYUG..HANGUL SYLLABLE DYUH
        "\ub4dd","\ub4de","\ub4df","\ub4e0","\ub4e1","\ub4e2","\ub4e3","\ub4e4","\ub4e5","\ub4e6","\ub4e7","\ub4e8","\ub4e9","\ub4ea","\ub4eb","\ub4ec","\ub4ed","\ub4ee","\ub4ef","\ub4f0","\ub4f1","\ub4f2","\ub4f3","\ub4f4","\ub4f5","\ub4f6","\ub4f7",  # ; LVT # Lo  [27] HANGUL SYLLABLE DEUG..HANGUL SYLLABLE DEUH
        "\ub4f9","\ub4fa","\ub4fb","\ub4fc","\ub4fd","\ub4fe","\ub4ff","\ub500","\ub501","\ub502","\ub503","\ub504","\ub505","\ub506","\ub507","\ub508","\ub509","\ub50a","\ub50b","\ub50c","\ub50d","\ub50e","\ub50f","\ub510","\ub511","\ub512","\ub513",  # ; LVT # Lo  [27] HANGUL SYLLABLE DYIG..HANGUL SYLLABLE DYIH
        "\ub515","\ub516","\ub517","\ub518","\ub519","\ub51a","\ub51b","\ub51c","\ub51d","\ub51e","\ub51f","\ub520","\ub521","\ub522","\ub523","\ub524","\ub525","\ub526","\ub527","\ub528","\ub529","\ub52a","\ub52b","\ub52c","\ub52d","\ub52e","\ub52f",  # ; LVT # Lo  [27] HANGUL SYLLABLE DIG..HANGUL SYLLABLE DIH
        "\ub531","\ub532","\ub533","\ub534","\ub535","\ub536","\ub537","\ub538","\ub539","\ub53a","\ub53b","\ub53c","\ub53d","\ub53e","\ub53f","\ub540","\ub541","\ub542","\ub543","\ub544","\ub545","\ub546","\ub547","\ub548","\ub549","\ub54a","\ub54b",  # ; LVT # Lo  [27] HANGUL SYLLABLE DDAG..HANGUL SYLLABLE DDAH
        "\ub54d","\ub54e","\ub54f","\ub550","\ub551","\ub552","\ub553","\ub554","\ub555","\ub556","\ub557","\ub558","\ub559","\ub55a","\ub55b","\ub55c","\ub55d","\ub55e","\ub55f","\ub560","\ub561","\ub562","\ub563","\ub564","\ub565","\ub566","\ub567",  # ; LVT # Lo  [27] HANGUL SYLLABLE DDAEG..HANGUL SYLLABLE DDAEH
        "\ub569","\ub56a","\ub56b","\ub56c","\ub56d","\ub56e","\ub56f","\ub570","\ub571","\ub572","\ub573","\ub574","\ub575","\ub576","\ub577","\ub578","\ub579","\ub57a","\ub57b","\ub57c","\ub57d","\ub57e","\ub57f","\ub580","\ub581","\ub582","\ub583",  # ; LVT # Lo  [27] HANGUL SYLLABLE DDYAG..HANGUL SYLLABLE DDYAH
        "\ub585","\ub586","\ub587","\ub588","\ub589","\ub58a","\ub58b","\ub58c","\ub58d","\ub58e","\ub58f","\ub590","\ub591","\ub592","\ub593","\ub594","\ub595","\ub596","\ub597","\ub598","\ub599","\ub59a","\ub59b","\ub59c","\ub59d","\ub59e","\ub59f",  # ; LVT # Lo  [27] HANGUL SYLLABLE DDYAEG..HANGUL SYLLABLE DDYAEH
        "\ub5a1","\ub5a2","\ub5a3","\ub5a4","\ub5a5","\ub5a6","\ub5a7","\ub5a8","\ub5a9","\ub5aa","\ub5ab","\ub5ac","\ub5ad","\ub5ae","\ub5af","\ub5b0","\ub5b1","\ub5b2","\ub5b3","\ub5b4","\ub5b5","\ub5b6","\ub5b7","\ub5b8","\ub5b9","\ub5ba","\ub5bb",  # ; LVT # Lo  [27] HANGUL SYLLABLE DDEOG..HANGUL SYLLABLE DDEOH
        "\ub5bd","\ub5be","\ub5bf","\ub5c0","\ub5c1","\ub5c2","\ub5c3","\ub5c4","\ub5c5","\ub5c6","\ub5c7","\ub5c8","\ub5c9","\ub5ca","\ub5cb","\ub5cc","\ub5cd","\ub5ce","\ub5cf","\ub5d0","\ub5d1","\ub5d2","\ub5d3","\ub5d4","\ub5d5","\ub5d6","\ub5d7",  # ; LVT # Lo  [27] HANGUL SYLLABLE DDEG..HANGUL SYLLABLE DDEH
        "\ub5d9","\ub5da","\ub5db","\ub5dc","\ub5dd","\ub5de","\ub5df","\ub5e0","\ub5e1","\ub5e2","\ub5e3","\ub5e4","\ub5e5","\ub5e6","\ub5e7","\ub5e8","\ub5e9","\ub5ea","\ub5eb","\ub5ec","\ub5ed","\ub5ee","\ub5ef","\ub5f0","\ub5f1","\ub5f2","\ub5f3",  # ; LVT # Lo  [27] HANGUL SYLLABLE DDYEOG..HANGUL SYLLABLE DDYEOH
        "\ub5f5","\ub5f6","\ub5f7","\ub5f8","\ub5f9","\ub5fa","\ub5fb","\ub5fc","\ub5fd","\ub5fe","\ub5ff","\ub600","\ub601","\ub602","\ub603","\ub604","\ub605","\ub606","\ub607","\ub608","\ub609","\ub60a","\ub60b","\ub60c","\ub60d","\ub60e","\ub60f",  # ; LVT # Lo  [27] HANGUL SYLLABLE DDYEG..HANGUL SYLLABLE DDYEH
        "\ub611","\ub612","\ub613","\ub614","\ub615","\ub616","\ub617","\ub618","\ub619","\ub61a","\ub61b","\ub61c","\ub61d","\ub61e","\ub61f","\ub620","\ub621","\ub622","\ub623","\ub624","\ub625","\ub626","\ub627","\ub628","\ub629","\ub62a","\ub62b",  # ; LVT # Lo  [27] HANGUL SYLLABLE DDOG..HANGUL SYLLABLE DDOH
        "\ub62d","\ub62e","\ub62f","\ub630","\ub631","\ub632","\ub633","\ub634","\ub635","\ub636","\ub637","\ub638","\ub639","\ub63a","\ub63b","\ub63c","\ub63d","\ub63e","\ub63f","\ub640","\ub641","\ub642","\ub643","\ub644","\ub645","\ub646","\ub647",  # ; LVT # Lo  [27] HANGUL SYLLABLE DDWAG..HANGUL SYLLABLE DDWAH
        "\ub649","\ub64a","\ub64b","\ub64c","\ub64d","\ub64e","\ub64f","\ub650","\ub651","\ub652","\ub653","\ub654","\ub655","\ub656","\ub657","\ub658","\ub659","\ub65a","\ub65b","\ub65c","\ub65d","\ub65e","\ub65f","\ub660","\ub661","\ub662","\ub663",  # ; LVT # Lo  [27] HANGUL SYLLABLE DDWAEG..HANGUL SYLLABLE DDWAEH
        "\ub665","\ub666","\ub667","\ub668","\ub669","\ub66a","\ub66b","\ub66c","\ub66d","\ub66e","\ub66f","\ub670","\ub671","\ub672","\ub673","\ub674","\ub675","\ub676","\ub677","\ub678","\ub679","\ub67a","\ub67b","\ub67c","\ub67d","\ub67e","\ub67f",  # ; LVT # Lo  [27] HANGUL SYLLABLE DDOEG..HANGUL SYLLABLE DDOEH
        "\ub681","\ub682","\ub683","\ub684","\ub685","\ub686","\ub687","\ub688","\ub689","\ub68a","\ub68b","\ub68c","\ub68d","\ub68e","\ub68f","\ub690","\ub691","\ub692","\ub693","\ub694","\ub695","\ub696","\ub697","\ub698","\ub699","\ub69a","\ub69b",  # ; LVT # Lo  [27] HANGUL SYLLABLE DDYOG..HANGUL SYLLABLE DDYOH
        "\ub69d","\ub69e","\ub69f","\ub6a0","\ub6a1","\ub6a2","\ub6a3","\ub6a4","\ub6a5","\ub6a6","\ub6a7","\ub6a8","\ub6a9","\ub6aa","\ub6ab","\ub6ac","\ub6ad","\ub6ae","\ub6af","\ub6b0","\ub6b1","\ub6b2","\ub6b3","\ub6b4","\ub6b5","\ub6b6","\ub6b7",  # ; LVT # Lo  [27] HANGUL SYLLABLE DDUG..HANGUL SYLLABLE DDUH
        "\ub6b9","\ub6ba","\ub6bb","\ub6bc","\ub6bd","\ub6be","\ub6bf","\ub6c0","\ub6c1","\ub6c2","\ub6c3","\ub6c4","\ub6c5","\ub6c6","\ub6c7","\ub6c8","\ub6c9","\ub6ca","\ub6cb","\ub6cc","\ub6cd","\ub6ce","\ub6cf","\ub6d0","\ub6d1","\ub6d2","\ub6d3",  # ; LVT # Lo  [27] HANGUL SYLLABLE DDWEOG..HANGUL SYLLABLE DDWEOH
        "\ub6d5","\ub6d6","\ub6d7","\ub6d8","\ub6d9","\ub6da","\ub6db","\ub6dc","\ub6dd","\ub6de","\ub6df","\ub6e0","\ub6e1","\ub6e2","\ub6e3","\ub6e4","\ub6e5","\ub6e6","\ub6e7","\ub6e8","\ub6e9","\ub6ea","\ub6eb","\ub6ec","\ub6ed","\ub6ee","\ub6ef",  # ; LVT # Lo  [27] HANGUL SYLLABLE DDWEG..HANGUL SYLLABLE DDWEH
        "\ub6f1","\ub6f2","\ub6f3","\ub6f4","\ub6f5","\ub6f6","\ub6f7","\ub6f8","\ub6f9","\ub6fa","\ub6fb","\ub6fc","\ub6fd","\ub6fe","\ub6ff","\ub700","\ub701","\ub702","\ub703","\ub704","\ub705","\ub706","\ub707","\ub708","\ub709","\ub70a","\ub70b",  # ; LVT # Lo  [27] HANGUL SYLLABLE DDWIG..HANGUL SYLLABLE DDWIH
        "\ub70d","\ub70e","\ub70f","\ub710","\ub711","\ub712","\ub713","\ub714","\ub715","\ub716","\ub717","\ub718","\ub719","\ub71a","\ub71b","\ub71c","\ub71d","\ub71e","\ub71f","\ub720","\ub721","\ub722","\ub723","\ub724","\ub725","\ub726","\ub727",  # ; LVT # Lo  [27] HANGUL SYLLABLE DDYUG..HANGUL SYLLABLE DDYUH
        "\ub729","\ub72a","\ub72b","\ub72c","\ub72d","\ub72e","\ub72f","\ub730","\ub731","\ub732","\ub733","\ub734","\ub735","\ub736","\ub737","\ub738","\ub739","\ub73a","\ub73b","\ub73c","\ub73d","\ub73e","\ub73f","\ub740","\ub741","\ub742","\ub743",  # ; LVT # Lo  [27] HANGUL SYLLABLE DDEUG..HANGUL SYLLABLE DDEUH
        "\ub745","\ub746","\ub747","\ub748","\ub749","\ub74a","\ub74b","\ub74c","\ub74d","\ub74e","\ub74f","\ub750","\ub751","\ub752","\ub753","\ub754","\ub755","\ub756","\ub757","\ub758","\ub759","\ub75a","\ub75b","\ub75c","\ub75d","\ub75e","\ub75f",  # ; LVT # Lo  [27] HANGUL SYLLABLE DDYIG..HANGUL SYLLABLE DDYIH
        "\ub761","\ub762","\ub763","\ub764","\ub765","\ub766","\ub767","\ub768","\ub769","\ub76a","\ub76b","\ub76c","\ub76d","\ub76e","\ub76f","\ub770","\ub771","\ub772","\ub773","\ub774","\ub775","\ub776","\ub777","\ub778","\ub779","\ub77a","\ub77b",  # ; LVT # Lo  [27] HANGUL SYLLABLE DDIG..HANGUL SYLLABLE DDIH
        "\ub77d","\ub77e","\ub77f","\ub780","\ub781","\ub782","\ub783","\ub784","\ub785","\ub786","\ub787","\ub788","\ub789","\ub78a","\ub78b","\ub78c","\ub78d","\ub78e","\ub78f","\ub790","\ub791","\ub792","\ub793","\ub794","\ub795","\ub796","\ub797",  # ; LVT # Lo  [27] HANGUL SYLLABLE RAG..HANGUL SYLLABLE RAH
        "\ub799","\ub79a","\ub79b","\ub79c","\ub79d","\ub79e","\ub79f","\ub7a0","\ub7a1","\ub7a2","\ub7a3","\ub7a4","\ub7a5","\ub7a6","\ub7a7","\ub7a8","\ub7a9","\ub7aa","\ub7ab","\ub7ac","\ub7ad","\ub7ae","\ub7af","\ub7b0","\ub7b1","\ub7b2","\ub7b3",  # ; LVT # Lo  [27] HANGUL SYLLABLE RAEG..HANGUL SYLLABLE RAEH
        "\ub7b5","\ub7b6","\ub7b7","\ub7b8","\ub7b9","\ub7ba","\ub7bb","\ub7bc","\ub7bd","\ub7be","\ub7bf","\ub7c0","\ub7c1","\ub7c2","\ub7c3","\ub7c4","\ub7c5","\ub7c6","\ub7c7","\ub7c8","\ub7c9","\ub7ca","\ub7cb","\ub7cc","\ub7cd","\ub7ce","\ub7cf",  # ; LVT # Lo  [27] HANGUL SYLLABLE RYAG..HANGUL SYLLABLE RYAH
        "\ub7d1","\ub7d2","\ub7d3","\ub7d4","\ub7d5","\ub7d6","\ub7d7","\ub7d8","\ub7d9","\ub7da","\ub7db","\ub7dc","\ub7dd","\ub7de","\ub7df","\ub7e0","\ub7e1","\ub7e2","\ub7e3","\ub7e4","\ub7e5","\ub7e6","\ub7e7","\ub7e8","\ub7e9","\ub7ea","\ub7eb",  # ; LVT # Lo  [27] HANGUL SYLLABLE RYAEG..HANGUL SYLLABLE RYAEH
        "\ub7ed","\ub7ee","\ub7ef","\ub7f0","\ub7f1","\ub7f2","\ub7f3","\ub7f4","\ub7f5","\ub7f6","\ub7f7","\ub7f8","\ub7f9","\ub7fa","\ub7fb","\ub7fc","\ub7fd","\ub7fe","\ub7ff","\ub800","\ub801","\ub802","\ub803","\ub804","\ub805","\ub806","\ub807",  # ; LVT # Lo  [27] HANGUL SYLLABLE REOG..HANGUL SYLLABLE REOH
        "\ub809","\ub80a","\ub80b","\ub80c","\ub80d","\ub80e","\ub80f","\ub810","\ub811","\ub812","\ub813","\ub814","\ub815","\ub816","\ub817","\ub818","\ub819","\ub81a","\ub81b","\ub81c","\ub81d","\ub81e","\ub81f","\ub820","\ub821","\ub822","\ub823",  # ; LVT # Lo  [27] HANGUL SYLLABLE REG..HANGUL SYLLABLE REH
        "\ub825","\ub826","\ub827","\ub828","\ub829","\ub82a","\ub82b","\ub82c","\ub82d","\ub82e","\ub82f","\ub830","\ub831","\ub832","\ub833","\ub834","\ub835","\ub836","\ub837","\ub838","\ub839","\ub83a","\ub83b","\ub83c","\ub83d","\ub83e","\ub83f",  # ; LVT # Lo  [27] HANGUL SYLLABLE RYEOG..HANGUL SYLLABLE RYEOH
        "\ub841","\ub842","\ub843","\ub844","\ub845","\ub846","\ub847","\ub848","\ub849","\ub84a","\ub84b","\ub84c","\ub84d","\ub84e","\ub84f","\ub850","\ub851","\ub852","\ub853","\ub854","\ub855","\ub856","\ub857","\ub858","\ub859","\ub85a","\ub85b",  # ; LVT # Lo  [27] HANGUL SYLLABLE RYEG..HANGUL SYLLABLE RYEH
        "\ub85d","\ub85e","\ub85f","\ub860","\ub861","\ub862","\ub863","\ub864","\ub865","\ub866","\ub867","\ub868","\ub869","\ub86a","\ub86b","\ub86c","\ub86d","\ub86e","\ub86f","\ub870","\ub871","\ub872","\ub873","\ub874","\ub875","\ub876","\ub877",  # ; LVT # Lo  [27] HANGUL SYLLABLE ROG..HANGUL SYLLABLE ROH
        "\ub879","\ub87a","\ub87b","\ub87c","\ub87d","\ub87e","\ub87f","\ub880","\ub881","\ub882","\ub883","\ub884","\ub885","\ub886","\ub887","\ub888","\ub889","\ub88a","\ub88b","\ub88c","\ub88d","\ub88e","\ub88f","\ub890","\ub891","\ub892","\ub893",  # ; LVT # Lo  [27] HANGUL SYLLABLE RWAG..HANGUL SYLLABLE RWAH
        "\ub895","\ub896","\ub897","\ub898","\ub899","\ub89a","\ub89b","\ub89c","\ub89d","\ub89e","\ub89f","\ub8a0","\ub8a1","\ub8a2","\ub8a3","\ub8a4","\ub8a5","\ub8a6","\ub8a7","\ub8a8","\ub8a9","\ub8aa","\ub8ab","\ub8ac","\ub8ad","\ub8ae","\ub8af",  # ; LVT # Lo  [27] HANGUL SYLLABLE RWAEG..HANGUL SYLLABLE RWAEH
        "\ub8b1","\ub8b2","\ub8b3","\ub8b4","\ub8b5","\ub8b6","\ub8b7","\ub8b8","\ub8b9","\ub8ba","\ub8bb","\ub8bc","\ub8bd","\ub8be","\ub8bf","\ub8c0","\ub8c1","\ub8c2","\ub8c3","\ub8c4","\ub8c5","\ub8c6","\ub8c7","\ub8c8","\ub8c9","\ub8ca","\ub8cb",  # ; LVT # Lo  [27] HANGUL SYLLABLE ROEG..HANGUL SYLLABLE ROEH
        "\ub8cd","\ub8ce","\ub8cf","\ub8d0","\ub8d1","\ub8d2","\ub8d3","\ub8d4","\ub8d5","\ub8d6","\ub8d7","\ub8d8","\ub8d9","\ub8da","\ub8db","\ub8dc","\ub8dd","\ub8de","\ub8df","\ub8e0","\ub8e1","\ub8e2","\ub8e3","\ub8e4","\ub8e5","\ub8e6","\ub8e7",  # ; LVT # Lo  [27] HANGUL SYLLABLE RYOG..HANGUL SYLLABLE RYOH
        "\ub8e9","\ub8ea","\ub8eb","\ub8ec","\ub8ed","\ub8ee","\ub8ef","\ub8f0","\ub8f1","\ub8f2","\ub8f3","\ub8f4","\ub8f5","\ub8f6","\ub8f7","\ub8f8","\ub8f9","\ub8fa","\ub8fb","\ub8fc","\ub8fd","\ub8fe","\ub8ff","\ub900","\ub901","\ub902","\ub903",  # ; LVT # Lo  [27] HANGUL SYLLABLE RUG..HANGUL SYLLABLE RUH
        "\ub905","\ub906","\ub907","\ub908","\ub909","\ub90a","\ub90b","\ub90c","\ub90d","\ub90e","\ub90f","\ub910","\ub911","\ub912","\ub913","\ub914","\ub915","\ub916","\ub917","\ub918","\ub919","\ub91a","\ub91b","\ub91c","\ub91d","\ub91e","\ub91f",  # ; LVT # Lo  [27] HANGUL SYLLABLE RWEOG..HANGUL SYLLABLE RWEOH
        "\ub921","\ub922","\ub923","\ub924","\ub925","\ub926","\ub927","\ub928","\ub929","\ub92a","\ub92b","\ub92c","\ub92d","\ub92e","\ub92f","\ub930","\ub931","\ub932","\ub933","\ub934","\ub935","\ub936","\ub937","\ub938","\ub939","\ub93a","\ub93b",  # ; LVT # Lo  [27] HANGUL SYLLABLE RWEG..HANGUL SYLLABLE RWEH
        "\ub93d","\ub93e","\ub93f","\ub940","\ub941","\ub942","\ub943","\ub944","\ub945","\ub946","\ub947","\ub948","\ub949","\ub94a","\ub94b","\ub94c","\ub94d","\ub94e","\ub94f","\ub950","\ub951","\ub952","\ub953","\ub954","\ub955","\ub956","\ub957",  # ; LVT # Lo  [27] HANGUL SYLLABLE RWIG..HANGUL SYLLABLE RWIH
        "\ub959","\ub95a","\ub95b","\ub95c","\ub95d","\ub95e","\ub95f","\ub960","\ub961","\ub962","\ub963","\ub964","\ub965","\ub966","\ub967","\ub968","\ub969","\ub96a","\ub96b","\ub96c","\ub96d","\ub96e","\ub96f","\ub970","\ub971","\ub972","\ub973",  # ; LVT # Lo  [27] HANGUL SYLLABLE RYUG..HANGUL SYLLABLE RYUH
        "\ub975","\ub976","\ub977","\ub978","\ub979","\ub97a","\ub97b","\ub97c","\ub97d","\ub97e","\ub97f","\ub980","\ub981","\ub982","\ub983","\ub984","\ub985","\ub986","\ub987","\ub988","\ub989","\ub98a","\ub98b","\ub98c","\ub98d","\ub98e","\ub98f",  # ; LVT # Lo  [27] HANGUL SYLLABLE REUG..HANGUL SYLLABLE REUH
        "\ub991","\ub992","\ub993","\ub994","\ub995","\ub996","\ub997","\ub998","\ub999","\ub99a","\ub99b","\ub99c","\ub99d","\ub99e","\ub99f","\ub9a0","\ub9a1","\ub9a2","\ub9a3","\ub9a4","\ub9a5","\ub9a6","\ub9a7","\ub9a8","\ub9a9","\ub9aa","\ub9ab",  # ; LVT # Lo  [27] HANGUL SYLLABLE RYIG..HANGUL SYLLABLE RYIH
        "\ub9ad","\ub9ae","\ub9af","\ub9b0","\ub9b1","\ub9b2","\ub9b3","\ub9b4","\ub9b5","\ub9b6","\ub9b7","\ub9b8","\ub9b9","\ub9ba","\ub9bb","\ub9bc","\ub9bd","\ub9be","\ub9bf","\ub9c0","\ub9c1","\ub9c2","\ub9c3","\ub9c4","\ub9c5","\ub9c6","\ub9c7",  # ; LVT # Lo  [27] HANGUL SYLLABLE RIG..HANGUL SYLLABLE RIH
        "\ub9c9","\ub9ca","\ub9cb","\ub9cc","\ub9cd","\ub9ce","\ub9cf","\ub9d0","\ub9d1","\ub9d2","\ub9d3","\ub9d4","\ub9d5","\ub9d6","\ub9d7","\ub9d8","\ub9d9","\ub9da","\ub9db","\ub9dc","\ub9dd","\ub9de","\ub9df","\ub9e0","\ub9e1","\ub9e2","\ub9e3",  # ; LVT # Lo  [27] HANGUL SYLLABLE MAG..HANGUL SYLLABLE MAH
        "\ub9e5","\ub9e6","\ub9e7","\ub9e8","\ub9e9","\ub9ea","\ub9eb","\ub9ec","\ub9ed","\ub9ee","\ub9ef","\ub9f0","\ub9f1","\ub9f2","\ub9f3","\ub9f4","\ub9f5","\ub9f6","\ub9f7","\ub9f8","\ub9f9","\ub9fa","\ub9fb","\ub9fc","\ub9fd","\ub9fe","\ub9ff",  # ; LVT # Lo  [27] HANGUL SYLLABLE MAEG..HANGUL SYLLABLE MAEH
        "\uba01","\uba02","\uba03","\uba04","\uba05","\uba06","\uba07","\uba08","\uba09","\uba0a","\uba0b","\uba0c","\uba0d","\uba0e","\uba0f","\uba10","\uba11","\uba12","\uba13","\uba14","\uba15","\uba16","\uba17","\uba18","\uba19","\uba1a","\uba1b",  # ; LVT # Lo  [27] HANGUL SYLLABLE MYAG..HANGUL SYLLABLE MYAH
        "\uba1d","\uba1e","\uba1f","\uba20","\uba21","\uba22","\uba23","\uba24","\uba25","\uba26","\uba27","\uba28","\uba29","\uba2a","\uba2b","\uba2c","\uba2d","\uba2e","\uba2f","\uba30","\uba31","\uba32","\uba33","\uba34","\uba35","\uba36","\uba37",  # ; LVT # Lo  [27] HANGUL SYLLABLE MYAEG..HANGUL SYLLABLE MYAEH
        "\uba39","\uba3a","\uba3b","\uba3c","\uba3d","\uba3e","\uba3f","\uba40","\uba41","\uba42","\uba43","\uba44","\uba45","\uba46","\uba47","\uba48","\uba49","\uba4a","\uba4b","\uba4c","\uba4d","\uba4e","\uba4f","\uba50","\uba51","\uba52","\uba53",  # ; LVT # Lo  [27] HANGUL SYLLABLE MEOG..HANGUL SYLLABLE MEOH
        "\uba55","\uba56","\uba57","\uba58","\uba59","\uba5a","\uba5b","\uba5c","\uba5d","\uba5e","\uba5f","\uba60","\uba61","\uba62","\uba63","\uba64","\uba65","\uba66","\uba67","\uba68","\uba69","\uba6a","\uba6b","\uba6c","\uba6d","\uba6e","\uba6f",  # ; LVT # Lo  [27] HANGUL SYLLABLE MEG..HANGUL SYLLABLE MEH
        "\uba71","\uba72","\uba73","\uba74","\uba75","\uba76","\uba77","\uba78","\uba79","\uba7a","\uba7b","\uba7c","\uba7d","\uba7e","\uba7f","\uba80","\uba81","\uba82","\uba83","\uba84","\uba85","\uba86","\uba87","\uba88","\uba89","\uba8a","\uba8b",  # ; LVT # Lo  [27] HANGUL SYLLABLE MYEOG..HANGUL SYLLABLE MYEOH
        "\uba8d","\uba8e","\uba8f","\uba90","\uba91","\uba92","\uba93","\uba94","\uba95","\uba96","\uba97","\uba98","\uba99","\uba9a","\uba9b","\uba9c","\uba9d","\uba9e","\uba9f","\ubaa0","\ubaa1","\ubaa2","\ubaa3","\ubaa4","\ubaa5","\ubaa6","\ubaa7",  # ; LVT # Lo  [27] HANGUL SYLLABLE MYEG..HANGUL SYLLABLE MYEH
        "\ubaa9","\ubaaa","\ubaab","\ubaac","\ubaad","\ubaae","\ubaaf","\ubab0","\ubab1","\ubab2","\ubab3","\ubab4","\ubab5","\ubab6","\ubab7","\ubab8","\ubab9","\ubaba","\ubabb","\ubabc","\ubabd","\ubabe","\ubabf","\ubac0","\ubac1","\ubac2","\ubac3",  # ; LVT # Lo  [27] HANGUL SYLLABLE MOG..HANGUL SYLLABLE MOH
        "\ubac5","\ubac6","\ubac7","\ubac8","\ubac9","\ubaca","\ubacb","\ubacc","\ubacd","\ubace","\ubacf","\ubad0","\ubad1","\ubad2","\ubad3","\ubad4","\ubad5","\ubad6","\ubad7","\ubad8","\ubad9","\ubada","\ubadb","\ubadc","\ubadd","\ubade","\ubadf",  # ; LVT # Lo  [27] HANGUL SYLLABLE MWAG..HANGUL SYLLABLE MWAH
        "\ubae1","\ubae2","\ubae3","\ubae4","\ubae5","\ubae6","\ubae7","\ubae8","\ubae9","\ubaea","\ubaeb","\ubaec","\ubaed","\ubaee","\ubaef","\ubaf0","\ubaf1","\ubaf2","\ubaf3","\ubaf4","\ubaf5","\ubaf6","\ubaf7","\ubaf8","\ubaf9","\ubafa","\ubafb",  # ; LVT # Lo  [27] HANGUL SYLLABLE MWAEG..HANGUL SYLLABLE MWAEH
        "\ubafd","\ubafe","\ubaff","\ubb00","\ubb01","\ubb02","\ubb03","\ubb04","\ubb05","\ubb06","\ubb07","\ubb08","\ubb09","\ubb0a","\ubb0b","\ubb0c","\ubb0d","\ubb0e","\ubb0f","\ubb10","\ubb11","\ubb12","\ubb13","\ubb14","\ubb15","\ubb16","\ubb17",  # ; LVT # Lo  [27] HANGUL SYLLABLE MOEG..HANGUL SYLLABLE MOEH
        "\ubb19","\ubb1a","\ubb1b","\ubb1c","\ubb1d","\ubb1e","\ubb1f","\ubb20","\ubb21","\ubb22","\ubb23","\ubb24","\ubb25","\ubb26","\ubb27","\ubb28","\ubb29","\ubb2a","\ubb2b","\ubb2c","\ubb2d","\ubb2e","\ubb2f","\ubb30","\ubb31","\ubb32","\ubb33",  # ; LVT # Lo  [27] HANGUL SYLLABLE MYOG..HANGUL SYLLABLE MYOH
        "\ubb35","\ubb36","\ubb37","\ubb38","\ubb39","\ubb3a","\ubb3b","\ubb3c","\ubb3d","\ubb3e","\ubb3f","\ubb40","\ubb41","\ubb42","\ubb43","\ubb44","\ubb45","\ubb46","\ubb47","\ubb48","\ubb49","\ubb4a","\ubb4b","\ubb4c","\ubb4d","\ubb4e","\ubb4f",  # ; LVT # Lo  [27] HANGUL SYLLABLE MUG..HANGUL SYLLABLE MUH
        "\ubb51","\ubb52","\ubb53","\ubb54","\ubb55","\ubb56","\ubb57","\ubb58","\ubb59","\ubb5a","\ubb5b","\ubb5c","\ubb5d","\ubb5e","\ubb5f","\ubb60","\ubb61","\ubb62","\ubb63","\ubb64","\ubb65","\ubb66","\ubb67","\ubb68","\ubb69","\ubb6a","\ubb6b",  # ; LVT # Lo  [27] HANGUL SYLLABLE MWEOG..HANGUL SYLLABLE MWEOH
        "\ubb6d","\ubb6e","\ubb6f","\ubb70","\ubb71","\ubb72","\ubb73","\ubb74","\ubb75","\ubb76","\ubb77","\ubb78","\ubb79","\ubb7a","\ubb7b","\ubb7c","\ubb7d","\ubb7e","\ubb7f","\ubb80","\ubb81","\ubb82","\ubb83","\ubb84","\ubb85","\ubb86","\ubb87",  # ; LVT # Lo  [27] HANGUL SYLLABLE MWEG..HANGUL SYLLABLE MWEH
        "\ubb89","\ubb8a","\ubb8b","\ubb8c","\ubb8d","\ubb8e","\ubb8f","\ubb90","\ubb91","\ubb92","\ubb93","\ubb94","\ubb95","\ubb96","\ubb97","\ubb98","\ubb99","\ubb9a","\ubb9b","\ubb9c","\ubb9d","\ubb9e","\ubb9f","\ubba0","\ubba1","\ubba2","\ubba3",  # ; LVT # Lo  [27] HANGUL SYLLABLE MWIG..HANGUL SYLLABLE MWIH
        "\ubba5","\ubba6","\ubba7","\ubba8","\ubba9","\ubbaa","\ubbab","\ubbac","\ubbad","\ubbae","\ubbaf","\ubbb0","\ubbb1","\ubbb2","\ubbb3","\ubbb4","\ubbb5","\ubbb6","\ubbb7","\ubbb8","\ubbb9","\ubbba","\ubbbb","\ubbbc","\ubbbd","\ubbbe","\ubbbf",  # ; LVT # Lo  [27] HANGUL SYLLABLE MYUG..HANGUL SYLLABLE MYUH
        "\ubbc1","\ubbc2","\ubbc3","\ubbc4","\ubbc5","\ubbc6","\ubbc7","\ubbc8","\ubbc9","\ubbca","\ubbcb","\ubbcc","\ubbcd","\ubbce","\ubbcf","\ubbd0","\ubbd1","\ubbd2","\ubbd3","\ubbd4","\ubbd5","\ubbd6","\ubbd7","\ubbd8","\ubbd9","\ubbda","\ubbdb",  # ; LVT # Lo  [27] HANGUL SYLLABLE MEUG..HANGUL SYLLABLE MEUH
        "\ubbdd","\ubbde","\ubbdf","\ubbe0","\ubbe1","\ubbe2","\ubbe3","\ubbe4","\ubbe5","\ubbe6","\ubbe7","\ubbe8","\ubbe9","\ubbea","\ubbeb","\ubbec","\ubbed","\ubbee","\ubbef","\ubbf0","\ubbf1","\ubbf2","\ubbf3","\ubbf4","\ubbf5","\ubbf6","\ubbf7",  # ; LVT # Lo  [27] HANGUL SYLLABLE MYIG..HANGUL SYLLABLE MYIH
        "\ubbf9","\ubbfa","\ubbfb","\ubbfc","\ubbfd","\ubbfe","\ubbff","\ubc00","\ubc01","\ubc02","\ubc03","\ubc04","\ubc05","\ubc06","\ubc07","\ubc08","\ubc09","\ubc0a","\ubc0b","\ubc0c","\ubc0d","\ubc0e","\ubc0f","\ubc10","\ubc11","\ubc12","\ubc13",  # ; LVT # Lo  [27] HANGUL SYLLABLE MIG..HANGUL SYLLABLE MIH
        "\ubc15","\ubc16","\ubc17","\ubc18","\ubc19","\ubc1a","\ubc1b","\ubc1c","\ubc1d","\ubc1e","\ubc1f","\ubc20","\ubc21","\ubc22","\ubc23","\ubc24","\ubc25","\ubc26","\ubc27","\ubc28","\ubc29","\ubc2a","\ubc2b","\ubc2c","\ubc2d","\ubc2e","\ubc2f",  # ; LVT # Lo  [27] HANGUL SYLLABLE BAG..HANGUL SYLLABLE BAH
        "\ubc31","\ubc32","\ubc33","\ubc34","\ubc35","\ubc36","\ubc37","\ubc38","\ubc39","\ubc3a","\ubc3b","\ubc3c","\ubc3d","\ubc3e","\ubc3f","\ubc40","\ubc41","\ubc42","\ubc43","\ubc44","\ubc45","\ubc46","\ubc47","\ubc48","\ubc49","\ubc4a","\ubc4b",  # ; LVT # Lo  [27] HANGUL SYLLABLE BAEG..HANGUL SYLLABLE BAEH
        "\ubc4d","\ubc4e","\ubc4f","\ubc50","\ubc51","\ubc52","\ubc53","\ubc54","\ubc55","\ubc56","\ubc57","\ubc58","\ubc59","\ubc5a","\ubc5b","\ubc5c","\ubc5d","\ubc5e","\ubc5f","\ubc60","\ubc61","\ubc62","\ubc63","\ubc64","\ubc65","\ubc66","\ubc67",  # ; LVT # Lo  [27] HANGUL SYLLABLE BYAG..HANGUL SYLLABLE BYAH
        "\ubc69","\ubc6a","\ubc6b","\ubc6c","\ubc6d","\ubc6e","\ubc6f","\ubc70","\ubc71","\ubc72","\ubc73","\ubc74","\ubc75","\ubc76","\ubc77","\ubc78","\ubc79","\ubc7a","\ubc7b","\ubc7c","\ubc7d","\ubc7e","\ubc7f","\ubc80","\ubc81","\ubc82","\ubc83",  # ; LVT # Lo  [27] HANGUL SYLLABLE BYAEG..HANGUL SYLLABLE BYAEH
        "\ubc85","\ubc86","\ubc87","\ubc88","\ubc89","\ubc8a","\ubc8b","\ubc8c","\ubc8d","\ubc8e","\ubc8f","\ubc90","\ubc91","\ubc92","\ubc93","\ubc94","\ubc95","\ubc96","\ubc97","\ubc98","\ubc99","\ubc9a","\ubc9b","\ubc9c","\ubc9d","\ubc9e","\ubc9f",  # ; LVT # Lo  [27] HANGUL SYLLABLE BEOG..HANGUL SYLLABLE BEOH
        "\ubca1","\ubca2","\ubca3","\ubca4","\ubca5","\ubca6","\ubca7","\ubca8","\ubca9","\ubcaa","\ubcab","\ubcac","\ubcad","\ubcae","\ubcaf","\ubcb0","\ubcb1","\ubcb2","\ubcb3","\ubcb4","\ubcb5","\ubcb6","\ubcb7","\ubcb8","\ubcb9","\ubcba","\ubcbb",  # ; LVT # Lo  [27] HANGUL SYLLABLE BEG..HANGUL SYLLABLE BEH
        "\ubcbd","\ubcbe","\ubcbf","\ubcc0","\ubcc1","\ubcc2","\ubcc3","\ubcc4","\ubcc5","\ubcc6","\ubcc7","\ubcc8","\ubcc9","\ubcca","\ubccb","\ubccc","\ubccd","\ubcce","\ubccf","\ubcd0","\ubcd1","\ubcd2","\ubcd3","\ubcd4","\ubcd5","\ubcd6","\ubcd7",  # ; LVT # Lo  [27] HANGUL SYLLABLE BYEOG..HANGUL SYLLABLE BYEOH
        "\ubcd9","\ubcda","\ubcdb","\ubcdc","\ubcdd","\ubcde","\ubcdf","\ubce0","\ubce1","\ubce2","\ubce3","\ubce4","\ubce5","\ubce6","\ubce7","\ubce8","\ubce9","\ubcea","\ubceb","\ubcec","\ubced","\ubcee","\ubcef","\ubcf0","\ubcf1","\ubcf2","\ubcf3",  # ; LVT # Lo  [27] HANGUL SYLLABLE BYEG..HANGUL SYLLABLE BYEH
        "\ubcf5","\ubcf6","\ubcf7","\ubcf8","\ubcf9","\ubcfa","\ubcfb","\ubcfc","\ubcfd","\ubcfe","\ubcff","\ubd00","\ubd01","\ubd02","\ubd03","\ubd04","\ubd05","\ubd06","\ubd07","\ubd08","\ubd09","\ubd0a","\ubd0b","\ubd0c","\ubd0d","\ubd0e","\ubd0f",  # ; LVT # Lo  [27] HANGUL SYLLABLE BOG..HANGUL SYLLABLE BOH
        "\ubd11","\ubd12","\ubd13","\ubd14","\ubd15","\ubd16","\ubd17","\ubd18","\ubd19","\ubd1a","\ubd1b","\ubd1c","\ubd1d","\ubd1e","\ubd1f","\ubd20","\ubd21","\ubd22","\ubd23","\ubd24","\ubd25","\ubd26","\ubd27","\ubd28","\ubd29","\ubd2a","\ubd2b",  # ; LVT # Lo  [27] HANGUL SYLLABLE BWAG..HANGUL SYLLABLE BWAH
        "\ubd2d","\ubd2e","\ubd2f","\ubd30","\ubd31","\ubd32","\ubd33","\ubd34","\ubd35","\ubd36","\ubd37","\ubd38","\ubd39","\ubd3a","\ubd3b","\ubd3c","\ubd3d","\ubd3e","\ubd3f","\ubd40","\ubd41","\ubd42","\ubd43","\ubd44","\ubd45","\ubd46","\ubd47",  # ; LVT # Lo  [27] HANGUL SYLLABLE BWAEG..HANGUL SYLLABLE BWAEH
        "\ubd49","\ubd4a","\ubd4b","\ubd4c","\ubd4d","\ubd4e","\ubd4f","\ubd50","\ubd51","\ubd52","\ubd53","\ubd54","\ubd55","\ubd56","\ubd57","\ubd58","\ubd59","\ubd5a","\ubd5b","\ubd5c","\ubd5d","\ubd5e","\ubd5f","\ubd60","\ubd61","\ubd62","\ubd63",  # ; LVT # Lo  [27] HANGUL SYLLABLE BOEG..HANGUL SYLLABLE BOEH
        "\ubd65","\ubd66","\ubd67","\ubd68","\ubd69","\ubd6a","\ubd6b","\ubd6c","\ubd6d","\ubd6e","\ubd6f","\ubd70","\ubd71","\ubd72","\ubd73","\ubd74","\ubd75","\ubd76","\ubd77","\ubd78","\ubd79","\ubd7a","\ubd7b","\ubd7c","\ubd7d","\ubd7e","\ubd7f",  # ; LVT # Lo  [27] HANGUL SYLLABLE BYOG..HANGUL SYLLABLE BYOH
        "\ubd81","\ubd82","\ubd83","\ubd84","\ubd85","\ubd86","\ubd87","\ubd88","\ubd89","\ubd8a","\ubd8b","\ubd8c","\ubd8d","\ubd8e","\ubd8f","\ubd90","\ubd91","\ubd92","\ubd93","\ubd94","\ubd95","\ubd96","\ubd97","\ubd98","\ubd99","\ubd9a","\ubd9b",  # ; LVT # Lo  [27] HANGUL SYLLABLE BUG..HANGUL SYLLABLE BUH
        "\ubd9d","\ubd9e","\ubd9f","\ubda0","\ubda1","\ubda2","\ubda3","\ubda4","\ubda5","\ubda6","\ubda7","\ubda8","\ubda9","\ubdaa","\ubdab","\ubdac","\ubdad","\ubdae","\ubdaf","\ubdb0","\ubdb1","\ubdb2","\ubdb3","\ubdb4","\ubdb5","\ubdb6","\ubdb7",  # ; LVT # Lo  [27] HANGUL SYLLABLE BWEOG..HANGUL SYLLABLE BWEOH
        "\ubdb9","\ubdba","\ubdbb","\ubdbc","\ubdbd","\ubdbe","\ubdbf","\ubdc0","\ubdc1","\ubdc2","\ubdc3","\ubdc4","\ubdc5","\ubdc6","\ubdc7","\ubdc8","\ubdc9","\ubdca","\ubdcb","\ubdcc","\ubdcd","\ubdce","\ubdcf","\ubdd0","\ubdd1","\ubdd2","\ubdd3",  # ; LVT # Lo  [27] HANGUL SYLLABLE BWEG..HANGUL SYLLABLE BWEH
        "\ubdd5","\ubdd6","\ubdd7","\ubdd8","\ubdd9","\ubdda","\ubddb","\ubddc","\ubddd","\ubdde","\ubddf","\ubde0","\ubde1","\ubde2","\ubde3","\ubde4","\ubde5","\ubde6","\ubde7","\ubde8","\ubde9","\ubdea","\ubdeb","\ubdec","\ubded","\ubdee","\ubdef",  # ; LVT # Lo  [27] HANGUL SYLLABLE BWIG..HANGUL SYLLABLE BWIH
        "\ubdf1","\ubdf2","\ubdf3","\ubdf4","\ubdf5","\ubdf6","\ubdf7","\ubdf8","\ubdf9","\ubdfa","\ubdfb","\ubdfc","\ubdfd","\ubdfe","\ubdff","\ube00","\ube01","\ube02","\ube03","\ube04","\ube05","\ube06","\ube07","\ube08","\ube09","\ube0a","\ube0b",  # ; LVT # Lo  [27] HANGUL SYLLABLE BYUG..HANGUL SYLLABLE BYUH
        "\ube0d","\ube0e","\ube0f","\ube10","\ube11","\ube12","\ube13","\ube14","\ube15","\ube16","\ube17","\ube18","\ube19","\ube1a","\ube1b","\ube1c","\ube1d","\ube1e","\ube1f","\ube20","\ube21","\ube22","\ube23","\ube24","\ube25","\ube26","\ube27",  # ; LVT # Lo  [27] HANGUL SYLLABLE BEUG..HANGUL SYLLABLE BEUH
        "\ube29","\ube2a","\ube2b","\ube2c","\ube2d","\ube2e","\ube2f","\ube30","\ube31","\ube32","\ube33","\ube34","\ube35","\ube36","\ube37","\ube38","\ube39","\ube3a","\ube3b","\ube3c","\ube3d","\ube3e","\ube3f","\ube40","\ube41","\ube42","\ube43",  # ; LVT # Lo  [27] HANGUL SYLLABLE BYIG..HANGUL SYLLABLE BYIH
        "\ube45","\ube46","\ube47","\ube48","\ube49","\ube4a","\ube4b","\ube4c","\ube4d","\ube4e","\ube4f","\ube50","\ube51","\ube52","\ube53","\ube54","\ube55","\ube56","\ube57","\ube58","\ube59","\ube5a","\ube5b","\ube5c","\ube5d","\ube5e","\ube5f",  # ; LVT # Lo  [27] HANGUL SYLLABLE BIG..HANGUL SYLLABLE BIH
        "\ube61","\ube62","\ube63","\ube64","\ube65","\ube66","\ube67","\ube68","\ube69","\ube6a","\ube6b","\ube6c","\ube6d","\ube6e","\ube6f","\ube70","\ube71","\ube72","\ube73","\ube74","\ube75","\ube76","\ube77","\ube78","\ube79","\ube7a","\ube7b",  # ; LVT # Lo  [27] HANGUL SYLLABLE BBAG..HANGUL SYLLABLE BBAH
        "\ube7d","\ube7e","\ube7f","\ube80","\ube81","\ube82","\ube83","\ube84","\ube85","\ube86","\ube87","\ube88","\ube89","\ube8a","\ube8b","\ube8c","\ube8d","\ube8e","\ube8f","\ube90","\ube91","\ube92","\ube93","\ube94","\ube95","\ube96","\ube97",  # ; LVT # Lo  [27] HANGUL SYLLABLE BBAEG..HANGUL SYLLABLE BBAEH
        "\ube99","\ube9a","\ube9b","\ube9c","\ube9d","\ube9e","\ube9f","\ubea0","\ubea1","\ubea2","\ubea3","\ubea4","\ubea5","\ubea6","\ubea7","\ubea8","\ubea9","\ubeaa","\ubeab","\ubeac","\ubead","\ubeae","\ubeaf","\ubeb0","\ubeb1","\ubeb2","\ubeb3",  # ; LVT # Lo  [27] HANGUL SYLLABLE BBYAG..HANGUL SYLLABLE BBYAH
        "\ubeb5","\ubeb6","\ubeb7","\ubeb8","\ubeb9","\ubeba","\ubebb","\ubebc","\ubebd","\ubebe","\ubebf","\ubec0","\ubec1","\ubec2","\ubec3","\ubec4","\ubec5","\ubec6","\ubec7","\ubec8","\ubec9","\ubeca","\ubecb","\ubecc","\ubecd","\ubece","\ubecf",  # ; LVT # Lo  [27] HANGUL SYLLABLE BBYAEG..HANGUL SYLLABLE BBYAEH
        "\ubed1","\ubed2","\ubed3","\ubed4","\ubed5","\ubed6","\ubed7","\ubed8","\ubed9","\ubeda","\ubedb","\ubedc","\ubedd","\ubede","\ubedf","\ubee0","\ubee1","\ubee2","\ubee3","\ubee4","\ubee5","\ubee6","\ubee7","\ubee8","\ubee9","\ubeea","\ubeeb",  # ; LVT # Lo  [27] HANGUL SYLLABLE BBEOG..HANGUL SYLLABLE BBEOH
        "\ubeed","\ubeee","\ubeef","\ubef0","\ubef1","\ubef2","\ubef3","\ubef4","\ubef5","\ubef6","\ubef7","\ubef8","\ubef9","\ubefa","\ubefb","\ubefc","\ubefd","\ubefe","\ubeff","\ubf00","\ubf01","\ubf02","\ubf03","\ubf04","\ubf05","\ubf06","\ubf07",  # ; LVT # Lo  [27] HANGUL SYLLABLE BBEG..HANGUL SYLLABLE BBEH
        "\ubf09","\ubf0a","\ubf0b","\ubf0c","\ubf0d","\ubf0e","\ubf0f","\ubf10","\ubf11","\ubf12","\ubf13","\ubf14","\ubf15","\ubf16","\ubf17","\ubf18","\ubf19","\ubf1a","\ubf1b","\ubf1c","\ubf1d","\ubf1e","\ubf1f","\ubf20","\ubf21","\ubf22","\ubf23",  # ; LVT # Lo  [27] HANGUL SYLLABLE BBYEOG..HANGUL SYLLABLE BBYEOH
        "\ubf25","\ubf26","\ubf27","\ubf28","\ubf29","\ubf2a","\ubf2b","\ubf2c","\ubf2d","\ubf2e","\ubf2f","\ubf30","\ubf31","\ubf32","\ubf33","\ubf34","\ubf35","\ubf36","\ubf37","\ubf38","\ubf39","\ubf3a","\ubf3b","\ubf3c","\ubf3d","\ubf3e","\ubf3f",  # ; LVT # Lo  [27] HANGUL SYLLABLE BBYEG..HANGUL SYLLABLE BBYEH
        "\ubf41","\ubf42","\ubf43","\ubf44","\ubf45","\ubf46","\ubf47","\ubf48","\ubf49","\ubf4a","\ubf4b","\ubf4c","\ubf4d","\ubf4e","\ubf4f","\ubf50","\ubf51","\ubf52","\ubf53","\ubf54","\ubf55","\ubf56","\ubf57","\ubf58","\ubf59","\ubf5a","\ubf5b",  # ; LVT # Lo  [27] HANGUL SYLLABLE BBOG..HANGUL SYLLABLE BBOH
        "\ubf5d","\ubf5e","\ubf5f","\ubf60","\ubf61","\ubf62","\ubf63","\ubf64","\ubf65","\ubf66","\ubf67","\ubf68","\ubf69","\ubf6a","\ubf6b","\ubf6c","\ubf6d","\ubf6e","\ubf6f","\ubf70","\ubf71","\ubf72","\ubf73","\ubf74","\ubf75","\ubf76","\ubf77",  # ; LVT # Lo  [27] HANGUL SYLLABLE BBWAG..HANGUL SYLLABLE BBWAH
        "\ubf79","\ubf7a","\ubf7b","\ubf7c","\ubf7d","\ubf7e","\ubf7f","\ubf80","\ubf81","\ubf82","\ubf83","\ubf84","\ubf85","\ubf86","\ubf87","\ubf88","\ubf89","\ubf8a","\ubf8b","\ubf8c","\ubf8d","\ubf8e","\ubf8f","\ubf90","\ubf91","\ubf92","\ubf93",  # ; LVT # Lo  [27] HANGUL SYLLABLE BBWAEG..HANGUL SYLLABLE BBWAEH
        "\ubf95","\ubf96","\ubf97","\ubf98","\ubf99","\ubf9a","\ubf9b","\ubf9c","\ubf9d","\ubf9e","\ubf9f","\ubfa0","\ubfa1","\ubfa2","\ubfa3","\ubfa4","\ubfa5","\ubfa6","\ubfa7","\ubfa8","\ubfa9","\ubfaa","\ubfab","\ubfac","\ubfad","\ubfae","\ubfaf",  # ; LVT # Lo  [27] HANGUL SYLLABLE BBOEG..HANGUL SYLLABLE BBOEH
        "\ubfb1","\ubfb2","\ubfb3","\ubfb4","\ubfb5","\ubfb6","\ubfb7","\ubfb8","\ubfb9","\ubfba","\ubfbb","\ubfbc","\ubfbd","\ubfbe","\ubfbf","\ubfc0","\ubfc1","\ubfc2","\ubfc3","\ubfc4","\ubfc5","\ubfc6","\ubfc7","\ubfc8","\ubfc9","\ubfca","\ubfcb",  # ; LVT # Lo  [27] HANGUL SYLLABLE BBYOG..HANGUL SYLLABLE BBYOH
        "\ubfcd","\ubfce","\ubfcf","\ubfd0","\ubfd1","\ubfd2","\ubfd3","\ubfd4","\ubfd5","\ubfd6","\ubfd7","\ubfd8","\ubfd9","\ubfda","\ubfdb","\ubfdc","\ubfdd","\ubfde","\ubfdf","\ubfe0","\ubfe1","\ubfe2","\ubfe3","\ubfe4","\ubfe5","\ubfe6","\ubfe7",  # ; LVT # Lo  [27] HANGUL SYLLABLE BBUG..HANGUL SYLLABLE BBUH
        "\ubfe9","\ubfea","\ubfeb","\ubfec","\ubfed","\ubfee","\ubfef","\ubff0","\ubff1","\ubff2","\ubff3","\ubff4","\ubff5","\ubff6","\ubff7","\ubff8","\ubff9","\ubffa","\ubffb","\ubffc","\ubffd","\ubffe","\ubfff","\uc000","\uc001","\uc002","\uc003",  # ; LVT # Lo  [27] HANGUL SYLLABLE BBWEOG..HANGUL SYLLABLE BBWEOH
        "\uc005","\uc006","\uc007","\uc008","\uc009","\uc00a","\uc00b","\uc00c","\uc00d","\uc00e","\uc00f","\uc010","\uc011","\uc012","\uc013","\uc014","\uc015","\uc016","\uc017","\uc018","\uc019","\uc01a","\uc01b","\uc01c","\uc01d","\uc01e","\uc01f",  # ; LVT # Lo  [27] HANGUL SYLLABLE BBWEG..HANGUL SYLLABLE BBWEH
        "\uc021","\uc022","\uc023","\uc024","\uc025","\uc026","\uc027","\uc028","\uc029","\uc02a","\uc02b","\uc02c","\uc02d","\uc02e","\uc02f","\uc030","\uc031","\uc032","\uc033","\uc034","\uc035","\uc036","\uc037","\uc038","\uc039","\uc03a","\uc03b",  # ; LVT # Lo  [27] HANGUL SYLLABLE BBWIG..HANGUL SYLLABLE BBWIH
        "\uc03d","\uc03e","\uc03f","\uc040","\uc041","\uc042","\uc043","\uc044","\uc045","\uc046","\uc047","\uc048","\uc049","\uc04a","\uc04b","\uc04c","\uc04d","\uc04e","\uc04f","\uc050","\uc051","\uc052","\uc053","\uc054","\uc055","\uc056","\uc057",  # ; LVT # Lo  [27] HANGUL SYLLABLE BBYUG..HANGUL SYLLABLE BBYUH
        "\uc059","\uc05a","\uc05b","\uc05c","\uc05d","\uc05e","\uc05f","\uc060","\uc061","\uc062","\uc063","\uc064","\uc065","\uc066","\uc067","\uc068","\uc069","\uc06a","\uc06b","\uc06c","\uc06d","\uc06e","\uc06f","\uc070","\uc071","\uc072","\uc073",  # ; LVT # Lo  [27] HANGUL SYLLABLE BBEUG..HANGUL SYLLABLE BBEUH
        "\uc075","\uc076","\uc077","\uc078","\uc079","\uc07a","\uc07b","\uc07c","\uc07d","\uc07e","\uc07f","\uc080","\uc081","\uc082","\uc083","\uc084","\uc085","\uc086","\uc087","\uc088","\uc089","\uc08a","\uc08b","\uc08c","\uc08d","\uc08e","\uc08f",  # ; LVT # Lo  [27] HANGUL SYLLABLE BBYIG..HANGUL SYLLABLE BBYIH
        "\uc091","\uc092","\uc093","\uc094","\uc095","\uc096","\uc097","\uc098","\uc099","\uc09a","\uc09b","\uc09c","\uc09d","\uc09e","\uc09f","\uc0a0","\uc0a1","\uc0a2","\uc0a3","\uc0a4","\uc0a5","\uc0a6","\uc0a7","\uc0a8","\uc0a9","\uc0aa","\uc0ab",  # ; LVT # Lo  [27] HANGUL SYLLABLE BBIG..HANGUL SYLLABLE BBIH
        "\uc0ad","\uc0ae","\uc0af","\uc0b0","\uc0b1","\uc0b2","\uc0b3","\uc0b4","\uc0b5","\uc0b6","\uc0b7","\uc0b8","\uc0b9","\uc0ba","\uc0bb","\uc0bc","\uc0bd","\uc0be","\uc0bf","\uc0c0","\uc0c1","\uc0c2","\uc0c3","\uc0c4","\uc0c5","\uc0c6","\uc0c7",  # ; LVT # Lo  [27] HANGUL SYLLABLE SAG..HANGUL SYLLABLE SAH
        "\uc0c9","\uc0ca","\uc0cb","\uc0cc","\uc0cd","\uc0ce","\uc0cf","\uc0d0","\uc0d1","\uc0d2","\uc0d3","\uc0d4","\uc0d5","\uc0d6","\uc0d7","\uc0d8","\uc0d9","\uc0da","\uc0db","\uc0dc","\uc0dd","\uc0de","\uc0df","\uc0e0","\uc0e1","\uc0e2","\uc0e3",  # ; LVT # Lo  [27] HANGUL SYLLABLE SAEG..HANGUL SYLLABLE SAEH
        "\uc0e5","\uc0e6","\uc0e7","\uc0e8","\uc0e9","\uc0ea","\uc0eb","\uc0ec","\uc0ed","\uc0ee","\uc0ef","\uc0f0","\uc0f1","\uc0f2","\uc0f3","\uc0f4","\uc0f5","\uc0f6","\uc0f7","\uc0f8","\uc0f9","\uc0fa","\uc0fb","\uc0fc","\uc0fd","\uc0fe","\uc0ff",  # ; LVT # Lo  [27] HANGUL SYLLABLE SYAG..HANGUL SYLLABLE SYAH
        "\uc101","\uc102","\uc103","\uc104","\uc105","\uc106","\uc107","\uc108","\uc109","\uc10a","\uc10b","\uc10c","\uc10d","\uc10e","\uc10f","\uc110","\uc111","\uc112","\uc113","\uc114","\uc115","\uc116","\uc117","\uc118","\uc119","\uc11a","\uc11b",  # ; LVT # Lo  [27] HANGUL SYLLABLE SYAEG..HANGUL SYLLABLE SYAEH
        "\uc11d","\uc11e","\uc11f","\uc120","\uc121","\uc122","\uc123","\uc124","\uc125","\uc126","\uc127","\uc128","\uc129","\uc12a","\uc12b","\uc12c","\uc12d","\uc12e","\uc12f","\uc130","\uc131","\uc132","\uc133","\uc134","\uc135","\uc136","\uc137",  # ; LVT # Lo  [27] HANGUL SYLLABLE SEOG..HANGUL SYLLABLE SEOH
        "\uc139","\uc13a","\uc13b","\uc13c","\uc13d","\uc13e","\uc13f","\uc140","\uc141","\uc142","\uc143","\uc144","\uc145","\uc146","\uc147","\uc148","\uc149","\uc14a","\uc14b","\uc14c","\uc14d","\uc14e","\uc14f","\uc150","\uc151","\uc152","\uc153",  # ; LVT # Lo  [27] HANGUL SYLLABLE SEG..HANGUL SYLLABLE SEH
        "\uc155","\uc156","\uc157","\uc158","\uc159","\uc15a","\uc15b","\uc15c","\uc15d","\uc15e","\uc15f","\uc160","\uc161","\uc162","\uc163","\uc164","\uc165","\uc166","\uc167","\uc168","\uc169","\uc16a","\uc16b","\uc16c","\uc16d","\uc16e","\uc16f",  # ; LVT # Lo  [27] HANGUL SYLLABLE SYEOG..HANGUL SYLLABLE SYEOH
        "\uc171","\uc172","\uc173","\uc174","\uc175","\uc176","\uc177","\uc178","\uc179","\uc17a","\uc17b","\uc17c","\uc17d","\uc17e","\uc17f","\uc180","\uc181","\uc182","\uc183","\uc184","\uc185","\uc186","\uc187","\uc188","\uc189","\uc18a","\uc18b",  # ; LVT # Lo  [27] HANGUL SYLLABLE SYEG..HANGUL SYLLABLE SYEH
        "\uc18d","\uc18e","\uc18f","\uc190","\uc191","\uc192","\uc193","\uc194","\uc195","\uc196","\uc197","\uc198","\uc199","\uc19a","\uc19b","\uc19c","\uc19d","\uc19e","\uc19f","\uc1a0","\uc1a1","\uc1a2","\uc1a3","\uc1a4","\uc1a5","\uc1a6","\uc1a7",  # ; LVT # Lo  [27] HANGUL SYLLABLE SOG..HANGUL SYLLABLE SOH
        "\uc1a9","\uc1aa","\uc1ab","\uc1ac","\uc1ad","\uc1ae","\uc1af","\uc1b0","\uc1b1","\uc1b2","\uc1b3","\uc1b4","\uc1b5","\uc1b6","\uc1b7","\uc1b8","\uc1b9","\uc1ba","\uc1bb","\uc1bc","\uc1bd","\uc1be","\uc1bf","\uc1c0","\uc1c1","\uc1c2","\uc1c3",  # ; LVT # Lo  [27] HANGUL SYLLABLE SWAG..HANGUL SYLLABLE SWAH
        "\uc1c5","\uc1c6","\uc1c7","\uc1c8","\uc1c9","\uc1ca","\uc1cb","\uc1cc","\uc1cd","\uc1ce","\uc1cf","\uc1d0","\uc1d1","\uc1d2","\uc1d3","\uc1d4","\uc1d5","\uc1d6","\uc1d7","\uc1d8","\uc1d9","\uc1da","\uc1db","\uc1dc","\uc1dd","\uc1de","\uc1df",  # ; LVT # Lo  [27] HANGUL SYLLABLE SWAEG..HANGUL SYLLABLE SWAEH
        "\uc1e1","\uc1e2","\uc1e3","\uc1e4","\uc1e5","\uc1e6","\uc1e7","\uc1e8","\uc1e9","\uc1ea","\uc1eb","\uc1ec","\uc1ed","\uc1ee","\uc1ef","\uc1f0","\uc1f1","\uc1f2","\uc1f3","\uc1f4","\uc1f5","\uc1f6","\uc1f7","\uc1f8","\uc1f9","\uc1fa","\uc1fb",  # ; LVT # Lo  [27] HANGUL SYLLABLE SOEG..HANGUL SYLLABLE SOEH
        "\uc1fd","\uc1fe","\uc1ff","\uc200","\uc201","\uc202","\uc203","\uc204","\uc205","\uc206","\uc207","\uc208","\uc209","\uc20a","\uc20b","\uc20c","\uc20d","\uc20e","\uc20f","\uc210","\uc211","\uc212","\uc213","\uc214","\uc215","\uc216","\uc217",  # ; LVT # Lo  [27] HANGUL SYLLABLE SYOG..HANGUL SYLLABLE SYOH
        "\uc219","\uc21a","\uc21b","\uc21c","\uc21d","\uc21e","\uc21f","\uc220","\uc221","\uc222","\uc223","\uc224","\uc225","\uc226","\uc227","\uc228","\uc229","\uc22a","\uc22b","\uc22c","\uc22d","\uc22e","\uc22f","\uc230","\uc231","\uc232","\uc233",  # ; LVT # Lo  [27] HANGUL SYLLABLE SUG..HANGUL SYLLABLE SUH
        "\uc235","\uc236","\uc237","\uc238","\uc239","\uc23a","\uc23b","\uc23c","\uc23d","\uc23e","\uc23f","\uc240","\uc241","\uc242","\uc243","\uc244","\uc245","\uc246","\uc247","\uc248","\uc249","\uc24a","\uc24b","\uc24c","\uc24d","\uc24e","\uc24f",  # ; LVT # Lo  [27] HANGUL SYLLABLE SWEOG..HANGUL SYLLABLE SWEOH
        "\uc251","\uc252","\uc253","\uc254","\uc255","\uc256","\uc257","\uc258","\uc259","\uc25a","\uc25b","\uc25c","\uc25d","\uc25e","\uc25f","\uc260","\uc261","\uc262","\uc263","\uc264","\uc265","\uc266","\uc267","\uc268","\uc269","\uc26a","\uc26b",  # ; LVT # Lo  [27] HANGUL SYLLABLE SWEG..HANGUL SYLLABLE SWEH
        "\uc26d","\uc26e","\uc26f","\uc270","\uc271","\uc272","\uc273","\uc274","\uc275","\uc276","\uc277","\uc278","\uc279","\uc27a","\uc27b","\uc27c","\uc27d","\uc27e","\uc27f","\uc280","\uc281","\uc282","\uc283","\uc284","\uc285","\uc286","\uc287",  # ; LVT # Lo  [27] HANGUL SYLLABLE SWIG..HANGUL SYLLABLE SWIH
        "\uc289","\uc28a","\uc28b","\uc28c","\uc28d","\uc28e","\uc28f","\uc290","\uc291","\uc292","\uc293","\uc294","\uc295","\uc296","\uc297","\uc298","\uc299","\uc29a","\uc29b","\uc29c","\uc29d","\uc29e","\uc29f","\uc2a0","\uc2a1","\uc2a2","\uc2a3",  # ; LVT # Lo  [27] HANGUL SYLLABLE SYUG..HANGUL SYLLABLE SYUH
        "\uc2a5","\uc2a6","\uc2a7","\uc2a8","\uc2a9","\uc2aa","\uc2ab","\uc2ac","\uc2ad","\uc2ae","\uc2af","\uc2b0","\uc2b1","\uc2b2","\uc2b3","\uc2b4","\uc2b5","\uc2b6","\uc2b7","\uc2b8","\uc2b9","\uc2ba","\uc2bb","\uc2bc","\uc2bd","\uc2be","\uc2bf",  # ; LVT # Lo  [27] HANGUL SYLLABLE SEUG..HANGUL SYLLABLE SEUH
        "\uc2c1","\uc2c2","\uc2c3","\uc2c4","\uc2c5","\uc2c6","\uc2c7","\uc2c8","\uc2c9","\uc2ca","\uc2cb","\uc2cc","\uc2cd","\uc2ce","\uc2cf","\uc2d0","\uc2d1","\uc2d2","\uc2d3","\uc2d4","\uc2d5","\uc2d6","\uc2d7","\uc2d8","\uc2d9","\uc2da","\uc2db",  # ; LVT # Lo  [27] HANGUL SYLLABLE SYIG..HANGUL SYLLABLE SYIH
        "\uc2dd","\uc2de","\uc2df","\uc2e0","\uc2e1","\uc2e2","\uc2e3","\uc2e4","\uc2e5","\uc2e6","\uc2e7","\uc2e8","\uc2e9","\uc2ea","\uc2eb","\uc2ec","\uc2ed","\uc2ee","\uc2ef","\uc2f0","\uc2f1","\uc2f2","\uc2f3","\uc2f4","\uc2f5","\uc2f6","\uc2f7",  # ; LVT # Lo  [27] HANGUL SYLLABLE SIG..HANGUL SYLLABLE SIH
        "\uc2f9","\uc2fa","\uc2fb","\uc2fc","\uc2fd","\uc2fe","\uc2ff","\uc300","\uc301","\uc302","\uc303","\uc304","\uc305","\uc306","\uc307","\uc308","\uc309","\uc30a","\uc30b","\uc30c","\uc30d","\uc30e","\uc30f","\uc310","\uc311","\uc312","\uc313",  # ; LVT # Lo  [27] HANGUL SYLLABLE SSAG..HANGUL SYLLABLE SSAH
        "\uc315","\uc316","\uc317","\uc318","\uc319","\uc31a","\uc31b","\uc31c","\uc31d","\uc31e","\uc31f","\uc320","\uc321","\uc322","\uc323","\uc324","\uc325","\uc326","\uc327","\uc328","\uc329","\uc32a","\uc32b","\uc32c","\uc32d","\uc32e","\uc32f",  # ; LVT # Lo  [27] HANGUL SYLLABLE SSAEG..HANGUL SYLLABLE SSAEH
        "\uc331","\uc332","\uc333","\uc334","\uc335","\uc336","\uc337","\uc338","\uc339","\uc33a","\uc33b","\uc33c","\uc33d","\uc33e","\uc33f","\uc340","\uc341","\uc342","\uc343","\uc344","\uc345","\uc346","\uc347","\uc348","\uc349","\uc34a","\uc34b",  # ; LVT # Lo  [27] HANGUL SYLLABLE SSYAG..HANGUL SYLLABLE SSYAH
        "\uc34d","\uc34e","\uc34f","\uc350","\uc351","\uc352","\uc353","\uc354","\uc355","\uc356","\uc357","\uc358","\uc359","\uc35a","\uc35b","\uc35c","\uc35d","\uc35e","\uc35f","\uc360","\uc361","\uc362","\uc363","\uc364","\uc365","\uc366","\uc367",  # ; LVT # Lo  [27] HANGUL SYLLABLE SSYAEG..HANGUL SYLLABLE SSYAEH
        "\uc369","\uc36a","\uc36b","\uc36c","\uc36d","\uc36e","\uc36f","\uc370","\uc371","\uc372","\uc373","\uc374","\uc375","\uc376","\uc377","\uc378","\uc379","\uc37a","\uc37b","\uc37c","\uc37d","\uc37e","\uc37f","\uc380","\uc381","\uc382","\uc383",  # ; LVT # Lo  [27] HANGUL SYLLABLE SSEOG..HANGUL SYLLABLE SSEOH
        "\uc385","\uc386","\uc387","\uc388","\uc389","\uc38a","\uc38b","\uc38c","\uc38d","\uc38e","\uc38f","\uc390","\uc391","\uc392","\uc393","\uc394","\uc395","\uc396","\uc397","\uc398","\uc399","\uc39a","\uc39b","\uc39c","\uc39d","\uc39e","\uc39f",  # ; LVT # Lo  [27] HANGUL SYLLABLE SSEG..HANGUL SYLLABLE SSEH
        "\uc3a1","\uc3a2","\uc3a3","\uc3a4","\uc3a5","\uc3a6","\uc3a7","\uc3a8","\uc3a9","\uc3aa","\uc3ab","\uc3ac","\uc3ad","\uc3ae","\uc3af","\uc3b0","\uc3b1","\uc3b2","\uc3b3","\uc3b4","\uc3b5","\uc3b6","\uc3b7","\uc3b8","\uc3b9","\uc3ba","\uc3bb",  # ; LVT # Lo  [27] HANGUL SYLLABLE SSYEOG..HANGUL SYLLABLE SSYEOH
        "\uc3bd","\uc3be","\uc3bf","\uc3c0","\uc3c1","\uc3c2","\uc3c3","\uc3c4","\uc3c5","\uc3c6","\uc3c7","\uc3c8","\uc3c9","\uc3ca","\uc3cb","\uc3cc","\uc3cd","\uc3ce","\uc3cf","\uc3d0","\uc3d1","\uc3d2","\uc3d3","\uc3d4","\uc3d5","\uc3d6","\uc3d7",  # ; LVT # Lo  [27] HANGUL SYLLABLE SSYEG..HANGUL SYLLABLE SSYEH
        "\uc3d9","\uc3da","\uc3db","\uc3dc","\uc3dd","\uc3de","\uc3df","\uc3e0","\uc3e1","\uc3e2","\uc3e3","\uc3e4","\uc3e5","\uc3e6","\uc3e7","\uc3e8","\uc3e9","\uc3ea","\uc3eb","\uc3ec","\uc3ed","\uc3ee","\uc3ef","\uc3f0","\uc3f1","\uc3f2","\uc3f3",  # ; LVT # Lo  [27] HANGUL SYLLABLE SSOG..HANGUL SYLLABLE SSOH
        "\uc3f5","\uc3f6","\uc3f7","\uc3f8","\uc3f9","\uc3fa","\uc3fb","\uc3fc","\uc3fd","\uc3fe","\uc3ff","\uc400","\uc401","\uc402","\uc403","\uc404","\uc405","\uc406","\uc407","\uc408","\uc409","\uc40a","\uc40b","\uc40c","\uc40d","\uc40e","\uc40f",  # ; LVT # Lo  [27] HANGUL SYLLABLE SSWAG..HANGUL SYLLABLE SSWAH
        "\uc411","\uc412","\uc413","\uc414","\uc415","\uc416","\uc417","\uc418","\uc419","\uc41a","\uc41b","\uc41c","\uc41d","\uc41e","\uc41f","\uc420","\uc421","\uc422","\uc423","\uc424","\uc425","\uc426","\uc427","\uc428","\uc429","\uc42a","\uc42b",  # ; LVT # Lo  [27] HANGUL SYLLABLE SSWAEG..HANGUL SYLLABLE SSWAEH
        "\uc42d","\uc42e","\uc42f","\uc430","\uc431","\uc432","\uc433","\uc434","\uc435","\uc436","\uc437","\uc438","\uc439","\uc43a","\uc43b","\uc43c","\uc43d","\uc43e","\uc43f","\uc440","\uc441","\uc442","\uc443","\uc444","\uc445","\uc446","\uc447",  # ; LVT # Lo  [27] HANGUL SYLLABLE SSOEG..HANGUL SYLLABLE SSOEH
        "\uc449","\uc44a","\uc44b","\uc44c","\uc44d","\uc44e","\uc44f","\uc450","\uc451","\uc452","\uc453","\uc454","\uc455","\uc456","\uc457","\uc458","\uc459","\uc45a","\uc45b","\uc45c","\uc45d","\uc45e","\uc45f","\uc460","\uc461","\uc462","\uc463",  # ; LVT # Lo  [27] HANGUL SYLLABLE SSYOG..HANGUL SYLLABLE SSYOH
        "\uc465","\uc466","\uc467","\uc468","\uc469","\uc46a","\uc46b","\uc46c","\uc46d","\uc46e","\uc46f","\uc470","\uc471","\uc472","\uc473","\uc474","\uc475","\uc476","\uc477","\uc478","\uc479","\uc47a","\uc47b","\uc47c","\uc47d","\uc47e","\uc47f",  # ; LVT # Lo  [27] HANGUL SYLLABLE SSUG..HANGUL SYLLABLE SSUH
        "\uc481","\uc482","\uc483","\uc484","\uc485","\uc486","\uc487","\uc488","\uc489","\uc48a","\uc48b","\uc48c","\uc48d","\uc48e","\uc48f","\uc490","\uc491","\uc492","\uc493","\uc494","\uc495","\uc496","\uc497","\uc498","\uc499","\uc49a","\uc49b",  # ; LVT # Lo  [27] HANGUL SYLLABLE SSWEOG..HANGUL SYLLABLE SSWEOH
        "\uc49d","\uc49e","\uc49f","\uc4a0","\uc4a1","\uc4a2","\uc4a3","\uc4a4","\uc4a5","\uc4a6","\uc4a7","\uc4a8","\uc4a9","\uc4aa","\uc4ab","\uc4ac","\uc4ad","\uc4ae","\uc4af","\uc4b0","\uc4b1","\uc4b2","\uc4b3","\uc4b4","\uc4b5","\uc4b6","\uc4b7",  # ; LVT # Lo  [27] HANGUL SYLLABLE SSWEG..HANGUL SYLLABLE SSWEH
        "\uc4b9","\uc4ba","\uc4bb","\uc4bc","\uc4bd","\uc4be","\uc4bf","\uc4c0","\uc4c1","\uc4c2","\uc4c3","\uc4c4","\uc4c5","\uc4c6","\uc4c7","\uc4c8","\uc4c9","\uc4ca","\uc4cb","\uc4cc","\uc4cd","\uc4ce","\uc4cf","\uc4d0","\uc4d1","\uc4d2","\uc4d3",  # ; LVT # Lo  [27] HANGUL SYLLABLE SSWIG..HANGUL SYLLABLE SSWIH
        "\uc4d5","\uc4d6","\uc4d7","\uc4d8","\uc4d9","\uc4da","\uc4db","\uc4dc","\uc4dd","\uc4de","\uc4df","\uc4e0","\uc4e1","\uc4e2","\uc4e3","\uc4e4","\uc4e5","\uc4e6","\uc4e7","\uc4e8","\uc4e9","\uc4ea","\uc4eb","\uc4ec","\uc4ed","\uc4ee","\uc4ef",  # ; LVT # Lo  [27] HANGUL SYLLABLE SSYUG..HANGUL SYLLABLE SSYUH
        "\uc4f1","\uc4f2","\uc4f3","\uc4f4","\uc4f5","\uc4f6","\uc4f7","\uc4f8","\uc4f9","\uc4fa","\uc4fb","\uc4fc","\uc4fd","\uc4fe","\uc4ff","\uc500","\uc501","\uc502","\uc503","\uc504","\uc505","\uc506","\uc507","\uc508","\uc509","\uc50a","\uc50b",  # ; LVT # Lo  [27] HANGUL SYLLABLE SSEUG..HANGUL SYLLABLE SSEUH
        "\uc50d","\uc50e","\uc50f","\uc510","\uc511","\uc512","\uc513","\uc514","\uc515","\uc516","\uc517","\uc518","\uc519","\uc51a","\uc51b","\uc51c","\uc51d","\uc51e","\uc51f","\uc520","\uc521","\uc522","\uc523","\uc524","\uc525","\uc526","\uc527",  # ; LVT # Lo  [27] HANGUL SYLLABLE SSYIG..HANGUL SYLLABLE SSYIH
        "\uc529","\uc52a","\uc52b","\uc52c","\uc52d","\uc52e","\uc52f","\uc530","\uc531","\uc532","\uc533","\uc534","\uc535","\uc536","\uc537","\uc538","\uc539","\uc53a","\uc53b","\uc53c","\uc53d","\uc53e","\uc53f","\uc540","\uc541","\uc542","\uc543",  # ; LVT # Lo  [27] HANGUL SYLLABLE SSIG..HANGUL SYLLABLE SSIH
        "\uc545","\uc546","\uc547","\uc548","\uc549","\uc54a","\uc54b","\uc54c","\uc54d","\uc54e","\uc54f","\uc550","\uc551","\uc552","\uc553","\uc554","\uc555","\uc556","\uc557","\uc558","\uc559","\uc55a","\uc55b","\uc55c","\uc55d","\uc55e","\uc55f",  # ; LVT # Lo  [27] HANGUL SYLLABLE AG..HANGUL SYLLABLE AH
        "\uc561","\uc562","\uc563","\uc564","\uc565","\uc566","\uc567","\uc568","\uc569","\uc56a","\uc56b","\uc56c","\uc56d","\uc56e","\uc56f","\uc570","\uc571","\uc572","\uc573","\uc574","\uc575","\uc576","\uc577","\uc578","\uc579","\uc57a","\uc57b",  # ; LVT # Lo  [27] HANGUL SYLLABLE AEG..HANGUL SYLLABLE AEH
        "\uc57d","\uc57e","\uc57f","\uc580","\uc581","\uc582","\uc583","\uc584","\uc585","\uc586","\uc587","\uc588","\uc589","\uc58a","\uc58b","\uc58c","\uc58d","\uc58e","\uc58f","\uc590","\uc591","\uc592","\uc593","\uc594","\uc595","\uc596","\uc597",  # ; LVT # Lo  [27] HANGUL SYLLABLE YAG..HANGUL SYLLABLE YAH
        "\uc599","\uc59a","\uc59b","\uc59c","\uc59d","\uc59e","\uc59f","\uc5a0","\uc5a1","\uc5a2","\uc5a3","\uc5a4","\uc5a5","\uc5a6","\uc5a7","\uc5a8","\uc5a9","\uc5aa","\uc5ab","\uc5ac","\uc5ad","\uc5ae","\uc5af","\uc5b0","\uc5b1","\uc5b2","\uc5b3",  # ; LVT # Lo  [27] HANGUL SYLLABLE YAEG..HANGUL SYLLABLE YAEH
        "\uc5b5","\uc5b6","\uc5b7","\uc5b8","\uc5b9","\uc5ba","\uc5bb","\uc5bc","\uc5bd","\uc5be","\uc5bf","\uc5c0","\uc5c1","\uc5c2","\uc5c3","\uc5c4","\uc5c5","\uc5c6","\uc5c7","\uc5c8","\uc5c9","\uc5ca","\uc5cb","\uc5cc","\uc5cd","\uc5ce","\uc5cf",  # ; LVT # Lo  [27] HANGUL SYLLABLE EOG..HANGUL SYLLABLE EOH
        "\uc5d1","\uc5d2","\uc5d3","\uc5d4","\uc5d5","\uc5d6","\uc5d7","\uc5d8","\uc5d9","\uc5da","\uc5db","\uc5dc","\uc5dd","\uc5de","\uc5df","\uc5e0","\uc5e1","\uc5e2","\uc5e3","\uc5e4","\uc5e5","\uc5e6","\uc5e7","\uc5e8","\uc5e9","\uc5ea","\uc5eb",  # ; LVT # Lo  [27] HANGUL SYLLABLE EG..HANGUL SYLLABLE EH
        "\uc5ed","\uc5ee","\uc5ef","\uc5f0","\uc5f1","\uc5f2","\uc5f3","\uc5f4","\uc5f5","\uc5f6","\uc5f7","\uc5f8","\uc5f9","\uc5fa","\uc5fb","\uc5fc","\uc5fd","\uc5fe","\uc5ff","\uc600","\uc601","\uc602","\uc603","\uc604","\uc605","\uc606","\uc607",  # ; LVT # Lo  [27] HANGUL SYLLABLE YEOG..HANGUL SYLLABLE YEOH
        "\uc609","\uc60a","\uc60b","\uc60c","\uc60d","\uc60e","\uc60f","\uc610","\uc611","\uc612","\uc613","\uc614","\uc615","\uc616","\uc617","\uc618","\uc619","\uc61a","\uc61b","\uc61c","\uc61d","\uc61e","\uc61f","\uc620","\uc621","\uc622","\uc623",  # ; LVT # Lo  [27] HANGUL SYLLABLE YEG..HANGUL SYLLABLE YEH
        "\uc625","\uc626","\uc627","\uc628","\uc629","\uc62a","\uc62b","\uc62c","\uc62d","\uc62e","\uc62f","\uc630","\uc631","\uc632","\uc633","\uc634","\uc635","\uc636","\uc637","\uc638","\uc639","\uc63a","\uc63b","\uc63c","\uc63d","\uc63e","\uc63f",  # ; LVT # Lo  [27] HANGUL SYLLABLE OG..HANGUL SYLLABLE OH
        "\uc641","\uc642","\uc643","\uc644","\uc645","\uc646","\uc647","\uc648","\uc649","\uc64a","\uc64b","\uc64c","\uc64d","\uc64e","\uc64f","\uc650","\uc651","\uc652","\uc653","\uc654","\uc655","\uc656","\uc657","\uc658","\uc659","\uc65a","\uc65b",  # ; LVT # Lo  [27] HANGUL SYLLABLE WAG..HANGUL SYLLABLE WAH
        "\uc65d","\uc65e","\uc65f","\uc660","\uc661","\uc662","\uc663","\uc664","\uc665","\uc666","\uc667","\uc668","\uc669","\uc66a","\uc66b","\uc66c","\uc66d","\uc66e","\uc66f","\uc670","\uc671","\uc672","\uc673","\uc674","\uc675","\uc676","\uc677",  # ; LVT # Lo  [27] HANGUL SYLLABLE WAEG..HANGUL SYLLABLE WAEH
        "\uc679","\uc67a","\uc67b","\uc67c","\uc67d","\uc67e","\uc67f","\uc680","\uc681","\uc682","\uc683","\uc684","\uc685","\uc686","\uc687","\uc688","\uc689","\uc68a","\uc68b","\uc68c","\uc68d","\uc68e","\uc68f","\uc690","\uc691","\uc692","\uc693",  # ; LVT # Lo  [27] HANGUL SYLLABLE OEG..HANGUL SYLLABLE OEH
        "\uc695","\uc696","\uc697","\uc698","\uc699","\uc69a","\uc69b","\uc69c","\uc69d","\uc69e","\uc69f","\uc6a0","\uc6a1","\uc6a2","\uc6a3","\uc6a4","\uc6a5","\uc6a6","\uc6a7","\uc6a8","\uc6a9","\uc6aa","\uc6ab","\uc6ac","\uc6ad","\uc6ae","\uc6af",  # ; LVT # Lo  [27] HANGUL SYLLABLE YOG..HANGUL SYLLABLE YOH
        "\uc6b1","\uc6b2","\uc6b3","\uc6b4","\uc6b5","\uc6b6","\uc6b7","\uc6b8","\uc6b9","\uc6ba","\uc6bb","\uc6bc","\uc6bd","\uc6be","\uc6bf","\uc6c0","\uc6c1","\uc6c2","\uc6c3","\uc6c4","\uc6c5","\uc6c6","\uc6c7","\uc6c8","\uc6c9","\uc6ca","\uc6cb",  # ; LVT # Lo  [27] HANGUL SYLLABLE UG..HANGUL SYLLABLE UH
        "\uc6cd","\uc6ce","\uc6cf","\uc6d0","\uc6d1","\uc6d2","\uc6d3","\uc6d4","\uc6d5","\uc6d6","\uc6d7","\uc6d8","\uc6d9","\uc6da","\uc6db","\uc6dc","\uc6dd","\uc6de","\uc6df","\uc6e0","\uc6e1","\uc6e2","\uc6e3","\uc6e4","\uc6e5","\uc6e6","\uc6e7",  # ; LVT # Lo  [27] HANGUL SYLLABLE WEOG..HANGUL SYLLABLE WEOH
        "\uc6e9","\uc6ea","\uc6eb","\uc6ec","\uc6ed","\uc6ee","\uc6ef","\uc6f0","\uc6f1","\uc6f2","\uc6f3","\uc6f4","\uc6f5","\uc6f6","\uc6f7","\uc6f8","\uc6f9","\uc6fa","\uc6fb","\uc6fc","\uc6fd","\uc6fe","\uc6ff","\uc700","\uc701","\uc702","\uc703",  # ; LVT # Lo  [27] HANGUL SYLLABLE WEG..HANGUL SYLLABLE WEH
        "\uc705","\uc706","\uc707","\uc708","\uc709","\uc70a","\uc70b","\uc70c","\uc70d","\uc70e","\uc70f","\uc710","\uc711","\uc712","\uc713","\uc714","\uc715","\uc716","\uc717","\uc718","\uc719","\uc71a","\uc71b","\uc71c","\uc71d","\uc71e","\uc71f",  # ; LVT # Lo  [27] HANGUL SYLLABLE WIG..HANGUL SYLLABLE WIH
        "\uc721","\uc722","\uc723","\uc724","\uc725","\uc726","\uc727","\uc728","\uc729","\uc72a","\uc72b","\uc72c","\uc72d","\uc72e","\uc72f","\uc730","\uc731","\uc732","\uc733","\uc734","\uc735","\uc736","\uc737","\uc738","\uc739","\uc73a","\uc73b",  # ; LVT # Lo  [27] HANGUL SYLLABLE YUG..HANGUL SYLLABLE YUH
        "\uc73d","\uc73e","\uc73f","\uc740","\uc741","\uc742","\uc743","\uc744","\uc745","\uc746","\uc747","\uc748","\uc749","\uc74a","\uc74b","\uc74c","\uc74d","\uc74e","\uc74f","\uc750","\uc751","\uc752","\uc753","\uc754","\uc755","\uc756","\uc757",  # ; LVT # Lo  [27] HANGUL SYLLABLE EUG..HANGUL SYLLABLE EUH
        "\uc759","\uc75a","\uc75b","\uc75c","\uc75d","\uc75e","\uc75f","\uc760","\uc761","\uc762","\uc763","\uc764","\uc765","\uc766","\uc767","\uc768","\uc769","\uc76a","\uc76b","\uc76c","\uc76d","\uc76e","\uc76f","\uc770","\uc771","\uc772","\uc773",  # ; LVT # Lo  [27] HANGUL SYLLABLE YIG..HANGUL SYLLABLE YIH
        "\uc775","\uc776","\uc777","\uc778","\uc779","\uc77a","\uc77b","\uc77c","\uc77d","\uc77e","\uc77f","\uc780","\uc781","\uc782","\uc783","\uc784","\uc785","\uc786","\uc787","\uc788","\uc789","\uc78a","\uc78b","\uc78c","\uc78d","\uc78e","\uc78f",  # ; LVT # Lo  [27] HANGUL SYLLABLE IG..HANGUL SYLLABLE IH
        "\uc791","\uc792","\uc793","\uc794","\uc795","\uc796","\uc797","\uc798","\uc799","\uc79a","\uc79b","\uc79c","\uc79d","\uc79e","\uc79f","\uc7a0","\uc7a1","\uc7a2","\uc7a3","\uc7a4","\uc7a5","\uc7a6","\uc7a7","\uc7a8","\uc7a9","\uc7aa","\uc7ab",  # ; LVT # Lo  [27] HANGUL SYLLABLE JAG..HANGUL SYLLABLE JAH
        "\uc7ad","\uc7ae","\uc7af","\uc7b0","\uc7b1","\uc7b2","\uc7b3","\uc7b4","\uc7b5","\uc7b6","\uc7b7","\uc7b8","\uc7b9","\uc7ba","\uc7bb","\uc7bc","\uc7bd","\uc7be","\uc7bf","\uc7c0","\uc7c1","\uc7c2","\uc7c3","\uc7c4","\uc7c5","\uc7c6","\uc7c7",  # ; LVT # Lo  [27] HANGUL SYLLABLE JAEG..HANGUL SYLLABLE JAEH
        "\uc7c9","\uc7ca","\uc7cb","\uc7cc","\uc7cd","\uc7ce","\uc7cf","\uc7d0","\uc7d1","\uc7d2","\uc7d3","\uc7d4","\uc7d5","\uc7d6","\uc7d7","\uc7d8","\uc7d9","\uc7da","\uc7db","\uc7dc","\uc7dd","\uc7de","\uc7df","\uc7e0","\uc7e1","\uc7e2","\uc7e3",  # ; LVT # Lo  [27] HANGUL SYLLABLE JYAG..HANGUL SYLLABLE JYAH
        "\uc7e5","\uc7e6","\uc7e7","\uc7e8","\uc7e9","\uc7ea","\uc7eb","\uc7ec","\uc7ed","\uc7ee","\uc7ef","\uc7f0","\uc7f1","\uc7f2","\uc7f3","\uc7f4","\uc7f5","\uc7f6","\uc7f7","\uc7f8","\uc7f9","\uc7fa","\uc7fb","\uc7fc","\uc7fd","\uc7fe","\uc7ff",  # ; LVT # Lo  [27] HANGUL SYLLABLE JYAEG..HANGUL SYLLABLE JYAEH
        "\uc801","\uc802","\uc803","\uc804","\uc805","\uc806","\uc807","\uc808","\uc809","\uc80a","\uc80b","\uc80c","\uc80d","\uc80e","\uc80f","\uc810","\uc811","\uc812","\uc813","\uc814","\uc815","\uc816","\uc817","\uc818","\uc819","\uc81a","\uc81b",  # ; LVT # Lo  [27] HANGUL SYLLABLE JEOG..HANGUL SYLLABLE JEOH
        "\uc81d","\uc81e","\uc81f","\uc820","\uc821","\uc822","\uc823","\uc824","\uc825","\uc826","\uc827","\uc828","\uc829","\uc82a","\uc82b","\uc82c","\uc82d","\uc82e","\uc82f","\uc830","\uc831","\uc832","\uc833","\uc834","\uc835","\uc836","\uc837",  # ; LVT # Lo  [27] HANGUL SYLLABLE JEG..HANGUL SYLLABLE JEH
        "\uc839","\uc83a","\uc83b","\uc83c","\uc83d","\uc83e","\uc83f","\uc840","\uc841","\uc842","\uc843","\uc844","\uc845","\uc846","\uc847","\uc848","\uc849","\uc84a","\uc84b","\uc84c","\uc84d","\uc84e","\uc84f","\uc850","\uc851","\uc852","\uc853",  # ; LVT # Lo  [27] HANGUL SYLLABLE JYEOG..HANGUL SYLLABLE JYEOH
        "\uc855","\uc856","\uc857","\uc858","\uc859","\uc85a","\uc85b","\uc85c","\uc85d","\uc85e","\uc85f","\uc860","\uc861","\uc862","\uc863","\uc864","\uc865","\uc866","\uc867","\uc868","\uc869","\uc86a","\uc86b","\uc86c","\uc86d","\uc86e","\uc86f",  # ; LVT # Lo  [27] HANGUL SYLLABLE JYEG..HANGUL SYLLABLE JYEH
        "\uc871","\uc872","\uc873","\uc874","\uc875","\uc876","\uc877","\uc878","\uc879","\uc87a","\uc87b","\uc87c","\uc87d","\uc87e","\uc87f","\uc880","\uc881","\uc882","\uc883","\uc884","\uc885","\uc886","\uc887","\uc888","\uc889","\uc88a","\uc88b",  # ; LVT # Lo  [27] HANGUL SYLLABLE JOG..HANGUL SYLLABLE JOH
        "\uc88d","\uc88e","\uc88f","\uc890","\uc891","\uc892","\uc893","\uc894","\uc895","\uc896","\uc897","\uc898","\uc899","\uc89a","\uc89b","\uc89c","\uc89d","\uc89e","\uc89f","\uc8a0","\uc8a1","\uc8a2","\uc8a3","\uc8a4","\uc8a5","\uc8a6","\uc8a7",  # ; LVT # Lo  [27] HANGUL SYLLABLE JWAG..HANGUL SYLLABLE JWAH
        "\uc8a9","\uc8aa","\uc8ab","\uc8ac","\uc8ad","\uc8ae","\uc8af","\uc8b0","\uc8b1","\uc8b2","\uc8b3","\uc8b4","\uc8b5","\uc8b6","\uc8b7","\uc8b8","\uc8b9","\uc8ba","\uc8bb","\uc8bc","\uc8bd","\uc8be","\uc8bf","\uc8c0","\uc8c1","\uc8c2","\uc8c3",  # ; LVT # Lo  [27] HANGUL SYLLABLE JWAEG..HANGUL SYLLABLE JWAEH
        "\uc8c5","\uc8c6","\uc8c7","\uc8c8","\uc8c9","\uc8ca","\uc8cb","\uc8cc","\uc8cd","\uc8ce","\uc8cf","\uc8d0","\uc8d1","\uc8d2","\uc8d3","\uc8d4","\uc8d5","\uc8d6","\uc8d7","\uc8d8","\uc8d9","\uc8da","\uc8db","\uc8dc","\uc8dd","\uc8de","\uc8df",  # ; LVT # Lo  [27] HANGUL SYLLABLE JOEG..HANGUL SYLLABLE JOEH
        "\uc8e1","\uc8e2","\uc8e3","\uc8e4","\uc8e5","\uc8e6","\uc8e7","\uc8e8","\uc8e9","\uc8ea","\uc8eb","\uc8ec","\uc8ed","\uc8ee","\uc8ef","\uc8f0","\uc8f1","\uc8f2","\uc8f3","\uc8f4","\uc8f5","\uc8f6","\uc8f7","\uc8f8","\uc8f9","\uc8fa","\uc8fb",  # ; LVT # Lo  [27] HANGUL SYLLABLE JYOG..HANGUL SYLLABLE JYOH
        "\uc8fd","\uc8fe","\uc8ff","\uc900","\uc901","\uc902","\uc903","\uc904","\uc905","\uc906","\uc907","\uc908","\uc909","\uc90a","\uc90b","\uc90c","\uc90d","\uc90e","\uc90f","\uc910","\uc911","\uc912","\uc913","\uc914","\uc915","\uc916","\uc917",  # ; LVT # Lo  [27] HANGUL SYLLABLE JUG..HANGUL SYLLABLE JUH
        "\uc919","\uc91a","\uc91b","\uc91c","\uc91d","\uc91e","\uc91f","\uc920","\uc921","\uc922","\uc923","\uc924","\uc925","\uc926","\uc927","\uc928","\uc929","\uc92a","\uc92b","\uc92c","\uc92d","\uc92e","\uc92f","\uc930","\uc931","\uc932","\uc933",  # ; LVT # Lo  [27] HANGUL SYLLABLE JWEOG..HANGUL SYLLABLE JWEOH
        "\uc935","\uc936","\uc937","\uc938","\uc939","\uc93a","\uc93b","\uc93c","\uc93d","\uc93e","\uc93f","\uc940","\uc941","\uc942","\uc943","\uc944","\uc945","\uc946","\uc947","\uc948","\uc949","\uc94a","\uc94b","\uc94c","\uc94d","\uc94e","\uc94f",  # ; LVT # Lo  [27] HANGUL SYLLABLE JWEG..HANGUL SYLLABLE JWEH
        "\uc951","\uc952","\uc953","\uc954","\uc955","\uc956","\uc957","\uc958","\uc959","\uc95a","\uc95b","\uc95c","\uc95d","\uc95e","\uc95f","\uc960","\uc961","\uc962","\uc963","\uc964","\uc965","\uc966","\uc967","\uc968","\uc969","\uc96a","\uc96b",  # ; LVT # Lo  [27] HANGUL SYLLABLE JWIG..HANGUL SYLLABLE JWIH
        "\uc96d","\uc96e","\uc96f","\uc970","\uc971","\uc972","\uc973","\uc974","\uc975","\uc976","\uc977","\uc978","\uc979","\uc97a","\uc97b","\uc97c","\uc97d","\uc97e","\uc97f","\uc980","\uc981","\uc982","\uc983","\uc984","\uc985","\uc986","\uc987",  # ; LVT # Lo  [27] HANGUL SYLLABLE JYUG..HANGUL SYLLABLE JYUH
        "\uc989","\uc98a","\uc98b","\uc98c","\uc98d","\uc98e","\uc98f","\uc990","\uc991","\uc992","\uc993","\uc994","\uc995","\uc996","\uc997","\uc998","\uc999","\uc99a","\uc99b","\uc99c","\uc99d","\uc99e","\uc99f","\uc9a0","\uc9a1","\uc9a2","\uc9a3",  # ; LVT # Lo  [27] HANGUL SYLLABLE JEUG..HANGUL SYLLABLE JEUH
        "\uc9a5","\uc9a6","\uc9a7","\uc9a8","\uc9a9","\uc9aa","\uc9ab","\uc9ac","\uc9ad","\uc9ae","\uc9af","\uc9b0","\uc9b1","\uc9b2","\uc9b3","\uc9b4","\uc9b5","\uc9b6","\uc9b7","\uc9b8","\uc9b9","\uc9ba","\uc9bb","\uc9bc","\uc9bd","\uc9be","\uc9bf",  # ; LVT # Lo  [27] HANGUL SYLLABLE JYIG..HANGUL SYLLABLE JYIH
        "\uc9c1","\uc9c2","\uc9c3","\uc9c4","\uc9c5","\uc9c6","\uc9c7","\uc9c8","\uc9c9","\uc9ca","\uc9cb","\uc9cc","\uc9cd","\uc9ce","\uc9cf","\uc9d0","\uc9d1","\uc9d2","\uc9d3","\uc9d4","\uc9d5","\uc9d6","\uc9d7","\uc9d8","\uc9d9","\uc9da","\uc9db",  # ; LVT # Lo  [27] HANGUL SYLLABLE JIG..HANGUL SYLLABLE JIH
        "\uc9dd","\uc9de","\uc9df","\uc9e0","\uc9e1","\uc9e2","\uc9e3","\uc9e4","\uc9e5","\uc9e6","\uc9e7","\uc9e8","\uc9e9","\uc9ea","\uc9eb","\uc9ec","\uc9ed","\uc9ee","\uc9ef","\uc9f0","\uc9f1","\uc9f2","\uc9f3","\uc9f4","\uc9f5","\uc9f6","\uc9f7",  # ; LVT # Lo  [27] HANGUL SYLLABLE JJAG..HANGUL SYLLABLE JJAH
        "\uc9f9","\uc9fa","\uc9fb","\uc9fc","\uc9fd","\uc9fe","\uc9ff","\uca00","\uca01","\uca02","\uca03","\uca04","\uca05","\uca06","\uca07","\uca08","\uca09","\uca0a","\uca0b","\uca0c","\uca0d","\uca0e","\uca0f","\uca10","\uca11","\uca12","\uca13",  # ; LVT # Lo  [27] HANGUL SYLLABLE JJAEG..HANGUL SYLLABLE JJAEH
        "\uca15","\uca16","\uca17","\uca18","\uca19","\uca1a","\uca1b","\uca1c","\uca1d","\uca1e","\uca1f","\uca20","\uca21","\uca22","\uca23","\uca24","\uca25","\uca26","\uca27","\uca28","\uca29","\uca2a","\uca2b","\uca2c","\uca2d","\uca2e","\uca2f",  # ; LVT # Lo  [27] HANGUL SYLLABLE JJYAG..HANGUL SYLLABLE JJYAH
        "\uca31","\uca32","\uca33","\uca34","\uca35","\uca36","\uca37","\uca38","\uca39","\uca3a","\uca3b","\uca3c","\uca3d","\uca3e","\uca3f","\uca40","\uca41","\uca42","\uca43","\uca44","\uca45","\uca46","\uca47","\uca48","\uca49","\uca4a","\uca4b",  # ; LVT # Lo  [27] HANGUL SYLLABLE JJYAEG..HANGUL SYLLABLE JJYAEH
        "\uca4d","\uca4e","\uca4f","\uca50","\uca51","\uca52","\uca53","\uca54","\uca55","\uca56","\uca57","\uca58","\uca59","\uca5a","\uca5b","\uca5c","\uca5d","\uca5e","\uca5f","\uca60","\uca61","\uca62","\uca63","\uca64","\uca65","\uca66","\uca67",  # ; LVT # Lo  [27] HANGUL SYLLABLE JJEOG..HANGUL SYLLABLE JJEOH
        "\uca69","\uca6a","\uca6b","\uca6c","\uca6d","\uca6e","\uca6f","\uca70","\uca71","\uca72","\uca73","\uca74","\uca75","\uca76","\uca77","\uca78","\uca79","\uca7a","\uca7b","\uca7c","\uca7d","\uca7e","\uca7f","\uca80","\uca81","\uca82","\uca83",  # ; LVT # Lo  [27] HANGUL SYLLABLE JJEG..HANGUL SYLLABLE JJEH
        "\uca85","\uca86","\uca87","\uca88","\uca89","\uca8a","\uca8b","\uca8c","\uca8d","\uca8e","\uca8f","\uca90","\uca91","\uca92","\uca93","\uca94","\uca95","\uca96","\uca97","\uca98","\uca99","\uca9a","\uca9b","\uca9c","\uca9d","\uca9e","\uca9f",  # ; LVT # Lo  [27] HANGUL SYLLABLE JJYEOG..HANGUL SYLLABLE JJYEOH
        "\ucaa1","\ucaa2","\ucaa3","\ucaa4","\ucaa5","\ucaa6","\ucaa7","\ucaa8","\ucaa9","\ucaaa","\ucaab","\ucaac","\ucaad","\ucaae","\ucaaf","\ucab0","\ucab1","\ucab2","\ucab3","\ucab4","\ucab5","\ucab6","\ucab7","\ucab8","\ucab9","\ucaba","\ucabb",  # ; LVT # Lo  [27] HANGUL SYLLABLE JJYEG..HANGUL SYLLABLE JJYEH
        "\ucabd","\ucabe","\ucabf","\ucac0","\ucac1","\ucac2","\ucac3","\ucac4","\ucac5","\ucac6","\ucac7","\ucac8","\ucac9","\ucaca","\ucacb","\ucacc","\ucacd","\ucace","\ucacf","\ucad0","\ucad1","\ucad2","\ucad3","\ucad4","\ucad5","\ucad6","\ucad7",  # ; LVT # Lo  [27] HANGUL SYLLABLE JJOG..HANGUL SYLLABLE JJOH
        "\ucad9","\ucada","\ucadb","\ucadc","\ucadd","\ucade","\ucadf","\ucae0","\ucae1","\ucae2","\ucae3","\ucae4","\ucae5","\ucae6","\ucae7","\ucae8","\ucae9","\ucaea","\ucaeb","\ucaec","\ucaed","\ucaee","\ucaef","\ucaf0","\ucaf1","\ucaf2","\ucaf3",  # ; LVT # Lo  [27] HANGUL SYLLABLE JJWAG..HANGUL SYLLABLE JJWAH
        "\ucaf5","\ucaf6","\ucaf7","\ucaf8","\ucaf9","\ucafa","\ucafb","\ucafc","\ucafd","\ucafe","\ucaff","\ucb00","\ucb01","\ucb02","\ucb03","\ucb04","\ucb05","\ucb06","\ucb07","\ucb08","\ucb09","\ucb0a","\ucb0b","\ucb0c","\ucb0d","\ucb0e","\ucb0f",  # ; LVT # Lo  [27] HANGUL SYLLABLE JJWAEG..HANGUL SYLLABLE JJWAEH
        "\ucb11","\ucb12","\ucb13","\ucb14","\ucb15","\ucb16","\ucb17","\ucb18","\ucb19","\ucb1a","\ucb1b","\ucb1c","\ucb1d","\ucb1e","\ucb1f","\ucb20","\ucb21","\ucb22","\ucb23","\ucb24","\ucb25","\ucb26","\ucb27","\ucb28","\ucb29","\ucb2a","\ucb2b",  # ; LVT # Lo  [27] HANGUL SYLLABLE JJOEG..HANGUL SYLLABLE JJOEH
        "\ucb2d","\ucb2e","\ucb2f","\ucb30","\ucb31","\ucb32","\ucb33","\ucb34","\ucb35","\ucb36","\ucb37","\ucb38","\ucb39","\ucb3a","\ucb3b","\ucb3c","\ucb3d","\ucb3e","\ucb3f","\ucb40","\ucb41","\ucb42","\ucb43","\ucb44","\ucb45","\ucb46","\ucb47",  # ; LVT # Lo  [27] HANGUL SYLLABLE JJYOG..HANGUL SYLLABLE JJYOH
        "\ucb49","\ucb4a","\ucb4b","\ucb4c","\ucb4d","\ucb4e","\ucb4f","\ucb50","\ucb51","\ucb52","\ucb53","\ucb54","\ucb55","\ucb56","\ucb57","\ucb58","\ucb59","\ucb5a","\ucb5b","\ucb5c","\ucb5d","\ucb5e","\ucb5f","\ucb60","\ucb61","\ucb62","\ucb63",  # ; LVT # Lo  [27] HANGUL SYLLABLE JJUG..HANGUL SYLLABLE JJUH
        "\ucb65","\ucb66","\ucb67","\ucb68","\ucb69","\ucb6a","\ucb6b","\ucb6c","\ucb6d","\ucb6e","\ucb6f","\ucb70","\ucb71","\ucb72","\ucb73","\ucb74","\ucb75","\ucb76","\ucb77","\ucb78","\ucb79","\ucb7a","\ucb7b","\ucb7c","\ucb7d","\ucb7e","\ucb7f",  # ; LVT # Lo  [27] HANGUL SYLLABLE JJWEOG..HANGUL SYLLABLE JJWEOH
        "\ucb81","\ucb82","\ucb83","\ucb84","\ucb85","\ucb86","\ucb87","\ucb88","\ucb89","\ucb8a","\ucb8b","\ucb8c","\ucb8d","\ucb8e","\ucb8f","\ucb90","\ucb91","\ucb92","\ucb93","\ucb94","\ucb95","\ucb96","\ucb97","\ucb98","\ucb99","\ucb9a","\ucb9b",  # ; LVT # Lo  [27] HANGUL SYLLABLE JJWEG..HANGUL SYLLABLE JJWEH
        "\ucb9d","\ucb9e","\ucb9f","\ucba0","\ucba1","\ucba2","\ucba3","\ucba4","\ucba5","\ucba6","\ucba7","\ucba8","\ucba9","\ucbaa","\ucbab","\ucbac","\ucbad","\ucbae","\ucbaf","\ucbb0","\ucbb1","\ucbb2","\ucbb3","\ucbb4","\ucbb5","\ucbb6","\ucbb7",  # ; LVT # Lo  [27] HANGUL SYLLABLE JJWIG..HANGUL SYLLABLE JJWIH
        "\ucbb9","\ucbba","\ucbbb","\ucbbc","\ucbbd","\ucbbe","\ucbbf","\ucbc0","\ucbc1","\ucbc2","\ucbc3","\ucbc4","\ucbc5","\ucbc6","\ucbc7","\ucbc8","\ucbc9","\ucbca","\ucbcb","\ucbcc","\ucbcd","\ucbce","\ucbcf","\ucbd0","\ucbd1","\ucbd2","\ucbd3",  # ; LVT # Lo  [27] HANGUL SYLLABLE JJYUG..HANGUL SYLLABLE JJYUH
        "\ucbd5","\ucbd6","\ucbd7","\ucbd8","\ucbd9","\ucbda","\ucbdb","\ucbdc","\ucbdd","\ucbde","\ucbdf","\ucbe0","\ucbe1","\ucbe2","\ucbe3","\ucbe4","\ucbe5","\ucbe6","\ucbe7","\ucbe8","\ucbe9","\ucbea","\ucbeb","\ucbec","\ucbed","\ucbee","\ucbef",  # ; LVT # Lo  [27] HANGUL SYLLABLE JJEUG..HANGUL SYLLABLE JJEUH
        "\ucbf1","\ucbf2","\ucbf3","\ucbf4","\ucbf5","\ucbf6","\ucbf7","\ucbf8","\ucbf9","\ucbfa","\ucbfb","\ucbfc","\ucbfd","\ucbfe","\ucbff","\ucc00","\ucc01","\ucc02","\ucc03","\ucc04","\ucc05","\ucc06","\ucc07","\ucc08","\ucc09","\ucc0a","\ucc0b",  # ; LVT # Lo  [27] HANGUL SYLLABLE JJYIG..HANGUL SYLLABLE JJYIH
        "\ucc0d","\ucc0e","\ucc0f","\ucc10","\ucc11","\ucc12","\ucc13","\ucc14","\ucc15","\ucc16","\ucc17","\ucc18","\ucc19","\ucc1a","\ucc1b","\ucc1c","\ucc1d","\ucc1e","\ucc1f","\ucc20","\ucc21","\ucc22","\ucc23","\ucc24","\ucc25","\ucc26","\ucc27",  # ; LVT # Lo  [27] HANGUL SYLLABLE JJIG..HANGUL SYLLABLE JJIH
        "\ucc29","\ucc2a","\ucc2b","\ucc2c","\ucc2d","\ucc2e","\ucc2f","\ucc30","\ucc31","\ucc32","\ucc33","\ucc34","\ucc35","\ucc36","\ucc37","\ucc38","\ucc39","\ucc3a","\ucc3b","\ucc3c","\ucc3d","\ucc3e","\ucc3f","\ucc40","\ucc41","\ucc42","\ucc43",  # ; LVT # Lo  [27] HANGUL SYLLABLE CAG..HANGUL SYLLABLE CAH
        "\ucc45","\ucc46","\ucc47","\ucc48","\ucc49","\ucc4a","\ucc4b","\ucc4c","\ucc4d","\ucc4e","\ucc4f","\ucc50","\ucc51","\ucc52","\ucc53","\ucc54","\ucc55","\ucc56","\ucc57","\ucc58","\ucc59","\ucc5a","\ucc5b","\ucc5c","\ucc5d","\ucc5e","\ucc5f",  # ; LVT # Lo  [27] HANGUL SYLLABLE CAEG..HANGUL SYLLABLE CAEH
        "\ucc61","\ucc62","\ucc63","\ucc64","\ucc65","\ucc66","\ucc67","\ucc68","\ucc69","\ucc6a","\ucc6b","\ucc6c","\ucc6d","\ucc6e","\ucc6f","\ucc70","\ucc71","\ucc72","\ucc73","\ucc74","\ucc75","\ucc76","\ucc77","\ucc78","\ucc79","\ucc7a","\ucc7b",  # ; LVT # Lo  [27] HANGUL SYLLABLE CYAG..HANGUL SYLLABLE CYAH
        "\ucc7d","\ucc7e","\ucc7f","\ucc80","\ucc81","\ucc82","\ucc83","\ucc84","\ucc85","\ucc86","\ucc87","\ucc88","\ucc89","\ucc8a","\ucc8b","\ucc8c","\ucc8d","\ucc8e","\ucc8f","\ucc90","\ucc91","\ucc92","\ucc93","\ucc94","\ucc95","\ucc96","\ucc97",  # ; LVT # Lo  [27] HANGUL SYLLABLE CYAEG..HANGUL SYLLABLE CYAEH
        "\ucc99","\ucc9a","\ucc9b","\ucc9c","\ucc9d","\ucc9e","\ucc9f","\ucca0","\ucca1","\ucca2","\ucca3","\ucca4","\ucca5","\ucca6","\ucca7","\ucca8","\ucca9","\uccaa","\uccab","\uccac","\uccad","\uccae","\uccaf","\uccb0","\uccb1","\uccb2","\uccb3",  # ; LVT # Lo  [27] HANGUL SYLLABLE CEOG..HANGUL SYLLABLE CEOH
        "\uccb5","\uccb6","\uccb7","\uccb8","\uccb9","\uccba","\uccbb","\uccbc","\uccbd","\uccbe","\uccbf","\uccc0","\uccc1","\uccc2","\uccc3","\uccc4","\uccc5","\uccc6","\uccc7","\uccc8","\uccc9","\uccca","\ucccb","\ucccc","\ucccd","\uccce","\ucccf",  # ; LVT # Lo  [27] HANGUL SYLLABLE CEG..HANGUL SYLLABLE CEH
        "\uccd1","\uccd2","\uccd3","\uccd4","\uccd5","\uccd6","\uccd7","\uccd8","\uccd9","\uccda","\uccdb","\uccdc","\uccdd","\uccde","\uccdf","\ucce0","\ucce1","\ucce2","\ucce3","\ucce4","\ucce5","\ucce6","\ucce7","\ucce8","\ucce9","\uccea","\ucceb",  # ; LVT # Lo  [27] HANGUL SYLLABLE CYEOG..HANGUL SYLLABLE CYEOH
        "\ucced","\uccee","\uccef","\uccf0","\uccf1","\uccf2","\uccf3","\uccf4","\uccf5","\uccf6","\uccf7","\uccf8","\uccf9","\uccfa","\uccfb","\uccfc","\uccfd","\uccfe","\uccff","\ucd00","\ucd01","\ucd02","\ucd03","\ucd04","\ucd05","\ucd06","\ucd07",  # ; LVT # Lo  [27] HANGUL SYLLABLE CYEG..HANGUL SYLLABLE CYEH
        "\ucd09","\ucd0a","\ucd0b","\ucd0c","\ucd0d","\ucd0e","\ucd0f","\ucd10","\ucd11","\ucd12","\ucd13","\ucd14","\ucd15","\ucd16","\ucd17","\ucd18","\ucd19","\ucd1a","\ucd1b","\ucd1c","\ucd1d","\ucd1e","\ucd1f","\ucd20","\ucd21","\ucd22","\ucd23",  # ; LVT # Lo  [27] HANGUL SYLLABLE COG..HANGUL SYLLABLE COH
        "\ucd25","\ucd26","\ucd27","\ucd28","\ucd29","\ucd2a","\ucd2b","\ucd2c","\ucd2d","\ucd2e","\ucd2f","\ucd30","\ucd31","\ucd32","\ucd33","\ucd34","\ucd35","\ucd36","\ucd37","\ucd38","\ucd39","\ucd3a","\ucd3b","\ucd3c","\ucd3d","\ucd3e","\ucd3f",  # ; LVT # Lo  [27] HANGUL SYLLABLE CWAG..HANGUL SYLLABLE CWAH
        "\ucd41","\ucd42","\ucd43","\ucd44","\ucd45","\ucd46","\ucd47","\ucd48","\ucd49","\ucd4a","\ucd4b","\ucd4c","\ucd4d","\ucd4e","\ucd4f","\ucd50","\ucd51","\ucd52","\ucd53","\ucd54","\ucd55","\ucd56","\ucd57","\ucd58","\ucd59","\ucd5a","\ucd5b",  # ; LVT # Lo  [27] HANGUL SYLLABLE CWAEG..HANGUL SYLLABLE CWAEH
        "\ucd5d","\ucd5e","\ucd5f","\ucd60","\ucd61","\ucd62","\ucd63","\ucd64","\ucd65","\ucd66","\ucd67","\ucd68","\ucd69","\ucd6a","\ucd6b","\ucd6c","\ucd6d","\ucd6e","\ucd6f","\ucd70","\ucd71","\ucd72","\ucd73","\ucd74","\ucd75","\ucd76","\ucd77",  # ; LVT # Lo  [27] HANGUL SYLLABLE COEG..HANGUL SYLLABLE COEH
        "\ucd79","\ucd7a","\ucd7b","\ucd7c","\ucd7d","\ucd7e","\ucd7f","\ucd80","\ucd81","\ucd82","\ucd83","\ucd84","\ucd85","\ucd86","\ucd87","\ucd88","\ucd89","\ucd8a","\ucd8b","\ucd8c","\ucd8d","\ucd8e","\ucd8f","\ucd90","\ucd91","\ucd92","\ucd93",  # ; LVT # Lo  [27] HANGUL SYLLABLE CYOG..HANGUL SYLLABLE CYOH
        "\ucd95","\ucd96","\ucd97","\ucd98","\ucd99","\ucd9a","\ucd9b","\ucd9c","\ucd9d","\ucd9e","\ucd9f","\ucda0","\ucda1","\ucda2","\ucda3","\ucda4","\ucda5","\ucda6","\ucda7","\ucda8","\ucda9","\ucdaa","\ucdab","\ucdac","\ucdad","\ucdae","\ucdaf",  # ; LVT # Lo  [27] HANGUL SYLLABLE CUG..HANGUL SYLLABLE CUH
        "\ucdb1","\ucdb2","\ucdb3","\ucdb4","\ucdb5","\ucdb6","\ucdb7","\ucdb8","\ucdb9","\ucdba","\ucdbb","\ucdbc","\ucdbd","\ucdbe","\ucdbf","\ucdc0","\ucdc1","\ucdc2","\ucdc3","\ucdc4","\ucdc5","\ucdc6","\ucdc7","\ucdc8","\ucdc9","\ucdca","\ucdcb",  # ; LVT # Lo  [27] HANGUL SYLLABLE CWEOG..HANGUL SYLLABLE CWEOH
        "\ucdcd","\ucdce","\ucdcf","\ucdd0","\ucdd1","\ucdd2","\ucdd3","\ucdd4","\ucdd5","\ucdd6","\ucdd7","\ucdd8","\ucdd9","\ucdda","\ucddb","\ucddc","\ucddd","\ucdde","\ucddf","\ucde0","\ucde1","\ucde2","\ucde3","\ucde4","\ucde5","\ucde6","\ucde7",  # ; LVT # Lo  [27] HANGUL SYLLABLE CWEG..HANGUL SYLLABLE CWEH
        "\ucde9","\ucdea","\ucdeb","\ucdec","\ucded","\ucdee","\ucdef","\ucdf0","\ucdf1","\ucdf2","\ucdf3","\ucdf4","\ucdf5","\ucdf6","\ucdf7","\ucdf8","\ucdf9","\ucdfa","\ucdfb","\ucdfc","\ucdfd","\ucdfe","\ucdff","\uce00","\uce01","\uce02","\uce03",  # ; LVT # Lo  [27] HANGUL SYLLABLE CWIG..HANGUL SYLLABLE CWIH
        "\uce05","\uce06","\uce07","\uce08","\uce09","\uce0a","\uce0b","\uce0c","\uce0d","\uce0e","\uce0f","\uce10","\uce11","\uce12","\uce13","\uce14","\uce15","\uce16","\uce17","\uce18","\uce19","\uce1a","\uce1b","\uce1c","\uce1d","\uce1e","\uce1f",  # ; LVT # Lo  [27] HANGUL SYLLABLE CYUG..HANGUL SYLLABLE CYUH
        "\uce21","\uce22","\uce23","\uce24","\uce25","\uce26","\uce27","\uce28","\uce29","\uce2a","\uce2b","\uce2c","\uce2d","\uce2e","\uce2f","\uce30","\uce31","\uce32","\uce33","\uce34","\uce35","\uce36","\uce37","\uce38","\uce39","\uce3a","\uce3b",  # ; LVT # Lo  [27] HANGUL SYLLABLE CEUG..HANGUL SYLLABLE CEUH
        "\uce3d","\uce3e","\uce3f","\uce40","\uce41","\uce42","\uce43","\uce44","\uce45","\uce46","\uce47","\uce48","\uce49","\uce4a","\uce4b","\uce4c","\uce4d","\uce4e","\uce4f","\uce50","\uce51","\uce52","\uce53","\uce54","\uce55","\uce56","\uce57",  # ; LVT # Lo  [27] HANGUL SYLLABLE CYIG..HANGUL SYLLABLE CYIH
        "\uce59","\uce5a","\uce5b","\uce5c","\uce5d","\uce5e","\uce5f","\uce60","\uce61","\uce62","\uce63","\uce64","\uce65","\uce66","\uce67","\uce68","\uce69","\uce6a","\uce6b","\uce6c","\uce6d","\uce6e","\uce6f","\uce70","\uce71","\uce72","\uce73",  # ; LVT # Lo  [27] HANGUL SYLLABLE CIG..HANGUL SYLLABLE CIH
        "\uce75","\uce76","\uce77","\uce78","\uce79","\uce7a","\uce7b","\uce7c","\uce7d","\uce7e","\uce7f","\uce80","\uce81","\uce82","\uce83","\uce84","\uce85","\uce86","\uce87","\uce88","\uce89","\uce8a","\uce8b","\uce8c","\uce8d","\uce8e","\uce8f",  # ; LVT # Lo  [27] HANGUL SYLLABLE KAG..HANGUL SYLLABLE KAH
        "\uce91","\uce92","\uce93","\uce94","\uce95","\uce96","\uce97","\uce98","\uce99","\uce9a","\uce9b","\uce9c","\uce9d","\uce9e","\uce9f","\ucea0","\ucea1","\ucea2","\ucea3","\ucea4","\ucea5","\ucea6","\ucea7","\ucea8","\ucea9","\uceaa","\uceab",  # ; LVT # Lo  [27] HANGUL SYLLABLE KAEG..HANGUL SYLLABLE KAEH
        "\ucead","\uceae","\uceaf","\uceb0","\uceb1","\uceb2","\uceb3","\uceb4","\uceb5","\uceb6","\uceb7","\uceb8","\uceb9","\uceba","\ucebb","\ucebc","\ucebd","\ucebe","\ucebf","\ucec0","\ucec1","\ucec2","\ucec3","\ucec4","\ucec5","\ucec6","\ucec7",  # ; LVT # Lo  [27] HANGUL SYLLABLE KYAG..HANGUL SYLLABLE KYAH
        "\ucec9","\uceca","\ucecb","\ucecc","\ucecd","\ucece","\ucecf","\uced0","\uced1","\uced2","\uced3","\uced4","\uced5","\uced6","\uced7","\uced8","\uced9","\uceda","\ucedb","\ucedc","\ucedd","\ucede","\ucedf","\ucee0","\ucee1","\ucee2","\ucee3",  # ; LVT # Lo  [27] HANGUL SYLLABLE KYAEG..HANGUL SYLLABLE KYAEH
        "\ucee5","\ucee6","\ucee7","\ucee8","\ucee9","\uceea","\uceeb","\uceec","\uceed","\uceee","\uceef","\ucef0","\ucef1","\ucef2","\ucef3","\ucef4","\ucef5","\ucef6","\ucef7","\ucef8","\ucef9","\ucefa","\ucefb","\ucefc","\ucefd","\ucefe","\uceff",  # ; LVT # Lo  [27] HANGUL SYLLABLE KEOG..HANGUL SYLLABLE KEOH
        "\ucf01","\ucf02","\ucf03","\ucf04","\ucf05","\ucf06","\ucf07","\ucf08","\ucf09","\ucf0a","\ucf0b","\ucf0c","\ucf0d","\ucf0e","\ucf0f","\ucf10","\ucf11","\ucf12","\ucf13","\ucf14","\ucf15","\ucf16","\ucf17","\ucf18","\ucf19","\ucf1a","\ucf1b",  # ; LVT # Lo  [27] HANGUL SYLLABLE KEG..HANGUL SYLLABLE KEH
        "\ucf1d","\ucf1e","\ucf1f","\ucf20","\ucf21","\ucf22","\ucf23","\ucf24","\ucf25","\ucf26","\ucf27","\ucf28","\ucf29","\ucf2a","\ucf2b","\ucf2c","\ucf2d","\ucf2e","\ucf2f","\ucf30","\ucf31","\ucf32","\ucf33","\ucf34","\ucf35","\ucf36","\ucf37",  # ; LVT # Lo  [27] HANGUL SYLLABLE KYEOG..HANGUL SYLLABLE KYEOH
        "\ucf39","\ucf3a","\ucf3b","\ucf3c","\ucf3d","\ucf3e","\ucf3f","\ucf40","\ucf41","\ucf42","\ucf43","\ucf44","\ucf45","\ucf46","\ucf47","\ucf48","\ucf49","\ucf4a","\ucf4b","\ucf4c","\ucf4d","\ucf4e","\ucf4f","\ucf50","\ucf51","\ucf52","\ucf53",  # ; LVT # Lo  [27] HANGUL SYLLABLE KYEG..HANGUL SYLLABLE KYEH
        "\ucf55","\ucf56","\ucf57","\ucf58","\ucf59","\ucf5a","\ucf5b","\ucf5c","\ucf5d","\ucf5e","\ucf5f","\ucf60","\ucf61","\ucf62","\ucf63","\ucf64","\ucf65","\ucf66","\ucf67","\ucf68","\ucf69","\ucf6a","\ucf6b","\ucf6c","\ucf6d","\ucf6e","\ucf6f",  # ; LVT # Lo  [27] HANGUL SYLLABLE KOG..HANGUL SYLLABLE KOH
        "\ucf71","\ucf72","\ucf73","\ucf74","\ucf75","\ucf76","\ucf77","\ucf78","\ucf79","\ucf7a","\ucf7b","\ucf7c","\ucf7d","\ucf7e","\ucf7f","\ucf80","\ucf81","\ucf82","\ucf83","\ucf84","\ucf85","\ucf86","\ucf87","\ucf88","\ucf89","\ucf8a","\ucf8b",  # ; LVT # Lo  [27] HANGUL SYLLABLE KWAG..HANGUL SYLLABLE KWAH
        "\ucf8d","\ucf8e","\ucf8f","\ucf90","\ucf91","\ucf92","\ucf93","\ucf94","\ucf95","\ucf96","\ucf97","\ucf98","\ucf99","\ucf9a","\ucf9b","\ucf9c","\ucf9d","\ucf9e","\ucf9f","\ucfa0","\ucfa1","\ucfa2","\ucfa3","\ucfa4","\ucfa5","\ucfa6","\ucfa7",  # ; LVT # Lo  [27] HANGUL SYLLABLE KWAEG..HANGUL SYLLABLE KWAEH
        "\ucfa9","\ucfaa","\ucfab","\ucfac","\ucfad","\ucfae","\ucfaf","\ucfb0","\ucfb1","\ucfb2","\ucfb3","\ucfb4","\ucfb5","\ucfb6","\ucfb7","\ucfb8","\ucfb9","\ucfba","\ucfbb","\ucfbc","\ucfbd","\ucfbe","\ucfbf","\ucfc0","\ucfc1","\ucfc2","\ucfc3",  # ; LVT # Lo  [27] HANGUL SYLLABLE KOEG..HANGUL SYLLABLE KOEH
        "\ucfc5","\ucfc6","\ucfc7","\ucfc8","\ucfc9","\ucfca","\ucfcb","\ucfcc","\ucfcd","\ucfce","\ucfcf","\ucfd0","\ucfd1","\ucfd2","\ucfd3","\ucfd4","\ucfd5","\ucfd6","\ucfd7","\ucfd8","\ucfd9","\ucfda","\ucfdb","\ucfdc","\ucfdd","\ucfde","\ucfdf",  # ; LVT # Lo  [27] HANGUL SYLLABLE KYOG..HANGUL SYLLABLE KYOH
        "\ucfe1","\ucfe2","\ucfe3","\ucfe4","\ucfe5","\ucfe6","\ucfe7","\ucfe8","\ucfe9","\ucfea","\ucfeb","\ucfec","\ucfed","\ucfee","\ucfef","\ucff0","\ucff1","\ucff2","\ucff3","\ucff4","\ucff5","\ucff6","\ucff7","\ucff8","\ucff9","\ucffa","\ucffb",  # ; LVT # Lo  [27] HANGUL SYLLABLE KUG..HANGUL SYLLABLE KUH
        "\ucffd","\ucffe","\ucfff","\ud000","\ud001","\ud002","\ud003","\ud004","\ud005","\ud006","\ud007","\ud008","\ud009","\ud00a","\ud00b","\ud00c","\ud00d","\ud00e","\ud00f","\ud010","\ud011","\ud012","\ud013","\ud014","\ud015","\ud016","\ud017",  # ; LVT # Lo  [27] HANGUL SYLLABLE KWEOG..HANGUL SYLLABLE KWEOH
        "\ud019","\ud01a","\ud01b","\ud01c","\ud01d","\ud01e","\ud01f","\ud020","\ud021","\ud022","\ud023","\ud024","\ud025","\ud026","\ud027","\ud028","\ud029","\ud02a","\ud02b","\ud02c","\ud02d","\ud02e","\ud02f","\ud030","\ud031","\ud032","\ud033",  # ; LVT # Lo  [27] HANGUL SYLLABLE KWEG..HANGUL SYLLABLE KWEH
        "\ud035","\ud036","\ud037","\ud038","\ud039","\ud03a","\ud03b","\ud03c","\ud03d","\ud03e","\ud03f","\ud040","\ud041","\ud042","\ud043","\ud044","\ud045","\ud046","\ud047","\ud048","\ud049","\ud04a","\ud04b","\ud04c","\ud04d","\ud04e","\ud04f",  # ; LVT # Lo  [27] HANGUL SYLLABLE KWIG..HANGUL SYLLABLE KWIH
        "\ud051","\ud052","\ud053","\ud054","\ud055","\ud056","\ud057","\ud058","\ud059","\ud05a","\ud05b","\ud05c","\ud05d","\ud05e","\ud05f","\ud060","\ud061","\ud062","\ud063","\ud064","\ud065","\ud066","\ud067","\ud068","\ud069","\ud06a","\ud06b",  # ; LVT # Lo  [27] HANGUL SYLLABLE KYUG..HANGUL SYLLABLE KYUH
        "\ud06d","\ud06e","\ud06f","\ud070","\ud071","\ud072","\ud073","\ud074","\ud075","\ud076","\ud077","\ud078","\ud079","\ud07a","\ud07b","\ud07c","\ud07d","\ud07e","\ud07f","\ud080","\ud081","\ud082","\ud083","\ud084","\ud085","\ud086","\ud087",  # ; LVT # Lo  [27] HANGUL SYLLABLE KEUG..HANGUL SYLLABLE KEUH
        "\ud089","\ud08a","\ud08b","\ud08c","\ud08d","\ud08e","\ud08f","\ud090","\ud091","\ud092","\ud093","\ud094","\ud095","\ud096","\ud097","\ud098","\ud099","\ud09a","\ud09b","\ud09c","\ud09d","\ud09e","\ud09f","\ud0a0","\ud0a1","\ud0a2","\ud0a3",  # ; LVT # Lo  [27] HANGUL SYLLABLE KYIG..HANGUL SYLLABLE KYIH
        "\ud0a5","\ud0a6","\ud0a7","\ud0a8","\ud0a9","\ud0aa","\ud0ab","\ud0ac","\ud0ad","\ud0ae","\ud0af","\ud0b0","\ud0b1","\ud0b2","\ud0b3","\ud0b4","\ud0b5","\ud0b6","\ud0b7","\ud0b8","\ud0b9","\ud0ba","\ud0bb","\ud0bc","\ud0bd","\ud0be","\ud0bf",  # ; LVT # Lo  [27] HANGUL SYLLABLE KIG..HANGUL SYLLABLE KIH
        "\ud0c1","\ud0c2","\ud0c3","\ud0c4","\ud0c5","\ud0c6","\ud0c7","\ud0c8","\ud0c9","\ud0ca","\ud0cb","\ud0cc","\ud0cd","\ud0ce","\ud0cf","\ud0d0","\ud0d1","\ud0d2","\ud0d3","\ud0d4","\ud0d5","\ud0d6","\ud0d7","\ud0d8","\ud0d9","\ud0da","\ud0db",  # ; LVT # Lo  [27] HANGUL SYLLABLE TAG..HANGUL SYLLABLE TAH
        "\ud0dd","\ud0de","\ud0df","\ud0e0","\ud0e1","\ud0e2","\ud0e3","\ud0e4","\ud0e5","\ud0e6","\ud0e7","\ud0e8","\ud0e9","\ud0ea","\ud0eb","\ud0ec","\ud0ed","\ud0ee","\ud0ef","\ud0f0","\ud0f1","\ud0f2","\ud0f3","\ud0f4","\ud0f5","\ud0f6","\ud0f7",  # ; LVT # Lo  [27] HANGUL SYLLABLE TAEG..HANGUL SYLLABLE TAEH
        "\ud0f9","\ud0fa","\ud0fb","\ud0fc","\ud0fd","\ud0fe","\ud0ff","\ud100","\ud101","\ud102","\ud103","\ud104","\ud105","\ud106","\ud107","\ud108","\ud109","\ud10a","\ud10b","\ud10c","\ud10d","\ud10e","\ud10f","\ud110","\ud111","\ud112","\ud113",  # ; LVT # Lo  [27] HANGUL SYLLABLE TYAG..HANGUL SYLLABLE TYAH
        "\ud115","\ud116","\ud117","\ud118","\ud119","\ud11a","\ud11b","\ud11c","\ud11d","\ud11e","\ud11f","\ud120","\ud121","\ud122","\ud123","\ud124","\ud125","\ud126","\ud127","\ud128","\ud129","\ud12a","\ud12b","\ud12c","\ud12d","\ud12e","\ud12f",  # ; LVT # Lo  [27] HANGUL SYLLABLE TYAEG..HANGUL SYLLABLE TYAEH
        "\ud131","\ud132","\ud133","\ud134","\ud135","\ud136","\ud137","\ud138","\ud139","\ud13a","\ud13b","\ud13c","\ud13d","\ud13e","\ud13f","\ud140","\ud141","\ud142","\ud143","\ud144","\ud145","\ud146","\ud147","\ud148","\ud149","\ud14a","\ud14b",  # ; LVT # Lo  [27] HANGUL SYLLABLE TEOG..HANGUL SYLLABLE TEOH
        "\ud14d","\ud14e","\ud14f","\ud150","\ud151","\ud152","\ud153","\ud154","\ud155","\ud156","\ud157","\ud158","\ud159","\ud15a","\ud15b","\ud15c","\ud15d","\ud15e","\ud15f","\ud160","\ud161","\ud162","\ud163","\ud164","\ud165","\ud166","\ud167",  # ; LVT # Lo  [27] HANGUL SYLLABLE TEG..HANGUL SYLLABLE TEH
        "\ud169","\ud16a","\ud16b","\ud16c","\ud16d","\ud16e","\ud16f","\ud170","\ud171","\ud172","\ud173","\ud174","\ud175","\ud176","\ud177","\ud178","\ud179","\ud17a","\ud17b","\ud17c","\ud17d","\ud17e","\ud17f","\ud180","\ud181","\ud182","\ud183",  # ; LVT # Lo  [27] HANGUL SYLLABLE TYEOG..HANGUL SYLLABLE TYEOH
        "\ud185","\ud186","\ud187","\ud188","\ud189","\ud18a","\ud18b","\ud18c","\ud18d","\ud18e","\ud18f","\ud190","\ud191","\ud192","\ud193","\ud194","\ud195","\ud196","\ud197","\ud198","\ud199","\ud19a","\ud19b","\ud19c","\ud19d","\ud19e","\ud19f",  # ; LVT # Lo  [27] HANGUL SYLLABLE TYEG..HANGUL SYLLABLE TYEH
        "\ud1a1","\ud1a2","\ud1a3","\ud1a4","\ud1a5","\ud1a6","\ud1a7","\ud1a8","\ud1a9","\ud1aa","\ud1ab","\ud1ac","\ud1ad","\ud1ae","\ud1af","\ud1b0","\ud1b1","\ud1b2","\ud1b3","\ud1b4","\ud1b5","\ud1b6","\ud1b7","\ud1b8","\ud1b9","\ud1ba","\ud1bb",  # ; LVT # Lo  [27] HANGUL SYLLABLE TOG..HANGUL SYLLABLE TOH
        "\ud1bd","\ud1be","\ud1bf","\ud1c0","\ud1c1","\ud1c2","\ud1c3","\ud1c4","\ud1c5","\ud1c6","\ud1c7","\ud1c8","\ud1c9","\ud1ca","\ud1cb","\ud1cc","\ud1cd","\ud1ce","\ud1cf","\ud1d0","\ud1d1","\ud1d2","\ud1d3","\ud1d4","\ud1d5","\ud1d6","\ud1d7",  # ; LVT # Lo  [27] HANGUL SYLLABLE TWAG..HANGUL SYLLABLE TWAH
        "\ud1d9","\ud1da","\ud1db","\ud1dc","\ud1dd","\ud1de","\ud1df","\ud1e0","\ud1e1","\ud1e2","\ud1e3","\ud1e4","\ud1e5","\ud1e6","\ud1e7","\ud1e8","\ud1e9","\ud1ea","\ud1eb","\ud1ec","\ud1ed","\ud1ee","\ud1ef","\ud1f0","\ud1f1","\ud1f2","\ud1f3",  # ; LVT # Lo  [27] HANGUL SYLLABLE TWAEG..HANGUL SYLLABLE TWAEH
        "\ud1f5","\ud1f6","\ud1f7","\ud1f8","\ud1f9","\ud1fa","\ud1fb","\ud1fc","\ud1fd","\ud1fe","\ud1ff","\ud200","\ud201","\ud202","\ud203","\ud204","\ud205","\ud206","\ud207","\ud208","\ud209","\ud20a","\ud20b","\ud20c","\ud20d","\ud20e","\ud20f",  # ; LVT # Lo  [27] HANGUL SYLLABLE TOEG..HANGUL SYLLABLE TOEH
        "\ud211","\ud212","\ud213","\ud214","\ud215","\ud216","\ud217","\ud218","\ud219","\ud21a","\ud21b","\ud21c","\ud21d","\ud21e","\ud21f","\ud220","\ud221","\ud222","\ud223","\ud224","\ud225","\ud226","\ud227","\ud228","\ud229","\ud22a","\ud22b",  # ; LVT # Lo  [27] HANGUL SYLLABLE TYOG..HANGUL SYLLABLE TYOH
        "\ud22d","\ud22e","\ud22f","\ud230","\ud231","\ud232","\ud233","\ud234","\ud235","\ud236","\ud237","\ud238","\ud239","\ud23a","\ud23b","\ud23c","\ud23d","\ud23e","\ud23f","\ud240","\ud241","\ud242","\ud243","\ud244","\ud245","\ud246","\ud247",  # ; LVT # Lo  [27] HANGUL SYLLABLE TUG..HANGUL SYLLABLE TUH
        "\ud249","\ud24a","\ud24b","\ud24c","\ud24d","\ud24e","\ud24f","\ud250","\ud251","\ud252","\ud253","\ud254","\ud255","\ud256","\ud257","\ud258","\ud259","\ud25a","\ud25b","\ud25c","\ud25d","\ud25e","\ud25f","\ud260","\ud261","\ud262","\ud263",  # ; LVT # Lo  [27] HANGUL SYLLABLE TWEOG..HANGUL SYLLABLE TWEOH
        "\ud265","\ud266","\ud267","\ud268","\ud269","\ud26a","\ud26b","\ud26c","\ud26d","\ud26e","\ud26f","\ud270","\ud271","\ud272","\ud273","\ud274","\ud275","\ud276","\ud277","\ud278","\ud279","\ud27a","\ud27b","\ud27c","\ud27d","\ud27e","\ud27f",  # ; LVT # Lo  [27] HANGUL SYLLABLE TWEG..HANGUL SYLLABLE TWEH
        "\ud281","\ud282","\ud283","\ud284","\ud285","\ud286","\ud287","\ud288","\ud289","\ud28a","\ud28b","\ud28c","\ud28d","\ud28e","\ud28f","\ud290","\ud291","\ud292","\ud293","\ud294","\ud295","\ud296","\ud297","\ud298","\ud299","\ud29a","\ud29b",  # ; LVT # Lo  [27] HANGUL SYLLABLE TWIG..HANGUL SYLLABLE TWIH
        "\ud29d","\ud29e","\ud29f","\ud2a0","\ud2a1","\ud2a2","\ud2a3","\ud2a4","\ud2a5","\ud2a6","\ud2a7","\ud2a8","\ud2a9","\ud2aa","\ud2ab","\ud2ac","\ud2ad","\ud2ae","\ud2af","\ud2b0","\ud2b1","\ud2b2","\ud2b3","\ud2b4","\ud2b5","\ud2b6","\ud2b7",  # ; LVT # Lo  [27] HANGUL SYLLABLE TYUG..HANGUL SYLLABLE TYUH
        "\ud2b9","\ud2ba","\ud2bb","\ud2bc","\ud2bd","\ud2be","\ud2bf","\ud2c0","\ud2c1","\ud2c2","\ud2c3","\ud2c4","\ud2c5","\ud2c6","\ud2c7","\ud2c8","\ud2c9","\ud2ca","\ud2cb","\ud2cc","\ud2cd","\ud2ce","\ud2cf","\ud2d0","\ud2d1","\ud2d2","\ud2d3",  # ; LVT # Lo  [27] HANGUL SYLLABLE TEUG..HANGUL SYLLABLE TEUH
        "\ud2d5","\ud2d6","\ud2d7","\ud2d8","\ud2d9","\ud2da","\ud2db","\ud2dc","\ud2dd","\ud2de","\ud2df","\ud2e0","\ud2e1","\ud2e2","\ud2e3","\ud2e4","\ud2e5","\ud2e6","\ud2e7","\ud2e8","\ud2e9","\ud2ea","\ud2eb","\ud2ec","\ud2ed","\ud2ee","\ud2ef",  # ; LVT # Lo  [27] HANGUL SYLLABLE TYIG..HANGUL SYLLABLE TYIH
        "\ud2f1","\ud2f2","\ud2f3","\ud2f4","\ud2f5","\ud2f6","\ud2f7","\ud2f8","\ud2f9","\ud2fa","\ud2fb","\ud2fc","\ud2fd","\ud2fe","\ud2ff","\ud300","\ud301","\ud302","\ud303","\ud304","\ud305","\ud306","\ud307","\ud308","\ud309","\ud30a","\ud30b",  # ; LVT # Lo  [27] HANGUL SYLLABLE TIG..HANGUL SYLLABLE TIH
        "\ud30d","\ud30e","\ud30f","\ud310","\ud311","\ud312","\ud313","\ud314","\ud315","\ud316","\ud317","\ud318","\ud319","\ud31a","\ud31b","\ud31c","\ud31d","\ud31e","\ud31f","\ud320","\ud321","\ud322","\ud323","\ud324","\ud325","\ud326","\ud327",  # ; LVT # Lo  [27] HANGUL SYLLABLE PAG..HANGUL SYLLABLE PAH
        "\ud329","\ud32a","\ud32b","\ud32c","\ud32d","\ud32e","\ud32f","\ud330","\ud331","\ud332","\ud333","\ud334","\ud335","\ud336","\ud337","\ud338","\ud339","\ud33a","\ud33b","\ud33c","\ud33d","\ud33e","\ud33f","\ud340","\ud341","\ud342","\ud343",  # ; LVT # Lo  [27] HANGUL SYLLABLE PAEG..HANGUL SYLLABLE PAEH
        "\ud345","\ud346","\ud347","\ud348","\ud349","\ud34a","\ud34b","\ud34c","\ud34d","\ud34e","\ud34f","\ud350","\ud351","\ud352","\ud353","\ud354","\ud355","\ud356","\ud357","\ud358","\ud359","\ud35a","\ud35b","\ud35c","\ud35d","\ud35e","\ud35f",  # ; LVT # Lo  [27] HANGUL SYLLABLE PYAG..HANGUL SYLLABLE PYAH
        "\ud361","\ud362","\ud363","\ud364","\ud365","\ud366","\ud367","\ud368","\ud369","\ud36a","\ud36b","\ud36c","\ud36d","\ud36e","\ud36f","\ud370","\ud371","\ud372","\ud373","\ud374","\ud375","\ud376","\ud377","\ud378","\ud379","\ud37a","\ud37b",  # ; LVT # Lo  [27] HANGUL SYLLABLE PYAEG..HANGUL SYLLABLE PYAEH
        "\ud37d","\ud37e","\ud37f","\ud380","\ud381","\ud382","\ud383","\ud384","\ud385","\ud386","\ud387","\ud388","\ud389","\ud38a","\ud38b","\ud38c","\ud38d","\ud38e","\ud38f","\ud390","\ud391","\ud392","\ud393","\ud394","\ud395","\ud396","\ud397",  # ; LVT # Lo  [27] HANGUL SYLLABLE PEOG..HANGUL SYLLABLE PEOH
        "\ud399","\ud39a","\ud39b","\ud39c","\ud39d","\ud39e","\ud39f","\ud3a0","\ud3a1","\ud3a2","\ud3a3","\ud3a4","\ud3a5","\ud3a6","\ud3a7","\ud3a8","\ud3a9","\ud3aa","\ud3ab","\ud3ac","\ud3ad","\ud3ae","\ud3af","\ud3b0","\ud3b1","\ud3b2","\ud3b3",  # ; LVT # Lo  [27] HANGUL SYLLABLE PEG..HANGUL SYLLABLE PEH
        "\ud3b5","\ud3b6","\ud3b7","\ud3b8","\ud3b9","\ud3ba","\ud3bb","\ud3bc","\ud3bd","\ud3be","\ud3bf","\ud3c0","\ud3c1","\ud3c2","\ud3c3","\ud3c4","\ud3c5","\ud3c6","\ud3c7","\ud3c8","\ud3c9","\ud3ca","\ud3cb","\ud3cc","\ud3cd","\ud3ce","\ud3cf",  # ; LVT # Lo  [27] HANGUL SYLLABLE PYEOG..HANGUL SYLLABLE PYEOH
        "\ud3d1","\ud3d2","\ud3d3","\ud3d4","\ud3d5","\ud3d6","\ud3d7","\ud3d8","\ud3d9","\ud3da","\ud3db","\ud3dc","\ud3dd","\ud3de","\ud3df","\ud3e0","\ud3e1","\ud3e2","\ud3e3","\ud3e4","\ud3e5","\ud3e6","\ud3e7","\ud3e8","\ud3e9","\ud3ea","\ud3eb",  # ; LVT # Lo  [27] HANGUL SYLLABLE PYEG..HANGUL SYLLABLE PYEH
        "\ud3ed","\ud3ee","\ud3ef","\ud3f0","\ud3f1","\ud3f2","\ud3f3","\ud3f4","\ud3f5","\ud3f6","\ud3f7","\ud3f8","\ud3f9","\ud3fa","\ud3fb","\ud3fc","\ud3fd","\ud3fe","\ud3ff","\ud400","\ud401","\ud402","\ud403","\ud404","\ud405","\ud406","\ud407",  # ; LVT # Lo  [27] HANGUL SYLLABLE POG..HANGUL SYLLABLE POH
        "\ud409","\ud40a","\ud40b","\ud40c","\ud40d","\ud40e","\ud40f","\ud410","\ud411","\ud412","\ud413","\ud414","\ud415","\ud416","\ud417","\ud418","\ud419","\ud41a","\ud41b","\ud41c","\ud41d","\ud41e","\ud41f","\ud420","\ud421","\ud422","\ud423",  # ; LVT # Lo  [27] HANGUL SYLLABLE PWAG..HANGUL SYLLABLE PWAH
        "\ud425","\ud426","\ud427","\ud428","\ud429","\ud42a","\ud42b","\ud42c","\ud42d","\ud42e","\ud42f","\ud430","\ud431","\ud432","\ud433","\ud434","\ud435","\ud436","\ud437","\ud438","\ud439","\ud43a","\ud43b","\ud43c","\ud43d","\ud43e","\ud43f",  # ; LVT # Lo  [27] HANGUL SYLLABLE PWAEG..HANGUL SYLLABLE PWAEH
        "\ud441","\ud442","\ud443","\ud444","\ud445","\ud446","\ud447","\ud448","\ud449","\ud44a","\ud44b","\ud44c","\ud44d","\ud44e","\ud44f","\ud450","\ud451","\ud452","\ud453","\ud454","\ud455","\ud456","\ud457","\ud458","\ud459","\ud45a","\ud45b",  # ; LVT # Lo  [27] HANGUL SYLLABLE POEG..HANGUL SYLLABLE POEH
        "\ud45d","\ud45e","\ud45f","\ud460","\ud461","\ud462","\ud463","\ud464","\ud465","\ud466","\ud467","\ud468","\ud469","\ud46a","\ud46b","\ud46c","\ud46d","\ud46e","\ud46f","\ud470","\ud471","\ud472","\ud473","\ud474","\ud475","\ud476","\ud477",  # ; LVT # Lo  [27] HANGUL SYLLABLE PYOG..HANGUL SYLLABLE PYOH
        "\ud479","\ud47a","\ud47b","\ud47c","\ud47d","\ud47e","\ud47f","\ud480","\ud481","\ud482","\ud483","\ud484","\ud485","\ud486","\ud487","\ud488","\ud489","\ud48a","\ud48b","\ud48c","\ud48d","\ud48e","\ud48f","\ud490","\ud491","\ud492","\ud493",  # ; LVT # Lo  [27] HANGUL SYLLABLE PUG..HANGUL SYLLABLE PUH
        "\ud495","\ud496","\ud497","\ud498","\ud499","\ud49a","\ud49b","\ud49c","\ud49d","\ud49e","\ud49f","\ud4a0","\ud4a1","\ud4a2","\ud4a3","\ud4a4","\ud4a5","\ud4a6","\ud4a7","\ud4a8","\ud4a9","\ud4aa","\ud4ab","\ud4ac","\ud4ad","\ud4ae","\ud4af",  # ; LVT # Lo  [27] HANGUL SYLLABLE PWEOG..HANGUL SYLLABLE PWEOH
        "\ud4b1","\ud4b2","\ud4b3","\ud4b4","\ud4b5","\ud4b6","\ud4b7","\ud4b8","\ud4b9","\ud4ba","\ud4bb","\ud4bc","\ud4bd","\ud4be","\ud4bf","\ud4c0","\ud4c1","\ud4c2","\ud4c3","\ud4c4","\ud4c5","\ud4c6","\ud4c7","\ud4c8","\ud4c9","\ud4ca","\ud4cb",  # ; LVT # Lo  [27] HANGUL SYLLABLE PWEG..HANGUL SYLLABLE PWEH
        "\ud4cd","\ud4ce","\ud4cf","\ud4d0","\ud4d1","\ud4d2","\ud4d3","\ud4d4","\ud4d5","\ud4d6","\ud4d7","\ud4d8","\ud4d9","\ud4da","\ud4db","\ud4dc","\ud4dd","\ud4de","\ud4df","\ud4e0","\ud4e1","\ud4e2","\ud4e3","\ud4e4","\ud4e5","\ud4e6","\ud4e7",  # ; LVT # Lo  [27] HANGUL SYLLABLE PWIG..HANGUL SYLLABLE PWIH
        "\ud4e9","\ud4ea","\ud4eb","\ud4ec","\ud4ed","\ud4ee","\ud4ef","\ud4f0","\ud4f1","\ud4f2","\ud4f3","\ud4f4","\ud4f5","\ud4f6","\ud4f7","\ud4f8","\ud4f9","\ud4fa","\ud4fb","\ud4fc","\ud4fd","\ud4fe","\ud4ff","\ud500","\ud501","\ud502","\ud503",  # ; LVT # Lo  [27] HANGUL SYLLABLE PYUG..HANGUL SYLLABLE PYUH
        "\ud505","\ud506","\ud507","\ud508","\ud509","\ud50a","\ud50b","\ud50c","\ud50d","\ud50e","\ud50f","\ud510","\ud511","\ud512","\ud513","\ud514","\ud515","\ud516","\ud517","\ud518","\ud519","\ud51a","\ud51b","\ud51c","\ud51d","\ud51e","\ud51f",  # ; LVT # Lo  [27] HANGUL SYLLABLE PEUG..HANGUL SYLLABLE PEUH
        "\ud521","\ud522","\ud523","\ud524","\ud525","\ud526","\ud527","\ud528","\ud529","\ud52a","\ud52b","\ud52c","\ud52d","\ud52e","\ud52f","\ud530","\ud531","\ud532","\ud533","\ud534","\ud535","\ud536","\ud537","\ud538","\ud539","\ud53a","\ud53b",  # ; LVT # Lo  [27] HANGUL SYLLABLE PYIG..HANGUL SYLLABLE PYIH
        "\ud53d","\ud53e","\ud53f","\ud540","\ud541","\ud542","\ud543","\ud544","\ud545","\ud546","\ud547","\ud548","\ud549","\ud54a","\ud54b","\ud54c","\ud54d","\ud54e","\ud54f","\ud550","\ud551","\ud552","\ud553","\ud554","\ud555","\ud556","\ud557",  # ; LVT # Lo  [27] HANGUL SYLLABLE PIG..HANGUL SYLLABLE PIH
        "\ud559","\ud55a","\ud55b","\ud55c","\ud55d","\ud55e","\ud55f","\ud560","\ud561","\ud562","\ud563","\ud564","\ud565","\ud566","\ud567","\ud568","\ud569","\ud56a","\ud56b","\ud56c","\ud56d","\ud56e","\ud56f","\ud570","\ud571","\ud572","\ud573",  # ; LVT # Lo  [27] HANGUL SYLLABLE HAG..HANGUL SYLLABLE HAH
        "\ud575","\ud576","\ud577","\ud578","\ud579","\ud57a","\ud57b","\ud57c","\ud57d","\ud57e","\ud57f","\ud580","\ud581","\ud582","\ud583","\ud584","\ud585","\ud586","\ud587","\ud588","\ud589","\ud58a","\ud58b","\ud58c","\ud58d","\ud58e","\ud58f",  # ; LVT # Lo  [27] HANGUL SYLLABLE HAEG..HANGUL SYLLABLE HAEH
        "\ud591","\ud592","\ud593","\ud594","\ud595","\ud596","\ud597","\ud598","\ud599","\ud59a","\ud59b","\ud59c","\ud59d","\ud59e","\ud59f","\ud5a0","\ud5a1","\ud5a2","\ud5a3","\ud5a4","\ud5a5","\ud5a6","\ud5a7","\ud5a8","\ud5a9","\ud5aa","\ud5ab",  # ; LVT # Lo  [27] HANGUL SYLLABLE HYAG..HANGUL SYLLABLE HYAH
        "\ud5ad","\ud5ae","\ud5af","\ud5b0","\ud5b1","\ud5b2","\ud5b3","\ud5b4","\ud5b5","\ud5b6","\ud5b7","\ud5b8","\ud5b9","\ud5ba","\ud5bb","\ud5bc","\ud5bd","\ud5be","\ud5bf","\ud5c0","\ud5c1","\ud5c2","\ud5c3","\ud5c4","\ud5c5","\ud5c6","\ud5c7",  # ; LVT # Lo  [27] HANGUL SYLLABLE HYAEG..HANGUL SYLLABLE HYAEH
        "\ud5c9","\ud5ca","\ud5cb","\ud5cc","\ud5cd","\ud5ce","\ud5cf","\ud5d0","\ud5d1","\ud5d2","\ud5d3","\ud5d4","\ud5d5","\ud5d6","\ud5d7","\ud5d8","\ud5d9","\ud5da","\ud5db","\ud5dc","\ud5dd","\ud5de","\ud5df","\ud5e0","\ud5e1","\ud5e2","\ud5e3",  # ; LVT # Lo  [27] HANGUL SYLLABLE HEOG..HANGUL SYLLABLE HEOH
        "\ud5e5","\ud5e6","\ud5e7","\ud5e8","\ud5e9","\ud5ea","\ud5eb","\ud5ec","\ud5ed","\ud5ee","\ud5ef","\ud5f0","\ud5f1","\ud5f2","\ud5f3","\ud5f4","\ud5f5","\ud5f6","\ud5f7","\ud5f8","\ud5f9","\ud5fa","\ud5fb","\ud5fc","\ud5fd","\ud5fe","\ud5ff",  # ; LVT # Lo  [27] HANGUL SYLLABLE HEG..HANGUL SYLLABLE HEH
        "\ud601","\ud602","\ud603","\ud604","\ud605","\ud606","\ud607","\ud608","\ud609","\ud60a","\ud60b","\ud60c","\ud60d","\ud60e","\ud60f","\ud610","\ud611","\ud612","\ud613","\ud614","\ud615","\ud616","\ud617","\ud618","\ud619","\ud61a","\ud61b",  # ; LVT # Lo  [27] HANGUL SYLLABLE HYEOG..HANGUL SYLLABLE HYEOH
        "\ud61d","\ud61e","\ud61f","\ud620","\ud621","\ud622","\ud623","\ud624","\ud625","\ud626","\ud627","\ud628","\ud629","\ud62a","\ud62b","\ud62c","\ud62d","\ud62e","\ud62f","\ud630","\ud631","\ud632","\ud633","\ud634","\ud635","\ud636","\ud637",  # ; LVT # Lo  [27] HANGUL SYLLABLE HYEG..HANGUL SYLLABLE HYEH
        "\ud639","\ud63a","\ud63b","\ud63c","\ud63d","\ud63e","\ud63f","\ud640","\ud641","\ud642","\ud643","\ud644","\ud645","\ud646","\ud647","\ud648","\ud649","\ud64a","\ud64b","\ud64c","\ud64d","\ud64e","\ud64f","\ud650","\ud651","\ud652","\ud653",  # ; LVT # Lo  [27] HANGUL SYLLABLE HOG..HANGUL SYLLABLE HOH
        "\ud655","\ud656","\ud657","\ud658","\ud659","\ud65a","\ud65b","\ud65c","\ud65d","\ud65e","\ud65f","\ud660","\ud661","\ud662","\ud663","\ud664","\ud665","\ud666","\ud667","\ud668","\ud669","\ud66a","\ud66b","\ud66c","\ud66d","\ud66e","\ud66f",  # ; LVT # Lo  [27] HANGUL SYLLABLE HWAG..HANGUL SYLLABLE HWAH
        "\ud671","\ud672","\ud673","\ud674","\ud675","\ud676","\ud677","\ud678","\ud679","\ud67a","\ud67b","\ud67c","\ud67d","\ud67e","\ud67f","\ud680","\ud681","\ud682","\ud683","\ud684","\ud685","\ud686","\ud687","\ud688","\ud689","\ud68a","\ud68b",  # ; LVT # Lo  [27] HANGUL SYLLABLE HWAEG..HANGUL SYLLABLE HWAEH
        "\ud68d","\ud68e","\ud68f","\ud690","\ud691","\ud692","\ud693","\ud694","\ud695","\ud696","\ud697","\ud698","\ud699","\ud69a","\ud69b","\ud69c","\ud69d","\ud69e","\ud69f","\ud6a0","\ud6a1","\ud6a2","\ud6a3","\ud6a4","\ud6a5","\ud6a6","\ud6a7",  # ; LVT # Lo  [27] HANGUL SYLLABLE HOEG..HANGUL SYLLABLE HOEH
        "\ud6a9","\ud6aa","\ud6ab","\ud6ac","\ud6ad","\ud6ae","\ud6af","\ud6b0","\ud6b1","\ud6b2","\ud6b3","\ud6b4","\ud6b5","\ud6b6","\ud6b7","\ud6b8","\ud6b9","\ud6ba","\ud6bb","\ud6bc","\ud6bd","\ud6be","\ud6bf","\ud6c0","\ud6c1","\ud6c2","\ud6c3",  # ; LVT # Lo  [27] HANGUL SYLLABLE HYOG..HANGUL SYLLABLE HYOH
        "\ud6c5","\ud6c6","\ud6c7","\ud6c8","\ud6c9","\ud6ca","\ud6cb","\ud6cc","\ud6cd","\ud6ce","\ud6cf","\ud6d0","\ud6d1","\ud6d2","\ud6d3","\ud6d4","\ud6d5","\ud6d6","\ud6d7","\ud6d8","\ud6d9","\ud6da","\ud6db","\ud6dc","\ud6dd","\ud6de","\ud6df",  # ; LVT # Lo  [27] HANGUL SYLLABLE HUG..HANGUL SYLLABLE HUH
        "\ud6e1","\ud6e2","\ud6e3","\ud6e4","\ud6e5","\ud6e6","\ud6e7","\ud6e8","\ud6e9","\ud6ea","\ud6eb","\ud6ec","\ud6ed","\ud6ee","\ud6ef","\ud6f0","\ud6f1","\ud6f2","\ud6f3","\ud6f4","\ud6f5","\ud6f6","\ud6f7","\ud6f8","\ud6f9","\ud6fa","\ud6fb",  # ; LVT # Lo  [27] HANGUL SYLLABLE HWEOG..HANGUL SYLLABLE HWEOH
        "\ud6fd","\ud6fe","\ud6ff","\ud700","\ud701","\ud702","\ud703","\ud704","\ud705","\ud706","\ud707","\ud708","\ud709","\ud70a","\ud70b","\ud70c","\ud70d","\ud70e","\ud70f","\ud710","\ud711","\ud712","\ud713","\ud714","\ud715","\ud716","\ud717",  # ; LVT # Lo  [27] HANGUL SYLLABLE HWEG..HANGUL SYLLABLE HWEH
        "\ud719","\ud71a","\ud71b","\ud71c","\ud71d","\ud71e","\ud71f","\ud720","\ud721","\ud722","\ud723","\ud724","\ud725","\ud726","\ud727","\ud728","\ud729","\ud72a","\ud72b","\ud72c","\ud72d","\ud72e","\ud72f","\ud730","\ud731","\ud732","\ud733",  # ; LVT # Lo  [27] HANGUL SYLLABLE HWIG..HANGUL SYLLABLE HWIH
        "\ud735","\ud736","\ud737","\ud738","\ud739","\ud73a","\ud73b","\ud73c","\ud73d","\ud73e","\ud73f","\ud740","\ud741","\ud742","\ud743","\ud744","\ud745","\ud746","\ud747","\ud748","\ud749","\ud74a","\ud74b","\ud74c","\ud74d","\ud74e","\ud74f",  # ; LVT # Lo  [27] HANGUL SYLLABLE HYUG..HANGUL SYLLABLE HYUH
        "\ud751","\ud752","\ud753","\ud754","\ud755","\ud756","\ud757","\ud758","\ud759","\ud75a","\ud75b","\ud75c","\ud75d","\ud75e","\ud75f","\ud760","\ud761","\ud762","\ud763","\ud764","\ud765","\ud766","\ud767","\ud768","\ud769","\ud76a","\ud76b",  # ; LVT # Lo  [27] HANGUL SYLLABLE HEUG..HANGUL SYLLABLE HEUH
        "\ud76d","\ud76e","\ud76f","\ud770","\ud771","\ud772","\ud773","\ud774","\ud775","\ud776","\ud777","\ud778","\ud779","\ud77a","\ud77b","\ud77c","\ud77d","\ud77e","\ud77f","\ud780","\ud781","\ud782","\ud783","\ud784","\ud785","\ud786","\ud787",  # ; LVT # Lo  [27] HANGUL SYLLABLE HYIG..HANGUL SYLLABLE HYIH
        "\ud789","\ud78a","\ud78b","\ud78c","\ud78d","\ud78e","\ud78f","\ud790","\ud791","\ud792","\ud793","\ud794","\ud795","\ud796","\ud797","\ud798","\ud799","\ud79a","\ud79b","\ud79c","\ud79d","\ud79e","\ud79f","\ud7a0","\ud7a1","\ud7a2","\ud7a3",  # ; LVT # Lo  [27] HANGUL SYLLABLE HIG..HANGUL SYLLABLE HIH
        "\u261D",  # ; E_Base # So       WHITE UP POINTING INDEX
        "\u26F9",  # ; E_Base # So       PERSON WITH BALL
        "\u270a","\u270b","\u270c","\u270d",  # ; E_Base # So   [4] RAISED FIST..WRITING HAND
        "\u1F385",  # ; E_Base # So       FATHER CHRISTMAS
        "\u1f3c2","\u1f3c3","\u1f3c4",  # ; E_Base # So   [3] SNOWBOARDER..SURFER
        "\u1F3C7",  # ; E_Base # So       HORSE RACING
        "\u1f3ca","\u1f3cb","\u1f3cc",  # ; E_Base # So   [3] SWIMMER..GOLFER
        "\u1f442","\u1f443",  # ; E_Base # So   [2] EAR..NOSE
        "\u1f446","\u1f447","\u1f448","\u1f449","\u1f44a","\u1f44b","\u1f44c","\u1f44d","\u1f44e","\u1f44f","\u1f450",  # ; E_Base # So  [11] WHITE UP POINTING BACKHAND INDEX..OPEN HANDS SIGN
        "\u1F46E",  # ; E_Base # So       POLICE OFFICER
        "\u1f470","\u1f471","\u1f472","\u1f473","\u1f474","\u1f475","\u1f476","\u1f477","\u1f478",  # ; E_Base # So   [9] BRIDE WITH VEIL..PRINCESS
        "\u1F47C",  # ; E_Base # So       BABY ANGEL
        "\u1f481","\u1f482","\u1f483",  # ; E_Base # So   [3] INFORMATION DESK PERSON..DANCER
        "\u1f485","\u1f486","\u1f487",  # ; E_Base # So   [3] NAIL POLISH..HAIRCUT
        "\u1F4AA",  # ; E_Base # So       FLEXED BICEPS
        "\u1f574","\u1f575",  # ; E_Base # So   [2] MAN IN BUSINESS SUIT LEVITATING..SLEUTH OR SPY
        "\u1F57A",  # ; E_Base # So       MAN DANCING
        "\u1F590",  # ; E_Base # So       RAISED HAND WITH FINGERS SPLAYED
        "\u1f595","\u1f596",  # ; E_Base # So   [2] REVERSED HAND WITH MIDDLE FINGER EXTENDED..RAISED HAND WITH PART BETWEEN MIDDLE AND RING FINGERS
        "\u1f645","\u1f646","\u1f647",  # ; E_Base # So   [3] FACE WITH NO GOOD GESTURE..PERSON BOWING DEEPLY
        "\u1f64b","\u1f64c","\u1f64d","\u1f64e","\u1f64f",  # ; E_Base # So   [5] HAPPY PERSON RAISING ONE HAND..PERSON WITH FOLDED HANDS
        "\u1F6A3",  # ; E_Base # So       ROWBOAT
        "\u1f6b4","\u1f6b5","\u1f6b6",  # ; E_Base # So   [3] BICYCLIST..PEDESTRIAN
        "\u1F6C0",  # ; E_Base # So       BATH
        "\u1F6CC",  # ; E_Base # So       SLEEPING ACCOMMODATION
        "\u1f918","\u1f919","\u1f91a","\u1f91b","\u1f91c",  # ; E_Base # So   [5] SIGN OF THE HORNS..RIGHT-FACING FIST
        "\u1f91e","\u1f91f",  # ; E_Base # So   [2] HAND WITH INDEX AND MIDDLE FINGERS CROSSED..I LOVE YOU HAND SIGN
        "\u1F926",  # ; E_Base # So       FACE PALM
        "\u1f930","\u1f931","\u1f932","\u1f933","\u1f934","\u1f935","\u1f936","\u1f937","\u1f938","\u1f939",  # ; E_Base # So  [10] PREGNANT WOMAN..JUGGLING
        "\u1f93d","\u1f93e",  # ; E_Base # So   [2] WATER POLO..HANDBALL
        "\u1f9d1","\u1f9d2","\u1f9d3","\u1f9d4","\u1f9d5","\u1f9d6","\u1f9d7","\u1f9d8","\u1f9d9","\u1f9da","\u1f9db","\u1f9dc","\u1f9dd",  # ; E_Base # So  [13] ADULT..ELF
        "\u1f3fb","\u1f3fc","\u1f3fd","\u1f3fe","\u1f3ff",  # ; E_Modifier # Sk   [5] EMOJI MODIFIER FITZPATRICK TYPE-1-2..EMOJI MODIFIER FITZPATRICK TYPE-6
        "\u200D",  # ; ZWJ # Cf       ZERO WIDTH JOINER
        "\u2640",  # ; Glue_After_Zwj # So       FEMALE SIGN
        "\u2642",  # ; Glue_After_Zwj # So       MALE SIGN
        "\u2695","\u2696",  # ; Glue_After_Zwj # So   [2] STAFF OF AESCULAPIUS..SCALES
        "\u2708",  # ; Glue_After_Zwj # So       AIRPLANE
        "\u2764",  # ; Glue_After_Zwj # So       HEAVY BLACK HEART
        "\u1F308",  # ; Glue_After_Zwj # So       RAINBOW
        "\u1F33E",  # ; Glue_After_Zwj # So       EAR OF RICE
        "\u1F373",  # ; Glue_After_Zwj # So       COOKING
        "\u1F393",  # ; Glue_After_Zwj # So       GRADUATION CAP
        "\u1F3A4",  # ; Glue_After_Zwj # So       MICROPHONE
        "\u1F3A8",  # ; Glue_After_Zwj # So       ARTIST PALETTE
        "\u1F3EB",  # ; Glue_After_Zwj # So       SCHOOL
        "\u1F3ED",  # ; Glue_After_Zwj # So       FACTORY
        "\u1F48B",  # ; Glue_After_Zwj # So       KISS MARK
        "\u1f4bb","\u1f4bc",  # ; Glue_After_Zwj # So   [2] PERSONAL COMPUTER..BRIEFCASE
        "\u1F527",  # ; Glue_After_Zwj # So       WRENCH
        "\u1F52C",  # ; Glue_After_Zwj # So       MICROSCOPE
        "\u1F5E8",  # ; Glue_After_Zwj # So       LEFT SPEECH BUBBLE
        "\u1F680",  # ; Glue_After_Zwj # So       ROCKET
        "\u1F692",  # ; Glue_After_Zwj # So       FIRE ENGINE
        "\u1f466","\u1f467","\u1f468","\u1f469",  # ; E_Base_GAZ # So   [4] BOY..WOMAN
    ]
    test_data.each do |string|
      assert @validator.valid_encoding?(string), "U10_GraphemeBreakProperty: #{string}"
      assert string.force_encoding("UTF-8").valid_encoding?, "U10_GraphemeBreakProperty: #{string}" if @vercheck
    end
  end

end

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
class TestUnicode10NameAliases < Test::Unit::TestCase
  #
  def setup
    @validator = UTF8::Validator.new
    @vercheck = ((RUBY_VERSION =~ /1.9/) or (RUBY_VERSION =~ /2./)) ? true : false
  end

  #
  def teardown
    @validator = nil
  end

  def test_unicode10_NameAliases
    test_data = [
    "\d0000",  # ;NULL;control
    "\d0000",  # ;NUL;abbreviation
    "\d0001",  # ;START OF HEADING;control
    "\d0001",  # ;SOH;abbreviation
    "\d0002",  # ;START OF TEXT;control
    "\d0002",  # ;STX;abbreviation
    "\d0003",  # ;END OF TEXT;control
    "\d0003",  # ;ETX;abbreviation
    "\d0004",  # ;END OF TRANSMISSION;control
    "\d0004",  # ;EOT;abbreviation
    "\d0005",  # ;ENQUIRY;control
    "\d0005",  # ;ENQ;abbreviation
    "\d0006",  # ;ACKNOWLEDGE;control
    "\d0006",  # ;ACK;abbreviation
    "\d0007",  # ;ALERT;control
    "\d0007",  # ;BEL;abbreviation
    "\d0008",  # ;BACKSPACE;control
    "\d0008",  # ;BS;abbreviation
    "\d0009",  # ;CHARACTER TABULATION;control
    "\d0009",  # ;HORIZONTAL TABULATION;control
    "\d0009",  # ;HT;abbreviation
    "\d0009",  # ;TAB;abbreviation
    "\d000A",  # ;LINE FEED;control
    "\d000A",  # ;NEW LINE;control
    "\d000A",  # ;END OF LINE;control
    "\d000A",  # ;LF;abbreviation
    "\d000A",  # ;NL;abbreviation
    "\d000A",  # ;EOL;abbreviation
    "\d000B",  # ;LINE TABULATION;control
    "\d000B",  # ;VERTICAL TABULATION;control
    "\d000B",  # ;VT;abbreviation
    "\d000C",  # ;FORM FEED;control
    "\d000C",  # ;FF;abbreviation
    "\d000D",  # ;CARRIAGE RETURN;control
    "\d000D",  # ;CR;abbreviation
    "\d000E",  # ;SHIFT OUT;control
    "\d000E",  # ;LOCKING-SHIFT ONE;control
    "\d000E",  # ;SO;abbreviation
    "\d000F",  # ;SHIFT IN;control
    "\d000F",  # ;LOCKING-SHIFT ZERO;control
    "\d000F",  # ;SI;abbreviation
    "\d0010",  # ;DATA LINK ESCAPE;control
    "\d0010",  # ;DLE;abbreviation
    "\d0011",  # ;DEVICE CONTROL ONE;control
    "\d0011",  # ;DC1;abbreviation
    "\d0012",  # ;DEVICE CONTROL TWO;control
    "\d0012",  # ;DC2;abbreviation
    "\d0013",  # ;DEVICE CONTROL THREE;control
    "\d0013",  # ;DC3;abbreviation
    "\d0014",  # ;DEVICE CONTROL FOUR;control
    "\d0014",  # ;DC4;abbreviation
    "\d0015",  # ;NEGATIVE ACKNOWLEDGE;control
    "\d0015",  # ;NAK;abbreviation
    "\d0016",  # ;SYNCHRONOUS IDLE;control
    "\d0016",  # ;SYN;abbreviation
    "\d0017",  # ;END OF TRANSMISSION BLOCK;control
    "\d0017",  # ;ETB;abbreviation
    "\d0018",  # ;CANCEL;control
    "\d0018",  # ;CAN;abbreviation
    "\d0019",  # ;END OF MEDIUM;control
    "\d0019",  # ;EOM;abbreviation
    "\d001A",  # ;SUBSTITUTE;control
    "\d001A",  # ;SUB;abbreviation
    "\d001B",  # ;ESCAPE;control
    "\d001B",  # ;ESC;abbreviation
    "\d001C",  # ;INFORMATION SEPARATOR FOUR;control
    "\d001C",  # ;FILE SEPARATOR;control
    "\d001C",  # ;FS;abbreviation
    "\d001D",  # ;INFORMATION SEPARATOR THREE;control
    "\d001D",  # ;GROUP SEPARATOR;control
    "\d001D",  # ;GS;abbreviation
    "\d001E",  # ;INFORMATION SEPARATOR TWO;control
    "\d001E",  # ;RECORD SEPARATOR;control
    "\d001E",  # ;RS;abbreviation
    "\d001F",  # ;INFORMATION SEPARATOR ONE;control
    "\d001F",  # ;UNIT SEPARATOR;control
    "\d001F",  # ;US;abbreviation
    "\d0020",  # ;SP;abbreviation
    "\d007F",  # ;DELETE;control
    "\d007F",  # ;DEL;abbreviation
    "\d0080",  # ;PADDING CHARACTER;figment
    "\d0080",  # ;PAD;abbreviation
    "\d0081",  # ;HIGH OCTET PRESET;figment
    "\d0081",  # ;HOP;abbreviation
    "\d0082",  # ;BREAK PERMITTED HERE;control
    "\d0082",  # ;BPH;abbreviation
    "\d0083",  # ;NO BREAK HERE;control
    "\d0083",  # ;NBH;abbreviation
    "\d0084",  # ;INDEX;control
    "\d0084",  # ;IND;abbreviation
    "\d0085",  # ;NEXT LINE;control
    "\d0085",  # ;NEL;abbreviation
    "\d0086",  # ;START OF SELECTED AREA;control
    "\d0086",  # ;SSA;abbreviation
    "\d0087",  # ;END OF SELECTED AREA;control
    "\d0087",  # ;ESA;abbreviation
    "\d0088",  # ;CHARACTER TABULATION SET;control
    "\d0088",  # ;HORIZONTAL TABULATION SET;control
    "\d0088",  # ;HTS;abbreviation
    "\d0089",  # ;CHARACTER TABULATION WITH JUSTIFICATION;control
    "\d0089",  # ;HORIZONTAL TABULATION WITH JUSTIFICATION;control
    "\d0089",  # ;HTJ;abbreviation
    "\d008A",  # ;LINE TABULATION SET;control
    "\d008A",  # ;VERTICAL TABULATION SET;control
    "\d008A",  # ;VTS;abbreviation
    "\d008B",  # ;PARTIAL LINE FORWARD;control
    "\d008B",  # ;PARTIAL LINE DOWN;control
    "\d008B",  # ;PLD;abbreviation
    "\d008C",  # ;PARTIAL LINE BACKWARD;control
    "\d008C",  # ;PARTIAL LINE UP;control
    "\d008C",  # ;PLU;abbreviation
    "\d008D",  # ;REVERSE LINE FEED;control
    "\d008D",  # ;REVERSE INDEX;control
    "\d008D",  # ;RI;abbreviation
    "\d008E",  # ;SINGLE SHIFT TWO;control
    "\d008E",  # ;SINGLE-SHIFT-2;control
    "\d008E",  # ;SS2;abbreviation
    "\d008F",  # ;SINGLE SHIFT THREE;control
    "\d008F",  # ;SINGLE-SHIFT-3;control
    "\d008F",  # ;SS3;abbreviation
    "\d0090",  # ;DEVICE CONTROL STRING;control
    "\d0090",  # ;DCS;abbreviation
    "\d0091",  # ;PRIVATE USE ONE;control
    "\d0091",  # ;PRIVATE USE-1;control
    "\d0091",  # ;PU1;abbreviation
    "\d0092",  # ;PRIVATE USE TWO;control
    "\d0092",  # ;PRIVATE USE-2;control
    "\d0092",  # ;PU2;abbreviation
    "\d0093",  # ;SET TRANSMIT STATE;control
    "\d0093",  # ;STS;abbreviation
    "\d0094",  # ;CANCEL CHARACTER;control
    "\d0094",  # ;CCH;abbreviation
    "\d0095",  # ;MESSAGE WAITING;control
    "\d0095",  # ;MW;abbreviation
    "\d0096",  # ;START OF GUARDED AREA;control
    "\d0096",  # ;START OF PROTECTED AREA;control
    "\d0096",  # ;SPA;abbreviation
    "\d0097",  # ;END OF GUARDED AREA;control
    "\d0097",  # ;END OF PROTECTED AREA;control
    "\d0097",  # ;EPA;abbreviation
    "\d0098",  # ;START OF STRING;control
    "\d0098",  # ;SOS;abbreviation
    "\d0099",  # ;SINGLE GRAPHIC CHARACTER INTRODUCER;figment
    "\d0099",  # ;SGC;abbreviation
    "\d009A",  # ;SINGLE CHARACTER INTRODUCER;control
    "\d009A",  # ;SCI;abbreviation
    "\d009B",  # ;CONTROL SEQUENCE INTRODUCER;control
    "\d009B",  # ;CSI;abbreviation
    "\d009C",  # ;STRING TERMINATOR;control
    "\d009C",  # ;ST;abbreviation
    "\d009D",  # ;OPERATING SYSTEM COMMAND;control
    "\d009D",  # ;OSC;abbreviation
    "\d009E",  # ;PRIVACY MESSAGE;control
    "\d009E",  # ;PM;abbreviation
    "\d009F",  # ;APPLICATION PROGRAM COMMAND;control
    "\d009F",  # ;APC;abbreviation
    "\d00A0",  # ;NBSP;abbreviation
    "\d00AD",  # ;SHY;abbreviation
    "\d01A2",  # ;LATIN CAPITAL LETTER GHA;correction
    "\d01A3",  # ;LATIN SMALL LETTER GHA;correction
    "\d034F",  # ;CGJ;abbreviation
    "\d061C",  # ;ALM;abbreviation
    "\d0709",  # ;SYRIAC SUBLINEAR COLON SKEWED LEFT;correction
    "\d0CDE",  # ;KANNADA LETTER LLLA;correction
    "\d0E9D",  # ;LAO LETTER FO FON;correction
    "\d0E9F",  # ;LAO LETTER FO FAY;correction
    "\d0EA3",  # ;LAO LETTER RO;correction
    "\d0EA5",  # ;LAO LETTER LO;correction
    "\d0FD0",  # ;TIBETAN MARK BKA- SHOG GI MGO RGYAN;correction
    "\d11EC",  # ;HANGUL JONGSEONG YESIEUNG-KIYEOK;correction
    "\d11ED",  # ;HANGUL JONGSEONG YESIEUNG-SSANGKIYEOK;correction
    "\d11EE",  # ;HANGUL JONGSEONG SSANGYESIEUNG;correction
    "\d11EF",  # ;HANGUL JONGSEONG YESIEUNG-KHIEUKH;correction
    "\d180B",  # ;FVS1;abbreviation
    "\d180C",  # ;FVS2;abbreviation
    "\d180D",  # ;FVS3;abbreviation
    "\d180E",  # ;MVS;abbreviation
    "\d200B",  # ;ZWSP;abbreviation
    "\d200C",  # ;ZWNJ;abbreviation
    "\d200D",  # ;ZWJ;abbreviation
    "\d200E",  # ;LRM;abbreviation
    "\d200F",  # ;RLM;abbreviation
    "\d202A",  # ;LRE;abbreviation
    "\d202B",  # ;RLE;abbreviation
    "\d202C",  # ;PDF;abbreviation
    "\d202D",  # ;LRO;abbreviation
    "\d202E",  # ;RLO;abbreviation
    "\d202F",  # ;NNBSP;abbreviation
    "\d205F",  # ;MMSP;abbreviation
    "\d2060",  # ;WJ;abbreviation
    "\d2066",  # ;LRI;abbreviation
    "\d2067",  # ;RLI;abbreviation
    "\d2068",  # ;FSI;abbreviation
    "\d2069",  # ;PDI;abbreviation
    "\d2118",  # ;WEIERSTRASS ELLIPTIC FUNCTION;correction
    "\d2448",  # ;MICR ON US SYMBOL;correction
    "\d2449",  # ;MICR DASH SYMBOL;correction
    "\d2B7A",  # ;LEFTWARDS TRIANGLE-HEADED ARROW WITH DOUBLE VERTICAL STROKE;correction
    "\d2B7C",  # ;RIGHTWARDS TRIANGLE-HEADED ARROW WITH DOUBLE VERTICAL STROKE;correction
    "\dA015",  # ;YI SYLLABLE ITERATION MARK;correction
    "\dFE00",  # ;VS1;abbreviation
    "\dFE01",  # ;VS2;abbreviation
    "\dFE02",  # ;VS3;abbreviation
    "\dFE03",  # ;VS4;abbreviation
    "\dFE04",  # ;VS5;abbreviation
    "\dFE05",  # ;VS6;abbreviation
    "\dFE06",  # ;VS7;abbreviation
    "\dFE07",  # ;VS8;abbreviation
    "\dFE08",  # ;VS9;abbreviation
    "\dFE09",  # ;VS10;abbreviation
    "\dFE0A",  # ;VS11;abbreviation
    "\dFE0B",  # ;VS12;abbreviation
    "\dFE0C",  # ;VS13;abbreviation
    "\dFE0D",  # ;VS14;abbreviation
    "\dFE0E",  # ;VS15;abbreviation
    "\dFE0F",  # ;VS16;abbreviation
    "\dFE18",  # ;PRESENTATION FORM FOR VERTICAL RIGHT WHITE LENTICULAR BRACKET;correction
    "\dFEFF",  # ;BYTE ORDER MARK;alternate
    "\dFEFF",  # ;BOM;abbreviation
    "\dFEFF",  # ;ZWNBSP;abbreviation
    "\d122D4",  # ;CUNEIFORM SIGN NU11 TENU;correction
    "\d122D5",  # ;CUNEIFORM SIGN NU11 OVER NU11 BUR OVER BUR;correction
    "\d1B001",  # ;HENTAIGANA LETTER E-1;correction
    "\d1D0C5",  # ;BYZANTINE MUSICAL SYMBOL FTHORA SKLIRON CHROMA VASIS;correction
    "\dE0100",  # ;VS17;abbreviation
    "\dE0101",  # ;VS18;abbreviation
    "\dE0102",  # ;VS19;abbreviation
    "\dE0103",  # ;VS20;abbreviation
    "\dE0104",  # ;VS21;abbreviation
    "\dE0105",  # ;VS22;abbreviation
    "\dE0106",  # ;VS23;abbreviation
    "\dE0107",  # ;VS24;abbreviation
    "\dE0108",  # ;VS25;abbreviation
    "\dE0109",  # ;VS26;abbreviation
    "\dE010A",  # ;VS27;abbreviation
    "\dE010B",  # ;VS28;abbreviation
    "\dE010C",  # ;VS29;abbreviation
    "\dE010D",  # ;VS30;abbreviation
    "\dE010E",  # ;VS31;abbreviation
    "\dE010F",  # ;VS32;abbreviation
    "\dE0110",  # ;VS33;abbreviation
    "\dE0111",  # ;VS34;abbreviation
    "\dE0112",  # ;VS35;abbreviation
    "\dE0113",  # ;VS36;abbreviation
    "\dE0114",  # ;VS37;abbreviation
    "\dE0115",  # ;VS38;abbreviation
    "\dE0116",  # ;VS39;abbreviation
    "\dE0117",  # ;VS40;abbreviation
    "\dE0118",  # ;VS41;abbreviation
    "\dE0119",  # ;VS42;abbreviation
    "\dE011A",  # ;VS43;abbreviation
    "\dE011B",  # ;VS44;abbreviation
    "\dE011C",  # ;VS45;abbreviation
    "\dE011D",  # ;VS46;abbreviation
    "\dE011E",  # ;VS47;abbreviation
    "\dE011F",  # ;VS48;abbreviation
    "\dE0120",  # ;VS49;abbreviation
    "\dE0121",  # ;VS50;abbreviation
    "\dE0122",  # ;VS51;abbreviation
    "\dE0123",  # ;VS52;abbreviation
    "\dE0124",  # ;VS53;abbreviation
    "\dE0125",  # ;VS54;abbreviation
    "\dE0126",  # ;VS55;abbreviation
    "\dE0127",  # ;VS56;abbreviation
    "\dE0128",  # ;VS57;abbreviation
    "\dE0129",  # ;VS58;abbreviation
    "\dE012A",  # ;VS59;abbreviation
    "\dE012B",  # ;VS60;abbreviation
    "\dE012C",  # ;VS61;abbreviation
    "\dE012D",  # ;VS62;abbreviation
    "\dE012E",  # ;VS63;abbreviation
    "\dE012F",  # ;VS64;abbreviation
    "\dE0130",  # ;VS65;abbreviation
    "\dE0131",  # ;VS66;abbreviation
    "\dE0132",  # ;VS67;abbreviation
    "\dE0133",  # ;VS68;abbreviation
    "\dE0134",  # ;VS69;abbreviation
    "\dE0135",  # ;VS70;abbreviation
    "\dE0136",  # ;VS71;abbreviation
    "\dE0137",  # ;VS72;abbreviation
    "\dE0138",  # ;VS73;abbreviation
    "\dE0139",  # ;VS74;abbreviation
    "\dE013A",  # ;VS75;abbreviation
    "\dE013B",  # ;VS76;abbreviation
    "\dE013C",  # ;VS77;abbreviation
    "\dE013D",  # ;VS78;abbreviation
    "\dE013E",  # ;VS79;abbreviation
    "\dE013F",  # ;VS80;abbreviation
    "\dE0140",  # ;VS81;abbreviation
    "\dE0141",  # ;VS82;abbreviation
    "\dE0142",  # ;VS83;abbreviation
    "\dE0143",  # ;VS84;abbreviation
    "\dE0144",  # ;VS85;abbreviation
    "\dE0145",  # ;VS86;abbreviation
    "\dE0146",  # ;VS87;abbreviation
    "\dE0147",  # ;VS88;abbreviation
    "\dE0148",  # ;VS89;abbreviation
    "\dE0149",  # ;VS90;abbreviation
    "\dE014A",  # ;VS91;abbreviation
    "\dE014B",  # ;VS92;abbreviation
    "\dE014C",  # ;VS93;abbreviation
    "\dE014D",  # ;VS94;abbreviation
    "\dE014E",  # ;VS95;abbreviation
    "\dE014F",  # ;VS96;abbreviation
    "\dE0150",  # ;VS97;abbreviation
    "\dE0151",  # ;VS98;abbreviation
    "\dE0152",  # ;VS99;abbreviation
    "\dE0153",  # ;VS100;abbreviation
    "\dE0154",  # ;VS101;abbreviation
    "\dE0155",  # ;VS102;abbreviation
    "\dE0156",  # ;VS103;abbreviation
    "\dE0157",  # ;VS104;abbreviation
    "\dE0158",  # ;VS105;abbreviation
    "\dE0159",  # ;VS106;abbreviation
    "\dE015A",  # ;VS107;abbreviation
    "\dE015B",  # ;VS108;abbreviation
    "\dE015C",  # ;VS109;abbreviation
    "\dE015D",  # ;VS110;abbreviation
    "\dE015E",  # ;VS111;abbreviation
    "\dE015F",  # ;VS112;abbreviation
    "\dE0160",  # ;VS113;abbreviation
    "\dE0161",  # ;VS114;abbreviation
    "\dE0162",  # ;VS115;abbreviation
    "\dE0163",  # ;VS116;abbreviation
    "\dE0164",  # ;VS117;abbreviation
    "\dE0165",  # ;VS118;abbreviation
    "\dE0166",  # ;VS119;abbreviation
    "\dE0167",  # ;VS120;abbreviation
    "\dE0168",  # ;VS121;abbreviation
    "\dE0169",  # ;VS122;abbreviation
    "\dE016A",  # ;VS123;abbreviation
    "\dE016B",  # ;VS124;abbreviation
    "\dE016C",  # ;VS125;abbreviation
    "\dE016D",  # ;VS126;abbreviation
    "\dE016E",  # ;VS127;abbreviation
    "\dE016F",  # ;VS128;abbreviation
    "\dE0170",  # ;VS129;abbreviation
    "\dE0171",  # ;VS130;abbreviation
    "\dE0172",  # ;VS131;abbreviation
    "\dE0173",  # ;VS132;abbreviation
    "\dE0174",  # ;VS133;abbreviation
    "\dE0175",  # ;VS134;abbreviation
    "\dE0176",  # ;VS135;abbreviation
    "\dE0177",  # ;VS136;abbreviation
    "\dE0178",  # ;VS137;abbreviation
    "\dE0179",  # ;VS138;abbreviation
    "\dE017A",  # ;VS139;abbreviation
    "\dE017B",  # ;VS140;abbreviation
    "\dE017C",  # ;VS141;abbreviation
    "\dE017D",  # ;VS142;abbreviation
    "\dE017E",  # ;VS143;abbreviation
    "\dE017F",  # ;VS144;abbreviation
    "\dE0180",  # ;VS145;abbreviation
    "\dE0181",  # ;VS146;abbreviation
    "\dE0182",  # ;VS147;abbreviation
    "\dE0183",  # ;VS148;abbreviation
    "\dE0184",  # ;VS149;abbreviation
    "\dE0185",  # ;VS150;abbreviation
    "\dE0186",  # ;VS151;abbreviation
    "\dE0187",  # ;VS152;abbreviation
    "\dE0188",  # ;VS153;abbreviation
    "\dE0189",  # ;VS154;abbreviation
    "\dE018A",  # ;VS155;abbreviation
    "\dE018B",  # ;VS156;abbreviation
    "\dE018C",  # ;VS157;abbreviation
    "\dE018D",  # ;VS158;abbreviation
    "\dE018E",  # ;VS159;abbreviation
    "\dE018F",  # ;VS160;abbreviation
    "\dE0190",  # ;VS161;abbreviation
    "\dE0191",  # ;VS162;abbreviation
    "\dE0192",  # ;VS163;abbreviation
    "\dE0193",  # ;VS164;abbreviation
    "\dE0194",  # ;VS165;abbreviation
    "\dE0195",  # ;VS166;abbreviation
    "\dE0196",  # ;VS167;abbreviation
    "\dE0197",  # ;VS168;abbreviation
    "\dE0198",  # ;VS169;abbreviation
    "\dE0199",  # ;VS170;abbreviation
    "\dE019A",  # ;VS171;abbreviation
    "\dE019B",  # ;VS172;abbreviation
    "\dE019C",  # ;VS173;abbreviation
    "\dE019D",  # ;VS174;abbreviation
    "\dE019E",  # ;VS175;abbreviation
    "\dE019F",  # ;VS176;abbreviation
    "\dE01A0",  # ;VS177;abbreviation
    "\dE01A1",  # ;VS178;abbreviation
    "\dE01A2",  # ;VS179;abbreviation
    "\dE01A3",  # ;VS180;abbreviation
    "\dE01A4",  # ;VS181;abbreviation
    "\dE01A5",  # ;VS182;abbreviation
    "\dE01A6",  # ;VS183;abbreviation
    "\dE01A7",  # ;VS184;abbreviation
    "\dE01A8",  # ;VS185;abbreviation
    "\dE01A9",  # ;VS186;abbreviation
    "\dE01AA",  # ;VS187;abbreviation
    "\dE01AB",  # ;VS188;abbreviation
    "\dE01AC",  # ;VS189;abbreviation
    "\dE01AD",  # ;VS190;abbreviation
    "\dE01AE",  # ;VS191;abbreviation
    "\dE01AF",  # ;VS192;abbreviation
    "\dE01B0",  # ;VS193;abbreviation
    "\dE01B1",  # ;VS194;abbreviation
    "\dE01B2",  # ;VS195;abbreviation
    "\dE01B3",  # ;VS196;abbreviation
    "\dE01B4",  # ;VS197;abbreviation
    "\dE01B5",  # ;VS198;abbreviation
    "\dE01B6",  # ;VS199;abbreviation
    "\dE01B7",  # ;VS200;abbreviation
    "\dE01B8",  # ;VS201;abbreviation
    "\dE01B9",  # ;VS202;abbreviation
    "\dE01BA",  # ;VS203;abbreviation
    "\dE01BB",  # ;VS204;abbreviation
    "\dE01BC",  # ;VS205;abbreviation
    "\dE01BD",  # ;VS206;abbreviation
    "\dE01BE",  # ;VS207;abbreviation
    "\dE01BF",  # ;VS208;abbreviation
    "\dE01C0",  # ;VS209;abbreviation
    "\dE01C1",  # ;VS210;abbreviation
    "\dE01C2",  # ;VS211;abbreviation
    "\dE01C3",  # ;VS212;abbreviation
    "\dE01C4",  # ;VS213;abbreviation
    "\dE01C5",  # ;VS214;abbreviation
    "\dE01C6",  # ;VS215;abbreviation
    "\dE01C7",  # ;VS216;abbreviation
    "\dE01C8",  # ;VS217;abbreviation
    "\dE01C9",  # ;VS218;abbreviation
    "\dE01CA",  # ;VS219;abbreviation
    "\dE01CB",  # ;VS220;abbreviation
    "\dE01CC",  # ;VS221;abbreviation
    "\dE01CD",  # ;VS222;abbreviation
    "\dE01CE",  # ;VS223;abbreviation
    "\dE01CF",  # ;VS224;abbreviation
    "\dE01D0",  # ;VS225;abbreviation
    "\dE01D1",  # ;VS226;abbreviation
    "\dE01D2",  # ;VS227;abbreviation
    "\dE01D3",  # ;VS228;abbreviation
    "\dE01D4",  # ;VS229;abbreviation
    "\dE01D5",  # ;VS230;abbreviation
    "\dE01D6",  # ;VS231;abbreviation
    "\dE01D7",  # ;VS232;abbreviation
    "\dE01D8",  # ;VS233;abbreviation
    "\dE01D9",  # ;VS234;abbreviation
    "\dE01DA",  # ;VS235;abbreviation
    "\dE01DB",  # ;VS236;abbreviation
    "\dE01DC",  # ;VS237;abbreviation
    "\dE01DD",  # ;VS238;abbreviation
    "\dE01DE",  # ;VS239;abbreviation
    "\dE01DF",  # ;VS240;abbreviation
    "\dE01E0",  # ;VS241;abbreviation
    "\dE01E1",  # ;VS242;abbreviation
    "\dE01E2",  # ;VS243;abbreviation
    "\dE01E3",  # ;VS244;abbreviation
    "\dE01E4",  # ;VS245;abbreviation
    "\dE01E5",  # ;VS246;abbreviation
    "\dE01E6",  # ;VS247;abbreviation
    "\dE01E7",  # ;VS248;abbreviation
    "\dE01E8",  # ;VS249;abbreviation
    "\dE01E9",  # ;VS250;abbreviation
    "\dE01EA",  # ;VS251;abbreviation
    "\dE01EB",  # ;VS252;abbreviation
    "\dE01EC",  # ;VS253;abbreviation
    "\dE01ED",  # ;VS254;abbreviation
    "\dE01EE",  # ;VS255;abbreviation
    "\dE01EF",  # ;VS256;abbreviation
    ]
    test_data.each do |string|
      assert @validator.valid_encoding?(string), "U10_NameAliases: #{string}"
      assert string.force_encoding("UTF-8").valid_encoding?, "U10_NameAliases: #{string}" if @vercheck
    end
  end

end

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
    "\u0000",  # ;NULL;control
    "\u0000",  # ;NUL;abbreviation
    "\u0001",  # ;START OF HEADING;control
    "\u0001",  # ;SOH;abbreviation
    "\u0002",  # ;START OF TEXT;control
    "\u0002",  # ;STX;abbreviation
    "\u0003",  # ;END OF TEXT;control
    "\u0003",  # ;ETX;abbreviation
    "\u0004",  # ;END OF TRANSMISSION;control
    "\u0004",  # ;EOT;abbreviation
    "\u0005",  # ;ENQUIRY;control
    "\u0005",  # ;ENQ;abbreviation
    "\u0006",  # ;ACKNOWLEDGE;control
    "\u0006",  # ;ACK;abbreviation
    "\u0007",  # ;ALERT;control
    "\u0007",  # ;BEL;abbreviation
    "\u0008",  # ;BACKSPACE;control
    "\u0008",  # ;BS;abbreviation
    "\u0009",  # ;CHARACTER TABULATION;control
    "\u0009",  # ;HORIZONTAL TABULATION;control
    "\u0009",  # ;HT;abbreviation
    "\u0009",  # ;TAB;abbreviation
    "\u000A",  # ;LINE FEED;control
    "\u000A",  # ;NEW LINE;control
    "\u000A",  # ;END OF LINE;control
    "\u000A",  # ;LF;abbreviation
    "\u000A",  # ;NL;abbreviation
    "\u000A",  # ;EOL;abbreviation
    "\u000B",  # ;LINE TABULATION;control
    "\u000B",  # ;VERTICAL TABULATION;control
    "\u000B",  # ;VT;abbreviation
    "\u000C",  # ;FORM FEED;control
    "\u000C",  # ;FF;abbreviation
    "\u000D",  # ;CARRIAGE RETURN;control
    "\u000D",  # ;CR;abbreviation
    "\u000E",  # ;SHIFT OUT;control
    "\u000E",  # ;LOCKING-SHIFT ONE;control
    "\u000E",  # ;SO;abbreviation
    "\u000F",  # ;SHIFT IN;control
    "\u000F",  # ;LOCKING-SHIFT ZERO;control
    "\u000F",  # ;SI;abbreviation
    "\u0010",  # ;DATA LINK ESCAPE;control
    "\u0010",  # ;DLE;abbreviation
    "\u0011",  # ;DEVICE CONTROL ONE;control
    "\u0011",  # ;DC1;abbreviation
    "\u0012",  # ;DEVICE CONTROL TWO;control
    "\u0012",  # ;DC2;abbreviation
    "\u0013",  # ;DEVICE CONTROL THREE;control
    "\u0013",  # ;DC3;abbreviation
    "\u0014",  # ;DEVICE CONTROL FOUR;control
    "\u0014",  # ;DC4;abbreviation
    "\u0015",  # ;NEGATIVE ACKNOWLEDGE;control
    "\u0015",  # ;NAK;abbreviation
    "\u0016",  # ;SYNCHRONOUS IDLE;control
    "\u0016",  # ;SYN;abbreviation
    "\u0017",  # ;END OF TRANSMISSION BLOCK;control
    "\u0017",  # ;ETB;abbreviation
    "\u0018",  # ;CANCEL;control
    "\u0018",  # ;CAN;abbreviation
    "\u0019",  # ;END OF MEDIUM;control
    "\u0019",  # ;EOM;abbreviation
    "\u001A",  # ;SUBSTITUTE;control
    "\u001A",  # ;SUB;abbreviation
    "\u001B",  # ;ESCAPE;control
    "\u001B",  # ;ESC;abbreviation
    "\u001C",  # ;INFORMATION SEPARATOR FOUR;control
    "\u001C",  # ;FILE SEPARATOR;control
    "\u001C",  # ;FS;abbreviation
    "\u001D",  # ;INFORMATION SEPARATOR THREE;control
    "\u001D",  # ;GROUP SEPARATOR;control
    "\u001D",  # ;GS;abbreviation
    "\u001E",  # ;INFORMATION SEPARATOR TWO;control
    "\u001E",  # ;RECORD SEPARATOR;control
    "\u001E",  # ;RS;abbreviation
    "\u001F",  # ;INFORMATION SEPARATOR ONE;control
    "\u001F",  # ;UNIT SEPARATOR;control
    "\u001F",  # ;US;abbreviation
    "\u0020",  # ;SP;abbreviation
    "\u007F",  # ;DELETE;control
    "\u007F",  # ;DEL;abbreviation
    "\u0080",  # ;PADDING CHARACTER;figment
    "\u0080",  # ;PAD;abbreviation
    "\u0081",  # ;HIGH OCTET PRESET;figment
    "\u0081",  # ;HOP;abbreviation
    "\u0082",  # ;BREAK PERMITTED HERE;control
    "\u0082",  # ;BPH;abbreviation
    "\u0083",  # ;NO BREAK HERE;control
    "\u0083",  # ;NBH;abbreviation
    "\u0084",  # ;INDEX;control
    "\u0084",  # ;IND;abbreviation
    "\u0085",  # ;NEXT LINE;control
    "\u0085",  # ;NEL;abbreviation
    "\u0086",  # ;START OF SELECTED AREA;control
    "\u0086",  # ;SSA;abbreviation
    "\u0087",  # ;END OF SELECTED AREA;control
    "\u0087",  # ;ESA;abbreviation
    "\u0088",  # ;CHARACTER TABULATION SET;control
    "\u0088",  # ;HORIZONTAL TABULATION SET;control
    "\u0088",  # ;HTS;abbreviation
    "\u0089",  # ;CHARACTER TABULATION WITH JUSTIFICATION;control
    "\u0089",  # ;HORIZONTAL TABULATION WITH JUSTIFICATION;control
    "\u0089",  # ;HTJ;abbreviation
    "\u008A",  # ;LINE TABULATION SET;control
    "\u008A",  # ;VERTICAL TABULATION SET;control
    "\u008A",  # ;VTS;abbreviation
    "\u008B",  # ;PARTIAL LINE FORWARD;control
    "\u008B",  # ;PARTIAL LINE DOWN;control
    "\u008B",  # ;PLD;abbreviation
    "\u008C",  # ;PARTIAL LINE BACKWARD;control
    "\u008C",  # ;PARTIAL LINE UP;control
    "\u008C",  # ;PLU;abbreviation
    "\u008D",  # ;REVERSE LINE FEED;control
    "\u008D",  # ;REVERSE INDEX;control
    "\u008D",  # ;RI;abbreviation
    "\u008E",  # ;SINGLE SHIFT TWO;control
    "\u008E",  # ;SINGLE-SHIFT-2;control
    "\u008E",  # ;SS2;abbreviation
    "\u008F",  # ;SINGLE SHIFT THREE;control
    "\u008F",  # ;SINGLE-SHIFT-3;control
    "\u008F",  # ;SS3;abbreviation
    "\u0090",  # ;DEVICE CONTROL STRING;control
    "\u0090",  # ;DCS;abbreviation
    "\u0091",  # ;PRIVATE USE ONE;control
    "\u0091",  # ;PRIVATE USE-1;control
    "\u0091",  # ;PU1;abbreviation
    "\u0092",  # ;PRIVATE USE TWO;control
    "\u0092",  # ;PRIVATE USE-2;control
    "\u0092",  # ;PU2;abbreviation
    "\u0093",  # ;SET TRANSMIT STATE;control
    "\u0093",  # ;STS;abbreviation
    "\u0094",  # ;CANCEL CHARACTER;control
    "\u0094",  # ;CCH;abbreviation
    "\u0095",  # ;MESSAGE WAITING;control
    "\u0095",  # ;MW;abbreviation
    "\u0096",  # ;START OF GUARDED AREA;control
    "\u0096",  # ;START OF PROTECTED AREA;control
    "\u0096",  # ;SPA;abbreviation
    "\u0097",  # ;END OF GUARDED AREA;control
    "\u0097",  # ;END OF PROTECTED AREA;control
    "\u0097",  # ;EPA;abbreviation
    "\u0098",  # ;START OF STRING;control
    "\u0098",  # ;SOS;abbreviation
    "\u0099",  # ;SINGLE GRAPHIC CHARACTER INTRODUCER;figment
    "\u0099",  # ;SGC;abbreviation
    "\u009A",  # ;SINGLE CHARACTER INTRODUCER;control
    "\u009A",  # ;SCI;abbreviation
    "\u009B",  # ;CONTROL SEQUENCE INTRODUCER;control
    "\u009B",  # ;CSI;abbreviation
    "\u009C",  # ;STRING TERMINATOR;control
    "\u009C",  # ;ST;abbreviation
    "\u009D",  # ;OPERATING SYSTEM COMMAND;control
    "\u009D",  # ;OSC;abbreviation
    "\u009E",  # ;PRIVACY MESSAGE;control
    "\u009E",  # ;PM;abbreviation
    "\u009F",  # ;APPLICATION PROGRAM COMMAND;control
    "\u009F",  # ;APC;abbreviation
    "\u00A0",  # ;NBSP;abbreviation
    "\u00AD",  # ;SHY;abbreviation
    "\u01A2",  # ;LATIN CAPITAL LETTER GHA;correction
    "\u01A3",  # ;LATIN SMALL LETTER GHA;correction
    "\u034F",  # ;CGJ;abbreviation
    "\u061C",  # ;ALM;abbreviation
    "\u0709",  # ;SYRIAC SUBLINEAR COLON SKEWED LEFT;correction
    "\u0CDE",  # ;KANNADA LETTER LLLA;correction
    "\u0E9D",  # ;LAO LETTER FO FON;correction
    "\u0E9F",  # ;LAO LETTER FO FAY;correction
    "\u0EA3",  # ;LAO LETTER RO;correction
    "\u0EA5",  # ;LAO LETTER LO;correction
    "\u0FD0",  # ;TIBETAN MARK BKA- SHOG GI MGO RGYAN;correction
    "\u11EC",  # ;HANGUL JONGSEONG YESIEUNG-KIYEOK;correction
    "\u11ED",  # ;HANGUL JONGSEONG YESIEUNG-SSANGKIYEOK;correction
    "\u11EE",  # ;HANGUL JONGSEONG SSANGYESIEUNG;correction
    "\u11EF",  # ;HANGUL JONGSEONG YESIEUNG-KHIEUKH;correction
    "\u180B",  # ;FVS1;abbreviation
    "\u180C",  # ;FVS2;abbreviation
    "\u180D",  # ;FVS3;abbreviation
    "\u180E",  # ;MVS;abbreviation
    "\u200B",  # ;ZWSP;abbreviation
    "\u200C",  # ;ZWNJ;abbreviation
    "\u200D",  # ;ZWJ;abbreviation
    "\u200E",  # ;LRM;abbreviation
    "\u200F",  # ;RLM;abbreviation
    "\u202A",  # ;LRE;abbreviation
    "\u202B",  # ;RLE;abbreviation
    "\u202C",  # ;PDF;abbreviation
    "\u202D",  # ;LRO;abbreviation
    "\u202E",  # ;RLO;abbreviation
    "\u202F",  # ;NNBSP;abbreviation
    "\u205F",  # ;MMSP;abbreviation
    "\u2060",  # ;WJ;abbreviation
    "\u2066",  # ;LRI;abbreviation
    "\u2067",  # ;RLI;abbreviation
    "\u2068",  # ;FSI;abbreviation
    "\u2069",  # ;PDI;abbreviation
    "\u2118",  # ;WEIERSTRASS ELLIPTIC FUNCTION;correction
    "\u2448",  # ;MICR ON US SYMBOL;correction
    "\u2449",  # ;MICR DASH SYMBOL;correction
    "\u2B7A",  # ;LEFTWARDS TRIANGLE-HEADED ARROW WITH DOUBLE VERTICAL STROKE;correction
    "\u2B7C",  # ;RIGHTWARDS TRIANGLE-HEADED ARROW WITH DOUBLE VERTICAL STROKE;correction
    "\uA015",  # ;YI SYLLABLE ITERATION MARK;correction
    "\uFE00",  # ;VS1;abbreviation
    "\uFE01",  # ;VS2;abbreviation
    "\uFE02",  # ;VS3;abbreviation
    "\uFE03",  # ;VS4;abbreviation
    "\uFE04",  # ;VS5;abbreviation
    "\uFE05",  # ;VS6;abbreviation
    "\uFE06",  # ;VS7;abbreviation
    "\uFE07",  # ;VS8;abbreviation
    "\uFE08",  # ;VS9;abbreviation
    "\uFE09",  # ;VS10;abbreviation
    "\uFE0A",  # ;VS11;abbreviation
    "\uFE0B",  # ;VS12;abbreviation
    "\uFE0C",  # ;VS13;abbreviation
    "\uFE0D",  # ;VS14;abbreviation
    "\uFE0E",  # ;VS15;abbreviation
    "\uFE0F",  # ;VS16;abbreviation
    "\uFE18",  # ;PRESENTATION FORM FOR VERTICAL RIGHT WHITE LENTICULAR BRACKET;correction
    "\uFEFF",  # ;BYTE ORDER MARK;alternate
    "\uFEFF",  # ;BOM;abbreviation
    "\uFEFF",  # ;ZWNBSP;abbreviation
    "\u122D4",  # ;CUNEIFORM SIGN NU11 TENU;correction
    "\u122D5",  # ;CUNEIFORM SIGN NU11 OVER NU11 BUR OVER BUR;correction
    "\u1B001",  # ;HENTAIGANA LETTER E-1;correction
    "\u1D0C5",  # ;BYZANTINE MUSICAL SYMBOL FTHORA SKLIRON CHROMA VASIS;correction
    "\uE0100",  # ;VS17;abbreviation
    "\uE0101",  # ;VS18;abbreviation
    "\uE0102",  # ;VS19;abbreviation
    "\uE0103",  # ;VS20;abbreviation
    "\uE0104",  # ;VS21;abbreviation
    "\uE0105",  # ;VS22;abbreviation
    "\uE0106",  # ;VS23;abbreviation
    "\uE0107",  # ;VS24;abbreviation
    "\uE0108",  # ;VS25;abbreviation
    "\uE0109",  # ;VS26;abbreviation
    "\uE010A",  # ;VS27;abbreviation
    "\uE010B",  # ;VS28;abbreviation
    "\uE010C",  # ;VS29;abbreviation
    "\uE010D",  # ;VS30;abbreviation
    "\uE010E",  # ;VS31;abbreviation
    "\uE010F",  # ;VS32;abbreviation
    "\uE0110",  # ;VS33;abbreviation
    "\uE0111",  # ;VS34;abbreviation
    "\uE0112",  # ;VS35;abbreviation
    "\uE0113",  # ;VS36;abbreviation
    "\uE0114",  # ;VS37;abbreviation
    "\uE0115",  # ;VS38;abbreviation
    "\uE0116",  # ;VS39;abbreviation
    "\uE0117",  # ;VS40;abbreviation
    "\uE0118",  # ;VS41;abbreviation
    "\uE0119",  # ;VS42;abbreviation
    "\uE011A",  # ;VS43;abbreviation
    "\uE011B",  # ;VS44;abbreviation
    "\uE011C",  # ;VS45;abbreviation
    "\uE011D",  # ;VS46;abbreviation
    "\uE011E",  # ;VS47;abbreviation
    "\uE011F",  # ;VS48;abbreviation
    "\uE0120",  # ;VS49;abbreviation
    "\uE0121",  # ;VS50;abbreviation
    "\uE0122",  # ;VS51;abbreviation
    "\uE0123",  # ;VS52;abbreviation
    "\uE0124",  # ;VS53;abbreviation
    "\uE0125",  # ;VS54;abbreviation
    "\uE0126",  # ;VS55;abbreviation
    "\uE0127",  # ;VS56;abbreviation
    "\uE0128",  # ;VS57;abbreviation
    "\uE0129",  # ;VS58;abbreviation
    "\uE012A",  # ;VS59;abbreviation
    "\uE012B",  # ;VS60;abbreviation
    "\uE012C",  # ;VS61;abbreviation
    "\uE012D",  # ;VS62;abbreviation
    "\uE012E",  # ;VS63;abbreviation
    "\uE012F",  # ;VS64;abbreviation
    "\uE0130",  # ;VS65;abbreviation
    "\uE0131",  # ;VS66;abbreviation
    "\uE0132",  # ;VS67;abbreviation
    "\uE0133",  # ;VS68;abbreviation
    "\uE0134",  # ;VS69;abbreviation
    "\uE0135",  # ;VS70;abbreviation
    "\uE0136",  # ;VS71;abbreviation
    "\uE0137",  # ;VS72;abbreviation
    "\uE0138",  # ;VS73;abbreviation
    "\uE0139",  # ;VS74;abbreviation
    "\uE013A",  # ;VS75;abbreviation
    "\uE013B",  # ;VS76;abbreviation
    "\uE013C",  # ;VS77;abbreviation
    "\uE013D",  # ;VS78;abbreviation
    "\uE013E",  # ;VS79;abbreviation
    "\uE013F",  # ;VS80;abbreviation
    "\uE0140",  # ;VS81;abbreviation
    "\uE0141",  # ;VS82;abbreviation
    "\uE0142",  # ;VS83;abbreviation
    "\uE0143",  # ;VS84;abbreviation
    "\uE0144",  # ;VS85;abbreviation
    "\uE0145",  # ;VS86;abbreviation
    "\uE0146",  # ;VS87;abbreviation
    "\uE0147",  # ;VS88;abbreviation
    "\uE0148",  # ;VS89;abbreviation
    "\uE0149",  # ;VS90;abbreviation
    "\uE014A",  # ;VS91;abbreviation
    "\uE014B",  # ;VS92;abbreviation
    "\uE014C",  # ;VS93;abbreviation
    "\uE014D",  # ;VS94;abbreviation
    "\uE014E",  # ;VS95;abbreviation
    "\uE014F",  # ;VS96;abbreviation
    "\uE0150",  # ;VS97;abbreviation
    "\uE0151",  # ;VS98;abbreviation
    "\uE0152",  # ;VS99;abbreviation
    "\uE0153",  # ;VS100;abbreviation
    "\uE0154",  # ;VS101;abbreviation
    "\uE0155",  # ;VS102;abbreviation
    "\uE0156",  # ;VS103;abbreviation
    "\uE0157",  # ;VS104;abbreviation
    "\uE0158",  # ;VS105;abbreviation
    "\uE0159",  # ;VS106;abbreviation
    "\uE015A",  # ;VS107;abbreviation
    "\uE015B",  # ;VS108;abbreviation
    "\uE015C",  # ;VS109;abbreviation
    "\uE015D",  # ;VS110;abbreviation
    "\uE015E",  # ;VS111;abbreviation
    "\uE015F",  # ;VS112;abbreviation
    "\uE0160",  # ;VS113;abbreviation
    "\uE0161",  # ;VS114;abbreviation
    "\uE0162",  # ;VS115;abbreviation
    "\uE0163",  # ;VS116;abbreviation
    "\uE0164",  # ;VS117;abbreviation
    "\uE0165",  # ;VS118;abbreviation
    "\uE0166",  # ;VS119;abbreviation
    "\uE0167",  # ;VS120;abbreviation
    "\uE0168",  # ;VS121;abbreviation
    "\uE0169",  # ;VS122;abbreviation
    "\uE016A",  # ;VS123;abbreviation
    "\uE016B",  # ;VS124;abbreviation
    "\uE016C",  # ;VS125;abbreviation
    "\uE016D",  # ;VS126;abbreviation
    "\uE016E",  # ;VS127;abbreviation
    "\uE016F",  # ;VS128;abbreviation
    "\uE0170",  # ;VS129;abbreviation
    "\uE0171",  # ;VS130;abbreviation
    "\uE0172",  # ;VS131;abbreviation
    "\uE0173",  # ;VS132;abbreviation
    "\uE0174",  # ;VS133;abbreviation
    "\uE0175",  # ;VS134;abbreviation
    "\uE0176",  # ;VS135;abbreviation
    "\uE0177",  # ;VS136;abbreviation
    "\uE0178",  # ;VS137;abbreviation
    "\uE0179",  # ;VS138;abbreviation
    "\uE017A",  # ;VS139;abbreviation
    "\uE017B",  # ;VS140;abbreviation
    "\uE017C",  # ;VS141;abbreviation
    "\uE017D",  # ;VS142;abbreviation
    "\uE017E",  # ;VS143;abbreviation
    "\uE017F",  # ;VS144;abbreviation
    "\uE0180",  # ;VS145;abbreviation
    "\uE0181",  # ;VS146;abbreviation
    "\uE0182",  # ;VS147;abbreviation
    "\uE0183",  # ;VS148;abbreviation
    "\uE0184",  # ;VS149;abbreviation
    "\uE0185",  # ;VS150;abbreviation
    "\uE0186",  # ;VS151;abbreviation
    "\uE0187",  # ;VS152;abbreviation
    "\uE0188",  # ;VS153;abbreviation
    "\uE0189",  # ;VS154;abbreviation
    "\uE018A",  # ;VS155;abbreviation
    "\uE018B",  # ;VS156;abbreviation
    "\uE018C",  # ;VS157;abbreviation
    "\uE018D",  # ;VS158;abbreviation
    "\uE018E",  # ;VS159;abbreviation
    "\uE018F",  # ;VS160;abbreviation
    "\uE0190",  # ;VS161;abbreviation
    "\uE0191",  # ;VS162;abbreviation
    "\uE0192",  # ;VS163;abbreviation
    "\uE0193",  # ;VS164;abbreviation
    "\uE0194",  # ;VS165;abbreviation
    "\uE0195",  # ;VS166;abbreviation
    "\uE0196",  # ;VS167;abbreviation
    "\uE0197",  # ;VS168;abbreviation
    "\uE0198",  # ;VS169;abbreviation
    "\uE0199",  # ;VS170;abbreviation
    "\uE019A",  # ;VS171;abbreviation
    "\uE019B",  # ;VS172;abbreviation
    "\uE019C",  # ;VS173;abbreviation
    "\uE019D",  # ;VS174;abbreviation
    "\uE019E",  # ;VS175;abbreviation
    "\uE019F",  # ;VS176;abbreviation
    "\uE01A0",  # ;VS177;abbreviation
    "\uE01A1",  # ;VS178;abbreviation
    "\uE01A2",  # ;VS179;abbreviation
    "\uE01A3",  # ;VS180;abbreviation
    "\uE01A4",  # ;VS181;abbreviation
    "\uE01A5",  # ;VS182;abbreviation
    "\uE01A6",  # ;VS183;abbreviation
    "\uE01A7",  # ;VS184;abbreviation
    "\uE01A8",  # ;VS185;abbreviation
    "\uE01A9",  # ;VS186;abbreviation
    "\uE01AA",  # ;VS187;abbreviation
    "\uE01AB",  # ;VS188;abbreviation
    "\uE01AC",  # ;VS189;abbreviation
    "\uE01AD",  # ;VS190;abbreviation
    "\uE01AE",  # ;VS191;abbreviation
    "\uE01AF",  # ;VS192;abbreviation
    "\uE01B0",  # ;VS193;abbreviation
    "\uE01B1",  # ;VS194;abbreviation
    "\uE01B2",  # ;VS195;abbreviation
    "\uE01B3",  # ;VS196;abbreviation
    "\uE01B4",  # ;VS197;abbreviation
    "\uE01B5",  # ;VS198;abbreviation
    "\uE01B6",  # ;VS199;abbreviation
    "\uE01B7",  # ;VS200;abbreviation
    "\uE01B8",  # ;VS201;abbreviation
    "\uE01B9",  # ;VS202;abbreviation
    "\uE01BA",  # ;VS203;abbreviation
    "\uE01BB",  # ;VS204;abbreviation
    "\uE01BC",  # ;VS205;abbreviation
    "\uE01BD",  # ;VS206;abbreviation
    "\uE01BE",  # ;VS207;abbreviation
    "\uE01BF",  # ;VS208;abbreviation
    "\uE01C0",  # ;VS209;abbreviation
    "\uE01C1",  # ;VS210;abbreviation
    "\uE01C2",  # ;VS211;abbreviation
    "\uE01C3",  # ;VS212;abbreviation
    "\uE01C4",  # ;VS213;abbreviation
    "\uE01C5",  # ;VS214;abbreviation
    "\uE01C6",  # ;VS215;abbreviation
    "\uE01C7",  # ;VS216;abbreviation
    "\uE01C8",  # ;VS217;abbreviation
    "\uE01C9",  # ;VS218;abbreviation
    "\uE01CA",  # ;VS219;abbreviation
    "\uE01CB",  # ;VS220;abbreviation
    "\uE01CC",  # ;VS221;abbreviation
    "\uE01CD",  # ;VS222;abbreviation
    "\uE01CE",  # ;VS223;abbreviation
    "\uE01CF",  # ;VS224;abbreviation
    "\uE01D0",  # ;VS225;abbreviation
    "\uE01D1",  # ;VS226;abbreviation
    "\uE01D2",  # ;VS227;abbreviation
    "\uE01D3",  # ;VS228;abbreviation
    "\uE01D4",  # ;VS229;abbreviation
    "\uE01D5",  # ;VS230;abbreviation
    "\uE01D6",  # ;VS231;abbreviation
    "\uE01D7",  # ;VS232;abbreviation
    "\uE01D8",  # ;VS233;abbreviation
    "\uE01D9",  # ;VS234;abbreviation
    "\uE01DA",  # ;VS235;abbreviation
    "\uE01DB",  # ;VS236;abbreviation
    "\uE01DC",  # ;VS237;abbreviation
    "\uE01DD",  # ;VS238;abbreviation
    "\uE01DE",  # ;VS239;abbreviation
    "\uE01DF",  # ;VS240;abbreviation
    "\uE01E0",  # ;VS241;abbreviation
    "\uE01E1",  # ;VS242;abbreviation
    "\uE01E2",  # ;VS243;abbreviation
    "\uE01E3",  # ;VS244;abbreviation
    "\uE01E4",  # ;VS245;abbreviation
    "\uE01E5",  # ;VS246;abbreviation
    "\uE01E6",  # ;VS247;abbreviation
    "\uE01E7",  # ;VS248;abbreviation
    "\uE01E8",  # ;VS249;abbreviation
    "\uE01E9",  # ;VS250;abbreviation
    "\uE01EA",  # ;VS251;abbreviation
    "\uE01EB",  # ;VS252;abbreviation
    "\uE01EC",  # ;VS253;abbreviation
    "\uE01ED",  # ;VS254;abbreviation
    "\uE01EE",  # ;VS255;abbreviation
    "\uE01EF",  # ;VS256;abbreviation
    ]
    test_data.each do |string|
      assert @validator.valid_encoding?(string), "U10_NameAliases: #{string}"
      assert string.force_encoding("UTF-8").valid_encoding?, "U10_NameAliases: #{string}" if @vercheck
    end
  end

end

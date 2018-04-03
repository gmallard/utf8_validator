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
class TestUnicode10DerivedJoiningGroup < Test::Unit::TestCase
  #
  def setup
    @validator = UTF8::Validator.new
    @vercheck = ((RUBY_VERSION =~ /1.9/) or (RUBY_VERSION =~ /2./)) ? true : false
  end

  #
  def teardown
    @validator = nil
  end

  def test_unicode10_DerivedJoiningGroup
    test_data = [
        "\u0639","\u063a",  # ; Ain # Lo   [2] ARABIC LETTER AIN..ARABIC LETTER GHAIN
        "\u06A0",  # ; Ain # Lo       ARABIC LETTER AIN WITH THREE DOTS ABOVE
        "\u06FC",  # ; Ain # Lo       ARABIC LETTER GHAIN WITH DOT BELOW
        "\u075d","\u075e","\u075f",  # ; Ain # Lo   [3] ARABIC LETTER AIN WITH TWO DOTS ABOVE..ARABIC LETTER AIN WITH TWO DOTS VERTICALLY ABOVE
        "\u08B3",  # ; Ain # Lo       ARABIC LETTER AIN WITH THREE DOTS BELOW
        "\u0710",  # ; Alaph # Lo       SYRIAC LETTER ALAPH
        "\u0622","\u0623",  # ; Alef # Lo   [2] ARABIC LETTER ALEF WITH MADDA ABOVE..ARABIC LETTER ALEF WITH HAMZA ABOVE
        "\u0625",  # ; Alef # Lo       ARABIC LETTER ALEF WITH HAMZA BELOW
        "\u0627",  # ; Alef # Lo       ARABIC LETTER ALEF
        "\u0671","\u0672","\u0673",  # ; Alef # Lo   [3] ARABIC LETTER ALEF WASLA..ARABIC LETTER ALEF WITH WAVY HAMZA BELOW
        "\u0675",  # ; Alef # Lo       ARABIC LETTER HIGH HAMZA ALEF
        "\u0773","\u0774",  # ; Alef # Lo   [2] ARABIC LETTER ALEF WITH EXTENDED ARABIC-INDIC DIGIT TWO ABOVE..ARABIC LETTER ALEF WITH EXTENDED ARABIC-INDIC DIGIT THREE ABOVE
        "\u0628",  # ; Beh # Lo       ARABIC LETTER BEH
        "\u062a","\u062b",  # ; Beh # Lo   [2] ARABIC LETTER TEH..ARABIC LETTER THEH
        "\u066E",  # ; Beh # Lo       ARABIC LETTER DOTLESS BEH
        "\u0679","\u067a","\u067b","\u067c","\u067d","\u067e","\u067f","\u0680",  # ; Beh # Lo   [8] ARABIC LETTER TTEH..ARABIC LETTER BEHEH
        "\u0750","\u0751","\u0752","\u0753","\u0754","\u0755","\u0756",  # ; Beh # Lo   [7] ARABIC LETTER BEH WITH THREE DOTS HORIZONTALLY BELOW..ARABIC LETTER BEH WITH SMALL V
        "\u08a0","\u08a1",  # ; Beh # Lo   [2] ARABIC LETTER BEH WITH SMALL V BELOW..ARABIC LETTER BEH WITH HAMZA ABOVE
        "\u08b6","\u08b7","\u08b8",  # ; Beh # Lo   [3] ARABIC LETTER BEH WITH SMALL MEEM ABOVE..ARABIC LETTER TEH WITH SMALL TEH ABOVE
        "\u0712",  # ; Beth # Lo       SYRIAC LETTER BETH
        "\u072D",  # ; Beth # Lo       SYRIAC LETTER PERSIAN BHETH
        "\u062f","\u0630",  # ; Dal # Lo   [2] ARABIC LETTER DAL..ARABIC LETTER THAL
        "\u0688","\u0689","\u068a","\u068b","\u068c","\u068d","\u068e","\u068f","\u0690",  # ; Dal # Lo   [9] ARABIC LETTER DDAL..ARABIC LETTER DAL WITH FOUR DOTS ABOVE
        "\u06EE",  # ; Dal # Lo       ARABIC LETTER DAL WITH INVERTED V
        "\u0759","\u075a",  # ; Dal # Lo   [2] ARABIC LETTER DAL WITH TWO DOTS VERTICALLY BELOW AND SMALL TAH..ARABIC LETTER DAL WITH INVERTED SMALL V BELOW
        "\u08AE",  # ; Dal # Lo       ARABIC LETTER DAL WITH THREE DOTS BELOW
        "\u0715","\u0716",  # ; Dalath_Rish # Lo   [2] SYRIAC LETTER DALATH..SYRIAC LETTER DOTLESS DALATH RISH
        "\u072A",  # ; Dalath_Rish # Lo       SYRIAC LETTER RISH
        "\u072F",  # ; Dalath_Rish # Lo       SYRIAC LETTER PERSIAN DHALATH
        "\u0725",  # ; E # Lo       SYRIAC LETTER E
        "\u0641",  # ; Feh # Lo       ARABIC LETTER FEH
        "\u06a1","\u06a2","\u06a3","\u06a4","\u06a5","\u06a6",  # ; Feh # Lo   [6] ARABIC LETTER DOTLESS FEH..ARABIC LETTER PEHEH
        "\u0760","\u0761",  # ; Feh # Lo   [2] ARABIC LETTER FEH WITH TWO DOTS BELOW..ARABIC LETTER FEH WITH THREE DOTS POINTING UPWARDS BELOW
        "\u08A4",  # ; Feh # Lo       ARABIC LETTER FEH WITH DOT BELOW AND THREE DOTS ABOVE
        "\u0724",  # ; Final_Semkath # Lo       SYRIAC LETTER FINAL SEMKATH
        "\u063b","\u063c",  # ; Gaf # Lo   [2] ARABIC LETTER KEHEH WITH TWO DOTS ABOVE..ARABIC LETTER KEHEH WITH THREE DOTS BELOW
        "\u06A9",  # ; Gaf # Lo       ARABIC LETTER KEHEH
        "\u06AB",  # ; Gaf # Lo       ARABIC LETTER KAF WITH RING
        "\u06af","\u06b0","\u06b1","\u06b2","\u06b3","\u06b4",  # ; Gaf # Lo   [6] ARABIC LETTER GAF..ARABIC LETTER GAF WITH THREE DOTS ABOVE
        "\u0762","\u0763","\u0764",  # ; Gaf # Lo   [3] ARABIC LETTER KEHEH WITH DOT ABOVE..ARABIC LETTER KEHEH WITH THREE DOTS POINTING UPWARDS BELOW
        "\u08B0",  # ; Gaf # Lo       ARABIC LETTER GAF WITH INVERTED STROKE
        "\u0713","\u0714",  # ; Gamal # Lo   [2] SYRIAC LETTER GAMAL..SYRIAC LETTER GAMAL GARSHUNI
        "\u072E",  # ; Gamal # Lo       SYRIAC LETTER PERSIAN GHAMAL
        "\u062c","\u062d","\u062e",  # ; Hah # Lo   [3] ARABIC LETTER JEEM..ARABIC LETTER KHAH
        "\u0681","\u0682","\u0683","\u0684","\u0685","\u0686","\u0687",  # ; Hah # Lo   [7] ARABIC LETTER HAH WITH HAMZA ABOVE..ARABIC LETTER TCHEHEH
        "\u06BF",  # ; Hah # Lo       ARABIC LETTER TCHEH WITH DOT ABOVE
        "\u0757","\u0758",  # ; Hah # Lo   [2] ARABIC LETTER HAH WITH TWO DOTS ABOVE..ARABIC LETTER HAH WITH THREE DOTS POINTING UPWARDS BELOW
        "\u076e","\u076f",  # ; Hah # Lo   [2] ARABIC LETTER HAH WITH SMALL ARABIC LETTER TAH BELOW..ARABIC LETTER HAH WITH SMALL ARABIC LETTER TAH AND TWO DOTS
        "\u0772",  # ; Hah # Lo       ARABIC LETTER HAH WITH SMALL ARABIC LETTER TAH ABOVE
        "\u077C",  # ; Hah # Lo       ARABIC LETTER HAH WITH EXTENDED ARABIC-INDIC DIGIT FOUR BELOW
        "\u08A2",  # ; Hah # Lo       ARABIC LETTER JEEM WITH TWO DOTS ABOVE
        "\u06C3",  # ; Teh_Marbuta_Goal # Lo       ARABIC LETTER TEH MARBUTA GOAL
        "\u0717",  # ; He # Lo       SYRIAC LETTER HE
        "\u0647",  # ; Heh # Lo       ARABIC LETTER HEH
        "\u06c1","\u06c2",  # ; Heh_Goal # Lo   [2] ARABIC LETTER HEH GOAL..ARABIC LETTER HEH GOAL WITH HAMZA ABOVE
        "\u071A",  # ; Heth # Lo       SYRIAC LETTER HETH
        "\u0643",  # ; Kaf # Lo       ARABIC LETTER KAF
        "\u06ac","\u06ad","\u06ae",  # ; Kaf # Lo   [3] ARABIC LETTER KAF WITH DOT ABOVE..ARABIC LETTER KAF WITH THREE DOTS BELOW
        "\u077F",  # ; Kaf # Lo       ARABIC LETTER KAF WITH TWO DOTS ABOVE
        "\u08B4",  # ; Kaf # Lo       ARABIC LETTER KAF WITH DOT BELOW
        "\u071F",  # ; Kaph # Lo       SYRIAC LETTER KAPH
        "\u06BE",  # ; Knotted_Heh # Lo       ARABIC LETTER HEH DOACHASHMEE
        "\u06FF",  # ; Knotted_Heh # Lo       ARABIC LETTER HEH WITH INVERTED V
        "\u0644",  # ; Lam # Lo       ARABIC LETTER LAM
        "\u06b5","\u06b6","\u06b7","\u06b8",  # ; Lam # Lo   [4] ARABIC LETTER LAM WITH SMALL V..ARABIC LETTER LAM WITH THREE DOTS BELOW
        "\u076A",  # ; Lam # Lo       ARABIC LETTER LAM WITH BAR
        "\u08A6",  # ; Lam # Lo       ARABIC LETTER LAM WITH DOUBLE BAR
        "\u0720",  # ; Lamadh # Lo       SYRIAC LETTER LAMADH
        "\u0645",  # ; Meem # Lo       ARABIC LETTER MEEM
        "\u0765","\u0766",  # ; Meem # Lo   [2] ARABIC LETTER MEEM WITH DOT ABOVE..ARABIC LETTER MEEM WITH DOT BELOW
        "\u08A7",  # ; Meem # Lo       ARABIC LETTER MEEM WITH THREE DOTS ABOVE
        "\u0721",  # ; Mim # Lo       SYRIAC LETTER MIM
        "\u0646",  # ; Noon # Lo       ARABIC LETTER NOON
        "\u06b9","\u06ba","\u06bb","\u06bc",  # ; Noon # Lo   [4] ARABIC LETTER NOON WITH DOT BELOW..ARABIC LETTER NOON WITH RING
        "\u0767","\u0768","\u0769",  # ; Noon # Lo   [3] ARABIC LETTER NOON WITH TWO DOTS BELOW..ARABIC LETTER NOON WITH SMALL V
        "\u0722",  # ; Nun # Lo       SYRIAC LETTER NUN
        "\u0726",  # ; Pe # Lo       SYRIAC LETTER PE
        "\u0642",  # ; Qaf # Lo       ARABIC LETTER QAF
        "\u066F",  # ; Qaf # Lo       ARABIC LETTER DOTLESS QAF
        "\u06a7","\u06a8",  # ; Qaf # Lo   [2] ARABIC LETTER QAF WITH DOT ABOVE..ARABIC LETTER QAF WITH THREE DOTS ABOVE
        "\u08A5",  # ; Qaf # Lo       ARABIC LETTER QAF WITH DOT BELOW
        "\u0729",  # ; Qaph # Lo       SYRIAC LETTER QAPH
        "\u0631","\u0632",  # ; Reh # Lo   [2] ARABIC LETTER REH..ARABIC LETTER ZAIN
        "\u0691","\u0692","\u0693","\u0694","\u0695","\u0696","\u0697","\u0698","\u0699",  # ; Reh # Lo   [9] ARABIC LETTER RREH..ARABIC LETTER REH WITH FOUR DOTS ABOVE
        "\u06EF",  # ; Reh # Lo       ARABIC LETTER REH WITH INVERTED V
        "\u075B",  # ; Reh # Lo       ARABIC LETTER REH WITH STROKE
        "\u076b","\u076c",  # ; Reh # Lo   [2] ARABIC LETTER REH WITH TWO DOTS VERTICALLY ABOVE..ARABIC LETTER REH WITH HAMZA ABOVE
        "\u0771",  # ; Reh # Lo       ARABIC LETTER REH WITH SMALL ARABIC LETTER TAH AND TWO DOTS
        "\u08AA",  # ; Reh # Lo       ARABIC LETTER REH WITH LOOP
        "\u08B2",  # ; Reh # Lo       ARABIC LETTER ZAIN WITH INVERTED V ABOVE
        "\u08B9",  # ; Reh # Lo       ARABIC LETTER REH WITH SMALL NOON ABOVE
        "\u0727",  # ; Reversed_Pe # Lo       SYRIAC LETTER REVERSED PE
        "\u0635","\u0636",  # ; Sad # Lo   [2] ARABIC LETTER SAD..ARABIC LETTER DAD
        "\u069d","\u069e",  # ; Sad # Lo   [2] ARABIC LETTER SAD WITH TWO DOTS BELOW..ARABIC LETTER SAD WITH THREE DOTS ABOVE
        "\u06FB",  # ; Sad # Lo       ARABIC LETTER DAD WITH DOT BELOW
        "\u08AF",  # ; Sad # Lo       ARABIC LETTER SAD WITH THREE DOTS BELOW
        "\u0728",  # ; Sadhe # Lo       SYRIAC LETTER SADHE
        "\u0633","\u0634",  # ; Seen # Lo   [2] ARABIC LETTER SEEN..ARABIC LETTER SHEEN
        "\u069a","\u069b","\u069c",  # ; Seen # Lo   [3] ARABIC LETTER SEEN WITH DOT BELOW AND DOT ABOVE..ARABIC LETTER SEEN WITH THREE DOTS BELOW AND THREE DOTS ABOVE
        "\u06FA",  # ; Seen # Lo       ARABIC LETTER SHEEN WITH DOT BELOW
        "\u075C",  # ; Seen # Lo       ARABIC LETTER SEEN WITH FOUR DOTS ABOVE
        "\u076D",  # ; Seen # Lo       ARABIC LETTER SEEN WITH TWO DOTS VERTICALLY ABOVE
        "\u0770",  # ; Seen # Lo       ARABIC LETTER SEEN WITH SMALL ARABIC LETTER TAH AND TWO DOTS
        "\u077d","\u077e",  # ; Seen # Lo   [2] ARABIC LETTER SEEN WITH EXTENDED ARABIC-INDIC DIGIT FOUR ABOVE..ARABIC LETTER SEEN WITH INVERTED V
        "\u0723",  # ; Semkath # Lo       SYRIAC LETTER SEMKATH
        "\u072B",  # ; Shin # Lo       SYRIAC LETTER SHIN
        "\u06AA",  # ; Swash_Kaf # Lo       ARABIC LETTER SWASH KAF
        "\u0637","\u0638",  # ; Tah # Lo   [2] ARABIC LETTER TAH..ARABIC LETTER ZAH
        "\u069F",  # ; Tah # Lo       ARABIC LETTER TAH WITH THREE DOTS ABOVE
        "\u08A3",  # ; Tah # Lo       ARABIC LETTER TAH WITH TWO DOTS ABOVE
        "\u072C",  # ; Taw # Lo       SYRIAC LETTER TAW
        "\u0629",  # ; Teh_Marbuta # Lo       ARABIC LETTER TEH MARBUTA
        "\u06C0",  # ; Teh_Marbuta # Lo       ARABIC LETTER HEH WITH YEH ABOVE
        "\u06D5",  # ; Teh_Marbuta # Lo       ARABIC LETTER AE
        "\u071b","\u071c",  # ; Teth # Lo   [2] SYRIAC LETTER TETH..SYRIAC LETTER TETH GARSHUNI
        "\u0624",  # ; Waw # Lo       ARABIC LETTER WAW WITH HAMZA ABOVE
        "\u0648",  # ; Waw # Lo       ARABIC LETTER WAW
        "\u0676","\u0677",  # ; Waw # Lo   [2] ARABIC LETTER HIGH HAMZA WAW..ARABIC LETTER U WITH HAMZA ABOVE
        "\u06c4","\u06c5","\u06c6","\u06c7","\u06c8","\u06c9","\u06ca","\u06cb",  # ; Waw # Lo   [8] ARABIC LETTER WAW WITH RING..ARABIC LETTER VE
        "\u06CF",  # ; Waw # Lo       ARABIC LETTER WAW WITH DOT ABOVE
        "\u0778","\u0779",  # ; Waw # Lo   [2] ARABIC LETTER WAW WITH EXTENDED ARABIC-INDIC DIGIT TWO ABOVE..ARABIC LETTER WAW WITH EXTENDED ARABIC-INDIC DIGIT THREE ABOVE
        "\u08AB",  # ; Waw # Lo       ARABIC LETTER WAW WITH DOT WITHIN
        "\u0718",  # ; Syriac_Waw # Lo       SYRIAC LETTER WAW
        "\u0620",  # ; Yeh # Lo       ARABIC LETTER KASHMIRI YEH
        "\u0626",  # ; Yeh # Lo       ARABIC LETTER YEH WITH HAMZA ABOVE
        "\u0649","\u064a",  # ; Yeh # Lo   [2] ARABIC LETTER ALEF MAKSURA..ARABIC LETTER YEH
        "\u0678",  # ; Yeh # Lo       ARABIC LETTER HIGH HAMZA YEH
        "\u06d0","\u06d1",  # ; Yeh # Lo   [2] ARABIC LETTER E..ARABIC LETTER YEH WITH THREE DOTS BELOW
        "\u0777",  # ; Yeh # Lo       ARABIC LETTER FARSI YEH WITH EXTENDED ARABIC-INDIC DIGIT FOUR BELOW
        "\u08a8","\u08a9",  # ; Yeh # Lo   [2] ARABIC LETTER YEH WITH TWO DOTS BELOW AND HAMZA ABOVE..ARABIC LETTER YEH WITH TWO DOTS BELOW AND DOT ABOVE
        "\u08BA",  # ; Yeh # Lo       ARABIC LETTER YEH WITH TWO DOTS BELOW AND SMALL NOON ABOVE
        "\u06d2","\u06d3",  # ; Yeh_Barree # Lo   [2] ARABIC LETTER YEH BARREE..ARABIC LETTER YEH BARREE WITH HAMZA ABOVE
        "\u06CD",  # ; Yeh_With_Tail # Lo       ARABIC LETTER YEH WITH TAIL
        "\u071D",  # ; Yudh # Lo       SYRIAC LETTER YUDH
        "\u071E",  # ; Yudh_He # Lo       SYRIAC LETTER YUDH HE
        "\u0719",  # ; Zain # Lo       SYRIAC LETTER ZAIN
        "\u074D",  # ; Zhain # Lo       SYRIAC LETTER SOGDIAN ZHAIN
        "\u074E",  # ; Khaph # Lo       SYRIAC LETTER SOGDIAN KHAPH
        "\u074F",  # ; Fe # Lo       SYRIAC LETTER SOGDIAN FE
        "\u077a","\u077b",  # ; Burushaski_Yeh_Barree # Lo   [2] ARABIC LETTER YEH BARREE WITH EXTENDED ARABIC-INDIC DIGIT TWO ABOVE..ARABIC LETTER YEH BARREE WITH EXTENDED ARABIC-INDIC DIGIT THREE ABOVE
        "\u063d","\u063e","\u063f",  # ; Farsi_Yeh # Lo   [3] ARABIC LETTER FARSI YEH WITH INVERTED V..ARABIC LETTER FARSI YEH WITH THREE DOTS ABOVE
        "\u06CC",  # ; Farsi_Yeh # Lo       ARABIC LETTER FARSI YEH
        "\u06CE",  # ; Farsi_Yeh # Lo       ARABIC LETTER YEH WITH SMALL V
        "\u0775","\u0776",  # ; Farsi_Yeh # Lo   [2] ARABIC LETTER FARSI YEH WITH EXTENDED ARABIC-INDIC DIGIT TWO ABOVE..ARABIC LETTER FARSI YEH WITH EXTENDED ARABIC-INDIC DIGIT THREE ABOVE
        "\u06BD",  # ; Nya # Lo       ARABIC LETTER NOON WITH THREE DOTS ABOVE
        "\u08AC",  # ; Rohingya_Yeh # Lo       ARABIC LETTER ROHINGYA YEH
        "\u08B1",  # ; Straight_Waw # Lo       ARABIC LETTER STRAIGHT WAW
        "\u10AC0",  # ; Manichaean_Aleph # Lo       MANICHAEAN LETTER ALEPH
        "\u10ad9","\u10ada",  # ; Manichaean_Ayin # Lo   [2] MANICHAEAN LETTER AYIN..MANICHAEAN LETTER AAYIN
        "\u10ac1","\u10ac2",  # ; Manichaean_Beth # Lo   [2] MANICHAEAN LETTER BETH..MANICHAEAN LETTER BHETH
        "\u10AC5",  # ; Manichaean_Daleth # Lo       MANICHAEAN LETTER DALETH
        "\u10AD4",  # ; Manichaean_Dhamedh # Lo       MANICHAEAN LETTER DHAMEDH
        "\u10AEC",  # ; Manichaean_Five # No       MANICHAEAN NUMBER FIVE
        "\u10ac3","\u10ac4",  # ; Manichaean_Gimel # Lo   [2] MANICHAEAN LETTER GIMEL..MANICHAEAN LETTER GHIMEL
        "\u10ACD",  # ; Manichaean_Heth # Lo       MANICHAEAN LETTER HETH
        "\u10AEF",  # ; Manichaean_Hundred # No       MANICHAEAN NUMBER ONE HUNDRED
        "\u10ad0","\u10ad1","\u10ad2",  # ; Manichaean_Kaph # Lo   [3] MANICHAEAN LETTER KAPH..MANICHAEAN LETTER KHAPH
        "\u10AD3",  # ; Manichaean_Lamedh # Lo       MANICHAEAN LETTER LAMEDH
        "\u10AD6",  # ; Manichaean_Mem # Lo       MANICHAEAN LETTER MEM
        "\u10AD7",  # ; Manichaean_Nun # Lo       MANICHAEAN LETTER NUN
        "\u10AEB",  # ; Manichaean_One # No       MANICHAEAN NUMBER ONE
        "\u10adb","\u10adc",  # ; Manichaean_Pe # Lo   [2] MANICHAEAN LETTER PE..MANICHAEAN LETTER FE
        "\u10ade","\u10adf","\u10ae0",  # ; Manichaean_Qoph # Lo   [3] MANICHAEAN LETTER QOPH..MANICHAEAN LETTER QHOPH
        "\u10AE1",  # ; Manichaean_Resh # Lo       MANICHAEAN LETTER RESH
        "\u10ADD",  # ; Manichaean_Sadhe # Lo       MANICHAEAN LETTER SADHE
        "\u10AD8",  # ; Manichaean_Samekh # Lo       MANICHAEAN LETTER SAMEKH
        "\u10AE4",  # ; Manichaean_Taw # Lo       MANICHAEAN LETTER TAW
        "\u10AED",  # ; Manichaean_Ten # No       MANICHAEAN NUMBER TEN
        "\u10ACE",  # ; Manichaean_Teth # Lo       MANICHAEAN LETTER TETH
        "\u10AD5",  # ; Manichaean_Thamedh # Lo       MANICHAEAN LETTER THAMEDH
        "\u10AEE",  # ; Manichaean_Twenty # No       MANICHAEAN NUMBER TWENTY
        "\u10AC7",  # ; Manichaean_Waw # Lo       MANICHAEAN LETTER WAW
        "\u10ACF",  # ; Manichaean_Yodh # Lo       MANICHAEAN LETTER YODH
        "\u10ac9","\u10aca",  # ; Manichaean_Zayin # Lo   [2] MANICHAEAN LETTER ZAYIN..MANICHAEAN LETTER ZHAYIN
        "\u08BB",  # ; African_Feh # Lo       ARABIC LETTER AFRICAN FEH
        "\u08BC",  # ; African_Qaf # Lo       ARABIC LETTER AFRICAN QAF
        "\u08BD",  # ; African_Noon # Lo       ARABIC LETTER AFRICAN NOON
        "\u0860",  # ; Malayalam_Nga # Lo       SYRIAC LETTER MALAYALAM NGA
        "\u0861",  # ; Malayalam_Ja # Lo       SYRIAC LETTER MALAYALAM JA
        "\u0862",  # ; Malayalam_Nya # Lo       SYRIAC LETTER MALAYALAM NYA
        "\u0863",  # ; Malayalam_Tta # Lo       SYRIAC LETTER MALAYALAM TTA
        "\u0864",  # ; Malayalam_Nna # Lo       SYRIAC LETTER MALAYALAM NNA
        "\u0865",  # ; Malayalam_Nnna # Lo       SYRIAC LETTER MALAYALAM NNNA
        "\u0866",  # ; Malayalam_Bha # Lo       SYRIAC LETTER MALAYALAM BHA
        "\u0867",  # ; Malayalam_Ra # Lo       SYRIAC LETTER MALAYALAM RA
        "\u0868",  # ; Malayalam_Lla # Lo       SYRIAC LETTER MALAYALAM LLA
        "\u0869",  # ; Malayalam_Llla # Lo       SYRIAC LETTER MALAYALAM LLLA
        "\u086A",  # ; Malayalam_Ssa # Lo       SYRIAC LETTER MALAYALAM SSA
    ]
    test_data.each do |string|
      assert @validator.valid_encoding?(string), "U10_DerivedJoiningGroup: #{string}"
      assert string.force_encoding("UTF-8").valid_encoding?, "U10_DerivedJoiningGroup: #{string}" if @vercheck
    end
  end

end

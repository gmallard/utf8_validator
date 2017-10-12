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
        "\d0639","\d063a",  # ; Ain # Lo   [2] ARABIC LETTER AIN..ARABIC LETTER GHAIN
        "\d06A0",  # ; Ain # Lo       ARABIC LETTER AIN WITH THREE DOTS ABOVE
        "\d06FC",  # ; Ain # Lo       ARABIC LETTER GHAIN WITH DOT BELOW
        "\d075d","\d075e","\d075f",  # ; Ain # Lo   [3] ARABIC LETTER AIN WITH TWO DOTS ABOVE..ARABIC LETTER AIN WITH TWO DOTS VERTICALLY ABOVE
        "\d08B3",  # ; Ain # Lo       ARABIC LETTER AIN WITH THREE DOTS BELOW
        "\d0710",  # ; Alaph # Lo       SYRIAC LETTER ALAPH
        "\d0622","\d0623",  # ; Alef # Lo   [2] ARABIC LETTER ALEF WITH MADDA ABOVE..ARABIC LETTER ALEF WITH HAMZA ABOVE
        "\d0625",  # ; Alef # Lo       ARABIC LETTER ALEF WITH HAMZA BELOW
        "\d0627",  # ; Alef # Lo       ARABIC LETTER ALEF
        "\d0671","\d0672","\d0673",  # ; Alef # Lo   [3] ARABIC LETTER ALEF WASLA..ARABIC LETTER ALEF WITH WAVY HAMZA BELOW
        "\d0675",  # ; Alef # Lo       ARABIC LETTER HIGH HAMZA ALEF
        "\d0773","\d0774",  # ; Alef # Lo   [2] ARABIC LETTER ALEF WITH EXTENDED ARABIC-INDIC DIGIT TWO ABOVE..ARABIC LETTER ALEF WITH EXTENDED ARABIC-INDIC DIGIT THREE ABOVE
        "\d0628",  # ; Beh # Lo       ARABIC LETTER BEH
        "\d062a","\d062b",  # ; Beh # Lo   [2] ARABIC LETTER TEH..ARABIC LETTER THEH
        "\d066E",  # ; Beh # Lo       ARABIC LETTER DOTLESS BEH
        "\d0679","\d067a","\d067b","\d067c","\d067d","\d067e","\d067f","\d0680",  # ; Beh # Lo   [8] ARABIC LETTER TTEH..ARABIC LETTER BEHEH
        "\d0750","\d0751","\d0752","\d0753","\d0754","\d0755","\d0756",  # ; Beh # Lo   [7] ARABIC LETTER BEH WITH THREE DOTS HORIZONTALLY BELOW..ARABIC LETTER BEH WITH SMALL V
        "\d08a0","\d08a1",  # ; Beh # Lo   [2] ARABIC LETTER BEH WITH SMALL V BELOW..ARABIC LETTER BEH WITH HAMZA ABOVE
        "\d08b6","\d08b7","\d08b8",  # ; Beh # Lo   [3] ARABIC LETTER BEH WITH SMALL MEEM ABOVE..ARABIC LETTER TEH WITH SMALL TEH ABOVE
        "\d0712",  # ; Beth # Lo       SYRIAC LETTER BETH
        "\d072D",  # ; Beth # Lo       SYRIAC LETTER PERSIAN BHETH
        "\d062f","\d0630",  # ; Dal # Lo   [2] ARABIC LETTER DAL..ARABIC LETTER THAL
        "\d0688","\d0689","\d068a","\d068b","\d068c","\d068d","\d068e","\d068f","\d0690",  # ; Dal # Lo   [9] ARABIC LETTER DDAL..ARABIC LETTER DAL WITH FOUR DOTS ABOVE
        "\d06EE",  # ; Dal # Lo       ARABIC LETTER DAL WITH INVERTED V
        "\d0759","\d075a",  # ; Dal # Lo   [2] ARABIC LETTER DAL WITH TWO DOTS VERTICALLY BELOW AND SMALL TAH..ARABIC LETTER DAL WITH INVERTED SMALL V BELOW
        "\d08AE",  # ; Dal # Lo       ARABIC LETTER DAL WITH THREE DOTS BELOW
        "\d0715","\d0716",  # ; Dalath_Rish # Lo   [2] SYRIAC LETTER DALATH..SYRIAC LETTER DOTLESS DALATH RISH
        "\d072A",  # ; Dalath_Rish # Lo       SYRIAC LETTER RISH
        "\d072F",  # ; Dalath_Rish # Lo       SYRIAC LETTER PERSIAN DHALATH
        "\d0725",  # ; E # Lo       SYRIAC LETTER E
        "\d0641",  # ; Feh # Lo       ARABIC LETTER FEH
        "\d06a1","\d06a2","\d06a3","\d06a4","\d06a5","\d06a6",  # ; Feh # Lo   [6] ARABIC LETTER DOTLESS FEH..ARABIC LETTER PEHEH
        "\d0760","\d0761",  # ; Feh # Lo   [2] ARABIC LETTER FEH WITH TWO DOTS BELOW..ARABIC LETTER FEH WITH THREE DOTS POINTING UPWARDS BELOW
        "\d08A4",  # ; Feh # Lo       ARABIC LETTER FEH WITH DOT BELOW AND THREE DOTS ABOVE
        "\d0724",  # ; Final_Semkath # Lo       SYRIAC LETTER FINAL SEMKATH
        "\d063b","\d063c",  # ; Gaf # Lo   [2] ARABIC LETTER KEHEH WITH TWO DOTS ABOVE..ARABIC LETTER KEHEH WITH THREE DOTS BELOW
        "\d06A9",  # ; Gaf # Lo       ARABIC LETTER KEHEH
        "\d06AB",  # ; Gaf # Lo       ARABIC LETTER KAF WITH RING
        "\d06af","\d06b0","\d06b1","\d06b2","\d06b3","\d06b4",  # ; Gaf # Lo   [6] ARABIC LETTER GAF..ARABIC LETTER GAF WITH THREE DOTS ABOVE
        "\d0762","\d0763","\d0764",  # ; Gaf # Lo   [3] ARABIC LETTER KEHEH WITH DOT ABOVE..ARABIC LETTER KEHEH WITH THREE DOTS POINTING UPWARDS BELOW
        "\d08B0",  # ; Gaf # Lo       ARABIC LETTER GAF WITH INVERTED STROKE
        "\d0713","\d0714",  # ; Gamal # Lo   [2] SYRIAC LETTER GAMAL..SYRIAC LETTER GAMAL GARSHUNI
        "\d072E",  # ; Gamal # Lo       SYRIAC LETTER PERSIAN GHAMAL
        "\d062c","\d062d","\d062e",  # ; Hah # Lo   [3] ARABIC LETTER JEEM..ARABIC LETTER KHAH
        "\d0681","\d0682","\d0683","\d0684","\d0685","\d0686","\d0687",  # ; Hah # Lo   [7] ARABIC LETTER HAH WITH HAMZA ABOVE..ARABIC LETTER TCHEHEH
        "\d06BF",  # ; Hah # Lo       ARABIC LETTER TCHEH WITH DOT ABOVE
        "\d0757","\d0758",  # ; Hah # Lo   [2] ARABIC LETTER HAH WITH TWO DOTS ABOVE..ARABIC LETTER HAH WITH THREE DOTS POINTING UPWARDS BELOW
        "\d076e","\d076f",  # ; Hah # Lo   [2] ARABIC LETTER HAH WITH SMALL ARABIC LETTER TAH BELOW..ARABIC LETTER HAH WITH SMALL ARABIC LETTER TAH AND TWO DOTS
        "\d0772",  # ; Hah # Lo       ARABIC LETTER HAH WITH SMALL ARABIC LETTER TAH ABOVE
        "\d077C",  # ; Hah # Lo       ARABIC LETTER HAH WITH EXTENDED ARABIC-INDIC DIGIT FOUR BELOW
        "\d08A2",  # ; Hah # Lo       ARABIC LETTER JEEM WITH TWO DOTS ABOVE
        "\d06C3",  # ; Teh_Marbuta_Goal # Lo       ARABIC LETTER TEH MARBUTA GOAL
        "\d0717",  # ; He # Lo       SYRIAC LETTER HE
        "\d0647",  # ; Heh # Lo       ARABIC LETTER HEH
        "\d06c1","\d06c2",  # ; Heh_Goal # Lo   [2] ARABIC LETTER HEH GOAL..ARABIC LETTER HEH GOAL WITH HAMZA ABOVE
        "\d071A",  # ; Heth # Lo       SYRIAC LETTER HETH
        "\d0643",  # ; Kaf # Lo       ARABIC LETTER KAF
        "\d06ac","\d06ad","\d06ae",  # ; Kaf # Lo   [3] ARABIC LETTER KAF WITH DOT ABOVE..ARABIC LETTER KAF WITH THREE DOTS BELOW
        "\d077F",  # ; Kaf # Lo       ARABIC LETTER KAF WITH TWO DOTS ABOVE
        "\d08B4",  # ; Kaf # Lo       ARABIC LETTER KAF WITH DOT BELOW
        "\d071F",  # ; Kaph # Lo       SYRIAC LETTER KAPH
        "\d06BE",  # ; Knotted_Heh # Lo       ARABIC LETTER HEH DOACHASHMEE
        "\d06FF",  # ; Knotted_Heh # Lo       ARABIC LETTER HEH WITH INVERTED V
        "\d0644",  # ; Lam # Lo       ARABIC LETTER LAM
        "\d06b5","\d06b6","\d06b7","\d06b8",  # ; Lam # Lo   [4] ARABIC LETTER LAM WITH SMALL V..ARABIC LETTER LAM WITH THREE DOTS BELOW
        "\d076A",  # ; Lam # Lo       ARABIC LETTER LAM WITH BAR
        "\d08A6",  # ; Lam # Lo       ARABIC LETTER LAM WITH DOUBLE BAR
        "\d0720",  # ; Lamadh # Lo       SYRIAC LETTER LAMADH
        "\d0645",  # ; Meem # Lo       ARABIC LETTER MEEM
        "\d0765","\d0766",  # ; Meem # Lo   [2] ARABIC LETTER MEEM WITH DOT ABOVE..ARABIC LETTER MEEM WITH DOT BELOW
        "\d08A7",  # ; Meem # Lo       ARABIC LETTER MEEM WITH THREE DOTS ABOVE
        "\d0721",  # ; Mim # Lo       SYRIAC LETTER MIM
        "\d0646",  # ; Noon # Lo       ARABIC LETTER NOON
        "\d06b9","\d06ba","\d06bb","\d06bc",  # ; Noon # Lo   [4] ARABIC LETTER NOON WITH DOT BELOW..ARABIC LETTER NOON WITH RING
        "\d0767","\d0768","\d0769",  # ; Noon # Lo   [3] ARABIC LETTER NOON WITH TWO DOTS BELOW..ARABIC LETTER NOON WITH SMALL V
        "\d0722",  # ; Nun # Lo       SYRIAC LETTER NUN
        "\d0726",  # ; Pe # Lo       SYRIAC LETTER PE
        "\d0642",  # ; Qaf # Lo       ARABIC LETTER QAF
        "\d066F",  # ; Qaf # Lo       ARABIC LETTER DOTLESS QAF
        "\d06a7","\d06a8",  # ; Qaf # Lo   [2] ARABIC LETTER QAF WITH DOT ABOVE..ARABIC LETTER QAF WITH THREE DOTS ABOVE
        "\d08A5",  # ; Qaf # Lo       ARABIC LETTER QAF WITH DOT BELOW
        "\d0729",  # ; Qaph # Lo       SYRIAC LETTER QAPH
        "\d0631","\d0632",  # ; Reh # Lo   [2] ARABIC LETTER REH..ARABIC LETTER ZAIN
        "\d0691","\d0692","\d0693","\d0694","\d0695","\d0696","\d0697","\d0698","\d0699",  # ; Reh # Lo   [9] ARABIC LETTER RREH..ARABIC LETTER REH WITH FOUR DOTS ABOVE
        "\d06EF",  # ; Reh # Lo       ARABIC LETTER REH WITH INVERTED V
        "\d075B",  # ; Reh # Lo       ARABIC LETTER REH WITH STROKE
        "\d076b","\d076c",  # ; Reh # Lo   [2] ARABIC LETTER REH WITH TWO DOTS VERTICALLY ABOVE..ARABIC LETTER REH WITH HAMZA ABOVE
        "\d0771",  # ; Reh # Lo       ARABIC LETTER REH WITH SMALL ARABIC LETTER TAH AND TWO DOTS
        "\d08AA",  # ; Reh # Lo       ARABIC LETTER REH WITH LOOP
        "\d08B2",  # ; Reh # Lo       ARABIC LETTER ZAIN WITH INVERTED V ABOVE
        "\d08B9",  # ; Reh # Lo       ARABIC LETTER REH WITH SMALL NOON ABOVE
        "\d0727",  # ; Reversed_Pe # Lo       SYRIAC LETTER REVERSED PE
        "\d0635","\d0636",  # ; Sad # Lo   [2] ARABIC LETTER SAD..ARABIC LETTER DAD
        "\d069d","\d069e",  # ; Sad # Lo   [2] ARABIC LETTER SAD WITH TWO DOTS BELOW..ARABIC LETTER SAD WITH THREE DOTS ABOVE
        "\d06FB",  # ; Sad # Lo       ARABIC LETTER DAD WITH DOT BELOW
        "\d08AF",  # ; Sad # Lo       ARABIC LETTER SAD WITH THREE DOTS BELOW
        "\d0728",  # ; Sadhe # Lo       SYRIAC LETTER SADHE
        "\d0633","\d0634",  # ; Seen # Lo   [2] ARABIC LETTER SEEN..ARABIC LETTER SHEEN
        "\d069a","\d069b","\d069c",  # ; Seen # Lo   [3] ARABIC LETTER SEEN WITH DOT BELOW AND DOT ABOVE..ARABIC LETTER SEEN WITH THREE DOTS BELOW AND THREE DOTS ABOVE
        "\d06FA",  # ; Seen # Lo       ARABIC LETTER SHEEN WITH DOT BELOW
        "\d075C",  # ; Seen # Lo       ARABIC LETTER SEEN WITH FOUR DOTS ABOVE
        "\d076D",  # ; Seen # Lo       ARABIC LETTER SEEN WITH TWO DOTS VERTICALLY ABOVE
        "\d0770",  # ; Seen # Lo       ARABIC LETTER SEEN WITH SMALL ARABIC LETTER TAH AND TWO DOTS
        "\d077d","\d077e",  # ; Seen # Lo   [2] ARABIC LETTER SEEN WITH EXTENDED ARABIC-INDIC DIGIT FOUR ABOVE..ARABIC LETTER SEEN WITH INVERTED V
        "\d0723",  # ; Semkath # Lo       SYRIAC LETTER SEMKATH
        "\d072B",  # ; Shin # Lo       SYRIAC LETTER SHIN
        "\d06AA",  # ; Swash_Kaf # Lo       ARABIC LETTER SWASH KAF
        "\d0637","\d0638",  # ; Tah # Lo   [2] ARABIC LETTER TAH..ARABIC LETTER ZAH
        "\d069F",  # ; Tah # Lo       ARABIC LETTER TAH WITH THREE DOTS ABOVE
        "\d08A3",  # ; Tah # Lo       ARABIC LETTER TAH WITH TWO DOTS ABOVE
        "\d072C",  # ; Taw # Lo       SYRIAC LETTER TAW
        "\d0629",  # ; Teh_Marbuta # Lo       ARABIC LETTER TEH MARBUTA
        "\d06C0",  # ; Teh_Marbuta # Lo       ARABIC LETTER HEH WITH YEH ABOVE
        "\d06D5",  # ; Teh_Marbuta # Lo       ARABIC LETTER AE
        "\d071b","\d071c",  # ; Teth # Lo   [2] SYRIAC LETTER TETH..SYRIAC LETTER TETH GARSHUNI
        "\d0624",  # ; Waw # Lo       ARABIC LETTER WAW WITH HAMZA ABOVE
        "\d0648",  # ; Waw # Lo       ARABIC LETTER WAW
        "\d0676","\d0677",  # ; Waw # Lo   [2] ARABIC LETTER HIGH HAMZA WAW..ARABIC LETTER U WITH HAMZA ABOVE
        "\d06c4","\d06c5","\d06c6","\d06c7","\d06c8","\d06c9","\d06ca","\d06cb",  # ; Waw # Lo   [8] ARABIC LETTER WAW WITH RING..ARABIC LETTER VE
        "\d06CF",  # ; Waw # Lo       ARABIC LETTER WAW WITH DOT ABOVE
        "\d0778","\d0779",  # ; Waw # Lo   [2] ARABIC LETTER WAW WITH EXTENDED ARABIC-INDIC DIGIT TWO ABOVE..ARABIC LETTER WAW WITH EXTENDED ARABIC-INDIC DIGIT THREE ABOVE
        "\d08AB",  # ; Waw # Lo       ARABIC LETTER WAW WITH DOT WITHIN
        "\d0718",  # ; Syriac_Waw # Lo       SYRIAC LETTER WAW
        "\d0620",  # ; Yeh # Lo       ARABIC LETTER KASHMIRI YEH
        "\d0626",  # ; Yeh # Lo       ARABIC LETTER YEH WITH HAMZA ABOVE
        "\d0649","\d064a",  # ; Yeh # Lo   [2] ARABIC LETTER ALEF MAKSURA..ARABIC LETTER YEH
        "\d0678",  # ; Yeh # Lo       ARABIC LETTER HIGH HAMZA YEH
        "\d06d0","\d06d1",  # ; Yeh # Lo   [2] ARABIC LETTER E..ARABIC LETTER YEH WITH THREE DOTS BELOW
        "\d0777",  # ; Yeh # Lo       ARABIC LETTER FARSI YEH WITH EXTENDED ARABIC-INDIC DIGIT FOUR BELOW
        "\d08a8","\d08a9",  # ; Yeh # Lo   [2] ARABIC LETTER YEH WITH TWO DOTS BELOW AND HAMZA ABOVE..ARABIC LETTER YEH WITH TWO DOTS BELOW AND DOT ABOVE
        "\d08BA",  # ; Yeh # Lo       ARABIC LETTER YEH WITH TWO DOTS BELOW AND SMALL NOON ABOVE
        "\d06d2","\d06d3",  # ; Yeh_Barree # Lo   [2] ARABIC LETTER YEH BARREE..ARABIC LETTER YEH BARREE WITH HAMZA ABOVE
        "\d06CD",  # ; Yeh_With_Tail # Lo       ARABIC LETTER YEH WITH TAIL
        "\d071D",  # ; Yudh # Lo       SYRIAC LETTER YUDH
        "\d071E",  # ; Yudh_He # Lo       SYRIAC LETTER YUDH HE
        "\d0719",  # ; Zain # Lo       SYRIAC LETTER ZAIN
        "\d074D",  # ; Zhain # Lo       SYRIAC LETTER SOGDIAN ZHAIN
        "\d074E",  # ; Khaph # Lo       SYRIAC LETTER SOGDIAN KHAPH
        "\d074F",  # ; Fe # Lo       SYRIAC LETTER SOGDIAN FE
        "\d077a","\d077b",  # ; Burushaski_Yeh_Barree # Lo   [2] ARABIC LETTER YEH BARREE WITH EXTENDED ARABIC-INDIC DIGIT TWO ABOVE..ARABIC LETTER YEH BARREE WITH EXTENDED ARABIC-INDIC DIGIT THREE ABOVE
        "\d063d","\d063e","\d063f",  # ; Farsi_Yeh # Lo   [3] ARABIC LETTER FARSI YEH WITH INVERTED V..ARABIC LETTER FARSI YEH WITH THREE DOTS ABOVE
        "\d06CC",  # ; Farsi_Yeh # Lo       ARABIC LETTER FARSI YEH
        "\d06CE",  # ; Farsi_Yeh # Lo       ARABIC LETTER YEH WITH SMALL V
        "\d0775","\d0776",  # ; Farsi_Yeh # Lo   [2] ARABIC LETTER FARSI YEH WITH EXTENDED ARABIC-INDIC DIGIT TWO ABOVE..ARABIC LETTER FARSI YEH WITH EXTENDED ARABIC-INDIC DIGIT THREE ABOVE
        "\d06BD",  # ; Nya # Lo       ARABIC LETTER NOON WITH THREE DOTS ABOVE
        "\d08AC",  # ; Rohingya_Yeh # Lo       ARABIC LETTER ROHINGYA YEH
        "\d08B1",  # ; Straight_Waw # Lo       ARABIC LETTER STRAIGHT WAW
        "\d10AC0",  # ; Manichaean_Aleph # Lo       MANICHAEAN LETTER ALEPH
        "\d10ad9","\d10ada",  # ; Manichaean_Ayin # Lo   [2] MANICHAEAN LETTER AYIN..MANICHAEAN LETTER AAYIN
        "\d10ac1","\d10ac2",  # ; Manichaean_Beth # Lo   [2] MANICHAEAN LETTER BETH..MANICHAEAN LETTER BHETH
        "\d10AC5",  # ; Manichaean_Daleth # Lo       MANICHAEAN LETTER DALETH
        "\d10AD4",  # ; Manichaean_Dhamedh # Lo       MANICHAEAN LETTER DHAMEDH
        "\d10AEC",  # ; Manichaean_Five # No       MANICHAEAN NUMBER FIVE
        "\d10ac3","\d10ac4",  # ; Manichaean_Gimel # Lo   [2] MANICHAEAN LETTER GIMEL..MANICHAEAN LETTER GHIMEL
        "\d10ACD",  # ; Manichaean_Heth # Lo       MANICHAEAN LETTER HETH
        "\d10AEF",  # ; Manichaean_Hundred # No       MANICHAEAN NUMBER ONE HUNDRED
        "\d10ad0","\d10ad1","\d10ad2",  # ; Manichaean_Kaph # Lo   [3] MANICHAEAN LETTER KAPH..MANICHAEAN LETTER KHAPH
        "\d10AD3",  # ; Manichaean_Lamedh # Lo       MANICHAEAN LETTER LAMEDH
        "\d10AD6",  # ; Manichaean_Mem # Lo       MANICHAEAN LETTER MEM
        "\d10AD7",  # ; Manichaean_Nun # Lo       MANICHAEAN LETTER NUN
        "\d10AEB",  # ; Manichaean_One # No       MANICHAEAN NUMBER ONE
        "\d10adb","\d10adc",  # ; Manichaean_Pe # Lo   [2] MANICHAEAN LETTER PE..MANICHAEAN LETTER FE
        "\d10ade","\d10adf","\d10ae0",  # ; Manichaean_Qoph # Lo   [3] MANICHAEAN LETTER QOPH..MANICHAEAN LETTER QHOPH
        "\d10AE1",  # ; Manichaean_Resh # Lo       MANICHAEAN LETTER RESH
        "\d10ADD",  # ; Manichaean_Sadhe # Lo       MANICHAEAN LETTER SADHE
        "\d10AD8",  # ; Manichaean_Samekh # Lo       MANICHAEAN LETTER SAMEKH
        "\d10AE4",  # ; Manichaean_Taw # Lo       MANICHAEAN LETTER TAW
        "\d10AED",  # ; Manichaean_Ten # No       MANICHAEAN NUMBER TEN
        "\d10ACE",  # ; Manichaean_Teth # Lo       MANICHAEAN LETTER TETH
        "\d10AD5",  # ; Manichaean_Thamedh # Lo       MANICHAEAN LETTER THAMEDH
        "\d10AEE",  # ; Manichaean_Twenty # No       MANICHAEAN NUMBER TWENTY
        "\d10AC7",  # ; Manichaean_Waw # Lo       MANICHAEAN LETTER WAW
        "\d10ACF",  # ; Manichaean_Yodh # Lo       MANICHAEAN LETTER YODH
        "\d10ac9","\d10aca",  # ; Manichaean_Zayin # Lo   [2] MANICHAEAN LETTER ZAYIN..MANICHAEAN LETTER ZHAYIN
        "\d08BB",  # ; African_Feh # Lo       ARABIC LETTER AFRICAN FEH
        "\d08BC",  # ; African_Qaf # Lo       ARABIC LETTER AFRICAN QAF
        "\d08BD",  # ; African_Noon # Lo       ARABIC LETTER AFRICAN NOON
        "\d0860",  # ; Malayalam_Nga # Lo       SYRIAC LETTER MALAYALAM NGA
        "\d0861",  # ; Malayalam_Ja # Lo       SYRIAC LETTER MALAYALAM JA
        "\d0862",  # ; Malayalam_Nya # Lo       SYRIAC LETTER MALAYALAM NYA
        "\d0863",  # ; Malayalam_Tta # Lo       SYRIAC LETTER MALAYALAM TTA
        "\d0864",  # ; Malayalam_Nna # Lo       SYRIAC LETTER MALAYALAM NNA
        "\d0865",  # ; Malayalam_Nnna # Lo       SYRIAC LETTER MALAYALAM NNNA
        "\d0866",  # ; Malayalam_Bha # Lo       SYRIAC LETTER MALAYALAM BHA
        "\d0867",  # ; Malayalam_Ra # Lo       SYRIAC LETTER MALAYALAM RA
        "\d0868",  # ; Malayalam_Lla # Lo       SYRIAC LETTER MALAYALAM LLA
        "\d0869",  # ; Malayalam_Llla # Lo       SYRIAC LETTER MALAYALAM LLLA
        "\d086A",  # ; Malayalam_Ssa # Lo       SYRIAC LETTER MALAYALAM SSA
    ]
    test_data.each do |string|
      assert @validator.valid_encoding?(string), "U10_DerivedJoiningGroup: #{string}"
      assert string.force_encoding("UTF-8").valid_encoding?, "U10_DerivedJoiningGroup: #{string}" if @vercheck
    end
  end

end

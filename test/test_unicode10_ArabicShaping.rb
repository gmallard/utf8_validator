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
class TestUnicode10ArabicShaping < Test::Unit::TestCase
  #
  def setup
    @validator = UTF8::Validator.new
    @vercheck = ((RUBY_VERSION =~ /1.9/) or (RUBY_VERSION =~ /2./)) ? true : false
  end

  #
  def teardown
    @validator = nil
  end

  def test_unicode10_ArabicShaping
    test_data = [
    "\d0600",  # ; ARABIC NUMBER SIGN; U; No_Joining_Group
    "\d0601",  # ; ARABIC SIGN SANAH; U; No_Joining_Group
    "\d0602",  # ; ARABIC FOOTNOTE MARKER; U; No_Joining_Group
    "\d0603",  # ; ARABIC SIGN SAFHA; U; No_Joining_Group
    "\d0604",  # ; ARABIC SIGN SAMVAT; U; No_Joining_Group
    "\d0605",  # ; ARABIC NUMBER MARK ABOVE; U; No_Joining_Group
    "\d0608",  # ; ARABIC RAY; U; No_Joining_Group
    "\d060B",  # ; AFGHANI SIGN; U; No_Joining_Group
    "\d0620",  # ; DOTLESS YEH WITH SEPARATE RING BELOW; D; YEH
    "\d0621",  # ; HAMZA; U; No_Joining_Group
    "\d0622",  # ; ALEF WITH MADDA ABOVE; R; ALEF
    "\d0623",  # ; ALEF WITH HAMZA ABOVE; R; ALEF
    "\d0624",  # ; WAW WITH HAMZA ABOVE; R; WAW
    "\d0625",  # ; ALEF WITH HAMZA BELOW; R; ALEF
    "\d0626",  # ; DOTLESS YEH WITH HAMZA ABOVE; D; YEH
    "\d0627",  # ; ALEF; R; ALEF
    "\d0628",  # ; BEH; D; BEH
    "\d0629",  # ; TEH MARBUTA; R; TEH MARBUTA
    "\d062A",  # ; DOTLESS BEH WITH 2 DOTS ABOVE; D; BEH
    "\d062B",  # ; DOTLESS BEH WITH 3 DOTS ABOVE; D; BEH
    "\d062C",  # ; HAH WITH DOT BELOW; D; HAH
    "\d062D",  # ; HAH; D; HAH
    "\d062E",  # ; HAH WITH DOT ABOVE; D; HAH
    "\d062F",  # ; DAL; R; DAL
    "\d0630",  # ; DAL WITH DOT ABOVE; R; DAL
    "\d0631",  # ; REH; R; REH
    "\d0632",  # ; REH WITH DOT ABOVE; R; REH
    "\d0633",  # ; SEEN; D; SEEN
    "\d0634",  # ; SEEN WITH 3 DOTS ABOVE; D; SEEN
    "\d0635",  # ; SAD; D; SAD
    "\d0636",  # ; SAD WITH DOT ABOVE; D; SAD
    "\d0637",  # ; TAH; D; TAH
    "\d0638",  # ; TAH WITH DOT ABOVE; D; TAH
    "\d0639",  # ; AIN; D; AIN
    "\d063A",  # ; AIN WITH DOT ABOVE; D; AIN
    "\d063B",  # ; KEHEH WITH 2 DOTS ABOVE; D; GAF
    "\d063C",  # ; KEHEH WITH 3 DOTS BELOW; D; GAF
    "\d063D",  # ; FARSI YEH WITH INVERTED V ABOVE; D; FARSI YEH
    "\d063E",  # ; FARSI YEH WITH 2 DOTS ABOVE; D; FARSI YEH
    "\d063F",  # ; FARSI YEH WITH 3 DOTS ABOVE; D; FARSI YEH
    "\d0640",  # ; TATWEEL; C; No_Joining_Group
    "\d0641",  # ; FEH; D; FEH
    "\d0642",  # ; QAF; D; QAF
    "\d0643",  # ; KAF; D; KAF
    "\d0644",  # ; LAM; D; LAM
    "\d0645",  # ; MEEM; D; MEEM
    "\d0646",  # ; NOON; D; NOON
    "\d0647",  # ; HEH; D; HEH
    "\d0648",  # ; WAW; R; WAW
    "\d0649",  # ; DOTLESS YEH; D; YEH
    "\d064A",  # ; YEH; D; YEH
    "\d066E",  # ; DOTLESS BEH; D; BEH
    "\d066F",  # ; DOTLESS QAF; D; QAF
    "\d0671",  # ; ALEF WITH WASLA ABOVE; R; ALEF
    "\d0672",  # ; ALEF WITH WAVY HAMZA ABOVE; R; ALEF
    "\d0673",  # ; ALEF WITH WAVY HAMZA BELOW; R; ALEF
    "\d0674",  # ; HIGH HAMZA; U; No_Joining_Group
    "\d0675",  # ; HIGH HAMZA ALEF; R; ALEF
    "\d0676",  # ; HIGH HAMZA WAW; R; WAW
    "\d0677",  # ; HIGH HAMZA WAW WITH DAMMA ABOVE; R; WAW
    "\d0678",  # ; HIGH HAMZA DOTLESS YEH; D; YEH
    "\d0679",  # ; DOTLESS BEH WITH TAH ABOVE; D; BEH
    "\d067A",  # ; DOTLESS BEH WITH VERTICAL 2 DOTS ABOVE; D; BEH
    "\d067B",  # ; DOTLESS BEH WITH VERTICAL 2 DOTS BELOW; D; BEH
    "\d067C",  # ; DOTLESS BEH WITH ATTACHED RING BELOW AND 2 DOTS ABOVE; D; BEH
    "\d067D",  # ; DOTLESS BEH WITH INVERTED 3 DOTS ABOVE; D; BEH
    "\d067E",  # ; DOTLESS BEH WITH 3 DOTS BELOW; D; BEH
    "\d067F",  # ; DOTLESS BEH WITH 4 DOTS ABOVE; D; BEH
    "\d0680",  # ; DOTLESS BEH WITH 4 DOTS BELOW; D; BEH
    "\d0681",  # ; HAH WITH HAMZA ABOVE; D; HAH
    "\d0682",  # ; HAH WITH VERTICAL 2 DOTS ABOVE; D; HAH
    "\d0683",  # ; HAH WITH 2 DOTS BELOW; D; HAH
    "\d0684",  # ; HAH WITH VERTICAL 2 DOTS BELOW; D; HAH
    "\d0685",  # ; HAH WITH 3 DOTS ABOVE; D; HAH
    "\d0686",  # ; HAH WITH 3 DOTS BELOW; D; HAH
    "\d0687",  # ; HAH WITH 4 DOTS BELOW; D; HAH
    "\d0688",  # ; DAL WITH TAH ABOVE; R; DAL
    "\d0689",  # ; DAL WITH ATTACHED RING BELOW; R; DAL
    "\d068A",  # ; DAL WITH DOT BELOW; R; DAL
    "\d068B",  # ; DAL WITH DOT BELOW AND TAH ABOVE; R; DAL
    "\d068C",  # ; DAL WITH 2 DOTS ABOVE; R; DAL
    "\d068D",  # ; DAL WITH 2 DOTS BELOW; R; DAL
    "\d068E",  # ; DAL WITH 3 DOTS ABOVE; R; DAL
    "\d068F",  # ; DAL WITH INVERTED 3 DOTS ABOVE; R; DAL
    "\d0690",  # ; DAL WITH 4 DOTS ABOVE; R; DAL
    "\d0691",  # ; REH WITH TAH ABOVE; R; REH
    "\d0692",  # ; REH WITH V ABOVE; R; REH
    "\d0693",  # ; REH WITH ATTACHED RING BELOW; R; REH
    "\d0694",  # ; REH WITH DOT BELOW; R; REH
    "\d0695",  # ; REH WITH V BELOW; R; REH
    "\d0696",  # ; REH WITH DOT BELOW AND DOT WITHIN; R; REH
    "\d0697",  # ; REH WITH 2 DOTS ABOVE; R; REH
    "\d0698",  # ; REH WITH 3 DOTS ABOVE; R; REH
    "\d0699",  # ; REH WITH 4 DOTS ABOVE; R; REH
    "\d069A",  # ; SEEN WITH DOT BELOW AND DOT ABOVE; D; SEEN
    "\d069B",  # ; SEEN WITH 3 DOTS BELOW; D; SEEN
    "\d069C",  # ; SEEN WITH 3 DOTS BELOW AND 3 DOTS ABOVE; D; SEEN
    "\d069D",  # ; SAD WITH 2 DOTS BELOW; D; SAD
    "\d069E",  # ; SAD WITH 3 DOTS ABOVE; D; SAD
    "\d069F",  # ; TAH WITH 3 DOTS ABOVE; D; TAH
    "\d06A0",  # ; AIN WITH 3 DOTS ABOVE; D; AIN
    "\d06A1",  # ; DOTLESS FEH; D; FEH
    "\d06A2",  # ; DOTLESS FEH WITH DOT BELOW; D; FEH
    "\d06A3",  # ; FEH WITH DOT BELOW; D; FEH
    "\d06A4",  # ; DOTLESS FEH WITH 3 DOTS ABOVE; D; FEH
    "\d06A5",  # ; DOTLESS FEH WITH 3 DOTS BELOW; D; FEH
    "\d06A6",  # ; DOTLESS FEH WITH 4 DOTS ABOVE; D; FEH
    "\d06A7",  # ; DOTLESS QAF WITH DOT ABOVE; D; QAF
    "\d06A8",  # ; DOTLESS QAF WITH 3 DOTS ABOVE; D; QAF
    "\d06A9",  # ; KEHEH; D; GAF
    "\d06AA",  # ; SWASH KAF; D; SWASH KAF
    "\d06AB",  # ; KEHEH WITH ATTACHED RING BELOW; D; GAF
    "\d06AC",  # ; KAF WITH DOT ABOVE; D; KAF
    "\d06AD",  # ; KAF WITH 3 DOTS ABOVE; D; KAF
    "\d06AE",  # ; KAF WITH 3 DOTS BELOW; D; KAF
    "\d06AF",  # ; GAF; D; GAF
    "\d06B0",  # ; GAF WITH ATTACHED RING BELOW; D; GAF
    "\d06B1",  # ; GAF WITH 2 DOTS ABOVE; D; GAF
    "\d06B2",  # ; GAF WITH 2 DOTS BELOW; D; GAF
    "\d06B3",  # ; GAF WITH VERTICAL 2 DOTS BELOW; D; GAF
    "\d06B4",  # ; GAF WITH 3 DOTS ABOVE; D; GAF
    "\d06B5",  # ; LAM WITH V ABOVE; D; LAM
    "\d06B6",  # ; LAM WITH DOT ABOVE; D; LAM
    "\d06B7",  # ; LAM WITH 3 DOTS ABOVE; D; LAM
    "\d06B8",  # ; LAM WITH 3 DOTS BELOW; D; LAM
    "\d06B9",  # ; NOON WITH DOT BELOW; D; NOON
    "\d06BA",  # ; DOTLESS NOON; D; NOON
    "\d06BB",  # ; DOTLESS NOON WITH TAH ABOVE; D; NOON
    "\d06BC",  # ; NOON WITH ATTACHED RING BELOW; D; NOON
    "\d06BD",  # ; NYA; D; NYA
    "\d06BE",  # ; KNOTTED HEH; D; KNOTTED HEH
    "\d06BF",  # ; HAH WITH 3 DOTS BELOW AND DOT ABOVE; D; HAH
    "\d06C0",  # ; DOTLESS TEH MARBUTA WITH HAMZA ABOVE; R; TEH MARBUTA
    "\d06C1",  # ; HEH GOAL; D; HEH GOAL
    "\d06C2",  # ; HEH GOAL WITH HAMZA ABOVE; D; HEH GOAL
    "\d06C3",  # ; TEH MARBUTA GOAL; R; TEH MARBUTA GOAL
    "\d06C4",  # ; WAW WITH ATTACHED RING WITHIN; R; WAW
    "\d06C5",  # ; WAW WITH BAR; R; WAW
    "\d06C6",  # ; WAW WITH V ABOVE; R; WAW
    "\d06C7",  # ; WAW WITH DAMMA ABOVE; R; WAW
    "\d06C8",  # ; WAW WITH ALEF ABOVE; R; WAW
    "\d06C9",  # ; WAW WITH INVERTED V ABOVE; R; WAW
    "\d06CA",  # ; WAW WITH 2 DOTS ABOVE; R; WAW
    "\d06CB",  # ; WAW WITH 3 DOTS ABOVE; R; WAW
    "\d06CC",  # ; FARSI YEH; D; FARSI YEH
    "\d06CD",  # ; YEH WITH TAIL; R; YEH WITH TAIL
    "\d06CE",  # ; FARSI YEH WITH V ABOVE; D; FARSI YEH
    "\d06CF",  # ; WAW WITH DOT ABOVE; R; WAW
    "\d06D0",  # ; DOTLESS YEH WITH VERTICAL 2 DOTS BELOW; D; YEH
    "\d06D1",  # ; DOTLESS YEH WITH 3 DOTS BELOW; D; YEH
    "\d06D2",  # ; YEH BARREE; R; YEH BARREE
    "\d06D3",  # ; YEH BARREE WITH HAMZA ABOVE; R; YEH BARREE
    "\d06D5",  # ; DOTLESS TEH MARBUTA; R; TEH MARBUTA
    "\d06DD",  # ; ARABIC END OF AYAH; U; No_Joining_Group
    "\d06EE",  # ; DAL WITH INVERTED V ABOVE; R; DAL
    "\d06EF",  # ; REH WITH INVERTED V ABOVE; R; REH
    "\d06FA",  # ; SEEN WITH DOT BELOW AND 3 DOTS ABOVE; D; SEEN
    "\d06FB",  # ; SAD WITH DOT BELOW AND DOT ABOVE; D; SAD
    "\d06FC",  # ; AIN WITH DOT BELOW AND DOT ABOVE; D; AIN
    "\d06FF",  # ; KNOTTED HEH WITH INVERTED V ABOVE; D; KNOTTED HEH
    "\d0710",  # ; ALAPH; R; ALAPH
    "\d0712",  # ; BETH; D; BETH
    "\d0713",  # ; GAMAL; D; GAMAL
    "\d0714",  # ; GAMAL GARSHUNI; D; GAMAL
    "\d0715",  # ; DALATH; R; DALATH RISH
    "\d0716",  # ; DOTLESS DALATH RISH; R; DALATH RISH
    "\d0717",  # ; HE; R; HE
    "\d0718",  # ; WAW; R; SYRIAC WAW
    "\d0719",  # ; ZAIN; R; ZAIN
    "\d071A",  # ; HETH; D; HETH
    "\d071B",  # ; TETH; D; TETH
    "\d071C",  # ; TETH GARSHUNI; D; TETH
    "\d071D",  # ; YUDH; D; YUDH
    "\d071E",  # ; YUDH HE; R; YUDH HE
    "\d071F",  # ; KAPH; D; KAPH
    "\d0720",  # ; LAMADH; D; LAMADH
    "\d0721",  # ; MIM; D; MIM
    "\d0722",  # ; NUN; D; NUN
    "\d0723",  # ; SEMKATH; D; SEMKATH
    "\d0724",  # ; FINAL SEMKATH; D; FINAL SEMKATH
    "\d0725",  # ; E; D; E
    "\d0726",  # ; PE; D; PE
    "\d0727",  # ; REVERSED PE; D; REVERSED PE
    "\d0728",  # ; SADHE; R; SADHE
    "\d0729",  # ; QAPH; D; QAPH
    "\d072A",  # ; RISH; R; DALATH RISH
    "\d072B",  # ; SHIN; D; SHIN
    "\d072C",  # ; TAW; R; TAW
    "\d072D",  # ; PERSIAN BHETH; D; BETH
    "\d072E",  # ; PERSIAN GHAMAL; D; GAMAL
    "\d072F",  # ; PERSIAN DHALATH; R; DALATH RISH
    "\d074D",  # ; SOGDIAN ZHAIN; R; ZHAIN
    "\d074E",  # ; SOGDIAN KHAPH; D; KHAPH
    "\d074F",  # ; SOGDIAN FE; D; FE
    "\d0750",  # ; DOTLESS BEH WITH HORIZONTAL 3 DOTS BELOW; D; BEH
    "\d0751",  # ; BEH WITH 3 DOTS ABOVE; D; BEH
    "\d0752",  # ; DOTLESS BEH WITH INVERTED 3 DOTS BELOW; D; BEH
    "\d0753",  # ; DOTLESS BEH WITH INVERTED 3 DOTS BELOW AND 2 DOTS ABOVE; D; BEH
    "\d0754",  # ; DOTLESS BEH WITH 2 DOTS BELOW AND DOT ABOVE; D; BEH
    "\d0755",  # ; DOTLESS BEH WITH INVERTED V BELOW; D; BEH
    "\d0756",  # ; DOTLESS BEH WITH V ABOVE; D; BEH
    "\d0757",  # ; HAH WITH 2 DOTS ABOVE; D; HAH
    "\d0758",  # ; HAH WITH INVERTED 3 DOTS BELOW; D; HAH
    "\d0759",  # ; DAL WITH VERTICAL 2 DOTS BELOW AND TAH ABOVE; R; DAL
    "\d075A",  # ; DAL WITH INVERTED V BELOW; R; DAL
    "\d075B",  # ; REH WITH BAR; R; REH
    "\d075C",  # ; SEEN WITH 4 DOTS ABOVE; D; SEEN
    "\d075D",  # ; AIN WITH 2 DOTS ABOVE; D; AIN
    "\d075E",  # ; AIN WITH INVERTED 3 DOTS ABOVE; D; AIN
    "\d075F",  # ; AIN WITH VERTICAL 2 DOTS ABOVE; D; AIN
    "\d0760",  # ; DOTLESS FEH WITH 2 DOTS BELOW; D; FEH
    "\d0761",  # ; DOTLESS FEH WITH INVERTED 3 DOTS BELOW; D; FEH
    "\d0762",  # ; KEHEH WITH DOT ABOVE; D; GAF
    "\d0763",  # ; KEHEH WITH 3 DOTS ABOVE; D; GAF
    "\d0764",  # ; KEHEH WITH INVERTED 3 DOTS BELOW; D; GAF
    "\d0765",  # ; MEEM WITH DOT ABOVE; D; MEEM
    "\d0766",  # ; MEEM WITH DOT BELOW; D; MEEM
    "\d0767",  # ; NOON WITH 2 DOTS BELOW; D; NOON
    "\d0768",  # ; NOON WITH TAH ABOVE; D; NOON
    "\d0769",  # ; NOON WITH V ABOVE; D; NOON
    "\d076A",  # ; LAM WITH BAR; D; LAM
    "\d076B",  # ; REH WITH VERTICAL 2 DOTS ABOVE; R; REH
    "\d076C",  # ; REH WITH HAMZA ABOVE; R; REH
    "\d076D",  # ; SEEN WITH VERTICAL 2 DOTS ABOVE; D; SEEN
    "\d076E",  # ; HAH WITH TAH BELOW; D; HAH
    "\d076F",  # ; HAH WITH TAH AND 2 DOTS BELOW; D; HAH
    "\d0770",  # ; SEEN WITH 2 DOTS AND TAH ABOVE; D; SEEN
    "\d0771",  # ; REH WITH 2 DOTS AND TAH ABOVE; R; REH
    "\d0772",  # ; HAH WITH TAH ABOVE; D; HAH
    "\d0773",  # ; ALEF WITH DIGIT TWO ABOVE; R; ALEF
    "\d0774",  # ; ALEF WITH DIGIT THREE ABOVE; R; ALEF
    "\d0775",  # ; FARSI YEH WITH DIGIT TWO ABOVE; D; FARSI YEH
    "\d0776",  # ; FARSI YEH WITH DIGIT THREE ABOVE; D; FARSI YEH
    "\d0777",  # ; DOTLESS YEH WITH DIGIT FOUR BELOW; D; YEH
    "\d0778",  # ; WAW WITH DIGIT TWO ABOVE; R; WAW
    "\d0779",  # ; WAW WITH DIGIT THREE ABOVE; R; WAW
    "\d077A",  # ; BURUSHASKI YEH BARREE WITH DIGIT TWO ABOVE; D; BURUSHASKI YEH BARREE
    "\d077B",  # ; BURUSHASKI YEH BARREE WITH DIGIT THREE ABOVE; D; BURUSHASKI YEH BARREE
    "\d077C",  # ; HAH WITH DIGIT FOUR BELOW; D; HAH
    "\d077D",  # ; SEEN WITH DIGIT FOUR ABOVE; D; SEEN
    "\d077E",  # ; SEEN WITH INVERTED V ABOVE; D; SEEN
    "\d077F",  # ; KAF WITH 2 DOTS ABOVE; D; KAF
    "\d07CA",  # ; NKO A; D; No_Joining_Group
    "\d07CB",  # ; NKO EE; D; No_Joining_Group
    "\d07CC",  # ; NKO I; D; No_Joining_Group
    "\d07CD",  # ; NKO E; D; No_Joining_Group
    "\d07CE",  # ; NKO U; D; No_Joining_Group
    "\d07CF",  # ; NKO OO; D; No_Joining_Group
    "\d07D0",  # ; NKO O; D; No_Joining_Group
    "\d07D1",  # ; NKO DAGBASINNA; D; No_Joining_Group
    "\d07D2",  # ; NKO N; D; No_Joining_Group
    "\d07D3",  # ; NKO BA; D; No_Joining_Group
    "\d07D4",  # ; NKO PA; D; No_Joining_Group
    "\d07D5",  # ; NKO TA; D; No_Joining_Group
    "\d07D6",  # ; NKO JA; D; No_Joining_Group
    "\d07D7",  # ; NKO CHA; D; No_Joining_Group
    "\d07D8",  # ; NKO DA; D; No_Joining_Group
    "\d07D9",  # ; NKO RA; D; No_Joining_Group
    "\d07DA",  # ; NKO RRA; D; No_Joining_Group
    "\d07DB",  # ; NKO SA; D; No_Joining_Group
    "\d07DC",  # ; NKO GBA; D; No_Joining_Group
    "\d07DD",  # ; NKO FA; D; No_Joining_Group
    "\d07DE",  # ; NKO KA; D; No_Joining_Group
    "\d07DF",  # ; NKO LA; D; No_Joining_Group
    "\d07E0",  # ; NKO NA WOLOSO; D; No_Joining_Group
    "\d07E1",  # ; NKO MA; D; No_Joining_Group
    "\d07E2",  # ; NKO NYA; D; No_Joining_Group
    "\d07E3",  # ; NKO NA; D; No_Joining_Group
    "\d07E4",  # ; NKO HA; D; No_Joining_Group
    "\d07E5",  # ; NKO WA; D; No_Joining_Group
    "\d07E6",  # ; NKO YA; D; No_Joining_Group
    "\d07E7",  # ; NKO NYA WOLOSO; D; No_Joining_Group
    "\d07E8",  # ; NKO JONA JA; D; No_Joining_Group
    "\d07E9",  # ; NKO JONA CHA; D; No_Joining_Group
    "\d07EA",  # ; NKO JONA RA; D; No_Joining_Group
    "\d07FA",  # ; NKO LAJANYALAN; C; No_Joining_Group
    "\d0840",  # ; MANDAIC HALQA; R; No_Joining_Group
    "\d0841",  # ; MANDAIC AB; D; No_Joining_Group
    "\d0842",  # ; MANDAIC AG; D; No_Joining_Group
    "\d0843",  # ; MANDAIC AD; D; No_Joining_Group
    "\d0844",  # ; MANDAIC AH; D; No_Joining_Group
    "\d0845",  # ; MANDAIC USHENNA; D; No_Joining_Group
    "\d0846",  # ; MANDAIC AZ; R; No_Joining_Group
    "\d0847",  # ; MANDAIC IT; R; No_Joining_Group
    "\d0848",  # ; MANDAIC ATT; D; No_Joining_Group
    "\d0849",  # ; MANDAIC AKSA; R; No_Joining_Group
    "\d084A",  # ; MANDAIC AK; D; No_Joining_Group
    "\d084B",  # ; MANDAIC AL; D; No_Joining_Group
    "\d084C",  # ; MANDAIC AM; D; No_Joining_Group
    "\d084D",  # ; MANDAIC AN; D; No_Joining_Group
    "\d084E",  # ; MANDAIC AS; D; No_Joining_Group
    "\d084F",  # ; MANDAIC IN; D; No_Joining_Group
    "\d0850",  # ; MANDAIC AP; D; No_Joining_Group
    "\d0851",  # ; MANDAIC ASZ; D; No_Joining_Group
    "\d0852",  # ; MANDAIC AQ; D; No_Joining_Group
    "\d0853",  # ; MANDAIC AR; D; No_Joining_Group
    "\d0854",  # ; MANDAIC ASH; R; No_Joining_Group
    "\d0855",  # ; MANDAIC AT; D; No_Joining_Group
    "\d0856",  # ; MANDAIC DUSHENNA; U; No_Joining_Group
    "\d0857",  # ; MANDAIC KAD; U; No_Joining_Group
    "\d0858",  # ; MANDAIC AIN; U; No_Joining_Group
    "\d0860",  # ; MALAYALAM NGA; D; MALAYALAM NGA
    "\d0861",  # ; MALAYALAM JA; U; MALAYALAM JA
    "\d0862",  # ; MALAYALAM NYA; D; MALAYALAM NYA
    "\d0863",  # ; MALAYALAM TTA; D; MALAYALAM TTA
    "\d0864",  # ; MALAYALAM NNA; D; MALAYALAM NNA
    "\d0865",  # ; MALAYALAM NNNA; D; MALAYALAM NNNA
    "\d0866",  # ; MALAYALAM BHA; U; MALAYALAM BHA
    "\d0867",  # ; MALAYALAM RA; R; MALAYALAM RA
    "\d0868",  # ; MALAYALAM LLA; D; MALAYALAM LLA
    "\d0869",  # ; MALAYALAM LLLA; R; MALAYALAM LLLA
    "\d086A",  # ; MALAYALAM SSA; R; MALAYALAM SSA
    "\d08A0",  # ; DOTLESS BEH WITH V BELOW; D; BEH
    "\d08A1",  # ; BEH WITH HAMZA ABOVE; D; BEH
    "\d08A2",  # ; HAH WITH DOT BELOW AND 2 DOTS ABOVE; D; HAH
    "\d08A3",  # ; TAH WITH 2 DOTS ABOVE; D; TAH
    "\d08A4",  # ; DOTLESS FEH WITH DOT BELOW AND 3 DOTS ABOVE; D; FEH
    "\d08A5",  # ; QAF WITH DOT BELOW; D; QAF
    "\d08A6",  # ; LAM WITH DOUBLE BAR; D; LAM
    "\d08A7",  # ; MEEM WITH 3 DOTS ABOVE; D; MEEM
    "\d08A8",  # ; YEH WITH HAMZA ABOVE; D; YEH
    "\d08A9",  # ; YEH WITH DOT ABOVE; D; YEH
    "\d08AA",  # ; REH WITH LOOP; R; REH
    "\d08AB",  # ; WAW WITH DOT WITHIN; R; WAW
    "\d08AC",  # ; ROHINGYA YEH; R; ROHINGYA YEH
    "\d08AD",  # ; LOW ALEF; U; No_Joining_Group
    "\d08AE",  # ; DAL WITH 3 DOTS BELOW; R; DAL
    "\d08AF",  # ; SAD WITH 3 DOTS BELOW; D; SAD
    "\d08B0",  # ; KEHEH WITH STROKE BELOW; D; GAF
    "\d08B1",  # ; STRAIGHT WAW; R; STRAIGHT WAW
    "\d08B2",  # ; REH WITH DOT AND INVERTED V ABOVE; R; REH
    "\d08B3",  # ; AIN WITH 3 DOTS BELOW; D; AIN
    "\d08B4",  # ; KAF WITH DOT BELOW; D; KAF
    "\d08B6",  # ; BEH WITH MEEM ABOVE; D; BEH
    "\d08B7",  # ; DOTLESS BEH WITH 3 DOTS BELOW AND MEEM ABOVE; D; BEH
    "\d08B8",  # ; DOTLESS BEH WITH TEH ABOVE; D; BEH
    "\d08B9",  # ; REH WITH NOON ABOVE; R; REH
    "\d08BA",  # ; YEH WITH NOON ABOVE; D; YEH
    "\d08BB",  # ; AFRICAN FEH; D; AFRICAN FEH
    "\d08BC",  # ; AFRICAN QAF; D; AFRICAN QAF
    "\d08BD",  # ; AFRICAN NOON; D; AFRICAN NOON
    "\d08E2",  # ; ARABIC DISPUTED END OF AYAH; U; No_Joining_Group
    "\d1806",  # ; MONGOLIAN TODO SOFT HYPHEN; U; No_Joining_Group
    "\d1807",  # ; MONGOLIAN SIBE SYLLABLE BOUNDARY MARKER; D; No_Joining_Group
    "\d180A",  # ; MONGOLIAN NIRUGU; C; No_Joining_Group
    "\d180E",  # ; MONGOLIAN VOWEL SEPARATOR; U; No_Joining_Group
    "\d1820",  # ; MONGOLIAN A; D; No_Joining_Group
    "\d1821",  # ; MONGOLIAN E; D; No_Joining_Group
    "\d1822",  # ; MONGOLIAN I; D; No_Joining_Group
    "\d1823",  # ; MONGOLIAN O; D; No_Joining_Group
    "\d1824",  # ; MONGOLIAN U; D; No_Joining_Group
    "\d1825",  # ; MONGOLIAN OE; D; No_Joining_Group
    "\d1826",  # ; MONGOLIAN UE; D; No_Joining_Group
    "\d1827",  # ; MONGOLIAN EE; D; No_Joining_Group
    "\d1828",  # ; MONGOLIAN NA; D; No_Joining_Group
    "\d1829",  # ; MONGOLIAN ANG; D; No_Joining_Group
    "\d182A",  # ; MONGOLIAN BA; D; No_Joining_Group
    "\d182B",  # ; MONGOLIAN PA; D; No_Joining_Group
    "\d182C",  # ; MONGOLIAN QA; D; No_Joining_Group
    "\d182D",  # ; MONGOLIAN GA; D; No_Joining_Group
    "\d182E",  # ; MONGOLIAN MA; D; No_Joining_Group
    "\d182F",  # ; MONGOLIAN LA; D; No_Joining_Group
    "\d1830",  # ; MONGOLIAN SA; D; No_Joining_Group
    "\d1831",  # ; MONGOLIAN SHA; D; No_Joining_Group
    "\d1832",  # ; MONGOLIAN TA; D; No_Joining_Group
    "\d1833",  # ; MONGOLIAN DA; D; No_Joining_Group
    "\d1834",  # ; MONGOLIAN CHA; D; No_Joining_Group
    "\d1835",  # ; MONGOLIAN JA; D; No_Joining_Group
    "\d1836",  # ; MONGOLIAN YA; D; No_Joining_Group
    "\d1837",  # ; MONGOLIAN RA; D; No_Joining_Group
    "\d1838",  # ; MONGOLIAN WA; D; No_Joining_Group
    "\d1839",  # ; MONGOLIAN FA; D; No_Joining_Group
    "\d183A",  # ; MONGOLIAN KA; D; No_Joining_Group
    "\d183B",  # ; MONGOLIAN KHA; D; No_Joining_Group
    "\d183C",  # ; MONGOLIAN TSA; D; No_Joining_Group
    "\d183D",  # ; MONGOLIAN ZA; D; No_Joining_Group
    "\d183E",  # ; MONGOLIAN HAA; D; No_Joining_Group
    "\d183F",  # ; MONGOLIAN ZRA; D; No_Joining_Group
    "\d1840",  # ; MONGOLIAN LHA; D; No_Joining_Group
    "\d1841",  # ; MONGOLIAN ZHI; D; No_Joining_Group
    "\d1842",  # ; MONGOLIAN CHI; D; No_Joining_Group
    "\d1843",  # ; MONGOLIAN TODO LONG VOWEL SIGN; D; No_Joining_Group
    "\d1844",  # ; MONGOLIAN TODO E; D; No_Joining_Group
    "\d1845",  # ; MONGOLIAN TODO I; D; No_Joining_Group
    "\d1846",  # ; MONGOLIAN TODO O; D; No_Joining_Group
    "\d1847",  # ; MONGOLIAN TODO U; D; No_Joining_Group
    "\d1848",  # ; MONGOLIAN TODO OE; D; No_Joining_Group
    "\d1849",  # ; MONGOLIAN TODO UE; D; No_Joining_Group
    "\d184A",  # ; MONGOLIAN TODO ANG; D; No_Joining_Group
    "\d184B",  # ; MONGOLIAN TODO BA; D; No_Joining_Group
    "\d184C",  # ; MONGOLIAN TODO PA; D; No_Joining_Group
    "\d184D",  # ; MONGOLIAN TODO QA; D; No_Joining_Group
    "\d184E",  # ; MONGOLIAN TODO GA; D; No_Joining_Group
    "\d184F",  # ; MONGOLIAN TODO MA; D; No_Joining_Group
    "\d1850",  # ; MONGOLIAN TODO TA; D; No_Joining_Group
    "\d1851",  # ; MONGOLIAN TODO DA; D; No_Joining_Group
    "\d1852",  # ; MONGOLIAN TODO CHA; D; No_Joining_Group
    "\d1853",  # ; MONGOLIAN TODO JA; D; No_Joining_Group
    "\d1854",  # ; MONGOLIAN TODO TSA; D; No_Joining_Group
    "\d1855",  # ; MONGOLIAN TODO YA; D; No_Joining_Group
    "\d1856",  # ; MONGOLIAN TODO WA; D; No_Joining_Group
    "\d1857",  # ; MONGOLIAN TODO KA; D; No_Joining_Group
    "\d1858",  # ; MONGOLIAN TODO GAA; D; No_Joining_Group
    "\d1859",  # ; MONGOLIAN TODO HAA; D; No_Joining_Group
    "\d185A",  # ; MONGOLIAN TODO JIA; D; No_Joining_Group
    "\d185B",  # ; MONGOLIAN TODO NIA; D; No_Joining_Group
    "\d185C",  # ; MONGOLIAN TODO DZA; D; No_Joining_Group
    "\d185D",  # ; MONGOLIAN SIBE E; D; No_Joining_Group
    "\d185E",  # ; MONGOLIAN SIBE I; D; No_Joining_Group
    "\d185F",  # ; MONGOLIAN SIBE IY; D; No_Joining_Group
    "\d1860",  # ; MONGOLIAN SIBE UE; D; No_Joining_Group
    "\d1861",  # ; MONGOLIAN SIBE U; D; No_Joining_Group
    "\d1862",  # ; MONGOLIAN SIBE ANG; D; No_Joining_Group
    "\d1863",  # ; MONGOLIAN SIBE KA; D; No_Joining_Group
    "\d1864",  # ; MONGOLIAN SIBE GA; D; No_Joining_Group
    "\d1865",  # ; MONGOLIAN SIBE HA; D; No_Joining_Group
    "\d1866",  # ; MONGOLIAN SIBE PA; D; No_Joining_Group
    "\d1867",  # ; MONGOLIAN SIBE SHA; D; No_Joining_Group
    "\d1868",  # ; MONGOLIAN SIBE TA; D; No_Joining_Group
    "\d1869",  # ; MONGOLIAN SIBE DA; D; No_Joining_Group
    "\d186A",  # ; MONGOLIAN SIBE JA; D; No_Joining_Group
    "\d186B",  # ; MONGOLIAN SIBE FA; D; No_Joining_Group
    "\d186C",  # ; MONGOLIAN SIBE GAA; D; No_Joining_Group
    "\d186D",  # ; MONGOLIAN SIBE HAA; D; No_Joining_Group
    "\d186E",  # ; MONGOLIAN SIBE TSA; D; No_Joining_Group
    "\d186F",  # ; MONGOLIAN SIBE ZA; D; No_Joining_Group
    "\d1870",  # ; MONGOLIAN SIBE RAA; D; No_Joining_Group
    "\d1871",  # ; MONGOLIAN SIBE CHA; D; No_Joining_Group
    "\d1872",  # ; MONGOLIAN SIBE ZHA; D; No_Joining_Group
    "\d1873",  # ; MONGOLIAN MANCHU I; D; No_Joining_Group
    "\d1874",  # ; MONGOLIAN MANCHU KA; D; No_Joining_Group
    "\d1875",  # ; MONGOLIAN MANCHU RA; D; No_Joining_Group
    "\d1876",  # ; MONGOLIAN MANCHU FA; D; No_Joining_Group
    "\d1877",  # ; MONGOLIAN MANCHU ZHA; D; No_Joining_Group
    "\d1880",  # ; MONGOLIAN ALI GALI ANUSVARA ONE; U; No_Joining_Group
    "\d1881",  # ; MONGOLIAN ALI GALI VISARGA ONE; U; No_Joining_Group
    "\d1882",  # ; MONGOLIAN ALI GALI DAMARU; U; No_Joining_Group
    "\d1883",  # ; MONGOLIAN ALI GALI UBADAMA; U; No_Joining_Group
    "\d1884",  # ; MONGOLIAN ALI GALI INVERTED UBADAMA; U; No_Joining_Group
    "\d1885",  # ; MONGOLIAN ALI GALI BALUDA; T; No_Joining_Group
    "\d1886",  # ; MONGOLIAN ALI GALI THREE BALUDA; T; No_Joining_Group
    "\d1887",  # ; MONGOLIAN ALI GALI A; D; No_Joining_Group
    "\d1888",  # ; MONGOLIAN ALI GALI I; D; No_Joining_Group
    "\d1889",  # ; MONGOLIAN ALI GALI KA; D; No_Joining_Group
    "\d188A",  # ; MONGOLIAN ALI GALI NGA; D; No_Joining_Group
    "\d188B",  # ; MONGOLIAN ALI GALI CA; D; No_Joining_Group
    "\d188C",  # ; MONGOLIAN ALI GALI TTA; D; No_Joining_Group
    "\d188D",  # ; MONGOLIAN ALI GALI TTHA; D; No_Joining_Group
    "\d188E",  # ; MONGOLIAN ALI GALI DDA; D; No_Joining_Group
    "\d188F",  # ; MONGOLIAN ALI GALI NNA; D; No_Joining_Group
    "\d1890",  # ; MONGOLIAN ALI GALI TA; D; No_Joining_Group
    "\d1891",  # ; MONGOLIAN ALI GALI DA; D; No_Joining_Group
    "\d1892",  # ; MONGOLIAN ALI GALI PA; D; No_Joining_Group
    "\d1893",  # ; MONGOLIAN ALI GALI PHA; D; No_Joining_Group
    "\d1894",  # ; MONGOLIAN ALI GALI SSA; D; No_Joining_Group
    "\d1895",  # ; MONGOLIAN ALI GALI ZHA; D; No_Joining_Group
    "\d1896",  # ; MONGOLIAN ALI GALI ZA; D; No_Joining_Group
    "\d1897",  # ; MONGOLIAN ALI GALI AH; D; No_Joining_Group
    "\d1898",  # ; MONGOLIAN TODO ALI GALI TA; D; No_Joining_Group
    "\d1899",  # ; MONGOLIAN TODO ALI GALI ZHA; D; No_Joining_Group
    "\d189A",  # ; MONGOLIAN MANCHU ALI GALI GHA; D; No_Joining_Group
    "\d189B",  # ; MONGOLIAN MANCHU ALI GALI NGA; D; No_Joining_Group
    "\d189C",  # ; MONGOLIAN MANCHU ALI GALI CA; D; No_Joining_Group
    "\d189D",  # ; MONGOLIAN MANCHU ALI GALI JHA; D; No_Joining_Group
    "\d189E",  # ; MONGOLIAN MANCHU ALI GALI TTA; D; No_Joining_Group
    "\d189F",  # ; MONGOLIAN MANCHU ALI GALI DDHA; D; No_Joining_Group
    "\d18A0",  # ; MONGOLIAN MANCHU ALI GALI TA; D; No_Joining_Group
    "\d18A1",  # ; MONGOLIAN MANCHU ALI GALI DHA; D; No_Joining_Group
    "\d18A2",  # ; MONGOLIAN MANCHU ALI GALI SSA; D; No_Joining_Group
    "\d18A3",  # ; MONGOLIAN MANCHU ALI GALI CYA; D; No_Joining_Group
    "\d18A4",  # ; MONGOLIAN MANCHU ALI GALI ZHA; D; No_Joining_Group
    "\d18A5",  # ; MONGOLIAN MANCHU ALI GALI ZA; D; No_Joining_Group
    "\d18A6",  # ; MONGOLIAN ALI GALI HALF U; D; No_Joining_Group
    "\d18A7",  # ; MONGOLIAN ALI GALI HALF YA; D; No_Joining_Group
    "\d18A8",  # ; MONGOLIAN MANCHU ALI GALI BHA; D; No_Joining_Group
    "\d18AA",  # ; MONGOLIAN MANCHU ALI GALI LHA; D; No_Joining_Group
    "\d200C",  # ; ZERO WIDTH NON-JOINER; U; No_Joining_Group
    "\d200D",  # ; ZERO WIDTH JOINER; C; No_Joining_Group
    "\d202F",  # ; NARROW NO-BREAK SPACE; U; No_Joining_Group
    "\d2066",  # ; LEFT-TO-RIGHT ISOLATE; U; No_Joining_Group
    "\d2067",  # ; RIGHT-TO-LEFT ISOLATE; U; No_Joining_Group
    "\d2068",  # ; FIRST STRONG ISOLATE; U; No_Joining_Group
    "\d2069",  # ; POP DIRECTIONAL ISOLATE; U; No_Joining_Group
    "\dA840",  # ; PHAGS-PA KA; D; No_Joining_Group
    "\dA841",  # ; PHAGS-PA KHA; D; No_Joining_Group
    "\dA842",  # ; PHAGS-PA GA; D; No_Joining_Group
    "\dA843",  # ; PHAGS-PA NGA; D; No_Joining_Group
    "\dA844",  # ; PHAGS-PA CA; D; No_Joining_Group
    "\dA845",  # ; PHAGS-PA CHA; D; No_Joining_Group
    "\dA846",  # ; PHAGS-PA JA; D; No_Joining_Group
    "\dA847",  # ; PHAGS-PA NYA; D; No_Joining_Group
    "\dA848",  # ; PHAGS-PA TA; D; No_Joining_Group
    "\dA849",  # ; PHAGS-PA THA; D; No_Joining_Group
    "\dA84A",  # ; PHAGS-PA DA; D; No_Joining_Group
    "\dA84B",  # ; PHAGS-PA NA; D; No_Joining_Group
    "\dA84C",  # ; PHAGS-PA PA; D; No_Joining_Group
    "\dA84D",  # ; PHAGS-PA PHA; D; No_Joining_Group
    "\dA84E",  # ; PHAGS-PA BA; D; No_Joining_Group
    "\dA84F",  # ; PHAGS-PA MA; D; No_Joining_Group
    "\dA850",  # ; PHAGS-PA TSA; D; No_Joining_Group
    "\dA851",  # ; PHAGS-PA TSHA; D; No_Joining_Group
    "\dA852",  # ; PHAGS-PA DZA; D; No_Joining_Group
    "\dA853",  # ; PHAGS-PA WA; D; No_Joining_Group
    "\dA854",  # ; PHAGS-PA ZHA; D; No_Joining_Group
    "\dA855",  # ; PHAGS-PA ZA; D; No_Joining_Group
    "\dA856",  # ; PHAGS-PA SMALL A; D; No_Joining_Group
    "\dA857",  # ; PHAGS-PA YA; D; No_Joining_Group
    "\dA858",  # ; PHAGS-PA RA; D; No_Joining_Group
    "\dA859",  # ; PHAGS-PA LA; D; No_Joining_Group
    "\dA85A",  # ; PHAGS-PA SHA; D; No_Joining_Group
    "\dA85B",  # ; PHAGS-PA SA; D; No_Joining_Group
    "\dA85C",  # ; PHAGS-PA HA; D; No_Joining_Group
    "\dA85D",  # ; PHAGS-PA A; D; No_Joining_Group
    "\dA85E",  # ; PHAGS-PA I; D; No_Joining_Group
    "\dA85F",  # ; PHAGS-PA U; D; No_Joining_Group
    "\dA860",  # ; PHAGS-PA E; D; No_Joining_Group
    "\dA861",  # ; PHAGS-PA O; D; No_Joining_Group
    "\dA862",  # ; PHAGS-PA QA; D; No_Joining_Group
    "\dA863",  # ; PHAGS-PA XA; D; No_Joining_Group
    "\dA864",  # ; PHAGS-PA FA; D; No_Joining_Group
    "\dA865",  # ; PHAGS-PA GGA; D; No_Joining_Group
    "\dA866",  # ; PHAGS-PA EE; D; No_Joining_Group
    "\dA867",  # ; PHAGS-PA SUBJOINED WA; D; No_Joining_Group
    "\dA868",  # ; PHAGS-PA SUBJOINED YA; D; No_Joining_Group
    "\dA869",  # ; PHAGS-PA TTA; D; No_Joining_Group
    "\dA86A",  # ; PHAGS-PA TTHA; D; No_Joining_Group
    "\dA86B",  # ; PHAGS-PA DDA; D; No_Joining_Group
    "\dA86C",  # ; PHAGS-PA NNA; D; No_Joining_Group
    "\dA86D",  # ; PHAGS-PA ALTERNATE YA; D; No_Joining_Group
    "\dA86E",  # ; PHAGS-PA VOICELESS SHA; D; No_Joining_Group
    "\dA86F",  # ; PHAGS-PA VOICED HA; D; No_Joining_Group
    "\dA870",  # ; PHAGS-PA ASPIRATED FA; D; No_Joining_Group
    "\dA871",  # ; PHAGS-PA SUBJOINED RA; D; No_Joining_Group
    "\dA872",  # ; PHAGS-PA SUPERFIXED RA; L; No_Joining_Group
    "\dA873",  # ; PHAGS-PA CANDRABINDU; U; No_Joining_Group
    "\d10AC0",  # ; MANICHAEAN ALEPH; D; MANICHAEAN ALEPH
    "\d10AC1",  # ; MANICHAEAN BETH; D; MANICHAEAN BETH
    "\d10AC2",  # ; MANICHAEAN BETH WITH 2 DOTS ABOVE; D; MANICHAEAN BETH
    "\d10AC3",  # ; MANICHAEAN GIMEL; D; MANICHAEAN GIMEL
    "\d10AC4",  # ; MANICHAEAN GIMEL WITH ATTACHED RING BELOW; D; MANICHAEAN GIMEL
    "\d10AC5",  # ; MANICHAEAN DALETH; R; MANICHAEAN DALETH
    "\d10AC6",  # ; MANICHAEAN HE; U; No_Joining_Group
    "\d10AC7",  # ; MANICHAEAN WAW; R; MANICHAEAN WAW
    "\d10AC8",  # ; MANICHAEAN UD; U; No_Joining_Group
    "\d10AC9",  # ; MANICHAEAN ZAYIN; R; MANICHAEAN ZAYIN
    "\d10ACA",  # ; MANICHAEAN ZAYIN WITH 2 DOTS ABOVE; R; MANICHAEAN ZAYIN
    "\d10ACB",  # ; MANICHAEAN JAYIN; U; No_Joining_Group
    "\d10ACC",  # ; MANICHAEAN JAYIN WITH 2 DOTS ABOVE; U; No_Joining_Group
    "\d10ACD",  # ; MANICHAEAN HETH; L; MANICHAEAN HETH
    "\d10ACE",  # ; MANICHAEAN TETH; R; MANICHAEAN TETH
    "\d10ACF",  # ; MANICHAEAN YODH; R; MANICHAEAN YODH
    "\d10AD0",  # ; MANICHAEAN KAPH; R; MANICHAEAN KAPH
    "\d10AD1",  # ; MANICHAEAN KAPH WITH DOT ABOVE; R; MANICHAEAN KAPH
    "\d10AD2",  # ; MANICHAEAN KAPH WITH 2 DOTS ABOVE; R; MANICHAEAN KAPH
    "\d10AD3",  # ; MANICHAEAN LAMEDH; D; MANICHAEAN LAMEDH
    "\d10AD4",  # ; MANICHAEAN DHAMEDH; D; MANICHAEAN DHAMEDH
    "\d10AD5",  # ; MANICHAEAN THAMEDH; D; MANICHAEAN THAMEDH
    "\d10AD6",  # ; MANICHAEAN MEM; D; MANICHAEAN MEM
    "\d10AD7",  # ; MANICHAEAN NUN; L; MANICHAEAN NUN
    "\d10AD8",  # ; MANICHAEAN SAMEKH; D; MANICHAEAN SAMEKH
    "\d10AD9",  # ; MANICHAEAN AYIN; D; MANICHAEAN AYIN
    "\d10ADA",  # ; MANICHAEAN AYIN WITH 2 DOTS ABOVE; D; MANICHAEAN AYIN
    "\d10ADB",  # ; MANICHAEAN PE; D; MANICHAEAN PE
    "\d10ADC",  # ; MANICHAEAN PE WITH DOT ABOVE; D; MANICHAEAN PE
    "\d10ADD",  # ; MANICHAEAN SADHE; R; MANICHAEAN SADHE
    "\d10ADE",  # ; MANICHAEAN QOPH; D; MANICHAEAN QOPH
    "\d10ADF",  # ; MANICHAEAN QOPH WITH DOT ABOVE; D; MANICHAEAN QOPH
    "\d10AE0",  # ; MANICHAEAN QOPH WITH 2 DOTS ABOVE; D; MANICHAEAN QOPH
    "\d10AE1",  # ; MANICHAEAN RESH; R; MANICHAEAN RESH
    "\d10AE2",  # ; MANICHAEAN SHIN; U; No_Joining_Group
    "\d10AE3",  # ; MANICHAEAN SHIN WITH 2 DOTS ABOVE; U; No_Joining_Group
    "\d10AE4",  # ; MANICHAEAN TAW; R; MANICHAEAN TAW
    "\d10AEB",  # ; MANICHAEAN ONE; D; MANICHAEAN ONE
    "\d10AEC",  # ; MANICHAEAN FIVE; D; MANICHAEAN FIVE
    "\d10AED",  # ; MANICHAEAN TEN; D; MANICHAEAN TEN
    "\d10AEE",  # ; MANICHAEAN TWENTY; D; MANICHAEAN TWENTY
    "\d10AEF",  # ; MANICHAEAN HUNDRED; R; MANICHAEAN HUNDRED
    "\d10B80",  # ; PSALTER PAHLAVI ALEPH; D; No_Joining_Group
    "\d10B81",  # ; PSALTER PAHLAVI BETH; R; No_Joining_Group
    "\d10B82",  # ; PSALTER PAHLAVI GIMEL; D; No_Joining_Group
    "\d10B83",  # ; PSALTER PAHLAVI DALETH; R; No_Joining_Group
    "\d10B84",  # ; PSALTER PAHLAVI HE; R; No_Joining_Group
    "\d10B85",  # ; PSALTER PAHLAVI WAW-AYIN-RESH; R; No_Joining_Group
    "\d10B86",  # ; PSALTER PAHLAVI ZAYIN; D; No_Joining_Group
    "\d10B87",  # ; PSALTER PAHLAVI HETH; D; No_Joining_Group
    "\d10B88",  # ; PSALTER PAHLAVI YODH; D; No_Joining_Group
    "\d10B89",  # ; PSALTER PAHLAVI KAPH; R; No_Joining_Group
    "\d10B8A",  # ; PSALTER PAHLAVI LAMEDH; D; No_Joining_Group
    "\d10B8B",  # ; PSALTER PAHLAVI MEM-QOPH; D; No_Joining_Group
    "\d10B8C",  # ; PSALTER PAHLAVI NUN; R; No_Joining_Group
    "\d10B8D",  # ; PSALTER PAHLAVI SAMEKH; D; No_Joining_Group
    "\d10B8E",  # ; PSALTER PAHLAVI PE; R; No_Joining_Group
    "\d10B8F",  # ; PSALTER PAHLAVI SADHE; R; No_Joining_Group
    "\d10B90",  # ; PSALTER PAHLAVI SHIN; D; No_Joining_Group
    "\d10B91",  # ; PSALTER PAHLAVI TAW; R; No_Joining_Group
    "\d10BA9",  # ; PSALTER PAHLAVI ONE; R; No_Joining_Group
    "\d10BAA",  # ; PSALTER PAHLAVI TWO; R; No_Joining_Group
    "\d10BAB",  # ; PSALTER PAHLAVI THREE; R; No_Joining_Group
    "\d10BAC",  # ; PSALTER PAHLAVI FOUR; R; No_Joining_Group
    "\d10BAD",  # ; PSALTER PAHLAVI TEN; D; No_Joining_Group
    "\d10BAE",  # ; PSALTER PAHLAVI TWENTY; D; No_Joining_Group
    "\d10BAF",  # ; PSALTER PAHLAVI HUNDRED; U; No_Joining_Group
    "\d1E900",  # ;ADLAM CAPITAL ALIF; D; No_Joining_Group
    "\d1E901",  # ;ADLAM CAPITAL DAALI; D; No_Joining_Group
    "\d1E902",  # ;ADLAM CAPITAL LAAM; D; No_Joining_Group
    "\d1E903",  # ;ADLAM CAPITAL MIIM; D; No_Joining_Group
    "\d1E904",  # ;ADLAM CAPITAL BA; D; No_Joining_Group
    "\d1E905",  # ;ADLAM CAPITAL SINNYIIYHE; D; No_Joining_Group
    "\d1E906",  # ;ADLAM CAPITAL PE; D; No_Joining_Group
    "\d1E907",  # ;ADLAM CAPITAL BHE; D; No_Joining_Group
    "\d1E908",  # ;ADLAM CAPITAL RA; D; No_Joining_Group
    "\d1E909",  # ;ADLAM CAPITAL E; D; No_Joining_Group
    "\d1E90A",  # ;ADLAM CAPITAL FA; D; No_Joining_Group
    "\d1E90B",  # ;ADLAM CAPITAL I; D; No_Joining_Group
    "\d1E90C",  # ;ADLAM CAPITAL O; D; No_Joining_Group
    "\d1E90D",  # ;ADLAM CAPITAL DHA; D; No_Joining_Group
    "\d1E90E",  # ;ADLAM CAPITAL YHE; D; No_Joining_Group
    "\d1E90F",  # ;ADLAM CAPITAL WAW; D; No_Joining_Group
    "\d1E910",  # ;ADLAM CAPITAL NUN; D; No_Joining_Group
    "\d1E911",  # ;ADLAM CAPITAL KAF; D; No_Joining_Group
    "\d1E912",  # ;ADLAM CAPITAL YA; D; No_Joining_Group
    "\d1E913",  # ;ADLAM CAPITAL U; D; No_Joining_Group
    "\d1E914",  # ;ADLAM CAPITAL JIIM; D; No_Joining_Group
    "\d1E915",  # ;ADLAM CAPITAL CHI; D; No_Joining_Group
    "\d1E916",  # ;ADLAM CAPITAL HA; D; No_Joining_Group
    "\d1E917",  # ;ADLAM CAPITAL QAAF; D; No_Joining_Group
    "\d1E918",  # ;ADLAM CAPITAL GA; D; No_Joining_Group
    "\d1E919",  # ;ADLAM CAPITAL NYA; D; No_Joining_Group
    "\d1E91A",  # ;ADLAM CAPITAL TU; D; No_Joining_Group
    "\d1E91B",  # ;ADLAM CAPITAL NHA; D; No_Joining_Group
    "\d1E91C",  # ;ADLAM CAPITAL VA; D; No_Joining_Group
    "\d1E91D",  # ;ADLAM CAPITAL KHA; D; No_Joining_Group
    "\d1E91E",  # ;ADLAM CAPITAL GBE; D; No_Joining_Group
    "\d1E91F",  # ;ADLAM CAPITAL ZAL; D; No_Joining_Group
    "\d1E920",  # ;ADLAM CAPITAL KPO; D; No_Joining_Group
    "\d1E921",  # ;ADLAM CAPITAL SHA; D; No_Joining_Group
    "\d1E922",  # ;ADLAM SMALL ALIF; D; No_Joining_Group
    "\d1E923",  # ;ADLAM SMALL DAALI; D; No_Joining_Group
    "\d1E924",  # ;ADLAM SMALL LAAM; D; No_Joining_Group
    "\d1E925",  # ;ADLAM SMALL MIIM; D; No_Joining_Group
    "\d1E926",  # ;ADLAM SMALL BA; D; No_Joining_Group
    "\d1E927",  # ;ADLAM SMALL SINNYIIYHE; D; No_Joining_Group
    "\d1E928",  # ;ADLAM SMALL PE; D; No_Joining_Group
    "\d1E929",  # ;ADLAM SMALL BHE; D; No_Joining_Group
    "\d1E92A",  # ;ADLAM SMALL RA; D; No_Joining_Group
    "\d1E92B",  # ;ADLAM SMALL E; D; No_Joining_Group
    "\d1E92C",  # ;ADLAM SMALL FA; D; No_Joining_Group
    "\d1E92D",  # ;ADLAM SMALL I; D; No_Joining_Group
    "\d1E92E",  # ;ADLAM SMALL O; D; No_Joining_Group
    "\d1E92F",  # ;ADLAM SMALL DHA; D; No_Joining_Group
    "\d1E930",  # ;ADLAM SMALL YHE; D; No_Joining_Group
    "\d1E931",  # ;ADLAM SMALL WAW; D; No_Joining_Group
    "\d1E932",  # ;ADLAM SMALL NUN; D; No_Joining_Group
    "\d1E933",  # ;ADLAM SMALL KAF; D; No_Joining_Group
    "\d1E934",  # ;ADLAM SMALL YA; D; No_Joining_Group
    "\d1E935",  # ;ADLAM SMALL U; D; No_Joining_Group
    "\d1E936",  # ;ADLAM SMALL JIIM; D; No_Joining_Group
    "\d1E937",  # ;ADLAM SMALL CHI; D; No_Joining_Group
    "\d1E938",  # ;ADLAM SMALL HA; D; No_Joining_Group
    "\d1E939",  # ;ADLAM SMALL QAAF; D; No_Joining_Group
    "\d1E93A",  # ;ADLAM SMALL GA; D; No_Joining_Group
    "\d1E93B",  # ;ADLAM SMALL NYA; D; No_Joining_Group
    "\d1E93C",  # ;ADLAM SMALL TU; D; No_Joining_Group
    "\d1E93D",  # ;ADLAM SMALL NHA; D; No_Joining_Group
    "\d1E93E",  # ;ADLAM SMALL VA; D; No_Joining_Group
    "\d1E93F",  # ;ADLAM SMALL KHA; D; No_Joining_Group
    "\d1E940",  # ;ADLAM SMALL GBE; D; No_Joining_Group
    "\d1E941",  # ;ADLAM SMALL ZAL; D; No_Joining_Group
    "\d1E942",  # ;ADLAM SMALL KPO; D; No_Joining_Group
    "\d1E943",  # ;ADLAM SMALL SHA; D; No_Joining_Group
    ]
    test_data.each do |string|
      assert @validator.valid_encoding?(string), "U10_ArabicShaping: #{string}"
      assert string.force_encoding("UTF-8").valid_encoding?, "U10_ArabicShaping: #{string}" if @vercheck
    end
  end

end

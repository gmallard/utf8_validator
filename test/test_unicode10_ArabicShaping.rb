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
    "\u0600",  # ; ARABIC NUMBER SIGN; U; No_Joining_Group
    "\u0601",  # ; ARABIC SIGN SANAH; U; No_Joining_Group
    "\u0602",  # ; ARABIC FOOTNOTE MARKER; U; No_Joining_Group
    "\u0603",  # ; ARABIC SIGN SAFHA; U; No_Joining_Group
    "\u0604",  # ; ARABIC SIGN SAMVAT; U; No_Joining_Group
    "\u0605",  # ; ARABIC NUMBER MARK ABOVE; U; No_Joining_Group
    "\u0608",  # ; ARABIC RAY; U; No_Joining_Group
    "\u060B",  # ; AFGHANI SIGN; U; No_Joining_Group
    "\u0620",  # ; DOTLESS YEH WITH SEPARATE RING BELOW; D; YEH
    "\u0621",  # ; HAMZA; U; No_Joining_Group
    "\u0622",  # ; ALEF WITH MADDA ABOVE; R; ALEF
    "\u0623",  # ; ALEF WITH HAMZA ABOVE; R; ALEF
    "\u0624",  # ; WAW WITH HAMZA ABOVE; R; WAW
    "\u0625",  # ; ALEF WITH HAMZA BELOW; R; ALEF
    "\u0626",  # ; DOTLESS YEH WITH HAMZA ABOVE; D; YEH
    "\u0627",  # ; ALEF; R; ALEF
    "\u0628",  # ; BEH; D; BEH
    "\u0629",  # ; TEH MARBUTA; R; TEH MARBUTA
    "\u062A",  # ; DOTLESS BEH WITH 2 DOTS ABOVE; D; BEH
    "\u062B",  # ; DOTLESS BEH WITH 3 DOTS ABOVE; D; BEH
    "\u062C",  # ; HAH WITH DOT BELOW; D; HAH
    "\u062D",  # ; HAH; D; HAH
    "\u062E",  # ; HAH WITH DOT ABOVE; D; HAH
    "\u062F",  # ; DAL; R; DAL
    "\u0630",  # ; DAL WITH DOT ABOVE; R; DAL
    "\u0631",  # ; REH; R; REH
    "\u0632",  # ; REH WITH DOT ABOVE; R; REH
    "\u0633",  # ; SEEN; D; SEEN
    "\u0634",  # ; SEEN WITH 3 DOTS ABOVE; D; SEEN
    "\u0635",  # ; SAD; D; SAD
    "\u0636",  # ; SAD WITH DOT ABOVE; D; SAD
    "\u0637",  # ; TAH; D; TAH
    "\u0638",  # ; TAH WITH DOT ABOVE; D; TAH
    "\u0639",  # ; AIN; D; AIN
    "\u063A",  # ; AIN WITH DOT ABOVE; D; AIN
    "\u063B",  # ; KEHEH WITH 2 DOTS ABOVE; D; GAF
    "\u063C",  # ; KEHEH WITH 3 DOTS BELOW; D; GAF
    "\u063D",  # ; FARSI YEH WITH INVERTED V ABOVE; D; FARSI YEH
    "\u063E",  # ; FARSI YEH WITH 2 DOTS ABOVE; D; FARSI YEH
    "\u063F",  # ; FARSI YEH WITH 3 DOTS ABOVE; D; FARSI YEH
    "\u0640",  # ; TATWEEL; C; No_Joining_Group
    "\u0641",  # ; FEH; D; FEH
    "\u0642",  # ; QAF; D; QAF
    "\u0643",  # ; KAF; D; KAF
    "\u0644",  # ; LAM; D; LAM
    "\u0645",  # ; MEEM; D; MEEM
    "\u0646",  # ; NOON; D; NOON
    "\u0647",  # ; HEH; D; HEH
    "\u0648",  # ; WAW; R; WAW
    "\u0649",  # ; DOTLESS YEH; D; YEH
    "\u064A",  # ; YEH; D; YEH
    "\u066E",  # ; DOTLESS BEH; D; BEH
    "\u066F",  # ; DOTLESS QAF; D; QAF
    "\u0671",  # ; ALEF WITH WASLA ABOVE; R; ALEF
    "\u0672",  # ; ALEF WITH WAVY HAMZA ABOVE; R; ALEF
    "\u0673",  # ; ALEF WITH WAVY HAMZA BELOW; R; ALEF
    "\u0674",  # ; HIGH HAMZA; U; No_Joining_Group
    "\u0675",  # ; HIGH HAMZA ALEF; R; ALEF
    "\u0676",  # ; HIGH HAMZA WAW; R; WAW
    "\u0677",  # ; HIGH HAMZA WAW WITH DAMMA ABOVE; R; WAW
    "\u0678",  # ; HIGH HAMZA DOTLESS YEH; D; YEH
    "\u0679",  # ; DOTLESS BEH WITH TAH ABOVE; D; BEH
    "\u067A",  # ; DOTLESS BEH WITH VERTICAL 2 DOTS ABOVE; D; BEH
    "\u067B",  # ; DOTLESS BEH WITH VERTICAL 2 DOTS BELOW; D; BEH
    "\u067C",  # ; DOTLESS BEH WITH ATTACHED RING BELOW AND 2 DOTS ABOVE; D; BEH
    "\u067D",  # ; DOTLESS BEH WITH INVERTED 3 DOTS ABOVE; D; BEH
    "\u067E",  # ; DOTLESS BEH WITH 3 DOTS BELOW; D; BEH
    "\u067F",  # ; DOTLESS BEH WITH 4 DOTS ABOVE; D; BEH
    "\u0680",  # ; DOTLESS BEH WITH 4 DOTS BELOW; D; BEH
    "\u0681",  # ; HAH WITH HAMZA ABOVE; D; HAH
    "\u0682",  # ; HAH WITH VERTICAL 2 DOTS ABOVE; D; HAH
    "\u0683",  # ; HAH WITH 2 DOTS BELOW; D; HAH
    "\u0684",  # ; HAH WITH VERTICAL 2 DOTS BELOW; D; HAH
    "\u0685",  # ; HAH WITH 3 DOTS ABOVE; D; HAH
    "\u0686",  # ; HAH WITH 3 DOTS BELOW; D; HAH
    "\u0687",  # ; HAH WITH 4 DOTS BELOW; D; HAH
    "\u0688",  # ; DAL WITH TAH ABOVE; R; DAL
    "\u0689",  # ; DAL WITH ATTACHED RING BELOW; R; DAL
    "\u068A",  # ; DAL WITH DOT BELOW; R; DAL
    "\u068B",  # ; DAL WITH DOT BELOW AND TAH ABOVE; R; DAL
    "\u068C",  # ; DAL WITH 2 DOTS ABOVE; R; DAL
    "\u068D",  # ; DAL WITH 2 DOTS BELOW; R; DAL
    "\u068E",  # ; DAL WITH 3 DOTS ABOVE; R; DAL
    "\u068F",  # ; DAL WITH INVERTED 3 DOTS ABOVE; R; DAL
    "\u0690",  # ; DAL WITH 4 DOTS ABOVE; R; DAL
    "\u0691",  # ; REH WITH TAH ABOVE; R; REH
    "\u0692",  # ; REH WITH V ABOVE; R; REH
    "\u0693",  # ; REH WITH ATTACHED RING BELOW; R; REH
    "\u0694",  # ; REH WITH DOT BELOW; R; REH
    "\u0695",  # ; REH WITH V BELOW; R; REH
    "\u0696",  # ; REH WITH DOT BELOW AND DOT WITHIN; R; REH
    "\u0697",  # ; REH WITH 2 DOTS ABOVE; R; REH
    "\u0698",  # ; REH WITH 3 DOTS ABOVE; R; REH
    "\u0699",  # ; REH WITH 4 DOTS ABOVE; R; REH
    "\u069A",  # ; SEEN WITH DOT BELOW AND DOT ABOVE; D; SEEN
    "\u069B",  # ; SEEN WITH 3 DOTS BELOW; D; SEEN
    "\u069C",  # ; SEEN WITH 3 DOTS BELOW AND 3 DOTS ABOVE; D; SEEN
    "\u069D",  # ; SAD WITH 2 DOTS BELOW; D; SAD
    "\u069E",  # ; SAD WITH 3 DOTS ABOVE; D; SAD
    "\u069F",  # ; TAH WITH 3 DOTS ABOVE; D; TAH
    "\u06A0",  # ; AIN WITH 3 DOTS ABOVE; D; AIN
    "\u06A1",  # ; DOTLESS FEH; D; FEH
    "\u06A2",  # ; DOTLESS FEH WITH DOT BELOW; D; FEH
    "\u06A3",  # ; FEH WITH DOT BELOW; D; FEH
    "\u06A4",  # ; DOTLESS FEH WITH 3 DOTS ABOVE; D; FEH
    "\u06A5",  # ; DOTLESS FEH WITH 3 DOTS BELOW; D; FEH
    "\u06A6",  # ; DOTLESS FEH WITH 4 DOTS ABOVE; D; FEH
    "\u06A7",  # ; DOTLESS QAF WITH DOT ABOVE; D; QAF
    "\u06A8",  # ; DOTLESS QAF WITH 3 DOTS ABOVE; D; QAF
    "\u06A9",  # ; KEHEH; D; GAF
    "\u06AA",  # ; SWASH KAF; D; SWASH KAF
    "\u06AB",  # ; KEHEH WITH ATTACHED RING BELOW; D; GAF
    "\u06AC",  # ; KAF WITH DOT ABOVE; D; KAF
    "\u06AD",  # ; KAF WITH 3 DOTS ABOVE; D; KAF
    "\u06AE",  # ; KAF WITH 3 DOTS BELOW; D; KAF
    "\u06AF",  # ; GAF; D; GAF
    "\u06B0",  # ; GAF WITH ATTACHED RING BELOW; D; GAF
    "\u06B1",  # ; GAF WITH 2 DOTS ABOVE; D; GAF
    "\u06B2",  # ; GAF WITH 2 DOTS BELOW; D; GAF
    "\u06B3",  # ; GAF WITH VERTICAL 2 DOTS BELOW; D; GAF
    "\u06B4",  # ; GAF WITH 3 DOTS ABOVE; D; GAF
    "\u06B5",  # ; LAM WITH V ABOVE; D; LAM
    "\u06B6",  # ; LAM WITH DOT ABOVE; D; LAM
    "\u06B7",  # ; LAM WITH 3 DOTS ABOVE; D; LAM
    "\u06B8",  # ; LAM WITH 3 DOTS BELOW; D; LAM
    "\u06B9",  # ; NOON WITH DOT BELOW; D; NOON
    "\u06BA",  # ; DOTLESS NOON; D; NOON
    "\u06BB",  # ; DOTLESS NOON WITH TAH ABOVE; D; NOON
    "\u06BC",  # ; NOON WITH ATTACHED RING BELOW; D; NOON
    "\u06BD",  # ; NYA; D; NYA
    "\u06BE",  # ; KNOTTED HEH; D; KNOTTED HEH
    "\u06BF",  # ; HAH WITH 3 DOTS BELOW AND DOT ABOVE; D; HAH
    "\u06C0",  # ; DOTLESS TEH MARBUTA WITH HAMZA ABOVE; R; TEH MARBUTA
    "\u06C1",  # ; HEH GOAL; D; HEH GOAL
    "\u06C2",  # ; HEH GOAL WITH HAMZA ABOVE; D; HEH GOAL
    "\u06C3",  # ; TEH MARBUTA GOAL; R; TEH MARBUTA GOAL
    "\u06C4",  # ; WAW WITH ATTACHED RING WITHIN; R; WAW
    "\u06C5",  # ; WAW WITH BAR; R; WAW
    "\u06C6",  # ; WAW WITH V ABOVE; R; WAW
    "\u06C7",  # ; WAW WITH DAMMA ABOVE; R; WAW
    "\u06C8",  # ; WAW WITH ALEF ABOVE; R; WAW
    "\u06C9",  # ; WAW WITH INVERTED V ABOVE; R; WAW
    "\u06CA",  # ; WAW WITH 2 DOTS ABOVE; R; WAW
    "\u06CB",  # ; WAW WITH 3 DOTS ABOVE; R; WAW
    "\u06CC",  # ; FARSI YEH; D; FARSI YEH
    "\u06CD",  # ; YEH WITH TAIL; R; YEH WITH TAIL
    "\u06CE",  # ; FARSI YEH WITH V ABOVE; D; FARSI YEH
    "\u06CF",  # ; WAW WITH DOT ABOVE; R; WAW
    "\u06D0",  # ; DOTLESS YEH WITH VERTICAL 2 DOTS BELOW; D; YEH
    "\u06D1",  # ; DOTLESS YEH WITH 3 DOTS BELOW; D; YEH
    "\u06D2",  # ; YEH BARREE; R; YEH BARREE
    "\u06D3",  # ; YEH BARREE WITH HAMZA ABOVE; R; YEH BARREE
    "\u06D5",  # ; DOTLESS TEH MARBUTA; R; TEH MARBUTA
    "\u06DD",  # ; ARABIC END OF AYAH; U; No_Joining_Group
    "\u06EE",  # ; DAL WITH INVERTED V ABOVE; R; DAL
    "\u06EF",  # ; REH WITH INVERTED V ABOVE; R; REH
    "\u06FA",  # ; SEEN WITH DOT BELOW AND 3 DOTS ABOVE; D; SEEN
    "\u06FB",  # ; SAD WITH DOT BELOW AND DOT ABOVE; D; SAD
    "\u06FC",  # ; AIN WITH DOT BELOW AND DOT ABOVE; D; AIN
    "\u06FF",  # ; KNOTTED HEH WITH INVERTED V ABOVE; D; KNOTTED HEH
    "\u0710",  # ; ALAPH; R; ALAPH
    "\u0712",  # ; BETH; D; BETH
    "\u0713",  # ; GAMAL; D; GAMAL
    "\u0714",  # ; GAMAL GARSHUNI; D; GAMAL
    "\u0715",  # ; DALATH; R; DALATH RISH
    "\u0716",  # ; DOTLESS DALATH RISH; R; DALATH RISH
    "\u0717",  # ; HE; R; HE
    "\u0718",  # ; WAW; R; SYRIAC WAW
    "\u0719",  # ; ZAIN; R; ZAIN
    "\u071A",  # ; HETH; D; HETH
    "\u071B",  # ; TETH; D; TETH
    "\u071C",  # ; TETH GARSHUNI; D; TETH
    "\u071D",  # ; YUDH; D; YUDH
    "\u071E",  # ; YUDH HE; R; YUDH HE
    "\u071F",  # ; KAPH; D; KAPH
    "\u0720",  # ; LAMADH; D; LAMADH
    "\u0721",  # ; MIM; D; MIM
    "\u0722",  # ; NUN; D; NUN
    "\u0723",  # ; SEMKATH; D; SEMKATH
    "\u0724",  # ; FINAL SEMKATH; D; FINAL SEMKATH
    "\u0725",  # ; E; D; E
    "\u0726",  # ; PE; D; PE
    "\u0727",  # ; REVERSED PE; D; REVERSED PE
    "\u0728",  # ; SADHE; R; SADHE
    "\u0729",  # ; QAPH; D; QAPH
    "\u072A",  # ; RISH; R; DALATH RISH
    "\u072B",  # ; SHIN; D; SHIN
    "\u072C",  # ; TAW; R; TAW
    "\u072D",  # ; PERSIAN BHETH; D; BETH
    "\u072E",  # ; PERSIAN GHAMAL; D; GAMAL
    "\u072F",  # ; PERSIAN DHALATH; R; DALATH RISH
    "\u074D",  # ; SOGDIAN ZHAIN; R; ZHAIN
    "\u074E",  # ; SOGDIAN KHAPH; D; KHAPH
    "\u074F",  # ; SOGDIAN FE; D; FE
    "\u0750",  # ; DOTLESS BEH WITH HORIZONTAL 3 DOTS BELOW; D; BEH
    "\u0751",  # ; BEH WITH 3 DOTS ABOVE; D; BEH
    "\u0752",  # ; DOTLESS BEH WITH INVERTED 3 DOTS BELOW; D; BEH
    "\u0753",  # ; DOTLESS BEH WITH INVERTED 3 DOTS BELOW AND 2 DOTS ABOVE; D; BEH
    "\u0754",  # ; DOTLESS BEH WITH 2 DOTS BELOW AND DOT ABOVE; D; BEH
    "\u0755",  # ; DOTLESS BEH WITH INVERTED V BELOW; D; BEH
    "\u0756",  # ; DOTLESS BEH WITH V ABOVE; D; BEH
    "\u0757",  # ; HAH WITH 2 DOTS ABOVE; D; HAH
    "\u0758",  # ; HAH WITH INVERTED 3 DOTS BELOW; D; HAH
    "\u0759",  # ; DAL WITH VERTICAL 2 DOTS BELOW AND TAH ABOVE; R; DAL
    "\u075A",  # ; DAL WITH INVERTED V BELOW; R; DAL
    "\u075B",  # ; REH WITH BAR; R; REH
    "\u075C",  # ; SEEN WITH 4 DOTS ABOVE; D; SEEN
    "\u075D",  # ; AIN WITH 2 DOTS ABOVE; D; AIN
    "\u075E",  # ; AIN WITH INVERTED 3 DOTS ABOVE; D; AIN
    "\u075F",  # ; AIN WITH VERTICAL 2 DOTS ABOVE; D; AIN
    "\u0760",  # ; DOTLESS FEH WITH 2 DOTS BELOW; D; FEH
    "\u0761",  # ; DOTLESS FEH WITH INVERTED 3 DOTS BELOW; D; FEH
    "\u0762",  # ; KEHEH WITH DOT ABOVE; D; GAF
    "\u0763",  # ; KEHEH WITH 3 DOTS ABOVE; D; GAF
    "\u0764",  # ; KEHEH WITH INVERTED 3 DOTS BELOW; D; GAF
    "\u0765",  # ; MEEM WITH DOT ABOVE; D; MEEM
    "\u0766",  # ; MEEM WITH DOT BELOW; D; MEEM
    "\u0767",  # ; NOON WITH 2 DOTS BELOW; D; NOON
    "\u0768",  # ; NOON WITH TAH ABOVE; D; NOON
    "\u0769",  # ; NOON WITH V ABOVE; D; NOON
    "\u076A",  # ; LAM WITH BAR; D; LAM
    "\u076B",  # ; REH WITH VERTICAL 2 DOTS ABOVE; R; REH
    "\u076C",  # ; REH WITH HAMZA ABOVE; R; REH
    "\u076D",  # ; SEEN WITH VERTICAL 2 DOTS ABOVE; D; SEEN
    "\u076E",  # ; HAH WITH TAH BELOW; D; HAH
    "\u076F",  # ; HAH WITH TAH AND 2 DOTS BELOW; D; HAH
    "\u0770",  # ; SEEN WITH 2 DOTS AND TAH ABOVE; D; SEEN
    "\u0771",  # ; REH WITH 2 DOTS AND TAH ABOVE; R; REH
    "\u0772",  # ; HAH WITH TAH ABOVE; D; HAH
    "\u0773",  # ; ALEF WITH DIGIT TWO ABOVE; R; ALEF
    "\u0774",  # ; ALEF WITH DIGIT THREE ABOVE; R; ALEF
    "\u0775",  # ; FARSI YEH WITH DIGIT TWO ABOVE; D; FARSI YEH
    "\u0776",  # ; FARSI YEH WITH DIGIT THREE ABOVE; D; FARSI YEH
    "\u0777",  # ; DOTLESS YEH WITH DIGIT FOUR BELOW; D; YEH
    "\u0778",  # ; WAW WITH DIGIT TWO ABOVE; R; WAW
    "\u0779",  # ; WAW WITH DIGIT THREE ABOVE; R; WAW
    "\u077A",  # ; BURUSHASKI YEH BARREE WITH DIGIT TWO ABOVE; D; BURUSHASKI YEH BARREE
    "\u077B",  # ; BURUSHASKI YEH BARREE WITH DIGIT THREE ABOVE; D; BURUSHASKI YEH BARREE
    "\u077C",  # ; HAH WITH DIGIT FOUR BELOW; D; HAH
    "\u077D",  # ; SEEN WITH DIGIT FOUR ABOVE; D; SEEN
    "\u077E",  # ; SEEN WITH INVERTED V ABOVE; D; SEEN
    "\u077F",  # ; KAF WITH 2 DOTS ABOVE; D; KAF
    "\u07CA",  # ; NKO A; D; No_Joining_Group
    "\u07CB",  # ; NKO EE; D; No_Joining_Group
    "\u07CC",  # ; NKO I; D; No_Joining_Group
    "\u07CD",  # ; NKO E; D; No_Joining_Group
    "\u07CE",  # ; NKO U; D; No_Joining_Group
    "\u07CF",  # ; NKO OO; D; No_Joining_Group
    "\u07D0",  # ; NKO O; D; No_Joining_Group
    "\u07D1",  # ; NKO DAGBASINNA; D; No_Joining_Group
    "\u07D2",  # ; NKO N; D; No_Joining_Group
    "\u07D3",  # ; NKO BA; D; No_Joining_Group
    "\u07D4",  # ; NKO PA; D; No_Joining_Group
    "\u07D5",  # ; NKO TA; D; No_Joining_Group
    "\u07D6",  # ; NKO JA; D; No_Joining_Group
    "\u07D7",  # ; NKO CHA; D; No_Joining_Group
    "\u07D8",  # ; NKO DA; D; No_Joining_Group
    "\u07D9",  # ; NKO RA; D; No_Joining_Group
    "\u07DA",  # ; NKO RRA; D; No_Joining_Group
    "\u07DB",  # ; NKO SA; D; No_Joining_Group
    "\u07DC",  # ; NKO GBA; D; No_Joining_Group
    "\u07DD",  # ; NKO FA; D; No_Joining_Group
    "\u07DE",  # ; NKO KA; D; No_Joining_Group
    "\u07DF",  # ; NKO LA; D; No_Joining_Group
    "\u07E0",  # ; NKO NA WOLOSO; D; No_Joining_Group
    "\u07E1",  # ; NKO MA; D; No_Joining_Group
    "\u07E2",  # ; NKO NYA; D; No_Joining_Group
    "\u07E3",  # ; NKO NA; D; No_Joining_Group
    "\u07E4",  # ; NKO HA; D; No_Joining_Group
    "\u07E5",  # ; NKO WA; D; No_Joining_Group
    "\u07E6",  # ; NKO YA; D; No_Joining_Group
    "\u07E7",  # ; NKO NYA WOLOSO; D; No_Joining_Group
    "\u07E8",  # ; NKO JONA JA; D; No_Joining_Group
    "\u07E9",  # ; NKO JONA CHA; D; No_Joining_Group
    "\u07EA",  # ; NKO JONA RA; D; No_Joining_Group
    "\u07FA",  # ; NKO LAJANYALAN; C; No_Joining_Group
    "\u0840",  # ; MANDAIC HALQA; R; No_Joining_Group
    "\u0841",  # ; MANDAIC AB; D; No_Joining_Group
    "\u0842",  # ; MANDAIC AG; D; No_Joining_Group
    "\u0843",  # ; MANDAIC AD; D; No_Joining_Group
    "\u0844",  # ; MANDAIC AH; D; No_Joining_Group
    "\u0845",  # ; MANDAIC USHENNA; D; No_Joining_Group
    "\u0846",  # ; MANDAIC AZ; R; No_Joining_Group
    "\u0847",  # ; MANDAIC IT; R; No_Joining_Group
    "\u0848",  # ; MANDAIC ATT; D; No_Joining_Group
    "\u0849",  # ; MANDAIC AKSA; R; No_Joining_Group
    "\u084A",  # ; MANDAIC AK; D; No_Joining_Group
    "\u084B",  # ; MANDAIC AL; D; No_Joining_Group
    "\u084C",  # ; MANDAIC AM; D; No_Joining_Group
    "\u084D",  # ; MANDAIC AN; D; No_Joining_Group
    "\u084E",  # ; MANDAIC AS; D; No_Joining_Group
    "\u084F",  # ; MANDAIC IN; D; No_Joining_Group
    "\u0850",  # ; MANDAIC AP; D; No_Joining_Group
    "\u0851",  # ; MANDAIC ASZ; D; No_Joining_Group
    "\u0852",  # ; MANDAIC AQ; D; No_Joining_Group
    "\u0853",  # ; MANDAIC AR; D; No_Joining_Group
    "\u0854",  # ; MANDAIC ASH; R; No_Joining_Group
    "\u0855",  # ; MANDAIC AT; D; No_Joining_Group
    "\u0856",  # ; MANDAIC DUSHENNA; U; No_Joining_Group
    "\u0857",  # ; MANDAIC KAD; U; No_Joining_Group
    "\u0858",  # ; MANDAIC AIN; U; No_Joining_Group
    "\u0860",  # ; MALAYALAM NGA; D; MALAYALAM NGA
    "\u0861",  # ; MALAYALAM JA; U; MALAYALAM JA
    "\u0862",  # ; MALAYALAM NYA; D; MALAYALAM NYA
    "\u0863",  # ; MALAYALAM TTA; D; MALAYALAM TTA
    "\u0864",  # ; MALAYALAM NNA; D; MALAYALAM NNA
    "\u0865",  # ; MALAYALAM NNNA; D; MALAYALAM NNNA
    "\u0866",  # ; MALAYALAM BHA; U; MALAYALAM BHA
    "\u0867",  # ; MALAYALAM RA; R; MALAYALAM RA
    "\u0868",  # ; MALAYALAM LLA; D; MALAYALAM LLA
    "\u0869",  # ; MALAYALAM LLLA; R; MALAYALAM LLLA
    "\u086A",  # ; MALAYALAM SSA; R; MALAYALAM SSA
    "\u08A0",  # ; DOTLESS BEH WITH V BELOW; D; BEH
    "\u08A1",  # ; BEH WITH HAMZA ABOVE; D; BEH
    "\u08A2",  # ; HAH WITH DOT BELOW AND 2 DOTS ABOVE; D; HAH
    "\u08A3",  # ; TAH WITH 2 DOTS ABOVE; D; TAH
    "\u08A4",  # ; DOTLESS FEH WITH DOT BELOW AND 3 DOTS ABOVE; D; FEH
    "\u08A5",  # ; QAF WITH DOT BELOW; D; QAF
    "\u08A6",  # ; LAM WITH DOUBLE BAR; D; LAM
    "\u08A7",  # ; MEEM WITH 3 DOTS ABOVE; D; MEEM
    "\u08A8",  # ; YEH WITH HAMZA ABOVE; D; YEH
    "\u08A9",  # ; YEH WITH DOT ABOVE; D; YEH
    "\u08AA",  # ; REH WITH LOOP; R; REH
    "\u08AB",  # ; WAW WITH DOT WITHIN; R; WAW
    "\u08AC",  # ; ROHINGYA YEH; R; ROHINGYA YEH
    "\u08AD",  # ; LOW ALEF; U; No_Joining_Group
    "\u08AE",  # ; DAL WITH 3 DOTS BELOW; R; DAL
    "\u08AF",  # ; SAD WITH 3 DOTS BELOW; D; SAD
    "\u08B0",  # ; KEHEH WITH STROKE BELOW; D; GAF
    "\u08B1",  # ; STRAIGHT WAW; R; STRAIGHT WAW
    "\u08B2",  # ; REH WITH DOT AND INVERTED V ABOVE; R; REH
    "\u08B3",  # ; AIN WITH 3 DOTS BELOW; D; AIN
    "\u08B4",  # ; KAF WITH DOT BELOW; D; KAF
    "\u08B6",  # ; BEH WITH MEEM ABOVE; D; BEH
    "\u08B7",  # ; DOTLESS BEH WITH 3 DOTS BELOW AND MEEM ABOVE; D; BEH
    "\u08B8",  # ; DOTLESS BEH WITH TEH ABOVE; D; BEH
    "\u08B9",  # ; REH WITH NOON ABOVE; R; REH
    "\u08BA",  # ; YEH WITH NOON ABOVE; D; YEH
    "\u08BB",  # ; AFRICAN FEH; D; AFRICAN FEH
    "\u08BC",  # ; AFRICAN QAF; D; AFRICAN QAF
    "\u08BD",  # ; AFRICAN NOON; D; AFRICAN NOON
    "\u08E2",  # ; ARABIC DISPUTED END OF AYAH; U; No_Joining_Group
    "\u1806",  # ; MONGOLIAN TODO SOFT HYPHEN; U; No_Joining_Group
    "\u1807",  # ; MONGOLIAN SIBE SYLLABLE BOUNDARY MARKER; D; No_Joining_Group
    "\u180A",  # ; MONGOLIAN NIRUGU; C; No_Joining_Group
    "\u180E",  # ; MONGOLIAN VOWEL SEPARATOR; U; No_Joining_Group
    "\u1820",  # ; MONGOLIAN A; D; No_Joining_Group
    "\u1821",  # ; MONGOLIAN E; D; No_Joining_Group
    "\u1822",  # ; MONGOLIAN I; D; No_Joining_Group
    "\u1823",  # ; MONGOLIAN O; D; No_Joining_Group
    "\u1824",  # ; MONGOLIAN U; D; No_Joining_Group
    "\u1825",  # ; MONGOLIAN OE; D; No_Joining_Group
    "\u1826",  # ; MONGOLIAN UE; D; No_Joining_Group
    "\u1827",  # ; MONGOLIAN EE; D; No_Joining_Group
    "\u1828",  # ; MONGOLIAN NA; D; No_Joining_Group
    "\u1829",  # ; MONGOLIAN ANG; D; No_Joining_Group
    "\u182A",  # ; MONGOLIAN BA; D; No_Joining_Group
    "\u182B",  # ; MONGOLIAN PA; D; No_Joining_Group
    "\u182C",  # ; MONGOLIAN QA; D; No_Joining_Group
    "\u182D",  # ; MONGOLIAN GA; D; No_Joining_Group
    "\u182E",  # ; MONGOLIAN MA; D; No_Joining_Group
    "\u182F",  # ; MONGOLIAN LA; D; No_Joining_Group
    "\u1830",  # ; MONGOLIAN SA; D; No_Joining_Group
    "\u1831",  # ; MONGOLIAN SHA; D; No_Joining_Group
    "\u1832",  # ; MONGOLIAN TA; D; No_Joining_Group
    "\u1833",  # ; MONGOLIAN DA; D; No_Joining_Group
    "\u1834",  # ; MONGOLIAN CHA; D; No_Joining_Group
    "\u1835",  # ; MONGOLIAN JA; D; No_Joining_Group
    "\u1836",  # ; MONGOLIAN YA; D; No_Joining_Group
    "\u1837",  # ; MONGOLIAN RA; D; No_Joining_Group
    "\u1838",  # ; MONGOLIAN WA; D; No_Joining_Group
    "\u1839",  # ; MONGOLIAN FA; D; No_Joining_Group
    "\u183A",  # ; MONGOLIAN KA; D; No_Joining_Group
    "\u183B",  # ; MONGOLIAN KHA; D; No_Joining_Group
    "\u183C",  # ; MONGOLIAN TSA; D; No_Joining_Group
    "\u183D",  # ; MONGOLIAN ZA; D; No_Joining_Group
    "\u183E",  # ; MONGOLIAN HAA; D; No_Joining_Group
    "\u183F",  # ; MONGOLIAN ZRA; D; No_Joining_Group
    "\u1840",  # ; MONGOLIAN LHA; D; No_Joining_Group
    "\u1841",  # ; MONGOLIAN ZHI; D; No_Joining_Group
    "\u1842",  # ; MONGOLIAN CHI; D; No_Joining_Group
    "\u1843",  # ; MONGOLIAN TODO LONG VOWEL SIGN; D; No_Joining_Group
    "\u1844",  # ; MONGOLIAN TODO E; D; No_Joining_Group
    "\u1845",  # ; MONGOLIAN TODO I; D; No_Joining_Group
    "\u1846",  # ; MONGOLIAN TODO O; D; No_Joining_Group
    "\u1847",  # ; MONGOLIAN TODO U; D; No_Joining_Group
    "\u1848",  # ; MONGOLIAN TODO OE; D; No_Joining_Group
    "\u1849",  # ; MONGOLIAN TODO UE; D; No_Joining_Group
    "\u184A",  # ; MONGOLIAN TODO ANG; D; No_Joining_Group
    "\u184B",  # ; MONGOLIAN TODO BA; D; No_Joining_Group
    "\u184C",  # ; MONGOLIAN TODO PA; D; No_Joining_Group
    "\u184D",  # ; MONGOLIAN TODO QA; D; No_Joining_Group
    "\u184E",  # ; MONGOLIAN TODO GA; D; No_Joining_Group
    "\u184F",  # ; MONGOLIAN TODO MA; D; No_Joining_Group
    "\u1850",  # ; MONGOLIAN TODO TA; D; No_Joining_Group
    "\u1851",  # ; MONGOLIAN TODO DA; D; No_Joining_Group
    "\u1852",  # ; MONGOLIAN TODO CHA; D; No_Joining_Group
    "\u1853",  # ; MONGOLIAN TODO JA; D; No_Joining_Group
    "\u1854",  # ; MONGOLIAN TODO TSA; D; No_Joining_Group
    "\u1855",  # ; MONGOLIAN TODO YA; D; No_Joining_Group
    "\u1856",  # ; MONGOLIAN TODO WA; D; No_Joining_Group
    "\u1857",  # ; MONGOLIAN TODO KA; D; No_Joining_Group
    "\u1858",  # ; MONGOLIAN TODO GAA; D; No_Joining_Group
    "\u1859",  # ; MONGOLIAN TODO HAA; D; No_Joining_Group
    "\u185A",  # ; MONGOLIAN TODO JIA; D; No_Joining_Group
    "\u185B",  # ; MONGOLIAN TODO NIA; D; No_Joining_Group
    "\u185C",  # ; MONGOLIAN TODO DZA; D; No_Joining_Group
    "\u185D",  # ; MONGOLIAN SIBE E; D; No_Joining_Group
    "\u185E",  # ; MONGOLIAN SIBE I; D; No_Joining_Group
    "\u185F",  # ; MONGOLIAN SIBE IY; D; No_Joining_Group
    "\u1860",  # ; MONGOLIAN SIBE UE; D; No_Joining_Group
    "\u1861",  # ; MONGOLIAN SIBE U; D; No_Joining_Group
    "\u1862",  # ; MONGOLIAN SIBE ANG; D; No_Joining_Group
    "\u1863",  # ; MONGOLIAN SIBE KA; D; No_Joining_Group
    "\u1864",  # ; MONGOLIAN SIBE GA; D; No_Joining_Group
    "\u1865",  # ; MONGOLIAN SIBE HA; D; No_Joining_Group
    "\u1866",  # ; MONGOLIAN SIBE PA; D; No_Joining_Group
    "\u1867",  # ; MONGOLIAN SIBE SHA; D; No_Joining_Group
    "\u1868",  # ; MONGOLIAN SIBE TA; D; No_Joining_Group
    "\u1869",  # ; MONGOLIAN SIBE DA; D; No_Joining_Group
    "\u186A",  # ; MONGOLIAN SIBE JA; D; No_Joining_Group
    "\u186B",  # ; MONGOLIAN SIBE FA; D; No_Joining_Group
    "\u186C",  # ; MONGOLIAN SIBE GAA; D; No_Joining_Group
    "\u186D",  # ; MONGOLIAN SIBE HAA; D; No_Joining_Group
    "\u186E",  # ; MONGOLIAN SIBE TSA; D; No_Joining_Group
    "\u186F",  # ; MONGOLIAN SIBE ZA; D; No_Joining_Group
    "\u1870",  # ; MONGOLIAN SIBE RAA; D; No_Joining_Group
    "\u1871",  # ; MONGOLIAN SIBE CHA; D; No_Joining_Group
    "\u1872",  # ; MONGOLIAN SIBE ZHA; D; No_Joining_Group
    "\u1873",  # ; MONGOLIAN MANCHU I; D; No_Joining_Group
    "\u1874",  # ; MONGOLIAN MANCHU KA; D; No_Joining_Group
    "\u1875",  # ; MONGOLIAN MANCHU RA; D; No_Joining_Group
    "\u1876",  # ; MONGOLIAN MANCHU FA; D; No_Joining_Group
    "\u1877",  # ; MONGOLIAN MANCHU ZHA; D; No_Joining_Group
    "\u1880",  # ; MONGOLIAN ALI GALI ANUSVARA ONE; U; No_Joining_Group
    "\u1881",  # ; MONGOLIAN ALI GALI VISARGA ONE; U; No_Joining_Group
    "\u1882",  # ; MONGOLIAN ALI GALI DAMARU; U; No_Joining_Group
    "\u1883",  # ; MONGOLIAN ALI GALI UBADAMA; U; No_Joining_Group
    "\u1884",  # ; MONGOLIAN ALI GALI INVERTED UBADAMA; U; No_Joining_Group
    "\u1885",  # ; MONGOLIAN ALI GALI BALUDA; T; No_Joining_Group
    "\u1886",  # ; MONGOLIAN ALI GALI THREE BALUDA; T; No_Joining_Group
    "\u1887",  # ; MONGOLIAN ALI GALI A; D; No_Joining_Group
    "\u1888",  # ; MONGOLIAN ALI GALI I; D; No_Joining_Group
    "\u1889",  # ; MONGOLIAN ALI GALI KA; D; No_Joining_Group
    "\u188A",  # ; MONGOLIAN ALI GALI NGA; D; No_Joining_Group
    "\u188B",  # ; MONGOLIAN ALI GALI CA; D; No_Joining_Group
    "\u188C",  # ; MONGOLIAN ALI GALI TTA; D; No_Joining_Group
    "\u188D",  # ; MONGOLIAN ALI GALI TTHA; D; No_Joining_Group
    "\u188E",  # ; MONGOLIAN ALI GALI DDA; D; No_Joining_Group
    "\u188F",  # ; MONGOLIAN ALI GALI NNA; D; No_Joining_Group
    "\u1890",  # ; MONGOLIAN ALI GALI TA; D; No_Joining_Group
    "\u1891",  # ; MONGOLIAN ALI GALI DA; D; No_Joining_Group
    "\u1892",  # ; MONGOLIAN ALI GALI PA; D; No_Joining_Group
    "\u1893",  # ; MONGOLIAN ALI GALI PHA; D; No_Joining_Group
    "\u1894",  # ; MONGOLIAN ALI GALI SSA; D; No_Joining_Group
    "\u1895",  # ; MONGOLIAN ALI GALI ZHA; D; No_Joining_Group
    "\u1896",  # ; MONGOLIAN ALI GALI ZA; D; No_Joining_Group
    "\u1897",  # ; MONGOLIAN ALI GALI AH; D; No_Joining_Group
    "\u1898",  # ; MONGOLIAN TODO ALI GALI TA; D; No_Joining_Group
    "\u1899",  # ; MONGOLIAN TODO ALI GALI ZHA; D; No_Joining_Group
    "\u189A",  # ; MONGOLIAN MANCHU ALI GALI GHA; D; No_Joining_Group
    "\u189B",  # ; MONGOLIAN MANCHU ALI GALI NGA; D; No_Joining_Group
    "\u189C",  # ; MONGOLIAN MANCHU ALI GALI CA; D; No_Joining_Group
    "\u189D",  # ; MONGOLIAN MANCHU ALI GALI JHA; D; No_Joining_Group
    "\u189E",  # ; MONGOLIAN MANCHU ALI GALI TTA; D; No_Joining_Group
    "\u189F",  # ; MONGOLIAN MANCHU ALI GALI DDHA; D; No_Joining_Group
    "\u18A0",  # ; MONGOLIAN MANCHU ALI GALI TA; D; No_Joining_Group
    "\u18A1",  # ; MONGOLIAN MANCHU ALI GALI DHA; D; No_Joining_Group
    "\u18A2",  # ; MONGOLIAN MANCHU ALI GALI SSA; D; No_Joining_Group
    "\u18A3",  # ; MONGOLIAN MANCHU ALI GALI CYA; D; No_Joining_Group
    "\u18A4",  # ; MONGOLIAN MANCHU ALI GALI ZHA; D; No_Joining_Group
    "\u18A5",  # ; MONGOLIAN MANCHU ALI GALI ZA; D; No_Joining_Group
    "\u18A6",  # ; MONGOLIAN ALI GALI HALF U; D; No_Joining_Group
    "\u18A7",  # ; MONGOLIAN ALI GALI HALF YA; D; No_Joining_Group
    "\u18A8",  # ; MONGOLIAN MANCHU ALI GALI BHA; D; No_Joining_Group
    "\u18AA",  # ; MONGOLIAN MANCHU ALI GALI LHA; D; No_Joining_Group
    "\u200C",  # ; ZERO WIDTH NON-JOINER; U; No_Joining_Group
    "\u200D",  # ; ZERO WIDTH JOINER; C; No_Joining_Group
    "\u202F",  # ; NARROW NO-BREAK SPACE; U; No_Joining_Group
    "\u2066",  # ; LEFT-TO-RIGHT ISOLATE; U; No_Joining_Group
    "\u2067",  # ; RIGHT-TO-LEFT ISOLATE; U; No_Joining_Group
    "\u2068",  # ; FIRST STRONG ISOLATE; U; No_Joining_Group
    "\u2069",  # ; POP DIRECTIONAL ISOLATE; U; No_Joining_Group
    "\uA840",  # ; PHAGS-PA KA; D; No_Joining_Group
    "\uA841",  # ; PHAGS-PA KHA; D; No_Joining_Group
    "\uA842",  # ; PHAGS-PA GA; D; No_Joining_Group
    "\uA843",  # ; PHAGS-PA NGA; D; No_Joining_Group
    "\uA844",  # ; PHAGS-PA CA; D; No_Joining_Group
    "\uA845",  # ; PHAGS-PA CHA; D; No_Joining_Group
    "\uA846",  # ; PHAGS-PA JA; D; No_Joining_Group
    "\uA847",  # ; PHAGS-PA NYA; D; No_Joining_Group
    "\uA848",  # ; PHAGS-PA TA; D; No_Joining_Group
    "\uA849",  # ; PHAGS-PA THA; D; No_Joining_Group
    "\uA84A",  # ; PHAGS-PA DA; D; No_Joining_Group
    "\uA84B",  # ; PHAGS-PA NA; D; No_Joining_Group
    "\uA84C",  # ; PHAGS-PA PA; D; No_Joining_Group
    "\uA84D",  # ; PHAGS-PA PHA; D; No_Joining_Group
    "\uA84E",  # ; PHAGS-PA BA; D; No_Joining_Group
    "\uA84F",  # ; PHAGS-PA MA; D; No_Joining_Group
    "\uA850",  # ; PHAGS-PA TSA; D; No_Joining_Group
    "\uA851",  # ; PHAGS-PA TSHA; D; No_Joining_Group
    "\uA852",  # ; PHAGS-PA DZA; D; No_Joining_Group
    "\uA853",  # ; PHAGS-PA WA; D; No_Joining_Group
    "\uA854",  # ; PHAGS-PA ZHA; D; No_Joining_Group
    "\uA855",  # ; PHAGS-PA ZA; D; No_Joining_Group
    "\uA856",  # ; PHAGS-PA SMALL A; D; No_Joining_Group
    "\uA857",  # ; PHAGS-PA YA; D; No_Joining_Group
    "\uA858",  # ; PHAGS-PA RA; D; No_Joining_Group
    "\uA859",  # ; PHAGS-PA LA; D; No_Joining_Group
    "\uA85A",  # ; PHAGS-PA SHA; D; No_Joining_Group
    "\uA85B",  # ; PHAGS-PA SA; D; No_Joining_Group
    "\uA85C",  # ; PHAGS-PA HA; D; No_Joining_Group
    "\uA85D",  # ; PHAGS-PA A; D; No_Joining_Group
    "\uA85E",  # ; PHAGS-PA I; D; No_Joining_Group
    "\uA85F",  # ; PHAGS-PA U; D; No_Joining_Group
    "\uA860",  # ; PHAGS-PA E; D; No_Joining_Group
    "\uA861",  # ; PHAGS-PA O; D; No_Joining_Group
    "\uA862",  # ; PHAGS-PA QA; D; No_Joining_Group
    "\uA863",  # ; PHAGS-PA XA; D; No_Joining_Group
    "\uA864",  # ; PHAGS-PA FA; D; No_Joining_Group
    "\uA865",  # ; PHAGS-PA GGA; D; No_Joining_Group
    "\uA866",  # ; PHAGS-PA EE; D; No_Joining_Group
    "\uA867",  # ; PHAGS-PA SUBJOINED WA; D; No_Joining_Group
    "\uA868",  # ; PHAGS-PA SUBJOINED YA; D; No_Joining_Group
    "\uA869",  # ; PHAGS-PA TTA; D; No_Joining_Group
    "\uA86A",  # ; PHAGS-PA TTHA; D; No_Joining_Group
    "\uA86B",  # ; PHAGS-PA DDA; D; No_Joining_Group
    "\uA86C",  # ; PHAGS-PA NNA; D; No_Joining_Group
    "\uA86D",  # ; PHAGS-PA ALTERNATE YA; D; No_Joining_Group
    "\uA86E",  # ; PHAGS-PA VOICELESS SHA; D; No_Joining_Group
    "\uA86F",  # ; PHAGS-PA VOICED HA; D; No_Joining_Group
    "\uA870",  # ; PHAGS-PA ASPIRATED FA; D; No_Joining_Group
    "\uA871",  # ; PHAGS-PA SUBJOINED RA; D; No_Joining_Group
    "\uA872",  # ; PHAGS-PA SUPERFIXED RA; L; No_Joining_Group
    "\uA873",  # ; PHAGS-PA CANDRABINDU; U; No_Joining_Group
    "\u10AC0",  # ; MANICHAEAN ALEPH; D; MANICHAEAN ALEPH
    "\u10AC1",  # ; MANICHAEAN BETH; D; MANICHAEAN BETH
    "\u10AC2",  # ; MANICHAEAN BETH WITH 2 DOTS ABOVE; D; MANICHAEAN BETH
    "\u10AC3",  # ; MANICHAEAN GIMEL; D; MANICHAEAN GIMEL
    "\u10AC4",  # ; MANICHAEAN GIMEL WITH ATTACHED RING BELOW; D; MANICHAEAN GIMEL
    "\u10AC5",  # ; MANICHAEAN DALETH; R; MANICHAEAN DALETH
    "\u10AC6",  # ; MANICHAEAN HE; U; No_Joining_Group
    "\u10AC7",  # ; MANICHAEAN WAW; R; MANICHAEAN WAW
    "\u10AC8",  # ; MANICHAEAN UD; U; No_Joining_Group
    "\u10AC9",  # ; MANICHAEAN ZAYIN; R; MANICHAEAN ZAYIN
    "\u10ACA",  # ; MANICHAEAN ZAYIN WITH 2 DOTS ABOVE; R; MANICHAEAN ZAYIN
    "\u10ACB",  # ; MANICHAEAN JAYIN; U; No_Joining_Group
    "\u10ACC",  # ; MANICHAEAN JAYIN WITH 2 DOTS ABOVE; U; No_Joining_Group
    "\u10ACD",  # ; MANICHAEAN HETH; L; MANICHAEAN HETH
    "\u10ACE",  # ; MANICHAEAN TETH; R; MANICHAEAN TETH
    "\u10ACF",  # ; MANICHAEAN YODH; R; MANICHAEAN YODH
    "\u10AD0",  # ; MANICHAEAN KAPH; R; MANICHAEAN KAPH
    "\u10AD1",  # ; MANICHAEAN KAPH WITH DOT ABOVE; R; MANICHAEAN KAPH
    "\u10AD2",  # ; MANICHAEAN KAPH WITH 2 DOTS ABOVE; R; MANICHAEAN KAPH
    "\u10AD3",  # ; MANICHAEAN LAMEDH; D; MANICHAEAN LAMEDH
    "\u10AD4",  # ; MANICHAEAN DHAMEDH; D; MANICHAEAN DHAMEDH
    "\u10AD5",  # ; MANICHAEAN THAMEDH; D; MANICHAEAN THAMEDH
    "\u10AD6",  # ; MANICHAEAN MEM; D; MANICHAEAN MEM
    "\u10AD7",  # ; MANICHAEAN NUN; L; MANICHAEAN NUN
    "\u10AD8",  # ; MANICHAEAN SAMEKH; D; MANICHAEAN SAMEKH
    "\u10AD9",  # ; MANICHAEAN AYIN; D; MANICHAEAN AYIN
    "\u10ADA",  # ; MANICHAEAN AYIN WITH 2 DOTS ABOVE; D; MANICHAEAN AYIN
    "\u10ADB",  # ; MANICHAEAN PE; D; MANICHAEAN PE
    "\u10ADC",  # ; MANICHAEAN PE WITH DOT ABOVE; D; MANICHAEAN PE
    "\u10ADD",  # ; MANICHAEAN SADHE; R; MANICHAEAN SADHE
    "\u10ADE",  # ; MANICHAEAN QOPH; D; MANICHAEAN QOPH
    "\u10ADF",  # ; MANICHAEAN QOPH WITH DOT ABOVE; D; MANICHAEAN QOPH
    "\u10AE0",  # ; MANICHAEAN QOPH WITH 2 DOTS ABOVE; D; MANICHAEAN QOPH
    "\u10AE1",  # ; MANICHAEAN RESH; R; MANICHAEAN RESH
    "\u10AE2",  # ; MANICHAEAN SHIN; U; No_Joining_Group
    "\u10AE3",  # ; MANICHAEAN SHIN WITH 2 DOTS ABOVE; U; No_Joining_Group
    "\u10AE4",  # ; MANICHAEAN TAW; R; MANICHAEAN TAW
    "\u10AEB",  # ; MANICHAEAN ONE; D; MANICHAEAN ONE
    "\u10AEC",  # ; MANICHAEAN FIVE; D; MANICHAEAN FIVE
    "\u10AED",  # ; MANICHAEAN TEN; D; MANICHAEAN TEN
    "\u10AEE",  # ; MANICHAEAN TWENTY; D; MANICHAEAN TWENTY
    "\u10AEF",  # ; MANICHAEAN HUNDRED; R; MANICHAEAN HUNDRED
    "\u10B80",  # ; PSALTER PAHLAVI ALEPH; D; No_Joining_Group
    "\u10B81",  # ; PSALTER PAHLAVI BETH; R; No_Joining_Group
    "\u10B82",  # ; PSALTER PAHLAVI GIMEL; D; No_Joining_Group
    "\u10B83",  # ; PSALTER PAHLAVI DALETH; R; No_Joining_Group
    "\u10B84",  # ; PSALTER PAHLAVI HE; R; No_Joining_Group
    "\u10B85",  # ; PSALTER PAHLAVI WAW-AYIN-RESH; R; No_Joining_Group
    "\u10B86",  # ; PSALTER PAHLAVI ZAYIN; D; No_Joining_Group
    "\u10B87",  # ; PSALTER PAHLAVI HETH; D; No_Joining_Group
    "\u10B88",  # ; PSALTER PAHLAVI YODH; D; No_Joining_Group
    "\u10B89",  # ; PSALTER PAHLAVI KAPH; R; No_Joining_Group
    "\u10B8A",  # ; PSALTER PAHLAVI LAMEDH; D; No_Joining_Group
    "\u10B8B",  # ; PSALTER PAHLAVI MEM-QOPH; D; No_Joining_Group
    "\u10B8C",  # ; PSALTER PAHLAVI NUN; R; No_Joining_Group
    "\u10B8D",  # ; PSALTER PAHLAVI SAMEKH; D; No_Joining_Group
    "\u10B8E",  # ; PSALTER PAHLAVI PE; R; No_Joining_Group
    "\u10B8F",  # ; PSALTER PAHLAVI SADHE; R; No_Joining_Group
    "\u10B90",  # ; PSALTER PAHLAVI SHIN; D; No_Joining_Group
    "\u10B91",  # ; PSALTER PAHLAVI TAW; R; No_Joining_Group
    "\u10BA9",  # ; PSALTER PAHLAVI ONE; R; No_Joining_Group
    "\u10BAA",  # ; PSALTER PAHLAVI TWO; R; No_Joining_Group
    "\u10BAB",  # ; PSALTER PAHLAVI THREE; R; No_Joining_Group
    "\u10BAC",  # ; PSALTER PAHLAVI FOUR; R; No_Joining_Group
    "\u10BAD",  # ; PSALTER PAHLAVI TEN; D; No_Joining_Group
    "\u10BAE",  # ; PSALTER PAHLAVI TWENTY; D; No_Joining_Group
    "\u10BAF",  # ; PSALTER PAHLAVI HUNDRED; U; No_Joining_Group
    "\u1E900",  # ;ADLAM CAPITAL ALIF; D; No_Joining_Group
    "\u1E901",  # ;ADLAM CAPITAL DAALI; D; No_Joining_Group
    "\u1E902",  # ;ADLAM CAPITAL LAAM; D; No_Joining_Group
    "\u1E903",  # ;ADLAM CAPITAL MIIM; D; No_Joining_Group
    "\u1E904",  # ;ADLAM CAPITAL BA; D; No_Joining_Group
    "\u1E905",  # ;ADLAM CAPITAL SINNYIIYHE; D; No_Joining_Group
    "\u1E906",  # ;ADLAM CAPITAL PE; D; No_Joining_Group
    "\u1E907",  # ;ADLAM CAPITAL BHE; D; No_Joining_Group
    "\u1E908",  # ;ADLAM CAPITAL RA; D; No_Joining_Group
    "\u1E909",  # ;ADLAM CAPITAL E; D; No_Joining_Group
    "\u1E90A",  # ;ADLAM CAPITAL FA; D; No_Joining_Group
    "\u1E90B",  # ;ADLAM CAPITAL I; D; No_Joining_Group
    "\u1E90C",  # ;ADLAM CAPITAL O; D; No_Joining_Group
    "\u1E90D",  # ;ADLAM CAPITAL DHA; D; No_Joining_Group
    "\u1E90E",  # ;ADLAM CAPITAL YHE; D; No_Joining_Group
    "\u1E90F",  # ;ADLAM CAPITAL WAW; D; No_Joining_Group
    "\u1E910",  # ;ADLAM CAPITAL NUN; D; No_Joining_Group
    "\u1E911",  # ;ADLAM CAPITAL KAF; D; No_Joining_Group
    "\u1E912",  # ;ADLAM CAPITAL YA; D; No_Joining_Group
    "\u1E913",  # ;ADLAM CAPITAL U; D; No_Joining_Group
    "\u1E914",  # ;ADLAM CAPITAL JIIM; D; No_Joining_Group
    "\u1E915",  # ;ADLAM CAPITAL CHI; D; No_Joining_Group
    "\u1E916",  # ;ADLAM CAPITAL HA; D; No_Joining_Group
    "\u1E917",  # ;ADLAM CAPITAL QAAF; D; No_Joining_Group
    "\u1E918",  # ;ADLAM CAPITAL GA; D; No_Joining_Group
    "\u1E919",  # ;ADLAM CAPITAL NYA; D; No_Joining_Group
    "\u1E91A",  # ;ADLAM CAPITAL TU; D; No_Joining_Group
    "\u1E91B",  # ;ADLAM CAPITAL NHA; D; No_Joining_Group
    "\u1E91C",  # ;ADLAM CAPITAL VA; D; No_Joining_Group
    "\u1E91D",  # ;ADLAM CAPITAL KHA; D; No_Joining_Group
    "\u1E91E",  # ;ADLAM CAPITAL GBE; D; No_Joining_Group
    "\u1E91F",  # ;ADLAM CAPITAL ZAL; D; No_Joining_Group
    "\u1E920",  # ;ADLAM CAPITAL KPO; D; No_Joining_Group
    "\u1E921",  # ;ADLAM CAPITAL SHA; D; No_Joining_Group
    "\u1E922",  # ;ADLAM SMALL ALIF; D; No_Joining_Group
    "\u1E923",  # ;ADLAM SMALL DAALI; D; No_Joining_Group
    "\u1E924",  # ;ADLAM SMALL LAAM; D; No_Joining_Group
    "\u1E925",  # ;ADLAM SMALL MIIM; D; No_Joining_Group
    "\u1E926",  # ;ADLAM SMALL BA; D; No_Joining_Group
    "\u1E927",  # ;ADLAM SMALL SINNYIIYHE; D; No_Joining_Group
    "\u1E928",  # ;ADLAM SMALL PE; D; No_Joining_Group
    "\u1E929",  # ;ADLAM SMALL BHE; D; No_Joining_Group
    "\u1E92A",  # ;ADLAM SMALL RA; D; No_Joining_Group
    "\u1E92B",  # ;ADLAM SMALL E; D; No_Joining_Group
    "\u1E92C",  # ;ADLAM SMALL FA; D; No_Joining_Group
    "\u1E92D",  # ;ADLAM SMALL I; D; No_Joining_Group
    "\u1E92E",  # ;ADLAM SMALL O; D; No_Joining_Group
    "\u1E92F",  # ;ADLAM SMALL DHA; D; No_Joining_Group
    "\u1E930",  # ;ADLAM SMALL YHE; D; No_Joining_Group
    "\u1E931",  # ;ADLAM SMALL WAW; D; No_Joining_Group
    "\u1E932",  # ;ADLAM SMALL NUN; D; No_Joining_Group
    "\u1E933",  # ;ADLAM SMALL KAF; D; No_Joining_Group
    "\u1E934",  # ;ADLAM SMALL YA; D; No_Joining_Group
    "\u1E935",  # ;ADLAM SMALL U; D; No_Joining_Group
    "\u1E936",  # ;ADLAM SMALL JIIM; D; No_Joining_Group
    "\u1E937",  # ;ADLAM SMALL CHI; D; No_Joining_Group
    "\u1E938",  # ;ADLAM SMALL HA; D; No_Joining_Group
    "\u1E939",  # ;ADLAM SMALL QAAF; D; No_Joining_Group
    "\u1E93A",  # ;ADLAM SMALL GA; D; No_Joining_Group
    "\u1E93B",  # ;ADLAM SMALL NYA; D; No_Joining_Group
    "\u1E93C",  # ;ADLAM SMALL TU; D; No_Joining_Group
    "\u1E93D",  # ;ADLAM SMALL NHA; D; No_Joining_Group
    "\u1E93E",  # ;ADLAM SMALL VA; D; No_Joining_Group
    "\u1E93F",  # ;ADLAM SMALL KHA; D; No_Joining_Group
    "\u1E940",  # ;ADLAM SMALL GBE; D; No_Joining_Group
    "\u1E941",  # ;ADLAM SMALL ZAL; D; No_Joining_Group
    "\u1E942",  # ;ADLAM SMALL KPO; D; No_Joining_Group
    "\u1E943",  # ;ADLAM SMALL SHA; D; No_Joining_Group
    ]
    test_data.each do |string|
      assert @validator.valid_encoding?(string), "U10_ArabicShaping: #{string}"
      assert string.force_encoding("UTF-8").valid_encoding?, "U10_ArabicShaping: #{string}" if @vercheck
    end
  end

end

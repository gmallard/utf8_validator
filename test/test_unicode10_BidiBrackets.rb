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
class TestUnicode10BidiBrackets < Test::Unit::TestCase
  #
  def setup
    @validator = UTF8::Validator.new
    @vercheck = ((RUBY_VERSION =~ /1.9/) or (RUBY_VERSION =~ /2./)) ? true : false
  end

  #
  def teardown
    @validator = nil
  end

  def test_unicode10_BidiBrackets
    test_data = [
        "\u0028",  # LEFT PARENTHESIS
        "\u0029",  # LEFT PARENTHESIS
        "\u0029",  # RIGHT PARENTHESIS
        "\u0028",  # RIGHT PARENTHESIS
        "\u005B",  # LEFT SQUARE BRACKET
        "\u005D",  # LEFT SQUARE BRACKET
        "\u005D",  # RIGHT SQUARE BRACKET
        "\u005B",  # RIGHT SQUARE BRACKET
        "\u007B",  # LEFT CURLY BRACKET
        "\u007D",  # LEFT CURLY BRACKET
        "\u007D",  # RIGHT CURLY BRACKET
        "\u007B",  # RIGHT CURLY BRACKET
        "\u0F3A",  # TIBETAN MARK GUG RTAGS GYON
        "\u0F3B",  # TIBETAN MARK GUG RTAGS GYON
        "\u0F3B",  # TIBETAN MARK GUG RTAGS GYAS
        "\u0F3A",  # TIBETAN MARK GUG RTAGS GYAS
        "\u0F3C",  # TIBETAN MARK ANG KHANG GYON
        "\u0F3D",  # TIBETAN MARK ANG KHANG GYON
        "\u0F3D",  # TIBETAN MARK ANG KHANG GYAS
        "\u0F3C",  # TIBETAN MARK ANG KHANG GYAS
        "\u169B",  # OGHAM FEATHER MARK
        "\u169C",  # OGHAM FEATHER MARK
        "\u169C",  # OGHAM REVERSED FEATHER MARK
        "\u169B",  # OGHAM REVERSED FEATHER MARK
        "\u2045",  # LEFT SQUARE BRACKET WITH QUILL
        "\u2046",  # LEFT SQUARE BRACKET WITH QUILL
        "\u2046",  # RIGHT SQUARE BRACKET WITH QUILL
        "\u2045",  # RIGHT SQUARE BRACKET WITH QUILL
        "\u207D",  # SUPERSCRIPT LEFT PARENTHESIS
        "\u207E",  # SUPERSCRIPT LEFT PARENTHESIS
        "\u207E",  # SUPERSCRIPT RIGHT PARENTHESIS
        "\u207D",  # SUPERSCRIPT RIGHT PARENTHESIS
        "\u208D",  # SUBSCRIPT LEFT PARENTHESIS
        "\u208E",  # SUBSCRIPT LEFT PARENTHESIS
        "\u208E",  # SUBSCRIPT RIGHT PARENTHESIS
        "\u208D",  # SUBSCRIPT RIGHT PARENTHESIS
        "\u2308",  # LEFT CEILING
        "\u2309",  # LEFT CEILING
        "\u2309",  # RIGHT CEILING
        "\u2308",  # RIGHT CEILING
        "\u230A",  # LEFT FLOOR
        "\u230B",  # LEFT FLOOR
        "\u230B",  # RIGHT FLOOR
        "\u230A",  # RIGHT FLOOR
        "\u2329",  # LEFT-POINTING ANGLE BRACKET
        "\u232A",  # LEFT-POINTING ANGLE BRACKET
        "\u232A",  # RIGHT-POINTING ANGLE BRACKET
        "\u2329",  # RIGHT-POINTING ANGLE BRACKET
        "\u2768",  # MEDIUM LEFT PARENTHESIS ORNAMENT
        "\u2769",  # MEDIUM LEFT PARENTHESIS ORNAMENT
        "\u2769",  # MEDIUM RIGHT PARENTHESIS ORNAMENT
        "\u2768",  # MEDIUM RIGHT PARENTHESIS ORNAMENT
        "\u276A",  # MEDIUM FLATTENED LEFT PARENTHESIS ORNAMENT
        "\u276B",  # MEDIUM FLATTENED LEFT PARENTHESIS ORNAMENT
        "\u276B",  # MEDIUM FLATTENED RIGHT PARENTHESIS ORNAMENT
        "\u276A",  # MEDIUM FLATTENED RIGHT PARENTHESIS ORNAMENT
        "\u276C",  # MEDIUM LEFT-POINTING ANGLE BRACKET ORNAMENT
        "\u276D",  # MEDIUM LEFT-POINTING ANGLE BRACKET ORNAMENT
        "\u276D",  # MEDIUM RIGHT-POINTING ANGLE BRACKET ORNAMENT
        "\u276C",  # MEDIUM RIGHT-POINTING ANGLE BRACKET ORNAMENT
        "\u276E",  # HEAVY LEFT-POINTING ANGLE QUOTATION MARK ORNAMENT
        "\u276F",  # HEAVY LEFT-POINTING ANGLE QUOTATION MARK ORNAMENT
        "\u276F",  # HEAVY RIGHT-POINTING ANGLE QUOTATION MARK ORNAMENT
        "\u276E",  # HEAVY RIGHT-POINTING ANGLE QUOTATION MARK ORNAMENT
        "\u2770",  # HEAVY LEFT-POINTING ANGLE BRACKET ORNAMENT
        "\u2771",  # HEAVY LEFT-POINTING ANGLE BRACKET ORNAMENT
        "\u2771",  # HEAVY RIGHT-POINTING ANGLE BRACKET ORNAMENT
        "\u2770",  # HEAVY RIGHT-POINTING ANGLE BRACKET ORNAMENT
        "\u2772",  # LIGHT LEFT TORTOISE SHELL BRACKET ORNAMENT
        "\u2773",  # LIGHT LEFT TORTOISE SHELL BRACKET ORNAMENT
        "\u2773",  # LIGHT RIGHT TORTOISE SHELL BRACKET ORNAMENT
        "\u2772",  # LIGHT RIGHT TORTOISE SHELL BRACKET ORNAMENT
        "\u2774",  # MEDIUM LEFT CURLY BRACKET ORNAMENT
        "\u2775",  # MEDIUM LEFT CURLY BRACKET ORNAMENT
        "\u2775",  # MEDIUM RIGHT CURLY BRACKET ORNAMENT
        "\u2774",  # MEDIUM RIGHT CURLY BRACKET ORNAMENT
        "\u27C5",  # LEFT S-SHAPED BAG DELIMITER
        "\u27C6",  # LEFT S-SHAPED BAG DELIMITER
        "\u27C6",  # RIGHT S-SHAPED BAG DELIMITER
        "\u27C5",  # RIGHT S-SHAPED BAG DELIMITER
        "\u27E6",  # MATHEMATICAL LEFT WHITE SQUARE BRACKET
        "\u27E7",  # MATHEMATICAL LEFT WHITE SQUARE BRACKET
        "\u27E7",  # MATHEMATICAL RIGHT WHITE SQUARE BRACKET
        "\u27E6",  # MATHEMATICAL RIGHT WHITE SQUARE BRACKET
        "\u27E8",  # MATHEMATICAL LEFT ANGLE BRACKET
        "\u27E9",  # MATHEMATICAL LEFT ANGLE BRACKET
        "\u27E9",  # MATHEMATICAL RIGHT ANGLE BRACKET
        "\u27E8",  # MATHEMATICAL RIGHT ANGLE BRACKET
        "\u27EA",  # MATHEMATICAL LEFT DOUBLE ANGLE BRACKET
        "\u27EB",  # MATHEMATICAL LEFT DOUBLE ANGLE BRACKET
        "\u27EB",  # MATHEMATICAL RIGHT DOUBLE ANGLE BRACKET
        "\u27EA",  # MATHEMATICAL RIGHT DOUBLE ANGLE BRACKET
        "\u27EC",  # MATHEMATICAL LEFT WHITE TORTOISE SHELL BRACKET
        "\u27ED",  # MATHEMATICAL LEFT WHITE TORTOISE SHELL BRACKET
        "\u27ED",  # MATHEMATICAL RIGHT WHITE TORTOISE SHELL BRACKET
        "\u27EC",  # MATHEMATICAL RIGHT WHITE TORTOISE SHELL BRACKET
        "\u27EE",  # MATHEMATICAL LEFT FLATTENED PARENTHESIS
        "\u27EF",  # MATHEMATICAL LEFT FLATTENED PARENTHESIS
        "\u27EF",  # MATHEMATICAL RIGHT FLATTENED PARENTHESIS
        "\u27EE",  # MATHEMATICAL RIGHT FLATTENED PARENTHESIS
        "\u2983",  # LEFT WHITE CURLY BRACKET
        "\u2984",  # LEFT WHITE CURLY BRACKET
        "\u2984",  # RIGHT WHITE CURLY BRACKET
        "\u2983",  # RIGHT WHITE CURLY BRACKET
        "\u2985",  # LEFT WHITE PARENTHESIS
        "\u2986",  # LEFT WHITE PARENTHESIS
        "\u2986",  # RIGHT WHITE PARENTHESIS
        "\u2985",  # RIGHT WHITE PARENTHESIS
        "\u2987",  # Z NOTATION LEFT IMAGE BRACKET
        "\u2988",  # Z NOTATION LEFT IMAGE BRACKET
        "\u2988",  # Z NOTATION RIGHT IMAGE BRACKET
        "\u2987",  # Z NOTATION RIGHT IMAGE BRACKET
        "\u2989",  # Z NOTATION LEFT BINDING BRACKET
        "\u298A",  # Z NOTATION LEFT BINDING BRACKET
        "\u298A",  # Z NOTATION RIGHT BINDING BRACKET
        "\u2989",  # Z NOTATION RIGHT BINDING BRACKET
        "\u298B",  # LEFT SQUARE BRACKET WITH UNDERBAR
        "\u298C",  # LEFT SQUARE BRACKET WITH UNDERBAR
        "\u298C",  # RIGHT SQUARE BRACKET WITH UNDERBAR
        "\u298B",  # RIGHT SQUARE BRACKET WITH UNDERBAR
        "\u298D",  # LEFT SQUARE BRACKET WITH TICK IN TOP CORNER
        "\u2990",  # LEFT SQUARE BRACKET WITH TICK IN TOP CORNER
        "\u298E",  # RIGHT SQUARE BRACKET WITH TICK IN BOTTOM CORNER
        "\u298F",  # RIGHT SQUARE BRACKET WITH TICK IN BOTTOM CORNER
        "\u298F",  # LEFT SQUARE BRACKET WITH TICK IN BOTTOM CORNER
        "\u298E",  # LEFT SQUARE BRACKET WITH TICK IN BOTTOM CORNER
        "\u2990",  # RIGHT SQUARE BRACKET WITH TICK IN TOP CORNER
        "\u298D",  # RIGHT SQUARE BRACKET WITH TICK IN TOP CORNER
        "\u2991",  # LEFT ANGLE BRACKET WITH DOT
        "\u2992",  # LEFT ANGLE BRACKET WITH DOT
        "\u2992",  # RIGHT ANGLE BRACKET WITH DOT
        "\u2991",  # RIGHT ANGLE BRACKET WITH DOT
        "\u2993",  # LEFT ARC LESS-THAN BRACKET
        "\u2994",  # LEFT ARC LESS-THAN BRACKET
        "\u2994",  # RIGHT ARC GREATER-THAN BRACKET
        "\u2993",  # RIGHT ARC GREATER-THAN BRACKET
        "\u2995",  # DOUBLE LEFT ARC GREATER-THAN BRACKET
        "\u2996",  # DOUBLE LEFT ARC GREATER-THAN BRACKET
        "\u2996",  # DOUBLE RIGHT ARC LESS-THAN BRACKET
        "\u2995",  # DOUBLE RIGHT ARC LESS-THAN BRACKET
        "\u2997",  # LEFT BLACK TORTOISE SHELL BRACKET
        "\u2998",  # LEFT BLACK TORTOISE SHELL BRACKET
        "\u2998",  # RIGHT BLACK TORTOISE SHELL BRACKET
        "\u2997",  # RIGHT BLACK TORTOISE SHELL BRACKET
        "\u29D8",  # LEFT WIGGLY FENCE
        "\u29D9",  # LEFT WIGGLY FENCE
        "\u29D9",  # RIGHT WIGGLY FENCE
        "\u29D8",  # RIGHT WIGGLY FENCE
        "\u29DA",  # LEFT DOUBLE WIGGLY FENCE
        "\u29DB",  # LEFT DOUBLE WIGGLY FENCE
        "\u29DB",  # RIGHT DOUBLE WIGGLY FENCE
        "\u29DA",  # RIGHT DOUBLE WIGGLY FENCE
        "\u29FC",  # LEFT-POINTING CURVED ANGLE BRACKET
        "\u29FD",  # LEFT-POINTING CURVED ANGLE BRACKET
        "\u29FD",  # RIGHT-POINTING CURVED ANGLE BRACKET
        "\u29FC",  # RIGHT-POINTING CURVED ANGLE BRACKET
        "\u2E22",  # TOP LEFT HALF BRACKET
        "\u2E23",  # TOP LEFT HALF BRACKET
        "\u2E23",  # TOP RIGHT HALF BRACKET
        "\u2E22",  # TOP RIGHT HALF BRACKET
        "\u2E24",  # BOTTOM LEFT HALF BRACKET
        "\u2E25",  # BOTTOM LEFT HALF BRACKET
        "\u2E25",  # BOTTOM RIGHT HALF BRACKET
        "\u2E24",  # BOTTOM RIGHT HALF BRACKET
        "\u2E26",  # LEFT SIDEWAYS U BRACKET
        "\u2E27",  # LEFT SIDEWAYS U BRACKET
        "\u2E27",  # RIGHT SIDEWAYS U BRACKET
        "\u2E26",  # RIGHT SIDEWAYS U BRACKET
        "\u2E28",  # LEFT DOUBLE PARENTHESIS
        "\u2E29",  # LEFT DOUBLE PARENTHESIS
        "\u2E29",  # RIGHT DOUBLE PARENTHESIS
        "\u2E28",  # RIGHT DOUBLE PARENTHESIS
        "\u3008",  # LEFT ANGLE BRACKET
        "\u3009",  # LEFT ANGLE BRACKET
        "\u3009",  # RIGHT ANGLE BRACKET
        "\u3008",  # RIGHT ANGLE BRACKET
        "\u300A",  # LEFT DOUBLE ANGLE BRACKET
        "\u300B",  # LEFT DOUBLE ANGLE BRACKET
        "\u300B",  # RIGHT DOUBLE ANGLE BRACKET
        "\u300A",  # RIGHT DOUBLE ANGLE BRACKET
        "\u300C",  # LEFT CORNER BRACKET
        "\u300D",  # LEFT CORNER BRACKET
        "\u300D",  # RIGHT CORNER BRACKET
        "\u300C",  # RIGHT CORNER BRACKET
        "\u300E",  # LEFT WHITE CORNER BRACKET
        "\u300F",  # LEFT WHITE CORNER BRACKET
        "\u300F",  # RIGHT WHITE CORNER BRACKET
        "\u300E",  # RIGHT WHITE CORNER BRACKET
        "\u3010",  # LEFT BLACK LENTICULAR BRACKET
        "\u3011",  # LEFT BLACK LENTICULAR BRACKET
        "\u3011",  # RIGHT BLACK LENTICULAR BRACKET
        "\u3010",  # RIGHT BLACK LENTICULAR BRACKET
        "\u3014",  # LEFT TORTOISE SHELL BRACKET
        "\u3015",  # LEFT TORTOISE SHELL BRACKET
        "\u3015",  # RIGHT TORTOISE SHELL BRACKET
        "\u3014",  # RIGHT TORTOISE SHELL BRACKET
        "\u3016",  # LEFT WHITE LENTICULAR BRACKET
        "\u3017",  # LEFT WHITE LENTICULAR BRACKET
        "\u3017",  # RIGHT WHITE LENTICULAR BRACKET
        "\u3016",  # RIGHT WHITE LENTICULAR BRACKET
        "\u3018",  # LEFT WHITE TORTOISE SHELL BRACKET
        "\u3019",  # LEFT WHITE TORTOISE SHELL BRACKET
        "\u3019",  # RIGHT WHITE TORTOISE SHELL BRACKET
        "\u3018",  # RIGHT WHITE TORTOISE SHELL BRACKET
        "\u301A",  # LEFT WHITE SQUARE BRACKET
        "\u301B",  # LEFT WHITE SQUARE BRACKET
        "\u301B",  # RIGHT WHITE SQUARE BRACKET
        "\u301A",  # RIGHT WHITE SQUARE BRACKET
        "\uFE59",  # SMALL LEFT PARENTHESIS
        "\uFE5A",  # SMALL LEFT PARENTHESIS
        "\uFE5A",  # SMALL RIGHT PARENTHESIS
        "\uFE59",  # SMALL RIGHT PARENTHESIS
        "\uFE5B",  # SMALL LEFT CURLY BRACKET
        "\uFE5C",  # SMALL LEFT CURLY BRACKET
        "\uFE5C",  # SMALL RIGHT CURLY BRACKET
        "\uFE5B",  # SMALL RIGHT CURLY BRACKET
        "\uFE5D",  # SMALL LEFT TORTOISE SHELL BRACKET
        "\uFE5E",  # SMALL LEFT TORTOISE SHELL BRACKET
        "\uFE5E",  # SMALL RIGHT TORTOISE SHELL BRACKET
        "\uFE5D",  # SMALL RIGHT TORTOISE SHELL BRACKET
        "\uFF08",  # FULLWIDTH LEFT PARENTHESIS
        "\uFF09",  # FULLWIDTH LEFT PARENTHESIS
        "\uFF09",  # FULLWIDTH RIGHT PARENTHESIS
        "\uFF08",  # FULLWIDTH RIGHT PARENTHESIS
        "\uFF3B",  # FULLWIDTH LEFT SQUARE BRACKET
        "\uFF3D",  # FULLWIDTH LEFT SQUARE BRACKET
        "\uFF3D",  # FULLWIDTH RIGHT SQUARE BRACKET
        "\uFF3B",  # FULLWIDTH RIGHT SQUARE BRACKET
        "\uFF5B",  # FULLWIDTH LEFT CURLY BRACKET
        "\uFF5D",  # FULLWIDTH LEFT CURLY BRACKET
        "\uFF5D",  # FULLWIDTH RIGHT CURLY BRACKET
        "\uFF5B",  # FULLWIDTH RIGHT CURLY BRACKET
        "\uFF5F",  # FULLWIDTH LEFT WHITE PARENTHESIS
        "\uFF60",  # FULLWIDTH LEFT WHITE PARENTHESIS
        "\uFF60",  # FULLWIDTH RIGHT WHITE PARENTHESIS
        "\uFF5F",  # FULLWIDTH RIGHT WHITE PARENTHESIS
        "\uFF62",  # HALFWIDTH LEFT CORNER BRACKET
        "\uFF63",  # HALFWIDTH LEFT CORNER BRACKET
        "\uFF63",  # HALFWIDTH RIGHT CORNER BRACKET
        "\uFF62",  # HALFWIDTH RIGHT CORNER BRACKET
    ]
    test_data.each do |string|
      assert @validator.valid_encoding?(string), "U10_BidiBrackets: #{string}"
      assert string.force_encoding("UTF-8").valid_encoding?, "U10_BidiBrackets: #{string}" if @vercheck
    end
  end

end

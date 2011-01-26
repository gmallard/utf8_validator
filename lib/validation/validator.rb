# encoding: utf-8
#
=begin

http://unicode.org/mail-arch/unicode-ml/y2003-m02/att-0467/01-The_Algorithm_to_Valide_an_UTF-8_String

    * state START

          * Input = 0x00-0x7F : change state to START
          * Input = 0xC2-0xDF: change state to A
          * Input = 0xE1-0xEC, 0xEE-0xEF: change state to B
          * Input = 0xE0: change state to C
          * Input = 0xED: change state to D
          * Input = 0xF1-0xF3:change state to E
          * Input = 0xF0: change state to F
          * Input = 0xF4: change state to G
          * Input = Others (0x80-0xBF,0xC0-0xC1, 0xF5-0xFF): ERROR

    * state A
          o Input = 0x80-0xBF: change state to START
          o Others: ERROR
    * state B
          o Input = 0x80-0xBF: change state to A
          o Others: ERROR
    * state C
          o Input = 0xA0-0xBF: change state to A
          o Others: ERROR
    * state D
          o Input = 0x80-0x9F: change state to A
          o Others: ERROR
    * state E
          o Input = 0x80-0xBF: change state to B
          o Others: ERROR
    * state F
          o Input = 0x90-0xBF: change state to B
          o Others: ERROR
    * state G
          o Input = 0x80-0x8F: change state to B
          o Others: ERROR

This state machine can be easily understood by:

a) examining the machine behavior as documented
b) reference to an excellent UTF-8 article with accompanying table here:

http://en.wikipedia.org/wiki/UTF-8

=end
#
# == Purpose
#
# Container for UTF-8 validator.
#
module UTF8
#
# == Purpose
#
# Validate UTF-8 primarily in a Ruby environments other than 1.9.
#
# Instances of this class are thread safe, and a single instance may be used
# safely by multiple concurrent threads, with one caveat:
#
# The value of #{DEBUG} must not be changed by any thread.
#
#--
# Copyright (c) 2011 Guy Allard
#--
class Validator
  #
  # For use during development only.
  #
  DEBUG=false
  #
  # Validate the supplied string for proper UTF-8 encoding.
  #
  # Calling Sequence:
  #
  #    validator = UTF8::Validator.new                           -> validator
  #    validator.valid_encoding?(string)                         -> true or false
  #    validator.valid_encoding?(string, true)                   -> true or exception
  #
  # Parameters:
  #
  # string::         the string to validate
  # raise_on_error:: a flag to indicate failure behavior
  #
  # When raise_on_error is _true_ and a string fails validation, an
  # error of type #{UTF8::ValidationError} is raised.  The byte in error
  # and the location of that byte are described in the error message.
  #
  def valid_encoding?(string, raise_on_error = false)
    bytes = string.bytes
    #
    valid = true
    index = -1
    nb_hex = nil
    ni_hex = nil
    state = "start"
    next_byte_save = nil
    #
    bytes.each do |next_byte|
      index += 1
      next_byte_save = next_byte
      ni_hex = sprintf "%x", index
      nb_hex = sprintf "%x", next_byte
      puts "Top: #{next_byte}(0x#{nb_hex}), index: #{index}(0x#{ni_hex})" if DEBUG
      case state

        # State: 'start'
        # The 'start' state:
        # * handles all occurrences of valid single byte characters i.e., the ASCII character set
        # * provides state transition logic for start bytes of valid characters with 2-4 bytes
        # * signals a validation failure for all other single bytes
        # 
        when "start"
          puts "state: start" if DEBUG
          case next_byte

            # ASCII
            # * Input = 0x00-0x7F : change state to START
            when (0x00..0x7f)
              puts "state: start 1" if DEBUG
              state = "start"

            # Start byte of two byte characters
            # * Input = 0xC2-0xDF: change state to A
            when (0xc2..0xdf)
              puts "state: start 2" if DEBUG
              state = "a"

            # Start byte of some three byte characters
            # * Input = 0xE1-0xEC, 0xEE-0xEF: change state to B
            when (0xe1..0xec)
              puts "state: start 3" if DEBUG
              state = "b"
            when (0xee..0xef)
              puts "state: start 4" if DEBUG
              state = "b"

            # Start byte of special three byte characters
            # * Input = 0xE0: change state to C
            when 0xe0
              puts "state: start 5" if DEBUG
              state = "c"

            # Start byte of the remaining three byte characters
            # * Input = 0xED: change state to D
            when 0xed
              puts "state: start 6" if DEBUG
              state = "d"

            # Start byte of some four byte characters
            # * Input = 0xF1-0xF3:change state to E
            when (0xf1..0xf3)
              puts "state: start 7" if DEBUG
              state = "e"

            # Start byte of special four byte characters
            # * Input = 0xF0: change state to F
            when 0xf0
              puts "state: start 8" if DEBUG
              state = "f"

            # Start byte of very special four byte characters
            # * Input = 0xF4: change state to G
            when 0xf4
              puts "state: start 9" if DEBUG
              state = "g"

            # All other single characters are invalid
            # * Input = Others (0x80-0xBF,0xC0-0xC1, 0xF5-0xFF): ERROR
            else
              valid = false
              break
          end # of the inner case, the 'start' state

        # The last continuation byte of a 2, 3, or 4 byte character
        # State: 'a'
        #  o Input = 0x80-0xBF: change state to START
        #  o Others: ERROR
        when "a"
          puts "state: a" if DEBUG
          if (0x80..0xbf) === next_byte
            state = "start"
          else
            valid = false
            break
          end

        # The first continuation byte for most 3 byte characters
        # (those with start bytes in: 0xe1-0xec or 0xee-0xef)
        # State: 'b'
        # o Input = 0x80-0xBF: change state to A
        # o Others: ERROR
        when "b"
          puts "state: b" if DEBUG
          if (0x80..0xbf) === next_byte
            state = "a"
          else
            valid = false
            break
          end

        # The first continuation byte for some special 3 byte characters
        # (those with start byte 0xe0)
        # State: 'c'
        # o Input = 0xA0-0xBF: change state to A
        # o Others: ERROR
        when "c"
          puts "state: c" if DEBUG
          if (0xa0..0xbf) === next_byte
            state = "a"
          else
            valid = false
            break
          end

        # The first continuation byte for the remaining 3 byte characters
        # (those with start byte 0xed)
        # State: 'd'
        # o Input = 0x80-0x9F: change state to A
        # o Others: ERROR
        when "d"
          puts "state: d" if DEBUG
          if (0x80..0x9f) === next_byte
            state = "a"
          else
            valid = false
            break
          end

        # The first continuation byte for some 4 byte characters
        # (those with start bytes in: 0xf1-0xf3)
        # State: 'e'
        # o Input = 0x80-0xBF: change state to B
        # o Others: ERROR
        when "e"
          puts "state: e" if DEBUG
          if (0x80..0xbf) === next_byte
            state = "b"
          else
            valid = false
            break
          end

        # The first continuation byte for some special 4 byte characters
        # (those with start byte 0xf0)
        # State: 'f'
        # o Input = 0x90-0xBF: change state to B
        # o Others: ERROR
        when "f"
          puts "state: f" if DEBUG
          if (0x90..0xbf) === next_byte
            state = "b"
          else
            valid = false
            break
          end

        # The first continuation byte for the remaining 4 byte characters
        # (those with start byte 0xf4)
        # State: 'g'
        # o Input = 0x80-0x8F: change state to B
        # o Others: ERROR
        when "g"
          puts "state: g" if DEBUG
          if (0x80..0x8f) === next_byte
            state = "b"
          else
            valid = false
            break
          end

        #
        else
          raise RuntimeError, "state: default"
      end
    end
    #
    puts "State at end: #{state}" if DEBUG
    # Catch truncation at end of string
    if valid and state != 'start'
      puts "Resetting valid value" if DEBUG
      valid = false
    end
    #
    if !valid and raise_on_error
      puts "Raising Error" if DEBUG
      raise ValidationError, "Invalid byte:#{next_byte_save}(0x#{nb_hex}),index:#{index}(0x#{ni_hex})"
    end
    #
    valid
  end # of valid_encoding?
end # of class
end # of module

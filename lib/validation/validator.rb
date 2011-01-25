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

=end
module UTF8
#
# == Purpose
#
# Validate UTF-8 in a Ruby environments other than 1.9.
#
class Validator
  #
  DEBUG=false
  #
  def valid_encoding?(string)
    bytes = string.bytes
    #
    valid = true
    index = -1
    state = "start"
    #
    bytes.each do |next_byte|
      index += 1
      nb_hex = sprintf "%x", next_byte
      puts "Top: #{next_byte}(0x#{nb_hex}), index: #{index}" if DEBUG
      case state

        # State: 'start'
        when "start"
          puts "state: start" if DEBUG
          case next_byte
            # * Input = 0x00-0x7F : change state to START
            when (0x00..0x7f)
              puts "state: start 1" if DEBUG
              state = "start"
            # * Input = 0xC2-0xDF: change state to A
            when (0xc2..0xdf)
              puts "state: start 2" if DEBUG
              state = "a"
            # * Input = 0xE1-0xEC, 0xEE-0xEF: change state to B
            when (0xe1..0xec)
              puts "state: start 3" if DEBUG
              state = "b"
            when (0xee..0xef)
              puts "state: start 4" if DEBUG
              state = "b"
            # * Input = 0xE0: change state to C
            when 0xe0
              puts "state: start 5" if DEBUG
              state = "c"
            # * Input = 0xED: change state to D
            when 0xed
              puts "state: start 6" if DEBUG
              state = "d"
            # * Input = 0xF1-0xF3:change state to E
            when (0xf1..0xf3)
              puts "state: start 7" if DEBUG
              state = "e"
            # * Input = 0xF0: change state to F
            when 0xf0
              puts "state: start 8" if DEBUG
              state = "f"
            # * Input = 0xF4: change state to G
            when 0xf4
              puts "state: start 9" if DEBUG
              state = "g"
            # * Input = Others (0x80-0xBF,0xC0-0xC1, 0xF5-0xFF): ERROR
            else
              valid = false
              break
          end      

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
    valid
  end # of valid_encoding?
end # of class
end # of module

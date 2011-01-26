#--
# Copyright (c) 2011 Guy Allard
#--
module UTF8
  #
  # == Purpose
  #
  # General UTF-8 validation error class.  Clients that raise this error
  # should override the default message.
  #
  class ValidationError < ::RuntimeError
    #
    def message()
      "general UTF-8 validation error"
    end
  end
end

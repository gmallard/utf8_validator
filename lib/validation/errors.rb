# encoding: utf-8
#
#--
# Copyright (c) 2011-2016 Guy Allard
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
  end
end

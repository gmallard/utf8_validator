#
module UTF8
  #
  class ValidationError < ::RuntimeError
    #
    def message()
      "general UTF8 validation error"
    end
  end
end

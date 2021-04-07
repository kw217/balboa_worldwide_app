module BWA
  module Messages
    class NothingToSend < Message
      MESSAGE_TYPE = "\xbf\07".force_encoding(Encoding::ASCII_8BIT)
      MESSAGE_LENGTH = 0

      def inspect
        "#<BWA::Messages::NothingToSend>"
      end
    end
  end
end

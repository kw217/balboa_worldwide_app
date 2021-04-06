module BWA
  module Messages
    class NewClientClearToSend < Message
      MESSAGE_TYPE = "\xbf\x00".force_encoding(Encoding::ASCII_8BIT)
      MESSAGE_LENGTH = 0

      def inspect
        "#<BWA::Messages::NewClientClearToSend>"
      end
    end
  end
end

module BWA
  module Messages
    class ChannelAssignmentAcknowledge < Message
      MESSAGE_TYPE = "\xbf\x03".force_encoding(Encoding::ASCII_8BIT)
      MESSAGE_LENGTH = 0

      def inspect
        "#<BWA::Messages::ChannelAssignmentAcknowledge>"
      end
    end
  end
end

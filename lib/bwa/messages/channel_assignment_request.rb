module BWA
  module Messages
    class ChannelAssignmentRequest < Message
      MESSAGE_TYPE = "\xbf\x01".force_encoding(Encoding::ASCII_8BIT)
      MESSAGE_LENGTH = 3

      attr_accessor :nonce, :type

      def initialize(nonce, type = 2)
        super()
        self.nonce = nonce
        self.type = type
      end

      def parse(data)
        (self.type, self.nonce) = data.unpack("CS")
      end

      def serialize
        data = [self.type, self.nonce].pack("CS").force_encoding(Encoding::ASCII_8BIT)
        super(data)
      end

      def inspect
        "#<BWA::Messages::ChannelAssignmentRequest #{"%04x" % nonce} (#{"%02x" % type})>"
      end
    end
  end
end

module BWA
  module Messages
    class ChannelAssignmentResponse < Message
      MESSAGE_TYPE = "\xbf\x02".force_encoding(Encoding::ASCII_8BIT)
      MESSAGE_LENGTH = 3

      attr_accessor :channel, :nonce

      def initialize(channel = nil, nonce = nil)
        super()
        self.channel = channel
        self.nonce = nonce
      end

      def parse(data)
        (self.channel, self.nonce) = data.unpack("CS")
      end

      def serialize
        data = [self.channel, self.nonce].pack("CS").force_encoding(Encoding::ASCII_8BIT)
        super(data)
      end

      def inspect
        "#<BWA::Messages::ChannelAssignmentResponse for #{"%04x" % nonce}: #{"%02x" % channel}>"
      end
    end
  end
end

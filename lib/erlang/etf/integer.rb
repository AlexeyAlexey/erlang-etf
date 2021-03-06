module Erlang
  module ETF

    #
    # 1   | 4
    # --- | ---
    # 98  | Int
    #
    # Signed 32 bit integer in big-endian format (i.e. MSB first)
    #
    # (see [`INTEGER_EXT`])
    #
    # [`INTEGER_EXT`]: http://erlang.org/doc/apps/erts/erl_ext_dist.html#INTEGER_EXT
    #
    class Integer
      include Term

      uint8 :tag, always: Terms::INTEGER_EXT

      int32be :int

      finalize

      def initialize(int)
        @int = int
      end

      def __ruby_evolve__
        int
      end
    end
  end
end
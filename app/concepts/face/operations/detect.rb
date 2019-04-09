module Face
  module Operations
    class Detect < ApplicationOperation
      step :detect!

      def detect!(options, params:, **)
        DetectFace.(
          # some params here
        )
      end
    end
  end
end

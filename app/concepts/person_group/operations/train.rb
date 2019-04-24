module PersonGroup
  module Operations
    class Train < ApplicationOperation
      step :initialize_branch!
      step :train!
      step :save!

      def initialize_branch!(options, params:, **)
        options["model"] = params[:branch]
      end

      def train!(options, params:, **)
        response = TrainPersonGroup.(
          branch_id: params[:branch][:id].to_s
        )
        if response.code == 202
          options["model"].trained_at = response["date"].to_datetime
          true
        end
      end

      def save!(options, params:, **)
        options["model"].save
      end
    end
  end
end

module PersonGroup
  module Operations
    class Create < ApplicationOperation
      step :initialize_branch!
      success :create!

      def initialize_branch!(options, params:, **)
        options["model"] = params[:branch]
      end

      def create!(options, params:, **)
        branch = options["model"]
        CreatePersonGroup.(
          branch_id: branch.id.to_s,
          branch_name: branch.name
        )
      end

    end
  end
end

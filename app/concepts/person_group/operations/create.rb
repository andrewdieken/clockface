module PersonGroup
  module Operations
    class Create < ApplicationOperation
      step :create!

      def create!(options, params:, **)
        CreatePersonGroup.(
          branch_id: params[:branch][:id].to_s,
          branch_name: params[:branch][:name]
        )
      end

    end
  end
end

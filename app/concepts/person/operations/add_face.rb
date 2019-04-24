module Person
  module Operations
    class AddFace < ApplicationOperation
      step :add_face!

      def add_face!(options, params:, **)
        options["model"] = AddFaceToPersonInPersonGroup.(
          branch_id: params[:branch][:id].to_s,
          person_id: params[:branch][:person_id],
          image_data: params[:branch][:image_data]
        )
      end

    end
  end
end

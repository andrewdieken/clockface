module Person
  module Operations
    class Create < ApplicationOperation
      step :initialize_employee!
      step :assign_person_id!
      step :save!

      def initialize_employee!(options, params:, **)
        options["model"] = params[:employee]
      end

      def assign_person_id!(options, params:, **)
        employee = options["model"]
        employee.person_id = CreatePerson.(
          branch_id: employee.branch_id.to_s,
          person_name: employee.full_name
        )
      end

      def save!(options, params:, **)
        options["model"].save
      end
    end
  end
end

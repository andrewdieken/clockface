class BranchPolicy < ApplicationPolicy
  def manage?
    user.regional_manager?
  end
end

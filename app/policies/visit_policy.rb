class VisitPolicy < ApplicationPolicy
  def create?
    # TODO: Check that customer and employee are visible?
    true
  end

  class Scope < Scope
    def resolve
      @scope.joins(:employee).where(employees: { company_id: @user.company_id })
    end
  end
end

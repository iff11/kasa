class VisitPolicy < ApplicationPolicy
  def create?
    # TODO: Check that customer and employee are visible?
    # Problem is that @scope or @record does not give us current data
    true
  end

  def update?
    @user.company_id == Employee.find(@record.employee_id).company_id
  end

  def destroy?
    @user.company_id = Employee.find(@record.employee_id).company_id
  end

  class Scope < Scope
    def resolve
      @scope.joins(:employee).where(employees: { company_id: @user.company_id })
    end
  end
end

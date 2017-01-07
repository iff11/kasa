class CompanyPolicy < ApplicationPolicy
  def create?
    # TODO: We want to authorize this, but we won't get current data
    true
  end

  def update?
    @user.company_id == @record.id
  end

  class Scope < Scope
    def resolve
      @scope.where(id: @user.company_id)
    end
  end
end

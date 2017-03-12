class RevenuePolicy < ApplicationPolicy
  def create?
    # TODO: really?
    true
  end

  def destroy?
    @user.company_id == Entity.find(@record.entity_id).company_id
  end

  def update?
    # Update and destroy should have the same policy
    destroy?
  end

  class Scope < Scope
    def resolve
      @scope.joins(:entity).where(entities: { company_id: @user.company_id })
    end
  end
end

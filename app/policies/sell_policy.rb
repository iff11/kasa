class SellPolicy < ApplicationPolicy
  def create?
    # TODO: Check that customer and employee are visible?
    # Problem is that @scope or @record does not give us current data
    true
  end

  def destroy?
    @user.company_id == Item.find(@record.item_id).company_id
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

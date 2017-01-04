class SupplyPolicy < ApplicationPolicy
  def update?
    @user.company_id == @record.item.company_id
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end

class SupplyPolicy < ApplicationPolicy
  def create?
    #TODO: we want to authorize this, but we don't know how
    true
  end

  def update?
    @user.company_id == Item.find(@record.item_id).company_id
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end

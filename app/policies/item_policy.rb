class ItemPolicy < ApplicationPolicy
  def create?
    # TODO: We want to authorize this, but we won't get current data
    true
  end

  def update?
    @user.company_id == @record.company_id
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end

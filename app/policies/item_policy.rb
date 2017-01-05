class ItemPolicy < ApplicationPolicy
  def create?
    # TODO: We want to authorize this, but we won't get current data
    true
  end

  def update?
    @user.company_id == @record.company_id
  end

  class Scope < Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user  = user
      @scope = scope
    end

    def resolve
      @scope.where(company_id: @user.company_id)
    end
  end
end

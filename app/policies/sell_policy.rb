class SellPolicy < ApplicationPolicy
  def create?
    # TODO: Check that customer and employee are visible?
    # Problem is that @scope or @record does not give us current data
    true
  end

  def update?
    puts @record.inspect
    # TODO: Check that customer and employee are visible?
    # Problem is that @scope or @record does not give us current data
    true
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end

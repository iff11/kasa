class CustomerPolicy < ApplicationPolicy
  def update?
    puts "@user: "
    puts @user.to_yaml
    puts "@record: "
    puts @record.to_yaml
    puts "-0-0----"
    true
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end

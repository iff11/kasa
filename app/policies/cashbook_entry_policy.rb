class CashbookEntryPolicy < CompanyDependentPolicy
  def destroy?
    @user.company_id == @record.company_id
  end
end

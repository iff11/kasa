class BaseUnderCompanyResource < ApplicationResource
  # Resources that inherit from this one all need to update .company_id prior to saving new record
  before_save do
    @model.company_id = context[:current_user].company_id if @model.new_record?
  end
end

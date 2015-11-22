module Api
  module V1
    class EmployeesController < Api::BaseController
      include JSONAPI::ActsAsResourceController
    end
  end
end

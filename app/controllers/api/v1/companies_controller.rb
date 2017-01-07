module Api
  module V1
    class CompaniesController < Api::BaseController
      include JSONAPI::ActsAsResourceController
    end
  end
end

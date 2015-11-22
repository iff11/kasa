module Api
  module V1
    class CustomersController < Api::BaseController
      include JSONAPI::ActsAsResourceController
    end
  end
end

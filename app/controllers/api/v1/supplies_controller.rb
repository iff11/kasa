module Api
  module V1
    class SuppliesController < Api::BaseController
      include JSONAPI::ActsAsResourceController
    end
  end
end

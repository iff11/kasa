module Api
  module V1
    class VisitsController < Api::BaseController
      include JSONAPI::ActsAsResourceController
    end
  end
end

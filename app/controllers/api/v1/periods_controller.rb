module Api
  module V1
    class PeriodsController < Api::BaseController
      include JSONAPI::ActsAsResourceController
    end
  end
end

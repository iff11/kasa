module Api
  module V1
    class RevenuesController < Api::BaseController
      include JSONAPI::ActsAsResourceController
    end
  end
end

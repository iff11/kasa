module Api
  module V1
    class PayslipsController < Api::BaseController
      include JSONAPI::ActsAsResourceController
    end
  end
end

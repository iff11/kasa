module Api
  module V1
    class SellsController < Api::BaseController
      include JSONAPI::ActsAsResourceController
    end
  end
end

module Api
  module V1
    class ItemsController < Api::BaseController
      include JSONAPI::ActsAsResourceController
    end
  end
end

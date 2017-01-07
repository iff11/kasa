module Api
  module V1
    class EntitiesController < Api::BaseController
      include JSONAPI::ActsAsResourceController
    end
  end
end

module Api
  module V1
    class CashbooksController < Api::BaseController
      include JSONAPI::ActsAsResourceController
    end
  end
end

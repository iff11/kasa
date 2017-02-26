module Api
  module V1
    class CashbookEntriesController < Api::BaseController
      include JSONAPI::ActsAsResourceController
    end
  end
end

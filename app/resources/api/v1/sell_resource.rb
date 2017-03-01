module Api
  module V1
    class SellResource < ApplicationResource
      attributes :count, :price, :updated_at

      before_save :update_entity

      has_one :item
      has_one :visit
      has_one :entity

      filters :visits_from, :visits_to

      filter :visits_from, apply: ->(records, value, _options) {
        records.joins(:visit).where('visits.created_at >= ?', value)
      }
      filter :visits_to, apply: ->(records, value, _options) {
        records.joins(:visit).where("visits.created_at <= (TO_DATE(?, 'YYYY-MM-DD') + interval '1' day)", value)
      }

      private
        def update_entity
          @model.entity = @model.item.entity
        end
    end
  end
end

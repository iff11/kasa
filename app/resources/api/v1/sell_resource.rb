module Api
  module V1
    class SellResource < ApplicationResource
      attributes :count, :price, :updated_at

      before_save :update_entity

      has_one :item
      has_one :visit
      has_one :entity

      filters :from, :to

      filter :from, apply: ->(records, value, _options) {
        records.where('sells.created_at >= ?', value)
      }
      filter :to, apply: ->(records, value, _options) {
        records.where("sells.created_at <= (TO_DATE(?, 'YYYY-MM-DD') + interval '1' day)", value)
      }

      private
        def update_entity
          @model.entity = @model.item.entity
        end
    end
  end
end

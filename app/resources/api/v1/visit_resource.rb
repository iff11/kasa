module Api
  module V1
    class VisitResource < ApplicationResource
      paginator :paged

      attributes :note, :completed, :price_with_tip, :paid_in_cash, :paid_by_card, :received_cash, :updated_at, :employee_share_sale, :employee_share_service, :price, :created_at

      has_one :customer
      has_one :employee

      # has_one :cashbook_entry, foreign_key_on: :related
      # relationship :cashbook_entry, to: :one, foreign_key_on: :related
      belongs_to :cashbook_entry
      has_many :sells

      # https://github.com/cerebris/jsonapi-resources/issues/391
      def cashbook_entry_id=(_value)
        # TODO: Remove once it's fixed
      end

      filters :customer_id, :completed, :from, :to, :employee_id

      filter :from, apply: ->(records, value, _options) {
        records.where('visits.created_at > ?', value)
      }
      filter :to, apply: ->(records, value, _options) {
        records.where('visits.created_at < ?', value)
      }
    end
  end
end

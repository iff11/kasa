module Api
  module V1
    class VisitResource < ApplicationResource
      paginator :paged

      before_save :process_eet

      attributes :note, :completed, :price_with_tip, :paid_in_cash, :paid_by_card, :received_cash, :updated_at, :employee_share_sale, :employee_share_service, :price, :created_at

      has_one :customer
      has_one :employee

      # has_one :cashbook_entry, foreign_key_on: :related
      # relationship :cashbook_entry, to: :one, foreign_key_on: :related
      belongs_to :cashbook_entry
      has_many :sells
      has_many :revenues

      # https://github.com/cerebris/jsonapi-resources/issues/391
      def cashbook_entry_id=(_value)
        # TODO: Remove once it's fixed
      end

      filters :customer_id, :completed, :from, :to, :employee_id

      filter :from, apply: ->(records, value, _options) {
        records.where('visits.created_at >= ?', value)
      }
      filter :to, apply: ->(records, value, _options) {
        records.where("visits.created_at <= (TO_DATE(?, 'YYYY-MM-DD') + interval '1' day)", value)
      }

      private
        def process_eet
          if closing_visit?
            Visit.find(@model.id).revenues.each do |revenue|
              if revenue.eet_fik.nil? and revenue.entity.send_eet?
                EetService.new({revenue: revenue, entity: revenue.entity}).call
              end
            end
          end
        end

        def closing_visit?
          if @model.id
            if @model.completed == true
              if Visit.find(@model.id).completed == false
                return true
              end
            end
          end

          false
        end
    end
  end
end

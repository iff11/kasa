module VisitsHelper
  def identification(visit)
    "%s @ %s" % [visit.customer.name, l(visit.created_at, format: :short)]
  end

  def human_price(visit)
    number_to_currency(visit.total_price)
  end
end

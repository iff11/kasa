class CashbookEntry < ActiveRecord::Base
  default_scope { order(when: :desc) }

  enum kind: {
    visit: 0,
    manual: 1
  }

  belongs_to :company
  belongs_to :visit
end

class Bill < ApplicationRecord
  belongs_to :establishment
  monetize :amount_cents, as: :amount

  validates :number, :issueDate, :payDate, presence: true

end

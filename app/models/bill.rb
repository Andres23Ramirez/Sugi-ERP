class Bill < ApplicationRecord
  belongs_to :establishment
  monetize :amount_cents, as: :amount

  validates :number, :amount, :issueDate, :payDate, presence: true

end

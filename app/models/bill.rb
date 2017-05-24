class Bill < ApplicationRecord
  belongs_to :establishment
  monetize :amount_cents, as: :amount
  validates :number, uniqueness: true
  validates :number, :issueDate, :payDate, :state,presence: true

end

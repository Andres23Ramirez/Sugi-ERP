class Bill < ApplicationRecord
  belongs_to :establishment
  monetize :amount_cents, as: :amount
end

class Entry < ApplicationRecord
	monetize :amount_cents, as: :amount
	validates :description, :amount, :date, presence:true
	scope :date_start, -> (dateStart) {where("date > ? ", dateStart)}
	scope :date_end, -> (dateEnd) {where("date < ? ", dateEnd)}
end

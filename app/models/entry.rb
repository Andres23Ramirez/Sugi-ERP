class Entry < ApplicationRecord

	scope :date_start, -> (dateStart) {where("date > ? ", dateStart)}
	scope :date_end, -> (dateEnd) {where("date < ? ", dateEnd)}
end

class Outflow < ApplicationRecord

	scope :type_service, -> (type) {where("type_service = ?", type)}
	scope :date_start, -> (dateStart) {where("date > ? ", dateStart)}
	scope :date_end, -> (dateEnd) {where("date < ? ", dateEnd)}
end

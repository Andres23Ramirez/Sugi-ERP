class Employee < ApplicationRecord
	monetize :salary_cents, as: :salary
end

class Employee < ApplicationRecord
	monetize :salary_cents, as: :salary
	has_many :contract_employees, dependent: :destroy

	validates :first_name, :last_name, :cv_file, :date_hire, :position, presence: true

end

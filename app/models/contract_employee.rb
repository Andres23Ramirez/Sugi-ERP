class ContractEmployee < ApplicationRecord
  belongs_to :employee
  validates :dateStart, :dateEnd, :salary, presence: true
end

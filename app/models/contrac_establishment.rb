class ContracEstablishment < ApplicationRecord
  belongs_to :establishment
  validates :description, :wayToPay, :porpuse, :file_name, :startDate, :endDate, presence: true
end

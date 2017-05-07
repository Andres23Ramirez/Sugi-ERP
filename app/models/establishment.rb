class Establishment < ApplicationRecord
	validates :name, :number, :numberPhone, presence: true
	has_many :contrac_establishments, dependent: :destroy
end

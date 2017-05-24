class Establishment < ApplicationRecord
	validates :name, :number, :numberPhone, presence: true
	validates :number, uniqueness: true
	has_many :bills, dependent: :destroy
	has_many :contrac_establishments, dependent: :destroy
end

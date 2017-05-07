class Establishment < ApplicationRecord
	has_many :contrac_establishments, dependent: :destroy
end

class Doctor < ActiveRecord::Base
	has_many :appointments

	validates :name, presence: true, length: {maximum: 36}

	validates :zip, numericality: true, length: {maximum: 6}

	validates :experience, numericality: true, inclusion: { in: (1..100)}
end

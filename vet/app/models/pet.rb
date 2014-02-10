class Pet < ActiveRecord::Base
	validates :name, :pet_type, :breed, :age, :weight, :last_visit, presence: true

	validates :name, :breed, length: {maximum: 35}

	PETTYPE = ['dog', 'cat', 'bird']
	validates :pet_type, inclusion: {in: PETTYPE}

	has_many :appointments

end

class Appointment < ActiveRecord::Base
  belongs_to :customer
  belongs_to :pet
  belongs_to :doctor

  validates :customer, :pet, :doctor, :date_of_visit, :reason, presence: true

end

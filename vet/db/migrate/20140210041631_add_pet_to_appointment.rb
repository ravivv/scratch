class AddPetToAppointment < ActiveRecord::Migration
  def change
    add_reference :appointments, :pet, index: true
  end
end

class AddDoctorToAppointment < ActiveRecord::Migration
  def change
    add_reference :appointments, :doctor, index: true
  end
end

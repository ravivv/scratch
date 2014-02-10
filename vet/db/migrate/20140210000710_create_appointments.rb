class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.date :date_of_visit, null: false
      t.references :customer, index: true, null:false
      t.boolean :reminder
      t.text :reason, null:false

      t.timestamps
    end
  end
end

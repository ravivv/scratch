class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name
      t.text :address
      t.string :city
      t.string :state
      t.integer :zip, precision: 5
      t.string :school
      t.integer :experience, precision: 3

      t.timestamps
    end
  end
end

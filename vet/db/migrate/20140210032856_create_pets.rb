class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name, null: false
      t.string :pet_type, null: false
      t.string :breed, null: false
      t.integer :age, null: false
      t.integer :weight, null: false
      t.date :last_visit, null: false

      t.timestamps
    end
  end
end

class CreateVehicleNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicle_notes do |t|
      t.text :body
      t.references :vehicle, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

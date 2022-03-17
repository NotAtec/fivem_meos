class CreateVehicles < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicles do |t|
      t.string :owner
      t.string :plate
      t.string :type
      t.references :inwoner, null: false, foreign_key: true

      t.timestamps
    end
  end
end

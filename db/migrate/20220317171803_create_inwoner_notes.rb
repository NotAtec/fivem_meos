class CreateInwonerNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :inwoner_notes do |t|
      t.text :body
      t.references :user, null: false, foreign_key: true
      t.references :inwoner, null: false, foreign_key: true

      t.timestamps
    end
  end
end

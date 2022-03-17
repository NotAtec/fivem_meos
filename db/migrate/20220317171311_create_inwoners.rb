class CreateInwoners < ActiveRecord::Migration[7.0]
  def change
    create_table :inwoners do |t|
      t.string :identifier
      t.string :firstname
      t.string :lastname
      t.string :dateofbirth
      t.string :sex

      t.timestamps
    end
    add_index :inwoners, :identifier, unique: true
  end
end

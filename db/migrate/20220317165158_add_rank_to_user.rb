class AddRankToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :rank, :string, null: false, default: "request"
  end
end

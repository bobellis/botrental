class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.column :user_id, :integer
      t.column :bot_id, :integer
      t.column :date, :datetime

      t.timestamps
    end
  end
end

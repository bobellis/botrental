class AddPriceColumnToBotsTable < ActiveRecord::Migration
  def change
    add_column :bots, :price, :integer
    add_column :users, :name, :string
    add_column :bots, :type, :string
  end
end

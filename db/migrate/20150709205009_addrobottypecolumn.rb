class Addrobottypecolumn < ActiveRecord::Migration
  def change
    remove_column :bots, :type, :string
    add_column :bots, :robot_type, :string
  end
end

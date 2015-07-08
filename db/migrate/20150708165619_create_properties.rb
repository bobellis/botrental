class CreateProperties < ActiveRecord::Migration
  def change
    create_table :bots do |t|
      t.column :name, :string
      t.column :description, :string
      t.column :user_id, :integer

      t.timestamps
    end
  end
end

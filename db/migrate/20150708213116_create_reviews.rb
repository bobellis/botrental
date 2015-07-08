class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.column :title, :string
      t.column :body, :string
      t.column :user_id, :integer
      t.column :bot_id, :integer

      t.timestamps
    end
  end
end

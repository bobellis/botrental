class AddReviewsToRentals < ActiveRecord::Migration
  def change
    drop_table :reviews

    add_column :rentals, :review_title, :string
    add_column :rentals, :review_body, :string
    add_column :rentals, :review_score, :integer
  end
end

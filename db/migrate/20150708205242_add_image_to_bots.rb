class AddImageToBots < ActiveRecord::Migration
  def change
    add_attachment :bots, :image
  end
end

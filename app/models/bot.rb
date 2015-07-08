class Bot < ActiveRecord::Base
  has_many :users, through: :rentals
  has_many :rentals
  belongs_to :user
end

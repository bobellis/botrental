class Bot < ActiveRecord::Base
  has_many :users, through: :rentals
  has_many :rentals
  belongs_to :user
  has_attached_file :image, :styles => { :medium => "300x300", :thumb => "100x100"}, :default_url => "/images/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  validates_presence_of :name
end

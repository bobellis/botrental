class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :rentals
  has_many :bots, through: :rentals
  has_many :bots
  has_many :favorites
  validates_presence_of :email
  validates_uniqueness_of :email
  validates_presence_of :name
end

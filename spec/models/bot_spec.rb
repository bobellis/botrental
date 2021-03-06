require 'rails_helper'
  describe Bot do
    it {should validate_presence_of :name}
    it {should have_many :rentals}
    it {should belong_to :user}
    it {should have_many :users}
  end

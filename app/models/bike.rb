class Bike < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	validates :name, presence: true
    validates :image, presence: true
end




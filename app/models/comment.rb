class Comment < ActiveRecord::Base
  belongs_to :bike
  validates :commenter, presence: true
  validates :body, presence: true
end
		
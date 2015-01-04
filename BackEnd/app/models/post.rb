class Post < ActiveRecord::Base
  validates :title, :body, :user_id, presence: true
  has_many :tags
  belongs_to :user
end

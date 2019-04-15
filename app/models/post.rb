class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :link,  presence: true
  validates :title, presence: true, length: {maximum: 255}
end
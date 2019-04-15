class Post < ApplicationRecord
  belongs_to :user

  validates :link,  presence: true
  validates :title, presence: true, length: {maximum: 255}
end
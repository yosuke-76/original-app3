class Post < ApplicationRecord
  has_one_attached :image
  belongs_to :user

  validates :text, presence: true
  validates :name, presence: true
end

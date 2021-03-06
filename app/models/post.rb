class Post < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  has_many :comments

  validates :text, presence: true
  validates :name, presence: true
  validates :image, presence: true
end

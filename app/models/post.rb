class Post < ApplicationRecord
  validates :text, presence: true
  validates :name, presence: true
end

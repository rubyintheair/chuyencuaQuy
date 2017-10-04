class Post < ApplicationRecord
  SECTIONS = ["Health and Beauty", "Programming", "Book", "Eat and Drink", "Other"]
  enum section: SECTIONS
  validates :title, :content, :section, presence: true
end

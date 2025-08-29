class Article < ApplicationRecord
  has_many_attached :photos

  validates :title, :body, :photos, presence: true
end

class Restaurant < ApplicationRecord
  COLLECTION = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: COLLECTION }
  has_many :reviews, dependent: :destroy
end

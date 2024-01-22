class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  enum :category, ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, :address, :category, presence: true
end

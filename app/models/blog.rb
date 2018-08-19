class Blog < ApplicationRecord
  validates :content, length: { in: 1..140 }
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user
  belongs_to:user
end

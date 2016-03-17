class Product < ApplicationRecord
  has_attachment :photo

  belongs_to :user

  validates :user, presence: true
  validates :name, presence: true, uniqueness: true
  validates :url, presence: true, uniqueness: true
  validates :category, inclusion: { in: %w(tech education design),
      message: "%{value} is not a valid category" }
end

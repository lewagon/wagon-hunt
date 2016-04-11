class Upvote < ApplicationRecord
  belongs_to :user
  belongs_to :product

  validates :user, uniqueness: { scope: :product }
end

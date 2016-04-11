class User < ApplicationRecord
  has_many :products
  has_many :upvotes
  has_attachment :avatar

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def voted_for?(product)
    product.upvotes.where(user: self).any?
  end
end

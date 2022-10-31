class User < ApplicationRecord
  has_many :orders
  has_many :order_items, through: :orders
  has_one_attached :image
end

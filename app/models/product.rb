class Product < ApplicationRecord
  paginates_per 12
  belongs_to :category
  has_many :order_items
  has_many :carts, through: :order_items
  has_many :orders, through: :order_items
  has_one_attached :image do |attachable|
    attachable.variant :thumb, resize_to_limit: [100, 100]
  end
end

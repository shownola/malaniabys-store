class Product < ApplicationRecord

  has_many :product_categories
  has_many :categories, through: :product_categories

  has_many :variants, class_name: 'ProductVariant'

  validates :title, :price, presence: true
  # validates :cost, :sku, presence: true 
  validates :title, length: { maximum: 144, too_long: "%{count} character is the maximum allowed" }
  validates :description,  length: { maximum: 1000, too_long: "%(count) characters is the maximum allowed" }
  validates :price, numericality: true


end

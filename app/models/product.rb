class Product < ApplicationRecord
  has_and_belongs_to_many :categories
  has_one_attached :product_image
end

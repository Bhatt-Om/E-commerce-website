class Product < ApplicationRecord
  has_one_attached :image do |attachable|
    attachable.variant :thumb, resize_to_limit: [10, 10]
  end
end

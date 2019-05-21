class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true

  validates :price, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0, less_than: 10000000 }

  # validates :description, length: { in: 50..200 }
  validates :description, presence: true

  has_many :images
  belongs_to :supplier
  has_many :product_categories
  has_many :categories, through: :product_categories

  has_many :carted_products
  has_many :orders, through: :carted_products
  has_many :users, through: :carted_products


  def is_discounted?
    price < 45
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end

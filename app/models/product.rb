class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true

  validates :price, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0, less_than: 10000000 }

  validates :image_url, length: { maximum: 255 }
  # validates :description, length: { in: 50..200 }
  validates :description, presence: true


  def supplier
    # the purpose of this method is to return the Supplier Object associated with this Product
    Supplier.find_by(id: supplier_id)
  end

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

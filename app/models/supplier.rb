class Supplier < ApplicationRecord

  def products
    # the purpose this method is to return a collection all Products associated with this Supplier
    Product.where(supplier_id: self.id)
  end
end

class Api::ProductsController < ApplicationController
  def all_products
    @products = Product.all
    render 'all_products.json.jbuilder'
  end

  def first_product
    @product = Product.first
    render 'first_product.json.jbuilder'
  end

  def second_product
    @product = Product.find(2)
    render 'second_product.json.jbuilder'
  end

  def third_product
    @product = Product.find(3)
    render 'third_product.json.jbuilder'
  end
end

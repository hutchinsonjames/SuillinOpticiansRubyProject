class ProductsController < ApplicationController
  def index
    @products = Product.all
    @order_item = current_order.order_items.new
  end
  
  def men
    @products = Product.where(Category: "Men")
    @order_item = current_order.order_items.new
    render 'products/index'
  end
  
  def women
    @products = Product.where(Category: "Women")
    @order_item = current_order.order_items.new
    render 'products/index'
  end
end


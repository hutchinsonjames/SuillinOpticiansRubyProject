class CartsController < ApplicationController
  before_action :authenticate_user!

  def show
    @order_items = current_order.order_items
  end
  
  # Dummy Checkout Page
  def checkout
    @order_items = current_order.order_items
  end
end

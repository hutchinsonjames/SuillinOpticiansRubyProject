class Order < ActiveRecord::Base
  belongs_to :order_status
  has_many :order_items
  before_create :set_order_status
  before_save :update_subtotal

  def subtotal
    #This is where the cart order item price is calculated based on the quantity selected as can be seen by the old line of code below
    #order_items.collect { |oi| oi.valid? ? (oi.quantity * oi.unit_price) : 0 }.sum
    order_items.collect { |oi| oi.valid? ? (oi.unit_price) : 0 }.sum
  end
private
  def set_order_status
    self.order_status_id = 1
  end

  def update_subtotal
    self[:subtotal] = subtotal
  end
end

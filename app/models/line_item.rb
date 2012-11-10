class LineItem < ActiveRecord::Base
  attr_accessible :cart_id, :product_id
  belongs_to :product
belongs_to :cart
belongs_to :order

def total_price
    product.price * quantity
end
end
#li = LineItem.find(...)
#puts "This line item is for #{li.product.title}"
#cart = Cart.find(...)
#puts "This cart has #{cart.line_items.count} line items"
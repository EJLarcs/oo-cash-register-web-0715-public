require 'pry'

class CashRegister
 attr_accessor :total , :items

   def initialize(discount =0)
     @total = 0
     @discount = discount
     @items = []
   end

   def discount
     @discount
   end

   def total(*total)
     @total
   end


   def apply_discount
     if discount == 0
       "There is no discount to apply."
     else
       percentage = @discount.to_f/100
       percent_off = percentage * @total
       @total = @total - percent_off
       "After the discount, the total comes to $#{@total.to_i}."
     end
   end

   def add_item(item, price, quantity =1)
     quantity.times do
     @items << "#{item}"
     end
     total_price = price * quantity
     @total += total_price
   end

   def items
     @items
   end

end
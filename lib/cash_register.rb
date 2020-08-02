require 'pry'

class CashRegister 
  
  attr_accessor :total,:discount, :items
  
  def initialize(discount=0)
    @total = 0
    @discount = discount 
    @items = []
  end 
  
  def add_item(title,price,quantity=1)
    self.total += price*quantity
    quantity.times do
    @items << title
    end
  end
  
  def apply_discount
    if discount == 0 
      "There is no discount to apply."
    else discount  > 0 
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    end  
  end
  
  def void_the_last_transaction
  end
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end
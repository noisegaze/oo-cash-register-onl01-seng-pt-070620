require 'pry'

class CashRegister 
  
  attr_accessor :total,:discount
  
  def initialize(discount=0)
    @total = 0
    @discount = discount 
  end 
  
  def add_item(title,price,quantity=1)
    if quantity <= 1 
         self.total += price 
      elsif quantity > 1 
        self.total += price*quantity
      else 
        nil 
    end
  end
  
  def apply_discount
    if discount = 0 
      self.total 
      "There is no discount to apply"
    elsif discount  > 0 
      self.total -= discount
      "After the discount, your total is #{self.total}."
    else 
      nil 
    end  
  end
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end
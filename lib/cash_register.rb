class CashRegister
  
  attr_accessor :total :discount :price :item 
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(item, price, quantity = 1)
    
    @price = price
    @total += price * quantity
    
    if Quantity > 1 
      count = 0 
      while count < quantity 
        @items << item 
        count += 1
      end
    else
      @items << item
    end
    
  end
  
  def apply_discount
    if @discount > 0 
      @total -= 
  end
  
end

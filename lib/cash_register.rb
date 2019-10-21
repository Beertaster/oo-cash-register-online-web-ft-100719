class CashRegister
  
  attr_accessor :total, :discount, :price, :title 
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @title = []
  end
  
  def add_item(item, price, quantity = 1)
    @price = price
    @total += price * quantity
    if quantity > 1
      counter = 0
      while counter < quantity
        @title << item
        counter += 1
      end
    else
      @title << item
    end
  end
  
  def apply_discount
    if @discount > 0 
      @total -= (price * discount)/100
      return "After the discount, the total comes to $#{total}."
    else
      return "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    @total -= @price
  end
  
end

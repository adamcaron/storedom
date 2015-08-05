class CartItem < SimpleDelegator # looks at the class that's passed in, if it cannot find the method within CartItem, it goes to Item and looks for the method there.
  attr_reader :quantity

  def initialize(item, quantity=0)
    super(item) # goes to the parent class's definition for the method, in this case, initialize.
    @quantity = quantity
  end
end
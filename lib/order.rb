class Order
  def initialize restaurant
    @total = 0
    @restaurant = restaurant
  end

  def method_missing *args
    price = extract_numeric_price(@restaurant.dishes[args[0]])
    @total += args[1] * price
  end

  def total
    "£#{@total}"
  end

  private

  attr_writer :total

  def extract_numeric_price in_pounds
    in_pounds[1..-1].to_i
  end
end
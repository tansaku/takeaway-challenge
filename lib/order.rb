class Order
  def initialize
    @total = 0
  end

  def method_missing *args
    @total += args[1]
  end

  def total
    "£#{@total}"
  end

  private

  attr_writer :total
end
class Restaurant
  def dishes
    { chicken: '£1', fish: '£2' }
  end

  def order hash
    order = Order.new self
    hash.each { |k, v| order.send k, v }
    order
  end
end
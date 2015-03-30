class Restaurant
  def dishes
    { chicken: '£1', fish: '£1' }
  end

  def order hash
    order = Order.new
    hash.each { |k, v| order.send k, v }
    order
  end
end
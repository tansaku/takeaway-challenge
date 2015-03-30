require_relative 'order'

class Restaurant
  def dishes
    { chicken: '£1', fish: '£2' }
  end

  def order hash, expected_total
    order = Order.new self
    hash.each { |k, v| order.send k, v }
    send_text if order.total == expected_total
  end
end
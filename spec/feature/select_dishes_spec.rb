feature 'select dishes' do
  scenario 'select one dish' do
    restaurant = Restaurant.new
    order = restaurant.order(chicken: 3)
    expect(order.total).to eq('£3')
  end
  scenario 'select two dishes' do
    restaurant = Restaurant.new
    order = restaurant.order(chicken: 3, fish: 2)
    expect(order.total).to eq('£7')
  end
end
require 'restaurant'

describe Restaurant do
  it 'can list all dishes' do
    expect(subject.dishes).to eq(chicken: '£1', fish: '£1')
  end
  it 'can create single item order' do
    expect_any_instance_of(Order).to receive(:chicken).with(3)
    subject.order(chicken: 3)
  end
  it 'can create multi-item order' do
    expect_any_instance_of(Order).to receive(:chicken).with(3)
    expect_any_instance_of(Order).to receive(:fish).with(2)
    subject.order(chicken: 3, fish: 2)
  end
end
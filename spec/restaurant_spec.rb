require 'restaurant'

describe Restaurant do
  it 'can list all dishes' do
    expect(subject.dishes).to eq(chicken: '£1', fish: '£2')
  end
  it 'can create single item order' do
    expect(subject).to receive :send_text
    expect_any_instance_of(Order).to receive(:chicken).with(3)
    expect_any_instance_of(Order).to receive(:total).and_return('£3')
    subject.order({ chicken: 3 }, '£3')
  end
  it 'can create multi-item order' do
    expect(subject).to receive :send_text
    expect_any_instance_of(Order).to receive(:chicken).with(3)
    expect_any_instance_of(Order).to receive(:fish).with(2)
    expect_any_instance_of(Order).to receive(:total).and_return('£7')
    subject.order({ chicken: 3, fish: 2 }, '£7')
  end
end
require 'order'

describe Order do
  let(:restaurant) { double :resturant, dishes: { chicken: '£1', fish: '£2' } }
  subject { described_class.new restaurant }
  it { is_expected.to respond_to :total }

  it 'can return the number for an arbitrary dish' do
    expect(subject.chicken 3).to eq 3
  end

  it 'has an initial total of 0' do
    expect(subject.total).to eq '£0'
  end

  it 'can return total for particular restaurant' do
    subject.fish 4
    subject.chicken 5
    expect(subject.total).to eq '£13'
  end
end
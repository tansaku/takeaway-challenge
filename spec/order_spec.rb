require 'order'

describe Order do
  it { is_expected.to respond_to :total }

  it 'can return the number for an arbitrary dish' do
    expect(subject.chicken 3).to eq 3
  end

  it 'has an initial total of 0' do
    expect(subject.total).to eq '£0'
  end
end
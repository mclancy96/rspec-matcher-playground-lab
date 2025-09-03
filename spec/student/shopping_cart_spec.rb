# frozen_string_literal: true

describe ShoppingCart do
  let(:cart) {ShoppingCart.new}
  let(:bread){Item.new("Bread", 1.23)}

  it 'adds item to cart successfully' do
    cart.add_item(bread)

    expect(cart.total).to eql(1.23)
  end

  it 'returns empty when no items exist' do
    expect(cart).to be_empty
  end

  it 'increases total when an item is added' do
    expect {cart.add_item(bread)}.to change {cart.total}.from(0).to(1.23)
  end

  it 'raises error when checking out an empty cart' do
    expect {cart.checkout!}.to raise_error('Cart is empty')
  end

  it 'includes bread when bread is added' do
    cart.add_item(bread)

    expect(cart.items).to include(bread)
  end
end

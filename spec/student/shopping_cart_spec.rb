# frozen_string_literal: true

describe ShoppingCart do
  let(:cart) {ShoppingCart.new}

  it 'adds item to cart successfully' do
    cart.add_item({name: 'Bread', price: 1.23})

    expect(cart.total).to eql(1.23)
  end
end

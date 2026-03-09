import 'package:flutter_test/flutter_test.dart';
import 'package:pr_12_3/services/cart_service.dart';
import 'package:pr_12_3/models/product.dart';

void main() {
  late CartService cart;

  setUp(() {
    cart = CartService();
  });

  test('Add product to cart', () {
    const product = Product(id: '1', title: 'Phone', price: 500);

    cart.addProduct(product);

    expect(cart.items.length, 1);
  });

  test('Remove product from cart', () {
    const product = Product(id: '1', title: 'Phone', price: 500);

    cart.addProduct(product);
    cart.removeProduct(product.id);

    expect(cart.items.isEmpty, true);
  });

  test('Clear cart', () {
    const product = Product(id: '1', title: 'Phone', price: 500);

    cart.addProduct(product);
    cart.clearCart();

    expect(cart.items.length, 0);
  });
}

import 'package:flutter_test/flutter_test.dart';
import 'package:pr_12_3/models/cart_item.dart';

void main() {
  test('CartItem total price calculation', () {
    final item = CartItem(id: '1', title: 'Phone', price: 500, quantity: 2);

    expect(item.totalPrice, 1000);
  });
}

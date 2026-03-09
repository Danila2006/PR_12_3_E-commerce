import 'package:flutter_test/flutter_test.dart';
import 'package:pr_12_3/models/product.dart';

void main() {
  test('Product creation', () {
    const product = Product(id: '1', title: 'Phone', price: 1000);

    expect(product.id, '1');
    expect(product.title, 'Phone');
    expect(product.price, 1000);
  });
}

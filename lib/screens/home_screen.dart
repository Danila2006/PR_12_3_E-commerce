import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/product.dart';
import '../services/cart_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Product> products = const [
    Product(id: '1', title: 'Phone', price: 800),
    Product(id: '2', title: 'Laptop', price: 1200),
    Product(id: '3', title: 'Headphones', price: 200),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('E-Commerce'),
        actions: [
          Consumer<CartService>(
            builder: (_, cart, __) => Padding(
              padding: const EdgeInsets.all(8),
              child: Center(
                child: Text(
                  'Cart: ${cart.itemCount}',
                  style: const TextStyle(fontSize: 18),
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];

          return ListTile(
            title: Text(product.title),
            subtitle: Text('\$${product.price}'),
            trailing: ElevatedButton(
              onPressed: () {
                context.read<CartService>().addProduct(product);
              },
              child: const Text('Add'),
            ),
          );
        },
      ),
    );
  }
}

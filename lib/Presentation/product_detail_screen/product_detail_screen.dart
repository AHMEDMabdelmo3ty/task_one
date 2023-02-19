import 'package:flutter/material.dart';
import 'package:task_one/model/product_model.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  ProductDetailScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Product Details')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network(
            product.image!,
            height: 200,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(product.name!, style: Theme.of(context).textTheme.titleLarge),
                const SizedBox(height: 8.0),
                Text('${product.price} L.E', style: Theme.of(context).textTheme.titleMedium),
                const SizedBox(height: 16.0),
                Text(product.description!),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

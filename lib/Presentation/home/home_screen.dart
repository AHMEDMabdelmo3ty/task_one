import 'package:flutter/material.dart';
import 'package:task_one/Presentation/product_detail_screen/product_detail_screen.dart';
import 'package:task_one/model/product_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('Products')),
      body: Column(
        children: [
          Container(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return ListTile(

                  leading: Image.network(product.image!),
                  title: Text(product.name!),
                  subtitle: Text('${product.price} L.E'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductDetailScreen(product: product),
                      ),
                    );
                  },
                );
              },
            ),
            height: 250,
          ),
          CircularProgressIndicator()
        ],
      ),
    );
  }
}

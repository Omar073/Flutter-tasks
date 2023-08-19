import 'package:flutter/material.dart';
import 'ProductCard.dart';
import 'User.dart';

class SavedProductsScreen extends StatefulWidget {
  User user;
  // List<Product> SavedProducts;
  SavedProductsScreen({Key? key, required this.user}) : super(key: key);

  @override
  State<SavedProductsScreen> createState() => _SavedProductsScreenState();
}

class _SavedProductsScreenState extends State<SavedProductsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.add_shopping_cart),
        title: const Text("Shopping Cart"),
        centerTitle: true,
      ),
      body:
        SingleChildScrollView(
          child: Column(
            children: [
              Wrap(
                spacing: 10, // spacing between items horizontally
                runSpacing: 10, // spacing between items vertically
                children: widget.user.SavedProducts.map<Widget>((p) => ProductCard(product: p, user: widget.user)).toList(), // ! thoroughly understand this line
                // Pass both product and user to ProductCard
              ),
              const SizedBox(height: 65), // Add spacing below the wrapped items
            ],
          ),
        )
    );
  }
}

import 'package:flutter/material.dart';
import 'ProductScreen.dart';
import 'Product.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    Product p8 = Product(name: "Product 8", imageURL: "assets/images/hoodie2.jpeg", price: 80, rating: 4.8);
    Product p9 = Product(name: "Product 9", imageURL: "assets/images/shoe1.jpg", price: 50, rating: 3.8);
    Product p10 = Product(name: "Product 10", imageURL: "assets/images/shoe2.jpeg", price: 10, rating: 1.8);
    List<Product> products = [p8, p9, p10];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.shopping_bag, ),
          title: const Text("Product Screen"),
        ),
        body: SingleChildScrollView(
          child: Wrap(
            spacing: 10, // spacing between items horizontally
            runSpacing: 10, // spacing between items vertically
            children: products.map((p) => ProductScreen(product: p)).toList(),
          ),
        ),
      )
    );
  }
}


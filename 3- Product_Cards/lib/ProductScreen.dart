import 'package:flutter/material.dart';
import 'Product.dart';

class ProductScreen extends StatefulWidget {
  Product product;
  ProductScreen({Key? key, required this.product}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(widget.product.imageURL, width: double.infinity),
        Container(
            child: Text(widget.product.name),
            padding: const EdgeInsets.all(8.0),
            // color: Colors.orangeAccent,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.orangeAccent,
            ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Price: ${widget.product.price} EGP'),
              Row(
                children: [
                  Text('Rating: ${widget.product.rating}'),
                  const SizedBox(width: 3), // Add a small space between the rating and the star icon
                  const Icon(Icons.star, color: Colors.orange, size: 20), // Add the star icon
                ],
              ),
            ],
          ),
        ),

      ],
    );
  }
}

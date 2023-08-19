import 'package:flutter/material.dart';
import 'Product.dart';
import 'User.dart';

class ProductCard extends StatefulWidget {
  Product product;
  User user;
  ProductCard({Key? key, required this.product, required this.user}) : super(key: key);
  // ProductCard({Key? key}) : super(key: key);

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  late bool isProductSaved; // Track whether the product is saved or not

  @override
  void initState() {
    super.initState();
    isProductSaved = widget.user.isProductSaved(widget.product);
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0).copyWith(bottom: 12.0),
          child: Image.asset(widget.product.imageURL, width: double.infinity, fit: BoxFit.cover,),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32.0),
              color: Colors.orangeAccent,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Center(child: Text(widget.product.name)),
                ),
                IconButton(
                  icon: Icon(
                    isProductSaved ? Icons.favorite : Icons.favorite_border,
                    color: Colors.red,
                  ),
                  onPressed: () {
                    setState(() {
                      isProductSaved = !isProductSaved; // Toggle the saved state
                      if (isProductSaved) {
                        // Add the product to the user's saved products
                        // widget.product.addToSavedProducts();
                        widget.user.addToSavedProducts(widget.product);
                      } else {
                        // Remove the product from the user's saved products
                        widget.user.removeFromSavedProducts(widget.product);
                      }
                    });
                  },
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0).copyWith(top: 8.0),
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



// try to make each product container smaller so that 2 products would fit in each row but it would still be scrollable

/*
class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {


    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Image.asset(widget.product.imageURL, width: double.infinity, fit: BoxFit.cover,),
          // next step is to try and make 2 cards fit in each row
        ),
        Container(
          padding: const EdgeInsets.all(11.0),
          // color: Colors.orangeAccent,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.orangeAccent,
          ),
          child: Text(widget.product.name),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0).copyWith(top: 8.0),
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
*/
// import 'package:flutter/material.dart';
// import 'Product.dart';
// import 'User.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
//
// class ProductCard extends StatefulWidget {
//   Product product;
//   User user;
//   final VoidCallback onChange;
//   ProductCard(
//       {Key? key,
//       required this.product,
//       required this.user,
//       required this.onChange})
//       : super(key: key);
//   // ProductCard({Key? key}) : super(key: key);
//
//   @override
//   State<ProductCard> createState() => _ProductCardState();
// }
//
// class _ProductCardState extends State<ProductCard> {
//
//
//   @override
//   Widget build(BuildContext context) {
//     for (Product product in widget.user.ShoppingCart) {
//       print(product.name);
//     }
//     return Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 12.0)
//               .copyWith(bottom: 12.0),
//           child: Image.asset(
//             widget.product.imageURL,
//             width: double.infinity,
//             fit: BoxFit.cover,
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 8),
//           child: Container(
//             padding: const EdgeInsets.symmetric(horizontal: 8),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(32.0),
//               color: Colors.grey[300],
//             ),
//             child: Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(left: 8.0),
//                       child: Center(child: Text(widget.product.name)),
//                     ),
//                     IconButton(
//                       icon: Icon(
//                         widget.user.ShoppingCart.contains(widget.product)
//                             ? Icons.shopping_cart
//                             : Icons.shopping_cart_outlined,
//                         color: Colors.orangeAccent,
//                       ),
//                       onPressed: () {
//                         setState(() {
//                           // widget.isProductSaved = !widget.isProductSaved; // Toggle the saved state
//                           if (widget.user.ShoppingCart.contains(widget.product)) {
//                             // Add the product to the user's saved products
//                             widget.user.addToShoppingCart(widget.product);
//                             widget.user.addToCartSubtotal(widget.product.price);
//                           } else {
//                             // Remove the product from the user's saved products
//                             widget.user.removeFromShoppingCart(widget.product);
//                             widget.user.removeFromCartSubtotal(widget.product.price);
//                           }
//                         });
//
//                         widget.onChange(); // Call onChange after the state has been updated
//                       },
//                     ),
//                   ],
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 8.0).copyWith(bottom: 10.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text('Price: ${widget.product.price} EGP'),
//                       Row(
//                         children: [
//                           // Text('Rating: ${widget.product.rating}'),
//                           // const SizedBox(
//                           //     width:
//                           //         3), // Add a small space between the rating and the star icon
//                           // const Icon(Icons.star,
//                           //     color: Colors.orange,
//                           //     size: 20), // Add the star icon
//                           RatingBarIndicator(
//                             rating: widget.product.rating,
//                             itemCount: 5,
//                             itemSize: 17.0,
//                             physics: const BouncingScrollPhysics(),
//                             itemBuilder: (context, _) =>
//                             const Icon(
//                               Icons.star,
//                               color: Colors.amber,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

// try to make each product container smaller so that 2 products would fit in each row but it would still be scrollable


import 'package:flutter/material.dart';
import 'Product.dart';
import 'User.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductCard extends StatefulWidget {
  Product product;
  User user;
  final VoidCallback onChange;
  ProductCard(
      {Key? key,
      required this.product,
      required this.user,
      required this.onChange})
      : super(key: key);
  // ProductCard({Key? key}) : super(key: key);

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {


  @override
  Widget build(BuildContext context) {
    for (Product product in widget.user.ShoppingCart) {
      print(product.name);
    }
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0)
              .copyWith(bottom: 12.0),
          child: Image.asset(
            widget.product.imageURL,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32.0),
              color: Colors.grey[300],
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Center(child: Text(widget.product.name, style: const TextStyle(fontWeight: FontWeight.bold),)),
                    ),
                    IconButton(
                      icon: Icon(
                        widget.user.ShoppingCart.contains(widget.product)
                            ? Icons.shopping_cart
                            : Icons.shopping_cart_outlined,
                        color: Colors.orangeAccent,
                      ),
                      onPressed: () {
                        setState(() {
                          // widget.isProductSaved = !widget.isProductSaved; // Toggle the saved state
                          if (!widget.user.ShoppingCart.contains(widget.product)) {
                            // Add the product to the user's saved products
                            widget.user.addToShoppingCart(widget.product);
                            widget.user.addToCartSubtotal(widget.product.price);
                          } else {
                            // Remove the product from the user's saved products
                            widget.user.removeFromShoppingCart(widget.product);
                            widget.user.removeFromCartSubtotal(widget.product.price);
                          }
                        });

                        widget.onChange(); // Call onChange after the state has been updated
                      },
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0).copyWith(bottom: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Price: ${widget.product.price} EGP', style: const TextStyle(fontWeight: FontWeight.bold),),
                      Row(
                        children: [
                          // Text('Rating: ${widget.product.rating}'),
                          // const SizedBox(
                          //     width:
                          //         3), // Add a small space between the rating and the star icon
                          // const Icon(Icons.star,
                          //     color: Colors.orange,
                          //     size: 20), // Add the star icon
                          RatingBarIndicator(
                            rating: widget.product.rating,
                            itemCount: 5,
                            itemSize: 17.0,
                            physics: const BouncingScrollPhysics(),
                            itemBuilder: (context, _) =>
                            const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}


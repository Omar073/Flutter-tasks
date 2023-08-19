import 'Product.dart';

class User{

  String name;
  String email;
  String password;
  List<Product> SavedProducts = [];
  double CartSubtotal=0;

  User({
    required this.name,
    required this.email,
    required this.password,
    required this.SavedProducts
  });

  void addToSavedProducts(Product product) {
    if (!SavedProducts.contains(product)) {
      SavedProducts.add(product);
    }
  }

  void removeFromSavedProducts(Product product) {
    SavedProducts.remove(product);
  }

  bool isProductSaved(Product product) {
    return SavedProducts.contains(product);
  }

  // double getCartSubtotal(){
  //   double total =0;
  //   for(Product product in SavedProducts){
  //     total += product.price;
  //   }
  //   return total;
  // }
  // TODO: we can replaced this fn with an attribute of the user class that is changed each time a product is added or removed

  void addToCartSubtotal(double price){
    CartSubtotal +=price;
  }

  void removeFromCartSubtotal(double price){
    CartSubtotal -=price;
  }
}

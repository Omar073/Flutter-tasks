import 'Product.dart';

class User{

  String name;
  String email;
  String password;
  List<Product> SavedProducts = [];

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
}

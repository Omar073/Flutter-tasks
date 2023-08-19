import 'package:flutter/foundation.dart';
import 'Product.dart';
import 'User.dart';

class UserState extends ChangeNotifier {
  User _user;

  User get user => _user;

  UserState(this._user);

  void addToSavedProducts(Product product) {
    _user.addToSavedProducts(product);
    notifyListeners();
  }

  void removeFromSavedProducts(Product product) {
    _user.removeFromSavedProducts(product);
    notifyListeners();
  }
}

import 'package:flutter/foundation.dart';

import 'coffee.dart';

class CoffeeCart extends ChangeNotifier with DiagnosticableTreeMixin {
  final List<Coffee> _coffeeCart = [];

  /// get shopping cart list
  List<Coffee> get coffeeList => _coffeeCart;

  /// add coffee in cart
  void add(Coffee coffee) {
    _coffeeCart.add(coffee);
    notifyListeners();
  }

  /// delete coffee in cart
  void remove(Coffee coffee) {
    _coffeeCart.remove(coffee);
    notifyListeners();
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    // list all the properties of your class here.
    // See the documentation of debugFillProperties for more information.
    properties.add(IterableProperty("coffeeShop", coffeeList));
  }
}

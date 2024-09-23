import 'package:flutter/foundation.dart';

import 'coffee.dart';

class CoffeeShop extends ChangeNotifier with DiagnosticableTreeMixin {
  final List<Coffee> _coffeeShop = [
    /// Flat White
    Coffee(name: "Flat White", imagePath: "assets/images/latte.png", price: 40.00),

    /// Espresso
    Coffee(name: "Espresso", imagePath: "assets/images/espresso.png", price: 22.00),

    /// Ice americano
    Coffee(name: "Ice Americano", imagePath: "assets/images/iced.png", price: 30.00),
  ];

  List<Coffee> get coffeeList => _coffeeShop;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    // list all the properties of your class here.
    // See the documentation of debugFillProperties for more information.
    properties.add(IterableProperty("coffeeShop", coffeeList));
  }
}

import 'package:flutter/foundation.dart';

/// coffee entity
class Coffee with DiagnosticableTreeMixin {
  Coffee({required this.name, required this.imagePath, required this.price});

  /// name
  final String name;

  /// icon
  final String imagePath;

  /// price
  final double price;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    // list all the properties of your class here.
    // See the documentation of debugFillProperties for more information.
    properties.add(StringProperty("name", name));
    properties.add(StringProperty("imagePath", imagePath));
    properties.add(DoubleProperty("price", price));
  }
}

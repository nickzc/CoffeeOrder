import 'package:coffee/models/coffee.dart';
import 'package:coffee/models/coffee_cart.dart';
import 'package:coffee/screens/cart/components/coffee_list.dart';
import 'package:coffee/screens/cart/components/order_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShoppingCart extends StatelessWidget {
  final CoffeeCart coffeeCart;

  const ShoppingCart({super.key, required this.coffeeCart});

  void removeFromCart(BuildContext context, Coffee coffee) {
    Provider.of<CoffeeCart>(context, listen: false).remove(coffee);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Expanded(
                child: CoffeeList(
                    cart: coffeeCart,
                    onRemove: (coffee) => removeFromCart(context, coffee))),
            const OrderButton()
          ],
        ));
  }
}

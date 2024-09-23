import 'package:coffee/models/coffee_cart.dart';
import 'package:coffee/screens/cart/components/empty_shopping_cart.dart';
import 'package:coffee/screens/cart/components/shopping_cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  Widget getCartPage(BuildContext context, CoffeeCart coffeeCart) {
    bool isEmpty = coffeeCart.coffeeList.isEmpty;
    if (isEmpty) {
      return const EmptyShoppingCart();
    } else {
      return ShoppingCart(coffeeCart: coffeeCart);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeCart>(
        builder: (context, coffeeCart, child) => getCartPage(context, coffeeCart));
  }
}

import 'package:coffee/components/coffee_tile.dart';
import 'package:coffee/models/coffee.dart';
import 'package:coffee/models/coffee_shop.dart';
import 'package:flutter/material.dart';

class CoffeeList extends StatelessWidget {
  final void Function(Coffee coffee) onAddToCart;
  final CoffeeShop coffeeShop;

  const CoffeeList(
      {super.key, required this.coffeeShop, required this.onAddToCart});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: coffeeShop.coffeeList.length,
        itemBuilder: (context, index) {
          Coffee eachCoffee = coffeeShop.coffeeList[index];
          return CoffeeTile(
            coffee: eachCoffee,
            icon: const Icon(Icons.add),
            onPressed: () => onAddToCart(eachCoffee),
          );
        });
  }
}

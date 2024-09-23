import 'package:coffee/components/coffee_tile.dart';
import 'package:coffee/models/coffee.dart';
import 'package:coffee/models/coffee_cart.dart';
import 'package:flutter/material.dart';

class CoffeeList extends StatelessWidget {
  final CoffeeCart cart;
  final Function(Coffee coffee) onRemove;

  const CoffeeList({super.key, required this.cart, required this.onRemove});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: cart.coffeeList.length,
        itemBuilder: (context, index) {
          Coffee eachCoffee = cart.coffeeList[index];
          return CoffeeTile(
            coffee: eachCoffee,
            icon: const Icon(Icons.delete),
            onPressed: () => onRemove(eachCoffee),
          );
        });
  }
}

import 'package:coffee/components/dialog.dart';
import 'package:coffee/models/coffee.dart';
import 'package:coffee/models/coffee_cart.dart';
import 'package:coffee/models/coffee_shop.dart';
import 'package:coffee/screens/home/components/coffee_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  void addToCart(BuildContext context, Coffee coffee) {
    Provider.of<CoffeeCart>(context, listen: false).add(coffee);
    createDialog(context, "Added successfully, waiting for you in the cart~", delaySecond: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(children: [
          const Text(
            "What kind of coffee do you want?",
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 25,
          ),
          Expanded(
              child: Consumer<CoffeeShop>(
                  builder: (context, value, child) => CoffeeList(
                      coffeeShop: value,
                      onAddToCart: (coffee) => addToCart(context, coffee))))
        ]));
  }
}

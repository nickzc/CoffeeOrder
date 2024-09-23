import 'package:coffee/const/colors.dart';
import 'package:coffee/screens/cart/components/body.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  static String router = "/cart";

  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey[100],
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: const Body(),
    );
  }
}

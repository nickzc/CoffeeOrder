import 'package:flutter/material.dart';

class EmptyShoppingCart extends StatelessWidget {
  const EmptyShoppingCart({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Center(
      child: Column(
        children: [
          SizedBox(height: size.height * 0.2),
          Image.asset(
            "assets/images/carts.png",
            width: 80,
            height: 80,
          ),
          const SizedBox(
            height: 30,
          ),
          const Text("Your cart is empty, go have a look around!")
        ],
      ),
    );
  }
}

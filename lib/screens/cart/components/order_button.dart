import 'package:flutter/material.dart';

class OrderButton extends StatelessWidget {
  const OrderButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.all(25),
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.brown, borderRadius: BorderRadius.circular(12)),
        child: const Center(
          child: Text(
            "place an order",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

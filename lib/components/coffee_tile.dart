import 'package:coffee/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeTile extends StatefulWidget {
  final Icon icon;
  final Coffee coffee;
  final void Function()? onPressed;

  const CoffeeTile(
      {super.key,
      required this.coffee,
      required this.icon,
      required this.onPressed});

  @override
  State<CoffeeTile> createState() => _CoffeeTileState();
}

class _CoffeeTileState extends State<CoffeeTile> {
  @override
  Widget build(BuildContext context) {
    Coffee coffee = widget.coffee;
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
      child: ListTile(
        title: Text(coffee.name),
        subtitle: Text(coffee.price.toString()),
        leading: Image.asset(coffee.imagePath),
        trailing: IconButton(icon: widget.icon, onPressed: widget.onPressed),
      ),
    );
  }
}

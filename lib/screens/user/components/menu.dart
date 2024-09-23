import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          MenuItem(
            icon: "assets/images/order.png",
            title: "My Order",
          ),
          MenuItem(
            icon: "assets/images/setting.png",
            title: "Setting",
          ),
          MenuItem(
            icon: "assets/images/about.png",
            title: "About",
          ),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  const MenuItem({
    super.key,
    required this.title,
    required this.icon,
  });

  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: Colors.grey.shade200,
                ),
                child: Image.asset(
                  icon,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 10),
              Text(title),
            ],
          ),
          Icon(
            Icons.arrow_forward_ios,
            size: 12,
          ),
        ],
      ),
    );
  }
}

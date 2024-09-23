import 'package:coffee/const/colors.dart';
import 'package:coffee/screens/user/components/body.dart';
import 'package:flutter/material.dart';

class UserCenter extends StatelessWidget {
  static String router = "/userCenter";

  const UserCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: appbarColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.email_outlined),
          )
        ],
      ),
      body: const Body(),
    );
  }
}

import 'package:coffee/screens/user/components/balance.dart';
import 'package:coffee/screens/user/components/menu.dart';
import 'package:coffee/screens/user/components/medal.dart';
import 'package:coffee/screens/user/components/user_avatar.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: HeroUserAvatar(
              photo: "assets/images/avatar.jpg",
              radius: 64,
              parentBuild: (child) {
                return Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                      color: Color(0xfff1e19c), shape: BoxShape.circle),
                  child: child,
                );
              },
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Balance(
                      balance: 5500.0,
                    ),
                    Medal(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Menu(),
              ),
              SizedBox(height: 20)
            ],
          ),
        ],
      ),
    );
  }
}

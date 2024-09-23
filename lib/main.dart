import 'package:coffee/const/colors.dart';
import 'package:coffee/models/coffee_cart.dart';
import 'package:coffee/models/coffee_shop.dart';
import 'package:coffee/screens/cart/cart_page.dart';
import 'package:coffee/screens/home/home_page.dart';
import 'package:coffee/screens/user/user_center.dart';
import 'package:coffee/screens/welcome/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => CoffeeShop()),
          ChangeNotifierProvider(create: (context) => CoffeeCart())
        ],
        child: MaterialApp(
          title: "Coffee Shop",
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              primaryColor: kPrimaryColor,
              scaffoldBackgroundColor: Colors.white),
          home: WelcomePage(),
          routes: {
            HomePage.router: (context) => const HomePage(),
            CartPage.router: (context) => const CartPage(),
            UserCenter.router: (context) => const UserCenter(),
          },
        ));
  }
}

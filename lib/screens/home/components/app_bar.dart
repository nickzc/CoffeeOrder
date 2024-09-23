import 'package:coffee/const/colors.dart';
import 'package:coffee/screens/cart/cart_page.dart';
import 'package:coffee/screens/user/components/user_avatar.dart';
import 'package:coffee/screens/user/user_center.dart';
import 'package:flutter/material.dart';

AppBar homeAppBar(BuildContext context, GlobalKey<ScaffoldState> scaffoldKey) {
  return AppBar(
    centerTitle: true,
    backgroundColor: appbarColor,
    elevation: 0,

    /// In the appbar, the child component is given additional constraints by the parent
    /// component through a ConstrainedBox, and the size of the button component is fixed.
    /// At this point, the size settings of the child component are ineffective,
    /// but the constraints from the parent can be removed using UnconstrainedBox.
    leading: UnconstrainedBox(
      child: HeroUserAvatar(
        photo: "assets/images/avatar.jpg",
        radius: 20,
        onTap: () {
          Navigator.of(context).push(PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) =>
                const UserCenter(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: CurvedAnimation(
                  parent: animation,
                  curve: Curves.fastOutSlowIn,
                ),
                child: child,
              );
            },
          ));
        },
      ),
    ),
    title: RichText(
      text: TextSpan(
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(fontWeight: FontWeight.bold),
          children: [
            TextSpan(text: "Coffee", style: TextStyle(color: kSecondaryColor)),
            TextSpan(text: "Shop", style: TextStyle(color: kPrimaryColor))
          ]),
    ),
    actions: [
      IconButton(
        icon: const Icon(Icons.shopping_cart),
        onPressed: () {
          Navigator.of(context).pushNamed(CartPage.router);
        },
      )
    ],
  );
}

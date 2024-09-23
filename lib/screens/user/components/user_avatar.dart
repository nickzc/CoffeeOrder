import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    super.key,
    required this.photo,
    required this.radius,
  });

  final String photo;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: AssetImage(photo),
    );
  }
}

class HeroUserAvatar extends StatelessWidget {
  const HeroUserAvatar({
    super.key,
    required this.photo,
    this.onTap,
    required this.radius,
    this.parentBuild,
  });

  final String photo;
  final VoidCallback? onTap;
  final double radius;
  final Widget Function(Widget child)? parentBuild;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius * 2,
      height: radius * 2,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: Hero(
        tag: photo,
        child: parentBuild != null
            ? parentBuild!(buildGestureDetector())
            : buildGestureDetector(),
      ),
    );
  }

  GestureDetector buildGestureDetector() {
    return GestureDetector(
        onTap: onTap,
        child: UserAvatar(
          radius: radius,
          photo: photo,
        ));
  }
}

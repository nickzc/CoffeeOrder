import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Logo extends StatelessWidget {
  const Logo({super.key, required this.controller});

  final AnimationController controller;

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: controller,
      child: LottieBuilder.asset(
        "assets/lottie/coffee_animation.json",
        controller: controller,
        frameRate: FrameRate.max,
        animate: false,
        height: 100,
        width: 100,
      ),
    );
  }
}

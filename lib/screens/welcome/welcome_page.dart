library welcome;

import 'package:coffee/const/colors.dart';
import 'package:coffee/screens/welcome/components/first_letter.dart';
import 'package:coffee/screens/welcome/components/reminder_letter.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomeState();
}

class _WelcomeState extends State<WelcomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _lottieAnimation;
  final Duration delay = Duration(milliseconds: 500);
  final Duration duration = Duration(milliseconds: 1000);
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      color: backgroundColor,
      child: Column(
        children: [
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FirstLetter(
                duration: duration,
                expanded: expanded,
              ),
              ReminderLetter(
                duration: duration,
                expanded: expanded,
                controller: _lottieAnimation,
              ),
            ],
          ),
          Spacer(),
          FadeTransition(
            opacity: CurvedAnimation(
              parent: _lottieAnimation,
              curve: Curves.fastOutSlowIn,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 50),
              child: Text(
                "I Love Coffee",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    ));
  }

  @override
  void initState() {
    super.initState();
    _lottieAnimation = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );

    Future.delayed(duration)
        .then((value) => setState(() => expanded = true))
        .then((value) => duration)
        .then((value) => Future.delayed(duration).then((value) =>
            _lottieAnimation.forward().then((value) => goToHomePage())));

    // Future.delayed(const Duration(seconds: 3), goToHomePage);
  }

  void goToHomePage() {
    Navigator.pushReplacementNamed(context, "/homepage");
  }
}

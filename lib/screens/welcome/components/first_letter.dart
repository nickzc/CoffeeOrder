import 'package:coffee/const/colors.dart';
import 'package:flutter/material.dart';

class FirstLetter extends StatelessWidget {
  const FirstLetter({
    super.key,
    required this.duration,
    required this.expanded,
  });

  final Duration duration;
  final bool expanded;

  @override
  Widget build(BuildContext context) {
    debugPrint("FirstLetter build, expanded：$expanded}");
    return AnimatedDefaultTextStyle(
      duration: duration,
      curve: Curves.fastOutSlowIn,
      style: TextStyle(
        color: kPrimaryColor,
        fontSize: !expanded ? 178 : 50,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w600,
      ),
      child: const Text("C"),
    );
  }
}

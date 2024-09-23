import 'package:coffee/const/colors.dart';
import 'package:coffee/screens/welcome/components/logo.dart';
import 'package:flutter/material.dart';

class ReminderLetter extends StatelessWidget {
  const ReminderLetter({
    super.key,
    required this.duration,
    required this.expanded,
    required this.controller,
  });

  final Duration duration;
  final bool expanded;
  final AnimationController controller;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstCurve: Curves.fastOutSlowIn,
      crossFadeState:
          !expanded ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      duration: duration,
      firstChild: Container(),
      secondChild: _remainder(),
      alignment: Alignment.centerLeft,
      sizeCurve: Curves.easeInOut,
    );
  }

  Widget _remainder() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "OFFEE",
          style: TextStyle(
            color: kSecondaryColor,
            fontSize: 50,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
          ),
        ),
        Stack(
          children: [
            const SizedBox(
              height: 100,
              width: 100,
            ),
            Positioned(
                bottom: 11,
                child: Logo(
                  controller: controller,
                ))
          ],
        )
      ],
    );
  }
}

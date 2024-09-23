import 'package:flutter/material.dart';

void createDialog(BuildContext context, String msg,
    {bool autoClose = true, int delaySecond = 3}) {
  showDialog(
      context: context,
      builder: (context) {
        if (autoClose) {
          return FutureBuilder(
            future: Future.delayed(Duration(seconds: delaySecond))
                .then((value) => true),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                Navigator.of(context).pop();
              }
              return Dialog(
                msg: msg,
              );
            },
          );
        } else {
          return Dialog(
            msg: msg,
          );
        }
      });
}

class Dialog extends StatelessWidget {
  final String msg;

  const Dialog({
    super.key,
    required this.msg,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Icon(Icons.done),
      content: Text(
        msg,
        style: Theme.of(context).textTheme.bodyMedium,
        textAlign: TextAlign.center,
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
    );
  }
}

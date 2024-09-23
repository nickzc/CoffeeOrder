import 'package:flutter/material.dart';

class Balance extends StatelessWidget {
  const Balance({
    super.key,
    required this.balance,
  });

  final double balance;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        height: 126.0,
        margin: const EdgeInsets.only(right: 10),
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Balance",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    )),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.monetization_on_outlined,
                  size: 12,
                  color: Colors.yellow.shade900,
                ),
                Text(
                  balance.toString(),
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

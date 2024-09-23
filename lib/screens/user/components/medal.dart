import 'package:flutter/material.dart';

class Medal extends StatelessWidget {
  const Medal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
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
                Text("Trophy",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    )),
                Row(
                  children: [
                    Text(
                      "5/7",
                      style: TextStyle(fontSize: 18),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 12,
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(10),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  EachTool(image: "assets/images/shengdanbaozhu.png"),
                  EachTool(image: "assets/images/shengdanlazhu.png"),
                  EachTool(image: "assets/images/shengdannihongdeng.png"),
                  EachTool(image: "assets/images/shengdanqiu.png"),
                  EachTool(image: "assets/images/shengdanrili.png"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class EachTool extends StatelessWidget {
  const EachTool({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      height: 40,
      width: 40,
      decoration:
          const BoxDecoration(color: Color(0xfffdf3e7), shape: BoxShape.circle),
      child: Image.asset(
        image,
        fit: BoxFit.cover,
      ),
    );
  }
}

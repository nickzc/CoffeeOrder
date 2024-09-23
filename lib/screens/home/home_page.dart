import 'package:coffee/const/colors.dart';
import 'package:coffee/screens/home/components/app_bar.dart';
import 'package:coffee/screens/home/components/body.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static String router = "/homepage";

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
        key: scaffoldKey,
        appBar: homeAppBar(context, scaffoldKey),
        backgroundColor: backgroundColor,
        body: const Body());
  }
}

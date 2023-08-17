import 'package:flutter/material.dart';

import 'package:responsive_fltter/pages/homescreenpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, p1) => Scaffold(
          body: PageView(
        children: [HomeScreen()],
      )),
    );
  }
}

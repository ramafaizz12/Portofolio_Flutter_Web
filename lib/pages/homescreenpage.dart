import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, p1) => SingleChildScrollView(
        child: Column(
          children: [
            const Headerr(),
            Padding(
              padding: EdgeInsets.only(top: p1.maxHeight * 0.05),
              child: const Column(
                children: [Section1(), CvSection()],
              ),
            )
          ],
        ),
      ),
    );
  }
}

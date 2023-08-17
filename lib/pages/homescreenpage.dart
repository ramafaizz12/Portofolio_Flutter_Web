import 'package:flutter/material.dart';

import 'package:responsive_fltter/shared/theme.dart';
import 'package:responsive_fltter/widgets/header.dart';
import 'package:responsive_fltter/widgets/section1.dart';

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
              child: Column(
                children: [
                  const Section1(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            "BETTER DESIGN",
                            style: TextStyle(
                                fontSize: 20,
                                color: warnaputih,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: p1.maxHeight * 0.02,
                          ),
                          Text(
                            "BETTER EXPERIENCES",
                            style: TextStyle(
                                fontSize: 20,
                                color: warnaputih,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        width: p1.maxWidth * 0.3,
                      ),
                      InkWell(
                          onTap: () {},
                          child: Text(
                            "DOWNLOAD CV",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.green,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

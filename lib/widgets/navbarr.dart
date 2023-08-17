import 'package:flutter/material.dart';
import 'package:responsive_fltter/shared/theme.dart';
import 'package:responsive_framework/responsive_framework.dart';

class Navbarr extends StatefulWidget {
  const Navbarr({super.key});

  @override
  State<Navbarr> createState() => _NavbarrState();
}

class _NavbarrState extends State<Navbarr> {
  bool warna = false;
  @override
  Widget build(BuildContext context) {
    List nama = [
      'HOME',
      'MY INTRO',
      'SERVICES',
      'PORTOFOLIO',
      'TESTIMONIALS',
      'BLOGS',
      'HIRE ME'
    ];
    return ResponsiveRowColumn(
        rowSpacing: 12,
        columnSpacing: 12,
        layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
            ? ResponsiveRowColumnType.COLUMN
            : ResponsiveRowColumnType.ROW,
        children: nama
            .map((e) => ResponsiveRowColumnItem(
                    child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  onExit: (event) {
                    setState(() {
                      warna = false;
                    });
                  },
                  onEnter: (event) {
                    setState(() {
                      warna = true;
                    });
                  },
                  child: Text(
                    e.toString(),
                    style: TextStyle(
                        color: warna != true ? Colors.grey : warnaputih),
                  ),
                )))
            .toList());
  }
}

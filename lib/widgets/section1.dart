part of 'widgets.dart';

class Section1 extends StatelessWidget {
  const Section1({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveRowColumn(
      rowMainAxisAlignment: MainAxisAlignment.center,
      rowCrossAxisAlignment: CrossAxisAlignment.center,
      columnMainAxisAlignment: MainAxisAlignment.center,
      columnCrossAxisAlignment: CrossAxisAlignment.center,
      columnPadding: const EdgeInsets.only(left: 13),
      rowSpacing: 60,
      columnSpacing: 30,
      layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
          ? ResponsiveRowColumnType.COLUMN
          : ResponsiveRowColumnType.ROW,
      children: [
        ResponsiveRowColumnItem(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("FLUTTER DEVELOPER",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
                    color: Colors.green)),
            const SizedBox(
              height: 9,
            ),
            const Text(
              "NURFAIS RAMADHAN",
              style: TextStyle(
                  fontWeight: FontWeight.w900, fontSize: 30, color: warnaputih),
            ),
            const Text(
              "Full-stack Developer, based in Makassar",
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                  color: Colors.grey),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Butuh Pembuatan Aplikasi ?",
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                      color: Colors.grey),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Ada Project ? Let's Talk",
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 17,
                          color: Colors.white),
                    ))
              ],
            )
          ],
        )),
        ResponsiveRowColumnItem(
            child: CircleAvatar(
          backgroundImage: const AssetImage('assets/profile.png'),
          radius:
              ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? 170 : 250,
        )),
      ],
    );
  }
}

part of 'widgets.dart';

class CvSection extends StatelessWidget {
  const CvSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, p1) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Column(
            children: [
              Text(
                "BETTER DESIGN",
                style: TextStyle(
                    fontSize: 20,
                    color: warnaputih,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 7,
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
              child: const Text(
                "DOWNLOAD CV",
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.green,
                    fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}

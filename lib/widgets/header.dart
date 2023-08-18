part of 'widgets.dart';

class Headerr extends StatelessWidget {
  const Headerr({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, p1) => Padding(
        padding: EdgeInsets.all(p1.maxWidth * 0.02),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/brand1.png',
              fit: BoxFit.fill,
              width: 70,
              height: 50,
            ),
            // Condition when screen width shrink
            ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                ? FloatingActionButton(
                    backgroundColor: Colors.transparent,
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => const Center(child: Navbarr()),
                      );
                    },
                    child: const Icon(Icons.menu),
                  )
                : const Navbarr()
          ],
        ),
      ),
    );
  }
}

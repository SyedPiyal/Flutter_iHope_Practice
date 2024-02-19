import 'package:flutter/material.dart';

class HomeScreenCardWidget extends StatelessWidget {
  final String title1;
  final String title2;
  final String image;
  final List<Color> backgroundColors;
  final TextStyle titleStyle;
  final VoidCallback onTap;

  const HomeScreenCardWidget({
    Key? key,
    required this.title1,
    required this.title2,
    required this.image,
    required this.backgroundColors,
    required this.titleStyle,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      elevation: 6.0,
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(14),
      child: Ink(
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(14),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(14),
          onTap: onTap,
          splashColor: Theme.of(context).splashColor, // Customize the splash color
          child: Card(
            elevation: 6,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            child: Container(
              height: 170,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: backgroundColors,
                ),
                borderRadius: BorderRadius.circular(14),
              ),
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(image, width: 45, height: 45),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    title1,
                    style: titleStyle,
                  ),
                  Text(
                    title2,
                    style: titleStyle,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

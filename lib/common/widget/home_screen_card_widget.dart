import 'package:flutter/material.dart';

import '../../views/home_2/home2_view.dart';

class HomeScreenCardWidget extends StatelessWidget {
  final String title1;
  final String title2;
  final String image;
  final List<Color> backgroundColors;
  final TextStyle titleStyle;
  const HomeScreenCardWidget({super.key, required this.title1, required this.title2, required this.image, required this.backgroundColors, required this.titleStyle});

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      elevation: 6.0,
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(14),
      child: InkWell(
        borderRadius: BorderRadius.circular(14),
        onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const MyHomePage(title: 'home')));
        },
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
    );
  }
}

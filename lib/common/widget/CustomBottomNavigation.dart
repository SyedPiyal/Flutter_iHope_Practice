import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class AnimatedCurvedNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  AnimatedCurvedNavigationBar({
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      index: currentIndex,
      height: 70,
      backgroundColor: Colors.transparent,
      color: const Color(0xFFCFDFE2), // Button color
      buttonBackgroundColor: const Color(0xFF115F6E), // Button color
      animationDuration: const Duration(milliseconds: 300), // Adjust animation duration

      items: <Widget>[
        Image.asset("assets/images/home.png", height: 23, width: 23,color: Colors.white),
        Image.asset("assets/images/add.png", height: 23, width: 23,color: Colors.white),
        Image.asset("assets/images/message.png", height: 23, width: 23,color: Colors.white),
        Image.asset("assets/images/profileUser.png", height: 23, width: 23,color: Colors.white),
      ],
      onTap: onTap,

    );
  }
}

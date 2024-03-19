import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:ihope_practice/views/add_prescription/add_prescription_view.dart';
import 'package:ihope_practice/views/chat_list/chat_view.dart';
import 'package:ihope_practice/views/profile/profile_view.dart';

import '../../views/home/home_view.dart';


class AnimatedCurvedNavigationBar extends StatefulWidget {
  final VoidCallback toggleLocale;

  const AnimatedCurvedNavigationBar({Key? key, required this.toggleLocale}) : super(key: key);


  @override
  State<AnimatedCurvedNavigationBar> createState() => _AnimatedCurvedNavigationBar();
}

class _AnimatedCurvedNavigationBar extends State<AnimatedCurvedNavigationBar>{
  int index = 0;
  late List<Widget> screen;

  @override
  void initState() {
    super.initState();
    screen = [
      HomePage(toggleLocale: widget.toggleLocale),
      const FlightScreen(),
      const ChatPage(),
      const UserProfile(),
    ];
  }


  @override
  Widget build(BuildContext context) {
    final items =[
      Image.asset("assets/images/home.png", height: 23, width: 23,color: Colors.white),
      Image.asset("assets/images/add.png", height: 23, width: 23,color: Colors.white),
      Image.asset("assets/images/message.png", height: 23, width: 23,color: Colors.white),
      Image.asset("assets/images/profileUser.png", height: 23, width: 23,color: Colors.white),
    ];
    return Scaffold(
      body: screen[index],
      bottomNavigationBar: CurvedNavigationBar(
        index: index,
        height: 70,
        backgroundColor: Colors.transparent,
        color: const Color(0xFFCFDFE2), // Button color
        buttonBackgroundColor: const Color(0xFF115F6E), // Button color
        animationDuration: const Duration(milliseconds: 300), // Adjust animation duration

        onTap: (index) => setState(
              () => this.index = index,
        ),
        items: items,

      ),
    );
  }
}

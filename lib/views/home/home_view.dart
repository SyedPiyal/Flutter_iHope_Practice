import 'package:flutter/material.dart';
import 'package:ihope_practice/views/home/widget/home_body_bottom.dart';
import 'package:ihope_practice/views/home/widget/home_body_top.dart';


class HomePage extends StatefulWidget {
  final VoidCallback toggleLocale;

  //final bool light0;

  const HomePage({Key? key, required this.toggleLocale}) : super(key: key);

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {

  int myCurrentIndex = 0; // Initialize the current index based on your requirement
  bool light0 = true;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.transparent,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.fill),
        ),
        child: Column(
          children: [
            HomeBodyTop(toggleLocale: widget.toggleLocale),

            const HomeBodyBottom(),
          ],
        ),
      ),

    );
  }
}

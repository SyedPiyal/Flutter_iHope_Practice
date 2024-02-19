import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  final String pageName;
  const CustomAppBar({super.key, required this.pageName});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      //----->
      //changing app back button color
      //----->
      iconTheme: const IconThemeData(
        color: Colors.white, //change your color here
      ),

      title: Text(widget.pageName),
      centerTitle: true,
      //----->
      //for changing app bar shape and color
      //----->
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30.0),
          ),
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Color(0xff237B86),
              Color(0xff02485B),
            ],
          ),
        ),
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(30.0),
        ),
      ),
    );
  }
}

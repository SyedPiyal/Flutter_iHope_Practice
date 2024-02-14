import 'package:flutter/material.dart';

class QuickAccessList extends StatefulWidget {
  //final List<Map<String, String>> itemList;
  final String image;
  final String text;

  const QuickAccessList({Key? key, required this.image, required this.text, }) : super(key: key);

  @override
  State<QuickAccessList> createState() => _QuickAccessList();
}

class _QuickAccessList extends State<QuickAccessList> {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      elevation: 6.0,
      color: Colors.transparent,
      child: InkWell(
        child: Column(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color(0xff115F6E),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Image.asset(widget.image),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 7, left: 5,top: 5),
              child: Text(
                textAlign: TextAlign.center,
                widget.text,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
              ),
            )
          ],
        ),
        onTap: () {
          setState(() {
            // Perform actions on tap if needed
          });
        },
      ),
    );
  }
}

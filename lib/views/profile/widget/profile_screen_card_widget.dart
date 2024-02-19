
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreenCard extends StatefulWidget {
  final String titleName;
  final String subTitleName;
  final String iconImage;
  const ProfileScreenCard({super.key, required this.titleName, required this.subTitleName, required this.iconImage});

  @override
  State<ProfileScreenCard> createState() => _ProfileScreenCardState();
}

class _ProfileScreenCardState extends State<ProfileScreenCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 8),
        child: Row(
        children: [
          CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage(widget.iconImage),
          ),
          //card title and subtitle
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.titleName,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 17)),
                  Text(widget.subTitleName,
                      style: const TextStyle(color: Colors.black26)),
                ],
              ),
            ),
          ),
          const Icon(CupertinoIcons.right_chevron)
        ],
        ),
      ),
    );
  }
}

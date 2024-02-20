
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreenItem extends StatefulWidget {
  final String titleName;
  final String subTitleName;
  final String iconImage;
  final VoidCallback onTap;
  const ProfileScreenItem({super.key, required this.titleName, required this.subTitleName, required this.iconImage, required this.onTap});

  @override
  State<ProfileScreenItem> createState() => _ProfileScreenCardState();
}


class _ProfileScreenCardState extends State<ProfileScreenItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell( onTap: widget.onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 8),
        child: Row(
        children: [
          CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage(widget.iconImage),
          ),

          //==============================
          // card title and subtitle
          //==============================

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
          const Icon(CupertinoIcons.right_chevron,color: Color(0xffA5A9AB),)
        ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsTextWidget extends StatelessWidget {
  final String text;


  const SettingsTextWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text),
            const Icon(Icons.arrow_forward_ios_rounded),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        const Divider(
          color: Color(0xffE9ECF2),
        )

      ],
    );
  }
}

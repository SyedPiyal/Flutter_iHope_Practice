import 'package:flutter/cupertino.dart';

class AccountTextWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  const AccountTextWidget({super.key, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style: TextStyle(color: Color(0xff7E8CA0))),
        Text(subTitle,style: TextStyle(color: Color(0xff191A26)))
      ],
    );
  }
}

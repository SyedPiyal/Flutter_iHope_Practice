import 'package:flutter/material.dart';

class CustomTimelineTile extends StatelessWidget {
  final Widget child;
  final bool isFirst;
  final bool isLast;
  final VoidCallback onPressed;

  const CustomTimelineTile({
    Key? key,
    required this.child,
    this.isFirst = false,
    this.isLast = false,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Connector line


          // Indicator
          Container(
            padding: EdgeInsets.all(10),
            width: 50.0,
            height: 50.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.black12,

            ),
            margin: EdgeInsets.symmetric(horizontal: 0.0),
            child: Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue
              ),
            ),
          ),
          (isLast)?SizedBox():Row(
            children: [
              Container(
                width: 5.0,
                height: 200.0,
                color: Colors.grey[400],
                margin: EdgeInsets.only(top:  0.0,left: 20),

              ),
              SizedBox(width: 10,),
              InkWell(
                onTap: onPressed,

                  child: Image.asset("assets/images/pdf.png")),
              SizedBox(width: 10,),

              InkWell(
                  child: Image.asset("assets/images/image.png"))
            ],
          ),

          // // Content
          // Padding(
          //   padding: const EdgeInsets.only(top: 16.0),
          //   child: child,
          // ),

          // Bottom connector (optional)
          // if (!isLast)
          //   Container(
          //     width: 1.0,
          //     height: 50.0,
          //     color: Colors.grey[400],
          //     margin: const EdgeInsets.only(bottom: 16.0),
          //   ),
        ],
      ),
    );
  }
}

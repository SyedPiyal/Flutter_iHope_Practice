import 'package:flutter/material.dart';

class QuickAccessList extends StatefulWidget {
  final List<Map<String, String>> itemList;

  const QuickAccessList({Key? key, required this.itemList}) : super(key: key);

  @override
  State<QuickAccessList> createState() => _QuickAccessList();
}

class _QuickAccessList extends State<QuickAccessList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: widget.itemList.length,
      itemBuilder: (BuildContext context, int index) {
        final data = widget.itemList[index];
        return Material(
          type: MaterialType.transparency,
          elevation: 6.0,
          color: Colors.transparent,
          child: InkWell(
            child: Padding(
              padding: const EdgeInsets.all(3),
              child: Expanded(
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
                        child: Image.asset(data["image"]!),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 7, left: 5),
                      child: Text(
                        data["text"] ?? "",
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                      ),
                    )
                  ],
                ),
              ),
            ),
            onTap: () {
              setState(() {
                // Perform actions on tap if needed
              });
            },
          ),
        );
      },
      scrollDirection: Axis.horizontal,
    );
  }
}

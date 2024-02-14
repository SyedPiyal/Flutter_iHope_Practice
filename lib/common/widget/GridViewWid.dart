import 'package:flutter/material.dart';

class GridViewWid extends StatefulWidget {
  final List<Map<String, dynamic>> itemList;

  const GridViewWid({Key? key, required this.itemList}) : super(key: key);

  @override
  State<GridViewWid> createState() => _GridView();
}

class _GridView extends State<GridViewWid> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisSpacing: 10,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      children: List.generate(widget.itemList.length, (index) {
        final data = widget.itemList[index];
        final Color color = data["color"] ?? Colors.transparent;

        return Material(
          type: MaterialType.transparency,
          elevation: 6.0,
          color: Colors.transparent,
          child: InkWell(
            child: Card(
              child: Container(
                width: 160,
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: color,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(data["image"], width: 30, height: 30),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        data["text"],
                        style: TextStyle(
                          color: data["textColor"],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text("Lorem Ipsum is simply & dummy text of the...",style: TextStyle(fontSize: 13),)
                    ],
                  ),
                ),
              ),
            ),
            onTap: () {
              setState(() {
                // Perform actions on tap if needed
                /*Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const SelfTest()));*/
              });
            },
          ),
        );
      }),
    );
  }
}

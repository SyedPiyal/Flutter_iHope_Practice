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
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
          crossAxisSpacing: 4,
          mainAxisSpacing: 4),
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(vertical: 8),
      itemCount: widget.itemList.length,
      itemBuilder: (context, index) {
        final data = widget.itemList[index];
        final Color color = data["color"] ?? Colors.transparent;
        return InkWell(
          onTap: () {},
          child: Card(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: color,
              ),
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
                  const Text(
                    "Lorem Ipsum is simply & dummy text of the...",
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

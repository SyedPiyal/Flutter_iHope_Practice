import 'package:flutter/material.dart';

class CustomListView extends StatefulWidget {
  final List<String> itemList;

  const CustomListView({Key? key, required this.itemList}) : super(key: key);

  @override
  State<CustomListView> createState() => _CustomListView();
}

class _CustomListView extends State<CustomListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: widget.itemList.length,
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(vertical: 8),
      itemBuilder: (BuildContext context, int index) {
        final text = widget.itemList[index];
        return InkWell(
          child: Card(
            elevation: 3,
            child: Container(
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              alignment: Alignment.centerLeft,
              child: Text(
                text,
                style: const TextStyle(fontWeight: FontWeight.bold,),
              ),
            ),
          ),
          onTap: () {
            // Perform actions on tap if needed
          },
        );
      },
    );
  }
}

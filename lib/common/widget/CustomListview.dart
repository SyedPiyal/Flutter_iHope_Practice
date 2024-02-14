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
      itemBuilder: (BuildContext context, int index) {
        final text = widget.itemList[index];
        return Material(
          type: MaterialType.transparency,
          elevation: 6.0,
          color: Colors.transparent,
          child: InkWell(
            child: Card(
              elevation: 3,
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 7, left: 15, top: 12,bottom: 2),
                  child: Text(
                    text,
                    style: TextStyle(fontWeight: FontWeight.bold,),
                  ),
                ),
              ),
            ),
            onTap: () {
              // Perform actions on tap if needed
            },
          ),
        );
      },
    );
  }
}

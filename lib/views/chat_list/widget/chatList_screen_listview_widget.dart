import 'package:flutter/material.dart';

class ChatlistViewWidget extends StatefulWidget {
  final List<Map<String, dynamic>> itemList;

  const ChatlistViewWidget({Key? key, required this.itemList})
      : super(key: key);

  @override
  State<ChatlistViewWidget> createState() => _ChatlistViewWidget();
}

class _ChatlistViewWidget extends State<ChatlistViewWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: widget.itemList.length,
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(vertical: 8),
      itemBuilder: (BuildContext context, int index) {
        final data = widget.itemList[index];
        return InkWell(
          child: Card(
            elevation: 0,
            child: Container(


                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 13),
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.asset(
                          data["image"],
                          height: 50,
                          width: 50,
                        )),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(data["name"],style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),
                        Text(data["message"],style: const TextStyle(color: Colors.black26)),
                      ],
                    ),
                    Column(
                      children: [
                        Text(data["time"],style: const TextStyle(color: Colors.black26)),
                        Text(data["unread"]),
                      ],
                    ),
                  ],
                )),
          ),
          onTap: () {
            // Perform actions on tap if needed
          },
        );
      },
    );
  }
}

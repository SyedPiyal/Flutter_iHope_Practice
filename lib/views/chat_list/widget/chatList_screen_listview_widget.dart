import 'package:flutter/material.dart';

import '../../user_chat/user_chat_view.dart';

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
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 13),
              alignment: Alignment.centerLeft,
              child: Row(
                children: [

                  //profile image
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(data["image"],),
                  ),


                  //profile name and message
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(data["name"],
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17)),
                          Text(data["message"],
                              style: const TextStyle(color: Colors.black26)),
                        ],
                      ),
                    ),
                  ),

                  //----->
                  //chat message time and unread message number
                  //----->
                  Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(data["time"],
                          style: const TextStyle(color: Colors.black26)),
                      CircleAvatar(
                          backgroundColor: const Color(0xff237B86),
                          // Set color
                          radius: 8,
                          // Set radius
                          child: Text(data["unread"],style: const TextStyle(color: Colors.white,fontSize: 8),)),
                    ],
                  ),
                ],
              ),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => UserChat(
                  userName: data["name"],
                  userImage: data["image"],
                ),
              ),
            );
          },
        );
      },
    );
  }
}

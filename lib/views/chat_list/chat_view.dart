import 'package:flutter/material.dart';
import 'package:ihope_practice/views/chat_list/widget/chatList_screen_listview_widget.dart';

import '../../common/widget/CustomBottomNavigation.dart';
import '../../common/widget/SearchField.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  int myCurrentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50.0),
                bottomRight: Radius.circular(50.0))
        ),
        centerTitle: true,
        elevation: 0,
        title: const Row(
          children: [

            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage("assets/images/profile1.png"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, bottom: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Rafiq", style: TextStyle(fontSize: 14)),
                  Text("online",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold))
                ],
              ),
            ),
          ],
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 20),
              child: InkWell(
                onTap: () {},
                child: Image.asset(
                  "assets/images/notification.png",
                  height: 25,
                  width: 25,
                ),
              ))
        ],
      ),

      //body
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          //decoration , using image for app background in full screen.......->
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.fill),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //search option----->
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const SizedBox(
                              width: 270,
                              child: SearchFiled(
                                hintTxt: "Search Message",
                              ),
                            ),
                            Container(
                              height: 44,
                              width: 44,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFFCFDFE2),
                              ),
                              padding: const EdgeInsets.all(10),
                              child: Image.asset('assets/images/ic_edit.png',
                                  color: Colors.blueGrey),
                            ),
                          ],
                        ),
                        const ChatlistViewWidget(
                          itemList: [
                            {
                              "name": "Yousuf",
                              "message": "Hi ! How Are You?",
                              "time": "12.10 PM",
                              "unread": "1",
                              "image": "assets/images/profile1.png",
                            },
                            {
                              "name": "Yousuf",
                              "message": "Hi ! How Are You?",
                              "time": "12.10 PM",
                              "unread": "1",
                              "image": "assets/images/profile1.png",
                            },
                            {
                              "name": "Yousuf",
                              "message": "Hi ! How Are You?",
                              "time": "12.10 PM",
                              "unread": "1",
                              "image": "assets/images/profile1.png",
                            },
                            {
                              "name": "Yousuf",
                              "message": "Hi ! How Are You?",
                              "time": "12.10 PM",
                              "unread": "1",
                              "image": "assets/images/profile1.png",
                            },
                            {
                              "name": "Yousuf",
                              "message": "Hi ! How Are You?",
                              "time": "12.10 PM",
                              "unread": "1",
                              "image": "assets/images/profile1.png",
                            }
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: AnimatedCurvedNavigationBar(
        currentIndex: myCurrentIndex,
        onTap: (index) {
          setState(() {
            myCurrentIndex = index;
          });
        },
      ),
      // Use the EndDrawerWidget
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ihope_practice/views/chat_list/widget/chatList_screen_listview_widget.dart';
import 'package:ihope_practice/views/chat_list/widget/chatList_search_widget.dart';

import '../../common/widget/custom_appBar.dart';


class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  int myCurrentIndex = 0;
  TextEditingController searchController = TextEditingController();

  //----->
  //data for the list view
  //----->
  List<Map<String, String>> allChatList = [
    {
      "name": "Yousuf",
      "message": "Hi ! How Are You?",
      "time": "12.10 PM",
      "unread": "1",
      "image": "assets/images/profile1.png",
    },
    {
      "name": "Samir",
      "message": "Hey ! How Are You?",
      "time": "5.10 PM",
      "unread": "2",
      "image": "assets/images/iv_user.jpg",
    },
    {
      "name": "Rahim",
      "message": "Call me asap!!",
      "time": "8.10 PM",
      "unread": "4",
      "image": "assets/images/iv_user1.jpg",
    },
    {
      "name": "Joseph",
      "message": "Free?",
      "time": "12.10 PM",
      "unread": "2",
      "image": "assets/images/iv_user2.jpg",
    },
    {
      "name": "Kabir",
      "message": "How Are You?",
      "time": "12.10 AM",
      "unread": "1",
      "image": "assets/images/iv_user3.jpg",
    },
    {
      "name": "Yousuf",
      "message": "Hi ! How Are You?",
      "time": "12.10 PM",
      "unread": "1",
      "image": "assets/images/profile1.png",
    },
    {
      "name": "Samir",
      "message": "Hey ! How Are You?",
      "time": "5.10 PM",
      "unread": "2",
      "image": "assets/images/iv_user.jpg",
    },
    {
      "name": "Rahim Ahmed Khan",
      "message": "Call me asap!!",
      "time": "8.10 PM",
      "unread": "4",
      "image": "assets/images/iv_user1.jpg",
    },
    {
      "name": "Joseph",
      "message": "Free?",
      "time": "12.10 PM",
      "unread": "2",
      "image": "assets/images/iv_user2.jpg",
    },
    {
      "name": "Kabir",
      "message": "How Are You?",
      "time": "12.10 AM",
      "unread": "1",
      "image": "assets/images/iv_user3.jpg",
    }

  ];

  List<Map<String, String>> filteredChatList = [];

  @override
  void initState() {
    super.initState();
    filteredChatList = allChatList;
    searchController.addListener(() {
      filterSearchResults(searchController.text);
    });
  }

  //----->
  //search function
  //----->
  void filterSearchResults(String query) {
    List<Map<String, String>> searchResults = [];
    if (query.isNotEmpty) {
      searchResults = allChatList.where((chat) =>
      chat['name']!.toLowerCase().contains(query.toLowerCase()) ||
          chat['message']!.toLowerCase().contains(query.toLowerCase()) ||
          chat['time']!.toLowerCase().contains(query.toLowerCase())).toList();
    } else {
      searchResults = allChatList;
    }

    setState(() {
      filteredChatList = searchResults;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //==============================
      // Custom AppBar
      //==============================

      appBar: const MyAppBar(title: 'Chat List'), // No actions provided
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.fill),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 30),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            //----->
                            //search field
                            //----->
                             SizedBox(
                              width: 270,
                              child: ChatSearchField(
                                hintTxt: "Search Message",
                                controller: searchController,
                              ),
                            ),

                            //----->
                            //edit icon
                            //----->

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

                         //----->
                         //chat listview
                         //----->
                         ChatlistViewWidget(
                          itemList: filteredChatList,
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
    );
  }
}
